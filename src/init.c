#include "global.h"
#include "data.h"
#include "task.h"
#include "init.h"
#include "flags.h"

// likely static data, needs to be extracted
extern union Unk_03002E60 gUnknown_080D5CE4[];
extern u32 gUnknown_080F40D4;

// Some sort of unused task variable
struct Task *gUnknown_03005844;

// Need to find what these mean
void sub_80723C4();
bool16 sub_8063940_HasProfile();
void sub_8072474();
void sub_808B3FC_CreateIntro();
void sub_808D41C_CreateTitleScreen();
void sub_8063940_CreateProfileScreen();
void sub_80724C0();
void sub_8081C0C();

static void sub_801A6C8(void);
static void sub_801A6CC(struct Task*);

void sub_801A51C(void) {
    u32 i;
    bool32 hasProfile = FALSE;

    gUnknown_03002260 = gUnknown_080D5CE4;
    gUnknown_03002794 = &gUnknown_080F40D4;
    gUnknown_03004D54 = gUnknown_03001B60[0];
    gUnknown_030022C0 = gUnknown_03001B60[1];

    gUnknown_03005424 = gUnknown_0300544C = 0;

    gUnknown_030059D8 = 0;
    gUnknown_03005844 = NULL;
    gUnknown_03005848 = 0;
    gUnknown_030059E0.unkA8 = 0;
    gUnknown_03005960.unk5C = 0;

    gUnknown_030059D0[1] = 0;
    gUnknown_03005660.unk10 = 0;

    gUnknown_0300543C = 0;
    gUnknown_030054CC = 0;
    gUnknown_030054DC = 0;
    gUnknown_03005B34 = 0;
    gUnknown_030054C8 = 0;
    gUnknown_030054E4 = 0;

    for (i = 0; i < 4; i++) {
        gUnknown_030055A0[i] = 0;
    }

    for (i = 0; i < 4; i++) {
        gUnknown_03005500[i] = 0;
        gUnknown_030054B4[i] = 0;
        gUnknown_030054D4[i] = 0;
    }

    sub_80723C4();

    // Potentially has saved before?
    if (sub_8063940_HasProfile()) {
        sub_8072474();
        hasProfile = TRUE;
    }

    if (gFlags & 0x200) {
        sub_8081C0C();
        return;
    }
    
    if (gFlags & FLAGS_NO_GAME_FLASH) {
        sub_808B3FC_CreateIntro();
        sub_80724C0();
        return;
    }
    
    if (!hasProfile) {
        sub_8063940_CreateProfileScreen();
        return;
    }
    
    // When a special button combination is pressed
    // skip the intro and go straight to the
    // title screen
    if (gFlags & FLAGS_SKIP_INTRO) {
        sub_808D41C_CreateTitleScreen();
        gFlags &= ~FLAGS_SKIP_INTRO;
        return;
    }
    
    sub_808B3FC_CreateIntro();
}

void sub_801A684(void){
  gUnknown_03005844 = TaskCreate(sub_801A6C8, 0, 0x100, 0, sub_801A6CC);
}

void sub_801A6B0(void) {
  TaskDestroy(gUnknown_03005844);
  gUnknown_03005844 = NULL;
}

static void sub_801A6C8(void) {}

static void sub_801A6CC(struct Task* task) {
    gUnknown_03005844 = NULL;
}
