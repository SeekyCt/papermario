.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel confetti_update
/* 38B398 E00885A8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 38B39C E00885AC AFBF0028 */  sw        $ra, 0x28($sp)
/* 38B3A0 E00885B0 AFB50024 */  sw        $s5, 0x24($sp)
/* 38B3A4 E00885B4 AFB40020 */  sw        $s4, 0x20($sp)
/* 38B3A8 E00885B8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 38B3AC E00885BC AFB20018 */  sw        $s2, 0x18($sp)
/* 38B3B0 E00885C0 AFB10014 */  sw        $s1, 0x14($sp)
/* 38B3B4 E00885C4 AFB00010 */  sw        $s0, 0x10($sp)
/* 38B3B8 E00885C8 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 38B3BC E00885CC 8C91000C */  lw        $s1, 0xc($a0)
/* 38B3C0 E00885D0 8E220020 */  lw        $v0, 0x20($s1)
/* 38B3C4 E00885D4 2442FFFF */  addiu     $v0, $v0, -1
/* 38B3C8 E00885D8 04410005 */  bgez      $v0, .LE00885F0
/* 38B3CC E00885DC AE220020 */   sw       $v0, 0x20($s1)
/* 38B3D0 E00885E0 0C080128 */  jal       shim_remove_effect
/* 38B3D4 E00885E4 00000000 */   nop
/* 38B3D8 E00885E8 080221E0 */  j         .LE0088780
/* 38B3DC E00885EC 00000000 */   nop
.LE00885F0:
/* 38B3E0 E00885F0 3C030004 */  lui       $v1, 4
/* 38B3E4 E00885F4 8E220024 */  lw        $v0, 0x24($s1)
/* 38B3E8 E00885F8 3463F1A0 */  ori       $v1, $v1, 0xf1a0
/* 38B3EC E00885FC 24420001 */  addiu     $v0, $v0, 1
/* 38B3F0 E0088600 0062182A */  slt       $v1, $v1, $v0
/* 38B3F4 E0088604 10600003 */  beqz      $v1, .LE0088614
/* 38B3F8 E0088608 AE220024 */   sw       $v0, 0x24($s1)
/* 38B3FC E008860C 2402000A */  addiu     $v0, $zero, 0xa
/* 38B400 E0088610 AE220024 */  sw        $v0, 0x24($s1)
.LE0088614:
/* 38B404 E0088614 8E230020 */  lw        $v1, 0x20($s1)
/* 38B408 E0088618 8E350024 */  lw        $s5, 0x24($s1)
/* 38B40C E008861C 8E330000 */  lw        $s3, ($s1)
/* 38B410 E0088620 8E34002C */  lw        $s4, 0x2c($s1)
/* 38B414 E0088624 2862000A */  slti      $v0, $v1, 0xa
/* 38B418 E0088628 10400005 */  beqz      $v0, .LE0088640
/* 38B41C E008862C 00031040 */   sll      $v0, $v1, 1
/* 38B420 E0088630 00431021 */  addu      $v0, $v0, $v1
/* 38B424 E0088634 000210C0 */  sll       $v0, $v0, 3
/* 38B428 E0088638 00431021 */  addu      $v0, $v0, $v1
/* 38B42C E008863C AE220028 */  sw        $v0, 0x28($s1)
.LE0088640:
/* 38B430 E0088640 26310034 */  addiu     $s1, $s1, 0x34
/* 38B434 E0088644 1A80004E */  blez      $s4, .LE0088780
/* 38B438 E0088648 0000902D */   daddu    $s2, $zero, $zero
/* 38B43C E008864C 3C01E009 */  lui       $at, %hi(D_E0088DA0)
/* 38B440 E0088650 D4348DA0 */  ldc1      $f20, %lo(D_E0088DA0)($at)
/* 38B444 E0088654 2630000C */  addiu     $s0, $s1, 0xc
.LE0088658:
/* 38B448 E0088658 24020003 */  addiu     $v0, $zero, 3
/* 38B44C E008865C 16620010 */  bne       $s3, $v0, .LE00886A0
/* 38B450 E0088660 00000000 */   nop
/* 38B454 E0088664 8E020024 */  lw        $v0, 0x24($s0)
/* 38B458 E0088668 18400003 */  blez      $v0, .LE0088678
/* 38B45C E008866C 2442FFFF */   addiu    $v0, $v0, -1
/* 38B460 E0088670 1C40003E */  bgtz      $v0, .LE008876C
/* 38B464 E0088674 AE020024 */   sw       $v0, 0x24($s0)
.LE0088678:
/* 38B468 E0088678 8E020014 */  lw        $v0, 0x14($s0)
/* 38B46C E008867C 2442FFFF */  addiu     $v0, $v0, -1
/* 38B470 E0088680 0441002E */  bgez      $v0, .LE008873C
/* 38B474 E0088684 AE020014 */   sw       $v0, 0x14($s0)
/* 38B478 E0088688 0C022000 */  jal       func_E0088000
/* 38B47C E008868C 0220202D */   daddu    $a0, $s1, $zero
/* 38B480 E0088690 8E020014 */  lw        $v0, 0x14($s0)
/* 38B484 E0088694 2442FFFF */  addiu     $v0, $v0, -1
/* 38B488 E0088698 080221CF */  j         .LE008873C
/* 38B48C E008869C AE020014 */   sw       $v0, 0x14($s0)
.LE00886A0:
/* 38B490 E00886A0 8E020024 */  lw        $v0, 0x24($s0)
/* 38B494 E00886A4 18400003 */  blez      $v0, .LE00886B4
/* 38B498 E00886A8 2442FFFF */   addiu    $v0, $v0, -1
/* 38B49C E00886AC 1C40002F */  bgtz      $v0, .LE008876C
/* 38B4A0 E00886B0 AE020024 */   sw       $v0, 0x24($s0)
.LE00886B4:
/* 38B4A4 E00886B4 2A620004 */  slti      $v0, $s3, 4
/* 38B4A8 E00886B8 14400020 */  bnez      $v0, .LE008873C
/* 38B4AC E00886BC 2AA20006 */   slti     $v0, $s5, 6
/* 38B4B0 E00886C0 C6040004 */  lwc1      $f4, 4($s0)
/* 38B4B4 E00886C4 46002121 */  cvt.d.s   $f4, $f4
/* 38B4B8 E00886C8 46342102 */  mul.d     $f4, $f4, $f20
/* 38B4BC E00886CC 00000000 */  nop
/* 38B4C0 E00886D0 C6020008 */  lwc1      $f2, 8($s0)
/* 38B4C4 E00886D4 460010A1 */  cvt.d.s   $f2, $f2
/* 38B4C8 E00886D8 46341082 */  mul.d     $f2, $f2, $f20
/* 38B4CC E00886DC 00000000 */  nop
/* 38B4D0 E00886E0 C600000C */  lwc1      $f0, 0xc($s0)
/* 38B4D4 E00886E4 46000021 */  cvt.d.s   $f0, $f0
/* 38B4D8 E00886E8 46340002 */  mul.d     $f0, $f0, $f20
/* 38B4DC E00886EC 00000000 */  nop
/* 38B4E0 E00886F0 46202120 */  cvt.s.d   $f4, $f4
/* 38B4E4 E00886F4 462010A0 */  cvt.s.d   $f2, $f2
/* 38B4E8 E00886F8 46200020 */  cvt.s.d   $f0, $f0
/* 38B4EC E00886FC E6040004 */  swc1      $f4, 4($s0)
/* 38B4F0 E0088700 E6020008 */  swc1      $f2, 8($s0)
/* 38B4F4 E0088704 1440000D */  bnez      $v0, .LE008873C
/* 38B4F8 E0088708 E600000C */   swc1     $f0, 0xc($s0)
/* 38B4FC E008870C 46001106 */  mov.s     $f4, $f2
/* 38B500 E0088710 3C01BFE0 */  lui       $at, 0xbfe0
/* 38B504 E0088714 44811800 */  mtc1      $at, $f3
/* 38B508 E0088718 44801000 */  mtc1      $zero, $f2
/* 38B50C E008871C 46002021 */  cvt.d.s   $f0, $f4
/* 38B510 E0088720 4620103C */  c.lt.d    $f2, $f0
/* 38B514 E0088724 00000000 */  nop
/* 38B518 E0088728 45000004 */  bc1f      .LE008873C
/* 38B51C E008872C 00000000 */   nop
/* 38B520 E0088730 C6000010 */  lwc1      $f0, 0x10($s0)
/* 38B524 E0088734 46002000 */  add.s     $f0, $f4, $f0
/* 38B528 E0088738 E6000008 */  swc1      $f0, 8($s0)
.LE008873C:
/* 38B52C E008873C C606FFF8 */  lwc1      $f6, -8($s0)
/* 38B530 E0088740 C6000004 */  lwc1      $f0, 4($s0)
/* 38B534 E0088744 C604FFFC */  lwc1      $f4, -4($s0)
/* 38B538 E0088748 46003180 */  add.s     $f6, $f6, $f0
/* 38B53C E008874C C6000008 */  lwc1      $f0, 8($s0)
/* 38B540 E0088750 C6020000 */  lwc1      $f2, ($s0)
/* 38B544 E0088754 46002100 */  add.s     $f4, $f4, $f0
/* 38B548 E0088758 C600000C */  lwc1      $f0, 0xc($s0)
/* 38B54C E008875C 46001080 */  add.s     $f2, $f2, $f0
/* 38B550 E0088760 E606FFF8 */  swc1      $f6, -8($s0)
/* 38B554 E0088764 E604FFFC */  swc1      $f4, -4($s0)
/* 38B558 E0088768 E6020000 */  swc1      $f2, ($s0)
.LE008876C:
/* 38B55C E008876C 26520001 */  addiu     $s2, $s2, 1
/* 38B560 E0088770 26100034 */  addiu     $s0, $s0, 0x34
/* 38B564 E0088774 0254102A */  slt       $v0, $s2, $s4
/* 38B568 E0088778 1440FFB7 */  bnez      $v0, .LE0088658
/* 38B56C E008877C 26310034 */   addiu    $s1, $s1, 0x34
.LE0088780:
/* 38B570 E0088780 8FBF0028 */  lw        $ra, 0x28($sp)
/* 38B574 E0088784 8FB50024 */  lw        $s5, 0x24($sp)
/* 38B578 E0088788 8FB40020 */  lw        $s4, 0x20($sp)
/* 38B57C E008878C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 38B580 E0088790 8FB20018 */  lw        $s2, 0x18($sp)
/* 38B584 E0088794 8FB10014 */  lw        $s1, 0x14($sp)
/* 38B588 E0088798 8FB00010 */  lw        $s0, 0x10($sp)
/* 38B58C E008879C D7B40030 */  ldc1      $f20, 0x30($sp)
/* 38B590 E00887A0 03E00008 */  jr        $ra
/* 38B594 E00887A4 27BD0038 */   addiu    $sp, $sp, 0x38
