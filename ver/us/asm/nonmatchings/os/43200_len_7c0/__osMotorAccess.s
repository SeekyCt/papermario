.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel __osMotorAccess
/* 43200 80067E00 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 43204 80067E04 AFB10014 */  sw        $s1, 0x14($sp)
/* 43208 80067E08 00808821 */  addu      $s1, $a0, $zero
/* 4320C 80067E0C AFB3001C */  sw        $s3, 0x1c($sp)
/* 43210 80067E10 00A09821 */  addu      $s3, $a1, $zero
/* 43214 80067E14 AFBF0020 */  sw        $ra, 0x20($sp)
/* 43218 80067E18 AFB20018 */  sw        $s2, 0x18($sp)
/* 4321C 80067E1C AFB00010 */  sw        $s0, 0x10($sp)
/* 43220 80067E20 8E220008 */  lw        $v0, 8($s1)
/* 43224 80067E24 8E230000 */  lw        $v1, ($s1)
/* 43228 80067E28 3C04800B */  lui       $a0, %hi(D_800B0B30)
/* 4322C 80067E2C 24840B30 */  addiu     $a0, $a0, %lo(D_800B0B30)
/* 43230 80067E30 00021180 */  sll       $v0, $v0, 6
/* 43234 80067E34 30630008 */  andi      $v1, $v1, 8
/* 43238 80067E38 14600003 */  bnez      $v1, .L80067E48
/* 4323C 80067E3C 00449021 */   addu     $s2, $v0, $a0
/* 43240 80067E40 08019FCA */  j         .L80067F28
/* 43244 80067E44 24020005 */   addiu    $v0, $zero, 5
.L80067E48:
/* 43248 80067E48 0C019771 */  jal       __osSiGetAccess
/* 4324C 80067E4C 00000000 */   nop
/* 43250 80067E50 8E220008 */  lw        $v0, 8($s1)
/* 43254 80067E54 24030001 */  addiu     $v1, $zero, 1
/* 43258 80067E58 00021180 */  sll       $v0, $v0, 6
/* 4325C 80067E5C 3C01800B */  lui       $at, %hi(D_800B0B6C)
/* 43260 80067E60 00220821 */  addu      $at, $at, $v0
/* 43264 80067E64 AC230B6C */  sw        $v1, %lo(D_800B0B6C)($at)
/* 43268 80067E68 8E220008 */  lw        $v0, 8($s1)
/* 4326C 80067E6C 2403001F */  addiu     $v1, $zero, 0x1f
/* 43270 80067E70 02429021 */  addu      $s2, $s2, $v0
/* 43274 80067E74 2642001F */  addiu     $v0, $s2, 0x1f
.L80067E78:
/* 43278 80067E78 A0530006 */  sb        $s3, 6($v0)
/* 4327C 80067E7C 2463FFFF */  addiu     $v1, $v1, -1
/* 43280 80067E80 0461FFFD */  bgez      $v1, .L80067E78
/* 43284 80067E84 2442FFFF */   addiu    $v0, $v0, -1
/* 43288 80067E88 8E250008 */  lw        $a1, 8($s1)
/* 4328C 80067E8C 24040001 */  addiu     $a0, $zero, 1
/* 43290 80067E90 240200FE */  addiu     $v0, $zero, 0xfe
/* 43294 80067E94 3C10800B */  lui       $s0, %hi(D_800B0B30)
/* 43298 80067E98 26100B30 */  addiu     $s0, $s0, %lo(D_800B0B30)
/* 4329C 80067E9C 3C01800A */  lui       $at, %hi(__osContLastCmd)
/* 432A0 80067EA0 A022A61C */  sb        $v0, %lo(__osContLastCmd)($at)
/* 432A4 80067EA4 00052980 */  sll       $a1, $a1, 6
/* 432A8 80067EA8 0C019730 */  jal       __osSiRawStartDma
/* 432AC 80067EAC 00B02821 */   addu     $a1, $a1, $s0
/* 432B0 80067EB0 8E240004 */  lw        $a0, 4($s1)
/* 432B4 80067EB4 00002821 */  addu      $a1, $zero, $zero
/* 432B8 80067EB8 0C0195BC */  jal       osRecvMesg
/* 432BC 80067EBC 24060001 */   addiu    $a2, $zero, 1
/* 432C0 80067EC0 8E250008 */  lw        $a1, 8($s1)
/* 432C4 80067EC4 00002021 */  addu      $a0, $zero, $zero
/* 432C8 80067EC8 00052980 */  sll       $a1, $a1, 6
/* 432CC 80067ECC 0C019730 */  jal       __osSiRawStartDma
/* 432D0 80067ED0 00B02821 */   addu     $a1, $a1, $s0
/* 432D4 80067ED4 8E240004 */  lw        $a0, 4($s1)
/* 432D8 80067ED8 00002821 */  addu      $a1, $zero, $zero
/* 432DC 80067EDC 0C0195BC */  jal       osRecvMesg
/* 432E0 80067EE0 24060001 */   addiu    $a2, $zero, 1
/* 432E4 80067EE4 92420002 */  lbu       $v0, 2($s2)
/* 432E8 80067EE8 305000C0 */  andi      $s0, $v0, 0xc0
/* 432EC 80067EEC 1600000B */  bnez      $s0, .L80067F1C
/* 432F0 80067EF0 00000000 */   nop
/* 432F4 80067EF4 16600006 */  bnez      $s3, .L80067F10
/* 432F8 80067EF8 240200EB */   addiu    $v0, $zero, 0xeb
/* 432FC 80067EFC 92420026 */  lbu       $v0, 0x26($s2)
/* 43300 80067F00 10400006 */  beqz      $v0, .L80067F1C
/* 43304 80067F04 00000000 */   nop
/* 43308 80067F08 08019FC7 */  j         .L80067F1C
/* 4330C 80067F0C 24100004 */   addiu    $s0, $zero, 4
.L80067F10:
/* 43310 80067F10 92430026 */  lbu       $v1, 0x26($s2)
/* 43314 80067F14 54620001 */  bnel      $v1, $v0, .L80067F1C
/* 43318 80067F18 24100004 */   addiu    $s0, $zero, 4
.L80067F1C:
/* 4331C 80067F1C 0C01978C */  jal       __osSiRelAccess
/* 43320 80067F20 00000000 */   nop
/* 43324 80067F24 02001021 */  addu      $v0, $s0, $zero
.L80067F28:
/* 43328 80067F28 8FBF0020 */  lw        $ra, 0x20($sp)
/* 4332C 80067F2C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 43330 80067F30 8FB20018 */  lw        $s2, 0x18($sp)
/* 43334 80067F34 8FB10014 */  lw        $s1, 0x14($sp)
/* 43338 80067F38 8FB00010 */  lw        $s0, 0x10($sp)
/* 4333C 80067F3C 03E00008 */  jr        $ra
/* 43340 80067F40 27BD0028 */   addiu    $sp, $sp, 0x28
