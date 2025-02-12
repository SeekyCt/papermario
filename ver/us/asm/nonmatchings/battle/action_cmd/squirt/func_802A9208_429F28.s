.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A9208_429F28
/* 429F28 802A9208 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 429F2C 802A920C AFB10014 */  sw        $s1, 0x14($sp)
/* 429F30 802A9210 3C11802A */  lui       $s1, %hi(gActionCommandStatus)
/* 429F34 802A9214 2631FBE0 */  addiu     $s1, $s1, %lo(gActionCommandStatus)
/* 429F38 802A9218 AFBF0020 */  sw        $ra, 0x20($sp)
/* 429F3C 802A921C AFB3001C */  sw        $s3, 0x1c($sp)
/* 429F40 802A9220 AFB20018 */  sw        $s2, 0x18($sp)
/* 429F44 802A9224 AFB00010 */  sw        $s0, 0x10($sp)
/* 429F48 802A9228 8623004C */  lh        $v1, 0x4c($s1)
/* 429F4C 802A922C 3C13800E */  lui       $s3, %hi(gBattleStatus)
/* 429F50 802A9230 2673C070 */  addiu     $s3, $s3, %lo(gBattleStatus)
/* 429F54 802A9234 2C62000D */  sltiu     $v0, $v1, 0xd
/* 429F58 802A9238 104000F7 */  beqz      $v0, L802A9618_42A338
/* 429F5C 802A923C 00031080 */   sll      $v0, $v1, 2
/* 429F60 802A9240 3C01802B */  lui       $at, %hi(jtbl_802A9790_42A4B0)
/* 429F64 802A9244 00220821 */  addu      $at, $at, $v0
/* 429F68 802A9248 8C229790 */  lw        $v0, %lo(jtbl_802A9790_42A4B0)($at)
/* 429F6C 802A924C 00400008 */  jr        $v0
/* 429F70 802A9250 00000000 */   nop
dlabel L802A9254_429F74
/* 429F74 802A9254 0C093EB1 */  jal       btl_set_popup_duration
/* 429F78 802A9258 24040063 */   addiu    $a0, $zero, 0x63
/* 429F7C 802A925C 82220061 */  lb        $v0, 0x61($s1)
/* 429F80 802A9260 8E300004 */  lw        $s0, 4($s1)
/* 429F84 802A9264 10400004 */  beqz      $v0, .L802A9278
/* 429F88 802A9268 0200202D */   daddu    $a0, $s0, $zero
/* 429F8C 802A926C 0C05128B */  jal       hud_element_clear_flags
/* 429F90 802A9270 24050002 */   addiu    $a1, $zero, 2
/* 429F94 802A9274 0200202D */  daddu     $a0, $s0, $zero
.L802A9278:
/* 429F98 802A9278 0C0513AC */  jal       hud_element_set_alpha
/* 429F9C 802A927C 240500FF */   addiu    $a1, $zero, 0xff
/* 429FA0 802A9280 8E300008 */  lw        $s0, 8($s1)
/* 429FA4 802A9284 240500FF */  addiu     $a1, $zero, 0xff
/* 429FA8 802A9288 0C0513AC */  jal       hud_element_set_alpha
/* 429FAC 802A928C 0200202D */   daddu    $a0, $s0, $zero
/* 429FB0 802A9290 82220061 */  lb        $v0, 0x61($s1)
/* 429FB4 802A9294 10400003 */  beqz      $v0, .L802A92A4
/* 429FB8 802A9298 0200202D */   daddu    $a0, $s0, $zero
/* 429FBC 802A929C 0C05128B */  jal       hud_element_clear_flags
/* 429FC0 802A92A0 24050002 */   addiu    $a1, $zero, 2
.L802A92A4:
/* 429FC4 802A92A4 24020001 */  addiu     $v0, $zero, 1
/* 429FC8 802A92A8 080AA586 */  j         L802A9618_42A338
/* 429FCC 802A92AC A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A92B0_429FD0
/* 429FD0 802A92B0 0C093EB1 */  jal       btl_set_popup_duration
/* 429FD4 802A92B4 24040063 */   addiu    $a0, $zero, 0x63
/* 429FD8 802A92B8 96220056 */  lhu       $v0, 0x56($s1)
/* 429FDC 802A92BC 24420014 */  addiu     $v0, $v0, 0x14
/* 429FE0 802A92C0 A6220056 */  sh        $v0, 0x56($s1)
/* 429FE4 802A92C4 00021400 */  sll       $v0, $v0, 0x10
/* 429FE8 802A92C8 00021403 */  sra       $v0, $v0, 0x10
/* 429FEC 802A92CC 28420033 */  slti      $v0, $v0, 0x33
/* 429FF0 802A92D0 14400002 */  bnez      $v0, .L802A92DC
/* 429FF4 802A92D4 24020032 */   addiu    $v0, $zero, 0x32
/* 429FF8 802A92D8 A6220056 */  sh        $v0, 0x56($s1)
.L802A92DC:
/* 429FFC 802A92DC 8E240004 */  lw        $a0, 4($s1)
/* 42A000 802A92E0 86250056 */  lh        $a1, 0x56($s1)
/* 42A004 802A92E4 0C051261 */  jal       hud_element_set_render_pos
/* 42A008 802A92E8 86260058 */   lh       $a2, 0x58($s1)
/* 42A00C 802A92EC 8E240008 */  lw        $a0, 8($s1)
/* 42A010 802A92F0 86260058 */  lh        $a2, 0x58($s1)
/* 42A014 802A92F4 86250056 */  lh        $a1, 0x56($s1)
/* 42A018 802A92F8 0C051261 */  jal       hud_element_set_render_pos
/* 42A01C 802A92FC 24C6001C */   addiu    $a2, $a2, 0x1c
/* 42A020 802A9300 080AA586 */  j         L802A9618_42A338
/* 42A024 802A9304 00000000 */   nop
dlabel L802A9308_42A028
/* 42A028 802A9308 0C093EB1 */  jal       btl_set_popup_duration
/* 42A02C 802A930C 24040063 */   addiu    $a0, $zero, 0x63
/* 42A030 802A9310 8622004E */  lh        $v0, 0x4e($s1)
/* 42A034 802A9314 9623004E */  lhu       $v1, 0x4e($s1)
/* 42A038 802A9318 10400003 */  beqz      $v0, .L802A9328
/* 42A03C 802A931C 2462FFFF */   addiu    $v0, $v1, -1
/* 42A040 802A9320 080AA586 */  j         L802A9618_42A338
/* 42A044 802A9324 A622004E */   sh       $v0, 0x4e($s1)
.L802A9328:
/* 42A048 802A9328 8E240004 */  lw        $a0, 4($s1)
/* 42A04C 802A932C 3C058011 */  lui       $a1, %hi(HudScript_AButtonDown)
/* 42A050 802A9330 24A58B54 */  addiu     $a1, $a1, %lo(HudScript_AButtonDown)
/* 42A054 802A9334 0C0511FF */  jal       hud_element_set_script
/* 42A058 802A9338 00000000 */   nop
/* 42A05C 802A933C 3C048000 */  lui       $a0, 0x8000
/* 42A060 802A9340 34840041 */  ori       $a0, $a0, 0x41
/* 42A064 802A9344 0000282D */  daddu     $a1, $zero, $zero
/* 42A068 802A9348 00A0302D */  daddu     $a2, $a1, $zero
/* 42A06C 802A934C 96220052 */  lhu       $v0, 0x52($s1)
/* 42A070 802A9350 00A0382D */  daddu     $a3, $a1, $zero
/* 42A074 802A9354 A6200044 */  sh        $zero, 0x44($s1)
/* 42A078 802A9358 A220005C */  sb        $zero, 0x5c($s1)
/* 42A07C 802A935C 0C0526AE */  jal       sfx_play_sound_with_params
/* 42A080 802A9360 A6220054 */   sh       $v0, 0x54($s1)
/* 42A084 802A9364 2402000B */  addiu     $v0, $zero, 0xb
/* 42A088 802A9368 A622004C */  sh        $v0, 0x4c($s1)
dlabel L802A936C_42A08C
/* 42A08C 802A936C 0C093EB1 */  jal       btl_set_popup_duration
/* 42A090 802A9370 24040063 */   addiu    $a0, $zero, 0x63
/* 42A094 802A9374 82220080 */  lb        $v0, 0x80($s1)
/* 42A098 802A9378 00021040 */  sll       $v0, $v0, 1
/* 42A09C 802A937C 02221021 */  addu      $v0, $s1, $v0
/* 42A0A0 802A9380 84430074 */  lh        $v1, 0x74($v0)
/* 42A0A4 802A9384 86220044 */  lh        $v0, 0x44($s1)
/* 42A0A8 802A9388 14600002 */  bnez      $v1, .L802A9394
/* 42A0AC 802A938C 0043001A */   div      $zero, $v0, $v1
/* 42A0B0 802A9390 0007000D */  break     7
.L802A9394:
/* 42A0B4 802A9394 2401FFFF */   addiu    $at, $zero, -1
/* 42A0B8 802A9398 14610004 */  bne       $v1, $at, .L802A93AC
/* 42A0BC 802A939C 3C018000 */   lui      $at, 0x8000
/* 42A0C0 802A93A0 14410002 */  bne       $v0, $at, .L802A93AC
/* 42A0C4 802A93A4 00000000 */   nop
/* 42A0C8 802A93A8 0006000D */  break     6
.L802A93AC:
/* 42A0CC 802A93AC 00009012 */   mflo     $s2
/* 42A0D0 802A93B0 8222005C */  lb        $v0, 0x5c($s1)
/* 42A0D4 802A93B4 96250044 */  lhu       $a1, 0x44($s1)
/* 42A0D8 802A93B8 1440003A */  bnez      $v0, .L802A94A4
/* 42A0DC 802A93BC 24A2FF06 */   addiu    $v0, $a1, -0xfa
/* 42A0E0 802A93C0 8E620210 */  lw        $v0, 0x210($s3)
/* 42A0E4 802A93C4 30428000 */  andi      $v0, $v0, 0x8000
/* 42A0E8 802A93C8 14400012 */  bnez      $v0, .L802A9414
/* 42A0EC 802A93CC 3C026666 */   lui      $v0, 0x6666
/* 42A0F0 802A93D0 34426667 */  ori       $v0, $v0, 0x6667
/* 42A0F4 802A93D4 02420018 */  mult      $s2, $v0
/* 42A0F8 802A93D8 00121FC3 */  sra       $v1, $s2, 0x1f
/* 42A0FC 802A93DC 00004810 */  mfhi      $t1
/* 42A100 802A93E0 000910C3 */  sra       $v0, $t1, 3
/* 42A104 802A93E4 00431023 */  subu      $v0, $v0, $v1
/* 42A108 802A93E8 00021080 */  sll       $v0, $v0, 2
/* 42A10C 802A93EC 3C01802B */  lui       $at, %hi(D_802A9762_42A482)
/* 42A110 802A93F0 00220821 */  addu      $at, $at, $v0
/* 42A114 802A93F4 94229762 */  lhu       $v0, %lo(D_802A9762_42A482)($at)
/* 42A118 802A93F8 00A21023 */  subu      $v0, $a1, $v0
/* 42A11C 802A93FC A6220044 */  sh        $v0, 0x44($s1)
/* 42A120 802A9400 00021400 */  sll       $v0, $v0, 0x10
/* 42A124 802A9404 0442002D */  bltzl     $v0, .L802A94BC
/* 42A128 802A9408 A6200044 */   sh       $zero, 0x44($s1)
/* 42A12C 802A940C 080AA530 */  j         .L802A94C0
/* 42A130 802A9410 3C0451EB */   lui      $a0, 0x51eb
.L802A9414:
/* 42A134 802A9414 34426667 */  ori       $v0, $v0, 0x6667
/* 42A138 802A9418 02420018 */  mult      $s2, $v0
/* 42A13C 802A941C 001217C3 */  sra       $v0, $s2, 0x1f
/* 42A140 802A9420 8E640434 */  lw        $a0, 0x434($s3)
/* 42A144 802A9424 00001810 */  mfhi      $v1
/* 42A148 802A9428 000318C3 */  sra       $v1, $v1, 3
/* 42A14C 802A942C 00621823 */  subu      $v1, $v1, $v0
/* 42A150 802A9430 00031880 */  sll       $v1, $v1, 2
/* 42A154 802A9434 86220050 */  lh        $v0, 0x50($s1)
/* 42A158 802A9438 3C01802B */  lui       $at, %hi(D_802A9778_42A498)
/* 42A15C 802A943C 00230821 */  addu      $at, $at, $v1
/* 42A160 802A9440 8C239778 */  lw        $v1, %lo(D_802A9778_42A498)($at)
/* 42A164 802A9444 00021080 */  sll       $v0, $v0, 2
/* 42A168 802A9448 00441021 */  addu      $v0, $v0, $a0
/* 42A16C 802A944C 8C420000 */  lw        $v0, ($v0)
/* 42A170 802A9450 00620018 */  mult      $v1, $v0
/* 42A174 802A9454 00001812 */  mflo      $v1
/* 42A178 802A9458 3C0251EB */  lui       $v0, 0x51eb
/* 42A17C 802A945C 3442851F */  ori       $v0, $v0, 0x851f
/* 42A180 802A9460 00620018 */  mult      $v1, $v0
/* 42A184 802A9464 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42A188 802A9468 00004010 */  mfhi      $t0
/* 42A18C 802A946C 00081143 */  sra       $v0, $t0, 5
/* 42A190 802A9470 00431023 */  subu      $v0, $v0, $v1
/* 42A194 802A9474 00A21021 */  addu      $v0, $a1, $v0
/* 42A198 802A9478 A6220044 */  sh        $v0, 0x44($s1)
/* 42A19C 802A947C 00021400 */  sll       $v0, $v0, 0x10
/* 42A1A0 802A9480 00021403 */  sra       $v0, $v0, 0x10
/* 42A1A4 802A9484 28422711 */  slti      $v0, $v0, 0x2711
/* 42A1A8 802A9488 1440000D */  bnez      $v0, .L802A94C0
/* 42A1AC 802A948C 3C0451EB */   lui      $a0, 0x51eb
/* 42A1B0 802A9490 24022710 */  addiu     $v0, $zero, 0x2710
/* 42A1B4 802A9494 A6220044 */  sh        $v0, 0x44($s1)
/* 42A1B8 802A9498 24020001 */  addiu     $v0, $zero, 1
/* 42A1BC 802A949C 080AA530 */  j         .L802A94C0
/* 42A1C0 802A94A0 A222005C */   sb       $v0, 0x5c($s1)
.L802A94A4:
/* 42A1C4 802A94A4 A6220044 */  sh        $v0, 0x44($s1)
/* 42A1C8 802A94A8 00021400 */  sll       $v0, $v0, 0x10
/* 42A1CC 802A94AC 1C400004 */  bgtz      $v0, .L802A94C0
/* 42A1D0 802A94B0 3C0451EB */   lui      $a0, 0x51eb
/* 42A1D4 802A94B4 A6200044 */  sh        $zero, 0x44($s1)
/* 42A1D8 802A94B8 A220005C */  sb        $zero, 0x5c($s1)
.L802A94BC:
/* 42A1DC 802A94BC 3C0451EB */  lui       $a0, 0x51eb
.L802A94C0:
/* 42A1E0 802A94C0 3484851F */  ori       $a0, $a0, 0x851f
/* 42A1E4 802A94C4 96230044 */  lhu       $v1, 0x44($s1)
/* 42A1E8 802A94C8 0000282D */  daddu     $a1, $zero, $zero
/* 42A1EC 802A94CC 00031C00 */  sll       $v1, $v1, 0x10
/* 42A1F0 802A94D0 00031403 */  sra       $v0, $v1, 0x10
/* 42A1F4 802A94D4 00440018 */  mult      $v0, $a0
/* 42A1F8 802A94D8 00A0302D */  daddu     $a2, $a1, $zero
/* 42A1FC 802A94DC 3C048000 */  lui       $a0, 0x8000
/* 42A200 802A94E0 34840041 */  ori       $a0, $a0, 0x41
/* 42A204 802A94E4 00031FC3 */  sra       $v1, $v1, 0x1f
/* 42A208 802A94E8 00004810 */  mfhi      $t1
/* 42A20C 802A94EC 00094143 */  sra       $t0, $t1, 5
/* 42A210 802A94F0 01034023 */  subu      $t0, $t0, $v1
/* 42A214 802A94F4 00081600 */  sll       $v0, $t0, 0x18
/* 42A218 802A94F8 00021603 */  sra       $v0, $v0, 0x18
/* 42A21C 802A94FC 00023840 */  sll       $a3, $v0, 1
/* 42A220 802A9500 00E23821 */  addu      $a3, $a3, $v0
/* 42A224 802A9504 00073880 */  sll       $a3, $a3, 2
/* 42A228 802A9508 0C0526F9 */  jal       sfx_adjust_env_sound_params
/* 42A22C 802A950C A2680084 */   sb       $t0, 0x84($s3)
/* 42A230 802A9510 2A420050 */  slti      $v0, $s2, 0x50
/* 42A234 802A9514 10400007 */  beqz      $v0, .L802A9534
/* 42A238 802A9518 8E300004 */   lw       $s0, 4($s1)
/* 42A23C 802A951C 0C05122C */  jal       hud_element_get_script
/* 42A240 802A9520 0200202D */   daddu    $a0, $s0, $zero
/* 42A244 802A9524 3C058011 */  lui       $a1, %hi(HudScript_AButtonDown)
/* 42A248 802A9528 24A58B54 */  addiu     $a1, $a1, %lo(HudScript_AButtonDown)
/* 42A24C 802A952C 080AA551 */  j         .L802A9544
/* 42A250 802A9530 00000000 */   nop
.L802A9534:
/* 42A254 802A9534 0C05122C */  jal       hud_element_get_script
/* 42A258 802A9538 0200202D */   daddu    $a0, $s0, $zero
/* 42A25C 802A953C 3C058011 */  lui       $a1, %hi(HudScript_PressAButton)
/* 42A260 802A9540 24A58BBC */  addiu     $a1, $a1, %lo(HudScript_PressAButton)
.L802A9544:
/* 42A264 802A9544 10450003 */  beq       $v0, $a1, .L802A9554
/* 42A268 802A9548 00000000 */   nop
/* 42A26C 802A954C 0C0511FF */  jal       hud_element_set_script
/* 42A270 802A9550 0200202D */   daddu    $a0, $s0, $zero
.L802A9554:
/* 42A274 802A9554 86220054 */  lh        $v0, 0x54($s1)
/* 42A278 802A9558 96230054 */  lhu       $v1, 0x54($s1)
/* 42A27C 802A955C 1440002A */  bnez      $v0, .L802A9608
/* 42A280 802A9560 2462FFFF */   addiu    $v0, $v1, -1
/* 42A284 802A9564 86220044 */  lh        $v0, 0x44($s1)
/* 42A288 802A9568 10400002 */  beqz      $v0, .L802A9574
/* 42A28C 802A956C 2402FFFF */   addiu    $v0, $zero, -1
/* 42A290 802A9570 92620084 */  lbu       $v0, 0x84($s3)
.L802A9574:
/* 42A294 802A9574 A2620081 */  sb        $v0, 0x81($s3)
/* 42A298 802A9578 82220080 */  lb        $v0, 0x80($s1)
/* 42A29C 802A957C 2442FFFF */  addiu     $v0, $v0, -1
/* 42A2A0 802A9580 00021040 */  sll       $v0, $v0, 1
/* 42A2A4 802A9584 02221021 */  addu      $v0, $s1, $v0
/* 42A2A8 802A9588 94420074 */  lhu       $v0, 0x74($v0)
/* 42A2AC 802A958C 00021400 */  sll       $v0, $v0, 0x10
/* 42A2B0 802A9590 00021C03 */  sra       $v1, $v0, 0x10
/* 42A2B4 802A9594 000217C2 */  srl       $v0, $v0, 0x1f
/* 42A2B8 802A9598 00621021 */  addu      $v0, $v1, $v0
/* 42A2BC 802A959C 82630084 */  lb        $v1, 0x84($s3)
/* 42A2C0 802A95A0 00021043 */  sra       $v0, $v0, 1
/* 42A2C4 802A95A4 0043102A */  slt       $v0, $v0, $v1
/* 42A2C8 802A95A8 14400002 */  bnez      $v0, .L802A95B4
/* 42A2CC 802A95AC 24020001 */   addiu    $v0, $zero, 1
/* 42A2D0 802A95B0 2402FFFC */  addiu     $v0, $zero, -4
.L802A95B4:
/* 42A2D4 802A95B4 A2620086 */  sb        $v0, 0x86($s3)
/* 42A2D8 802A95B8 82630081 */  lb        $v1, 0x81($s3)
/* 42A2DC 802A95BC 24020064 */  addiu     $v0, $zero, 0x64
/* 42A2E0 802A95C0 14620003 */  bne       $v1, $v0, .L802A95D0
/* 42A2E4 802A95C4 00000000 */   nop
/* 42A2E8 802A95C8 0C09A458 */  jal       func_80269160
/* 42A2EC 802A95CC 00000000 */   nop
.L802A95D0:
/* 42A2F0 802A95D0 0C093EB1 */  jal       btl_set_popup_duration
/* 42A2F4 802A95D4 0000202D */   daddu    $a0, $zero, $zero
/* 42A2F8 802A95D8 3C048000 */  lui       $a0, 0x8000
/* 42A2FC 802A95DC 0C05271B */  jal       sfx_stop_sound
/* 42A300 802A95E0 34840041 */   ori      $a0, $a0, 0x41
/* 42A304 802A95E4 24020005 */  addiu     $v0, $zero, 5
/* 42A308 802A95E8 A6220054 */  sh        $v0, 0x54($s1)
/* 42A30C 802A95EC 2402000C */  addiu     $v0, $zero, 0xc
/* 42A310 802A95F0 080AA586 */  j         L802A9618_42A338
/* 42A314 802A95F4 A622004C */   sh       $v0, 0x4c($s1)
dlabel L802A95F8_42A318
/* 42A318 802A95F8 86220054 */  lh        $v0, 0x54($s1)
/* 42A31C 802A95FC 96230054 */  lhu       $v1, 0x54($s1)
/* 42A320 802A9600 10400003 */  beqz      $v0, .L802A9610
/* 42A324 802A9604 2462FFFF */   addiu    $v0, $v1, -1
.L802A9608:
/* 42A328 802A9608 080AA586 */  j         L802A9618_42A338
/* 42A32C 802A960C A6220054 */   sh       $v0, 0x54($s1)
.L802A9610:
/* 42A330 802A9610 0C09A327 */  jal       func_80268C9C
/* 42A334 802A9614 00000000 */   nop
dlabel L802A9618_42A338
/* 42A338 802A9618 8FBF0020 */  lw        $ra, 0x20($sp)
/* 42A33C 802A961C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 42A340 802A9620 8FB20018 */  lw        $s2, 0x18($sp)
/* 42A344 802A9624 8FB10014 */  lw        $s1, 0x14($sp)
/* 42A348 802A9628 8FB00010 */  lw        $s0, 0x10($sp)
/* 42A34C 802A962C 03E00008 */  jr        $ra
/* 42A350 802A9630 27BD0028 */   addiu    $sp, $sp, 0x28
