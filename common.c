/*
   american fuzzy lop - LLVM-mode wrapper for clang
   ------------------------------------------------

   Written by Laszlo Szekeres <lszekeres@google.com> and
              Michal Zalewski <lcamtuf@google.com>

   LLVM integration design comes from Laszlo Szekeres.

   Copyright 2015 Google Inc. All rights reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at:

     http://www.apache.org/licenses/LICENSE-2.0

   This program is to find the runtime objects

 */

#include "config.h"
#include "types.h"
#include "debug.h"
#include "alloc-inl.h"

#include <unistd.h>

/* Try to find the runtime libraries. If that fails, abort. */

void find_obj(u8* argv0, u8 m32_set, u8 m64_set, u8 **obj_path, u8 **obj_name) {

  u8 *afl_path = getenv("AFL_PATH");
  u8 *slash, *tmp;

  if (m32_set == 0 && m64_set == 0) {
    *obj_name = alloc_printf("afl-rt.o");
  } else if (m32_set == 1 && m64_set == 0) {
    *obj_name = alloc_printf("afl-rt-m32.o");
  } else if (m32_set == 0 && m64_set == 1) {
    *obj_name = alloc_printf("afl-rt-m64.o");
  } else {
    *obj_name = alloc_printf("afl-rt.o");
  }

  if (afl_path) {

    tmp = alloc_printf("%s/%s", afl_path, *obj_name);

    if (!access(tmp, R_OK)) {
      *obj_path = afl_path;
      ck_free(tmp);
      return;
    }

    ck_free(tmp);
  }

  slash = strrchr(argv0, '/');

  if (slash) {

    u8 *dir;

    *slash = 0;
    dir = ck_strdup(argv0);
    *slash = '/';

    tmp = alloc_printf("%s/%s", dir, *obj_name);

    if (!access(tmp, R_OK)) {
      *obj_path = dir;
      ck_free(tmp);
      return;
    }

    ck_free(tmp);
    ck_free(dir);

  }

  tmp = alloc_printf("%s/%s", AFL_PATH, *obj_name);

  if (!access(tmp, R_OK)) {
    *obj_path = AFL_PATH;
    ck_free(tmp);
    return;
  }

  ck_free(tmp);

  FATAL("Unable to find AFL runtime object:%s for 'ld'. Please set AFL_PATH", *obj_name);
}
