#include "arn_08.h"
#include "message_ids.h"

EntryList N(entryList) = {
    { -80.0f, 0.0f, 108.0f, 45.0f },
    {   0.0f, 0.0f,   0.0f,  0.0f },
    { -85.0f, 0.0f,  55.0f, 45.0f },
};

MapConfig N(config) = {
    .main = &N(main),
    .entryList = &N(entryList),
    .entryCount = ENTRY_COUNT(N(entryList)),
    .tattle = { MSG_arn_08_tattle },
};

EvtScript N(80240300) = {
    EVT_SWITCH(EVT_SAVE_VAR(0))
        EVT_CASE_LT(-22)
            EVT_CALL(SetMusicTrack, 0, SONG_TUBBA_ESCAPE, 0, 8)
        EVT_CASE_LT(-16)
            EVT_CALL(SetMusicTrack, 0, SONG_TUBBA_BLUBBA_THEME, 0, 8)
        EVT_CASE_DEFAULT
            EVT_CALL(SetMusicTrack, 0, SONG_GUSTY_GULCH, 0, 8)
    EVT_END_SWITCH
    EVT_CALL(ClearAmbientSounds, 250)
    EVT_RETURN
    EVT_END
};
