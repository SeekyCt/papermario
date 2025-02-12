.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

dlabel D_80224920_4EF060
.double 0.2, 0.0

.section .text

glabel b_area_isk_part_1_ChompChainUpdate
/* 4E2C0C 802184CC 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 4E2C10 802184D0 AFBF0038 */  sw        $ra, 0x38($sp)
/* 4E2C14 802184D4 AFB50034 */  sw        $s5, 0x34($sp)
/* 4E2C18 802184D8 AFB40030 */  sw        $s4, 0x30($sp)
/* 4E2C1C 802184DC AFB3002C */  sw        $s3, 0x2c($sp)
/* 4E2C20 802184E0 AFB20028 */  sw        $s2, 0x28($sp)
/* 4E2C24 802184E4 AFB10024 */  sw        $s1, 0x24($sp)
/* 4E2C28 802184E8 AFB00020 */  sw        $s0, 0x20($sp)
/* 4E2C2C 802184EC F7BC0060 */  sdc1      $f28, 0x60($sp)
/* 4E2C30 802184F0 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 4E2C34 802184F4 F7B80050 */  sdc1      $f24, 0x50($sp)
/* 4E2C38 802184F8 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 4E2C3C 802184FC F7B40040 */  sdc1      $f20, 0x40($sp)
/* 4E2C40 80218500 0C09A75B */  jal       get_actor
/* 4E2C44 80218504 8C840148 */   lw       $a0, 0x148($a0)
/* 4E2C48 80218508 0040882D */  daddu     $s1, $v0, $zero
/* 4E2C4C 8021850C 16200003 */  bnez      $s1, .L8021851C
/* 4E2C50 80218510 2402000A */   addiu    $v0, $zero, 0xa
/* 4E2C54 80218514 0808621E */  j         .L80218878
/* 4E2C58 80218518 0000102D */   daddu    $v0, $zero, $zero
.L8021851C:
/* 4E2C5C 8021851C 82230210 */  lb        $v1, 0x210($s1)
/* 4E2C60 80218520 8E320078 */  lw        $s2, 0x78($s1)
/* 4E2C64 80218524 1462000D */  bne       $v1, $v0, .L8021855C
/* 4E2C68 80218528 24150003 */   addiu    $s5, $zero, 3
/* 4E2C6C 8021852C C6220144 */  lwc1      $f2, 0x144($s1)
/* 4E2C70 80218530 3C014018 */  lui       $at, 0x4018
/* 4E2C74 80218534 44810800 */  mtc1      $at, $f1
/* 4E2C78 80218538 44800000 */  mtc1      $zero, $f0
/* 4E2C7C 8021853C 460010A1 */  cvt.d.s   $f2, $f2
/* 4E2C80 80218540 46201080 */  add.d     $f2, $f2, $f0
/* 4E2C84 80218544 C6200148 */  lwc1      $f0, 0x148($s1)
/* 4E2C88 80218548 3C014004 */  lui       $at, 0x4004
/* 4E2C8C 8021854C 44812800 */  mtc1      $at, $f5
/* 4E2C90 80218550 44802000 */  mtc1      $zero, $f4
/* 4E2C94 80218554 08086162 */  j         .L80218588
/* 4E2C98 80218558 46000021 */   cvt.d.s  $f0, $f0
.L8021855C:
/* 4E2C9C 8021855C C6220144 */  lwc1      $f2, 0x144($s1)
/* 4E2CA0 80218560 3C014028 */  lui       $at, 0x4028
/* 4E2CA4 80218564 44810800 */  mtc1      $at, $f1
/* 4E2CA8 80218568 44800000 */  mtc1      $zero, $f0
/* 4E2CAC 8021856C 460010A1 */  cvt.d.s   $f2, $f2
/* 4E2CB0 80218570 46201080 */  add.d     $f2, $f2, $f0
/* 4E2CB4 80218574 C6200148 */  lwc1      $f0, 0x148($s1)
/* 4E2CB8 80218578 3C014014 */  lui       $at, 0x4014
/* 4E2CBC 8021857C 44812800 */  mtc1      $at, $f5
/* 4E2CC0 80218580 44802000 */  mtc1      $zero, $f4
/* 4E2CC4 80218584 46000021 */  cvt.d.s   $f0, $f0
.L80218588:
/* 4E2CC8 80218588 46240000 */  add.d     $f0, $f0, $f4
/* 4E2CCC 8021858C 46201520 */  cvt.s.d   $f20, $f2
/* 4E2CD0 80218590 462005A0 */  cvt.s.d   $f22, $f0
/* 4E2CD4 80218594 0000982D */  daddu     $s3, $zero, $zero
/* 4E2CD8 80218598 2414000A */  addiu     $s4, $zero, 0xa
/* 4E2CDC 8021859C 26500004 */  addiu     $s0, $s2, 4
/* 4E2CE0 802185A0 3C014060 */  lui       $at, 0x4060
/* 4E2CE4 802185A4 4481E000 */  mtc1      $at, $f28
/* 4E2CE8 802185A8 3C0140E0 */  lui       $at, 0x40e0
/* 4E2CEC 802185AC 4481D000 */  mtc1      $at, $f26
/* 4E2CF0 802185B0 3C013F80 */  lui       $at, 0x3f80
/* 4E2CF4 802185B4 4481C000 */  mtc1      $at, $f24
.L802185B8:
/* 4E2CF8 802185B8 82220210 */  lb        $v0, 0x210($s1)
/* 4E2CFC 802185BC 54540005 */  bnel      $v0, $s4, .L802185D4
/* 4E2D00 802185C0 E61A0020 */   swc1     $f26, 0x20($s0)
/* 4E2D04 802185C4 E61C0020 */  swc1      $f28, 0x20($s0)
/* 4E2D08 802185C8 E61C0028 */  swc1      $f28, 0x28($s0)
/* 4E2D0C 802185CC 08086177 */  j         .L802185DC
/* 4E2D10 802185D0 E61C0024 */   swc1     $f28, 0x24($s0)
.L802185D4:
/* 4E2D14 802185D4 E61A0028 */  swc1      $f26, 0x28($s0)
/* 4E2D18 802185D8 E61A0024 */  swc1      $f26, 0x24($s0)
.L802185DC:
/* 4E2D1C 802185DC C6020014 */  lwc1      $f2, 0x14($s0)
/* 4E2D20 802185E0 C6000010 */  lwc1      $f0, 0x10($s0)
/* 4E2D24 802185E4 46001081 */  sub.s     $f2, $f2, $f0
/* 4E2D28 802185E8 46000007 */  neg.s     $f0, $f0
/* 4E2D2C 802185EC 46000000 */  add.s     $f0, $f0, $f0
/* 4E2D30 802185F0 4600103C */  c.lt.s    $f2, $f0
/* 4E2D34 802185F4 00000000 */  nop
/* 4E2D38 802185F8 4500000D */  bc1f      .L80218630
/* 4E2D3C 802185FC E6020014 */   swc1     $f2, 0x14($s0)
/* 4E2D40 80218600 E6000014 */  swc1      $f0, 0x14($s0)
/* 4E2D44 80218604 8E2200A8 */  lw        $v0, 0xa8($s1)
/* 4E2D48 80218608 10400009 */  beqz      $v0, .L80218630
/* 4E2D4C 8021860C 00000000 */   nop
/* 4E2D50 80218610 16600007 */  bnez      $s3, .L80218630
/* 4E2D54 80218614 24042063 */   addiu    $a0, $zero, 0x2063
/* 4E2D58 80218618 C620014C */  lwc1      $f0, 0x14c($s1)
/* 4E2D5C 8021861C E7A00010 */  swc1      $f0, 0x10($sp)
/* 4E2D60 80218620 8E260144 */  lw        $a2, 0x144($s1)
/* 4E2D64 80218624 8E270148 */  lw        $a3, 0x148($s1)
/* 4E2D68 80218628 0C052757 */  jal       sfx_play_sound_at_position
/* 4E2D6C 8021862C 0000282D */   daddu    $a1, $zero, $zero
.L80218630:
/* 4E2D70 80218630 C6000000 */  lwc1      $f0, ($s0)
/* 4E2D74 80218634 C6020014 */  lwc1      $f2, 0x14($s0)
/* 4E2D78 80218638 46020000 */  add.s     $f0, $f0, $f2
/* 4E2D7C 8021863C E6000000 */  swc1      $f0, ($s0)
/* 4E2D80 80218640 82220210 */  lb        $v0, 0x210($s1)
/* 4E2D84 80218644 1454000D */  bne       $v0, $s4, .L8021867C
/* 4E2D88 80218648 46000021 */   cvt.d.s  $f0, $f0
/* 4E2D8C 8021864C 3C014004 */  lui       $at, 0x4004
/* 4E2D90 80218650 44811800 */  mtc1      $at, $f3
/* 4E2D94 80218654 44801000 */  mtc1      $zero, $f2
/* 4E2D98 80218658 00000000 */  nop
/* 4E2D9C 8021865C 4622003C */  c.lt.d    $f0, $f2
/* 4E2DA0 80218660 00000000 */  nop
/* 4E2DA4 80218664 45000012 */  bc1f      .L802186B0
/* 4E2DA8 80218668 4600A306 */   mov.s    $f12, $f20
/* 4E2DAC 8021866C 3C014020 */  lui       $at, 0x4020
/* 4E2DB0 80218670 44810000 */  mtc1      $at, $f0
/* 4E2DB4 80218674 080861AA */  j         .L802186A8
/* 4E2DB8 80218678 AE000014 */   sw       $zero, 0x14($s0)
.L8021867C:
/* 4E2DBC 8021867C 3C014014 */  lui       $at, 0x4014
/* 4E2DC0 80218680 44811800 */  mtc1      $at, $f3
/* 4E2DC4 80218684 44801000 */  mtc1      $zero, $f2
/* 4E2DC8 80218688 00000000 */  nop
/* 4E2DCC 8021868C 4622003C */  c.lt.d    $f0, $f2
/* 4E2DD0 80218690 00000000 */  nop
/* 4E2DD4 80218694 45000006 */  bc1f      .L802186B0
/* 4E2DD8 80218698 4600A306 */   mov.s    $f12, $f20
/* 4E2DDC 8021869C 3C0140A0 */  lui       $at, 0x40a0
/* 4E2DE0 802186A0 44810000 */  mtc1      $at, $f0
/* 4E2DE4 802186A4 AE000014 */  sw        $zero, 0x14($s0)
.L802186A8:
/* 4E2DE8 802186A8 E6000000 */  swc1      $f0, ($s0)
/* 4E2DEC 802186AC 4600A306 */  mov.s     $f12, $f20
.L802186B0:
/* 4E2DF0 802186B0 8E460000 */  lw        $a2, ($s2)
/* 4E2DF4 802186B4 8E070000 */  lw        $a3, ($s0)
/* 4E2DF8 802186B8 0C00A7B5 */  jal       dist2D
/* 4E2DFC 802186BC 4600B386 */   mov.s    $f14, $f22
/* 4E2E00 802186C0 4600A306 */  mov.s     $f12, $f20
/* 4E2E04 802186C4 4600B386 */  mov.s     $f14, $f22
/* 4E2E08 802186C8 8E460000 */  lw        $a2, ($s2)
/* 4E2E0C 802186CC 8E070000 */  lw        $a3, ($s0)
/* 4E2E10 802186D0 0C00A720 */  jal       atan2
/* 4E2E14 802186D4 46000506 */   mov.s    $f20, $f0
/* 4E2E18 802186D8 C6020028 */  lwc1      $f2, 0x28($s0)
/* 4E2E1C 802186DC 4614103E */  c.le.s    $f2, $f20
/* 4E2E20 802186E0 00000000 */  nop
/* 4E2E24 802186E4 45000012 */  bc1f      .L80218730
/* 4E2E28 802186E8 46000586 */   mov.s    $f22, $f0
/* 4E2E2C 802186EC 4602A081 */  sub.s     $f2, $f20, $f2
/* 4E2E30 802186F0 4406B000 */  mfc1      $a2, $f22
/* 4E2E34 802186F4 44051000 */  mfc1      $a1, $f2
/* 4E2E38 802186F8 0C086116 */  jal       b_area_isk_part_1_stone_chomp_ChompChainUpdateHelperFunc2
/* 4E2E3C 802186FC 27A40018 */   addiu    $a0, $sp, 0x18
/* 4E2E40 80218700 C7A00018 */  lwc1      $f0, 0x18($sp)
/* 4E2E44 80218704 3C013FE0 */  lui       $at, 0x3fe0
/* 4E2E48 80218708 44811800 */  mtc1      $at, $f3
/* 4E2E4C 8021870C 44801000 */  mtc1      $zero, $f2
/* 4E2E50 80218710 46000021 */  cvt.d.s   $f0, $f0
/* 4E2E54 80218714 46220002 */  mul.d     $f0, $f0, $f2
/* 4E2E58 80218718 00000000 */  nop
/* 4E2E5C 8021871C C6020014 */  lwc1      $f2, 0x14($s0)
/* 4E2E60 80218720 460010A1 */  cvt.d.s   $f2, $f2
/* 4E2E64 80218724 46201080 */  add.d     $f2, $f2, $f0
/* 4E2E68 80218728 462010A0 */  cvt.s.d   $f2, $f2
/* 4E2E6C 8021872C E6020014 */  swc1      $f2, 0x14($s0)
.L80218730:
/* 4E2E70 80218730 C6000024 */  lwc1      $f0, 0x24($s0)
/* 4E2E74 80218734 4614003E */  c.le.s    $f0, $f20
/* 4E2E78 80218738 00000000 */  nop
/* 4E2E7C 8021873C 4500000F */  bc1f      .L8021877C
/* 4E2E80 80218740 00000000 */   nop
/* 4E2E84 80218744 C6000020 */  lwc1      $f0, 0x20($s0)
/* 4E2E88 80218748 4614003E */  c.le.s    $f0, $f20
/* 4E2E8C 8021874C 00000000 */  nop
/* 4E2E90 80218750 45000003 */  bc1f      .L80218760
/* 4E2E94 80218754 00000000 */   nop
/* 4E2E98 80218758 080861DC */  j         .L80218770
/* 4E2E9C 8021875C 4600A001 */   sub.s    $f0, $f20, $f0
.L80218760:
/* 4E2EA0 80218760 C6000018 */  lwc1      $f0, 0x18($s0)
/* 4E2EA4 80218764 C602001C */  lwc1      $f2, 0x1c($s0)
/* 4E2EA8 80218768 46020000 */  add.s     $f0, $f0, $f2
/* 4E2EAC 8021876C E6000018 */  swc1      $f0, 0x18($s0)
.L80218770:
/* 4E2EB0 80218770 44050000 */  mfc1      $a1, $f0
/* 4E2EB4 80218774 080861F2 */  j         .L802187C8
/* 4E2EB8 80218778 00000000 */   nop
.L8021877C:
/* 4E2EBC 8021877C C602001C */  lwc1      $f2, 0x1c($s0)
/* 4E2EC0 80218780 3C018022 */  lui       $at, %hi(D_80224920_4EF060)
/* 4E2EC4 80218784 D4204920 */  ldc1      $f0, %lo(D_80224920_4EF060)($at)
/* 4E2EC8 80218788 460010A1 */  cvt.d.s   $f2, $f2
/* 4E2ECC 8021878C 46201082 */  mul.d     $f2, $f2, $f0
/* 4E2ED0 80218790 00000000 */  nop
/* 4E2ED4 80218794 C6000018 */  lwc1      $f0, 0x18($s0)
/* 4E2ED8 80218798 46000021 */  cvt.d.s   $f0, $f0
/* 4E2EDC 8021879C 46220001 */  sub.d     $f0, $f0, $f2
/* 4E2EE0 802187A0 44802000 */  mtc1      $zero, $f4
/* 4E2EE4 802187A4 44802800 */  mtc1      $zero, $f5
/* 4E2EE8 802187A8 46200020 */  cvt.s.d   $f0, $f0
/* 4E2EEC 802187AC 460000A1 */  cvt.d.s   $f2, $f0
/* 4E2EF0 802187B0 4624103C */  c.lt.d    $f2, $f4
/* 4E2EF4 802187B4 00000000 */  nop
/* 4E2EF8 802187B8 45000002 */  bc1f      .L802187C4
/* 4E2EFC 802187BC E6000018 */   swc1     $f0, 0x18($s0)
/* 4E2F00 802187C0 AE000018 */  sw        $zero, 0x18($s0)
.L802187C4:
/* 4E2F04 802187C4 8E050018 */  lw        $a1, 0x18($s0)
.L802187C8:
/* 4E2F08 802187C8 4406B000 */  mfc1      $a2, $f22
/* 4E2F0C 802187CC 0C0860F0 */  jal       b_area_isk_part_1_stone_chomp_ChompChainUpdateHelperFunc
/* 4E2F10 802187D0 0240202D */   daddu    $a0, $s2, $zero
/* 4E2F14 802187D4 C6000018 */  lwc1      $f0, 0x18($s0)
/* 4E2F18 802187D8 3C014010 */  lui       $at, 0x4010
/* 4E2F1C 802187DC 44811800 */  mtc1      $at, $f3
/* 4E2F20 802187E0 44801000 */  mtc1      $zero, $f2
/* 4E2F24 802187E4 46000021 */  cvt.d.s   $f0, $f0
/* 4E2F28 802187E8 4620103C */  c.lt.d    $f2, $f0
/* 4E2F2C 802187EC 00000000 */  nop
/* 4E2F30 802187F0 45000005 */  bc1f      .L80218808
/* 4E2F34 802187F4 0220202D */   daddu    $a0, $s1, $zero
/* 4E2F38 802187F8 3C014080 */  lui       $at, 0x4080
/* 4E2F3C 802187FC 44810000 */  mtc1      $at, $f0
/* 4E2F40 80218800 00000000 */  nop
/* 4E2F44 80218804 E6000018 */  swc1      $f0, 0x18($s0)
.L80218808:
/* 4E2F48 80218808 0C099117 */  jal       get_actor_part
/* 4E2F4C 8021880C 02B32821 */   addu     $a1, $s5, $s3
/* 4E2F50 80218810 C6400000 */  lwc1      $f0, ($s2)
/* 4E2F54 80218814 0040182D */  daddu     $v1, $v0, $zero
/* 4E2F58 80218818 E460002C */  swc1      $f0, 0x2c($v1)
/* 4E2F5C 8021881C C6000000 */  lwc1      $f0, ($s0)
/* 4E2F60 80218820 E4600030 */  swc1      $f0, 0x30($v1)
/* 4E2F64 80218824 C6000004 */  lwc1      $f0, 4($s0)
/* 4E2F68 80218828 E4600034 */  swc1      $f0, 0x34($v1)
/* 4E2F6C 8021882C 82220210 */  lb        $v0, 0x210($s1)
/* 4E2F70 80218830 54540007 */  bnel      $v0, $s4, .L80218850
/* 4E2F74 80218834 E478004C */   swc1     $f24, 0x4c($v1)
/* 4E2F78 80218838 3C013F00 */  lui       $at, 0x3f00
/* 4E2F7C 8021883C 44810000 */  mtc1      $at, $f0
/* 4E2F80 80218840 E4780054 */  swc1      $f24, 0x54($v1)
/* 4E2F84 80218844 E460004C */  swc1      $f0, 0x4c($v1)
/* 4E2F88 80218848 08086216 */  j         .L80218858
/* 4E2F8C 8021884C E4600050 */   swc1     $f0, 0x50($v1)
.L80218850:
/* 4E2F90 80218850 E4780050 */  swc1      $f24, 0x50($v1)
/* 4E2F94 80218854 E4780054 */  swc1      $f24, 0x54($v1)
.L80218858:
/* 4E2F98 80218858 26730001 */  addiu     $s3, $s3, 1
/* 4E2F9C 8021885C C6160000 */  lwc1      $f22, ($s0)
/* 4E2FA0 80218860 26100030 */  addiu     $s0, $s0, 0x30
/* 4E2FA4 80218864 C6540000 */  lwc1      $f20, ($s2)
/* 4E2FA8 80218868 2A620008 */  slti      $v0, $s3, 8
/* 4E2FAC 8021886C 1440FF52 */  bnez      $v0, .L802185B8
/* 4E2FB0 80218870 26520030 */   addiu    $s2, $s2, 0x30
/* 4E2FB4 80218874 24020002 */  addiu     $v0, $zero, 2
.L80218878:
/* 4E2FB8 80218878 8FBF0038 */  lw        $ra, 0x38($sp)
/* 4E2FBC 8021887C 8FB50034 */  lw        $s5, 0x34($sp)
/* 4E2FC0 80218880 8FB40030 */  lw        $s4, 0x30($sp)
/* 4E2FC4 80218884 8FB3002C */  lw        $s3, 0x2c($sp)
/* 4E2FC8 80218888 8FB20028 */  lw        $s2, 0x28($sp)
/* 4E2FCC 8021888C 8FB10024 */  lw        $s1, 0x24($sp)
/* 4E2FD0 80218890 8FB00020 */  lw        $s0, 0x20($sp)
/* 4E2FD4 80218894 D7BC0060 */  ldc1      $f28, 0x60($sp)
/* 4E2FD8 80218898 D7BA0058 */  ldc1      $f26, 0x58($sp)
/* 4E2FDC 8021889C D7B80050 */  ldc1      $f24, 0x50($sp)
/* 4E2FE0 802188A0 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 4E2FE4 802188A4 D7B40040 */  ldc1      $f20, 0x40($sp)
/* 4E2FE8 802188A8 03E00008 */  jr        $ra
/* 4E2FEC 802188AC 27BD0068 */   addiu    $sp, $sp, 0x68
