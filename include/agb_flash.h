
#ifndef GUARD_AGB_FLASH_512k_H
#define GUARD_AGB_FLASH_512k_H

#include "global.h"

vu16 *gTimerReg;

u16 IdentifyFlash(void);
void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size);
u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n);
u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void));
u16 (*EraseFlashSector)(u16);

#endif  // GUARD_AGB_FLASH_512k_H
