.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80243EE0_C75360
/* C75360 80243EE0 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* C75364 80243EE4 AFB00038 */  sw        $s0, 0x38($sp)
/* C75368 80243EE8 0080802D */  daddu     $s0, $a0, $zero
/* C7536C 80243EEC 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* C75370 80243EF0 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* C75374 80243EF4 AFB1003C */  sw        $s1, 0x3c($sp)
/* C75378 80243EF8 3C118011 */  lui       $s1, %hi(gPlayerData)
/* C7537C 80243EFC 2631F290 */  addiu     $s1, $s1, %lo(gPlayerData)
/* C75380 80243F00 AFB20040 */  sw        $s2, 0x40($sp)
/* C75384 80243F04 AFBF0044 */  sw        $ra, 0x44($sp)
/* C75388 80243F08 F7B60050 */  sdc1      $f22, 0x50($sp)
/* C7538C 80243F0C F7B40048 */  sdc1      $f20, 0x48($sp)
/* C75390 80243F10 10A00004 */  beqz      $a1, .L80243F24
/* C75394 80243F14 0220902D */   daddu    $s2, $s1, $zero
/* C75398 80243F18 240200FF */  addiu     $v0, $zero, 0xff
/* C7539C 80243F1C AE020070 */  sw        $v0, 0x70($s0)
/* C753A0 80243F20 AE000074 */  sw        $zero, 0x74($s0)
.L80243F24:
/* C753A4 80243F24 24040001 */  addiu     $a0, $zero, 1
/* C753A8 80243F28 C460002C */  lwc1      $f0, 0x2c($v1)
/* C753AC 80243F2C 3C014100 */  lui       $at, 0x4100
/* C753B0 80243F30 44811000 */  mtc1      $at, $f2
/* C753B4 80243F34 00000000 */  nop
/* C753B8 80243F38 46020000 */  add.s     $f0, $f0, $f2
/* C753BC 80243F3C C4620030 */  lwc1      $f2, 0x30($v1)
/* C753C0 80243F40 C4640028 */  lwc1      $f4, 0x28($v1)
/* C753C4 80243F44 4600118D */  trunc.w.s $f6, $f2
/* C753C8 80243F48 E7A60010 */  swc1      $f6, 0x10($sp)
/* C753CC 80243F4C 4600218D */  trunc.w.s $f6, $f4
/* C753D0 80243F50 44063000 */  mfc1      $a2, $f6
/* C753D4 80243F54 4600018D */  trunc.w.s $f6, $f0
/* C753D8 80243F58 44073000 */  mfc1      $a3, $f6
/* C753DC 80243F5C 0C04DFB0 */  jal       set_screen_overlay_center_worldpos
/* C753E0 80243F60 0080282D */   daddu    $a1, $a0, $zero
/* C753E4 80243F64 27A40028 */  addiu     $a0, $sp, 0x28
/* C753E8 80243F68 27A50029 */  addiu     $a1, $sp, 0x29
/* C753EC 80243F6C 27A6002A */  addiu     $a2, $sp, 0x2a
/* C753F0 80243F70 27A7002B */  addiu     $a3, $sp, 0x2b
/* C753F4 80243F74 27A2002C */  addiu     $v0, $sp, 0x2c
/* C753F8 80243F78 AFA20010 */  sw        $v0, 0x10($sp)
/* C753FC 80243F7C 27A2002D */  addiu     $v0, $sp, 0x2d
/* C75400 80243F80 AFA20014 */  sw        $v0, 0x14($sp)
/* C75404 80243F84 27A2002E */  addiu     $v0, $sp, 0x2e
/* C75408 80243F88 AFA20018 */  sw        $v0, 0x18($sp)
/* C7540C 80243F8C 27A20030 */  addiu     $v0, $sp, 0x30
/* C75410 80243F90 AFA2001C */  sw        $v0, 0x1c($sp)
/* C75414 80243F94 27A20034 */  addiu     $v0, $sp, 0x34
/* C75418 80243F98 0C046FC5 */  jal       get_model_fog_color_parameters
/* C7541C 80243F9C AFA20020 */   sw       $v0, 0x20($sp)
/* C75420 80243FA0 240203E3 */  addiu     $v0, $zero, 0x3e3
/* C75424 80243FA4 8FA30030 */  lw        $v1, 0x30($sp)
/* C75428 80243FA8 3C01428C */  lui       $at, 0x428c
/* C7542C 80243FAC 44811000 */  mtc1      $at, $f2
/* C75430 80243FB0 00431023 */  subu      $v0, $v0, $v1
/* C75434 80243FB4 44820000 */  mtc1      $v0, $f0
/* C75438 80243FB8 00000000 */  nop
/* C7543C 80243FBC 46800020 */  cvt.s.w   $f0, $f0
/* C75440 80243FC0 46020001 */  sub.s     $f0, $f0, $f2
/* C75444 80243FC4 3C01437F */  lui       $at, 0x437f
/* C75448 80243FC8 44812000 */  mtc1      $at, $f4
/* C7544C 80243FCC 00000000 */  nop
/* C75450 80243FD0 46040002 */  mul.s     $f0, $f0, $f4
/* C75454 80243FD4 00000000 */  nop
/* C75458 80243FD8 3C0141F0 */  lui       $at, 0x41f0
/* C7545C 80243FDC 44811000 */  mtc1      $at, $f2
/* C75460 80243FE0 00000000 */  nop
/* C75464 80243FE4 46020583 */  div.s     $f22, $f0, $f2
/* C75468 80243FE8 4616203C */  c.lt.s    $f4, $f22
/* C7546C 80243FEC 00000000 */  nop
/* C75470 80243FF0 45030001 */  bc1tl     .L80243FF8
/* C75474 80243FF4 46002586 */   mov.s    $f22, $f4
.L80243FF8:
/* C75478 80243FF8 4480A000 */  mtc1      $zero, $f20
/* C7547C 80243FFC 00000000 */  nop
/* C75480 80244000 4614B03C */  c.lt.s    $f22, $f20
/* C75484 80244004 00000000 */  nop
/* C75488 80244008 45030001 */  bc1tl     .L80244010
/* C7548C 8024400C 4600A586 */   mov.s    $f22, $f20
.L80244010:
/* C75490 80244010 4614B032 */  c.eq.s    $f22, $f20
/* C75494 80244014 00000000 */  nop
/* C75498 80244018 45000007 */  bc1f      .L80244038
/* C7549C 8024401C 00000000 */   nop
/* C754A0 80244020 4405A000 */  mfc1      $a1, $f20
/* C754A4 80244024 0C04E035 */  jal       set_screen_overlay_alpha
/* C754A8 80244028 24040001 */   addiu    $a0, $zero, 1
/* C754AC 8024402C 4405A000 */  mfc1      $a1, $f20
/* C754B0 80244030 0809103C */  j         .L802440F0
/* C754B4 80244034 00000000 */   nop
.L80244038:
/* C754B8 80244038 3C028011 */  lui       $v0, %hi(gPartnerActionStatus)
/* C754BC 8024403C 8042EBB0 */  lb        $v0, %lo(gPartnerActionStatus)($v0)
/* C754C0 80244040 10400012 */  beqz      $v0, .L8024408C
/* C754C4 80244044 24020006 */   addiu    $v0, $zero, 6
/* C754C8 80244048 82230012 */  lb        $v1, 0x12($s1)
/* C754CC 8024404C 14620022 */  bne       $v1, $v0, .L802440D8
/* C754D0 80244050 00000000 */   nop
/* C754D4 80244054 8E020074 */  lw        $v0, 0x74($s0)
/* C754D8 80244058 14400004 */  bnez      $v0, .L8024406C
/* C754DC 8024405C 24020001 */   addiu    $v0, $zero, 1
/* C754E0 80244060 AE020074 */  sw        $v0, 0x74($s0)
/* C754E4 80244064 0C05272D */  jal       sfx_play_sound
/* C754E8 80244068 24042011 */   addiu    $a0, $zero, 0x2011
.L8024406C:
/* C754EC 8024406C 8E020070 */  lw        $v0, 0x70($s0)
/* C754F0 80244070 2442FFF8 */  addiu     $v0, $v0, -8
/* C754F4 80244074 AE020070 */  sw        $v0, 0x70($s0)
/* C754F8 80244078 2842005A */  slti      $v0, $v0, 0x5a
/* C754FC 8024407C 10400016 */  beqz      $v0, .L802440D8
/* C75500 80244080 2402005A */   addiu    $v0, $zero, 0x5a
/* C75504 80244084 08091036 */  j         .L802440D8
/* C75508 80244088 AE020070 */   sw       $v0, 0x70($s0)
.L8024408C:
/* C7550C 8024408C 82430012 */  lb        $v1, 0x12($s2)
/* C75510 80244090 14620010 */  bne       $v1, $v0, .L802440D4
/* C75514 80244094 240200FF */   addiu    $v0, $zero, 0xff
/* C75518 80244098 8E020074 */  lw        $v0, 0x74($s0)
/* C7551C 8024409C 10400007 */  beqz      $v0, .L802440BC
/* C75520 802440A0 00000000 */   nop
/* C75524 802440A4 8E020070 */  lw        $v0, 0x70($s0)
/* C75528 802440A8 284200FF */  slti      $v0, $v0, 0xff
/* C7552C 802440AC 10400003 */  beqz      $v0, .L802440BC
/* C75530 802440B0 AE000074 */   sw       $zero, 0x74($s0)
/* C75534 802440B4 0C05272D */  jal       sfx_play_sound
/* C75538 802440B8 24042012 */   addiu    $a0, $zero, 0x2012
.L802440BC:
/* C7553C 802440BC 8E020070 */  lw        $v0, 0x70($s0)
/* C75540 802440C0 24420008 */  addiu     $v0, $v0, 8
/* C75544 802440C4 AE020070 */  sw        $v0, 0x70($s0)
/* C75548 802440C8 284200FF */  slti      $v0, $v0, 0xff
/* C7554C 802440CC 14400002 */  bnez      $v0, .L802440D8
/* C75550 802440D0 240200FF */   addiu    $v0, $zero, 0xff
.L802440D4:
/* C75554 802440D4 AE020070 */  sw        $v0, 0x70($s0)
.L802440D8:
/* C75558 802440D8 C6060070 */  lwc1      $f6, 0x70($s0)
/* C7555C 802440DC 468031A0 */  cvt.s.w   $f6, $f6
/* C75560 802440E0 44053000 */  mfc1      $a1, $f6
/* C75564 802440E4 0C04E035 */  jal       set_screen_overlay_alpha
/* C75568 802440E8 24040001 */   addiu    $a0, $zero, 1
/* C7556C 802440EC 4405B000 */  mfc1      $a1, $f22
.L802440F0:
/* C75570 802440F0 0C04DF69 */  jal       set_screen_overlay_params_back
/* C75574 802440F4 2404000B */   addiu    $a0, $zero, 0xb
/* C75578 802440F8 0000102D */  daddu     $v0, $zero, $zero
/* C7557C 802440FC 8FBF0044 */  lw        $ra, 0x44($sp)
/* C75580 80244100 8FB20040 */  lw        $s2, 0x40($sp)
/* C75584 80244104 8FB1003C */  lw        $s1, 0x3c($sp)
/* C75588 80244108 8FB00038 */  lw        $s0, 0x38($sp)
/* C7558C 8024410C D7B60050 */  ldc1      $f22, 0x50($sp)
/* C75590 80244110 D7B40048 */  ldc1      $f20, 0x48($sp)
/* C75594 80244114 03E00008 */  jr        $ra
/* C75598 80244118 27BD0058 */   addiu    $sp, $sp, 0x58
/* C7559C 8024411C 00000000 */  nop
