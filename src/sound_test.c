#include "global.h"
#include "sound_test.h"
#include "profile.h"
#include "task.h"
#include "data.h"
#include "m4a.h"

struct SoundTestScreen_UNK718 {
    u32 unk0;
    u8 filler4[4];
};

struct SoundTestScreen {
    struct OptionsScreen* optionsScreen;
    struct UNK_802D4CC_UNK270 unk4;
    struct UNK_3005B80_UNK4 unk10;

    u8 filler48[128];
    struct UNK_0808B3FC_UNK240 unkC8;
    struct UNK_0808B3FC_UNK240 unkF8;
    struct UNK_0808B3FC_UNK240 unk128;
    struct UNK_0808B3FC_UNK240 unk158;
    struct UNK_0808B3FC_UNK240 unk188;
    struct UNK_0808B3FC_UNK240 unk1B8[4];

    struct UNK_0808B3FC_UNK240 unk278;
    struct UNK_0808B3FC_UNK240 unk2A8;
    struct UNK_0808B3FC_UNK240* unk2D8;
    struct UNK_0808B3FC_UNK240 unk2DC;
    struct UNK_0808B3FC_UNK240 unk30C;
    struct UNK_0808B3FC_UNK240 unk33C[3];

    struct UNK_802D4CC_UNK270 unk3CC[4];

    struct UNK_0808B3FC_UNK240 unk3FC[16];

    u8 unk6FC;
    u8 unk6FD[3];

    u32 unk700;
    u32 unk704;
    u8 unk708;
    u8 unk709;

    u8 filler70A;

    u8 unk70B;
    u8 unk70C;
    u8 unk70D;
    u16 unk70E;
    u16 unk710;
    u8 unk712;

    u8 filler713[5];

    void* unk718[8];
    void* unk738[8];
    u8 unk758;
}; /* size 0x75C */

void sub_808AF74(void);
void sub_808B2B0(struct Task* t);
void sub_808B2F4(struct Task* t);
static void sub_808A3B4(struct Task* t);

extern const u8 gUnknown_080E0C38[12];
extern const u8 gUnknown_08C8796C[140];

void CreateSoundTestScreen(struct OptionsScreen* optionsScreen) {
    struct Task* t = TaskCreate(sub_808AF74, sizeof(struct SoundTestScreen), 0x1800, TASK_x0004, sub_808B2B0);
    struct SoundTestScreen* soundTestScreen = TaskGetStructPtr(t, soundTestScreen);
    struct UNK_802D4CC_UNK270* unk4;
    struct UNK_3005B80_UNK4* unk10;
    u32 i;
    
    
    unk4 = &soundTestScreen->unk4;
    unk10 = &soundTestScreen->unk10;
    m4aMPlayAllStop();

    soundTestScreen->optionsScreen = optionsScreen;
    soundTestScreen->unk6FC = 0;
    soundTestScreen->unk700 = 0;
    soundTestScreen->unk704 = 0x10000;
    soundTestScreen->unk70B = 1;
    soundTestScreen->unk709 = 0;
    soundTestScreen->unk708 = 0;
    soundTestScreen->unk2D8 = &soundTestScreen->unk278;
    soundTestScreen->unk70C = 0;
    soundTestScreen->unk70D = 0;
    soundTestScreen->unk70E = 0;
    soundTestScreen->unk710 = 0;
    soundTestScreen->unk712 = 0;
    soundTestScreen->unk758 = optionsScreen->language;
        
    for (i = 0; i < 8; i++) {
        soundTestScreen->unk718[i] = NULL;
        soundTestScreen->unk738[i] = NULL;
    }

    ResetProfileScreensVram();
    sub_808B2F4(t);
    sub_808A3B4(t);
   
    unk4->unk0 = 0;
    unk4->unk2 = 2;
    unk4->unk4 = 0;
    unk4->unk6 = 0x100;
    unk4->unkA = 0;
    unk4->unk8 = 0xff;

    unk10->unk0 = 0;
    unk10->unk2 = 0;
    unk10->unkC = 1;
    unk10->unkD = 1;
    unk10->unkE = 1;
    unk10->unk1 = 0;

    unk10->unk4 = gUnknown_080E0C38;
    unk10->unk8 = gUnknown_08C8796C;

    unk10->unk34 = 0;

    gUnknown_03005B80.unk0 = unk10;
}

