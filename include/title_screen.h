#ifndef GUARD_INTRO_H
#define GUARD_INTRO_H

#include "global.h"
#include "sprite.h"
#include "data.h"

// TODO: not sure why these were shared from here, may
// not be
extern const struct UNK_080E0D64 gPressStartTiles[];

void CreateTitleScreen(void);
void CreateTitleScreenAndSkipIntro(void);
// CreateTitleScreenAtPlayModeMenu
void CreateTitleScreenAtPlayModeMenu(void);
// CreateTitleScreenSkipToPlayModeMenu
void CreateTitleScreenAtSinglePlayerMenu(void);

#endif
