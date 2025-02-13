#include "common.h"
#include "hud_element.h"

#define NAMESPACE action_command_body_slam

extern HudScript HudScript_BlueMeter[];
extern HudScript HudScript_AButton[];
extern HudScript HudScript_TimingWait[];
extern HudScript HudScript_FillGaugeResult[];
extern s32 D_80294320;

ApiStatus N(CreateHudElements)(Evt* script, s32 isInitialCall) {
    ActionCommandStatus* actionCommandStatus = &gActionCommandStatus;
    BattleStatus* battleStatus = &gBattleStatus;
    s32 hudElement;

    battleStatus->unk_82 = 100;
    battleStatus->unk_434 = &D_80294320;
    battleStatus->unk_86 = 127;
    if (battleStatus->unk_83 == 0) {
        battleStatus->actionSuccess = 0;
        return ApiStatus_DONE2;
    }

    func_80268858();
    actionCommandStatus->actionCommandID = ACTION_COMMAND_BODY_SLAM;
    actionCommandStatus->unk_61 = 1;
    actionCommandStatus->state = 0;
    actionCommandStatus->unk_60 = 0;
    actionCommandStatus->barFillLevel = 0;
    actionCommandStatus->unk_48 = 0;
    actionCommandStatus->unk_68 = 0;
    battleStatus->actionSuccess = 0;
    actionCommandStatus->hudElementX = -48;
    actionCommandStatus->hudElementY = 80;

    hudElement = hud_element_create(HudScript_AButton);
    actionCommandStatus->hudElements[0] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    hudElement = hud_element_create(HudScript_BlueMeter);
    actionCommandStatus->hudElements[1] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY + 28);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    hudElement = hud_element_create(HudScript_FillGaugeResult);
    actionCommandStatus->hudElements[3] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX, actionCommandStatus->hudElementY + 28);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80 | HUD_ELEMENT_FLAGS_DISABLED);

    hudElement = hud_element_create(HudScript_TimingWait);
    actionCommandStatus->hudElements[2] = hudElement;
    hud_element_set_render_pos(hudElement, actionCommandStatus->hudElementX + 41, actionCommandStatus->hudElementY + 22);
    hud_element_set_render_depth(hudElement, 0);
    hud_element_set_flags(hudElement, HUD_ELEMENT_FLAGS_80);
    return ApiStatus_DONE2;
}

#include "common/MashActionCommandInit.inc.c"

INCLUDE_ASM(s32, "battle/action_cmd/body_slam", func_802A92D4_4285B4);

void N(draw_hud_elements)(void) {
    s32 x, y;
    s32 hudElement;

    hud_element_draw_clipped(gActionCommandStatus.hudElements[0]);
    hudElement = gActionCommandStatus.hudElements[1];
    hud_element_draw_clipped(hudElement);
    hud_element_get_render_pos(hudElement, &x, &y);
    hud_element_draw_clipped(gActionCommandStatus.hudElements[3]);
    func_80268770(x, y, gActionCommandStatus.barFillLevel / 100);
    hud_element_draw_clipped(gActionCommandStatus.hudElements[2]);
}

void N(free_hud_elements)(void) {
	hud_element_free(gActionCommandStatus.hudElements[0]);
	hud_element_free(gActionCommandStatus.hudElements[1]);
	hud_element_free(gActionCommandStatus.hudElements[2]);
	hud_element_free(gActionCommandStatus.hudElements[3]);
}
