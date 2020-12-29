.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802414AC_C4125C
/* C4125C 802414AC 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* C41260 802414B0 AFB20038 */  sw        $s2, 0x38($sp)
/* C41264 802414B4 0080902D */  daddu     $s2, $a0, $zero
/* C41268 802414B8 AFBF0048 */  sw        $ra, 0x48($sp)
/* C4126C 802414BC AFB50044 */  sw        $s5, 0x44($sp)
/* C41270 802414C0 AFB40040 */  sw        $s4, 0x40($sp)
/* C41274 802414C4 AFB3003C */  sw        $s3, 0x3c($sp)
/* C41278 802414C8 AFB10034 */  sw        $s1, 0x34($sp)
/* C4127C 802414CC AFB00030 */  sw        $s0, 0x30($sp)
/* C41280 802414D0 8E510148 */  lw        $s1, 0x148($s2)
/* C41284 802414D4 86240008 */  lh        $a0, 8($s1)
/* C41288 802414D8 0C00EABB */  jal       get_npc_unsafe
/* C4128C 802414DC 00A0802D */   daddu    $s0, $a1, $zero
/* C41290 802414E0 8E43000C */  lw        $v1, 0xc($s2)
/* C41294 802414E4 0240202D */  daddu     $a0, $s2, $zero
/* C41298 802414E8 8C650000 */  lw        $a1, ($v1)
/* C4129C 802414EC 0C0B1EAF */  jal       get_variable
/* C412A0 802414F0 0040A82D */   daddu    $s5, $v0, $zero
/* C412A4 802414F4 AFA00010 */  sw        $zero, 0x10($sp)
/* C412A8 802414F8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C412AC 802414FC 8C630030 */  lw        $v1, 0x30($v1)
/* C412B0 80241500 AFA30014 */  sw        $v1, 0x14($sp)
/* C412B4 80241504 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C412B8 80241508 8C63001C */  lw        $v1, 0x1c($v1)
/* C412BC 8024150C AFA30018 */  sw        $v1, 0x18($sp)
/* C412C0 80241510 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C412C4 80241514 8C630024 */  lw        $v1, 0x24($v1)
/* C412C8 80241518 AFA3001C */  sw        $v1, 0x1c($sp)
/* C412CC 8024151C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C412D0 80241520 8C630028 */  lw        $v1, 0x28($v1)
/* C412D4 80241524 27B40010 */  addiu     $s4, $sp, 0x10
/* C412D8 80241528 AFA30020 */  sw        $v1, 0x20($sp)
/* C412DC 8024152C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C412E0 80241530 3C014282 */  lui       $at, 0x4282
/* C412E4 80241534 44810000 */  mtc1      $at, $f0
/* C412E8 80241538 8C63002C */  lw        $v1, 0x2c($v1)
/* C412EC 8024153C 0040982D */  daddu     $s3, $v0, $zero
/* C412F0 80241540 E7A00028 */  swc1      $f0, 0x28($sp)
/* C412F4 80241544 A7A0002C */  sh        $zero, 0x2c($sp)
/* C412F8 80241548 16000005 */  bnez      $s0, .L80241560
/* C412FC 8024154C AFA30024 */   sw       $v1, 0x24($sp)
/* C41300 80241550 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C41304 80241554 30420004 */  andi      $v0, $v0, 4
/* C41308 80241558 10400020 */  beqz      $v0, .L802415DC
/* C4130C 8024155C 00000000 */   nop
.L80241560:
/* C41310 80241560 2404F7FF */  addiu     $a0, $zero, -0x801
/* C41314 80241564 AE400070 */  sw        $zero, 0x70($s2)
/* C41318 80241568 A6A0008E */  sh        $zero, 0x8e($s5)
/* C4131C 8024156C 8E2200CC */  lw        $v0, 0xcc($s1)
/* C41320 80241570 8EA30000 */  lw        $v1, ($s5)
/* C41324 80241574 8C420000 */  lw        $v0, ($v0)
/* C41328 80241578 00641824 */  and       $v1, $v1, $a0
/* C4132C 8024157C AEA30000 */  sw        $v1, ($s5)
/* C41330 80241580 AEA20028 */  sw        $v0, 0x28($s5)
/* C41334 80241584 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C41338 80241588 8C420034 */  lw        $v0, 0x34($v0)
/* C4133C 8024158C 54400005 */  bnel      $v0, $zero, .L802415A4
/* C41340 80241590 2402FDFF */   addiu    $v0, $zero, -0x201
/* C41344 80241594 34620200 */  ori       $v0, $v1, 0x200
/* C41348 80241598 2403FFF7 */  addiu     $v1, $zero, -9
/* C4134C 8024159C 0809056B */  j         .L802415AC
/* C41350 802415A0 00431024 */   and      $v0, $v0, $v1
.L802415A4:
/* C41354 802415A4 00621024 */  and       $v0, $v1, $v0
/* C41358 802415A8 34420008 */  ori       $v0, $v0, 8
.L802415AC:
/* C4135C 802415AC AEA20000 */  sw        $v0, ($s5)
/* C41360 802415B0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C41364 802415B4 30420004 */  andi      $v0, $v0, 4
/* C41368 802415B8 10400007 */  beqz      $v0, .L802415D8
/* C4136C 802415BC 24020063 */   addiu    $v0, $zero, 0x63
/* C41370 802415C0 AE420070 */  sw        $v0, 0x70($s2)
/* C41374 802415C4 AE400074 */  sw        $zero, 0x74($s2)
/* C41378 802415C8 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C4137C 802415CC 2403FFFB */  addiu     $v1, $zero, -5
/* C41380 802415D0 00431024 */  and       $v0, $v0, $v1
/* C41384 802415D4 AE2200B0 */  sw        $v0, 0xb0($s1)
.L802415D8:
/* C41388 802415D8 AE20006C */  sw        $zero, 0x6c($s1)
.L802415DC:
/* C4138C 802415DC 8E420070 */  lw        $v0, 0x70($s2)
/* C41390 802415E0 2842001E */  slti      $v0, $v0, 0x1e
/* C41394 802415E4 10400009 */  beqz      $v0, .L8024160C
/* C41398 802415E8 00000000 */   nop
/* C4139C 802415EC 8E22006C */  lw        $v0, 0x6c($s1)
/* C413A0 802415F0 14400006 */  bnez      $v0, .L8024160C
/* C413A4 802415F4 00000000 */   nop
/* C413A8 802415F8 0C090426 */  jal       func_80241098_C40E48
/* C413AC 802415FC 0240202D */   daddu    $a0, $s2, $zero
/* C413B0 80241600 10400002 */  beqz      $v0, .L8024160C
/* C413B4 80241604 2402001E */   addiu    $v0, $zero, 0x1e
/* C413B8 80241608 AE420070 */  sw        $v0, 0x70($s2)
.L8024160C:
/* C413BC 8024160C 8E430070 */  lw        $v1, 0x70($s2)
/* C413C0 80241610 2C620064 */  sltiu     $v0, $v1, 0x64
/* C413C4 80241614 10400048 */  beqz      $v0, .L80241738
/* C413C8 80241618 00031080 */   sll      $v0, $v1, 2
/* C413CC 8024161C 3C018024 */  lui       $at, %hi(D_80246BA8)
/* C413D0 80241620 00220821 */  addu      $at, $at, $v0
/* C413D4 80241624 8C226BA8 */  lw        $v0, %lo(D_80246BA8)($at)
/* C413D8 80241628 00400008 */  jr        $v0
/* C413DC 8024162C 00000000 */   nop
/* C413E0 80241630 0240202D */  daddu     $a0, $s2, $zero
/* C413E4 80241634 0260282D */  daddu     $a1, $s3, $zero
/* C413E8 80241638 0C012568 */  jal       func_800495A0
/* C413EC 8024163C 0280302D */   daddu    $a2, $s4, $zero
/* C413F0 80241640 0240202D */  daddu     $a0, $s2, $zero
/* C413F4 80241644 0260282D */  daddu     $a1, $s3, $zero
/* C413F8 80241648 0C0125AE */  jal       func_800496B8
/* C413FC 8024164C 0280302D */   daddu    $a2, $s4, $zero
/* C41400 80241650 080905CE */  j         .L80241738
/* C41404 80241654 00000000 */   nop
/* C41408 80241658 0240202D */  daddu     $a0, $s2, $zero
/* C4140C 8024165C 0260282D */  daddu     $a1, $s3, $zero
/* C41410 80241660 0C0126D1 */  jal       func_80049B44
/* C41414 80241664 0280302D */   daddu    $a2, $s4, $zero
/* C41418 80241668 0240202D */  daddu     $a0, $s2, $zero
/* C4141C 8024166C 0260282D */  daddu     $a1, $s3, $zero
/* C41420 80241670 0C012701 */  jal       func_80049C04
/* C41424 80241674 0280302D */   daddu    $a2, $s4, $zero
/* C41428 80241678 080905CE */  j         .L80241738
/* C4142C 8024167C 00000000 */   nop
/* C41430 80241680 0240202D */  daddu     $a0, $s2, $zero
/* C41434 80241684 0260282D */  daddu     $a1, $s3, $zero
/* C41438 80241688 0C01278F */  jal       func_80049E3C
/* C4143C 8024168C 0280302D */   daddu    $a2, $s4, $zero
/* C41440 80241690 0240202D */  daddu     $a0, $s2, $zero
/* C41444 80241694 0260282D */  daddu     $a1, $s3, $zero
/* C41448 80241698 0C0127B3 */  jal       func_80049ECC
/* C4144C 8024169C 0280302D */   daddu    $a2, $s4, $zero
/* C41450 802416A0 080905CE */  j         .L80241738
/* C41454 802416A4 00000000 */   nop
/* C41458 802416A8 0240202D */  daddu     $a0, $s2, $zero
/* C4145C 802416AC 0260282D */  daddu     $a1, $s3, $zero
/* C41460 802416B0 0C0127DF */  jal       func_80049F7C
/* C41464 802416B4 0280302D */   daddu    $a2, $s4, $zero
/* C41468 802416B8 0240202D */  daddu     $a0, $s2, $zero
/* C4146C 802416BC 0260282D */  daddu     $a1, $s3, $zero
/* C41470 802416C0 0C012849 */  jal       func_8004A124
/* C41474 802416C4 0280302D */   daddu    $a2, $s4, $zero
/* C41478 802416C8 080905CE */  j         .L80241738
/* C4147C 802416CC 00000000 */   nop
/* C41480 802416D0 0240202D */  daddu     $a0, $s2, $zero
/* C41484 802416D4 0260282D */  daddu     $a1, $s3, $zero
/* C41488 802416D8 0C0128FA */  jal       func_8004A3E8
/* C4148C 802416DC 0280302D */   daddu    $a2, $s4, $zero
/* C41490 802416E0 080905CE */  j         .L80241738
/* C41494 802416E4 00000000 */   nop
/* C41498 802416E8 0C0903A4 */  jal       dgb_08_UnkNpcAIFunc6
/* C4149C 802416EC 0240202D */   daddu    $a0, $s2, $zero
/* C414A0 802416F0 0C0903BF */  jal       dgb_08_UnkNpcAIFunc7
/* C414A4 802416F4 0240202D */   daddu    $a0, $s2, $zero
/* C414A8 802416F8 8E430070 */  lw        $v1, 0x70($s2)
/* C414AC 802416FC 24020020 */  addiu     $v0, $zero, 0x20
/* C414B0 80241700 1462000D */  bne       $v1, $v0, .L80241738
/* C414B4 80241704 00000000 */   nop
/* C414B8 80241708 0C0903DB */  jal       dgb_08_UnkNpcAIFunc8
/* C414BC 8024170C 0240202D */   daddu    $a0, $s2, $zero
/* C414C0 80241710 8E430070 */  lw        $v1, 0x70($s2)
/* C414C4 80241714 24020021 */  addiu     $v0, $zero, 0x21
/* C414C8 80241718 14620007 */  bne       $v1, $v0, .L80241738
/* C414CC 8024171C 00000000 */   nop
/* C414D0 80241720 0C090411 */  jal       dgb_08_UnkNpcAIFunc5
/* C414D4 80241724 0240202D */   daddu    $a0, $s2, $zero
/* C414D8 80241728 080905CE */  j         .L80241738
/* C414DC 8024172C 00000000 */   nop
/* C414E0 80241730 0C0129CF */  jal       func_8004A73C
/* C414E4 80241734 0240202D */   daddu    $a0, $s2, $zero
.L80241738:
/* C414E8 80241738 8FBF0048 */  lw        $ra, 0x48($sp)
/* C414EC 8024173C 8FB50044 */  lw        $s5, 0x44($sp)
/* C414F0 80241740 8FB40040 */  lw        $s4, 0x40($sp)
/* C414F4 80241744 8FB3003C */  lw        $s3, 0x3c($sp)
/* C414F8 80241748 8FB20038 */  lw        $s2, 0x38($sp)
/* C414FC 8024174C 8FB10034 */  lw        $s1, 0x34($sp)
/* C41500 80241750 8FB00030 */  lw        $s0, 0x30($sp)
/* C41504 80241754 0000102D */  daddu     $v0, $zero, $zero
/* C41508 80241758 03E00008 */  jr        $ra
/* C4150C 8024175C 27BD0050 */   addiu    $sp, $sp, 0x50