struct UNK_80E0C44 {
    u32 unk0;
    u32 unk4;
    u32 unk8;
};

extern const struct UNK_80E0C44 gUnknown_080E0C44[NUM_LANGUAGES];
extern const struct UNK_80E0C44 gUnknown_080E0C8C[NUM_LANGUAGES];
extern const struct UNK_80E0C44 gUnknown_080E0CD4[NUM_LANGUAGES][1];

static void sub_808A3B4(struct Task* t) {
    struct SoundTestScreen* soundTestScreen = TaskGetStructPtr(t, soundTestScreen);
    struct UNK_0808B3FC_UNK240* unkC8 = &soundTestScreen->unkC8;
    struct UNK_0808B3FC_UNK240* unkF8 = &soundTestScreen->unkF8;
    struct UNK_0808B3FC_UNK240* unk30C = &soundTestScreen->unk30C;
    
    struct UNK_0808B3FC_UNK240* unk1B8 = soundTestScreen->unk1B8;
    struct UNK_0808B3FC_UNK240* unk33C = soundTestScreen->unk33C;

    struct UNK_0808B3FC_UNK240* unk2DC = &soundTestScreen->unk2DC;
    struct UNK_0808B3FC_UNK240* unk278 = &soundTestScreen->unk278;

    struct UNK_0808B3FC_UNK240* unk188 = &soundTestScreen->unk188;
    struct UNK_802D4CC_UNK270* unk3CC = soundTestScreen->unk3CC;
    struct UNK_802D4CC_UNK270* unk3CC_val;
    s16 i, xPos;

    u8 language = soundTestScreen->unk758;
    const struct UNK_80E0C44* unkC44 = &gUnknown_080E0C44[language];

    sub_806A568(unkC8,RENDER_TARGET_SCREEN,unkC44->unk0,unkC44->unk4,0x1000,10,0x10,5,unkC44->unk8,0);
    sub_806A568(unkF8,RENDER_TARGET_SCREEN,0x60,0x3C9,0x1000,0,0,6,0,0);
    unkC44 = &gUnknown_080E0C8C[language];
    sub_806A568(unk128,RENDER_TARGET_SCREEN,unkC44->unk0,unkC44->unk4,0x1000,10,0x86,5,unkC44->unk8,0);

    unkC44 = &gUnknown_080E0CD4[language][1];
    sub_806A568(unk128,RENDER_TARGET_SCREEN,unkC44->unk0,unkC44->unk4,0x1000,0x5A,0x86,5,unkC44->unk8,0);
    sub_806A568(unk128,RENDER_TARGET_SCREEN,1,0x3C5,0x1000,0x5A,0x5A,5,2,0);

    for (i = 0, xPos = 80; i < 3; i++, unk3CC++, xPos -= 8) {
        if (i == 0) {
            sub_806A568(unk33C,RENDER_TARGET_SCREEN,2,0x45f,0x1000,xPos,0x60,5,0x11,0);
        } else {
            sub_806A568(unk33C,RENDER_TARGET_SCREEN,2,0x45f,0x1000,xPos,0x60,5,0x10,0);
        }
    }

    for (i = 0; i < 4; i++) {
        unk3CC_val = &unk3CC[i];
        unk3CC_val->unk0 = i << 8;
        unk3CC_val->unk2 = 0x100;
        unk3CC_val->unk4 = 0x100;
        unk3CC_val->unk6 = 0x4C;
        unk3CC_val->unk8 = 0x5A;
    }
}