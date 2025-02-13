.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel jtbl_800988D8
.word .L8005033C_2B73C, .L800503C0_2B7C0, .L800503E4_2B7E4, .L8005045C_2B85C, .L80050470_2B870, .L800504A8_2B8A8

.section .text

glabel snd_BGMCmd_FF
/* 2B6F0 800502F0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 2B6F4 800502F4 AFB20018 */  sw        $s2, 0x18($sp)
/* 2B6F8 800502F8 0080902D */  daddu     $s2, $a0, $zero
/* 2B6FC 800502FC AFBF0020 */  sw        $ra, 0x20($sp)
/* 2B700 80050300 AFB3001C */  sw        $s3, 0x1c($sp)
/* 2B704 80050304 AFB10014 */  sw        $s1, 0x14($sp)
/* 2B708 80050308 AFB00010 */  sw        $s0, 0x10($sp)
/* 2B70C 8005030C 924200D4 */  lbu       $v0, 0xd4($s2)
/* 2B710 80050310 924300D5 */  lbu       $v1, 0xd5($s2)
/* 2B714 80050314 924600D6 */  lbu       $a2, 0xd6($s2)
/* 2B718 80050318 2444FFFF */  addiu     $a0, $v0, -1
/* 2B71C 8005031C 2C820006 */  sltiu     $v0, $a0, 6
/* 2B720 80050320 10400088 */  beqz      $v0, .L80050544
/* 2B724 80050324 00041080 */   sll      $v0, $a0, 2
/* 2B728 80050328 3C01800A */  lui       $at, %hi(jtbl_800988D8)
/* 2B72C 8005032C 00220821 */  addu      $at, $at, $v0
/* 2B730 80050330 8C2288D8 */  lw        $v0, %lo(jtbl_800988D8)($at)
/* 2B734 80050334 00400008 */  jr        $v0
/* 2B738 80050338 00000000 */   nop
.L8005033C_2B73C:
/* 2B73C 8005033C 2C620004 */  sltiu     $v0, $v1, 4
/* 2B740 80050340 10400080 */  beqz      $v0, .L80050544
/* 2B744 80050344 02431021 */   addu     $v0, $s2, $v1
/* 2B748 80050348 8043004C */  lb        $v1, 0x4c($v0)
/* 2B74C 8005034C 0460007D */  bltz      $v1, .L80050544
/* 2B750 80050350 9044004C */   lbu      $a0, 0x4c($v0)
/* 2B754 80050354 8E420000 */  lw        $v0, ($s2)
/* 2B758 80050358 10C00010 */  beqz      $a2, .L8005039C
/* 2B75C 8005035C A0440051 */   sb       $a0, 0x51($v0)
/* 2B760 80050360 30C7000F */  andi      $a3, $a2, 0xf
/* 2B764 80050364 00061102 */  srl       $v0, $a2, 4
/* 2B768 80050368 30420001 */  andi      $v0, $v0, 1
/* 2B76C 8005036C 8E430000 */  lw        $v1, ($s2)
/* 2B770 80050370 24450001 */  addiu     $a1, $v0, 1
/* 2B774 80050374 90620052 */  lbu       $v0, 0x52($v1)
/* 2B778 80050378 14470004 */  bne       $v0, $a3, .L8005038C
/* 2B77C 8005037C 00A0202D */   daddu    $a0, $a1, $zero
/* 2B780 80050380 90620053 */  lbu       $v0, 0x53($v1)
/* 2B784 80050384 1044006F */  beq       $v0, $a0, .L80050544
/* 2B788 80050388 00000000 */   nop
.L8005038C:
/* 2B78C 8005038C A0670052 */  sb        $a3, 0x52($v1)
/* 2B790 80050390 8E420000 */  lw        $v0, ($s2)
/* 2B794 80050394 080140EC */  j         .L800503B0
/* 2B798 80050398 A0450053 */   sb       $a1, 0x53($v0)
.L8005039C:
/* 2B79C 8005039C 8E430000 */  lw        $v1, ($s2)
/* 2B7A0 800503A0 90620053 */  lbu       $v0, 0x53($v1)
/* 2B7A4 800503A4 10400067 */  beqz      $v0, .L80050544
/* 2B7A8 800503A8 00000000 */   nop
/* 2B7AC 800503AC A0600053 */  sb        $zero, 0x53($v1)
.L800503B0:
/* 2B7B0 800503B0 8E430000 */  lw        $v1, ($s2)
/* 2B7B4 800503B4 24020001 */  addiu     $v0, $zero, 1
/* 2B7B8 800503B8 08014151 */  j         .L80050544
/* 2B7BC 800503BC A0620050 */   sb       $v0, 0x50($v1)
.L800503C0_2B7C0:
/* 2B7C0 800503C0 2465FFFF */  addiu     $a1, $v1, -1
/* 2B7C4 800503C4 2CA20008 */  sltiu     $v0, $a1, 8
/* 2B7C8 800503C8 5040005E */  beql      $v0, $zero, .L80050544
/* 2B7CC 800503CC A2400211 */   sb       $zero, 0x211($s2)
/* 2B7D0 800503D0 A2430211 */  sb        $v1, 0x211($s2)
/* 2B7D4 800503D4 0C013A11 */  jal       func_8004E844
/* 2B7D8 800503D8 0240202D */   daddu    $a0, $s2, $zero
/* 2B7DC 800503DC 08014151 */  j         .L80050544
/* 2B7E0 800503E0 00000000 */   nop
.L800503E4_2B7E4:
/* 2B7E4 800503E4 92500211 */  lbu       $s0, 0x211($s2)
/* 2B7E8 800503E8 2604FFFF */  addiu     $a0, $s0, -1
/* 2B7EC 800503EC 2C820008 */  sltiu     $v0, $a0, 8
/* 2B7F0 800503F0 10400054 */  beqz      $v0, .L80050544
/* 2B7F4 800503F4 0080802D */   daddu    $s0, $a0, $zero
/* 2B7F8 800503F8 02501021 */  addu      $v0, $s2, $s0
/* 2B7FC 800503FC 90440212 */  lbu       $a0, 0x212($v0)
/* 2B800 80050400 2C820008 */  sltiu     $v0, $a0, 8
/* 2B804 80050404 1040004F */  beqz      $v0, .L80050544
/* 2B808 80050408 2C620028 */   sltiu    $v0, $v1, 0x28
/* 2B80C 8005040C 14400005 */  bnez      $v0, .L80050424
/* 2B810 80050410 001010C0 */   sll      $v0, $s0, 3
/* 2B814 80050414 00501021 */  addu      $v0, $v0, $s0
/* 2B818 80050418 00441021 */  addu      $v0, $v0, $a0
/* 2B81C 8005041C 0801410F */  j         .L8005043C
/* 2B820 80050420 00021040 */   sll      $v0, $v0, 1
.L80050424:
/* 2B824 80050424 00501021 */  addu      $v0, $v0, $s0
/* 2B828 80050428 00441021 */  addu      $v0, $v0, $a0
/* 2B82C 8005042C 00021040 */  sll       $v0, $v0, 1
/* 2B830 80050430 3C018008 */  lui       $at, %hi(D_80078558)
/* 2B834 80050434 00230821 */  addu      $at, $at, $v1
/* 2B838 80050438 90238558 */  lbu       $v1, %lo(D_80078558)($at)
.L8005043C:
/* 2B83C 8005043C 02421021 */  addu      $v0, $s2, $v0
/* 2B840 80050440 00031A00 */  sll       $v1, $v1, 8
/* 2B844 80050444 00661821 */  addu      $v1, $v1, $a2
/* 2B848 80050448 A4430174 */  sh        $v1, 0x174($v0)
/* 2B84C 8005044C 02501821 */  addu      $v1, $s2, $s0
/* 2B850 80050450 24820001 */  addiu     $v0, $a0, 1
/* 2B854 80050454 08014151 */  j         .L80050544
/* 2B858 80050458 A0620212 */   sb       $v0, 0x212($v1)
.L8005045C_2B85C:
/* 2B85C 8005045C 2C620009 */  sltiu     $v0, $v1, 9
/* 2B860 80050460 50400038 */  beql      $v0, $zero, .L80050544
/* 2B864 80050464 A0A0004C */   sb       $zero, 0x4c($a1)
/* 2B868 80050468 08014151 */  j         .L80050544
/* 2B86C 8005046C A0A3004C */   sb       $v1, 0x4c($a1)
.L80050470_2B870:
/* 2B870 80050470 8E420004 */  lw        $v0, 4($s2)
/* 2B874 80050474 10400033 */  beqz      $v0, .L80050544
/* 2B878 80050478 0000802D */   daddu    $s0, $zero, $zero
/* 2B87C 8005047C 0040282D */  daddu     $a1, $v0, $zero
.L80050480:
/* 2B880 80050480 00A0202D */  daddu     $a0, $a1, $zero
/* 2B884 80050484 90820090 */  lbu       $v0, 0x90($a0)
/* 2B888 80050488 10400022 */  beqz      $v0, .L80050514
/* 2B88C 8005048C 00103080 */   sll      $a2, $s0, 2
/* 2B890 80050490 26100001 */  addiu     $s0, $s0, 1
/* 2B894 80050494 2E020004 */  sltiu     $v0, $s0, 4
/* 2B898 80050498 1440FFF9 */  bnez      $v0, .L80050480
/* 2B89C 8005049C 24850004 */   addiu    $a1, $a0, 4
/* 2B8A0 800504A0 08014151 */  j         .L80050544
/* 2B8A4 800504A4 00000000 */   nop
.L800504A8_2B8A8:
/* 2B8A8 800504A8 54600025 */  bnel      $v1, $zero, .L80050540
/* 2B8AC 800504AC A0A3004F */   sb       $v1, 0x4f($a1)
/* 2B8B0 800504B0 90A2004E */  lbu       $v0, 0x4e($a1)
/* 2B8B4 800504B4 10400023 */  beqz      $v0, .L80050544
/* 2B8B8 800504B8 0000802D */   daddu    $s0, $zero, $zero
/* 2B8BC 800504BC A0A0004E */  sb        $zero, 0x4e($a1)
/* 2B8C0 800504C0 2413007F */  addiu     $s3, $zero, 0x7f
/* 2B8C4 800504C4 2411025C */  addiu     $s1, $zero, 0x25c
.L800504C8:
/* 2B8C8 800504C8 92420171 */  lbu       $v0, 0x171($s2)
/* 2B8CC 800504CC 14530004 */  bne       $v0, $s3, .L800504E0
/* 2B8D0 800504D0 02512821 */   addu     $a1, $s2, $s1
/* 2B8D4 800504D4 90A2004F */  lbu       $v0, 0x4f($a1)
/* 2B8D8 800504D8 08014139 */  j         .L800504E4
/* 2B8DC 800504DC 00000000 */   nop
.L800504E0:
/* 2B8E0 800504E0 90A20050 */  lbu       $v0, 0x50($a1)
.L800504E4:
/* 2B8E4 800504E4 10400005 */  beqz      $v0, .L800504FC
/* 2B8E8 800504E8 0240202D */   daddu    $a0, $s2, $zero
/* 2B8EC 800504EC 0040302D */  daddu     $a2, $v0, $zero
/* 2B8F0 800504F0 24070048 */  addiu     $a3, $zero, 0x48
/* 2B8F4 800504F4 0C014222 */  jal       func_80050888
/* 2B8F8 800504F8 A0A0004E */   sb       $zero, 0x4e($a1)
.L800504FC:
/* 2B8FC 800504FC 26100001 */  addiu     $s0, $s0, 1
/* 2B900 80050500 2E020010 */  sltiu     $v0, $s0, 0x10
/* 2B904 80050504 1440FFF0 */  bnez      $v0, .L800504C8
/* 2B908 80050508 26310060 */   addiu    $s1, $s1, 0x60
/* 2B90C 8005050C 08014151 */  j         .L80050544
/* 2B910 80050510 00000000 */   nop
.L80050514:
/* 2B914 80050514 A0A30090 */  sb        $v1, 0x90($a1)
/* 2B918 80050518 9643002C */  lhu       $v1, 0x2c($s2)
/* 2B91C 8005051C 9642003C */  lhu       $v0, 0x3c($s2)
/* 2B920 80050520 00620018 */  mult      $v1, $v0
/* 2B924 80050524 8E430004 */  lw        $v1, 4($s2)
/* 2B928 80050528 00661821 */  addu      $v1, $v1, $a2
/* 2B92C 8005052C 00004012 */  mflo      $t0
/* 2B930 80050530 25027FFF */  addiu     $v0, $t0, 0x7fff
/* 2B934 80050534 000215C3 */  sra       $v0, $v0, 0x17
/* 2B938 80050538 08014151 */  j         .L80050544
/* 2B93C 8005053C A0620093 */   sb       $v0, 0x93($v1)
.L80050540:
/* 2B940 80050540 A0A60050 */  sb        $a2, 0x50($a1)
.L80050544:
/* 2B944 80050544 8FBF0020 */  lw        $ra, 0x20($sp)
/* 2B948 80050548 8FB3001C */  lw        $s3, 0x1c($sp)
/* 2B94C 8005054C 8FB20018 */  lw        $s2, 0x18($sp)
/* 2B950 80050550 8FB10014 */  lw        $s1, 0x14($sp)
/* 2B954 80050554 8FB00010 */  lw        $s0, 0x10($sp)
/* 2B958 80050558 03E00008 */  jr        $ra
/* 2B95C 8005055C 27BD0028 */   addiu    $sp, $sp, 0x28
