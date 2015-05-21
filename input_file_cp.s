	.file	"test-instr.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hum?"
.LC1:
	.string	"Looks like a zero to me!"
.LC2:
	.string	"A non-zero value? How quaint!"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.section	.text.startup,"ax",@progbits
.LHOTB3:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.section	.text.startup
	.globl	main
	.type	main, @function
main:
.LFB50:
	.file 1 "test-instr.c"
	.loc 1 21 0
	.cfi_startproc
.LVL0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.LBB10:
.LBB11:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/unistd.h"
	.loc 2 44 0
	xorl	%edi, %edi
.LVL1:
	movl	$8, %edx
	movq	%rsp, %rsi
.LVL2:
.LBE11:
.LBE10:
	.loc 1 21 0
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
.LVL3:
.LBB13:
.LBB12:
	.loc 2 44 0
	call	read
.LVL4:
.LBE12:
.LBE13:
	.loc 1 25 0
	testq	%rax, %rax
	jle	.L8
	.loc 1 30 0
	cmpb	$48, (%rsp)
	je	.L9
.LVL5:
.LBB14:
.LBB15:
	.file 3 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 3 104 0
	movl	$.LC2, %edi
	call	puts
.LVL6:
.L4:
.LBE15:
.LBE14:
	.loc 1 35 0
	xorl	%edi, %edi
	call	exit
.LVL7:
.L9:
.LBB16:
.LBB17:
	.loc 3 104 0
	movl	$.LC1, %edi
	call	puts
.LVL8:
	jmp	.L4
.LVL9:
.L8:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	movl	$.LC0, %edi
	call	puts
.LVL10:
.LBE19:
.LBE18:
	.loc 1 27 0
	movl	$1, %edi
	call	exit
