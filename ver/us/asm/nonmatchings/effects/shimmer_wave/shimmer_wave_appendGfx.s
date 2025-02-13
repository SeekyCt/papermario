.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel shimmer_wave_appendGfx
/* 376A40 E00745E0 27BDFF10 */  addiu     $sp, $sp, -0xf0
/* 376A44 E00745E4 3C06DB06 */  lui       $a2, 0xdb06
/* 376A48 E00745E8 34C60024 */  ori       $a2, $a2, 0x24
/* 376A4C E00745EC AFA400F0 */  sw        $a0, 0xf0($sp)
/* 376A50 E00745F0 27A40020 */  addiu     $a0, $sp, 0x20
/* 376A54 E00745F4 AFB100B4 */  sw        $s1, 0xb4($sp)
/* 376A58 E00745F8 3C110001 */  lui       $s1, 1
/* 376A5C E00745FC 36311630 */  ori       $s1, $s1, 0x1630
/* 376A60 E0074600 AFB500C4 */  sw        $s5, 0xc4($sp)
/* 376A64 E0074604 3C15800A */  lui       $s5, %hi(gMasterGfxPos)
/* 376A68 E0074608 26B5A66C */  addiu     $s5, $s5, %lo(gMasterGfxPos)
/* 376A6C E007460C AFBF00D4 */  sw        $ra, 0xd4($sp)
/* 376A70 E0074610 AFBE00D0 */  sw        $fp, 0xd0($sp)
/* 376A74 E0074614 AFB700CC */  sw        $s7, 0xcc($sp)
/* 376A78 E0074618 AFB600C8 */  sw        $s6, 0xc8($sp)
/* 376A7C E007461C AFB400C0 */  sw        $s4, 0xc0($sp)
/* 376A80 E0074620 AFB300BC */  sw        $s3, 0xbc($sp)
/* 376A84 E0074624 AFB200B8 */  sw        $s2, 0xb8($sp)
/* 376A88 E0074628 AFB000B0 */  sw        $s0, 0xb0($sp)
/* 376A8C E007462C F7B800E8 */  sdc1      $f24, 0xe8($sp)
/* 376A90 E0074630 F7B600E0 */  sdc1      $f22, 0xe0($sp)
/* 376A94 E0074634 F7B400D8 */  sdc1      $f20, 0xd8($sp)
/* 376A98 E0074638 8EA50000 */  lw        $a1, ($s5)
/* 376A9C E007463C 8FAA00F0 */  lw        $t2, 0xf0($sp)
/* 376AA0 E0074640 00A0182D */  daddu     $v1, $a1, $zero
/* 376AA4 E0074644 8D52000C */  lw        $s2, 0xc($t2)
/* 376AA8 E0074648 24A50008 */  addiu     $a1, $a1, 8
/* 376AAC E007464C AEA50000 */  sw        $a1, ($s5)
/* 376AB0 E0074650 8E4A0050 */  lw        $t2, 0x50($s2)
/* 376AB4 E0074654 C642004C */  lwc1      $f2, 0x4c($s2)
/* 376AB8 E0074658 468010A0 */  cvt.s.w   $f2, $f2
/* 376ABC E007465C AFAA00A0 */  sw        $t2, 0xa0($sp)
/* 376AC0 E0074660 8E4A0054 */  lw        $t2, 0x54($s2)
/* 376AC4 E0074664 24130001 */  addiu     $s3, $zero, 1
/* 376AC8 E0074668 AFAA00A4 */  sw        $t2, 0xa4($sp)
/* 376ACC E007466C 8E4A0058 */  lw        $t2, 0x58($s2)
/* 376AD0 E0074670 3C02E700 */  lui       $v0, 0xe700
/* 376AD4 E0074674 AFAA00A8 */  sw        $t2, 0xa8($sp)
/* 376AD8 E0074678 AC620000 */  sw        $v0, ($v1)
/* 376ADC E007467C AC600004 */  sw        $zero, 4($v1)
/* 376AE0 E0074680 ACA60000 */  sw        $a2, ($a1)
/* 376AE4 E0074684 8FAA00F0 */  lw        $t2, 0xf0($sp)
/* 376AE8 E0074688 3C01437F */  lui       $at, 0x437f
/* 376AEC E007468C 44810000 */  mtc1      $at, $f0
/* 376AF0 E0074690 8D430010 */  lw        $v1, 0x10($t2)
/* 376AF4 E0074694 24A20008 */  addiu     $v0, $a1, 8
/* 376AF8 E0074698 AEA20000 */  sw        $v0, ($s5)
/* 376AFC E007469C 8C62001C */  lw        $v0, 0x1c($v1)
/* 376B00 E00746A0 3C038000 */  lui       $v1, 0x8000
/* 376B04 E00746A4 00431021 */  addu      $v0, $v0, $v1
/* 376B08 E00746A8 ACA20004 */  sw        $v0, 4($a1)
/* 376B0C E00746AC 8E450004 */  lw        $a1, 4($s2)
/* 376B10 E00746B0 8E460008 */  lw        $a2, 8($s2)
/* 376B14 E00746B4 8E47000C */  lw        $a3, 0xc($s2)
/* 376B18 E00746B8 0C080108 */  jal       shim_guTranslateF
/* 376B1C E00746BC 46001503 */   div.s    $f20, $f2, $f0
/* 376B20 E00746C0 27B00060 */  addiu     $s0, $sp, 0x60
/* 376B24 E00746C4 8E450060 */  lw        $a1, 0x60($s2)
/* 376B28 E00746C8 0200202D */  daddu     $a0, $s0, $zero
/* 376B2C E00746CC 00A0302D */  daddu     $a2, $a1, $zero
/* 376B30 E00746D0 0C080110 */  jal       shim_guScaleF
/* 376B34 E00746D4 00A0382D */   daddu    $a3, $a1, $zero
/* 376B38 E00746D8 0200202D */  daddu     $a0, $s0, $zero
/* 376B3C E00746DC 27A50020 */  addiu     $a1, $sp, 0x20
/* 376B40 E00746E0 0C080114 */  jal       shim_guMtxCatF
/* 376B44 E00746E4 00A0302D */   daddu    $a2, $a1, $zero
/* 376B48 E00746E8 27A40020 */  addiu     $a0, $sp, 0x20
/* 376B4C E00746EC 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 376B50 E00746F0 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 376B54 E00746F4 3C16800A */  lui       $s6, %hi(gDisplayContext)
/* 376B58 E00746F8 26D6A674 */  addiu     $s6, $s6, %lo(gDisplayContext)
/* 376B5C E00746FC 96050000 */  lhu       $a1, ($s0)
/* 376B60 E0074700 8EC20000 */  lw        $v0, ($s6)
/* 376B64 E0074704 00052980 */  sll       $a1, $a1, 6
/* 376B68 E0074708 00B12821 */  addu      $a1, $a1, $s1
/* 376B6C E007470C 0C080118 */  jal       shim_guMtxF2L
/* 376B70 E0074710 00452821 */   addu     $a1, $v0, $a1
/* 376B74 E0074714 3C03DA38 */  lui       $v1, 0xda38
/* 376B78 E0074718 34630002 */  ori       $v1, $v1, 2
/* 376B7C E007471C 8EA40000 */  lw        $a0, ($s5)
/* 376B80 E0074720 96020000 */  lhu       $v0, ($s0)
/* 376B84 E0074724 0080282D */  daddu     $a1, $a0, $zero
/* 376B88 E0074728 24840008 */  addiu     $a0, $a0, 8
/* 376B8C E007472C AEA40000 */  sw        $a0, ($s5)
/* 376B90 E0074730 ACA30000 */  sw        $v1, ($a1)
/* 376B94 E0074734 00531821 */  addu      $v1, $v0, $s3
/* 376B98 E0074738 3042FFFF */  andi      $v0, $v0, 0xffff
/* 376B9C E007473C 00021180 */  sll       $v0, $v0, 6
/* 376BA0 E0074740 00511021 */  addu      $v0, $v0, $s1
/* 376BA4 E0074744 A6030000 */  sh        $v1, ($s0)
/* 376BA8 E0074748 8EC30000 */  lw        $v1, ($s6)
/* 376BAC E007474C 24870010 */  addiu     $a3, $a0, 0x10
/* 376BB0 E0074750 00621821 */  addu      $v1, $v1, $v0
/* 376BB4 E0074754 24820008 */  addiu     $v0, $a0, 8
/* 376BB8 E0074758 ACA30004 */  sw        $v1, 4($a1)
/* 376BBC E007475C AEA20000 */  sw        $v0, ($s5)
/* 376BC0 E0074760 3C02FB00 */  lui       $v0, 0xfb00
/* 376BC4 E0074764 AC820000 */  sw        $v0, ($a0)
/* 376BC8 E0074768 92430043 */  lbu       $v1, 0x43($s2)
/* 376BCC E007476C 92450047 */  lbu       $a1, 0x47($s2)
/* 376BD0 E0074770 9246004B */  lbu       $a2, 0x4b($s2)
/* 376BD4 E0074774 9248005F */  lbu       $t0, 0x5f($s2)
/* 376BD8 E0074778 3C02DE00 */  lui       $v0, 0xde00
/* 376BDC E007477C AEA70000 */  sw        $a3, ($s5)
/* 376BE0 E0074780 AC820008 */  sw        $v0, 8($a0)
/* 376BE4 E0074784 3C020900 */  lui       $v0, 0x900
/* 376BE8 E0074788 24420F20 */  addiu     $v0, $v0, 0xf20
/* 376BEC E007478C AC82000C */  sw        $v0, 0xc($a0)
/* 376BF0 E0074790 24820018 */  addiu     $v0, $a0, 0x18
/* 376BF4 E0074794 AEA20000 */  sw        $v0, ($s5)
/* 376BF8 E0074798 00031E00 */  sll       $v1, $v1, 0x18
/* 376BFC E007479C 00052C00 */  sll       $a1, $a1, 0x10
/* 376C00 E00747A0 00651825 */  or        $v1, $v1, $a1
/* 376C04 E00747A4 00063200 */  sll       $a2, $a2, 8
/* 376C08 E00747A8 00661825 */  or        $v1, $v1, $a2
/* 376C0C E00747AC 00681825 */  or        $v1, $v1, $t0
/* 376C10 E00747B0 AC830004 */  sw        $v1, 4($a0)
/* 376C14 E00747B4 8FAA00F0 */  lw        $t2, 0xf0($sp)
/* 376C18 E00747B8 00E0A02D */  daddu     $s4, $a3, $zero
/* 376C1C E00747BC 8D420008 */  lw        $v0, 8($t2)
/* 376C20 E00747C0 0262102A */  slt       $v0, $s3, $v0
/* 376C24 E00747C4 1040006E */  beqz      $v0, .LE0074980
/* 376C28 E00747C8 2652006C */   addiu    $s2, $s2, 0x6c
/* 376C2C E00747CC 02C0F02D */  daddu     $fp, $s6, $zero
/* 376C30 E00747D0 0200B82D */  daddu     $s7, $s0, $zero
/* 376C34 E00747D4 3C160001 */  lui       $s6, 1
/* 376C38 E00747D8 36D61630 */  ori       $s6, $s6, 0x1630
/* 376C3C E00747DC 02A0882D */  daddu     $s1, $s5, $zero
/* 376C40 E00747E0 2650004C */  addiu     $s0, $s2, 0x4c
/* 376C44 E00747E4 8FAA00A0 */  lw        $t2, 0xa0($sp)
/* 376C48 E00747E8 4480C000 */  mtc1      $zero, $f24
/* 376C4C E00747EC 000A1600 */  sll       $v0, $t2, 0x18
/* 376C50 E00747F0 8FAA00A4 */  lw        $t2, 0xa4($sp)
/* 376C54 E00747F4 3C014F00 */  lui       $at, 0x4f00
/* 376C58 E00747F8 4481B000 */  mtc1      $at, $f22
/* 376C5C E00747FC 314300FF */  andi      $v1, $t2, 0xff
/* 376C60 E0074800 00031C00 */  sll       $v1, $v1, 0x10
/* 376C64 E0074804 8FAA00A8 */  lw        $t2, 0xa8($sp)
/* 376C68 E0074808 00431025 */  or        $v0, $v0, $v1
/* 376C6C E007480C 314300FF */  andi      $v1, $t2, 0xff
/* 376C70 E0074810 00031A00 */  sll       $v1, $v1, 8
/* 376C74 E0074814 0043A825 */  or        $s5, $v0, $v1
.LE0074818:
/* 376C78 E0074818 8E02FFE4 */  lw        $v0, -0x1c($s0)
/* 376C7C E007481C 04400052 */  bltz      $v0, .LE0074968
/* 376C80 E0074820 00000000 */   nop
/* 376C84 E0074824 C6000014 */  lwc1      $f0, 0x14($s0)
/* 376C88 E0074828 46140002 */  mul.s     $f0, $f0, $f20
/* 376C8C E007482C 00000000 */  nop
/* 376C90 E0074830 4405C000 */  mfc1      $a1, $f24
/* 376C94 E0074834 4406C000 */  mfc1      $a2, $f24
/* 376C98 E0074838 E7A00010 */  swc1      $f0, 0x10($sp)
/* 376C9C E007483C C600FFB8 */  lwc1      $f0, -0x48($s0)
/* 376CA0 E0074840 E7A00014 */  swc1      $f0, 0x14($sp)
/* 376CA4 E0074844 C600FFBC */  lwc1      $f0, -0x44($s0)
/* 376CA8 E0074848 E7A00018 */  swc1      $f0, 0x18($sp)
/* 376CAC E007484C C600FFC0 */  lwc1      $f0, -0x40($s0)
/* 376CB0 E0074850 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 376CB4 E0074854 8E07FFE8 */  lw        $a3, -0x18($s0)
/* 376CB8 E0074858 0C080180 */  jal       shim_guPositionF
/* 376CBC E007485C 27A40020 */   addiu    $a0, $sp, 0x20
/* 376CC0 E0074860 27A40020 */  addiu     $a0, $sp, 0x20
/* 376CC4 E0074864 96E50000 */  lhu       $a1, ($s7)
/* 376CC8 E0074868 8FC20000 */  lw        $v0, ($fp)
/* 376CCC E007486C 00052980 */  sll       $a1, $a1, 6
/* 376CD0 E0074870 00B62821 */  addu      $a1, $a1, $s6
/* 376CD4 E0074874 0C080118 */  jal       shim_guMtxF2L
/* 376CD8 E0074878 00452821 */   addu     $a1, $v0, $a1
/* 376CDC E007487C 8E240000 */  lw        $a0, ($s1)
/* 376CE0 E0074880 0080302D */  daddu     $a2, $a0, $zero
/* 376CE4 E0074884 24840008 */  addiu     $a0, $a0, 8
/* 376CE8 E0074888 AE240000 */  sw        $a0, ($s1)
/* 376CEC E007488C 96E50000 */  lhu       $a1, ($s7)
/* 376CF0 E0074890 3C02DA38 */  lui       $v0, 0xda38
/* 376CF4 E0074894 ACC20000 */  sw        $v0, ($a2)
/* 376CF8 E0074898 8FC30000 */  lw        $v1, ($fp)
/* 376CFC E007489C 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 376D00 E00748A0 00021180 */  sll       $v0, $v0, 6
/* 376D04 E00748A4 00561021 */  addu      $v0, $v0, $s6
/* 376D08 E00748A8 00621821 */  addu      $v1, $v1, $v0
/* 376D0C E00748AC 3C02FA00 */  lui       $v0, 0xfa00
/* 376D10 E00748B0 24A50001 */  addiu     $a1, $a1, 1
/* 376D14 E00748B4 ACC30004 */  sw        $v1, 4($a2)
/* 376D18 E00748B8 AC820000 */  sw        $v0, ($a0)
/* 376D1C E00748BC C6000000 */  lwc1      $f0, ($s0)
/* 376D20 E00748C0 46800020 */  cvt.s.w   $f0, $f0
/* 376D24 E00748C4 46140002 */  mul.s     $f0, $f0, $f20
/* 376D28 E00748C8 00000000 */  nop
/* 376D2C E00748CC 24820008 */  addiu     $v0, $a0, 8
/* 376D30 E00748D0 24840004 */  addiu     $a0, $a0, 4
/* 376D34 E00748D4 A6E50000 */  sh        $a1, ($s7)
/* 376D38 E00748D8 4600B03E */  c.le.s    $f22, $f0
/* 376D3C E00748DC 00000000 */  nop
/* 376D40 E00748E0 45010005 */  bc1t      .LE00748F8
/* 376D44 E00748E4 AE220000 */   sw       $v0, ($s1)
/* 376D48 E00748E8 4600010D */  trunc.w.s $f4, $f0
/* 376D4C E00748EC 44052000 */  mfc1      $a1, $f4
/* 376D50 E00748F0 0801D245 */  j         .LE0074914
/* 376D54 E00748F4 3C06D838 */   lui      $a2, 0xd838
.LE00748F8:
/* 376D58 E00748F8 46160001 */  sub.s     $f0, $f0, $f22
/* 376D5C E00748FC 3C028000 */  lui       $v0, 0x8000
/* 376D60 E0074900 4600010D */  trunc.w.s $f4, $f0
/* 376D64 E0074904 44052000 */  mfc1      $a1, $f4
/* 376D68 E0074908 00000000 */  nop
/* 376D6C E007490C 00A22825 */  or        $a1, $a1, $v0
/* 376D70 E0074910 3C06D838 */  lui       $a2, 0xd838
.LE0074914:
/* 376D74 E0074914 34C60002 */  ori       $a2, $a2, 2
/* 376D78 E0074918 30A200FF */  andi      $v0, $a1, 0xff
/* 376D7C E007491C 8E230000 */  lw        $v1, ($s1)
/* 376D80 E0074920 02A21025 */  or        $v0, $s5, $v0
/* 376D84 E0074924 AC820000 */  sw        $v0, ($a0)
/* 376D88 E0074928 3C02DE00 */  lui       $v0, 0xde00
/* 376D8C E007492C 0060282D */  daddu     $a1, $v1, $zero
/* 376D90 E0074930 24630008 */  addiu     $v1, $v1, 8
/* 376D94 E0074934 AE230000 */  sw        $v1, ($s1)
/* 376D98 E0074938 ACA20000 */  sw        $v0, ($a1)
/* 376D9C E007493C 32620007 */  andi      $v0, $s3, 7
/* 376DA0 E0074940 00021080 */  sll       $v0, $v0, 2
/* 376DA4 E0074944 3C04E007 */  lui       $a0, %hi(D_E0074B60)
/* 376DA8 E0074948 00822021 */  addu      $a0, $a0, $v0
/* 376DAC E007494C 8C844B60 */  lw        $a0, %lo(D_E0074B60)($a0)
/* 376DB0 E0074950 24620008 */  addiu     $v0, $v1, 8
/* 376DB4 E0074954 AE220000 */  sw        $v0, ($s1)
/* 376DB8 E0074958 24020040 */  addiu     $v0, $zero, 0x40
/* 376DBC E007495C ACA40004 */  sw        $a0, 4($a1)
/* 376DC0 E0074960 AC660000 */  sw        $a2, ($v1)
/* 376DC4 E0074964 AC620004 */  sw        $v0, 4($v1)
.LE0074968:
/* 376DC8 E0074968 8FAA00F0 */  lw        $t2, 0xf0($sp)
/* 376DCC E007496C 26730001 */  addiu     $s3, $s3, 1
/* 376DD0 E0074970 8D420008 */  lw        $v0, 8($t2)
/* 376DD4 E0074974 0262102A */  slt       $v0, $s3, $v0
/* 376DD8 E0074978 1440FFA7 */  bnez      $v0, .LE0074818
/* 376DDC E007497C 2610006C */   addiu    $s0, $s0, 0x6c
.LE0074980:
/* 376DE0 E0074980 27A40020 */  addiu     $a0, $sp, 0x20
/* 376DE4 E0074984 3C150001 */  lui       $s5, 1
/* 376DE8 E0074988 36B51630 */  ori       $s5, $s5, 0x1630
/* 376DEC E007498C 3C1ED838 */  lui       $fp, 0xd838
/* 376DF0 E0074990 37DE0002 */  ori       $fp, $fp, 2
/* 376DF4 E0074994 3C10800A */  lui       $s0, %hi(gMasterGfxPos)
/* 376DF8 E0074998 2610A66C */  addiu     $s0, $s0, %lo(gMasterGfxPos)
/* 376DFC E007499C 3C02DF00 */  lui       $v0, 0xdf00
/* 376E00 E00749A0 3C16DE00 */  lui       $s6, 0xde00
/* 376E04 E00749A4 8E030000 */  lw        $v1, ($s0)
/* 376E08 E00749A8 3C0542F0 */  lui       $a1, 0x42f0
/* 376E0C E00749AC 4480A000 */  mtc1      $zero, $f20
/* 376E10 E00749B0 3C013F80 */  lui       $at, 0x3f80
/* 376E14 E00749B4 4481B000 */  mtc1      $at, $f22
/* 376E18 E00749B8 0060402D */  daddu     $t0, $v1, $zero
/* 376E1C E00749BC 4406A000 */  mfc1      $a2, $f20
/* 376E20 E00749C0 4407B000 */  mfc1      $a3, $f22
/* 376E24 E00749C4 24630008 */  addiu     $v1, $v1, 8
/* 376E28 E00749C8 AE030000 */  sw        $v1, ($s0)
/* 376E2C E00749CC AD020000 */  sw        $v0, ($t0)
/* 376E30 E00749D0 3C02DE01 */  lui       $v0, 0xde01
/* 376E34 E00749D4 AD000004 */  sw        $zero, 4($t0)
/* 376E38 E00749D8 AE820000 */  sw        $v0, ($s4)
/* 376E3C E00749DC 24620008 */  addiu     $v0, $v1, 8
/* 376E40 E00749E0 AE830004 */  sw        $v1, 4($s4)
/* 376E44 E00749E4 26940008 */  addiu     $s4, $s4, 8
/* 376E48 E00749E8 AE020000 */  sw        $v0, ($s0)
/* 376E4C E00749EC AC760000 */  sw        $s6, ($v1)
/* 376E50 E00749F0 AC740004 */  sw        $s4, 4($v1)
/* 376E54 E00749F4 0C080104 */  jal       shim_guRotateF
/* 376E58 E00749F8 E7B40010 */   swc1     $f20, 0x10($sp)
/* 376E5C E00749FC 27A40020 */  addiu     $a0, $sp, 0x20
/* 376E60 E0074A00 3C118007 */  lui       $s1, %hi(gMatrixListPos)
/* 376E64 E0074A04 263141F0 */  addiu     $s1, $s1, %lo(gMatrixListPos)
/* 376E68 E0074A08 3C13800A */  lui       $s3, %hi(gDisplayContext)
/* 376E6C E0074A0C 2673A674 */  addiu     $s3, $s3, %lo(gDisplayContext)
/* 376E70 E0074A10 96250000 */  lhu       $a1, ($s1)
/* 376E74 E0074A14 8E620000 */  lw        $v0, ($s3)
/* 376E78 E0074A18 00052980 */  sll       $a1, $a1, 6
/* 376E7C E0074A1C 00B52821 */  addu      $a1, $a1, $s5
/* 376E80 E0074A20 0C080118 */  jal       shim_guMtxF2L
/* 376E84 E0074A24 00452821 */   addu     $a1, $v0, $a1
/* 376E88 E0074A28 27A40020 */  addiu     $a0, $sp, 0x20
/* 376E8C E0074A2C 3C17DA38 */  lui       $s7, 0xda38
/* 376E90 E0074A30 8E080000 */  lw        $t0, ($s0)
/* 376E94 E0074A34 3C05C2F0 */  lui       $a1, 0xc2f0
/* 376E98 E0074A38 4406A000 */  mfc1      $a2, $f20
/* 376E9C E0074A3C 4407B000 */  mfc1      $a3, $f22
/* 376EA0 E0074A40 0100482D */  daddu     $t1, $t0, $zero
/* 376EA4 E0074A44 25080008 */  addiu     $t0, $t0, 8
/* 376EA8 E0074A48 AE080000 */  sw        $t0, ($s0)
/* 376EAC E0074A4C 96220000 */  lhu       $v0, ($s1)
/* 376EB0 E0074A50 24120040 */  addiu     $s2, $zero, 0x40
/* 376EB4 E0074A54 AD370000 */  sw        $s7, ($t1)
/* 376EB8 E0074A58 24430001 */  addiu     $v1, $v0, 1
/* 376EBC E0074A5C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 376EC0 E0074A60 00021180 */  sll       $v0, $v0, 6
/* 376EC4 E0074A64 A6230000 */  sh        $v1, ($s1)
/* 376EC8 E0074A68 8E630000 */  lw        $v1, ($s3)
/* 376ECC E0074A6C 00551021 */  addu      $v0, $v0, $s5
/* 376ED0 E0074A70 00621821 */  addu      $v1, $v1, $v0
/* 376ED4 E0074A74 25020008 */  addiu     $v0, $t0, 8
/* 376ED8 E0074A78 AD230004 */  sw        $v1, 4($t1)
/* 376EDC E0074A7C AE020000 */  sw        $v0, ($s0)
/* 376EE0 E0074A80 25020010 */  addiu     $v0, $t0, 0x10
/* 376EE4 E0074A84 AD160000 */  sw        $s6, ($t0)
/* 376EE8 E0074A88 AD140004 */  sw        $s4, 4($t0)
/* 376EEC E0074A8C AE020000 */  sw        $v0, ($s0)
/* 376EF0 E0074A90 AD1E0008 */  sw        $fp, 8($t0)
/* 376EF4 E0074A94 AD12000C */  sw        $s2, 0xc($t0)
/* 376EF8 E0074A98 0C080104 */  jal       shim_guRotateF
/* 376EFC E0074A9C AFA60010 */   sw       $a2, 0x10($sp)
/* 376F00 E0074AA0 27A40020 */  addiu     $a0, $sp, 0x20
/* 376F04 E0074AA4 96250000 */  lhu       $a1, ($s1)
/* 376F08 E0074AA8 8E620000 */  lw        $v0, ($s3)
/* 376F0C E0074AAC 00052980 */  sll       $a1, $a1, 6
/* 376F10 E0074AB0 00B52821 */  addu      $a1, $a1, $s5
/* 376F14 E0074AB4 0C080118 */  jal       shim_guMtxF2L
/* 376F18 E0074AB8 00452821 */   addu     $a1, $v0, $a1
/* 376F1C E0074ABC 8E040000 */  lw        $a0, ($s0)
/* 376F20 E0074AC0 96220000 */  lhu       $v0, ($s1)
/* 376F24 E0074AC4 0080282D */  daddu     $a1, $a0, $zero
/* 376F28 E0074AC8 24840008 */  addiu     $a0, $a0, 8
/* 376F2C E0074ACC 24430001 */  addiu     $v1, $v0, 1
/* 376F30 E0074AD0 3042FFFF */  andi      $v0, $v0, 0xffff
/* 376F34 E0074AD4 00021180 */  sll       $v0, $v0, 6
/* 376F38 E0074AD8 AE040000 */  sw        $a0, ($s0)
/* 376F3C E0074ADC ACB70000 */  sw        $s7, ($a1)
/* 376F40 E0074AE0 A6230000 */  sh        $v1, ($s1)
/* 376F44 E0074AE4 8E630000 */  lw        $v1, ($s3)
/* 376F48 E0074AE8 00551021 */  addu      $v0, $v0, $s5
/* 376F4C E0074AEC 00621821 */  addu      $v1, $v1, $v0
/* 376F50 E0074AF0 24820008 */  addiu     $v0, $a0, 8
/* 376F54 E0074AF4 ACA30004 */  sw        $v1, 4($a1)
/* 376F58 E0074AF8 AE020000 */  sw        $v0, ($s0)
/* 376F5C E0074AFC 24820010 */  addiu     $v0, $a0, 0x10
/* 376F60 E0074B00 AC960000 */  sw        $s6, ($a0)
/* 376F64 E0074B04 AC940004 */  sw        $s4, 4($a0)
/* 376F68 E0074B08 AE020000 */  sw        $v0, ($s0)
/* 376F6C E0074B0C 24820018 */  addiu     $v0, $a0, 0x18
/* 376F70 E0074B10 AC9E0008 */  sw        $fp, 8($a0)
/* 376F74 E0074B14 AC92000C */  sw        $s2, 0xc($a0)
/* 376F78 E0074B18 AE020000 */  sw        $v0, ($s0)
/* 376F7C E0074B1C AC9E0010 */  sw        $fp, 0x10($a0)
/* 376F80 E0074B20 AC920014 */  sw        $s2, 0x14($a0)
/* 376F84 E0074B24 8FBF00D4 */  lw        $ra, 0xd4($sp)
/* 376F88 E0074B28 8FBE00D0 */  lw        $fp, 0xd0($sp)
/* 376F8C E0074B2C 8FB700CC */  lw        $s7, 0xcc($sp)
/* 376F90 E0074B30 8FB600C8 */  lw        $s6, 0xc8($sp)
/* 376F94 E0074B34 8FB500C4 */  lw        $s5, 0xc4($sp)
/* 376F98 E0074B38 8FB400C0 */  lw        $s4, 0xc0($sp)
/* 376F9C E0074B3C 8FB300BC */  lw        $s3, 0xbc($sp)
/* 376FA0 E0074B40 8FB200B8 */  lw        $s2, 0xb8($sp)
/* 376FA4 E0074B44 8FB100B4 */  lw        $s1, 0xb4($sp)
/* 376FA8 E0074B48 8FB000B0 */  lw        $s0, 0xb0($sp)
/* 376FAC E0074B4C D7B800E8 */  ldc1      $f24, 0xe8($sp)
/* 376FB0 E0074B50 D7B600E0 */  ldc1      $f22, 0xe0($sp)
/* 376FB4 E0074B54 D7B400D8 */  ldc1      $f20, 0xd8($sp)
/* 376FB8 E0074B58 03E00008 */  jr        $ra
/* 376FBC E0074B5C 27BD00F0 */   addiu    $sp, $sp, 0xf0
