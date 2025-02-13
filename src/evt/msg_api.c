#include "common.h"

ApiStatus _show_message(Evt* script, s32 isInitialCall, s32 arg2);

ApiStatus SpeakToPlayer(Evt* script, s32 isInitialCall) {
    return _show_message(script, isInitialCall, 0);
}

ApiStatus EndSpeech(Evt* script, s32 isInitialCall) {
    return _show_message(script, isInitialCall, 1);
}

ApiStatus ContinueSpeech(Evt* script, s32 isInitialCall) {
    return _show_message(script, isInitialCall, 2);
}

ApiStatus SpeakToNpc(Evt* script, s32 isInitialCall) {
    return _show_message(script, isInitialCall, 3);
}

INCLUDE_ASM(ApiStatus, "evt/msg_api", _show_message, Evt* script, s32 isInitialCall, s32 arg2);

ApiStatus ShowMessageAtScreenPos(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        s32 msgID = evt_get_variable(script, *args++);
        s32 x = evt_get_variable(script, *args++);
        s32 y = evt_get_variable(script, *args++);
        s32* temp802DB264 = &D_802DB264;

        *temp802DB264 = 0;
        gCurrentPrintContext = msg_get_printer_for_msg(msgID, temp802DB264);
        msg_printer_set_origin_pos(gCurrentPrintContext, x, y);
    }

    if (gCurrentPrintContext->stateFlags & 0x40) {
        return ApiStatus_DONE1;
    }

    if (D_802DB264 != 1) {
        return ApiStatus_BLOCK;
    }

    script->varTable[0] = gCurrentPrintContext->currentOption;
    return ApiStatus_DONE1;
}

ApiStatus ShowMessageAtWorldPos(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    MessagePrintState** currentPrintContext;
    s32* currentCameraID = &gCurrentCameraID;

    if (isInitialCall) {
        s32 msgID = evt_get_variable(script, *args++);
        s32 x = evt_get_variable(script, *args++);
        s32 y = evt_get_variable(script, *args++);
        s32 z = evt_get_variable(script, *args++);
        s32 x2;
        s32 y2;
        s32 z2;
        s32* temp802DB264 = &D_802DB264;

        *temp802DB264 = 0;
        currentPrintContext = &gCurrentPrintContext;
        *currentPrintContext = msg_get_printer_for_msg(msgID, temp802DB264);
        get_screen_coords(*currentCameraID, x, y, z, &x2, &y2, &z2);
        msg_printer_set_origin_pos(*currentPrintContext, x2, y2);
    }

    if (gCurrentPrintContext->stateFlags & 0x40) {
        return ApiStatus_DONE1;
    }

    if (D_802DB264 != 1) {
        return ApiStatus_BLOCK;
    }

    script->varTable[0] = gCurrentPrintContext->currentOption;
    return ApiStatus_DONE1;
}

ApiStatus CloseMessage(Evt* script, s32 isInitialCall) {
    if (isInitialCall) {
        close_message(gCurrentPrintContext);
    }

    if (gCurrentPrintContext->stateFlags & 0x40) {
        return ApiStatus_DONE1;
    } else if (D_802DB264 != 1) {
        return ApiStatus_BLOCK;
    } else {
        script->varTable[0] = gCurrentPrintContext->currentOption;
        return ApiStatus_DONE1;
    }
}

ApiStatus SwitchMessage(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;

    if (isInitialCall) {
        msg_printer_load_msg(evt_get_variable(script, *args), gCurrentPrintContext);
    }

    if (gCurrentPrintContext->stateFlags & 0x40) {
        return ApiStatus_DONE1;
    } else if (D_802DB264 != 1) {
        return ApiStatus_BLOCK;
    } else {
        script->varTable[0] = gCurrentPrintContext->currentOption;
        return ApiStatus_DONE1;
    }
}

ApiStatus ShowChoice(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    MessagePrintState** temp802DB268;

    if (isInitialCall) {
        s32 msgID = evt_get_variable(script, *args++);

        script->functionTemp[1] = 0;
        D_802DB268 = msg_get_printer_for_msg(msgID, &script->functionTemp[1]);
    }

    temp802DB268 = &D_802DB268;
    script->varTable[0] = gCurrentPrintContext->currentOption = (*temp802DB268)->currentOption;

    if ((*temp802DB268)->stateFlags & 0x40) {
        return ApiStatus_DONE1;
    }

    return script->functionTemp[1] == 1;
}

ApiStatus CloseChoice(Evt* script, s32 isInitialCall) {
    close_message(D_802DB268);
    return ApiStatus_DONE1;
}

ApiStatus CancelMessage(Evt* script, s32 isInitialCall) {
    cancel_message(gCurrentPrintContext);
    return ApiStatus_DONE2;
}

s32 cancel_current_message(void) {
    cancel_message(gCurrentPrintContext);
    return 0;
}

ApiStatus SetMessageImages(Evt* script, s32 isInitialCall) {
    set_message_images(*script->ptrReadPos);
    return ApiStatus_DONE2;
}

ApiStatus func_802D0C94(Evt* script, s32 initialCall) {
    if (evt_get_variable(script, *script->ptrReadPos) == 0) {
        gOverrideFlags |= GLOBAL_OVERRIDES_10;
    } else {
        gOverrideFlags &= ~GLOBAL_OVERRIDES_10;
    }
    return ApiStatus_DONE2;
}

ApiStatus SetMessageMsg(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 msg = evt_get_variable(script, *args++);
    s32 index = evt_get_variable(script, *args++);

    set_message_msg(msg, index);
    return ApiStatus_DONE2;
}

ApiStatus SetMessageValue(Evt* script, s32 initialCall) {
    Bytecode* ptrReadPos = script->ptrReadPos;
    s32 value = evt_get_variable(script, *ptrReadPos++);
    s32 index = evt_get_variable(script, *ptrReadPos);

    set_message_value(value, index);
    return ApiStatus_DONE2;
}
