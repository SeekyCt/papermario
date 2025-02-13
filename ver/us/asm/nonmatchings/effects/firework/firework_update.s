.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel firework_update
/* 389AC8 E0086278 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 389ACC E008627C AFBF0010 */  sw        $ra, 0x10($sp)
/* 389AD0 E0086280 8C83000C */  lw        $v1, 0xc($a0)
/* 389AD4 E0086284 8C620030 */  lw        $v0, 0x30($v1)
/* 389AD8 E0086288 8C660034 */  lw        $a2, 0x34($v1)
/* 389ADC E008628C 8C680000 */  lw        $t0, ($v1)
/* 389AE0 E0086290 2442FFFF */  addiu     $v0, $v0, -1
/* 389AE4 E0086294 24C50001 */  addiu     $a1, $a2, 1
/* 389AE8 E0086298 AC620030 */  sw        $v0, 0x30($v1)
/* 389AEC E008629C 04410005 */  bgez      $v0, .LE00862B4
/* 389AF0 E00862A0 AC650034 */   sw       $a1, 0x34($v1)
/* 389AF4 E00862A4 0C080128 */  jal       shim_remove_effect
/* 389AF8 E00862A8 00000000 */   nop
/* 389AFC E00862AC 080218E1 */  j         .LE0086384
/* 389B00 E00862B0 00000000 */   nop
.LE00862B4:
/* 389B04 E00862B4 3C02E008 */  lui       $v0, %hi(D_E0086AC0)
/* 389B08 E00862B8 00481021 */  addu      $v0, $v0, $t0
/* 389B0C E00862BC 90426AC0 */  lbu       $v0, %lo(D_E0086AC0)($v0)
/* 389B10 E00862C0 00A0382D */  daddu     $a3, $a1, $zero
/* 389B14 E00862C4 0047102A */  slt       $v0, $v0, $a3
/* 389B18 E00862C8 1440000D */  bnez      $v0, .LE0086300
/* 389B1C E00862CC 00000000 */   nop
/* 389B20 E00862D0 3C02E008 */  lui       $v0, %hi(D_E0086AC4)
/* 389B24 E00862D4 00461021 */  addu      $v0, $v0, $a2
/* 389B28 E00862D8 90426AC4 */  lbu       $v0, %lo(D_E0086AC4)($v0)
/* 389B2C E00862DC 3C013B80 */  lui       $at, 0x3b80
/* 389B30 E00862E0 44811000 */  mtc1      $at, $f2
/* 389B34 E00862E4 44820000 */  mtc1      $v0, $f0
/* 389B38 E00862E8 00000000 */  nop
/* 389B3C E00862EC 46800020 */  cvt.s.w   $f0, $f0
/* 389B40 E00862F0 46020002 */  mul.s     $f0, $f0, $f2
/* 389B44 E00862F4 00000000 */  nop
/* 389B48 E00862F8 080218C4 */  j         .LE0086310
/* 389B4C E00862FC E4600038 */   swc1     $f0, 0x38($v1)
.LE0086300:
/* 389B50 E0086300 3C013F80 */  lui       $at, 0x3f80
/* 389B54 E0086304 44810000 */  mtc1      $at, $f0
/* 389B58 E0086308 00000000 */  nop
/* 389B5C E008630C E4600038 */  swc1      $f0, 0x38($v1)
.LE0086310:
/* 389B60 E0086310 8C820008 */  lw        $v0, 8($a0)
/* 389B64 E0086314 24060001 */  addiu     $a2, $zero, 1
/* 389B68 E0086318 00C2102A */  slt       $v0, $a2, $v0
/* 389B6C E008631C 10400019 */  beqz      $v0, .LE0086384
/* 389B70 E0086320 24630044 */   addiu    $v1, $v1, 0x44
/* 389B74 E0086324 3C02E008 */  lui       $v0, %hi(D_E0086AC0)
/* 389B78 E0086328 24426AC0 */  addiu     $v0, $v0, %lo(D_E0086AC0)
/* 389B7C E008632C 01024021 */  addu      $t0, $t0, $v0
/* 389B80 E0086330 3C09E008 */  lui       $t1, %hi(D_E0086AD4)
/* 389B84 E0086334 25296AD4 */  addiu     $t1, $t1, %lo(D_E0086AD4)
/* 389B88 E0086338 2465000C */  addiu     $a1, $v1, 0xc
.LE008633C:
/* 389B8C E008633C 91020000 */  lbu       $v0, ($t0)
/* 389B90 E0086340 0047102A */  slt       $v0, $v0, $a3
/* 389B94 E0086344 14400002 */  bnez      $v0, .LE0086350
/* 389B98 E0086348 2403000C */   addiu    $v1, $zero, 0xc
/* 389B9C E008634C 24E3FFFF */  addiu     $v1, $a3, -1
.LE0086350:
/* 389BA0 E0086350 00691021 */  addu      $v0, $v1, $t1
/* 389BA4 E0086354 90420000 */  lbu       $v0, ($v0)
/* 389BA8 E0086358 24C60001 */  addiu     $a2, $a2, 1
/* 389BAC E008635C ACA0FFFC */  sw        $zero, -4($a1)
/* 389BB0 E0086360 ACA00000 */  sw        $zero, ($a1)
/* 389BB4 E0086364 44820000 */  mtc1      $v0, $f0
/* 389BB8 E0086368 00000000 */  nop
/* 389BBC E008636C 46800020 */  cvt.s.w   $f0, $f0
/* 389BC0 E0086370 E4A0FFF8 */  swc1      $f0, -8($a1)
/* 389BC4 E0086374 8C820008 */  lw        $v0, 8($a0)
/* 389BC8 E0086378 00C2102A */  slt       $v0, $a2, $v0
/* 389BCC E008637C 1440FFEF */  bnez      $v0, .LE008633C
/* 389BD0 E0086380 24A50044 */   addiu    $a1, $a1, 0x44
.LE0086384:
/* 389BD4 E0086384 8FBF0010 */  lw        $ra, 0x10($sp)
/* 389BD8 E0086388 03E00008 */  jr        $ra
/* 389BDC E008638C 27BD0018 */   addiu    $sp, $sp, 0x18
