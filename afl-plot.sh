#!/bin/bash
#
# american fuzzy lop - progress plotting utility
# ----------------------------------------------
#
# Written and maintained by Michal Zalewski <lcamtuf@google.com>
# Based on a design & prototype by Michael Rash.
#
# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at:
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Note that this assumes that the targeted application reads from stdin
# and requires no other cmdline parameters. Modify as needed if this is
# not the case.
#

echo "progress plotting utility for afl-fuzz by <lcamtuf@google.com>"
echo

if [ ! "$#" = "2" ]; then

  cat 1>&2 <<_EOF_
This program generates gnuplot images from afl-fuzz output data. Usage:

$0 afl_dir output_dir

The afl_dir parameter should point to an existing state directory belonging to
any active or stopped instance of afl-fuzz; while output_dir should point to
an empty directory where this tool can write the resulting data to.

The program will put index.html and three PNG images in the output directory;
you should be able to view it with any web browser of your choice.

_EOF_

  exit 1

fi

if [ ! -f "$1/plot_data" ]; then

  echo "[-] The input directory does not seem to be valid (missing 'plot_data')." 1>&2
  exit 1

fi

GNUPLOT=`which gnuplot 2>/dev/null`

if [ "$GNUPLOT" = "" ]; then

  echo "[-] Can't find 'gnuplot' in your \$PATH - you may need to install it first." 1>&2
  exit 1

fi

mkdir "$2" 2>/dev/null

if [ ! -d "$2" ]; then

  echo "[-] Unable to create the output directory - pick another location." 1>&2
  exit 1

fi

rm -f "$2/high_freq.png" "$2/low_freq.png" "$2/exec_speed.png"
mv -f "$2/index.html" "$2/index.html.orig" 2>/dev/null

echo "[*] Generating plots..."

(

cat <<_EOF_
set terminal png truecolor enhanced size 1000,300 butt

set output '$2/high_freq.png'

set xdata time
set timefmt x '%s'
set format x "%b %d\n%H:%M"
set tics font 'small'
unset mxtics
unset mytics

set grid xtics linetype 0 linecolor '#e0e0e0'
set grid ytics linetype 0 linecolor '#e0e0e0'
set border linecolor '#50c0f0'
set tics textcolor '#000000'
set key outside

set autoscale xfixmin
set autoscale xfixmax

plot '$1/plot_data' using 1:4 with filledcurve x1 title 'total paths' linecolor '#000000' fillstyle transparent solid 0.2 noborder, \\
     '' using 1:3 with filledcurve x1 title 'current path' linecolor '#f0f0f0' fillstyle transparent solid 0.5 noborder, \\
     '' using 1:5 with lines title 'pending paths' linecolor '#0090ff' linewidth 3, \\
     '' using 1:6 with lines title 'pending favs' linecolor '#c00080' linewidth 3, \\
     '' using 1:2 with lines title 'cycles done' linecolor '#c000f0' linewidth 3

set terminal png truecolor enhanced size 1000,200 butt
set output '$2/low_freq.png'

plot '$1/plot_data' using 1:7 with filledcurve x1 title '' linecolor '#c00080' fillstyle transparent solid 0.2 noborder, \\
     '' using 1:7 with lines title ' uniq crashes' linecolor '#c00080' linewidth 3, \\
     '' using 1:8 with lines title 'uniq hangs' linecolor '#c000f0' linewidth 3, \\
     '' using 1:9 with lines title 'levels' linecolor '#0090ff' linewidth 3

set terminal png truecolor enhanced size 1000,200 butt
set output '$2/exec_speed.png'

plot '$1/plot_data' using 1:10 with filledcurve x1 title '' linecolor '#0090ff' fillstyle transparent solid 0.2 noborder, \\
     '$1/plot_data' using 1:10 with lines title '    execs/sec' linecolor '#0090ff' linewidth 3 smooth bezier;

_EOF_

) | gnuplot 

if [ ! -s "$2/exec_speed.png" ]; then

  echo "[-] Oops, something went wrong! Perhaps you have a very old or broken version of gnuplot?" 1>&2
  exit 1

fi

echo "[*] Generating index.html..."

cat >"$2/index.html" <<_EOF_
<h3>Input directory: $1<br>
Generated on: `date`<p></h3>

<img src="high_freq.png" width=1000 height=300><p>
<img src="low_freq.png" width=1000 height=200><p>
<img src="exec_speed.png" width=1000 height=200>

_EOF_

chmod 755 "$2"
chmod 644 "$2/high_freq.png" "$2/low_freq.png" "$2/exec_speed.png" "$2/index.html"

echo "[+] All done - enjoy your charts!"

exit 0
