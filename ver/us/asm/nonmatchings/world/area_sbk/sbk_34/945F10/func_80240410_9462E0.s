.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240410_9462E0
/* 9462E0 80240410 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 9462E4 80240414 AFBF0010 */  sw        $ra, 0x10($sp)
/* 9462E8 80240418 8C82000C */  lw        $v0, 0xc($a0)
/* 9462EC 8024041C 0C0B1EAF */  jal       evt_get_variable
/* 9462F0 80240420 8C450000 */   lw       $a1, ($v0)
/* 9462F4 80240424 0040182D */  daddu     $v1, $v0, $zero
/* 9462F8 80240428 10600012 */  beqz      $v1, .L80240474
/* 9462FC 8024042C 0000202D */   daddu    $a0, $zero, $zero
/* 946300 80240430 8C620000 */  lw        $v0, ($v1)
/* 946304 80240434 5040000A */  beql      $v0, $zero, .L80240460
/* 946308 80240438 00041080 */   sll      $v0, $a0, 2
/* 94630C 8024043C 3C058024 */  lui       $a1, %hi(sbk_34_802427E0)
/* 946310 80240440 24A527E0 */  addiu     $a1, $a1, %lo(sbk_34_802427E0)
.L80240444:
/* 946314 80240444 24630004 */  addiu     $v1, $v1, 4
/* 946318 80240448 24840001 */  addiu     $a0, $a0, 1
/* 94631C 8024044C ACA20000 */  sw        $v0, ($a1)
/* 946320 80240450 8C620000 */  lw        $v0, ($v1)
/* 946324 80240454 1440FFFB */  bnez      $v0, .L80240444
/* 946328 80240458 24A50004 */   addiu    $a1, $a1, 4
/* 94632C 8024045C 00041080 */  sll       $v0, $a0, 2
.L80240460:
/* 946330 80240460 3C018024 */  lui       $at, %hi(sbk_34_802427E0)
/* 946334 80240464 00220821 */  addu      $at, $at, $v0
/* 946338 80240468 AC2027E0 */  sw        $zero, %lo(sbk_34_802427E0)($at)
/* 94633C 8024046C 08090127 */  j         .L8024049C
/* 946340 80240470 00000000 */   nop
.L80240474:
/* 946344 80240474 3C038024 */  lui       $v1, %hi(sbk_34_802427E0)
/* 946348 80240478 246327E0 */  addiu     $v1, $v1, %lo(sbk_34_802427E0)
/* 94634C 8024047C 0060282D */  daddu     $a1, $v1, $zero
.L80240480:
/* 946350 80240480 24820010 */  addiu     $v0, $a0, 0x10
/* 946354 80240484 AC620000 */  sw        $v0, ($v1)
/* 946358 80240488 24630004 */  addiu     $v1, $v1, 4
/* 94635C 8024048C 24840001 */  addiu     $a0, $a0, 1
/* 946360 80240490 28820070 */  slti      $v0, $a0, 0x70
/* 946364 80240494 1440FFFA */  bnez      $v0, .L80240480
/* 946368 80240498 ACA001C0 */   sw       $zero, 0x1c0($a1)
.L8024049C:
/* 94636C 8024049C 8FBF0010 */  lw        $ra, 0x10($sp)
/* 946370 802404A0 24020002 */  addiu     $v0, $zero, 2
/* 946374 802404A4 03E00008 */  jr        $ra
/* 946378 802404A8 27BD0018 */   addiu    $sp, $sp, 0x18
