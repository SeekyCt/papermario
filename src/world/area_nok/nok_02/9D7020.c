#include "nok_02.h"

static char* N(exit_str_0) = "nok_01";
static char* N(exit_str_1) = "nok_03";
static char* N(exit_str_2) = "tik_01";
static char* N(exit_str_3) = "";

#include "world/common/atomic/Pipe.inc.c"

#include "world/common/StashVars.inc.c"

#define NAMESPACE dup_nok_02
#include "world/common/GetItemName.inc.c"
#define NAMESPACE nok_02

#define NAMESPACE dup_nok_02
#include "world/common/GetNpcCollisionHeight.inc.c"
#define NAMESPACE nok_02

#define NAMESPACE dup_nok_02
#include "world/common/AddPlayerHandsOffset.inc.c"
#define NAMESPACE nok_02

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7020", func_80240624_9D7644);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7020", func_80240678_9D7698);

INCLUDE_ASM(s32, "world/area_nok/nok_02/9D7020", func_802406B0_9D76D0);
