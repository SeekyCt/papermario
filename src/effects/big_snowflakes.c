#include "common.h"
#include "effects_internal.h"

void big_snowflakes_appendGfx(void* effect);

INCLUDE_ASM(s32, "effects/big_snowflakes", big_snowflakes_main);

void big_snowflakes_init(void) {
}

INCLUDE_ASM(s32, "effects/big_snowflakes", big_snowflakes_update);

void big_snowflakes_render(EffectInstance* effect) {
    RenderTask renderTask;
    RenderTask* retTask;

    renderTask.appendGfx = big_snowflakes_appendGfx;
    renderTask.appendGfxArg = effect;
    renderTask.distance = 0;
    renderTask.renderMode = RENDER_MODE_2D;

    retTask = shim_queue_render_task(&renderTask);
    retTask->renderMode |= RENDER_MODE_2;
}

INCLUDE_ASM(s32, "effects/big_snowflakes", big_snowflakes_appendGfx);
