.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel flashing_box_shockwave_main
/* 3928D0 E0094000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 3928D4 E0094004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 3928D8 E0094008 4485A000 */  mtc1      $a1, $f20
/* 3928DC E009400C AFB1002C */  sw        $s1, 0x2c($sp)
/* 3928E0 E0094010 0080882D */  daddu     $s1, $a0, $zero
/* 3928E4 E0094014 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 3928E8 E0094018 4486B000 */  mtc1      $a2, $f22
/* 3928EC E009401C 27A40010 */  addiu     $a0, $sp, 0x10
/* 3928F0 E0094020 F7B80048 */  sdc1      $f24, 0x48($sp)
/* 3928F4 E0094024 4487C000 */  mtc1      $a3, $f24
/* 3928F8 E0094028 3C02E009 */  lui       $v0, %hi(flashing_box_shockwave_init)
/* 3928FC E009402C 24424190 */  addiu     $v0, $v0, %lo(flashing_box_shockwave_init)
/* 392900 E0094030 AFA20018 */  sw        $v0, 0x18($sp)
/* 392904 E0094034 3C02E009 */  lui       $v0, %hi(flashing_box_shockwave_update)
/* 392908 E0094038 24424198 */  addiu     $v0, $v0, %lo(flashing_box_shockwave_update)
/* 39290C E009403C AFA2001C */  sw        $v0, 0x1c($sp)
/* 392910 E0094040 3C02E009 */  lui       $v0, %hi(flashing_box_shockwave_render)
/* 392914 E0094044 244242C0 */  addiu     $v0, $v0, %lo(flashing_box_shockwave_render)
/* 392918 E0094048 AFA20020 */  sw        $v0, 0x20($sp)
/* 39291C E009404C 2402004A */  addiu     $v0, $zero, 0x4a
/* 392920 E0094050 AFBF0030 */  sw        $ra, 0x30($sp)
/* 392924 E0094054 AFB00028 */  sw        $s0, 0x28($sp)
/* 392928 E0094058 AFA00010 */  sw        $zero, 0x10($sp)
/* 39292C E009405C AFA00024 */  sw        $zero, 0x24($sp)
/* 392930 E0094060 0C080124 */  jal       shim_create_effect_instance
/* 392934 E0094064 AFA20014 */   sw       $v0, 0x14($sp)
/* 392938 E0094068 24040048 */  addiu     $a0, $zero, 0x48
/* 39293C E009406C 24030001 */  addiu     $v1, $zero, 1
/* 392940 E0094070 0040802D */  daddu     $s0, $v0, $zero
/* 392944 E0094074 0C08012C */  jal       shim_general_heap_malloc
/* 392948 E0094078 AE030008 */   sw       $v1, 8($s0)
/* 39294C E009407C 0040182D */  daddu     $v1, $v0, $zero
/* 392950 E0094080 14600003 */  bnez      $v1, .LE0094090
/* 392954 E0094084 AE02000C */   sw       $v0, 0xc($s0)
.LE0094088:
/* 392958 E0094088 08025022 */  j         .LE0094088
/* 39295C E009408C 00000000 */   nop
.LE0094090:
/* 392960 E0094090 2402001E */  addiu     $v0, $zero, 0x1e
/* 392964 E0094094 AC62001C */  sw        $v0, 0x1c($v1)
/* 392968 E0094098 240200FF */  addiu     $v0, $zero, 0xff
/* 39296C E009409C AC620010 */  sw        $v0, 0x10($v1)
/* 392970 E00940A0 AC620014 */  sw        $v0, 0x14($v1)
/* 392974 E00940A4 AC620018 */  sw        $v0, 0x18($v1)
/* 392978 E00940A8 24020002 */  addiu     $v0, $zero, 2
/* 39297C E00940AC AC710000 */  sw        $s1, ($v1)
/* 392980 E00940B0 AC600020 */  sw        $zero, 0x20($v1)
/* 392984 E00940B4 E4740004 */  swc1      $f20, 4($v1)
/* 392988 E00940B8 E4760008 */  swc1      $f22, 8($v1)
/* 39298C E00940BC 16220005 */  bne       $s1, $v0, .LE00940D4
/* 392990 E00940C0 E478000C */   swc1     $f24, 0xc($v1)
/* 392994 E00940C4 3C013F80 */  lui       $at, 0x3f80
/* 392998 E00940C8 44810000 */  mtc1      $at, $f0
/* 39299C E00940CC 08025036 */  j         .LE00940D8
/* 3929A0 E00940D0 E4600024 */   swc1     $f0, 0x24($v1)
.LE00940D4:
/* 3929A4 E00940D4 AC600024 */  sw        $zero, 0x24($v1)
.LE00940D8:
/* 3929A8 E00940D8 C7A20060 */  lwc1      $f2, 0x60($sp)
/* 3929AC E00940DC 3C013FE0 */  lui       $at, 0x3fe0
/* 3929B0 E00940E0 44812800 */  mtc1      $at, $f5
/* 3929B4 E00940E4 44802000 */  mtc1      $zero, $f4
/* 3929B8 E00940E8 460010A1 */  cvt.d.s   $f2, $f2
/* 3929BC E00940EC 46241082 */  mul.d     $f2, $f2, $f4
/* 3929C0 E00940F0 00000000 */  nop
/* 3929C4 E00940F4 C7A00064 */  lwc1      $f0, 0x64($sp)
/* 3929C8 E00940F8 46000021 */  cvt.d.s   $f0, $f0
/* 3929CC E00940FC 46240002 */  mul.d     $f0, $f0, $f4
/* 3929D0 E0094100 00000000 */  nop
/* 3929D4 E0094104 462010A0 */  cvt.s.d   $f2, $f2
/* 3929D8 E0094108 46200020 */  cvt.s.d   $f0, $f0
/* 3929DC E009410C E4620028 */  swc1      $f2, 0x28($v1)
/* 3929E0 E0094110 0620000C */  bltz      $s1, .LE0094144
/* 3929E4 E0094114 E460002C */   swc1     $f0, 0x2c($v1)
/* 3929E8 E0094118 2A220002 */  slti      $v0, $s1, 2
/* 3929EC E009411C 14400005 */  bnez      $v0, .LE0094134
/* 3929F0 E0094120 240200FF */   addiu    $v0, $zero, 0xff
/* 3929F4 E0094124 24020003 */  addiu     $v0, $zero, 3
/* 3929F8 E0094128 16220007 */  bne       $s1, $v0, .LE0094148
/* 3929FC E009412C 24020046 */   addiu    $v0, $zero, 0x46
/* 392A00 E0094130 240200FF */  addiu     $v0, $zero, 0xff
.LE0094134:
/* 392A04 E0094134 AC620030 */  sw        $v0, 0x30($v1)
/* 392A08 E0094138 AC620034 */  sw        $v0, 0x34($v1)
/* 392A0C E009413C 08025058 */  j         .LE0094160
/* 392A10 E0094140 AC600038 */   sw       $zero, 0x38($v1)
.LE0094144:
/* 392A14 E0094144 24020046 */  addiu     $v0, $zero, 0x46
.LE0094148:
/* 392A18 E0094148 AC620030 */  sw        $v0, 0x30($v1)
/* 392A1C E009414C 240200B4 */  addiu     $v0, $zero, 0xb4
/* 392A20 E0094150 AC620034 */  sw        $v0, 0x34($v1)
/* 392A24 E0094154 24020078 */  addiu     $v0, $zero, 0x78
/* 392A28 E0094158 AC620038 */  sw        $v0, 0x38($v1)
/* 392A2C E009415C 240200FF */  addiu     $v0, $zero, 0xff
.LE0094160:
/* 392A30 E0094160 AC62003C */  sw        $v0, 0x3c($v1)
/* 392A34 E0094164 AC620040 */  sw        $v0, 0x40($v1)
/* 392A38 E0094168 AC620044 */  sw        $v0, 0x44($v1)
/* 392A3C E009416C 0200102D */  daddu     $v0, $s0, $zero
/* 392A40 E0094170 8FBF0030 */  lw        $ra, 0x30($sp)
/* 392A44 E0094174 8FB1002C */  lw        $s1, 0x2c($sp)
/* 392A48 E0094178 8FB00028 */  lw        $s0, 0x28($sp)
/* 392A4C E009417C D7B80048 */  ldc1      $f24, 0x48($sp)
/* 392A50 E0094180 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 392A54 E0094184 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 392A58 E0094188 03E00008 */  jr        $ra
/* 392A5C E009418C 27BD0050 */   addiu    $sp, $sp, 0x50
