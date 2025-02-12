.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata
dlabel D_E0040890
.double 0.01

.section .text
glabel flame_main
/* 353300 E0040000 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* 353304 E0040004 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 353308 E0040008 4485A000 */  mtc1      $a1, $f20
/* 35330C E004000C F7B60040 */  sdc1      $f22, 0x40($sp)
/* 353310 E0040010 4486B000 */  mtc1      $a2, $f22
/* 353314 E0040014 AFB00028 */  sw        $s0, 0x28($sp)
/* 353318 E0040018 0080802D */  daddu     $s0, $a0, $zero
/* 35331C E004001C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 353320 E0040020 4487C000 */  mtc1      $a3, $f24
/* 353324 E0040024 27A40010 */  addiu     $a0, $sp, 0x10
/* 353328 E0040028 AFB20030 */  sw        $s2, 0x30($sp)
/* 35332C E004002C 8FB20064 */  lw        $s2, 0x64($sp)
/* 353330 E0040030 2A020004 */  slti      $v0, $s0, 4
/* 353334 E0040034 AFBF0034 */  sw        $ra, 0x34($sp)
/* 353338 E0040038 14400002 */  bnez      $v0, .LE0040044
/* 35333C E004003C AFB1002C */   sw       $s1, 0x2c($sp)
/* 353340 E0040040 24100003 */  addiu     $s0, $zero, 3
.LE0040044:
/* 353344 E0040044 3C02E004 */  lui       $v0, %hi(flame_init)
/* 353348 E0040048 24420148 */  addiu     $v0, $v0, %lo(flame_init)
/* 35334C E004004C AFA20018 */  sw        $v0, 0x18($sp)
/* 353350 E0040050 3C02E004 */  lui       $v0, %hi(flame_update)
/* 353354 E0040054 24420150 */  addiu     $v0, $v0, %lo(flame_update)
/* 353358 E0040058 AFA2001C */  sw        $v0, 0x1c($sp)
/* 35335C E004005C 3C02E004 */  lui       $v0, %hi(flame_render)
/* 353360 E0040060 24420210 */  addiu     $v0, $v0, %lo(flame_render)
/* 353364 E0040064 AFA20020 */  sw        $v0, 0x20($sp)
/* 353368 E0040068 24020020 */  addiu     $v0, $zero, 0x20
/* 35336C E004006C AFA00010 */  sw        $zero, 0x10($sp)
/* 353370 E0040070 AFA00024 */  sw        $zero, 0x24($sp)
/* 353374 E0040074 0C080124 */  jal       shim_create_effect_instance
/* 353378 E0040078 AFA20014 */   sw       $v0, 0x14($sp)
/* 35337C E004007C 24040034 */  addiu     $a0, $zero, 0x34
/* 353380 E0040080 0040882D */  daddu     $s1, $v0, $zero
/* 353384 E0040084 24020001 */  addiu     $v0, $zero, 1
/* 353388 E0040088 0C08012C */  jal       shim_general_heap_malloc
/* 35338C E004008C AE220008 */   sw       $v0, 8($s1)
/* 353390 E0040090 0040182D */  daddu     $v1, $v0, $zero
/* 353394 E0040094 14600003 */  bnez      $v1, .LE00400A4
/* 353398 E0040098 AE22000C */   sw       $v0, 0xc($s1)
.LE004009C:
/* 35339C E004009C 08010027 */  j         .LE004009C
/* 3533A0 E00400A0 00000000 */   nop
.LE00400A4:
/* 3533A4 E00400A4 00101100 */  sll       $v0, $s0, 4
/* 3533A8 E00400A8 AC700000 */  sw        $s0, ($v1)
/* 3533AC E00400AC AC600018 */  sw        $zero, 0x18($v1)
/* 3533B0 E00400B0 E4740004 */  swc1      $f20, 4($v1)
/* 3533B4 E00400B4 E4760008 */  swc1      $f22, 8($v1)
/* 3533B8 E00400B8 E478000C */  swc1      $f24, 0xc($v1)
/* 3533BC E00400BC 3C01E004 */  lui       $at, %hi(D_E0040848)
/* 3533C0 E00400C0 00220821 */  addu      $at, $at, $v0
/* 3533C4 E00400C4 90220848 */  lbu       $v0, %lo(D_E0040848)($at)
/* 3533C8 E00400C8 C7A00060 */  lwc1      $f0, 0x60($sp)
/* 3533CC E00400CC 44821000 */  mtc1      $v0, $f2
/* 3533D0 E00400D0 00000000 */  nop
/* 3533D4 E00400D4 468010A0 */  cvt.s.w   $f2, $f2
/* 3533D8 E00400D8 46020002 */  mul.s     $f0, $f0, $f2
/* 3533DC E00400DC 00000000 */  nop
/* 3533E0 E00400E0 3C01E004 */  lui       $at, %hi(D_E0040890)
/* 3533E4 E00400E4 D4220890 */  ldc1      $f2, %lo(D_E0040890)($at)
/* 3533E8 E00400E8 46000021 */  cvt.d.s   $f0, $f0
/* 3533EC E00400EC 46220002 */  mul.d     $f0, $f0, $f2
/* 3533F0 E00400F0 00000000 */  nop
/* 3533F4 E00400F4 3C013F80 */  lui       $at, 0x3f80
/* 3533F8 E00400F8 44811000 */  mtc1      $at, $f2
/* 3533FC E00400FC AC60001C */  sw        $zero, 0x1c($v1)
/* 353400 E0040100 AC600024 */  sw        $zero, 0x24($v1)
/* 353404 E0040104 AC600020 */  sw        $zero, 0x20($v1)
/* 353408 E0040108 E4620030 */  swc1      $f2, 0x30($v1)
/* 35340C E004010C E462002C */  swc1      $f2, 0x2c($v1)
/* 353410 E0040110 E4620028 */  swc1      $f2, 0x28($v1)
/* 353414 E0040114 46200020 */  cvt.s.d   $f0, $f0
/* 353418 E0040118 12400002 */  beqz      $s2, .LE0040124
/* 35341C E004011C E4600010 */   swc1     $f0, 0x10($v1)
/* 353420 E0040120 AE510000 */  sw        $s1, ($s2)
.LE0040124:
/* 353424 E0040124 8FBF0034 */  lw        $ra, 0x34($sp)
/* 353428 E0040128 8FB20030 */  lw        $s2, 0x30($sp)
/* 35342C E004012C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 353430 E0040130 8FB00028 */  lw        $s0, 0x28($sp)
/* 353434 E0040134 D7B80048 */  ldc1      $f24, 0x48($sp)
/* 353438 E0040138 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 35343C E004013C D7B40038 */  ldc1      $f20, 0x38($sp)
/* 353440 E0040140 03E00008 */  jr        $ra
/* 353444 E0040144 27BD0050 */   addiu    $sp, $sp, 0x50
