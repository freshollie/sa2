.include "asm/macros.inc"
.include "constants/constants.inc"

.syntax unified
.arm

	thumb_func_start sub_803143C
sub_803143C: @ 0x0803143C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r7, #0
	ldr r0, _0803157C @ =gLoadedSaveGame
	mov r8, r0
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0803146A
	movs r1, #0
_0803146A:
	lsls r0, r1, #0x18
	movs r1, #1
	str r1, [sp, #8]
	str r0, [sp, #0x74]
	cmp r0, #0
	bgt _0803147A
	movs r2, #0
	str r2, [sp, #8]
_0803147A:
	str r7, [sp, #4]
	ldr r0, _08031580 @ =0x040000D4
	add r1, sp, #4
	str r1, [r0]
	ldr r1, _08031584 @ =gMultiSioSend
	str r1, [r0, #4]
	ldr r1, _08031588 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r7, [sp, #4]
	add r2, sp, #4
	str r2, [r0]
	ldr r1, _0803158C @ =gMultiSioRecv
	str r1, [r0, #4]
	ldr r1, _08031590 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08031594 @ =gUnknown_030054D4
	strb r7, [r0, #3]
	strb r7, [r0, #2]
	strb r7, [r0, #1]
	strb r7, [r0]
	movs r0, #3
	bl m4aSongNumStart
	ldr r1, _08031598 @ =gDispCnt
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803159C @ =gBgCntRegs
	movs r4, #0
	ldr r0, _080315A0 @ =0x00001507
	strh r0, [r1, #4]
	ldr r0, _080315A4 @ =0x0000160E
	strh r0, [r1, #2]
	ldr r0, _080315A8 @ =0x00001403
	strh r0, [r1]
	ldr r0, _080315AC @ =gBgScrollRegs
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	ldr r0, _080315B0 @ =sub_8031C64
	movs r1, #0xf8
	lsls r1, r1, #2
	movs r2, #0x82
	lsls r2, r2, #7
	ldr r3, _080315B4 @ =sub_8034638
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r0, r3
	mov sl, r0
	mov r1, r8
	ldr r0, [r1]
	ldrb r1, [r0, #0x13]
	ldr r2, _080315B8 @ =IWRAM_START + 0x3CA
	adds r0, r3, r2
	strb r1, [r0]
	ldr r1, _080315BC @ =IWRAM_START + 0x3C1
	adds r0, r3, r1
	strb r5, [r0]
	subs r2, #6
	adds r1, r3, r2
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _080315C0 @ =IWRAM_START + 0x3C5
	adds r0, r3, r1
	strb r4, [r0]
	adds r2, #2
	adds r0, r3, r2
	strb r4, [r0]
	adds r1, #2
	adds r0, r3, r1
	strb r4, [r0]
	adds r2, #0xe
	adds r0, r3, r2
	str r7, [r0]
	adds r1, #7
	adds r0, r3, r1
	movs r1, #0xa6
	strh r1, [r0]
	subs r2, #4
	adds r0, r3, r2
	strh r1, [r0]
	ldr r1, _080315C4 @ =IWRAM_START + 0x3C8
	adds r0, r3, r1
	strb r4, [r0]
	adds r2, #0xc
	adds r0, r3, r2
	str r7, [r0]
	adds r1, #1
	adds r0, r3, r1
	strb r4, [r0]
	subs r2, #0x11
	adds r0, r3, r2
	strb r4, [r0]
	mov r0, sb
	cmp r0, #0
	beq _080315D4
	adds r1, #0xf
	adds r2, r3, r1
	movs r0, #0x66
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, #0xa2
	subs r0, r0, r1
	ldr r1, _080315C8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #8
	adds r0, #2
	str r0, [r2]
	ldr r2, _080315CC @ =IWRAM_START + 0x3C3
	adds r1, r3, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080315D0 @ =IWRAM_START + 0x3C0
	adds r1, r3, r0
	strb r5, [r1]
	cmp r5, #4
	bls _08031602
	movs r0, #4
	b _08031600
	.align 2, 0
_0803157C: .4byte gLoadedSaveGame
_08031580: .4byte 0x040000D4
_08031584: .4byte gMultiSioSend
_08031588: .4byte 0x85000005
_0803158C: .4byte gMultiSioRecv
_08031590: .4byte 0x85000014
_08031594: .4byte gUnknown_030054D4
_08031598: .4byte gDispCnt
_0803159C: .4byte gBgCntRegs
_080315A0: .4byte 0x00001507
_080315A4: .4byte 0x0000160E
_080315A8: .4byte 0x00001403
_080315AC: .4byte gBgScrollRegs
_080315B0: .4byte sub_8031C64
_080315B4: .4byte sub_8034638
_080315B8: .4byte IWRAM_START + 0x3CA
_080315BC: .4byte IWRAM_START + 0x3C1
_080315C0: .4byte IWRAM_START + 0x3C5
_080315C4: .4byte IWRAM_START + 0x3C8
_080315C8: .4byte 0x000003FF
_080315CC: .4byte IWRAM_START + 0x3C3
_080315D0: .4byte IWRAM_START + 0x3C0
_080315D4:
	ldr r1, _080319B8 @ =IWRAM_START + 0x3D8
	adds r2, r3, r1
	movs r0, #0x66
	adds r1, r6, #0
	muls r1, r0, r1
	movs r0, #0xb7
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _080319BC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #8
	adds r0, #4
	str r0, [r2]
	ldr r2, _080319C0 @ =IWRAM_START + 0x3C3
	adds r0, r3, r2
	strb r4, [r0]
	ldr r0, _080319C4 @ =IWRAM_START + 0x3C0
	adds r1, r3, r0
	strb r6, [r1]
	cmp r6, #3
	bls _08031602
	movs r0, #3
_08031600:
	strb r0, [r1]
_08031602:
	movs r7, #0
	movs r4, #0
	mov r1, sl
	strh r4, [r1]
	strh r4, [r1, #4]
	movs r2, #2
	mov r8, r2
	mov r0, r8
	strh r0, [r1, #2]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #6]
	movs r0, #0xff
	strh r0, [r1, #8]
	strh r4, [r1, #0xa]
	mov r0, sl
	bl sub_802D4CC
	mov r1, sl
	adds r1, #0x8c
	ldr r0, _080319C8 @ =0x0600C000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _080319CC @ =0x0600B000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0x63
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r0, #0x1e
	strh r0, [r1, #0x26]
	movs r0, #0x14
	strh r0, [r1, #0x28]
	mov r0, sl
	adds r0, #0xb6
	strb r7, [r0]
	movs r0, #1
	strh r0, [r1, #0x2e]
	adds r0, r1, #0
	bl sub_8002A3C
	mov r1, sl
	adds r1, #0xc
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _080319D0 @ =0x0600A000
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	ldr r0, _080319D4 @ =0x00000175
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	movs r5, #0x20
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	mov r0, sl
	adds r0, #0x36
	strb r7, [r0]
	strh r4, [r1, #0x2e]
	adds r0, r1, #0
	bl sub_8002A3C
	mov r1, sl
	adds r1, #0x4c
	ldr r0, _080319D8 @ =0x06004000
	str r0, [r1, #4]
	strh r4, [r1, #0xa]
	ldr r0, _080319DC @ =0x0600A800
	str r0, [r1, #0xc]
	strh r4, [r1, #0x18]
	strh r4, [r1, #0x1a]
	movs r0, #0xbb
	lsls r0, r0, #1
	strh r0, [r1, #0x1c]
	strh r4, [r1, #0x1e]
	strh r4, [r1, #0x20]
	strh r4, [r1, #0x22]
	strh r4, [r1, #0x24]
	strh r5, [r1, #0x26]
	strh r5, [r1, #0x28]
	mov r0, sl
	adds r0, #0x76
	strb r7, [r0]
	mov r2, r8
	strh r2, [r1, #0x2e]
	adds r0, r1, #0
	bl sub_8002A3C
	movs r5, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x88]
	ldr r1, _080319E0 @ =0x000002E5
	add r1, sl
	str r1, [sp, #0x8c]
	ldr r2, _080319E4 @ =0x000002E6
	add r2, sl
	str r2, [sp, #0x90]
	ldr r0, _080319E8 @ =0x000002E9
	add r0, sl
	str r0, [sp, #0x94]
	ldr r1, [sp, #8]
	lsls r1, r1, #0x18
	str r1, [sp, #0x70]
	movs r2, #0xa6
	lsls r2, r2, #1
	add r2, sl
	str r2, [sp, #0x60]
	ldr r0, _080319EC @ =0x0000014D
	add r0, sl
	str r0, [sp, #0x64]
	movs r1, #0xa7
	lsls r1, r1, #1
	add r1, sl
	str r1, [sp, #0x68]
	ldr r2, _080319F0 @ =0x00000151
	add r2, sl
	str r2, [sp, #0x6c]
	movs r0, #0xbe
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp, #0x78]
	ldr r1, _080319F4 @ =0x0000017D
	add r1, sl
	str r1, [sp, #0x7c]
	movs r2, #0xbf
	lsls r2, r2, #1
	add r2, sl
	str r2, [sp, #0x80]
	ldr r0, _080319F8 @ =0x00000181
	add r0, sl
	str r0, [sp, #0x84]
	movs r1, #0xdc
	lsls r1, r1, #1
	add r1, sl
	str r1, [sp, #0x98]
	ldr r2, _080319FC @ =0x000001B9
	add r2, sl
	str r2, [sp, #0x9c]
	movs r0, #0xdd
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp, #0xa0]
	ldr r1, _08031A00 @ =0x000001BD
	add r1, sl
	str r1, [sp, #0xa4]
	mov r2, sl
	adds r2, #0xcc
	str r2, [sp, #0x20]
	mov r0, sl
	adds r0, #0xec
	str r0, [sp, #0x24]
	mov r1, sl
	adds r1, #0xed
	str r1, [sp, #0x28]
	adds r2, #0x22
	str r2, [sp, #0x2c]
	adds r0, #5
	str r0, [sp, #0x30]
	movs r1, #0xc8
	lsls r1, r1, #2
	add r1, sl
	str r1, [sp, #0xa8]
	ldr r2, _08031A04 @ =0x00000321
	add r2, sl
	str r2, [sp, #0xac]
	ldr r0, _08031A08 @ =0x00000322
	add r0, sl
	str r0, [sp, #0xb0]
	ldr r1, _08031A0C @ =0x00000325
	add r1, sl
	str r1, [sp, #0xb4]
	movs r2, #0xd4
	lsls r2, r2, #2
	add r2, sl
	str r2, [sp, #0x10]
	ldr r0, _08031A10 @ =0x00000351
	add r0, sl
	str r0, [sp, #0x14]
	ldr r1, _08031A14 @ =0x00000352
	add r1, sl
	str r1, [sp, #0x18]
	ldr r2, _08031A18 @ =0x00000355
	add r2, sl
	str r2, [sp, #0x1c]
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x34]
	ldr r1, _08031A1C @ =0x00000381
	add r1, sl
	str r1, [sp, #0x38]
	ldr r2, _08031A20 @ =0x00000382
	add r2, sl
	str r2, [sp, #0x3c]
	ldr r0, _08031A24 @ =0x00000385
	add r0, sl
	str r0, [sp, #0x40]
	movs r1, #0xec
	lsls r1, r1, #2
	add r1, sl
	str r1, [sp, #0x50]
	ldr r2, _08031A28 @ =0x000003B1
	add r2, sl
	str r2, [sp, #0x54]
	ldr r0, _08031A2C @ =0x000003B2
	add r0, sl
	str r0, [sp, #0x58]
	ldr r1, _08031A30 @ =0x000003B5
	add r1, sl
	str r1, [sp, #0x5c]
	mov r2, sl
	adds r2, #0xfc
	str r2, [sp, #0x44]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp, #0x48]
	ldr r1, _08031A34 @ =0x0000011D
	add r1, sl
	str r1, [sp, #0x4c]
	movs r2, #0
	mov sb, r2
	ldr r0, _08031A38 @ =0x000002E1
	mov r8, r0
_080317D8:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r2, sl
	adds r7, r2, r0
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x10
	bl sub_8007C10
	str r0, [r7, #4]
	mov r0, r8
	strh r0, [r7, #0xa]
	adds r0, r7, #0
	adds r0, #0x20
	strb r5, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x21
	movs r2, #1
	rsbs r2, r2, #0
	adds r6, r2, #0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	mov r2, sb
	strb r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080317D8
	movs r7, #0xb1
	lsls r7, r7, #2
	add r7, sl
	movs r5, #0
	movs r4, #0
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x40
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r0, _08031A38 @ =0x000002E1
	strh r0, [r7, #0xa]
	movs r0, #5
	ldr r1, [sp, #0x88]
	strb r0, [r1]
	movs r0, #0xc0
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r2, [sp, #0x8c]
	ldrb r0, [r2]
	orrs r0, r6
	strb r0, [r2]
	movs r1, #0x10
	ldr r0, [sp, #0x90]
	strb r1, [r0]
	ldr r2, [sp, #0x94]
	strb r5, [r2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0x96
	lsls r7, r7, #1
	add r7, sl
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x24
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r3, _08031A3C @ =gUnknown_080D722C
	movs r1, #0xf0
	lsls r1, r1, #2
	add r1, sl
	str r1, [sp, #0xc]
	ldrb r0, [r1]
	ldr r1, [sp, #0x70]
	asrs r2, r1, #0x18
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, [sp, #0x60]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x64]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x68]
	strb r0, [r2]
	ldr r1, [sp, #0x6c]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xae
	lsls r7, r7, #1
	add r7, sl
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x40
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r1, _08031A40 @ =gUnknown_080D71D4
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0x78]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x7c]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x80]
	strb r0, [r2]
	ldr r1, [sp, #0x84]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xcc
	lsls r7, r7, #1
	add r7, sl
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x40
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r1, _08031A44 @ =gUnknown_080D71EC
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0x98]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x9c]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0xa0]
	strb r0, [r2]
	ldr r1, [sp, #0xa4]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	ldr r7, [sp, #0x20]
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	movs r0, #0x36
	b _08031A48
	.align 2, 0
_080319B8: .4byte IWRAM_START + 0x3D8
_080319BC: .4byte 0x000003FF
_080319C0: .4byte IWRAM_START + 0x3C3
_080319C4: .4byte IWRAM_START + 0x3C0
_080319C8: .4byte 0x0600C000
_080319CC: .4byte 0x0600B000
_080319D0: .4byte 0x0600A000
_080319D4: .4byte 0x00000175
_080319D8: .4byte 0x06004000
_080319DC: .4byte 0x0600A800
_080319E0: .4byte 0x000002E5
_080319E4: .4byte 0x000002E6
_080319E8: .4byte 0x000002E9
_080319EC: .4byte 0x0000014D
_080319F0: .4byte 0x00000151
_080319F4: .4byte 0x0000017D
_080319F8: .4byte 0x00000181
_080319FC: .4byte 0x000001B9
_08031A00: .4byte 0x000001BD
_08031A04: .4byte 0x00000321
_08031A08: .4byte 0x00000322
_08031A0C: .4byte 0x00000325
_08031A10: .4byte 0x00000351
_08031A14: .4byte 0x00000352
_08031A18: .4byte 0x00000355
_08031A1C: .4byte 0x00000381
_08031A20: .4byte 0x00000382
_08031A24: .4byte 0x00000385
_08031A28: .4byte 0x000003B1
_08031A2C: .4byte 0x000003B2
_08031A30: .4byte 0x000003B5
_08031A34: .4byte 0x0000011D
_08031A38: .4byte 0x000002E1
_08031A3C: .4byte gUnknown_080D722C
_08031A40: .4byte gUnknown_080D71D4
_08031A44: .4byte gUnknown_080D71EC
_08031A48:
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r1, _08031C40 @ =gUnknown_080D725C
	ldr r0, [sp, #0x74]
	asrs r2, r0, #0x16
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	ldr r1, [sp, #0x24]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x28]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	ldr r1, [sp, #0x30]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xc0
	lsls r7, r7, #2
	add r7, sl
	movs r0, #0x11
	mov r8, r0
	mov r1, r8
	strh r1, [r7, #0x16]
	movs r0, #0x12
	strh r0, [r7, #0x18]
	movs r0, #0x18
	bl sub_8007C10
	str r0, [r7, #4]
	ldr r2, _08031C44 @ =0x000002E2
	mov sb, r2
	mov r0, sb
	strh r0, [r7, #0xa]
	ldr r1, [sp, #0xa8]
	strb r5, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0xac]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0xb0]
	strb r0, [r2]
	ldr r1, [sp, #0xb4]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xcc
	lsls r7, r7, #2
	add r7, sl
	mov r0, r8
	strh r0, [r7, #0x16]
	movs r0, #0x8e
	strh r0, [r7, #0x18]
	movs r0, #0x18
	bl sub_8007C10
	str r0, [r7, #4]
	mov r1, sb
	strh r1, [r7, #0xa]
	ldr r2, [sp, #0x10]
	strb r5, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x14]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x18]
	strb r0, [r2]
	ldr r1, [sp, #0x1c]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xd8
	lsls r7, r7, #2
	add r7, sl
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	ldr r0, _08031C48 @ =0x06010400
	str r0, [r7, #4]
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r7, #0xa]
	movs r0, #0xa
	ldr r1, [sp, #0x34]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x38]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x3c]
	strb r0, [r2]
	ldr r1, [sp, #0x40]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r7, #0xe4
	lsls r7, r7, #2
	add r7, sl
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	ldr r0, _08031C4C @ =0x06012580
	str r0, [r7, #4]
	ldr r0, _08031C50 @ =0x000002E6
	strh r0, [r7, #0xa]
	ldr r0, [sp, #0x50]
	strb r5, [r0]
	movs r0, #0x40
	strh r0, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x54]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	movs r0, #0x10
	ldr r2, [sp, #0x58]
	strb r0, [r2]
	ldr r1, [sp, #0x5c]
	strb r5, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	ldr r7, [sp, #0x44]
	strh r4, [r7, #0x16]
	strh r4, [r7, #0x18]
	ldr r0, _08031C54 @ =0x06011000
	str r0, [r7, #4]
	ldr r1, _08031C58 @ =gUnknown_080D7204
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xa]
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, [sp, #0x48]
	strb r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x1a]
	strh r4, [r7, #8]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x1c]
	ldr r1, [sp, #0x4c]
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x22
	movs r2, #0x10
	strb r2, [r0]
	adds r0, #3
	strb r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x28]
	str r4, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	movs r5, #0
	ldr r2, _08031C5C @ =gObjPalette
	movs r1, #0
_08031C10:
	adds r0, r5, #0
	adds r0, #0xf0
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08031C10
	ldr r0, _08031C60 @ =gFlags
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031C40: .4byte gUnknown_080D725C
_08031C44: .4byte 0x000002E2
_08031C48: .4byte 0x06010400
_08031C4C: .4byte 0x06012580
_08031C50: .4byte 0x000002E6
_08031C54: .4byte 0x06011000
_08031C58: .4byte gUnknown_080D7204
_08031C5C: .4byte gObjPalette
_08031C60: .4byte gFlags

	thumb_func_start sub_8031C64
sub_8031C64: @ 0x08031C64
	push {r4, lr}
	ldr r0, _08031CC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r4, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r4, r0
	ldr r0, _08031CC4 @ =IWRAM_START + 0x3D4
	adds r1, r4, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x17
	bls _08031C88
	movs r0, #0
	str r0, [r1]
	ldr r0, _08031CC8 @ =sub_8031CD8
	str r0, [r2, #8]
_08031C88:
	adds r0, r3, #0
	bl sub_802D4CC
	ldr r1, _08031CCC @ =IWRAM_START + 0x300
	adds r0, r4, r1
	bl sub_80051E8
	ldr r1, _08031CD0 @ =IWRAM_START + 0x330
	adds r0, r4, r1
	bl sub_80051E8
	ldr r1, _08031CD4 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031CC0: .4byte gCurTask
_08031CC4: .4byte IWRAM_START + 0x3D4
_08031CC8: .4byte sub_8031CD8
_08031CCC: .4byte IWRAM_START + 0x300
_08031CD0: .4byte IWRAM_START + 0x330
_08031CD4: .4byte gBgScrollRegs

	thumb_func_start sub_8031CD8
sub_8031CD8: @ 0x08031CD8
	push {r4, r5, r6, lr}
	ldr r1, _08031D3C @ =gCurTask
	ldr r0, [r1]
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r4, r0
	ldr r2, _08031D40 @ =IWRAM_START + 0x3D4
	adds r0, r4, r2
	ldr r3, [r0]
	adds r3, #1
	str r3, [r0]
	adds r6, r1, #0
	cmp r3, #0x3c
	bhi _08031D0A
	ldr r0, _08031D44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031D8C
	ldr r0, _08031D48 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08031D8C
_08031D0A:
	ldr r3, _08031D4C @ =IWRAM_START + 0x3C5
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08031D50 @ =IWRAM_START + 0x3D8
	adds r2, r4, r0
	ldr r1, _08031D54 @ =IWRAM_START + 0x3C0
	adds r0, r4, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #9
	rsbs r1, r0, #0
	str r1, [r2]
	subs r3, #2
	adds r0, r4, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031D58
	adds r0, r1, #2
	b _08031D5A
	.align 2, 0
_08031D3C: .4byte gCurTask
_08031D40: .4byte IWRAM_START + 0x3D4
_08031D44: .4byte gPressedKeys
_08031D48: .4byte gGameMode
_08031D4C: .4byte IWRAM_START + 0x3C5
_08031D50: .4byte IWRAM_START + 0x3D8
_08031D54: .4byte IWRAM_START + 0x3C0
_08031D58:
	adds r0, r1, #4
_08031D5A:
	str r0, [r2]
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _08031D84 @ =0x0003FFFF
	ands r0, r1
	str r0, [r2]
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	ldr r1, [r6]
	ldr r0, _08031D88 @ =sub_8031E10
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8033078
	b _08031DE6
	.align 2, 0
_08031D84: .4byte 0x0003FFFF
_08031D88: .4byte sub_8031E10
_08031D8C:
	ldr r2, _08031DC4 @ =gSineTable
	adds r0, r3, #4
	lsls r0, r0, #2
	ldr r1, _08031DC8 @ =0x000003FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #3
	bl Div
	movs r3, #0xf6
	lsls r3, r3, #2
	adds r2, r5, r3
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	subs r3, #0x15
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08031DCC
	adds r0, r1, #6
	b _08031DD0
	.align 2, 0
_08031DC4: .4byte gSineTable
_08031DC8: .4byte 0x000003FF
_08031DCC:
	adds r0, r1, #0
	adds r0, #0xc
_08031DD0:
	str r0, [r2]
	movs r1, #0xf6
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r1, [r0]
	ldr r2, _08031E08 @ =0x0003FFFF
	ands r1, r2
	str r1, [r0]
	adds r0, r5, #0
	bl sub_8032E38
_08031DE6:
	ldr r1, _08031E0C @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031E08: .4byte 0x0003FFFF
_08031E0C: .4byte gBgScrollRegs

	thumb_func_start sub_8031E10
sub_8031E10: @ 0x08031E10
	push {r4, r5, lr}
	ldr r5, _08031E4C @ =gCurTask
	ldr r0, [r5]
	ldrh r2, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r2, r0
	ldr r0, _08031E50 @ =IWRAM_START + 0x3D4
	adds r3, r2, r0
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	subs r0, #0xf
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	cmp r1, #0xf
	bls _08031E58
	adds r0, #1
	strb r0, [r2]
	movs r0, #0
	str r0, [r3]
	ldr r1, [r5]
	ldr r0, _08031E54 @ =sub_8031E84
	str r0, [r1, #8]
	adds r0, r4, #0
	bl sub_803353C
	b _08031E5E
	.align 2, 0
_08031E4C: .4byte gCurTask
_08031E50: .4byte IWRAM_START + 0x3D4
_08031E54: .4byte sub_8031E84
_08031E58:
	adds r0, r4, #0
	bl sub_8033078
_08031E5E:
	ldr r1, _08031E80 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031E80: .4byte gBgScrollRegs

	thumb_func_start sub_8031E84
sub_8031E84: @ 0x08031E84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _08031F04 @ =gCurTask
	ldr r0, [r3]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r0, _08031F08 @ =IWRAM_START + 0x3C5
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r0, #0x3f
	ands r0, r2
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08031F0C @ =gGameMode
	ldrb r1, [r0]
	mov ip, r3
	mov r8, r0
	cmp r1, #2
	bhi _08031EB2
	b _08031FB0
_08031EB2:
	movs r3, #0
	ldr r0, _08031F10 @ =gUnknown_030055B8
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _08031F4A
	movs r6, #1
	ldr r2, _08031F14 @ =gUnknown_030054D4
_08031EC6:
	ldr r1, _08031F18 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08031F34
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08031F38
	movs r0, #0
	ldr r1, _08031F1C @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08031F20 @ =gUnknown_03002AE4
	ldr r0, _08031F24 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08031F28 @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08031F2C @ =gUnknown_03004D5C
	ldr r0, _08031F30 @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _080324E8
	.align 2, 0
_08031F04: .4byte gCurTask
_08031F08: .4byte IWRAM_START + 0x3C5
_08031F0C: .4byte gGameMode
_08031F10: .4byte gUnknown_030055B8
_08031F14: .4byte gUnknown_030054D4
_08031F18: .4byte gMultiSioStatusFlags
_08031F1C: .4byte 0x0000FFFF
_08031F20: .4byte gUnknown_03002AE4
_08031F24: .4byte gUnknown_0300287C
_08031F28: .4byte gUnknown_03005390
_08031F2C: .4byte gUnknown_03004D5C
_08031F30: .4byte gUnknown_03002A84
_08031F34:
	movs r0, #0
	strb r0, [r2]
_08031F38:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _08031F4A
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _08031EC6
_08031F4A:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bls _08031FB0
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	ldr r4, _08031FA4 @ =0x00004020
	mov ip, r4
	adds r6, r1, #0
_08031F64:
	ldr r0, _08031FA8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08031F98
	ldrb r0, [r7]
	asrs r0, r3
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq _08031F98
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _08031FAC @ =gMultiSioRecv
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, ip
	bls _08031F98
	adds r1, r4, #0
	ldrb r2, [r2, #2]
	lsls r1, r2
	ldr r0, [r6]
	orrs r0, r1
	str r0, [r6]
_08031F98:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08031F64
	b _08032008
	.align 2, 0
_08031FA4: .4byte 0x00004020
_08031FA8: .4byte 0x04000128
_08031FAC: .4byte gMultiSioRecv
_08031FB0:
	ldr r0, _08031FFC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08031FC6
	ldr r1, _08032000 @ =0x000003C9
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032008
_08031FC6:
	movs r1, #0
	strh r1, [r5]
	strh r1, [r5, #4]
	movs r0, #1
	strh r0, [r5, #2]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r1, [r5, #0xa]
	mov r2, ip
	ldr r1, [r2]
	ldr r0, _08032004 @ =sub_8032D9C
	str r0, [r1, #8]
	ldr r3, _08032000 @ =0x000003C9
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031FF4
	movs r0, #0x6b
	bl m4aSongNumStart
_08031FF4:
	adds r0, r5, #0
	bl sub_803353C
	b _080324E8
	.align 2, 0
_08031FFC: .4byte gPressedKeys
_08032000: .4byte 0x000003C9
_08032004: .4byte sub_8032D9C
_08032008:
	movs r4, #0xf2
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrb r4, [r0]
	cmp r4, #0
	beq _080320CC
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r1, _080320A8 @ =gUnknown_080D7218
	ldr r0, _080320AC @ =0x000003C1
	adds r3, r5, r0
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xa]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, _080320B0 @ =0x0000011D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r4, r5, r1
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r1, r5, r4
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, _080320B4 @ =0x00000381
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _080320B8 @ =gSelectedCharacter
	ldrb r0, [r3]
	strb r0, [r1]
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r5, r1
	str r2, [r0]
	strh r2, [r5]
	strh r2, [r5, #4]
	movs r0, #1
	strh r0, [r5, #2]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r2, [r5, #0xa]
	ldr r1, _080320BC @ =gUnknown_080D7278
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _080320C0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _0803209E
	b _08032334
_0803209E:
	ldr r0, _080320C4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080320C8 @ =sub_8033F38
	b _0803233A
	.align 2, 0
_080320A8: .4byte gUnknown_080D7218
_080320AC: .4byte 0x000003C1
_080320B0: .4byte 0x0000011D
_080320B4: .4byte 0x00000381
_080320B8: .4byte gSelectedCharacter
_080320BC: .4byte gUnknown_080D7278
_080320C0: .4byte gGameMode
_080320C4: .4byte gCurTask
_080320C8: .4byte sub_8033F38
_080320CC:
	ldr r0, _08032154 @ =gInput
	ldrh r1, [r0]
	movs r6, #0x60
	ands r6, r1
	cmp r6, #0
	beq _0803217C
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r1, _08032158 @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	bne _080320F4
	movs r3, #0xf6
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0x9a
	lsls r0, r0, #0xa
	str r0, [r1]
_080320F4:
	ldr r1, _0803215C @ =0x000003C5
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _08032160 @ =0x000003C6
	adds r1, r5, r2
	movs r0, #0xc
	strb r0, [r1]
	ldr r3, _08032164 @ =0x000003C1
	adds r2, r5, r3
	ldrb r1, [r2]
	adds r3, #1
	adds r0, r5, r3
	strb r1, [r0]
	ldr r3, _08032168 @ =gUnknown_080D7282
	ldr r1, _0803216C @ =0x000003C3
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r1, #2
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r2]
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r5, r2
	str r4, [r0]
	movs r3, #0xf1
	lsls r3, r3, #2
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _08032170 @ =0x000003CB
	adds r0, r5, r1
	strb r4, [r0]
	subs r2, #0xd4
	adds r4, r5, r2
	ldr r0, _08032174 @ =0x000002E2
	strh r0, [r4, #0xa]
	subs r3, #0xa4
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, _08032178 @ =0x00000321
	adds r1, r5, r4
	b _0803247A
	.align 2, 0
_08032154: .4byte gInput
_08032158: .4byte 0xFF00FF00
_0803215C: .4byte 0x000003C5
_08032160: .4byte 0x000003C6
_08032164: .4byte 0x000003C1
_08032168: .4byte gUnknown_080D7282
_0803216C: .4byte 0x000003C3
_08032170: .4byte 0x000003CB
_08032174: .4byte 0x000002E2
_08032178: .4byte 0x00000321
_0803217C:
	movs r0, #0x90
	ands r0, r1
	cmp r0, #0
	beq _08032218
	ldr r1, _080321F4 @ =0x000003C5
	adds r0, r5, r1
	strb r6, [r0]
	ldr r2, _080321F8 @ =0x000003C7
	adds r1, r5, r2
	movs r0, #0xc
	strb r0, [r1]
	ldr r3, _080321FC @ =0x000003C1
	adds r2, r5, r3
	ldrb r1, [r2]
	ldr r4, _08032200 @ =0x000003C2
	adds r0, r5, r4
	strb r1, [r0]
	ldr r3, _08032204 @ =gUnknown_080D7282
	ldr r1, _08032208 @ =0x000003C3
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r4, [r2]
	adds r0, r0, r4
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r2]
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r5, r1
	str r6, [r0]
	movs r2, #0xf1
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r6, [r0]
	ldr r3, _0803220C @ =0x000003CB
	adds r0, r5, r3
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r4, r5, r0
	subs r0, #0x4e
	strh r0, [r4, #0xa]
	subs r2, #0x74
	adds r0, r5, r2
	strb r1, [r0]
	subs r3, #0x7a
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r0, _08032210 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032214 @ =sub_803274C
	b _0803248A
	.align 2, 0
_080321F4: .4byte 0x000003C5
_080321F8: .4byte 0x000003C7
_080321FC: .4byte 0x000003C1
_08032200: .4byte 0x000003C2
_08032204: .4byte gUnknown_080D7282
_08032208: .4byte 0x000003C3
_0803220C: .4byte 0x000003CB
_08032210: .4byte gCurTask
_08032214: .4byte sub_803274C
_08032218:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #2
	bhi _08032254
	ldr r0, _08032248 @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08032230
	b _080324B0
_08032230:
	ldr r1, _0803224C @ =0x000003CA
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r3, _08032250 @ =0x000003C1
	adds r1, r5, r3
	ldrb r1, [r1]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	bne _0803227A
	b _080324B0
	.align 2, 0
_08032248: .4byte gPressedKeys
_0803224C: .4byte 0x000003CA
_08032250: .4byte 0x000003C1
_08032254:
	ldr r0, _0803230C @ =gPressedKeys
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0803234C
	movs r4, #0xf7
	lsls r4, r4, #2
	adds r2, r5, r4
	ldr r1, _08032310 @ =0x000003C1
	adds r0, r5, r1
	adds r1, r3, #0
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0803234C
_0803227A:
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r1, _08032314 @ =gUnknown_080D7218
	ldr r2, _08032310 @ =0x000003C1
	adds r3, r5, r2
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r4, #0xa]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r0, r5, r4
	strb r1, [r0]
	ldr r0, _08032318 @ =0x0000011D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r4, r5, r1
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r4, #0xa]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r1, r5, r4
	movs r0, #0xb
	strb r0, [r1]
	ldr r0, _0803231C @ =0x00000381
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldr r1, _08032320 @ =gSelectedCharacter
	ldrb r0, [r3]
	strb r0, [r1]
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r5, r1
	str r2, [r0]
	strh r2, [r5]
	strh r2, [r5, #4]
	movs r0, #1
	strh r0, [r5, #2]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r5, #6]
	movs r0, #0xff
	strh r0, [r5, #8]
	strh r2, [r5, #0xa]
	ldr r1, _08032324 @ =gUnknown_080D7278
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _08032328 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _08032334
	ldr r0, _0803232C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032330 @ =sub_8033F38
	b _0803233A
	.align 2, 0
_0803230C: .4byte gPressedKeys
_08032310: .4byte 0x000003C1
_08032314: .4byte gUnknown_080D7218
_08032318: .4byte 0x0000011D
_0803231C: .4byte 0x00000381
_08032320: .4byte gSelectedCharacter
_08032324: .4byte gUnknown_080D7278
_08032328: .4byte gGameMode
_0803232C: .4byte gCurTask
_08032330: .4byte sub_8033F38
_08032334:
	ldr r0, _08032344 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032348 @ =sub_8032AF4
_0803233A:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_8033C64
	b _080324B6
	.align 2, 0
_08032344: .4byte gCurTask
_08032348: .4byte sub_8032AF4
_0803234C:
	ldr r0, _080323E4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08032356
	b _080324B0
_08032356:
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r3, _080323E8 @ =0x000003C1
	adds r4, r5, r3
	movs r7, #1
	adds r1, r7, #0
	ldrb r2, [r4]
	lsls r1, r2
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08032372
	b _080324B0
_08032372:
	adds r3, #0xa
	adds r6, r5, r3
	ldrb r3, [r6]
	cmp r3, #0
	beq _08032408
	ldr r1, _080323EC @ =0x000003C5
	adds r0, r5, r1
	movs r2, #0
	strb r2, [r0]
	ldr r3, _080323F0 @ =0x000003C7
	adds r1, r5, r3
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r4]
	subs r3, #5
	adds r0, r5, r3
	strb r1, [r0]
	ldr r3, _080323F4 @ =gUnknown_080D7282
	ldr r1, _080323F8 @ =0x000003C3
	adds r0, r5, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r4]
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r0, r5, r3
	str r2, [r0]
	movs r4, #0xf1
	lsls r4, r4, #2
	adds r0, r5, r4
	strb r2, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r4, r5, r0
	subs r0, #0x4e
	strh r0, [r4, #0xa]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r7, [r0]
	ldr r2, _080323FC @ =0x00000351
	adds r1, r5, r2
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r0, _08032400 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032404 @ =sub_803274C
	b _0803248A
	.align 2, 0
_080323E4: .4byte gGameMode
_080323E8: .4byte 0x000003C1
_080323EC: .4byte 0x000003C5
_080323F0: .4byte 0x000003C7
_080323F4: .4byte gUnknown_080D7282
_080323F8: .4byte 0x000003C3
_080323FC: .4byte 0x00000351
_08032400: .4byte gCurTask
_08032404: .4byte sub_803274C
_08032408:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r1, _08032494 @ =0xFF00FF00
	ands r0, r1
	cmp r0, #0
	bne _08032424
	movs r2, #0xf6
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0x9a
	lsls r0, r0, #0xa
	str r0, [r1]
_08032424:
	ldr r1, _08032498 @ =0x000003C5
	adds r0, r5, r1
	strb r3, [r0]
	ldr r2, _0803249C @ =0x000003C6
	adds r1, r5, r2
	movs r0, #0xc
	strb r0, [r1]
	ldrb r1, [r4]
	subs r2, #4
	adds r0, r5, r2
	strb r1, [r0]
	ldr r2, _080324A0 @ =gUnknown_080D7282
	ldr r1, _080324A4 @ =0x000003C3
	adds r0, r5, r1
	ldrb r1, [r0]
	adds r1, #2
	lsls r0, r1, #2
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4]
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r5, r2
	str r3, [r0]
	movs r4, #0xf1
	lsls r4, r4, #2
	adds r0, r5, r4
	strb r3, [r0]
	strb r3, [r6]
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r5, r0
	subs r0, #0x1e
	strh r0, [r4, #0xa]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r7, [r0]
	subs r2, #0xb3
	adds r1, r5, r2
_0803247A:
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0x67
	bl m4aSongNumStart
	ldr r0, _080324A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080324AC @ =sub_8032508
_0803248A:
	str r0, [r1, #8]
	adds r0, r5, #0
	bl sub_803353C
	b _080324B6
	.align 2, 0
_08032494: .4byte 0xFF00FF00
_08032498: .4byte 0x000003C5
_0803249C: .4byte 0x000003C6
_080324A0: .4byte gUnknown_080D7282
_080324A4: .4byte 0x000003C3
_080324A8: .4byte gCurTask
_080324AC: .4byte sub_8032508
_080324B0:
	adds r0, r5, #0
	bl sub_803353C
_080324B6:
	ldr r0, _080324F4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _080324CC
	ldr r2, _080324F8 @ =gMultiSioSend
	ldr r0, _080324FC @ =0x00004020
	strh r0, [r2]
	ldr r3, _08032500 @ =0x000003C1
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r2, #2]
_080324CC:
	ldr r1, _08032504 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
_080324E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324F4: .4byte gGameMode
_080324F8: .4byte gMultiSioSend
_080324FC: .4byte 0x00004020
_08032500: .4byte 0x000003C1
_08032504: .4byte gBgScrollRegs

	thumb_func_start sub_8032508
sub_8032508: @ 0x08032508
	push {r4, r5, r6, r7, lr}
	ldr r0, _08032568 @ =gGameMode
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #2
	bls _080325A6
	movs r3, #0
	ldr r0, _0803256C @ =gUnknown_030055B8
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _080325A6
	movs r5, #1
	ldr r2, _08032570 @ =gUnknown_030054D4
_08032528:
	ldr r1, _08032574 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08032590
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08032594
	movs r0, #0
	ldr r1, _08032578 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _0803257C @ =gUnknown_03002AE4
	ldr r0, _08032580 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08032584 @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08032588 @ =gUnknown_03004D5C
	ldr r0, _0803258C @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _08032726
	.align 2, 0
_08032568: .4byte gGameMode
_0803256C: .4byte gUnknown_030055B8
_08032570: .4byte gUnknown_030054D4
_08032574: .4byte gMultiSioStatusFlags
_08032578: .4byte 0x0000FFFF
_0803257C: .4byte gUnknown_03002AE4
_08032580: .4byte gUnknown_0300287C
_08032584: .4byte gUnknown_03005390
_08032588: .4byte gUnknown_03004D5C
_0803258C: .4byte gUnknown_03002A84
_08032590:
	movs r0, #0
	strb r0, [r2]
_08032594:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _080325A6
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _08032528
_080325A6:
	ldr r0, _08032638 @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r0, _0803263C @ =IWRAM_START + 0x3D4
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r6, r0, #0
	ldr r2, _08032640 @ =IWRAM_START + 0x3C4
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08032644 @ =IWRAM_START + 0x3C6
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080325F4
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080325F4
	subs r2, #0xc4
	adds r1, r3, r2
	movs r2, #0
	ldr r0, _08032648 @ =0x000002E2
	strh r0, [r1, #0xa]
	ldr r1, _0803264C @ =IWRAM_START + 0x320
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08032650 @ =IWRAM_START + 0x321
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_080325F4:
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _08032654 @ =gUnknown_080D7296
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, _08032658 @ =0x0003FFFF
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r7]
	cmp r0, #2
	bhi _08032668
	ldr r2, _0803265C @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080326AA
	ldr r1, _08032660 @ =0x000003CA
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _08032664 @ =0x000003C1
	adds r1, r5, r2
	ldrb r1, [r1]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	bne _08032690
	b _080326AA
	.align 2, 0
_08032638: .4byte gCurTask
_0803263C: .4byte IWRAM_START + 0x3D4
_08032640: .4byte IWRAM_START + 0x3C4
_08032644: .4byte IWRAM_START + 0x3C6
_08032648: .4byte 0x000002E2
_0803264C: .4byte IWRAM_START + 0x320
_08032650: .4byte IWRAM_START + 0x321
_08032654: .4byte gUnknown_080D7296
_08032658: .4byte 0x0003FFFF
_0803265C: .4byte gPressedKeys
_08032660: .4byte 0x000003CA
_08032664: .4byte 0x000003C1
_08032668:
	ldr r2, _0803269C @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080326A4
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _080326A0 @ =0x000003C1
	adds r0, r5, r1
	adds r1, r3, #0
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080326A4
_08032690:
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	b _080326C8
	.align 2, 0
_0803269C: .4byte gPressedKeys
_080326A0: .4byte 0x000003C1
_080326A4:
	ldrb r0, [r7]
	cmp r0, #2
	bhi _080326C8
_080326AA:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080326C8
	ldr r0, _0803272C @ =0x000003C9
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080326C4
	movs r0, #0x6b
	bl m4aSongNumStart
_080326C4:
	movs r0, #1
	strb r0, [r4]
_080326C8:
	cmp r6, #9
	bls _080326EE
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, _08032730 @ =0x000003C1
	adds r0, r5, r2
	ldrb r1, [r0]
	cmp r1, #0
	bne _080326E6
	adds r2, #0x17
	adds r0, r5, r2
	str r1, [r0]
_080326E6:
	ldr r0, _08032734 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032738 @ =sub_8032990
	str r0, [r1, #8]
_080326EE:
	adds r0, r5, #0
	bl sub_803353C
	ldr r1, _0803273C @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _08032740 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _08032726
	ldr r1, _08032744 @ =gMultiSioSend
	ldr r0, _08032748 @ =0x00004020
	strh r0, [r1]
	ldr r2, _08032730 @ =0x000003C1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08032726:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803272C: .4byte 0x000003C9
_08032730: .4byte 0x000003C1
_08032734: .4byte gCurTask
_08032738: .4byte sub_8032990
_0803273C: .4byte gBgScrollRegs
_08032740: .4byte gGameMode
_08032744: .4byte gMultiSioSend
_08032748: .4byte 0x00004020

	thumb_func_start sub_803274C
sub_803274C: @ 0x0803274C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080327AC @ =gGameMode
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #2
	bls _080327EA
	movs r3, #0
	ldr r0, _080327B0 @ =gUnknown_030055B8
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _080327EA
	movs r5, #1
	ldr r2, _080327B4 @ =gUnknown_030054D4
_0803276C:
	ldr r1, _080327B8 @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080327D4
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080327D8
	movs r0, #0
	ldr r1, _080327BC @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080327C0 @ =gUnknown_03002AE4
	ldr r0, _080327C4 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080327C8 @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080327CC @ =gUnknown_03004D5C
	ldr r0, _080327D0 @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _0803296A
	.align 2, 0
_080327AC: .4byte gGameMode
_080327B0: .4byte gUnknown_030055B8
_080327B4: .4byte gUnknown_030054D4
_080327B8: .4byte gMultiSioStatusFlags
_080327BC: .4byte 0x0000FFFF
_080327C0: .4byte gUnknown_03002AE4
_080327C4: .4byte gUnknown_0300287C
_080327C8: .4byte gUnknown_03005390
_080327CC: .4byte gUnknown_03004D5C
_080327D0: .4byte gUnknown_03002A84
_080327D4:
	movs r0, #0
	strb r0, [r2]
_080327D8:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _080327EA
	ldrb r0, [r6]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _0803276C
_080327EA:
	ldr r0, _0803287C @ =gCurTask
	ldr r0, [r0]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r3, r0
	ldr r0, _08032880 @ =IWRAM_START + 0x3D4
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r6, r0, #0
	ldr r2, _08032884 @ =IWRAM_START + 0x3C4
	adds r1, r3, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08032888 @ =IWRAM_START + 0x3C7
	adds r1, r3, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08032838
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032838
	subs r2, #0x94
	adds r1, r3, r2
	movs r2, #0
	ldr r0, _0803288C @ =0x000002E2
	strh r0, [r1, #0xa]
	ldr r1, _08032890 @ =IWRAM_START + 0x350
	adds r0, r3, r1
	strb r2, [r0]
	ldr r2, _08032894 @ =IWRAM_START + 0x351
	adds r1, r3, r2
	movs r0, #0xff
	strb r0, [r1]
_08032838:
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _08032898 @ =gUnknown_080D7296
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [r2]
	subs r0, r0, r1
	ldr r1, _0803289C @ =0x0003FFFF
	ands r0, r1
	str r0, [r2]
	ldrb r0, [r7]
	cmp r0, #2
	bhi _080328AC
	ldr r2, _080328A0 @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080328EE
	ldr r1, _080328A4 @ =0x000003CA
	adds r0, r5, r1
	ldrb r0, [r0]
	ldr r2, _080328A8 @ =0x000003C1
	adds r1, r5, r2
	ldrb r1, [r1]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	bne _080328D4
	b _080328EE
	.align 2, 0
_0803287C: .4byte gCurTask
_08032880: .4byte IWRAM_START + 0x3D4
_08032884: .4byte IWRAM_START + 0x3C4
_08032888: .4byte IWRAM_START + 0x3C7
_0803288C: .4byte 0x000002E2
_08032890: .4byte IWRAM_START + 0x350
_08032894: .4byte IWRAM_START + 0x351
_08032898: .4byte gUnknown_080D7296
_0803289C: .4byte 0x0003FFFF
_080328A0: .4byte gPressedKeys
_080328A4: .4byte 0x000003CA
_080328A8: .4byte 0x000003C1
_080328AC:
	ldr r2, _080328E0 @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080328E8
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _080328E4 @ =0x000003C1
	adds r0, r5, r1
	adds r1, r3, #0
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _080328E8
_080328D4:
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	b _0803290C
	.align 2, 0
_080328E0: .4byte gPressedKeys
_080328E4: .4byte 0x000003C1
_080328E8:
	ldrb r0, [r7]
	cmp r0, #2
	bhi _0803290C
_080328EE:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803290C
	ldr r0, _08032970 @ =0x000003C9
	adds r4, r5, r0
	ldrb r0, [r4]
	cmp r0, #0
	bne _08032908
	movs r0, #0x6b
	bl m4aSongNumStart
_08032908:
	movs r0, #1
	strb r0, [r4]
_0803290C:
	cmp r6, #9
	bls _08032932
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, _08032974 @ =0x000003C1
	adds r0, r5, r2
	ldrb r1, [r0]
	cmp r1, #0
	bne _0803292A
	adds r2, #0x17
	adds r0, r5, r2
	str r1, [r0]
_0803292A:
	ldr r0, _08032978 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0803297C @ =sub_8032990
	str r0, [r1, #8]
_08032932:
	adds r0, r5, #0
	bl sub_803353C
	ldr r1, _08032980 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _08032984 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _0803296A
	ldr r1, _08032988 @ =gMultiSioSend
	ldr r0, _0803298C @ =0x00004020
	strh r0, [r1]
	ldr r2, _08032974 @ =0x000003C1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
_0803296A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032970: .4byte 0x000003C9
_08032974: .4byte 0x000003C1
_08032978: .4byte gCurTask
_0803297C: .4byte sub_8032990
_08032980: .4byte gBgScrollRegs
_08032984: .4byte gGameMode
_08032988: .4byte gMultiSioSend
_0803298C: .4byte 0x00004020

	thumb_func_start sub_8032990
sub_8032990: @ 0x08032990
	push {r4, r5, r6, lr}
	ldr r2, _08032A40 @ =gCurTask
	ldr r0, [r2]
	ldrh r3, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r3, r0
	ldr r0, _08032A44 @ =IWRAM_START + 0x3D4
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r5, r0, #0
	ldr r0, _08032A48 @ =IWRAM_START + 0x3C4
	adds r1, r3, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08032A4C @ =IWRAM_START + 0x3C6
	adds r1, r3, r0
	ldrb r0, [r1]
	adds r6, r2, #0
	cmp r0, #0
	beq _080329E2
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080329E2
	ldr r1, _08032A50 @ =IWRAM_START + 0x300
	adds r2, r3, r1
	movs r1, #0
	ldr r0, _08032A54 @ =0x000002E2
	strh r0, [r2, #0xa]
	ldr r2, _08032A58 @ =IWRAM_START + 0x320
	adds r0, r3, r2
	strb r1, [r0]
	ldr r0, _08032A5C @ =IWRAM_START + 0x321
	adds r1, r3, r0
	movs r0, #0xff
	strb r0, [r1]
_080329E2:
	ldr r2, _08032A60 @ =0x000003C7
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _08032A12
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032A12
	movs r3, #0xcc
	lsls r3, r3, #2
	adds r2, r4, r3
	movs r1, #0
	ldr r0, _08032A54 @ =0x000002E2
	strh r0, [r2, #0xa]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r1, [r0]
	adds r3, #0x21
	adds r1, r4, r3
	movs r0, #0xff
	strb r0, [r1]
_08032A12:
	ldr r0, _08032A64 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08032A74
	ldr r0, _08032A68 @ =gPressedKeys
	ldrh r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08032AA4
	ldr r1, _08032A6C @ =0x000003CA
	adds r0, r4, r1
	ldrb r0, [r0]
	ldr r3, _08032A70 @ =0x000003C1
	adds r1, r4, r3
	ldrb r1, [r1]
	asrs r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08032A9A
	b _08032AA4
	.align 2, 0
_08032A40: .4byte gCurTask
_08032A44: .4byte IWRAM_START + 0x3D4
_08032A48: .4byte IWRAM_START + 0x3C4
_08032A4C: .4byte IWRAM_START + 0x3C6
_08032A50: .4byte IWRAM_START + 0x300
_08032A54: .4byte 0x000002E2
_08032A58: .4byte IWRAM_START + 0x320
_08032A5C: .4byte IWRAM_START + 0x321
_08032A60: .4byte 0x000003C7
_08032A64: .4byte gGameMode
_08032A68: .4byte gPressedKeys
_08032A6C: .4byte 0x000003CA
_08032A70: .4byte 0x000003C1
_08032A74:
	ldr r0, _08032AE0 @ =gPressedKeys
	ldrh r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08032AA4
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r1, _08032AE4 @ =0x000003C1
	adds r0, r4, r1
	adds r1, r3, #0
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08032AA4
_08032A9A:
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
_08032AA4:
	cmp r5, #5
	bls _08032AB8
	ldr r3, _08032AE8 @ =0x000003C5
	adds r1, r4, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, [r6]
	ldr r0, _08032AEC @ =sub_8031E84
	str r0, [r1, #8]
_08032AB8:
	adds r0, r4, #0
	bl sub_803353C
	ldr r1, _08032AF0 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032AE0: .4byte gPressedKeys
_08032AE4: .4byte 0x000003C1
_08032AE8: .4byte 0x000003C5
_08032AEC: .4byte sub_8031E84
_08032AF0: .4byte gBgScrollRegs

	thumb_func_start sub_8032AF4
sub_8032AF4: @ 0x08032AF4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08032B64 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	mov r8, r5
	ldr r0, _08032B68 @ =gGameMode
	ldrb r1, [r0]
	mov ip, r0
	cmp r1, #2
	bls _08032BFC
	movs r3, #0
	ldr r0, _08032B6C @ =gUnknown_030055B8
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _08032BA6
	movs r6, #1
	ldr r2, _08032B70 @ =gUnknown_030054D4
_08032B26:
	ldr r1, _08032B74 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08032B90
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08032B94
	movs r0, #0
	ldr r1, _08032B78 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08032B7C @ =gUnknown_03002AE4
	ldr r0, _08032B80 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08032B84 @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08032B88 @ =gUnknown_03004D5C
	ldr r0, _08032B8C @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _08032D8E
	.align 2, 0
_08032B64: .4byte gCurTask
_08032B68: .4byte gGameMode
_08032B6C: .4byte gUnknown_030055B8
_08032B70: .4byte gUnknown_030054D4
_08032B74: .4byte gMultiSioStatusFlags
_08032B78: .4byte 0x0000FFFF
_08032B7C: .4byte gUnknown_03002AE4
_08032B80: .4byte gUnknown_0300287C
_08032B84: .4byte gUnknown_03005390
_08032B88: .4byte gUnknown_03004D5C
_08032B8C: .4byte gUnknown_03002A84
_08032B90:
	movs r0, #0
	strb r0, [r2]
_08032B94:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _08032BA6
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _08032B26
_08032BA6:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #2
	bls _08032BFC
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	ldr r0, _08032CB8 @ =0x00004020
	mov ip, r0
	adds r4, r1, #0
	ldr r6, _08032CBC @ =gMultiSioRecv
_08032BC2:
	ldr r0, _08032CC0 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08032BF2
	ldrb r0, [r7]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08032BF2
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r2, r0, r6
	ldrh r0, [r2]
	cmp r0, ip
	bls _08032BF2
	ldrb r2, [r2, #2]
	lsls r1, r2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
_08032BF2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _08032BC2
_08032BFC:
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, _08032CC4 @ =0x000003C5
	adds r2, r5, r3
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	adds r0, #1
	strb r0, [r2]
	ldr r0, _08032CC8 @ =0x000003C6
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08032C46
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C46
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r1, #0
	ldr r0, _08032CCC @ =0x000002E2
	strh r0, [r2, #0xa]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	subs r3, #0xa4
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
_08032C46:
	ldr r0, _08032CD0 @ =0x000003C7
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08032C76
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08032C76
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r1, #0
	ldr r0, _08032CCC @ =0x000002E2
	strh r0, [r2, #0xa]
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	strb r1, [r0]
	ldr r3, _08032CD4 @ =0x00000351
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
_08032C76:
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r1, _08032CD8 @ =gUnknown_080D72AC
	ldr r3, _08032CDC @ =0x000003C1
	adds r0, r5, r3
	ldrb r0, [r0]
	adds r0, r0, r1
	ldr r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	blo _08032D6C
	mov r0, r8
	bl sub_802D4CC
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bne _08032D6C
	ldr r0, _08032CE0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08032CE4 @ =gGameMode
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08032CE8
	movs r0, #0
	bl sub_805BDEC
	b _08032D8E
	.align 2, 0
_08032CB8: .4byte 0x00004020
_08032CBC: .4byte gMultiSioRecv
_08032CC0: .4byte 0x04000128
_08032CC4: .4byte 0x000003C5
_08032CC8: .4byte 0x000003C6
_08032CCC: .4byte 0x000002E2
_08032CD0: .4byte 0x000003C7
_08032CD4: .4byte 0x00000351
_08032CD8: .4byte gUnknown_080D72AC
_08032CDC: .4byte 0x000003C1
_08032CE0: .4byte gCurTask
_08032CE4: .4byte gGameMode
_08032CE8:
	cmp r4, #0
	beq _08032D10
	lsrs r0, r0, #0x19
	ands r0, r6
	ldr r1, _08032D08 @ =gSelectedCharacter
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08032D0C @ =gCurrentLevel
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl CreateTimeAttackSelectionScreen
	b _08032D8E
	.align 2, 0
_08032D08: .4byte gSelectedCharacter
_08032D0C: .4byte gCurrentLevel
_08032D10:
	ldr r3, _08032D30 @ =gLoadedSaveGame
	ldr r5, [r3]
	ldr r2, _08032D34 @ =gSelectedCharacter
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r5, #7
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bhi _08032D3C
	ldr r0, _08032D38 @ =gCurrentLevel
	strb r4, [r0]
	bl sub_801A770
	b _08032D8E
	.align 2, 0
_08032D30: .4byte gLoadedSaveGame
_08032D34: .4byte gSelectedCharacter
_08032D38: .4byte gCurrentLevel
_08032D3C:
	ldrb r0, [r5, #0x1a]
	cmp r0, #1
	bne _08032D56
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08032D56
	ldrb r1, [r1]
	movs r0, #0
	movs r2, #2
	bl sub_80346C8
	b _08032D8E
_08032D56:
	ldr r0, [r3]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, #7
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0
	movs r2, #0
	bl sub_80346C8
	b _08032D8E
_08032D6C:
	adds r0, r5, #0
	bl sub_8033C64
	ldr r1, _08032D98 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
_08032D8E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D98: .4byte gBgScrollRegs

	thumb_func_start sub_8032D9C
sub_8032D9C: @ 0x08032D9C
	push {r4, lr}
	ldr r0, _08032DE4 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_802D4CC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08032E0A
	ldr r1, _08032DE8 @ =0x0000FFFF
	movs r0, #0
	bl TasksDestroyInPriorityRange
	ldr r1, _08032DEC @ =gUnknown_03002AE4
	ldr r0, _08032DF0 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08032DF4 @ =gUnknown_03005390
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032DF8 @ =gUnknown_03004D5C
	ldr r0, _08032DFC @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08032E00 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032E04
	bl sub_8087FC0
	b _08032E2C
	.align 2, 0
_08032DE4: .4byte gCurTask
_08032DE8: .4byte 0x0000FFFF
_08032DEC: .4byte gUnknown_03002AE4
_08032DF0: .4byte gUnknown_0300287C
_08032DF4: .4byte gUnknown_03005390
_08032DF8: .4byte gUnknown_03004D5C
_08032DFC: .4byte gUnknown_03002A84
_08032E00: .4byte gGameMode
_08032E04:
	bl CreateTitleScreenAtSinglePlayerMenu
	b _08032E2C
_08032E0A:
	adds r0, r4, #0
	bl sub_803353C
	ldr r1, _08032E34 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
_08032E2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032E34: .4byte gBgScrollRegs

	thumb_func_start sub_8032E38
sub_8032E38: @ 0x08032E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08032EFC @ =0x000003C3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032F08
	movs r4, #0
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r2, r2, r5
	mov sl, r2
	ldr r3, _08032F00 @ =gSineTable
	mov sb, r3
	movs r7, #0xf6
	lsls r7, r7, #2
	adds r6, r5, r7
	ldr r0, _08032F04 @ =0x000003FF
	mov r8, r0
	movs r7, #0x5c
_08032E6A:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r2, [r0]
	subs r1, r4, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	mov r3, sl
	ldr r1, [r3]
	cmp r1, r0
	bhi _08032E8C
	cmp r2, #4
	bne _08032EF0
	cmp r4, #1
	bhi _08032EF0
	cmp r1, #0x13
	bls _08032EF0
_08032E8C:
	adds r0, r4, #0
	movs r1, #5
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	ldr r0, [r6]
	lsrs r0, r0, #8
	movs r1, #0x66
	muls r1, r4, r1
	adds r0, r0, r1
	mov r3, r8
	ands r0, r3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r7, r0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r2, #0x16]
	ldr r0, [r6]
	lsrs r0, r0, #8
	adds r0, r0, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r7, r0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	bl sub_80051E8
_08032EF0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08032E6A
	b _08033044
	.align 2, 0
_08032EFC: .4byte 0x000003C3
_08032F00: .4byte gSineTable
_08032F04: .4byte 0x000003FF
_08032F08:
	movs r7, #0xf6
	lsls r7, r7, #2
	adds r0, r5, r7
	ldr r0, [r0]
	lsrs r0, r0, #8
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r6, r0, r1
	ldr r2, _0803306C @ =0x000003FF
	adds r0, r2, #0
	ands r6, r0
	movs r4, #0
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r3, r3, r5
	mov r8, r3
	ldr r3, _08033070 @ =gSineTable
	movs r7, #0x5c
	mov sb, r7
_08032F2E:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r4, r0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r2, r8
	ldr r1, [r2]
	cmp r1, r0
	bls _08032F9A
	adds r1, r4, #2
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r7, #0xea
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r2, r5, r0
	movs r0, #0x66
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r6, r1
	ldr r0, _0803306C @ =0x000003FF
	ands r1, r0
	subs r7, #0xd4
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r2, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	str r3, [sp]
	bl sub_80051E8
	ldr r3, [sp]
_08032F9A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #8
	bls _08032F2E
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r1, r5, r2
	ldrb r0, [r1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08033044
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #0x13
	bls _08033044
	ldr r2, _08033074 @ =gUnknown_080D7274
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08033044
	ldr r3, _08033070 @ =gSineTable
	movs r7, #0x5c
	mov sb, r7
	mov r8, r2
_08032FD6:
	adds r1, r4, #2
	movs r0, #3
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r5, r0
	movs r0, #0x66
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r6, r1
	ldr r0, _0803306C @ =0x000003FF
	ands r1, r0
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r2, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r2, #0x18]
	adds r0, r2, #0
	str r3, [sp]
	bl sub_80051E8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r0, [r0]
	add r0, r8
	ldr r3, [sp]
	ldrb r0, [r0]
	cmp r4, r0
	blo _08032FD6
_08033044:
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r5, r3
	adds r0, r2, #0
	bl sub_80051E8
	movs r7, #0xcc
	lsls r7, r7, #2
	adds r2, r5, r7
	adds r0, r2, #0
	bl sub_80051E8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803306C: .4byte 0x000003FF
_08033070: .4byte gSineTable
_08033074: .4byte gUnknown_080D7274

	thumb_func_start sub_8033078
sub_8033078: @ 0x08033078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	ldr r0, _08033148 @ =0x000003C3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803315C
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #8]
	ldr r1, _0803314C @ =0x000002E5
	add r1, sl
	str r1, [sp, #0xc]
	mov r2, sl
	adds r2, #0xcc
	str r2, [sp]
	mov r3, sl
	adds r3, #0xfc
	str r3, [sp, #4]
	ldr r0, _08033150 @ =gSineTable
	mov sb, r0
	movs r5, #0xf6
	lsls r5, r5, #2
	add r5, sl
	ldr r1, _08033154 @ =0x000003FF
	mov r8, r1
	movs r6, #0x5c
_080330BC:
	adds r0, r4, #0
	movs r1, #5
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _08033158 @ =0x000003C1
	add r0, sl
	ldrb r0, [r0]
	cmp r1, r0
	bne _080330E4
	movs r0, #0xf1
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0803313C
_080330E4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r0, r2
	mov r3, sl
	adds r7, r3, r0
	ldr r0, [r5]
	lsrs r0, r0, #8
	movs r1, #0x66
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, #2
	mov r2, r8
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r7, #0x16]
	ldr r0, [r5]
	lsrs r0, r0, #8
	adds r0, r0, r1
	adds r0, #2
	mov r3, r8
	ands r0, r3
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl sub_80051E8
_0803313C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080330BC
	b _08033206
	.align 2, 0
_08033148: .4byte 0x000003C3
_0803314C: .4byte 0x000002E5
_08033150: .4byte gSineTable
_08033154: .4byte 0x000003FF
_08033158: .4byte 0x000003C1
_0803315C:
	movs r0, #0xf6
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	lsrs r0, r0, #8
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r5, r0, r2
	ldr r3, _080332A8 @ =0x000003FF
	adds r0, r3, #0
	ands r5, r0
	movs r4, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #8]
	ldr r1, _080332AC @ =0x000002E5
	add r1, sl
	str r1, [sp, #0xc]
	mov r2, sl
	adds r2, #0xcc
	str r2, [sp]
	mov r3, sl
	adds r3, #0xfc
	str r3, [sp, #4]
	ldr r2, _080332B0 @ =gSineTable
	movs r6, #0x5c
_08033192:
	adds r1, r4, #2
	movs r0, #3
	ands r1, r0
	ldr r0, _080332B4 @ =0x000003C1
	add r0, sl
	ldrb r0, [r0]
	cmp r1, r0
	bne _080331AE
	movs r0, #0xf1
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _080331FC
_080331AE:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	mov r3, sl
	adds r7, r3, r0
	movs r0, #0x66
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r5, r1
	adds r1, #4
	ldr r0, _080332A8 @ =0x000003FF
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r6, r0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r7, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	muls r0, r6, r0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	str r2, [sp, #0x10]
	bl sub_80051E8
	ldr r2, [sp, #0x10]
_080331FC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08033192
_08033206:
	movs r7, #0xb1
	lsls r7, r7, #2
	add r7, sl
	movs r6, #0xbd
	lsls r6, r6, #2
	add r6, sl
	movs r1, #0
	movs r0, #0x65
	strh r0, [r7, #0x16]
	movs r0, #0x4f
	strh r0, [r7, #0x18]
	ldr r0, _080332B4 @ =0x000003C1
	add r0, sl
	ldrb r0, [r0]
	adds r0, #5
	ldr r2, [sp, #8]
	strb r0, [r2]
	movs r0, #0xff
	ldr r3, [sp, #0xc]
	strb r0, [r3]
	strh r1, [r6]
	ldr r4, _080332B0 @ =gSineTable
	ldr r3, _080332B8 @ =0x000003C5
	add r3, sl
	ldrb r0, [r3]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, _080332A8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r6, #2]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x18]
	strh r0, [r6, #8]
	ldr r2, _080332BC @ =gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8004860
	adds r0, r7, #0
	bl sub_80051E8
	movs r0, #0xf5
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	cmp r0, #7
	bhi _080332C0
	movs r4, #0xa0
	b _080332CC
	.align 2, 0
_080332A8: .4byte 0x000003FF
_080332AC: .4byte 0x000002E5
_080332B0: .4byte gSineTable
_080332B4: .4byte 0x000003C1
_080332B8: .4byte 0x000003C5
_080332BC: .4byte gUnknown_030054B8
_080332C0:
	movs r1, #0x10
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x18
_080332CC:
	ldr r7, [sp]
	adds r0, r4, #0
	adds r0, #0xf0
	strh r0, [r7, #0x16]
	movs r0, #0x10
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl sub_80051E8
	movs r0, #0xf5
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	cmp r1, #7
	bhi _080332F4
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _080332F6
_080332F4:
	movs r4, #0
_080332F6:
	ldr r7, [sp, #4]
	cmp r4, #0
	beq _08033328
	ldr r2, _08033320 @ =0x000003CE
	add r2, sl
	ldr r1, _08033324 @ =gSineTable
	lsls r0, r4, #5
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x17
	movs r0, #0x80
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrh r2, [r2]
	adds r0, r0, r2
	b _0803332E
	.align 2, 0
_08033320: .4byte 0x000003CE
_08033324: .4byte gSineTable
_08033328:
	ldr r0, _0803336C @ =0x000003CE
	add r0, sl
	ldrh r0, [r0]
_0803332E:
	strh r0, [r7, #0x16]
	movs r0, #0x82
	strh r0, [r7, #0x18]
	ldrh r4, [r7, #0x16]
	ldr r0, _08033370 @ =0x000003CA
	add r0, sl
	ldrb r0, [r0]
	ldr r2, _08033374 @ =0x000003C1
	add r2, sl
	ldrb r1, [r2]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033380
	ldr r0, _08033378 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08033380
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r1, _0803337C @ =gUnknown_080D72B1
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x25
	b _0803338E
	.align 2, 0
_0803336C: .4byte 0x000003CE
_08033370: .4byte 0x000003CA
_08033374: .4byte 0x000003C1
_08033378: .4byte gGameMode
_0803337C: .4byte gUnknown_080D72B1
_08033380:
	ldr r0, [r7, #0x10]
	ldr r1, _080333DC @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #0
_0803338E:
	strb r0, [r1]
	adds r0, r7, #0
	bl sub_80051E8
	ldr r2, _080333E0 @ =0x000003C1
	add r2, sl
	ldrb r1, [r2]
	cmp r1, #1
	bne _0803340A
	movs r7, #0xd8
	lsls r7, r7, #2
	add r7, sl
	strh r4, [r7, #0x16]
	movs r0, #0x82
	strh r0, [r7, #0x18]
	ldr r0, _080333E4 @ =0x000003CA
	add r0, sl
	ldrb r0, [r0]
	ldrb r2, [r2]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	bne _080333F4
	ldr r0, _080333E8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _080333F4
	ldr r0, [r7, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r7, #0x10]
	ldr r0, _080333EC @ =gUnknown_080D72B1
	ldrb r1, [r0, #5]
	ldr r0, _080333F0 @ =0x00000385
	add r0, sl
	strb r1, [r0]
	b _08033404
	.align 2, 0
_080333DC: .4byte 0xFFFBFFFF
_080333E0: .4byte 0x000003C1
_080333E4: .4byte 0x000003CA
_080333E8: .4byte gGameMode
_080333EC: .4byte gUnknown_080D72B1
_080333F0: .4byte 0x00000385
_080333F4:
	ldr r0, [r7, #0x10]
	ldr r1, _0803341C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r7, #0x10]
	adds r1, r7, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
_08033404:
	adds r0, r7, #0
	bl sub_80051E8
_0803340A:
	movs r0, #0xf5
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0]
	cmp r1, #3
	bhi _08033420
	movs r4, #8
	b _08033430
	.align 2, 0
_0803341C: .4byte 0xFFFBFFFF
_08033420:
	cmp r1, #0xb
	bhi _0803342E
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _08033430
_0803342E:
	movs r4, #0
_08033430:
	movs r7, #0x96
	lsls r7, r7, #1
	add r7, sl
	movs r1, #0xf4
	lsls r1, r1, #2
	add r1, sl
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x16]
	movs r0, #0x90
	strh r0, [r7, #0x18]
	adds r0, r7, #0
	bl sub_80051E8
	movs r7, #0xae
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0xc6
	lsls r6, r6, #1
	add r6, sl
	movs r2, #0x28
	strh r2, [r7, #0x16]
	movs r3, #0x4f
	strh r3, [r7, #0x18]
	movs r0, #0
	strh r0, [r6]
	movs r5, #0x80
	lsls r5, r5, #1
	strh r5, [r6, #2]
	movs r1, #0xf5
	lsls r1, r1, #2
	add r1, sl
	mov sb, r1
	ldr r1, [r1]
	movs r4, #0x10
	subs r1, r4, r1
	lsls r0, r1, #4
	subs r0, r0, r1
	subs r0, r5, r0
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x18]
	strh r0, [r6, #8]
	ldr r2, _08033538 @ =gUnknown_030054B8
	mov r8, r2
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r3, #0x20
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8004860
	adds r0, r7, #0
	bl sub_80051E8
	movs r7, #0xcc
	lsls r7, r7, #1
	add r7, sl
	movs r6, #0xe4
	lsls r6, r6, #1
	add r6, sl
	movs r0, #0x28
	strh r0, [r7, #0x16]
	movs r1, #0x4f
	strh r1, [r7, #0x18]
	movs r2, #0
	strh r2, [r6]
	strh r5, [r6, #2]
	mov r3, sb
	ldr r0, [r3]
	subs r4, r4, r0
	lsls r0, r4, #4
	subs r0, r0, r4
	subs r5, r5, r0
	strh r5, [r6, #4]
	ldrh r0, [r7, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r7, #0x18]
	strh r0, [r6, #8]
	mov r1, r8
	ldrb r0, [r1]
	adds r1, r0, #1
	mov r2, r8
	strb r1, [r2]
	movs r3, #0x20
	orrs r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_8004558
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_8004860
	adds r0, r7, #0
	bl sub_80051E8
	movs r7, #0xc0
	lsls r7, r7, #2
	add r7, sl
	adds r0, r7, #0
	bl sub_80051E8
	movs r7, #0xcc
	lsls r7, r7, #2
	add r7, sl
	adds r0, r7, #0
	bl sub_80051E8
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033538: .4byte gUnknown_030054B8

	thumb_func_start sub_803353C
sub_803353C: @ 0x0803353C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	ldr r0, _08033588 @ =gLoadedSaveGame
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0803355C
	movs r1, #0
_0803355C:
	lsls r0, r1, #0x18
	movs r1, #1
	mov r8, r1
	cmp r0, #0
	bgt _0803356A
	movs r2, #0
	mov r8, r2
_0803356A:
	movs r3, #0xf1
	lsls r3, r3, #2
	adds r2, r7, r3
	ldrb r1, [r2]
	cmp r1, #7
	bls _08033590
	ldr r5, _0803358C @ =0x000003C1
	adds r0, r7, r5
	ldrb r6, [r0]
	movs r0, #0
	str r0, [sp]
	movs r1, #8
	str r1, [sp, #8]
	b _080335A4
	.align 2, 0
_08033588: .4byte gLoadedSaveGame
_0803358C: .4byte 0x000003C1
_08033590:
	ldr r3, _080335B8 @ =0x000003C1
	adds r0, r7, r3
	ldrb r6, [r0]
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r2, [r2]
	str r2, [sp, #8]
_080335A4:
	movs r5, #0xf1
	lsls r5, r5, #2
	adds r0, r7, r5
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #3
	bhi _080335BC
	movs r0, #8
	str r0, [sp, #4]
	b _080335D0
	.align 2, 0
_080335B8: .4byte 0x000003C1
_080335BC:
	cmp r0, #0xb
	bhi _080335CC
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	b _080335D0
_080335CC:
	movs r1, #0
	str r1, [sp, #4]
_080335D0:
	movs r2, #0xf1
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	adds r3, r7, #0
	adds r3, #0xfc
	str r3, [sp, #0xc]
	cmp r0, #0
	beq _080335E4
	b _08033782
_080335E4:
	adds r5, r3, #0
	ldr r0, _08033640 @ =gUnknown_080D7204
	lsls r2, r6, #2
	adds r1, r2, r0
	ldrh r1, [r1]
	strh r1, [r5, #0xa]
	adds r0, #2
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	ldr r0, _08033644 @ =0x0000011D
	adds r1, r7, r0
	movs r0, #0xff
	strb r0, [r1]
	ldr r1, _08033648 @ =0x000003CA
	adds r0, r7, r1
	ldrb r1, [r0]
	ldr r0, _0803364C @ =0x000003C1
	adds r3, r7, r0
	ldrb r0, [r3]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	str r5, [sp, #0xc]
	adds r4, r2, #0
	cmp r1, #0
	bne _0803365C
	ldr r0, _08033650 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _0803365C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08033654 @ =gUnknown_080D72B1
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, _08033658 @ =0x00000121
	adds r1, r7, r2
	b _0803366A
	.align 2, 0
_08033640: .4byte gUnknown_080D7204
_08033644: .4byte 0x0000011D
_08033648: .4byte 0x000003CA
_0803364C: .4byte 0x000003C1
_08033650: .4byte gGameMode
_08033654: .4byte gUnknown_080D72B1
_08033658: .4byte 0x00000121
_0803365C:
	ldr r0, [r5, #0x10]
	ldr r1, _080336E0 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0
_0803366A:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8004558
	ldr r3, _080336E4 @ =0x000003CA
	adds r0, r7, r3
	ldrb r0, [r0]
	ldr r5, _080336E8 @ =0x000003C1
	adds r1, r7, r5
	ldrb r1, [r1]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033704
	ldr r0, _080336EC @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08033704
	movs r6, #0x96
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r1, _080336F0 @ =gUnknown_080D722C
	ldrh r0, [r1, #0x14]
	strh r0, [r5, #0xa]
	ldrh r1, [r1, #0x16]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _080336F4 @ =0x0000014D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8004558
	adds r6, #0x30
	adds r5, r7, r6
	ldr r1, _080336F8 @ =gUnknown_080D71D4
	ldrh r0, [r1, #0x14]
	strh r0, [r5, #0xa]
	ldrh r1, [r1, #0x16]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _080336FC @ =0x0000017D
	adds r1, r7, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r6, #0x3c
	adds r5, r7, r6
	ldr r1, _08033700 @ =gUnknown_080D71EC
	ldrh r0, [r1, #0x14]
	strh r0, [r5, #0xa]
	ldrh r1, [r1, #0x16]
	b _08033772
	.align 2, 0
_080336E0: .4byte 0xFFFBFFFF
_080336E4: .4byte 0x000003CA
_080336E8: .4byte 0x000003C1
_080336EC: .4byte gGameMode
_080336F0: .4byte gUnknown_080D722C
_080336F4: .4byte 0x0000014D
_080336F8: .4byte gUnknown_080D71D4
_080336FC: .4byte 0x0000017D
_08033700: .4byte gUnknown_080D71EC
_08033704:
	movs r0, #0x96
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r2, _08033840 @ =gUnknown_080D722C
	mov r1, r8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r6, r0
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r1, [r1]
	strh r1, [r5, #0xa]
	adds r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _08033844 @ =0x0000014D
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8004558
	movs r6, #0xae
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r0, _08033848 @ =gUnknown_080D71D4
	adds r1, r4, r0
	ldrh r1, [r1]
	strh r1, [r5, #0xa]
	adds r0, #2
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r2, #0xbe
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _0803384C @ =0x0000017D
	adds r1, r7, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r6, #0x3c
	adds r5, r7, r6
	ldr r0, _08033850 @ =gUnknown_080D71EC
	adds r1, r4, r0
	ldrh r1, [r1]
	strh r1, [r5, #0xa]
	adds r0, #2
	adds r0, r4, r0
	ldrh r1, [r0]
_08033772:
	adds r2, #0x3c
	adds r0, r7, r2
	strb r1, [r0]
	adds r3, #0x3c
	adds r1, r7, r3
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
_08033782:
	ldr r5, _08033854 @ =0x000003C3
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033864
	movs r4, #0
	ldr r6, [sp, #4]
	lsls r6, r6, #2
	str r6, [sp, #0x10]
	adds r0, r7, #0
	adds r0, #0xcc
	str r0, [sp, #0x14]
	ldr r1, _08033858 @ =gSineTable
	mov sl, r1
	movs r2, #0xf6
	lsls r2, r2, #2
	adds r6, r7, r2
	ldr r3, _0803385C @ =0x000003FF
	mov sb, r3
	movs r5, #0x5c
	mov r8, r5
_080337AC:
	adds r0, r4, #0
	movs r1, #5
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08033860 @ =0x000003C1
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r1, r0
	bne _080337D4
	movs r3, #0xf1
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _08033832
_080337D4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r0, r5
	adds r5, r7, r0
	ldr r0, [r6]
	lsrs r0, r0, #8
	movs r1, #0x66
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, #2
	mov r2, sb
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r5, #0x16]
	ldr r0, [r6]
	lsrs r0, r0, #8
	adds r0, r0, r1
	adds r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_80051E8
_08033832:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _080337AC
	b _08033904
	.align 2, 0
_08033840: .4byte gUnknown_080D722C
_08033844: .4byte 0x0000014D
_08033848: .4byte gUnknown_080D71D4
_0803384C: .4byte 0x0000017D
_08033850: .4byte gUnknown_080D71EC
_08033854: .4byte 0x000003C3
_08033858: .4byte gSineTable
_0803385C: .4byte 0x000003FF
_08033860: .4byte 0x000003C1
_08033864:
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	lsrs r0, r0, #8
	movs r6, #0xcc
	lsls r6, r6, #2
	adds r6, r6, r0
	ldr r1, _080339E4 @ =0x000003FF
	adds r0, r1, #0
	ands r6, r0
	mov r8, r6
	movs r4, #0
	ldr r2, [sp, #4]
	lsls r2, r2, #2
	str r2, [sp, #0x10]
	adds r3, r7, #0
	adds r3, #0xcc
	str r3, [sp, #0x14]
	ldr r3, _080339E8 @ =gSineTable
	movs r2, #0x5c
_0803388E:
	adds r1, r4, #2
	movs r0, #3
	ands r1, r0
	ldr r5, _080339EC @ =0x000003C1
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r1, r0
	bne _080338AA
	movs r6, #0xf1
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _080338FA
_080338AA:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r7, r0
	movs r0, #0x66
	adds r1, r4, #0
	muls r1, r0, r1
	add r1, r8
	adds r1, #4
	ldr r0, _080339E4 @ =0x000003FF
	ands r1, r0
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl sub_80051E8
	ldr r3, [sp, #0x1c]
	ldr r2, [sp, #0x18]
_080338FA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0803388E
_08033904:
	movs r1, #0xf1
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #9
	bls _080339A4
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r5, r7, r2
	movs r3, #0xbd
	lsls r3, r3, #2
	adds r6, r7, r3
	movs r2, #0
	movs r0, #0x65
	strh r0, [r5, #0x16]
	movs r0, #0x4f
	strh r0, [r5, #0x18]
	subs r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	adds r0, #5
	subs r3, #0x10
	adds r1, r7, r3
	strb r0, [r1]
	ldr r0, _080339F0 @ =0x000002E5
	adds r1, r7, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r6]
	ldr r4, _080339E8 @ =gSineTable
	ldr r1, _080339F4 @ =0x000003C5
	adds r3, r7, r1
	ldrb r0, [r3]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, #0x3a
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r6, #2]
	ldrb r0, [r3]
	lsls r0, r0, #4
	adds r0, r0, r2
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r6, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #8]
	ldr r2, _080339F8 @ =gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8004860
	adds r0, r5, #0
	bl sub_80051E8
_080339A4:
	ldr r5, [sp, #0xc]
	ldr r2, [sp]
	cmp r2, #0
	beq _08033A00
	ldr r3, _080339FC @ =0x000003CE
	adds r2, r7, r3
	ldr r1, _080339E8 @ =gSineTable
	ldr r6, [sp]
	lsls r0, r6, #5
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x17
	movs r0, #0x80
	subs r0, r0, r1
	lsls r0, r0, #1
	ldrh r6, [r2]
	adds r0, r0, r6
	strh r0, [r5, #0x16]
	ldrh r4, [r5, #0x16]
	ldr r1, [sp]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08033A0C
	.align 2, 0
_080339E4: .4byte 0x000003FF
_080339E8: .4byte gSineTable
_080339EC: .4byte 0x000003C1
_080339F0: .4byte 0x000002E5
_080339F4: .4byte 0x000003C5
_080339F8: .4byte gUnknown_030054B8
_080339FC: .4byte 0x000003CE
_08033A00:
	ldr r2, _08033A48 @ =0x000003CE
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r5, #0x16]
	ldrh r4, [r5, #0x16]
	adds r6, r4, #0
_08033A0C:
	movs r0, #0x82
	strh r0, [r5, #0x18]
	ldr r3, _08033A4C @ =0x000003CA
	adds r0, r7, r3
	ldrb r0, [r0]
	ldr r1, _08033A50 @ =0x000003C1
	adds r2, r7, r1
	ldrb r3, [r2]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08033A5C
	ldr r0, _08033A54 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08033A5C
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r1, _08033A58 @ =gUnknown_080D72B1
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x25
	b _08033A6A
	.align 2, 0
_08033A48: .4byte 0x000003CE
_08033A4C: .4byte 0x000003CA
_08033A50: .4byte 0x000003C1
_08033A54: .4byte gGameMode
_08033A58: .4byte gUnknown_080D72B1
_08033A5C:
	ldr r0, [r5, #0x10]
	ldr r1, _08033AB8 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0
_08033A6A:
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_80051E8
	ldr r5, _08033ABC @ =0x000003C1
	adds r2, r7, r5
	ldrb r1, [r2]
	cmp r1, #1
	bne _08033AE6
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r5, r7, r0
	strh r6, [r5, #0x16]
	movs r0, #0x82
	strh r0, [r5, #0x18]
	ldr r3, _08033AC0 @ =0x000003CA
	adds r0, r7, r3
	ldrb r0, [r0]
	ldrb r2, [r2]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08033AD0
	ldr r0, _08033AC4 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bhi _08033AD0
	ldr r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r5, #0x10]
	ldr r0, _08033AC8 @ =gUnknown_080D72B1
	ldrb r1, [r0, #5]
	ldr r6, _08033ACC @ =0x00000385
	adds r0, r7, r6
	strb r1, [r0]
	b _08033AE0
	.align 2, 0
_08033AB8: .4byte 0xFFFBFFFF
_08033ABC: .4byte 0x000003C1
_08033AC0: .4byte 0x000003CA
_08033AC4: .4byte gGameMode
_08033AC8: .4byte gUnknown_080D72B1
_08033ACC: .4byte 0x00000385
_08033AD0:
	ldr r0, [r5, #0x10]
	ldr r1, _08033BAC @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #0x10]
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #0
	strb r0, [r1]
_08033AE0:
	adds r0, r5, #0
	bl sub_80051E8
_08033AE6:
	ldr r0, _08033BB0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _08033B18
	movs r0, #0xf7
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r1, _08033BB4 @ =0x000003C1
	adds r0, r7, r1
	movs r1, #1
	ldrb r0, [r0]
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08033B18
	movs r2, #0xe4
	lsls r2, r2, #2
	adds r5, r7, r2
	strh r4, [r5, #0x16]
	movs r0, #0x82
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_80051E8
_08033B18:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r5, r7, r3
	movs r6, #0xf4
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #4]
	adds r0, r2, r3
	lsls r0, r0, #2
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r4, #0
	strh r0, [r5, #0x16]
	movs r0, #0x90
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_80051E8
	ldr r5, [sp, #0x14]
	movs r0, #0xf0
	strh r0, [r5, #0x16]
	movs r0, #0x10
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_80051E8
	movs r6, #0xae
	lsls r6, r6, #1
	adds r5, r7, r6
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r0, #0x28
	strh r0, [r5, #0x16]
	movs r0, #0x4f
	strh r0, [r5, #0x18]
	ldr r1, [sp, #8]
	cmp r1, #7
	bhi _08033BBC
	strh r4, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r6, #2]
	movs r1, #8
	ldr r3, [sp, #8]
	subs r1, r1, r3
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r6, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #8]
	ldr r2, _08033BB8 @ =gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8004860
	b _08033BBE
	.align 2, 0
_08033BAC: .4byte 0xFFFBFFFF
_08033BB0: .4byte gGameMode
_08033BB4: .4byte 0x000003C1
_08033BB8: .4byte gUnknown_030054B8
_08033BBC:
	str r4, [r5, #0x10]
_08033BBE:
	adds r0, r5, #0
	bl sub_80051E8
	movs r6, #0xcc
	lsls r6, r6, #1
	adds r5, r7, r6
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r1, #0
	movs r0, #0x28
	strh r0, [r5, #0x16]
	movs r0, #0x4f
	strh r0, [r5, #0x18]
	ldr r2, [sp, #8]
	cmp r2, #7
	bhi _08033C28
	strh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r6, #2]
	movs r1, #8
	ldr r3, [sp, #8]
	subs r1, r1, r3
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	subs r2, r2, r0
	strh r2, [r6, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r6, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r6, #8]
	ldr r2, _08033C24 @ =gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_8004860
	b _08033C2A
	.align 2, 0
_08033C24: .4byte gUnknown_030054B8
_08033C28:
	str r1, [r5, #0x10]
_08033C2A:
	adds r0, r5, #0
	bl sub_80051E8
	movs r6, #0xc0
	lsls r6, r6, #2
	adds r5, r7, r6
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	bl sub_80051E8
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	bl sub_80051E8
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8033C64
sub_8033C64: @ 0x08033C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r1, _08033D30 @ =0x000003C3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033D3C
	movs r4, #0
	adds r2, r6, #0
	adds r2, #0xfc
	str r2, [sp, #4]
	adds r3, r6, #0
	adds r3, #0xcc
	str r3, [sp]
	ldr r5, _08033D34 @ =gSineTable
	mov sl, r5
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r7, r6, r0
	adds r1, #0x3c
	mov sb, r1
	movs r2, #0x5c
	mov r8, r2
_08033C9C:
	adds r0, r4, #0
	movs r1, #5
	bl Div
	lsls r1, r0, #2
	adds r1, r1, r0
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08033D38 @ =0x000003C1
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r1, r0
	bne _08033CC4
	movs r5, #0xf1
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _08033D22
_08033CC4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r6, r0
	ldr r0, [r7]
	lsrs r0, r0, #8
	movs r1, #0x66
	muls r1, r4, r1
	adds r0, r0, r1
	adds r0, #2
	mov r2, sb
	ands r0, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r5, #0x16]
	ldr r0, [r7]
	lsrs r0, r0, #8
	adds r0, r0, r1
	adds r0, #2
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	bl sub_80051E8
_08033D22:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08033C9C
	b _08033DDC
	.align 2, 0
_08033D30: .4byte 0x000003C3
_08033D34: .4byte gSineTable
_08033D38: .4byte 0x000003C1
_08033D3C:
	movs r5, #0xf6
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r0, [r0]
	lsrs r0, r0, #8
	movs r7, #0xcc
	lsls r7, r7, #2
	adds r7, r7, r0
	ldr r1, _08033F1C @ =0x000003FF
	adds r0, r1, #0
	adds r2, r7, #0
	ands r2, r0
	mov r8, r2
	movs r4, #0
	adds r3, r6, #0
	adds r3, #0xfc
	str r3, [sp, #4]
	adds r5, r6, #0
	adds r5, #0xcc
	str r5, [sp]
	ldr r3, _08033F20 @ =gSineTable
	movs r2, #0x5c
_08033D68:
	adds r1, r4, #2
	movs r0, #3
	ands r1, r0
	ldr r7, _08033F24 @ =0x000003C1
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r1, r0
	bne _08033D84
	movs r5, #0xf1
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0xc
	bhi _08033DD2
_08033D84:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r7, #0xea
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r5, r6, r0
	movs r0, #0x66
	adds r1, r4, #0
	muls r1, r0, r1
	add r1, r8
	adds r1, #4
	ldr r0, _08033F1C @ =0x000003FF
	ands r1, r0
	subs r7, #0xd4
	adds r0, r1, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r0, #0xa
	strh r0, [r5, #0x16]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	muls r0, r2, r0
	asrs r0, r0, #0xe
	adds r0, #0x50
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_80051E8
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #8]
_08033DD2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08033D68
_08033DDC:
	ldr r0, _08033F28 @ =0x000003C5
	adds r7, r6, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08033E76
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r5, r6, r1
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r4, r6, r2
	movs r2, #0
	movs r0, #0x65
	strh r0, [r5, #0x16]
	movs r0, #0x4f
	strh r0, [r5, #0x18]
	ldr r3, _08033F24 @ =0x000003C1
	adds r0, r6, r3
	ldrb r0, [r0]
	adds r0, #5
	subs r3, #0xdd
	adds r1, r6, r3
	strb r0, [r1]
	ldr r0, _08033F2C @ =0x000002E5
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	strh r2, [r4]
	ldr r3, _08033F20 @ =gSineTable
	ldrb r0, [r7]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, _08033F1C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r4, #2]
	ldrb r0, [r7]
	lsls r0, r0, #4
	adds r0, r0, r2
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	adds r0, #0xc0
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x16]
	strh r0, [r4, #6]
	ldrh r0, [r5, #0x18]
	strh r0, [r4, #8]
	ldr r2, _08033F30 @ =gUnknown_030054B8
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	movs r1, #0x60
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8004860
	adds r0, r5, #0
	bl sub_80051E8
_08033E76:
	ldr r0, [sp, #4]
	bl sub_8004558
	ldr r0, [sp, #4]
	bl sub_80051E8
	ldr r1, _08033F24 @ =0x000003C1
	adds r5, r6, r1
	ldrb r0, [r5]
	cmp r0, #1
	bne _08033E9E
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r4, r6, r2
	adds r0, r4, #0
	bl sub_8004558
	adds r0, r4, #0
	bl sub_80051E8
_08033E9E:
	ldr r0, _08033F34 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _08033EC4
	movs r3, #0xf7
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #1
	ldrb r5, [r5]
	lsls r1, r5
	ldr r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08033EC4
	movs r5, #0xe4
	lsls r5, r5, #2
	adds r0, r6, r5
	bl sub_80051E8
_08033EC4:
	movs r7, #0x96
	lsls r7, r7, #1
	adds r0, r6, r7
	bl sub_80051E8
	ldr r0, [sp]
	bl sub_80051E8
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r6, r1
	bl sub_80051E8
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r0, r6, r2
	bl sub_80051E8
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r6, r3
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	bl sub_80051E8
	movs r7, #0xcc
	lsls r7, r7, #2
	adds r5, r6, r7
	adds r0, r5, #0
	bl sub_8004558
	adds r0, r5, #0
	bl sub_80051E8
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F1C: .4byte 0x000003FF
_08033F20: .4byte gSineTable
_08033F24: .4byte 0x000003C1
_08033F28: .4byte 0x000003C5
_08033F2C: .4byte 0x000002E5
_08033F30: .4byte gUnknown_030054B8
_08033F34: .4byte gGameMode

	thumb_func_start sub_8033F38
sub_8033F38: @ 0x08033F38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r0, sp
	movs r1, #0
	movs r2, #5
	bl memset
	ldr r0, _08033FD0 @ =gCurTask
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
	ldr r1, _08033FD4 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
	ldr r0, _08033FD8 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _0803406A
	movs r3, #0
	ldr r0, _08033FDC @ =gUnknown_030055B8
	ldrb r1, [r0]
	movs r2, #1
	ands r1, r2
	mov sb, r0
	cmp r1, #0
	beq _08034018
	movs r6, #1
	ldr r2, _08033FE0 @ =gUnknown_030054D4
_08033F92:
	ldr r1, _08033FE4 @ =gMultiSioStatusFlags
	adds r0, r6, #0
	lsls r0, r3
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _08034000
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _08034004
	movs r0, #0
	ldr r1, _08033FE8 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _08033FEC @ =gUnknown_03002AE4
	ldr r0, _08033FF0 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08033FF4 @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _08033FF8 @ =gUnknown_03004D5C
	ldr r0, _08033FFC @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _0803433C
	.align 2, 0
_08033FD0: .4byte gCurTask
_08033FD4: .4byte gBgScrollRegs
_08033FD8: .4byte gGameMode
_08033FDC: .4byte gUnknown_030055B8
_08033FE0: .4byte gUnknown_030054D4
_08033FE4: .4byte gMultiSioStatusFlags
_08033FE8: .4byte 0x0000FFFF
_08033FEC: .4byte gUnknown_03002AE4
_08033FF0: .4byte gUnknown_0300287C
_08033FF4: .4byte gUnknown_03005390
_08033FF8: .4byte gUnknown_03004D5C
_08033FFC: .4byte gUnknown_03002A84
_08034000:
	movs r0, #0
	strb r0, [r2]
_08034004:
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	bhi _08034018
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	bne _08033F92
_08034018:
	ldr r0, _080340F0 @ =gGameMode
	ldrb r0, [r0]
	cmp r0, #2
	bls _0803406A
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	ldr r0, _080340F4 @ =0x00004020
	mov r8, r0
	adds r4, r1, #0
	ldr r7, _080340F8 @ =gMultiSioRecv
	movs r6, #0
_08034036:
	ldr r0, _080340FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08034062
	mov r1, sb
	ldrb r0, [r1]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08034062
	adds r2, r6, r7
	ldrh r0, [r2]
	cmp r0, r8
	bls _08034062
	ldrb r2, [r2, #2]
	lsls r1, r2
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
_08034062:
	adds r6, #0x14
	adds r3, #1
	cmp r3, #3
	bls _08034036
_0803406A:
	ldr r0, _08034100 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08034120
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08034104 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034108 @ =sub_8031E84
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0xfc
	ldr r1, _0803410C @ =gUnknown_080D7204
	ldr r3, _08034110 @ =0x000003C1
	adds r4, r5, r3
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0]
	ldr r3, _08034114 @ =0x0000011D
	adds r1, r5, r3
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r2, r5, r0
	subs r0, #0x80
	strh r0, [r2, #0xa]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0xa
	strb r0, [r1]
	ldr r3, _08034118 @ =0x00000381
	adds r1, r5, r3
	subs r0, #0xb
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_8033C64
	ldr r0, _0803411C @ =gMultiSioSend
	mov sb, r0
	ldr r0, _080340F4 @ =0x00004020
	mov r1, sb
	strh r0, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #2]
	movs r0, #0x6b
	bl m4aSongNumStart
	b _0803433C
	.align 2, 0
_080340F0: .4byte gGameMode
_080340F4: .4byte 0x00004020
_080340F8: .4byte gMultiSioRecv
_080340FC: .4byte 0x04000128
_08034100: .4byte gPressedKeys
_08034104: .4byte gCurTask
_08034108: .4byte sub_8031E84
_0803410C: .4byte gUnknown_080D7204
_08034110: .4byte 0x000003C1
_08034114: .4byte 0x0000011D
_08034118: .4byte 0x00000381
_0803411C: .4byte gMultiSioSend
_08034120:
	ldr r2, _08034188 @ =gMultiSioRecv
	ldrh r1, [r2]
	ldr r0, _0803418C @ =0x00004022
	mov ip, r2
	cmp r1, r0
	bne _080341AC
	movs r3, #0
	ldr r0, _08034190 @ =gCurTask
	mov sl, r0
	ldr r1, _08034194 @ =gMultiSioStatusFlags
	mov r8, r1
	ldr r0, _08034198 @ =sub_8034358
	mov ip, r0
	ldr r7, _0803419C @ =gUnknown_030055B8
	movs r6, #1
	ldr r4, _080341A0 @ =gUnknown_03005500
_08034140:
	ldrb r0, [r7]
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq _08034150
	adds r1, r3, r4
	ldrb r0, [r2, #2]
	strb r0, [r1]
_08034150:
	adds r2, #0x14
	adds r3, #1
	cmp r3, #3
	bls _08034140
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034172
	ldr r2, _080341A4 @ =gMultiSioSend
	ldr r0, _0803418C @ =0x00004022
	strh r0, [r2]
	ldr r3, _080341A8 @ =0x000003C1
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r2, #2]
_08034172:
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	mov r2, sl
	ldr r0, [r2]
	mov r3, ip
	str r3, [r0, #8]
	b _080342F4
	.align 2, 0
_08034188: .4byte gMultiSioRecv
_0803418C: .4byte 0x00004022
_08034190: .4byte gCurTask
_08034194: .4byte gMultiSioStatusFlags
_08034198: .4byte sub_8034358
_0803419C: .4byte gUnknown_030055B8
_080341A0: .4byte gUnknown_03005500
_080341A4: .4byte gMultiSioSend
_080341A8: .4byte 0x000003C1
_080341AC:
	movs r3, #0
	ldr r0, _0803425C @ =gUnknown_030055B8
	ldrb r7, [r0]
	ldr r1, _08034260 @ =0x00004021
	mov r8, r1
	movs r6, #0
_080341B8:
	adds r0, r7, #0
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080341F0
	ldr r1, _08034264 @ =0x04000128
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _080341F0
	mov r0, ip
	adds r2, r6, r0
	ldrh r0, [r2]
	cmp r0, r8
	bne _080341F0
	ldr r0, _08034268 @ =0x000003C1
	adds r4, r5, r0
	ldrb r0, [r2, #2]
	ldrb r2, [r4]
	cmp r0, r2
	bne _080341F0
	ldr r0, [r1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	blo _0803427C
_080341F0:
	adds r6, #0x14
	adds r3, #1
	cmp r3, #3
	bls _080341B8
	ldr r0, _0803426C @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08034206
	b _08034324
_08034206:
	ldr r3, _08034270 @ =gMultiSioSend
	mov sb, r3
	ldr r0, _08034274 @ =0x00004022
	strh r0, [r3]
	ldr r1, _08034268 @ =0x000003C1
	adds r0, r5, r1
	ldrb r0, [r0]
	strb r0, [r3, #2]
	movs r3, #0
	ldr r0, _0803425C @ =gUnknown_030055B8
	ldrb r7, [r0]
	ldr r2, _08034278 @ =0x40210000
	mov r8, r2
	movs r6, #0
_08034222:
	adds r0, r7, #0
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08034250
	mov r0, ip
	adds r2, r6, r0
	ldrh r4, [r2]
	mov r1, r8
	lsrs r0, r1, #0x10
	cmp r4, r0
	bne _08034318
	ldrb r0, [r2, #2]
	mov r2, sp
	adds r1, r2, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0803431E
_08034250:
	adds r6, #0x14
	adds r3, #1
	cmp r3, #3
	bls _08034222
	b _08034336
	.align 2, 0
_0803425C: .4byte gUnknown_030055B8
_08034260: .4byte 0x00004021
_08034264: .4byte 0x04000128
_08034268: .4byte 0x000003C1
_0803426C: .4byte gMultiSioStatusFlags
_08034270: .4byte gMultiSioSend
_08034274: .4byte 0x00004022
_08034278: .4byte 0x40210000
_0803427C:
	ldr r0, _080342FC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08034300 @ =sub_8031E84
	str r0, [r1, #8]
	movs r0, #0x6b
	bl m4aSongNumStart
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0xfc
	ldr r1, _08034304 @ =gUnknown_080D7204
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #0xa]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r0, r5, r3
	strb r1, [r0]
	ldr r0, _08034308 @ =0x0000011D
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8004558
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r2, r5, r1
	movs r0, #0xb8
	lsls r0, r0, #2
	strh r0, [r2, #0xa]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r1, r5, r3
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0803430C @ =0x00000381
	adds r1, r5, r0
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_8004558
	ldr r1, _08034310 @ =gMultiSioSend
	ldr r0, _08034314 @ =0x00004020
	strh r0, [r1]
	ldrb r0, [r4]
	strb r0, [r1, #2]
_080342F4:
	adds r0, r5, #0
	bl sub_8033C64
	b _0803433C
	.align 2, 0
_080342FC: .4byte gCurTask
_08034300: .4byte sub_8031E84
_08034304: .4byte gUnknown_080D7204
_08034308: .4byte 0x0000011D
_0803430C: .4byte 0x00000381
_08034310: .4byte gMultiSioSend
_08034314: .4byte 0x00004020
_08034318:
	mov r2, sb
	strh r0, [r2]
	b _08034336
_0803431E:
	mov r3, sb
	strh r4, [r3]
	b _08034336
_08034324:
	ldr r0, _0803434C @ =gMultiSioSend
	mov sb, r0
	ldr r0, _08034350 @ =0x00004021
	mov r1, sb
	strh r0, [r1]
	ldr r2, _08034354 @ =0x000003C1
	adds r0, r5, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
_08034336:
	adds r0, r5, #0
	bl sub_8033C64
_0803433C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803434C: .4byte gMultiSioSend
_08034350: .4byte 0x00004021
_08034354: .4byte 0x000003C1

	thumb_func_start sub_8034358
sub_8034358: @ 0x08034358
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080343CC @ =gCurTask
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
	ldr r0, _080343D0 @ =gGameMode
	ldrb r0, [r0]
	mov sl, r2
	ldr r1, _080343D4 @ =gUnknown_030055B8
	mov r8, r1
	cmp r0, #2
	bls _08034410
	movs r2, #0
	ldrb r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08034410
	movs r5, #1
	ldr r3, _080343D8 @ =gUnknown_030054D4
_0803438C:
	ldr r1, _080343DC @ =gMultiSioStatusFlags
	adds r0, r5, #0
	lsls r0, r2
	ldr r4, [r1]
	ands r4, r0
	cmp r4, #0
	bne _080343F8
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb4
	bls _080343FC
	movs r0, #0
	ldr r1, _080343E0 @ =0x0000FFFF
	bl TasksDestroyInPriorityRange
	ldr r1, _080343E4 @ =gUnknown_03002AE4
	ldr r0, _080343E8 @ =gUnknown_0300287C
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _080343EC @ =gUnknown_03005390
	strb r4, [r0]
	ldr r1, _080343F0 @ =gUnknown_03004D5C
	ldr r0, _080343F4 @ =gUnknown_03002A84
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_805B9A4
	b _08034614
	.align 2, 0
_080343CC: .4byte gCurTask
_080343D0: .4byte gGameMode
_080343D4: .4byte gUnknown_030055B8
_080343D8: .4byte gUnknown_030054D4
_080343DC: .4byte gMultiSioStatusFlags
_080343E0: .4byte 0x0000FFFF
_080343E4: .4byte gUnknown_03002AE4
_080343E8: .4byte gUnknown_0300287C
_080343EC: .4byte gUnknown_03005390
_080343F0: .4byte gUnknown_03004D5C
_080343F4: .4byte gUnknown_03002A84
_080343F8:
	movs r0, #0
	strb r0, [r3]
_080343FC:
	adds r3, #1
	adds r2, #1
	cmp r2, #3
	bhi _08034410
	mov r4, r8
	ldrb r0, [r4]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	bne _0803438C
_08034410:
	movs r3, #0
	movs r4, #0
	ldr r0, _0803446C @ =gMultiSioRecv
	mov ip, r0
	ldr r0, _08034470 @ =gUnknown_030055B8
	ldrb r5, [r0]
	ldr r7, _08034474 @ =0x00004021
	mov r1, ip
	movs r2, #1
_08034422:
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	beq _08034434
	ldrh r0, [r1]
	cmp r0, r7
	bhi _08034434
	movs r4, #1
_08034434:
	adds r1, #0x14
	adds r3, #1
	cmp r3, #3
	bls _08034422
	cmp r4, #0
	beq _0803448C
	movs r4, #0xf3
	lsls r4, r4, #2
	adds r1, r6, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08034480
	lsls r0, r0, #1
	strb r0, [r1]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08034484
	ldr r0, _08034478 @ =gMultiSioSend
	mov sb, r0
	ldr r0, _08034474 @ =0x00004021
	mov r1, sb
	strh r0, [r1]
	mov r4, sl
	ldr r1, [r4]
	ldr r0, _0803447C @ =sub_8033F38
	str r0, [r1, #8]
	b _08034484
	.align 2, 0
_0803446C: .4byte gMultiSioRecv
_08034470: .4byte gUnknown_030055B8
_08034474: .4byte 0x00004021
_08034478: .4byte gMultiSioSend
_0803447C: .4byte sub_8033F38
_08034480:
	movs r0, #1
	strb r0, [r1]
_08034484:
	adds r0, r6, #0
	bl sub_8033C64
	b _08034614
_0803448C:
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r6, r1
	strb r4, [r0]
	mov r4, ip
	ldrh r1, [r4]
	ldr r3, _080344E4 @ =0x00004023
	cmp r1, r3
	bne _080344FC
	movs r3, #0
	ldr r0, _080344E8 @ =gUnknown_030055B8
	mov ip, r0
	movs r2, #0
	movs r7, #1
	adds r5, r4, #0
_080344AA:
	mov r1, ip
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r7
	cmp r0, #0
	beq _080344CC
	adds r4, r2, r5
	ldr r0, _080344EC @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080344CC
	ldr r0, _080344F0 @ =gUnknown_03005500
	adds r0, r3, r0
	ldrb r1, [r4, #2]
	strb r1, [r0]
_080344CC:
	adds r2, #0x14
	adds r3, #1
	cmp r3, #3
	bls _080344AA
	adds r0, r6, #0
	bl sub_8033C64
	ldr r0, _080344F4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080344F8 @ =sub_8032AF4
	str r0, [r1, #8]
	b _08034614
	.align 2, 0
_080344E4: .4byte 0x00004023
_080344E8: .4byte gUnknown_030055B8
_080344EC: .4byte gMultiSioStatusFlags
_080344F0: .4byte gUnknown_03005500
_080344F4: .4byte gCurTask
_080344F8: .4byte sub_8032AF4
_080344FC:
	ldr r0, _08034514 @ =0x00004021
	cmp r1, r0
	bne _08034520
	ldr r4, _08034518 @ =gMultiSioSend
	subs r0, #1
	strh r0, [r4]
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _0803451C @ =sub_8033F38
	str r0, [r1, #8]
	b _08034614
	.align 2, 0
_08034514: .4byte 0x00004021
_08034518: .4byte gMultiSioSend
_0803451C: .4byte sub_8033F38
_08034520:
	ldr r0, _08034598 @ =gMultiSioStatusFlags
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080345C2
	ldr r1, _0803459C @ =gMultiSioSend
	mov sb, r1
	strh r3, [r1]
	ldr r4, _080345A0 @ =0x000003C1
	adds r0, r6, r4
	ldrb r0, [r0]
	strb r0, [r1, #2]
	movs r2, #0
	movs r3, #0
	ldr r0, _080345A4 @ =gLoadedSaveGame
	ldr r0, [r0]
	adds r0, #7
_08034544:
	adds r1, r0, r3
	ldrb r4, [r1]
	cmp r2, r4
	bhs _0803454E
	ldrb r2, [r1]
_0803454E:
	adds r3, #1
	cmp r3, #4
	bls _08034544
	movs r3, #0
	ldr r5, _080345A8 @ =0x40220000
	ldr r7, _080345AC @ =0x00004021
	movs r2, #0
_0803455C:
	mov r1, r8
	ldrb r0, [r1]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080345B8
	cmp r3, #0
	beq _080345B8
	mov r0, ip
	adds r4, r2, r0
	ldr r0, _080345B0 @ =gUnknown_03005500
	adds r0, r3, r0
	ldrb r1, [r4, #2]
	strb r1, [r0]
	ldrh r0, [r4]
	lsrs r1, r5, #0x10
	cmp r0, r1
	beq _080345B8
	mov r4, sb
	strh r1, [r4]
	ldr r0, _080345B4 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080345F2
	strh r7, [r4]
	b _080345F2
	.align 2, 0
_08034598: .4byte gMultiSioStatusFlags
_0803459C: .4byte gMultiSioSend
_080345A0: .4byte 0x000003C1
_080345A4: .4byte gLoadedSaveGame
_080345A8: .4byte 0x40220000
_080345AC: .4byte 0x00004021
_080345B0: .4byte gUnknown_03005500
_080345B4: .4byte gPressedKeys
_080345B8:
	adds r2, #0x14
	adds r3, #1
	cmp r3, #3
	bls _0803455C
	b _080345F2
_080345C2:
	ldr r0, _08034624 @ =gMultiSioSend
	mov sb, r0
	ldr r0, _08034628 @ =0x00004022
	mov r1, sb
	strh r0, [r1]
	ldr r1, _0803462C @ =0x000003C1
	adds r0, r6, r1
	ldrb r0, [r0]
	strb r0, [r4, #2]
	movs r2, #0
	movs r3, #0
	ldr r0, _08034630 @ =gLoadedSaveGame
	ldr r0, [r0]
	adds r0, #7
_080345DE:
	adds r1, r0, r3
	ldrb r4, [r1]
	cmp r2, r4
	bhs _080345E8
	ldrb r2, [r1]
_080345E8:
	adds r3, #1
	cmp r3, #4
	bls _080345DE
	mov r0, sb
	strb r2, [r0, #3]
_080345F2:
	adds r0, r6, #0
	bl sub_8033C64
	ldr r1, _08034634 @ =gBgScrollRegs
	ldrh r0, [r1, #2]
	subs r0, #1
	movs r2, #0xff
	ands r0, r2
	strh r0, [r1, #2]
	ldrh r0, [r1, #8]
	subs r0, #1
	ands r0, r2
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xa]
	adds r0, #1
	ands r0, r2
	strh r0, [r1, #0xa]
_08034614:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034624: .4byte gMultiSioSend
_08034628: .4byte 0x00004022
_0803462C: .4byte 0x000003C1
_08034630: .4byte gLoadedSaveGame
_08034634: .4byte gBgScrollRegs

	thumb_func_start sub_8034638
sub_8034638: @ 0x08034638
	push {r4, r5, r6, lr}
	ldrh r4, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r4, r0
	ldr r1, _080346B4 @ =IWRAM_START + 0x130
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_8007CF0
	ldr r1, _080346B8 @ =IWRAM_START + 0x160
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_8007CF0
	ldr r1, _080346BC @ =IWRAM_START + 0x19C
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_8007CF0
	ldr r1, _080346C0 @ =IWRAM_START + 0xD0
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_8007CF0
	movs r5, #0
	ldr r0, _080346C4 @ =IWRAM_START + 0x1D8
	adds r4, r4, r0
_08034670:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	bl sub_8007CF0
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08034670
	movs r1, #0xb2
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_8007CF0
	movs r1, #0xc1
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_8007CF0
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	bl sub_8007CF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080346B4: .4byte IWRAM_START + 0x130
_080346B8: .4byte IWRAM_START + 0x160
_080346BC: .4byte IWRAM_START + 0x19C
_080346C0: .4byte IWRAM_START + 0xD0
_080346C4: .4byte IWRAM_START + 0x1D8