.LVL11:
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE3:
	.section	.text.startup
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 4 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "<built-in>"
	.file 9 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x544
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF63
	.byte	0x1
	.long	.LASF64
	.long	.LASF65
	.long	.Ldebug_ranges0+0x30
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x4
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x5
	.byte	0x83
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x5
	.byte	0x84
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x2
	.long	.LASF11
	.byte	0x5
	.byte	0xac
	.long	0x65
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x6
	.byte	0xf5
	.long	0x223
	.uleb128 0x8
	.long	.LASF13
	.byte	0x6
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x6
	.byte	0xfb
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0xfc
	.long	0x96
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0xfd
	.long	0x96
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x6
	.byte	0xfe
	.long	0x96
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x6
	.byte	0xff
	.long	0x96
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x6
	.value	0x100
	.long	0x96
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.value	0x101
	.long	0x96
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x6
	.value	0x102
	.long	0x96
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x6
	.value	0x104
	.long	0x96
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x6
	.value	0x105
	.long	0x96
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x6
	.value	0x106
	.long	0x96
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.value	0x108
	.long	0x25b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.value	0x10a
	.long	0x261
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x6
	.value	0x118
	.long	0x267
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x6
	.value	0x11c
	.long	0x277
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x6
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x6
	.value	0x12e
	.long	0x89
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x6
	.value	0x12f
	.long	0x89
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.value	0x130
	.long	0x89
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.value	0x131
	.long	0x89
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x6
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x6
	.value	0x134
	.long	0x5e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x6
	.value	0x136
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0x6
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0xa0
	.long	0x25b
	.uleb128 0x8
	.long	.LASF44
	.byte	0x6
	.byte	0xa1
	.long	0x25b
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x6
	.byte	0xa2
	.long	0x261
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x6
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	0x9c
	.long	0x277
	.uleb128 0xc
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0xb
	.long	0x9c
	.long	0x28d
	.uleb128 0xc
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0x9c
	.uleb128 0x2
	.long	.LASF47
	.byte	0x7
	.byte	0x66
	.long	0x8b
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF48
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0xb
	.long	0x9c
	.long	0x2c1
	.uleb128 0xc
	.long	0x82
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x2
	.byte	0x22
	.long	0x298
	.byte	0x3
	.long	0x2f3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x2
	.byte	0x22
	.long	0x5e
	.uleb128 0xf
	.long	.LASF51
	.byte	0x2
	.byte	0x22
	.long	0x89
	.uleb128 0xf
	.long	.LASF52
	.byte	0x2
	.byte	0x22
	.long	0x29
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x3
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x310
	.uleb128 0xf
	.long	.LASF55
	.byte	0x3
	.byte	0x66
	.long	0x28d
	.uleb128 0x10
	.byte	0
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0x15
	.long	0x5e
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x496
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x15
	.long	0x5e
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.byte	0x15
	.long	0x496
	.long	.LLST1
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x17
	.long	0x2b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x14
	.long	0x2c1
	.quad	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x19
	.long	0x3a8
	.uleb128 0x15
	.long	0x2e7
	.byte	0x8
	.uleb128 0x16
	.long	0x2dc
	.long	.LLST2
	.uleb128 0x15
	.long	0x2d1
	.byte	0
	.uleb128 0x17
	.quad	.LVL4
	.long	0x4b2
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f3
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x21
	.long	0x3e8
	.uleb128 0x16
	.long	0x303
	.long	.LLST3
	.uleb128 0x17
	.quad	.LVL6
	.long	0x4f8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f3
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x1f
	.long	0x428
	.uleb128 0x16
	.long	0x303
	.long	.LLST4
	.uleb128 0x17
	.quad	.LVL8
	.long	0x4f8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	0x2f3
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x1a
	.long	0x46b
	.uleb128 0x1a
	.long	0x303
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+1327
	.sleb128 0
	.uleb128 0x17
	.quad	.LVL10
	.long	0x4f8
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL7
	.long	0x539
	.long	0x482
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.quad	.LVL11
	.long	0x539
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x96
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x7
	.byte	0xa8
	.long	0x261
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x7
	.byte	0xa9
	.long	0x261
	.uleb128 0x1d
	.long	.LASF60
	.byte	0x2
	.byte	0x19
	.long	.LASF53
	.long	0x298
	.long	0x4d5
	.uleb128 0x1e
	.long	0x5e
	.uleb128 0x1e
	.long	0x89
	.uleb128 0x1e
	.long	0x29
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0x9e
	.uleb128 0x1f
	.byte	0x41
	.byte	0x20
	.byte	0x6e
	.byte	0x6f
	.byte	0x6e
	.byte	0x2d
	.byte	0x7a
	.byte	0x65
	.byte	0x72
	.byte	0x6f
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x3f
	.byte	0x20
	.byte	0x48
	.byte	0x6f
	.byte	0x77
	.byte	0x20
	.byte	0x71
	.byte	0x75
	.byte	0x61
	.byte	0x69
	.byte	0x6e
	.byte	0x74
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x1d
	.long	.LASF61
	.byte	0x8
	.byte	0
	.long	.LASF62
	.long	0x5e
	.long	0x511
	.uleb128 0x1e
	.long	0x28d
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1c
	.byte	0x9e
	.uleb128 0x1a
	.byte	0x4c
	.byte	0x6f
	.byte	0x6f
	.byte	0x6b
	.byte	0x73
	.byte	0x20
	.byte	0x6c
	.byte	0x69
	.byte	0x6b
	.byte	0x65
	.byte	0x20
	.byte	0x61
	.byte	0x20
	.byte	0x7a
	.byte	0x65
	.byte	0x72
	.byte	0x6f
	.byte	0x20
	.byte	0x74
	.byte	0x6f
	.byte	0x20
	.byte	0x6d
	.byte	0x65
	.byte	0x21
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.uleb128 0x8
	.byte	0x9e
	.uleb128 0x6
	.byte	0x48
	.byte	0x75
	.byte	0x6d
	.byte	0x3f
	.byte	0xa
	.byte	0
	.uleb128 0x20
	.long	.LASF68
	.byte	0x9
	.value	0x21f
	.uleb128 0x1e
	.long	0x5e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	.LVL1
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LFE50
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL3
	.quad	.LVL4-1
	.value	0x1
	.byte	0x54
	.quad	.LVL4-1
	.quad	.LFE50
	.value	0x1
	.byte	0x57
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL5
	.quad	.LVL6
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1237
	.sleb128 0
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1297
	.sleb128 0
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB10
	.quad	.LBE10
	.quad	.LBB13
	.quad	.LBE13
	.quad	0
	.quad	0
	.quad	.LFB50
	.quad	.LFE50
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"__builtin_puts"
.LASF42:
	.string	"_IO_FILE"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF50:
	.string	"__fd"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"ssize_t"
.LASF65:
	.string	"/home/zhaokai/WorkSpace/american_fuzzy_lop/AFL"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF63:
	.string	"GNU C 4.9.2 -mtune=generic -march=x86-64 -g -g -O3 -O3 -funroll-loops -fstack-protector"
.LASF51:
	.string	"__buf"
.LASF53:
	.string	"read"
.LASF48:
	.string	"long long int"
.LASF11:
	.string	"__ssize_t"
.LASF33:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF54:
	.string	"printf"
.LASF30:
	.string	"_cur_column"
.LASF46:
	.string	"_pos"
.LASF57:
	.string	"argv"
.LASF68:
	.string	"exit"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF49:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF62:
	.string	"puts"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF21:
	.string	"_IO_buf_end"
.LASF12:
	.string	"char"
.LASF67:
	.string	"main"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF36:
	.string	"__pad2"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF2:
	.string	"short unsigned int"
.LASF55:
	.string	"__fmt"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF52:
	.string	"__nbytes"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF23:
	.string	"_IO_backup_base"
.LASF58:
	.string	"stdin"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF64:
	.string	"test-instr.c"
.LASF22:
	.string	"_IO_save_base"
.LASF60:
	.string	"__read_alias"
.LASF59:
	.string	"stdout"
.LASF66:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 4.9.2-0ubuntu1~14.04) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
