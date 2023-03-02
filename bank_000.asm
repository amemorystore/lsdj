; disasSembly of "lsdj.gb"
SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_08::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_10::
    add b
    ld b, b
    jr nz, jr_000_0024

    ld [$0204], sp
    db $01

RST_18::
    ld bc, $0402
    ld [$2010], sp
    ld b, b
    add b

RST_20::
    rst $38
    rst $38
    rst $38
    rst $38

jr_000_0024:
    rst $38
    rst $38
    rst $38
    rst $38

RST_28::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_30::
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

RST_38::
    di
    ld b, b
    jr jr_000_0061

    rst $38
    rst $38
    rst $38
    rst $38

VBlankInterrupt::
    push af
    push hl
    jp Jump_000_1809


    rst $38
    rst $38
    rst $38

LCDCInterrupt::
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_0391


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_34c0


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

JoypadTransitionInterrupt::
    reti


Jump_000_0061:
jr_000_0061:
    ld a, $01
    ld [$2000], a
    db $c3
    ld d, h

    ld a, c
    rst $38
    rst $38

Jump_000_006b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0070:
    rst $38
    rst $38

Call_000_0072:
    rst $38

Jump_000_0073:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0082:
    rst $38
    rst $38

Call_000_0084:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_0093:
    rst $38
    rst $38

Call_000_0095:
    rst $38

Call_000_0096:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00c9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00e8:
Jump_000_00e8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Boot::
    nop
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "LSDj-v9.2.L"

HeaderManufacturerCode::
    db $00, $00, $00, $00

HeaderCGBFlag::
    db $80

HeaderNewLicenseeCode::
    db $30, $30

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $05

HeaderRAMSize::
    db $04

HeaderDestinationCode::
    db $00

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $01

HeaderComplementCheck::
    db $ac

HeaderGlobalChecksum::
    db $93, $5e

Jump_000_0150:
    di
    ld d, a
    ld a, b
    ld e, a
    xor a
    ld sp, $e000
    ld hl, $dfff
    ld c, $20
    ld b, $00

jr_000_015f:
    ld [hl-], a
    dec b
    jr nz, jr_000_015f

    dec c
    jr nz, jr_000_015f

    ld hl, $ffff
    ld b, $80

jr_000_016b:
    ld [hl-], a
    dec b
    jr nz, jr_000_016b

    ld a, d
    ld [$cbd8], a
    ld a, e
    ld [$cbd9], a
    call Call_000_349e
    xor a
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rSTAT], a
    ldh [rWY], a
    ld a, $07
    ldh [rWX], a
    ld bc, $ff80
    ld hl, $34b5
    ld b, $0b

jr_000_018f:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_018f

    ld a, $e4
    ldh [rBGP], a
    ldh [rOBP0], a
    ld a, $1b
    ldh [rOBP1], a
    ld a, $c0
    ldh [rLCDC], a
    xor a
    ldh [rIF], a
    ld a, $01
    ldh [rIE], a
    xor a
    ldh [rSC], a
    ld a, $66
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    xor a
    ei
    jp Jump_000_12cf


jr_000_01ba:
    db $76
    jr jr_000_01ba

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    inc b
    ld b, $08
    ld a, [bc]
    inc c
    ld c, $10
    ld [de], a
    inc d
    ld d, $18
    ld a, [de]
    inc e
    ld e, $20
    ld e, $1c
    ld a, [de]
    jr jr_000_022c

    inc d
    ld [de], a
    db $10
    ld c, $0c
    ld a, [bc]
    ld [$0406], sp
    ld [bc], a
    nop
    db $fd
    ei
    ld sp, hl
    rst $30
    push af
    di
    pop af
    rst $28
    db $ed
    db $eb
    jp hl


jr_000_022c:
    rst $20
    push hl
    db $e3
    pop hl
    rst $18
    pop hl
    db $e3
    push hl
    rst $20
    jp hl


    db $eb
    db $ed
    rst $28
    pop af
    di
    push af
    rst $30
    ld sp, hl
    ei
    db $fd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_000_02a2

    jr nz, jr_000_02a4

    jr nz, jr_000_02a6

    jr nz, jr_000_02a8

    jr nz, jr_000_02aa

    jr nz, jr_000_02ac

    jr nz, jr_000_02ae

    jr nz, jr_000_02b0

    jr nz, jr_000_02b2

    jr nz, jr_000_02b4

    jr nz, jr_000_02b6

    jr nz, jr_000_02b8

    jr nz, jr_000_02ba

    jr nz, jr_000_02bc

    jr nz, jr_000_02be

    jr nz, jr_000_02c0

    rst $18
    rst $18

jr_000_02a2:
    rst $18
    rst $18

jr_000_02a4:
    rst $18
    rst $18

jr_000_02a6:
    rst $18
    rst $18

jr_000_02a8:
    rst $18
    rst $18

jr_000_02aa:
    rst $18
    rst $18

jr_000_02ac:
    rst $18
    rst $18

jr_000_02ae:
    rst $18
    rst $18

jr_000_02b0:
    rst $18
    rst $18

jr_000_02b2:
    rst $18
    rst $18

jr_000_02b4:
    rst $18
    rst $18

jr_000_02b6:
    rst $18
    rst $18

jr_000_02b8:
    rst $18
    rst $18

jr_000_02ba:
    rst $18
    rst $18

jr_000_02bc:
    rst $18
    rst $18

jr_000_02be:
    rst $18
    rst $18

jr_000_02c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $00
    ld l, a
    ret


    ld h, $00
    add a
    ld l, a
    ret


    ld h, $00
    ld l, a
    add a
    add l
    ld l, a
    ret


    ld h, $00
    add a
    add a
    ld l, a
    ret


    ld h, $00
    ld e, a
    add a
    add e
    add a
    ld l, a
    ret


    ld h, $00
    add a
    add a
    add a
    ld l, a
    ret nc

    inc h
    ret


    ld h, $00
    ld e, a
    add a
    add e
    add a
    ld l, a
    add hl, hl
    ret


    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld e, a
    add a
    add a
    add e
    ld l, a
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld e, a
    add a
    add e
    add a
    ld l, a
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld d, h
    ld e, a
    add a
    add e
    add a
    add e
    ld l, a
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld d, h
    ld l, a
    ld e, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

Jump_000_0361:
    add hl, hl
    ret


    ld h, $00
    ld d, h
    ld e, a
    add a
    add a
    add e
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld d, h
    ld e, a
    add a
    add e
    add a

Jump_000_0376:
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    ld e, a
    add a
    add e
    add a
    add e
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ret


    ld h, $00
    add a
    add a
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ret


Jump_000_0391:
    push af
    push bc
    push de
    push hl
    ld_long a, $ff90
    or a
    jr z, jr_000_03a6

    ld a, [$c401]
    xor $01
    ld [$c401], a
    jp nz, Jump_000_065f

jr_000_03a6:
    ld a, [$c8f4]
    or a
    jp z, Jump_000_069d

    ld a, [$c4e7]
    or a
    jr z, jr_000_03d5

    cp $40
    jr nz, jr_000_03bd

    inc a
    ld [$c4e7], a
    jr jr_000_03d5

jr_000_03bd:
    dec a
    ld [$c4e7], a
    jp Jump_000_0581


Jump_000_03c4:
    xor a
    ldh [rNR30], a
    ld a, $02
    ld [$cba2], a
    ld_long a, $ff8e
    ld [$2000], a
    jp Jump_000_0581


jr_000_03d5:
    ld a, [$c8f4]
    bit 0, a
    jp z, Jump_000_045c

    ld a, [$c4fb]
    ld h, a
    ld a, [$c4d8]
    cp h
    jr c, jr_000_03f7

    jr nz, jr_000_0411

    ld a, [$c4fa]
    ld h, a
    ld a, [$c4d7]
    cp h
    jr c, jr_000_03f7

    jr nz, jr_000_0411

    jr jr_000_03f7

jr_000_03f7:
    ld a, [$c4e5]
    or a
    jr nz, jr_000_0406

    ld hl, $c8f4
    ld a, [hl]
    and $fe
    ld [hl], a
    jr jr_000_045c

jr_000_0406:
    ld hl, $c4d5
    ld a, [hl+]
    ld [$c4fa], a
    ld a, [hl]
    ld [$c4fb], a

jr_000_0411:
    ld hl, $c4fa
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffa0
    ld a, [$c4f5]
    ld [$2000], a
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, e
    ld [$c4fa], a
    or a
    jr nz, jr_000_045c

    ld a, d
    inc a
    ld [$c4fb], a

Jump_000_045c:
jr_000_045c:
    ld a, [$c8f4]
    bit 1, a
    jr z, jr_000_0495

    ld a, [$c4fd]
    ld h, a
    ld a, [$c4dc]
    cp h
    jr c, jr_000_047b

    jr nz, jr_000_0495

    ld a, [$c4fc]
    ld h, a
    ld a, [$c4db]
    cp h
    jr c, jr_000_047b

    jr nz, jr_000_0495

jr_000_047b:
    ld a, [$c4e6]
    or a
    jr nz, jr_000_048a

    ld hl, $c8f4
    ld a, [hl]
    and $fd
    ld [hl], a
    jr jr_000_0495

jr_000_048a:
    ld hl, $c4d9
    ld a, [hl+]
    ld [$c4fc], a
    ld a, [hl]
    ld [$c4fd], a

jr_000_0495:
    ld a, [$c8f4]
    bit 0, a
    jr z, jr_000_04c3

    bit 1, a
    jr z, jr_000_0513

    ld a, [$c4f6]
    ld [$2000], a
    ld c, $a0
    ld hl, $c4fc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    add $10
    ld [$c4fc], a
    jr nz, jr_000_04ba

    ld a, d
    inc a
    ld [$c4fd], a

jr_000_04ba:
    ld a, [$c4f9]
    ld h, a
    call $d480
    jr jr_000_0513

jr_000_04c3:
    bit 1, a
    jp z, Jump_000_03c4

    ld hl, $c4fc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffa0
    ld a, [$c4f6]
    ld [$2000], a
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, [de]
    ld [hl+], a
    inc e
    ld a, e
    ld [$c4fc], a
    or a
    jr nz, jr_000_0513

    ld a, d
    inc a
    ld [$c4fd], a

jr_000_0513:
    ld_long a, $ff8e
    ld [$2000], a
    ld hl, $c0f8
    ld a, [hl+]
    ldh [$b0], a
    ld a, [hl]
    ldh [$b1], a
    ld hl, sp+$00
    ld a, h
    ldh [$b3], a
    ld a, l
    ldh [$b2], a
    ld sp, $ffa0
    ld hl, $ff30
    pop de
    pop bc
    ldh a, [rNR51]
    ldh [$b4], a
    and $bb
    ldh [rNR51], a
    xor a
    ldh [rNR30], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $80
    ldh [rNR30], a
    ld a, $e0
    ldh [rNR33], a
    ld a, $87
    ldh [rNR34], a
    ldh a, [$b4]
    ldh [rNR51], a
    pop bc
    ld a, c
    ldh [rNR33], a
    ld a, b
    ldh [rNR34], a
    pop hl
    ld sp, hl
    ld a, $01
    ld [$cba2], a

Jump_000_0581:
    ld a, [$c3f9]
    or a
    jr z, jr_000_058d

    call Call_000_195d
    call Call_000_1b5e

jr_000_058d:
    ld a, [$c3fa]
    or a
    jr z, jr_000_0599

    call Call_000_19dd
    call Call_000_1bad

jr_000_0599:
    ld a, [$c3fb]
    or a
    jr z, jr_000_05b0

    ld a, [$c8f4]
    or a
    jr z, jr_000_05aa

    call Call_000_066a
    jr jr_000_05b0

jr_000_05aa:
    call Call_000_1a5e
    call Call_000_1bf4

jr_000_05b0:
    ld de, $c14c
    ld a, [de]
    or a
    jr z, jr_000_05ce

    ld hl, $c148
    dec [hl]
    jr nz, jr_000_05ce

    ld [hl], a
    ld a, [$c2d8]
    swap a
    or $08
    ldh [rNR12], a
    ld a, [$c0f5]
    or $80
    ldh [rNR14], a

jr_000_05ce:
    inc e
    ld a, [de]
    or a
    jr z, jr_000_05ea

    ld hl, $c149
    dec [hl]
    jr nz, jr_000_05ea

    ld [hl], a
    ld a, [$c2d9]
    swap a
    or $08
    ldh [rNR22], a
    ld a, [$c0f7]
    or $80
    ldh [rNR24], a

jr_000_05ea:
    inc e
    ld a, [de]
    or a
    jr z, jr_000_05fd

    ld hl, $c14a
    dec [hl]
    jr nz, jr_000_05fd

    ld [hl], a
    ld a, [$c0f9]
    or $80
    ldh [rNR34], a

jr_000_05fd:
    inc e
    ld a, [de]
    or a
    jr z, jr_000_0616

    ld hl, $c14b
    dec [hl]
    jr nz, jr_000_0616

    ld [hl], a
    ld a, [$c2db]
    swap a
    or $08
    ldh [rNR42], a
    ld a, $80
    ldh [rNR44], a

jr_000_0616:
    ld a, [$cbbe]
    or a
    jr z, jr_000_0623

    ld hl, $cbc0
    dec [hl]
    call z, Call_000_2f6c

jr_000_0623:
    ld a, [$cbc5]
    or a
    jr z, jr_000_0630

    ld hl, $cbc7
    dec [hl]
    call z, Call_000_2f82

jr_000_0630:
    ld a, [$cbcc]
    or a
    jr z, jr_000_063d

    ld hl, $cbce
    dec [hl]
    call z, Call_000_2f98

jr_000_063d:
    ld a, [$cb6d]
    cp $01
    jr z, jr_000_0649

    call nc, Call_000_237d
    jr jr_000_065f

jr_000_0649:
    ld hl, $c955
    ld a, [hl]
    sub $08
    ld [hl-], a
    jr nc, jr_000_065f

    ld a, [$c952]
    add [hl]
    ld [hl+], a
    ld a, [$c953]
    adc [hl]
    ld [hl], a
    call Call_000_2233

Jump_000_065f:
jr_000_065f:
    pop hl
    pop de
    pop bc

Jump_000_0662:
jr_000_0662:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_0662

    pop af
    reti


Call_000_066a:
Jump_000_066a:
    ld hl, $c2d4
    ld de, $c0f8
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ld a, [$c319]
    or a
    ret z

    ld hl, $c320
    ld de, $c0f8
    ld a, [de]
    sub [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    sbc [hl]
    ld [de], a
    call Call_000_1ab6
    ld hl, $c320
    ld de, $c0f8
    ld a, [de]
    add [hl]
    ld [de], a
    inc e
    inc l
    ld a, [de]
    adc [hl]
    ld [de], a
    ret


Jump_000_069d:
    ldh a, [rDIV]
    ld e, a
    ld hl, $c400
    sub [hl]
    ld [hl], e
    ld h, $00
    ld l, a
    ld_long a, $ff90
    or a
    jr nz, jr_000_06af

    add hl, hl

jr_000_06af:
    add hl, hl
    ld d, h
    ld a, l
    ld hl, $c363
    add [hl]
    ld [hl+], a
    ld a, d
    adc [hl]
    ld [hl], a
    ld hl, $c0f8
    xor a
    sub [hl]
    ld c, a
    inc l
    ld a, $08
    sbc [hl]
    ld b, a
    jr nz, jr_000_06ec

    or c
    jr z, jr_000_070a

    sla c
    rl b
    jr nz, jr_000_06ec

    sla c
    rl b
    jr nz, jr_000_06ec

    sla c
    rl b
    jr nz, jr_000_06ec

    sla c
    rl b
    jr nz, jr_000_06ec

    sla c
    rl b
    jr nz, jr_000_06ec

    sla c
    rl b

jr_000_06ec:
    ld hl, $c363
    ld e, [hl]
    inc l
    ld d, [hl]
    ld a, d

jr_000_06f3:
    cp b
    jr c, jr_000_0704

    jr nz, jr_000_06fc

    ld a, e
    cp c
    jr c, jr_000_0704

jr_000_06fc:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr jr_000_06f3

jr_000_0704:
    ld hl, $c363
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_000_070a:
    ld a, [$c69b]
    or a
    jp z, Jump_000_0581

    ld hl, $c363
    ld a, c
    sub [hl]
    ld c, a
    inc l
    ld a, b
    sbc [hl]
    ld b, a
    ld_long a, $ff90
    or a
    jr z, jr_000_0732

    srl b
    rr c
    ld a, b
    or a
    jp nz, Jump_000_0581

    ld a, c
    cp $5c
    jp nc, Jump_000_0581

    jr jr_000_0745

jr_000_0732:
    srl b
    rr c
    srl b
    rr c
    ld a, b
    or a
    jp nz, Jump_000_0581

    ld a, c
    cp $2e
    jp nc, Jump_000_0581

jr_000_0745:
    ld a, [$c400]
    ld d, a

jr_000_0749:
    ldh a, [rDIV]
    ld h, a
    sub d
    ld l, a
    ld d, h
    ld a, c
    sub l
    ld c, a
    jr nc, jr_000_0749

    call Call_000_075a
    jp Jump_000_0581


Call_000_075a:
    ld hl, $c0f8
    ld a, [hl+]
    ldh [$b0], a
    ld a, [hl]
    ldh [$b1], a
    ld hl, sp+$00
    ld a, h
    ldh [$b3], a
    ld a, l
    ldh [$b2], a
    ld sp, $ffa0
    ld hl, $ff30
    pop bc
    pop de
    ldh a, [rDIV]
    ld [$c400], a
    xor a
    ld [$c364], a
    ld [$c363], a
    ldh a, [rNR51]
    ldh [$b4], a
    and $bb
    ldh [rNR51], a
    xor a
    ldh [rNR30], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    pop bc
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, $80
    ldh [rNR30], a
    ld a, $e0
    ldh [rNR33], a
    ld a, $87
    ldh [rNR34], a
    ldh a, [$b4]
    ldh [rNR51], a
    pop bc
    ld a, c
    ldh [rNR33], a
    ld a, b
    ldh [rNR34], a
    pop hl
    ld sp, hl
    xor a
    ld [$c69b], a
    inc a
    ld [$cba2], a
    ret


Call_000_07d2:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $06
    jp c, Jump_000_07e0

    call Call_000_144b

Jump_000_07e0:
    ld hl, sp+$07
    ld a, [hl]
    cp $2a
    jp c, Jump_000_07eb

    call Call_000_144b

Jump_000_07eb:
    ld a, $2a
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $c579
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld e, c
    add sp, $02
    pop bc
    ret


    dec l
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, e
    ld c, h
    ld c, l
    ld c, a
    ld d, b
    ld d, d
    ld d, e
    ld d, h
    ld d, [hl]
    ld d, a
    ld e, d
    nop
    jr nz, jr_000_0853

    ld c, l
    ld b, c
    ld c, [hl]
    ld d, l
    ld b, c
    ld c, h
    nop
    jr nz, jr_000_085c

    jr nz, jr_000_085e

    ld c, a
    ld c, [hl]
    ld b, e
    ld b, l
    nop
    jr nz, jr_000_0865

    jr nz, jr_000_0867

    ld c, h
    ld c, a
    ld c, a
    ld d, b
    nop
    ld d, b
    ld c, c
    ld c, [hl]
    ld b, a
    ld d, b
    ld c, a
    ld c, [hl]

jr_000_0853:
    ld b, a
    nop
    jr nz, jr_000_0877

    ld d, d
    ld b, l
    ld d, e
    ld e, c
    ld c, [hl]

jr_000_085c:
    ld b, e
    nop

jr_000_085e:
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_000_0863

jr_000_0863:
    ld b, e
    nop

jr_000_0865:
    nop
    dec [hl]

jr_000_0867:
    ld [hl], $01
    dec sp
    dec l
    daa
    ld l, $46
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc

jr_000_0877:
    inc c
    cpl
    ld b, l
    nop
    jr nc, jr_000_08b3

    add hl, hl
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_000_08a5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_000_08b5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $3c
    nop
    ld b, h
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_000_08a5:
    inc sp
    inc [hl]
    ld sp, $3732
    jr c, jr_000_08e5

    ld a, [hl-]
    ld b, l
    nop
    nop
    nop
    nop
    nop

jr_000_08b3:
    nop
    nop

jr_000_08b5:
    dec [hl]
    inc l
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_000_08ea

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_000_08fa

    ld [hl+], a

Jump_000_08da:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_000_090a

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_000_08e5:
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_000_08ea:
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec l
    ld d, h
    nop
    ld l, $34
    daa

Call_000_08f7:
    push bc
    add sp, -$02

jr_000_08fa:
    ld hl, sp+$06
    ld a, [hl]
    cp $06
    jp c, Jump_000_0905

    call Call_000_144b

Jump_000_0905:
    ld hl, sp+$07
    ld a, [hl]
    cp $2a

jr_000_090a:
    jp c, Jump_000_0910

    call Call_000_144b

Jump_000_0910:
    ld a, $2a
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $c579
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$08
    ld a, [hl]
    ld [de], a
    add sp, $02
    pop bc
    ret


Call_000_0942:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp c, Jump_000_0950

    call Call_000_144b

Jump_000_0950:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_000_095b

    call Call_000_144b

Jump_000_095b:
    ld hl, sp+$07
    ld a, [hl]
    or a
    jp nz, Jump_000_096d

    ld hl, sp+$08
    ld a, [hl]
    cp $04
    jp c, Jump_000_096d

    call Call_000_144b

Jump_000_096d:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_000_097b

jr_000_0976:
    or a
    rl c
    rl b

jr_000_097b:
    dec a
    jr nz, jr_000_0976

    ld hl, $b080
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


    nop

Jump_000_09a9:
    nop
    inc de
    nop
    ld h, $00
    add hl, sp
    nop
    ld c, h
    nop
    ld h, b
    nop
    ld [hl], e
    nop
    add [hl]
    nop
    sbc c
    nop
    xor h
    nop
    cp a
    nop
    jp nc, $e500

    nop
    ld hl, sp+$00
    dec bc
    ld bc, $011f
    ld [hl-], a
    ld bc, $0145
    ld e, b
    ld bc, $016b
    ld a, [hl]
    ld bc, $0191
    and h
    ld bc, $01b7
    jp z, $de01

    ld bc, $01f1
    inc b
    ld [bc], a
    rla
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    dec a
    ld [bc], a
    ld d, b
    ld [bc], a
    ld h, e
    ld [bc], a
    db $76
    ld [bc], a
    adc c
    ld [bc], a
    sbc l
    ld [bc], a
    or b
    ld [bc], a
    jp $d602


    ld [bc], a
    jp hl


    ld [bc], a
    db $fc
    ld [bc], a
    rrca
    inc bc
    ld [hl+], a
    inc bc
    dec [hl]
    inc bc
    ld c, c
    inc bc
    ld e, h
    inc bc
    ld l, a
    inc bc
    add d
    inc bc
    sub l
    inc bc
    xor b
    inc bc
    cp e
    inc bc
    adc $03
    pop hl
    inc bc
    db $f4
    inc bc
    ld [$1b04], sp
    inc b
    ld l, $04
    ld b, c
    inc b
    ld d, h
    inc b
    ld h, a
    inc b
    ld a, d
    inc b
    adc l
    inc b
    and b
    inc b
    or e
    inc b
    rst $00
    inc b
    jp c, $ed04

    inc b
    nop
    dec b
    inc de
    dec b
    ld h, $05
    add hl, sp
    dec b
    ld c, h
    dec b
    ld e, a
    dec b
    ld [hl], e
    dec b
    add [hl]
    dec b
    sbc c
    dec b
    xor h
    dec b
    cp a
    dec b
    jp nc, $e505

    dec b
    ld hl, sp+$05
    dec bc
    ld b, $1e
    ld b, $32
    ld b, $45
    ld b, $58
    ld b, $6b
    ld b, $7e
    ld b, $91
    ld b, $a4
    ld b, $b7
    ld b, $ca
    ld b, $dd
    ld b, $f1
    ld b, $04
    rlca
    rla
    rlca
    ld a, [hl+]
    rlca
    dec a
    rlca
    ld d, b
    rlca
    ld h, e
    rlca
    db $76
    rlca
    adc c
    rlca
    sbc h
    rlca
    or b
    rlca
    jp $d607


    rlca
    jp hl


    rlca
    db $fc
    rlca

Call_000_0a80:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp c, Jump_000_0a8e

    call Call_000_144b

Jump_000_0a8e:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_000_0a99

    call Call_000_144b

Jump_000_0a99:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_000_0aa7

jr_000_0aa2:
    or a
    rl c
    rl b

jr_000_0aa7:
    dec a
    jr nz, jr_000_0aa2

    ld hl, $b080
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl

Call_000_0abb:
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_000_0ad1:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    pop bc
    ret


Call_000_0ae5:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $04
    jp c, Jump_000_0af3

    call Call_000_144b

Jump_000_0af3:
    ld hl, sp+$07
    ld a, [hl]
    cp $c0
    jp c, Jump_000_0afe

    call Call_000_144b

Jump_000_0afe:
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, $03
    jr jr_000_0b0c

jr_000_0b07:
    or a
    rl c
    rl b

jr_000_0b0c:
    dec a
    jr nz, jr_000_0b07

    ld hl, $b290
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    bit 7, a
    jp z, Jump_000_0b3d

    ld b, $ff
    jp Jump_000_0b3e


Jump_000_0b3d:
    ld b, c

Jump_000_0b3e:
    ld e, b
    add sp, $02
    pop bc
    ret


Call_000_0b43:
    push bc
    add sp, -$09
    ldh a, [$8e]
    ld hl, sp+$08
    ld [hl], a
    ld a, $1e
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1e
    ld hl, sp+$07
    ld [hl], $00

Jump_000_0b58:
    ld hl, sp+$07
    ld a, [hl]
    cp $20
    jp nc, Jump_000_0be0

    ld hl, sp+$0d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_000_0bb2

    inc hl
    ld a, [hl]
    add a
    ld c, a
    ld de, $c9f3
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    inc hl
    ld c, [hl]
    ld a, c
    rla
    sbc a
    ld b, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $ff
    ld [hl], a
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    jp Jump_000_0bcb


Jump_000_0bb2:
    ld hl, sp+$07
    ld a, [hl]
    add a
    ld c, a
    ld a, $f3
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    ld c, [hl]
    ld a, c
    rla
    sbc a
    ld b, a
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a

Jump_000_0bcb:
    ld hl, sp+$0d
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0001
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$0d
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    inc [hl]
    jp Jump_000_0b58


Jump_000_0be0:
    ld hl, sp+$08
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $09
    pop bc
    ret


Call_000_0bed:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, $0c0a
    push hl
    ld l, b
    ld h, c
    jp hl


    ld b, e
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_000_0c18:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $0c39
    push hl
    ld l, b
    ld h, c
    jp hl


    ld b, e
    add sp, $01
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_000_0c49:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $0c6f
    push hl
    ld l, b
    ld h, c
    jp hl


    add sp, $02
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_000_0c7e:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $0ca4
    push hl
    ld l, b
    ld h, c
    jp hl


    ld b, e
    add sp, $02
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_000_0cb4:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $0cde
    push hl
    ld l, b
    ld h, c
    jp hl


    add sp, $03
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_000_0ced:
    push bc
    add sp, -$01
    ldh a, [$8e]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_1441
    ld b, e
    add sp, $01
    xor a
    ld a, $3f
    sbc b
    jp nc, Jump_000_0d0c

    ld e, $00
    jp Jump_000_0d37


Jump_000_0d0c:
    ld a, b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], b
    ld de, $4000
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    cp $60
    jp nz, Jump_000_0d2b

    ld a, c
    cp $40
    jp nz, Jump_000_0d2b

    ld a, $01
    jr jr_000_0d2c

Jump_000_0d2b:
    xor a

jr_000_0d2c:
    ld b, a
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8e], a
    ld hl, $2000
    ld [hl], a
    ld e, b

Jump_000_0d37:
    add sp, $01
    pop bc
    ret


Call_000_0d3b:
    push bc
    ldh a, [$8e]
    ld c, a
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_1441
    ld a, e
    ldh [$8e], a
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_1441
    ld hl, $2000
    ld [hl], e
    add sp, $01
    ld hl, $0006
    push hl
    ld hl, $4052
    push hl
    ld hl, $c43b
    push hl
    call Call_000_3846
    add sp, $06
    ld de, $c441
    ld a, $00
    ld [de], a
    ld a, c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], c
    pop bc
    ret


Call_000_0d7a:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    inc hl
    ld [hl], a
    ld hl, sp+$0a
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld a, [hl+]
    sbc [hl]
    jp nc, Jump_000_0da7

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [de], a
    inc hl
    ld a, [hl]
    ld [bc], a

Jump_000_0da7:
    add sp, $04
    pop bc
    ret


Call_000_0dab:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld hl, $c6a8
    push hl
    call Call_000_3834
    add sp, $04
    ld bc, $7500
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_000_0dca:
    push bc
    call Call_000_3427
    call Call_000_17ca
    ld hl, $0000
    ld [hl], $00
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $6b7a
    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    call $4cf1
    call $4848
    ld c, e
    xor a
    or c
    jp nz, Jump_000_0e49

    call Call_000_3a36
    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call $4487
    ld a, $00
    push af
    inc sp
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call $45d1

Jump_000_0e49:
    call $48d4
    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $4057
    ld c, e
    xor a
    or c
    jp z, Jump_000_0e7c

    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    call $4811
    ld c, e
    xor a
    or c
    jp nz, Jump_000_0e7c

    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $47b1

Jump_000_0e7c:
    di
    ldh a, [rSTAT]
    or $40
    ldh [rSTAT], a
    ld a, $49
    ldh [rTMA], a
    ld a, $06
    ldh [rTAC], a
    ld bc, $7c94
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ei
    pop bc
    ret


Call_000_0e9f:
    push bc
    add sp, -$05
    ld hl, $cb99
    ld [hl], $ff
    xor a
    ld hl, $cb7c
    or [hl]
    jp z, Jump_000_0edc

    ld a, $07
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $07

Jump_000_0eb8:
    call $6864
    ld hl, sp+$04
    ld [hl], e
    ld hl, $cb7c
    dec [hl]
    xor a
    or [hl]
    jp z, Jump_000_0ecf

    ld hl, sp+$04
    ld a, [hl]
    cp $ff
    jp z, Jump_000_0eb8

Jump_000_0ecf:
    ld hl, sp+$04
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_0efe

    ld e, $01
    jp Jump_000_125d


Jump_000_0edc:
    call Call_000_1ca1
    ld hl, sp+$04
    ld [hl], e
    xor a
    ld hl, $cb7d
    or [hl]
    jp z, Jump_000_0efe

    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_000_0ef9

    ld hl, $cb7d
    ld [hl], $00
    jp Jump_000_0efe


Jump_000_0ef9:
    ld e, $01
    jp Jump_000_125d


Jump_000_0efe:
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_000_0f23

    ld a, [hl]
    cp $40
    jp z, Jump_000_0f13

    ld hl, $c675
    ld [hl], $00
    jp Jump_000_0f34


Jump_000_0f13:
    xor a
    ld hl, $c576
    or [hl]
    jp nz, Jump_000_0f34

    ld hl, $c675
    ld [hl], $01
    jp Jump_000_0f34


Jump_000_0f23:
    xor a
    ld hl, $c675
    or [hl]
    jp z, Jump_000_0f34

    ld hl, sp+$04
    ld [hl], $43
    ld hl, $c675
    ld [hl], $00

Jump_000_0f34:
    ld hl, $c576
    ld a, [hl]
    bit 4, a
    jp z, Jump_000_1134

    ld hl, sp+$04
    ld a, [hl]
    bit 4, a
    jp nz, Jump_000_1134

    xor a
    ld hl, $c404
    or [hl]
    jp z, Jump_000_0f97

    ld [hl], $00
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ld hl, $c41b
    ld b, [hl]
    ld a, b
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call $6e87
    ld hl, sp+$05
    ld [hl], e
    add sp, $02
    ld a, e
    cp $ff
    jp z, Jump_000_0f97

    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call $4cfb
    add sp, $01
    ld hl, $c41e
    ld b, [hl]
    ld a, $54
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$03
    ld a, [hl]
    ld [de], a

Jump_000_0f97:
    xor a
    ld hl, $c405
    or [hl]
    jp z, Jump_000_0fe8

    ld [hl], $00
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$05

Jump_000_0fbb:
    ld [hl], e
    add sp, $02
    ld a, e
    cp $80
    jp nc, Jump_000_0fe8

    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call $4d67
    add sp, $01
    ld hl, $c41e
    ld b, [hl]
    ld a, $50
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$03
    ld a, [hl]
    ld [de], a

Jump_000_0fe8:
    xor a
    ld hl, $c9b5
    or [hl]
    jp z, Jump_000_0ffc

    ld a, $1f
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1f
    call $4a25

Jump_000_0ffc:
    xor a
    ld hl, $c446
    or [hl]
    jp z, Jump_000_101d

    ld [hl], $00
    ld hl, $c447
    ld a, [hl]
    ld hl, $c445
    ld [hl], a
    push af
    inc sp
    ld hl, $bfb5
    push hl
    ld a, $01

Call_000_1016:
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_000_101d:
    ld hl, $c572
    ld a, [hl]
    cp $ff
    jp z, Jump_000_1047

    ld hl, $c572
    ld [hl], $ff
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $7b9b
    ld hl, $c573
    ld a, [hl]
    ld hl, $c529
    ld [hl], a
    call Call_000_1ebd
    ld e, $00
    jp Jump_000_125d


Jump_000_1047:
    ld hl, $c468
    ld a, [hl]
    cp $ff
    jp z, Jump_000_1120

    ld b, $00

Jump_000_1052:
    ld a, b
    cp $10
    jp nc, Jump_000_111b

    ld de, $c458
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_1117

    xor a
    ld a, $13

Jump_000_1074:
    sbc [hl]
    jp nc, Jump_000_107b

    call Call_000_144b

Jump_000_107b:
    ld hl, $c468
    ld a, [hl]
    or a
    jp z, Jump_000_1090

    cp $01

Jump_000_1085:
    jp z, Jump_000_10af

    cp $02
    jp z, Jump_000_10d8

    jp Jump_000_10fe


Jump_000_1090:
    ld a, $04
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $04
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call $49c5
    add sp, $03
    jp Jump_000_10fe


Jump_000_10af:
    ld a, $05
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $05
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call $43b7
    add sp, $02
    jp Jump_000_10fe


Jump_000_10d8:
    ld a, $05
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $05
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call $43b7
    add sp, $02

Jump_000_10fe:
    ld hl, $c41e
    ld c, [hl]
    ld a, $4c
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    dec hl
    dec hl

Jump_000_1111:
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a

Jump_000_1117:
    inc b
    jp Jump_000_1052


Jump_000_111b:
    ld hl, $c468
    ld [hl], $ff

Jump_000_1120:
    xor a
    ld hl, $c9d4
    or [hl]
    jp z, Jump_000_1134

    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $4d5f

Jump_000_1134:
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_000_1232

    ld c, $01
    ld hl, $c563
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    cp $21
    jp z, Jump_000_1171

    ld hl, sp+$04
    ld a, [hl]
    bit 4, a
    jp z, Jump_000_1171

    and $0f
    jr nz, jr_000_1159

    jp Jump_000_1171


jr_000_1159:
    ld hl, $c563
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $21
    ld [de], a
    push af

Jump_000_1163:
    inc sp
    ld hl, $bfc1
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_000_1171:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $c576
    cp [hl]
    jr nz, jr_000_117e

    ld a, $01
    jr jr_000_117f

jr_000_117e:
    xor a

jr_000_117f:
    ld hl, $c409
    ld [hl], a
    or a
    jp nz, Jump_000_1197

    ld hl, $c52c
    ld a, [hl]
    ld hl, $c407
    ld [hl], a
    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    ld [hl], a

Jump_000_1197:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $c576
    ld [hl], a
    ld hl, $c407
    ld a, [hl]
    ld hl, $c52c
    cp [hl]
    jp nz, Jump_000_11c3

    ld a, $03
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $03
    call Call_000_2b40
    ld b, e
    ld c, b
    xor a
    or b
    jp z, Jump_000_1211

    ld hl, $c407
    dec [hl]
    jp Jump_000_1211


Jump_000_11c3:
    xor a
    ld hl, $c407
    or [hl]
    jp z, Jump_000_11cf

    dec [hl]
    jp Jump_000_1211


Jump_000_11cf:
    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    cp [hl]
    jp nz, Jump_000_11fd

    ld a, $03
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $03
    call Call_000_2b40
    ld b, e
    ld c, b
    xor a
    or b
    jp nz, Jump_000_11fd

    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    ld [hl], a
    ld hl, $c52c
    ld a, [hl]
    ld hl, $c407
    ld [hl], a

Jump_000_11fd:
    xor a
    ld hl, $c408
    or [hl]
    jp z, Jump_000_1209

    dec [hl]
    jp Jump_000_1211


Jump_000_1209:
    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    ld [hl], a

Jump_000_1211:
    xor a
    or c
    jp z, Jump_000_1226

    ld hl, $c576
    ld a, [hl]
    and $f0
    jr nz, jr_000_1221

    jp Jump_000_1226


jr_000_1221:
    ld hl, $c40a
    ld [hl], $00

Jump_000_1226:
    xor a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld e, c
    jp Jump_000_125d


Call_000_1232:
Jump_000_1232:
    xor a
    ld hl, $c576
    or [hl]
    jp z, Jump_000_125b

    ld [hl], $00
    ld hl, $c40b
    ld [hl], $00

Jump_000_1241:
    ld hl, $c40a
    ld [hl], $01
    ld hl, $c40c
    ld [hl], $00
    ld hl, $c52c
    ld a, [hl]
    ld hl, $c407
    ld [hl], a
    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    ld [hl], a

Jump_000_125b:
    ld e, $01

Jump_000_125d:
    add sp, $05
    pop bc
    ret


Call_000_1261:
    push bc
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_000_12cd

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_000_12b3

    xor a
    ld a, $14

Jump_000_1274:
    ld hl, sp+$06
    sbc [hl]
    jp nc, Jump_000_127d

    call Call_000_144b

Jump_000_127d:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    push bc
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c676
    push hl
    call Call_000_3892
    add sp, $05
    ld a, $01
    ldh [rVBK], a
    ld hl, $c676
    push hl
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a
    jp Jump_000_12cd


Jump_000_12b3:
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e64
    add sp, $05

Jump_000_12cd:
    pop bc
    ret


Jump_000_12cf:
    push bc
    ld hl, $cbd8
    ld a, [hl]
    cp $01
    jp z, Jump_000_12e1

    cp $11
    jp z, Jump_000_12f4

    jp Jump_000_12f8


Jump_000_12e1:
    ldh a, [rNR52]
    cp $f0
    jp nz, Jump_000_12ec

    ld a, $01
    jr jr_000_12ed

Jump_000_12ec:
    xor a

jr_000_12ed:
    ld hl, $c403
    ld [hl], a
    jp Jump_000_12f8


Jump_000_12f4:
    ld a, $01
    ldh [$90], a

Jump_000_12f8:
    ld a, $00
    ldh [rNR52], a
    call Call_000_0dca
    di
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call Call_000_2490
    ei
    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    ld hl, $6f87
    push hl
    call Call_000_0dab
    add sp, $02
    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $40f2
    ld hl, $c56c
    ld [hl], e
    ld hl, $bfc3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c56f
    ld [hl], e
    add sp, $03

Jump_000_1340:
    xor a
    ld hl, $c56d
    or [hl]
    jp nz, Jump_000_136e

    xor a
    ld hl, $c9f0
    or [hl]
    jp z, Jump_000_1340

    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $603c
    ld hl, $c9ef
    inc [hl]
    ld a, [hl]
    cp $10
    jp nz, Jump_000_1340

    ld hl, $c9f0
    ld [hl], $00
    jp Jump_000_1340


Jump_000_136e:
    ld hl, $c56d
    dec [hl]
    call Call_000_0e9f
    ld c, e
    xor a
    or c
    jp z, Jump_000_1395

    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_000_1395

    ld hl, $cb65
    ld a, [hl]
    cp $06
    jp z, Jump_000_1395

    ld hl, $cb68
    ld a, [hl]
    cp $ff
    jp z, Jump_000_139a

Call_000_1395:
Jump_000_1395:
    ld hl, $c68b
    ld [hl], $00

Jump_000_139a:
    call Call_000_25fe
    call Call_000_17b0
    ld c, e
    xor a
    or c
    jp z, Jump_000_13ab

    ld hl, $c68b
    ld [hl], $00

Jump_000_13ab:
    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    call $4fec
    xor a
    ld hl, $c578
    or [hl]
    jp z, Jump_000_13c8

    dec [hl]
    ld hl, $c68b

Jump_000_13c3:
    ld [hl], $00
    call $50a0

Jump_000_13c8:
    call $7869
    ld c, e
    xor a
    or c
    jp z, Jump_000_13d6

    ld hl, $c68b
    ld [hl], $00

Jump_000_13d6:
    xor a
    ld hl, $c56d
    or [hl]
    jp nz, Jump_000_13e4

    call $7881
    jp Jump_000_13e9


Jump_000_13e4:
    ld hl, $c68b
    ld [hl], $00

Jump_000_13e9:
    ld hl, $c68b
    inc [hl]
    xor a
    ld a, $07
    sbc [hl]
    jp nc, Jump_000_1340

    ld hl, $c68a
    ld [hl], $01
    ld a, $19
    push af
    inc sp
    call Call_000_3502
    add sp, $01

Jump_000_1402:
    xor a
    ld hl, $c68a
    or [hl]
    jp z, Jump_000_141c

    call Call_000_391e
    ld c, e
    ld hl, $c576
    ld a, [hl]
    cp c
    jp nz, Jump_000_141c

    call Call_000_155a
    jp Jump_000_1402


Jump_000_141c:
    ld hl, $c68a
    ld [hl], $00
    ld hl, $c68b
    ld [hl], $00
    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_000_1340

    ld hl, $cb6c
    ld a, [hl]
    or $01
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    jp Jump_000_1340


    pop bc
    ret


Call_000_1441:
    add $08
    ld e, a
    cp $1b
    ret c

    add $05
    ld e, a
    ret


Call_000_144b:
    ld b, b
    ld hl, $c7ae
    ld a, [hl]
    or a
    ret nz

    inc [hl]
    rst $38

Call_000_1454:
    ld b, b
    ret


jr_000_1456:
    ld hl, $cb7c
    ld a, [hl]
    cp $0f
    jr nc, jr_000_1474

    inc [hl]
    ld a, [$cb7b]
    inc a
    and $0f
    ld [$cb7b], a
    ld hl, $cb80
    add l
    jr nc, jr_000_146f

    inc h

jr_000_146f:
    ld l, a
    ld a, [$cbdc]
    ld [hl], a

jr_000_1474:
    ld a, [$cb66]

jr_000_1477:
    dec a
    jr nz, jr_000_1477

    call Call_000_347d
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_1482:
    xor a
    ld [$c68a], a
    ld [$cb68], a
    ld a, [$cb65]
    cp $05
    jr z, jr_000_1456

    ld a, [$cb64]
    or a
    call z, Call_000_2300
    jp Jump_000_065f


Call_000_149a:
    ld hl, sp+$02
    ld a, [hl+]
    cp $10
    call nc, Call_000_144b
    ld e, [hl]
    inc hl
    ld d, [hl]
    di
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, [de]
    ld e, a
    xor a
    ld [$0000], a
    reti


Call_000_14b5:
    ld hl, sp+$02
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, [de]
    ld e, a
    xor a
    ld [$0000], a
    ret


Call_000_14ca:
    di
    ld hl, sp+$02
    ld a, [hl+]
    ld [$4000], a
    cp $10
    call nc, Call_000_144b
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    ld [$0000], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    xor a
    ld [$0000], a
    reti


    ld hl, sp+$02
    ld a, [hl+]
    cp $10
    call nc, Call_000_144b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld d, a
    ld a, h
    cp $a0
    call c, Call_000_144b
    cp $c0
    call nc, Call_000_144b
    ld a, d
    di
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, [hl]
    ld e, a
    xor a
    ld [$0000], a
    reti


Call_000_1542:
    ld hl, sp+$02
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld l, [hl]
    di
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, l
    ld [de], a
    xor a
    ld [$0000], a
    reti


Call_000_155a:
    halt
    ret


Call_000_155d:
    push bc
    ld a, [$c4f5]
    ld_long $ff8e, a
    ld [$2000], a
    ld a, [$c4e5]
    or a
    jr nz, jr_000_1592

    push de
    ld a, [$c0ce]
    swap a
    and $0f
    dec a
    bit 3, e
    jr nz, jr_000_157f

    ld a, [$405c]
    jr jr_000_1582

jr_000_157f:
    ld a, [$405d]

jr_000_1582:
    res 3, e
    inc e

jr_000_1585:
    dec e
    jr z, jr_000_158c

    srl a
    jr jr_000_1585

jr_000_158c:
    and $01
    ld [$c4e5], a
    pop de

jr_000_1592:
    ld a, e
    add a
    ld l, a
    ld h, $40
    ld a, [$c4e8]
    ld e, a
    ld a, [hl+]
    ld c, a
    ld [$c4fa], a
    ld [$c4dd], a
    ld a, [$c4ec]
    add c
    ld c, a
    ld [$c4d5], a
    push af
    bit 7, e
    jr nz, jr_000_15b3

    ld [$c4fa], a

jr_000_15b3:
    pop af
    ld a, [hl+]
    ld [$c4fb], a
    ld [$c4de], a
    jr nc, jr_000_15be

    inc a

jr_000_15be:
    ld b, a
    ld a, [$c4eb]
    add b
    ld b, a
    ld [$c4d6], a
    bit 7, e
    jr nz, jr_000_15ce

    ld [$c4fb], a

jr_000_15ce:
    ld a, [hl+]
    ld e, a
    ld [$c4d7], a
    ld [$c4df], a
    ld a, [hl]
    ld d, a
    ld [$c4d8], a
    ld [$c4e0], a
    ld a, $02
    ld_long $ff8e, a
    ld [$2000], a
    ld a, b
    cp d
    jr nc, jr_000_15ec

    jr jr_000_15f2

jr_000_15ec:
    jr z, jr_000_15f0

    jr jr_000_15f2

jr_000_15f0:
    ld a, c
    cp e

jr_000_15f2:
    jr c, jr_000_15f6

    jr jr_000_162c

jr_000_15f6:
    ld a, [$c4ef]
    or a
    jr nz, jr_000_1627

    ld a, [$c4d5]
    ld c, a
    ld a, [$c4f1]

Jump_000_1603:
    add c
    ld c, a
    ld a, [$c4d6]
    jr nc, jr_000_160b

    inc a

jr_000_160b:
    ld b, a
    ld a, [$c4f0]
    add b
    ld b, a
    ld a, d
    cp b
    jr nc, jr_000_1617

    jr jr_000_161d

jr_000_1617:
    jr z, jr_000_161b

    jr jr_000_161d

jr_000_161b:
    ld a, e
    cp c

jr_000_161d:
    jr c, jr_000_1627

    ld a, b
    ld [$c4d8], a
    ld a, c
    ld [$c4d7], a

jr_000_1627:
    pop bc
    ld a, $01
    ld e, a
    ret


jr_000_162c:
    ld a, [$c4e8]
    or a
    jr nz, jr_000_1638

    xor a
    ld_long $ff1a, a
    jr jr_000_1641

jr_000_1638:
    xor a
    ld [$c4e5], a
    pop bc
    ld a, $01
    ld e, a
    ret


jr_000_1641:
    pop bc
    ld e, a
    ret


Call_000_1644:
    ld e, a
    and $f0
    call nz, Call_000_144b
    push bc
    ld a, [$c4f6]
    ld_long $ff8e, a
    ld [$2000], a
    ld a, [$c4e6]
    or a
    jr nz, jr_000_167d

    push de
    ld a, [$c0ce]
    and $0f
    dec a
    bit 3, e
    jr nz, jr_000_166a

    ld a, [$405c]
    jr jr_000_166d

jr_000_166a:
    ld a, [$405d]

jr_000_166d:
    res 3, e
    inc e

jr_000_1670:
    dec e
    jr z, jr_000_1677

    srl a

Jump_000_1675:
    jr jr_000_1670

jr_000_1677:
    and $01
    ld [$c4e6], a
    pop de

jr_000_167d:
    ld a, e
    add a
    ld l, a
    ld h, $40
    ld a, [$c4e9]
    ld e, a
    ld a, [hl+]
    ld c, a
    ld [$c4fc], a
    ld [$c4e1], a
    ld a, [$c4ee]
    add c
    ld c, a
    ld [$c4d9], a
    push af
    bit 7, e
    jr nz, jr_000_169e

    ld [$c4fc], a

jr_000_169e:
    pop af
    ld a, [hl+]
    ld [$c4fd], a
    ld [$c4e2], a
    jr nc, jr_000_16a9

    inc a

jr_000_16a9:
    ld b, a
    ld a, [$c4ed]
    add b
    ld b, a
    ld [$c4da], a
    bit 7, e
    jr nz, jr_000_16b9

    ld [$c4fd], a

jr_000_16b9:
    ld a, [hl+]
    ld e, a
    ld [$c4db], a
    ld [$c4e3], a
    ld a, [hl]
    ld d, a
    ld [$c4dc], a
    ld [$c4e4], a
    ld a, $02
    ld_long $ff8e, a
    ld [$2000], a
    ld a, b
    cp d
    jr nc, jr_000_16d7

    jr jr_000_16dd

jr_000_16d7:
    jr z, jr_000_16db

    jr jr_000_16dd

jr_000_16db:
    ld a, c
    cp e

jr_000_16dd:
    jr c, jr_000_16e1

    jr jr_000_1717

jr_000_16e1:
    ld a, [$c4f2]
    or a
    jr nz, jr_000_1712

    ld a, [$c4d9]
    ld c, a
    ld a, [$c4f4]
    add c
    ld c, a
    ld a, [$c4da]
    jr nc, jr_000_16f6

    inc a

jr_000_16f6:
    ld b, a
    ld a, [$c4f3]
    add b
    ld b, a
    ld a, d
    cp b
    jr nc, jr_000_1702

    jr jr_000_1708

jr_000_1702:
    jr z, jr_000_1706

    jr jr_000_1708

jr_000_1706:
    ld a, e
    cp c

jr_000_1708:
    jr c, jr_000_1712

    ld a, b
    ld [$c4dc], a
    ld a, c
    ld [$c4db], a

jr_000_1712:
    pop bc
    ld a, $01
    ld e, a
    ret


jr_000_1717:
    ld a, [$c4e9]
    or a
    jr nz, jr_000_1723

    xor a
    ld_long $ff1a, a
    jr jr_000_172c

jr_000_1723:
    xor a
    ld [$c4e6], a
    pop bc
    ld a, $01
    ld e, a
    ret


jr_000_172c:
    pop bc
    ld e, a
    ret


Call_000_172f:
    ld hl, sp+$02
    ld_long a, $ff8e
    ld d, a
    ld a, [hl+]
    ld_long $ff8e, a
    ld [$2000], a
    ld a, [hl]
    dec a
    and $0f
    ld e, a
    inc e
    xor a

jr_000_1743:
    dec e
    jr z, jr_000_174a

    add $03
    jr jr_000_1743

jr_000_174a:
    add $22
    ld l, a
    ld a, $40
    ld h, a
    ld a, [hl+]
    ld [$c43b], a
    ld a, [hl+]
    ld [$c43c], a
    ld a, [hl]
    ld [$c43d], a
    xor a
    ld [$c43e], a
    ld a, d
    ld_long $ff8e, a
    ld [$2000], a
    ret


Call_000_1768:
    jp hl


Call_000_1769:
    dec sp
    ld_long a, $ff8e
    ld hl, sp+$00
    ld [hl+], a
    inc hl
    inc hl
    ld a, [hl+]
    ld_long $ff8e, a
    ld [$2000], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1768
    ld hl, sp+$00
    ld a, [hl]
    ld_long $ff8e, a
    ld [$2000], a
    inc sp
    ret


Call_000_178a:
    dec sp
    ld_long a, $ff8e
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl+]
    ld_long $ff8e, a
    ld [$2000], a
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1768
    pop hl
    ld a, h
    ld_long $ff8e, a
    ld [$2000], a
    ret


Call_000_17b0:
    ld hl, $c424
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    ld e, a
    ret


Call_000_17bb:
    ld hl, sp+$04
    ld a, [hl-]
    ld e, a
    ld a, [hl-]
    ld l, [hl]
    ld h, a

jr_000_17c2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_17c2

    ld [hl], e
    ret


Call_000_17ca:
    ld hl, $9800
    ld b, $12

jr_000_17cf:
    ld c, $14

jr_000_17d1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_17d1

    ld [hl], a
    inc hl
    dec c
    jr nz, jr_000_17d1

    ld de, $000c
    add hl, de
    dec b
    jr nz, jr_000_17cf

    ret


Call_000_17e4:
    ld hl, $c9a8
    ld a, [hl]
    inc a
    cp $80
    jr z, jr_000_17ee

    ld [hl], a

jr_000_17ee:
    ld hl, $c69c
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    ld a, [hl]
    cp $0e
    ret nz

    xor a
    ld [hl], a
    ld hl, $c578
    inc [hl]
    ld [$c68a], a
    ret


jr_000_1803:
    call Call_000_17e4
    pop hl
    pop af
    reti


Jump_000_1809:
    ld a, [$c68a]
    or a
    jr nz, jr_000_1803

    ld [$c401], a
    ld a, $b8
    ldh [rTIMA], a
    ld hl, $cbd0
    ld a, [hl]
    or a
    call nz, $ff80
    push bc
    push de
    ld hl, $c69e
    ld a, [hl]
    or a
    jp nz, Jump_000_1937

    inc [hl]
    ei
    ld a, [$c4d3]
    or a
    jr z, jr_000_1837

    ld a, [$c56d]
    and $f0
    jr nz, jr_000_1874

jr_000_1837:
    ld a, [$cba1]
    or a
    jr z, jr_000_1874

    ld bc, $cba3
    ld hl, $8000
    ld e, $03

jr_000_1845:
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a

Jump_000_1851:
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    inc c

Jump_000_1863:
    ld [hl+], a
    ld [hl+], a
    dec e
    jr nz, jr_000_1845

    ldh a, [rSTAT]
    and $03
    cp $01
    jr nz, jr_000_1874

    xor a
    ld [$cba1], a

jr_000_1874:
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld h, $ce
    ld a, [$c571]
    ld l, a
    ld a, b

Jump_000_18a4:
    cp [hl]
    jr z, jr_000_18c6

    ld a, [$c570]
    ld hl, $c571
    cp [hl]
    jr nz, jr_000_18ba

    ld h, $ce
    ld a, [$c570]
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_000_18be

jr_000_18ba:
    ld hl, $c571
    inc [hl]

jr_000_18be:
    ld h, $ce
    ld a, [$c571]
    ld l, a
    ld a, b
    ld [hl], a

jr_000_18c6:
    call Call_000_17e4
    ld hl, $c56d
    inc [hl]
    jr nz, jr_000_18d6

    ld a, [$c4d3]
    or a
    call nz, Call_000_2092

jr_000_18d6:
    ld a, [$cb65]
    cp $01
    jr z, jr_000_18e1

    cp $03
    jr nz, jr_000_18f1

jr_000_18e1:
    ld a, [$cb68]
    cp $ff
    jr z, jr_000_18f1

    inc a
    ld [$cb68], a
    cp $0c
    call z, Call_000_1e4a

jr_000_18f1:
    ld a, [$c901]
    or a
    jr z, jr_000_1933

    cp $02
    jr z, jr_000_190e

    jr c, jr_000_191b

    cp $03
    jr z, jr_000_1928

    ldh a, [rSCX]
    add $c0
    jr nz, jr_000_190a

    ld [$c901], a

jr_000_190a:
    ldh [rSCX], a
    jr jr_000_1933

jr_000_190e:
    ldh a, [rSCX]
    add $40
    jr nz, jr_000_1917

    ld [$c901], a

jr_000_1917:
    ldh [rSCX], a
    jr jr_000_1933

jr_000_191b:
    ldh a, [rSCY]
    add $c0
    jr nz, jr_000_1924

    ld [$c901], a

jr_000_1924:
    ldh [rSCY], a
    jr jr_000_1933

jr_000_1928:
    ldh a, [rSCY]
    add $40
    jr nz, jr_000_1931

    ld [$c901], a

jr_000_1931:
    ldh [rSCY], a

jr_000_1933:
    xor a
    ld [$c69e], a

Jump_000_1937:
    pop de
    pop bc
    pop hl
    jp Jump_000_0662


Call_000_193d:
    srl a
    srl a
    add e
    ld e, a
    ld d, $02
    ld a, [de]
    bit 7, a
    jr z, jr_000_1954

    call Call_000_1958
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


jr_000_1954:
    ld l, [hl]
    ld h, $03
    jp hl


Call_000_1958:
    cpl
    ld l, [hl]
    ld h, $03
    jp hl


Call_000_195d:
    ld e, $00
    ld hl, $c2d1
    ld a, [hl-]
    or [hl]
    jr z, jr_000_19b5

    ld bc, $c337
    ld a, [bc]
    add [hl]
    ld [bc], a
    inc l
    inc c
    ld a, [bc]
    adc [hl]
    ld [bc], a
    inc e
    ld hl, $c248
    ld a, [hl+]
    or [hl]
    jr z, jr_000_19b5

    ld a, [$c2d1]
    bit 7, a
    jr z, jr_000_1992

    ld a, [hl]
    ld hl, $c338
    cp [hl]
    jr c, jr_000_19b5

    jr nz, jr_000_19a1

    ld a, [$c248]
    dec l
    cp [hl]
    jr c, jr_000_19b5

    jr jr_000_19a1

jr_000_1992:
    ld a, [$c338]
    cp [hl]
    jr c, jr_000_19b5

    jr nz, jr_000_19a1

    ld a, [$c337]
    dec l
    cp [hl]
    jr c, jr_000_19b5

jr_000_19a1:
    ld hl, $c248
    ld bc, $c337
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl]
    ld [bc], a
    xor a
    ld hl, $c2d0
    ld [hl+], a
    ld [hl], a
    call Call_000_1c5f

jr_000_19b5:
    ld a, [$c315]
    or a
    ret z

    ld b, a
    ld a, [$c310]
    ld e, a
    ld a, [$c309]
    ld hl, $c324
    call Call_000_193d
    ld a, l
    ld [$c31c], a
    ld a, h
    ld [$c31d], a
    ld hl, $c308
    ld a, [$c314]
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld e, b
    ret


Call_000_19dd:
    ld e, $00
    ld hl, $c2d3
    ld a, [hl-]
    or [hl]
    jr z, jr_000_1a35

    ld bc, $c339
    ld a, [bc]
    add [hl]
    ld [bc], a
    inc l
    inc c
    ld a, [bc]
    adc [hl]
    ld [bc], a
    inc e
    ld hl, $c24a
    ld a, [hl+]
    or [hl]
    jr z, jr_000_1a35

    ld a, [$c2d3]
    bit 7, a
    jr z, jr_000_1a12

    ld a, [hl]
    ld hl, $c33a
    cp [hl]
    jr c, jr_000_1a35

    jr nz, jr_000_1a21

    ld a, [$c24a]
    dec l
    cp [hl]
    jr c, jr_000_1a35

    jr jr_000_1a21

jr_000_1a12:
    ld a, [$c33a]
    cp [hl]
    jr c, jr_000_1a35

    jr nz, jr_000_1a21

    ld a, [$c339]
    dec l
    cp [hl]
    jr c, jr_000_1a35

jr_000_1a21:
    ld hl, $c24a
    ld bc, $c339
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl]
    ld [bc], a
    xor a
    ld hl, $c2d2
    ld [hl+], a
    ld [hl], a
    call Call_000_1c4d

jr_000_1a35:
    ld a, [$c317]
    or a
    ret z

    ld b, a
    ld a, [$c311]
    ld e, a
    ld a, [$c30b]
    ld c, a
    ld hl, $c325
    call Call_000_193d
    ld a, l
    ld [$c31e], a
    ld a, h
    ld [$c31f], a
    ld hl, $c30a
    ld a, [$c316]
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld e, b
    ret


Call_000_1a5e:
    ld e, $00
    ld hl, $c2d5
    ld a, [hl-]
    or [hl]
    jr z, jr_000_1ab6

    ld bc, $c33b
    ld a, [bc]
    add [hl]
    ld [bc], a
    inc l
    inc c
    ld a, [bc]
    adc [hl]
    ld [bc], a
    inc e
    ld hl, $c24c
    ld a, [hl+]
    or [hl]
    jr z, jr_000_1ab6

    ld a, [$c2d5]
    bit 7, a
    jr z, jr_000_1a93

    ld a, [hl]
    ld hl, $c33c
    cp [hl]
    jr c, jr_000_1ab6

    jr nz, jr_000_1aa2

    ld a, [$c24c]
    dec l
    cp [hl]
    jr c, jr_000_1ab6

    jr jr_000_1aa2

jr_000_1a93:
    ld a, [$c33c]
    cp [hl]
    jr c, jr_000_1ab6

    jr nz, jr_000_1aa2

    ld a, [$c33b]
    dec l
    cp [hl]
    jr c, jr_000_1ab6

jr_000_1aa2:
    ld hl, $c24c
    ld bc, $c33b
    ld a, [hl+]
    ld [bc], a
    inc c
    ld a, [hl]
    ld [bc], a
    xor a
    ld hl, $c2d4
    ld [hl+], a
    ld [hl], a
    call Call_000_1c3b

Call_000_1ab6:
jr_000_1ab6:
    ld a, [$c319]
    or a
    ret z

    ld b, a
    ld a, [$c312]
    ld e, a
    ld a, [$c30d]
    ld c, a
    ld hl, $c326
    call Call_000_193d

Jump_000_1aca:
    ld a, l
    ld [$c320], a
    ld a, h
    ld [$c321], a
    ld hl, $c30c
    ld a, [$c318]
    add [hl]
    ld [hl+], a
    ld a, b
    adc [hl]
    ld [hl], a
    ld e, b
    ret


Call_000_1adf:
    ld a, d
    cp $6c
    jr nc, jr_000_1b2a

jr_000_1ae4:
    ld a, [bc]
    ld l, a
    inc c
    ld a, [bc]
    ld h, a
    ld a, d
    add a
    add l
    ld l, a
    jr nc, jr_000_1af0

    inc h

jr_000_1af0:
    ld a, e
    or a
    jr z, jr_000_1b5a

    push hl
    ld c, [hl]
    inc hl
    inc hl
    ld a, [hl]
    sub c

jr_000_1afa:
    add a
    ld h, a
    ld d, $00
    ld l, d
    sla h
    jr nc, jr_000_1b04

    add hl, de

jr_000_1b04:
    add hl, hl
    jr nc, jr_000_1b08

    add hl, de

jr_000_1b08:
    add hl, hl
    jr nc, jr_000_1b0c

    add hl, de

jr_000_1b0c:
    add hl, hl
    jr nc, jr_000_1b10

    add hl, de

jr_000_1b10:
    add hl, hl
    jr nc, jr_000_1b14

    add hl, de

jr_000_1b14:
    add hl, hl
    jr nc, jr_000_1b18

    add hl, de

jr_000_1b18:
    add hl, hl
    jr nc, jr_000_1b1c

    add hl, de

jr_000_1b1c:
    bit 7, l
    jr z, jr_000_1b21

    inc h

jr_000_1b21:
    ld c, h
    pop hl
    ld a, [hl+]
    ld d, [hl]
    add c
    ld e, a
    ret nc

    inc d
    ret


jr_000_1b2a:
    cp $f8
    jr nc, jr_000_1b44

    cp $b6
    jr c, jr_000_1b3b

    add $6c
    ld d, a
    ld a, [hl]
    add $6c
    ld [hl], a
    jr jr_000_1ae4

jr_000_1b3b:
    sub $6c
    ld d, a
    ld a, [hl]
    sub $6c
    ld [hl], a
    jr jr_000_1ae4

jr_000_1b44:
    ld d, $00
    cp $ff
    jr nz, jr_000_1b56

    ld a, [bc]
    ld l, a
    inc c
    ld a, [bc]
    ld h, a
    ld a, [hl]
    ld hl, $1b58
    push hl
    jr jr_000_1afa

jr_000_1b56:
    ld e, d
    ret


    nop
    nop

jr_000_1b5a:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ret


Call_000_1b5e:
    ld a, [$c0e8]
    add $7f
    ld hl, $c174
    add [hl]
    ld d, a
    ld e, $00
    ld a, [$c695]
    or a
    jr z, jr_000_1b74

    dec d
    cpl
    inc a
    ld e, a

jr_000_1b74:
    ld a, [$c315]
    or a
    jr z, jr_000_1b83

    ld hl, $c31c
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a

jr_000_1b83:
    ld hl, $c337
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ld bc, $c356
    call Call_000_1adf
    ld a, e
    ld hl, $c0f4
    ld [hl+], a
    ld [hl], d
    ldh [rNR13], a
    ldh a, [rNR14]
    and $40
    jr nz, jr_000_1ba9

    add d
    ldh [rNR14], a
    ld a, [$c2dc]
    ldh [rNR11], a
    ret


jr_000_1ba9:
    add d
    ldh [rNR14], a
    ret


Call_000_1bad:
    ld a, [$c0e9]
    add $7f
    ld hl, $c175
    add [hl]
    ld d, a
    ld a, [$c696]
    ld e, a
    ld a, [$c317]
    or a
    jr z, jr_000_1bca

    ld hl, $c31e
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a

Jump_000_1bca:
jr_000_1bca:
    ld hl, $c339
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ld bc, $c358
    call Call_000_1adf
    ld a, e
    ld hl, $c0f6
    ld [hl+], a
    ld [hl], d
    ldh [rNR23], a
    ldh a, [rNR24]
    and $40
    jr nz, jr_000_1bf0

    add d
    ldh [rNR24], a
    ld a, [$c2dd]
    ldh [rNR21], a
    ret


jr_000_1bf0:
    add d
    ldh [rNR24], a
    ret


Call_000_1bf4:
    ld a, [$c0ea]
    add $7f
    ld hl, $c176
    add [hl]
    ld d, a
    ld hl, $c697
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    add d
    ld d, a
    ld a, [$c319]
    or a
    jr z, jr_000_1c15

    ld hl, $c320
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a

jr_000_1c15:
    ld hl, $c33b
    ld a, [hl+]
    add e
    ld e, a
    ld a, [hl]
    adc d
    ld d, a
    ld bc, $c35a
    call Call_000_1adf
    ld a, e
    ld hl, $c0f8
    ld [hl+], a
    ldh [rNR33], a
    ld a, d
    ldh [rNR34], a
    xor a
    ldh [rNR31], a
    ld [hl], d
    ret


Jump_000_1c33:
    ldh a, [$8b]
    cp $01
    jr z, jr_000_1c4d

    jr c, jr_000_1c5f

Call_000_1c3b:
    ld a, [$c361]
    or a
    ret nz

    ld hl, $c2d4
    ld a, [hl+]
    or [hl]
    ld hl, $c319
    or [hl]
    ld [$c3fb], a
    ret


Call_000_1c4d:
jr_000_1c4d:
    ld a, [$c360]
    or a
    ret nz

    ld hl, $c2d2
    ld a, [hl+]
    or [hl]
    ld hl, $c317
    or [hl]
    ld [$c3fa], a
    ret


Call_000_1c5f:
jr_000_1c5f:
    ld a, [$c35f]
    or a
    ret nz

    ld hl, $c2d0
    ld a, [hl+]
    or [hl]
    ld hl, $c315
    or [hl]
    ld [$c3f9], a
    ret


Call_000_1c71:
    ld a, [$c313]
    ld e, a
    ld a, [$c30f]
    ld hl, $c327
    call Call_000_193d
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld e, l
    ld hl, $c30e
    ld a, [$c31a]
    add [hl]
    ld [hl+], a
    ld a, [$c31b]
    adc [hl]
    ld [hl], a
    ret


Call_000_1ca1:
    push hl
    ld a, [$c570]
    ld hl, $c571
    cp [hl]
    ld h, $ce
    ld l, a
    ld a, [hl]
    jr z, jr_000_1cb3

    ld hl, $c570
    inc [hl]

jr_000_1cb3:
    pop hl
    ld e, a
    ret


Call_000_1cb6:
    ld de, $bfbd
    ld a, [de]
    ld hl, $cb65
    ld [hl], a
    ld de, $bfbf
    ld a, [de]
    ld hl, $cb66
    ld [hl], a
    xor a
    ld a, $07
    ld hl, $cb65
    sbc [hl]
    jp nc, Jump_000_1cd2

    ld [hl], $00

Jump_000_1cd2:
    xor a
    ld hl, $cb66
    or [hl]
    jp nz, Jump_000_1cdc

    ld [hl], $06

Jump_000_1cdc:
    call Call_000_1ebd
    ret


Call_000_1ce0:
    push bc
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_000_1cee

    ld a, $01
    jr jr_000_1cef

Jump_000_1cee:
    xor a

jr_000_1cef:
    ld c, a
    or c
    jp nz, Jump_000_1d00

    ld hl, $cb65
    ld a, [hl]
    cp $03
    jp z, Jump_000_1d00

    jp Jump_000_1d21


Jump_000_1d00:
    xor a
    or c
    jp z, Jump_000_1d19

    ld hl, $cb68
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_1d19

    ld hl, $cb6a
    ld [hl], $01
    call Call_000_1e7f
    jp Jump_000_1d21


Jump_000_1d19:
    ld hl, $cb6b
    ld [hl], $01
    call Call_000_347d

Jump_000_1d21:
    pop bc
    ret


Call_000_1d23:
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp z, Jump_000_1d39

    cp $03
    jp z, Jump_000_1d39

    cp $07
    jp z, Jump_000_1d4e

    jp Jump_000_1d53


Jump_000_1d39:
    ld hl, $cb6a
    ld [hl], $00
    ld hl, $cb68
    ld [hl], $ff
    ld hl, $cb6b
    ld [hl], $00
    call Call_000_1e9a
    jp Jump_000_1d53


Jump_000_1d4e:
    ld hl, $cb67
    ld [hl], $03

Jump_000_1d53:
    ret


Call_000_1d54:
    push bc
    add sp, -$02
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_000_1e0d

    ld hl, $c574
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld a, $00
    ldh [$8b], a

Jump_000_1d6c:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_000_1de8

    ld c, a
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $04
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    di
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $5f28
    ei

Jump_000_1da6:
    ld hl, $c402
    ld a, [hl]
    cp $04
    jp nz, Jump_000_1ddf

    ldh a, [$8b]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    and $0f
    ld c, a
    inc c
    inc c
    ld a, $03
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_38a5
    ld b, e
    add sp, $02
    inc b
    inc b
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    call Call_000_2f24

Jump_000_1ddf:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_000_1d6c


Jump_000_1de8:
    ld hl, $c574
    ld [hl], $b0
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $1e27
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$00
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c574
    ld [hl+], a
    ld [hl], e
    jp Jump_000_1e23


Jump_000_1e0d:
    ld hl, $c402
    ld a, [hl]
    ld hl, $c4d3
    ld [hl], a
    di
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $7b9b
    ei

Jump_000_1e23:
    add sp, $02
    pop bc
    ret


    jr nz, jr_000_1e49

    jr nz, jr_000_1e4b

    nop

Call_000_1e2c:
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_000_1e3a

    call Call_000_1d54
    jp Jump_000_1e49


Jump_000_1e3a:
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $7b9b
    call $7b9b

Jump_000_1e49:
jr_000_1e49:
    ret


Call_000_1e4a:
    push bc

jr_000_1e4b:
    ldh a, [$8e]
    ld c, a
    ld hl, $cb68
    ld [hl], $ff
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_000_1e76

    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_000_1e6a

    call Call_000_1d54
    jp Jump_000_1e76


Jump_000_1e6a:
    ld hl, $cb65
    ld a, [hl]
    cp $03
    jp nz, Jump_000_1e76

    call Call_000_1e2c

Jump_000_1e76:
    ld a, c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], c
    pop bc
    ret


Call_000_1e7f:
    push bc
    ld hl, $cb6c
    ld [hl], $00
    ld hl, $cb6d
    ld [hl], $01
    ldh a, [rIE]
    and $04
    or $01
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    pop bc
    ret


Call_000_1e9a:
    push bc
    ld hl, $cb6c
    ld [hl], $08
    ld hl, $cb6d
    ld [hl], $00
    ldh a, [rIE]
    and $04
    or $09
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    ld hl, $cb68
    ld [hl], $ff
    call Call_000_347d
    pop bc
    ret


Call_000_1ebd:
    push bc
    di
    ld hl, $cb6a
    ld [hl], $00
    ld hl, $cb65
    ld a, [hl]
    or a
    jp z, Jump_000_1ee5

    cp $01
    jp z, Jump_000_1f0b

    cp $03
    jp z, Jump_000_1f24

    cp $05
    jp z, Jump_000_1f2a

    cp $06
    jp z, Jump_000_1ef0

    cp $07
    jp nz, Jump_000_1f4e

Jump_000_1ee5:
    call Call_000_1e7f
    ld hl, $cb68
    ld [hl], $ff
    jp Jump_000_1f4e


Jump_000_1ef0:
    ld hl, $cb6c
    ld [hl], $00
    ld hl, $cb6d
    ld [hl], $02
    ld a, $05
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    ld hl, $cb68
    ld [hl], $ff
    jp Jump_000_1f4e


Jump_000_1f0b:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_000_1f1e

    ld hl, $cb6a
    ld [hl], $01
    call Call_000_1e7f
    jp Jump_000_1f4e


Jump_000_1f1e:
    call Call_000_1e9a
    jp Jump_000_1f4e


Jump_000_1f24:
    call Call_000_1e9a
    jp Jump_000_1f4e


Jump_000_1f2a:
    ld hl, $cb6c
    ld [hl], $08
    ld hl, $cb6d
    ld [hl], $01
    ld hl, $cbdd
    ld a, [hl]
    cp $02
    jp z, Jump_000_1f4e

    ldh a, [rIE]
    and $04
    or $09
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    call Call_000_347d

Jump_000_1f4e:
    ei
    pop bc
    ret


Call_000_1f51:
    push bc
    ldh a, [rSC]
    and $81
    ld c, a
    cp $81
    jp nz, Jump_000_1f5f

    call Call_000_144b

Jump_000_1f5f:
    ld hl, $cb67
    ld a, [hl]
    cp $03
    jp nc, Jump_000_1f6d

    ld c, $ff
    jp Jump_000_1f6f


Jump_000_1f6d:
    ld c, $00

Jump_000_1f6f:
    ld hl, $cbdb
    ld [hl], c
    call Call_000_346a
    ld hl, $cb67
    ld a, [hl]
    or a
    jp nz, Jump_000_1f86

    ld hl, $cb66
    ld a, [hl]
    ld hl, $cb67
    ld [hl], a

Jump_000_1f86:
    ld hl, $cb67
    dec [hl]
    pop bc
    ret


    push bc
    add sp, -$0b
    ld de, $014f
    ld a, [de]
    ld hl, sp+$09
    ld [hl], a
    ld de, HeaderGlobalChecksum
    ld a, [de]
    dec hl
    ld [hl], a
    dec hl
    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$04
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_000_1faa:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c000
    add hl, de
    jp c, Jump_000_1fd4

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld b, $00
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_000_1fd1

    inc hl
    inc [hl]

jr_000_1fd1:
    jp Jump_000_1faa


Jump_000_1fd4:
    ld hl, sp+$0a
    ld [hl], $01
    ld hl, sp+$02
    ld [hl], $00
    inc hl
    ld [hl], $20

Jump_000_1fdf:
    ld hl, sp+$0a
    ld a, [hl]
    cp $40
    jp nc, Jump_000_2007

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0a
    ld a, [hl]
    ld [de], a
    call Call_000_206a
    ld b, d
    ld c, e
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0a
    inc [hl]
    jp Jump_000_1fdf


Jump_000_2007:
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, sp+$09
    ld c, [hl]
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld [hl], a
    dec hl
    ld [hl], e
    ld c, e
    ld hl, sp+$09
    ld a, [hl]
    cp a
    jr nz, jr_000_2034

    ld a, $01
    jr jr_000_2035

jr_000_2034:
    xor a

jr_000_2035:
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl]
    cp c
    jp nz, Jump_000_2056

    inc hl
    ld a, [hl]
    cp b
    jp nz, Jump_000_2056

    ld a, $01
    jr jr_000_2057

Jump_000_2056:
    xor a

jr_000_2057:
    ld c, a
    xor a
    ld hl, sp+$02
    or [hl]
    jr z, jr_000_2060

    xor a
    or c

jr_000_2060:
    jr z, jr_000_2064

    ld a, $01

jr_000_2064:
    ld c, a
    ld e, c
    add sp, $0b
    pop bc
    ret


Call_000_206a:
    ld de, $0000
    ld hl, $4000

jr_000_2070:
    ld a, [hl+]
    add e
    ld e, a
    jr nc, jr_000_2076

    inc d

jr_000_2076:
    bit 7, h
    jr z, jr_000_2070

    ret


Call_000_207b:
    ld hl, $a000

jr_000_207e:
    ld a, [hl]
    xor a
    ld [hl], a
    cp [hl]
    jr nz, jr_000_2090

    xor a
    ld [hl], a
    cp [hl]
    jr nz, jr_000_2090

    inc hl
    bit 6, h
    jr z, jr_000_207e

    ld e, l
    ret


jr_000_2090:
    ld e, h
    ret


Call_000_2092:
    push bc
    ldh a, [$8e]
    ld c, a
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $7030
    ld a, $01
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $01
    ld hl, $6fb7
    push hl
    call Call_000_0dab
    add sp, $02
    ld a, c
    ldh [$8e], a

Call_000_20b7:
    ld hl, $2000
    ld [hl], c
    pop bc
    ret


Call_000_20bd:
    push bc
    add sp, -$02
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, $03
    jr jr_000_20ce

jr_000_20c9:
    or a
    rl c
    rl b

jr_000_20ce:
    dec a
    jr nz, jr_000_20c9

    ld hl, $b290
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_14b5
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_000_20f8:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_000_2109

jr_000_2104:
    or a
    rl c
    rl b

jr_000_2109:
    dec a
    jr nz, jr_000_2104

    ld hl, $a080
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_14b5
    ld c, e
    add sp, $03
    add sp, $02
    pop bc

Jump_000_2132:
    ret


Call_000_2133:
    push bc
    add sp, -$06
    call $4ea3
    ld hl, sp+$05
    ld [hl], $00

Jump_000_213d:
    ld hl, sp+$05
    ld a, [hl]
    cp $04
    jp nc, Jump_000_222a

    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_000_2155

    ld hl, $cb70
    ld b, [hl]
    jp Jump_000_2159


Jump_000_2155:
    ld hl, $cb69
    ld b, [hl]

Jump_000_2159:
    ld hl, sp+$04
    ld [hl], b
    ld a, b
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_20bd
    ld hl, sp+$05
    ld [hl], e
    add sp, $02

Jump_000_216b:
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_000_2197

    dec hl
    ld a, [hl]

Jump_000_2174:
    and $80
    ld b, a
    or b
    jp z, Jump_000_2197

    inc hl
    ld a, [hl]
    add $ff
    dec hl
    dec hl
    ld [hl], a
    ld a, [hl+]
    inc hl
    ld [hl], a
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_20bd
    ld c, e
    add sp, $02
    ld hl, sp+$03
    ld [hl], c
    jp Jump_000_216b


Jump_000_2197:
    ld hl, sp+$03
    ld a, [hl]
    bit 7, a
    jp z, Jump_000_21b0

    ld de, $c0e0
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a
    jp Jump_000_2224


Jump_000_21b0:
    ld de, $c200
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$04
    ld a, [hl]
    ld [de], a
    ld de, $c17c
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $ff
    ld [de], a
    ld de, $c168
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $00
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_20f8
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    cp $ff
    jp nz, Jump_000_2207

    ld de, $c0e0
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a
    jp Jump_000_2224


Jump_000_2207:
    ld de, $c170
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$03
    ld a, [hl]
    ld [de], a
    ld de, $c0e0
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [de], a

Jump_000_2224:
    ld hl, sp+$05
    inc [hl]
    jp Jump_000_213d


Jump_000_222a:
    ld hl, $c4d3
    ld [hl], $04
    add sp, $06

Call_000_2231:
    pop bc

Jump_000_2232:
    ret


Call_000_2233:
    push bc
    add sp, -$01
    ld hl, $cbdb
    ld [hl], $ff
    ld hl, $cb71
    ld c, [hl]
    inc [hl]
    xor a
    or c
    jp z, Jump_000_2250

    xor a
    or [hl]
    jp nz, Jump_000_224d

    call Call_000_2092

Jump_000_224d:
    jp Jump_000_22fc


Jump_000_2250:
    ldh a, [$8e]
    ld c, a
    ldh a, [$8b]
    ld hl, sp+$00
    ld [hl], a

Jump_000_2258:
    ei
    xor a
    ld a, $bf
    ld hl, $cb70
    sbc [hl]
    jp c, Jump_000_22ad

Jump_000_2263:
    ld a, $80
    ldh [rNR52], a
    ld a, $77
    ldh [rNR50], a
    xor a
    ld hl, $c529
    or [hl]
    jp nz, Jump_000_22a8

Jump_000_2273:
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call Call_000_2133
    call $701d
    ld hl, $c402
    ld a, [hl]
    cp $09
    jp nz, Jump_000_22a1

    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b

Call_000_2294:
    ld hl, $c553
    ld [hl], $00
    ld hl, $c554
    ld [hl], $00
    call $5b7a

Jump_000_22a1:
    ld a, c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], c

Jump_000_22a8:
    ld hl, $cb70
    ld [hl], $ff

Jump_000_22ad:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_000_22d4

    ld hl, $cb65
    ld a, [hl]
    cp $07
    jp nz, Jump_000_22c1

    call Call_000_1f51

Jump_000_22c1:
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    call $5534
    ld a, c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], c

Jump_000_22d4:
    xor a
    ld hl, $cb6a
    or [hl]
    jp z, Jump_000_22ec

    ldh a, [rSC]
    and $81
    ld b, a
    cp $81
    jp nz, Jump_000_22e9

    call Call_000_144b

Jump_000_22e9:
    call Call_000_346a

Jump_000_22ec:
    di
    ld hl, $cb71
    dec [hl]
    xor a
    or [hl]
    jp nz, Jump_000_2258

    ei
    ld hl, sp+$00
    ld a, [hl]
    ldh [$8b], a

Jump_000_22fc:
    add sp, $01
    pop bc
    ret


Call_000_2300:
    push bc
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_000_2378

    xor a
    ld hl, $cb6a
    or [hl]
    jp nz, Jump_000_2378

    ld hl, $c572
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_2378

    ld hl, $cbdc
    ld a, [hl]
    cp $fd
    jp nc, Jump_000_232b

    ld hl, $cb70
    ld [hl], a
    jp Jump_000_2375


Jump_000_232b:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_000_2353

Jump_000_2333:
    xor a
    ld hl, $cb6b
    or [hl]
    jp z, Jump_000_2375

    xor a
    ld a, $fd
    ld hl, $cbdc
    sbc [hl]
    jp nc, Jump_000_234b

    call Call_000_347d
    jp Jump_000_237b


Jump_000_234b:
    ld hl, $cb6b
    ld [hl], $00
    jp Jump_000_2375


Jump_000_2353:
    ld hl, $cbdc
    ld a, [hl]
    cp $fe
    jp nz, Jump_000_2375

    ldh a, [$8e]
    ld c, a
    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $72bf
    ld a, c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], c
    jp Jump_000_237b


Jump_000_2375:
    call Call_000_347d

Jump_000_2378:
    call Call_000_2233

Jump_000_237b:
    pop bc
    ret


Call_000_237d:
    push bc
    add sp, -$04
    ldh a, [rSB]
    ld hl, sp+$03
    ld [hl], a
    dec hl
    ld [hl], $00
    xor a
    ld hl, $cb77
    or [hl]
    jp nz, Jump_000_23f7

    xor a
    ld hl, sp+$03
    or [hl]

Call_000_2394:
    jp z, Jump_000_23f7

    ld hl, $cb76
    ld a, [hl]
    add $01
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, $c4d3
    or [hl]

Call_000_23a5:
    jp z, Jump_000_23e7

    ld hl, $cb78
    ld c, [hl]
    ld b, $00
    ld hl, sp+$01
    ld [hl], c
    dec hl
    ld [hl], $00
    ld hl, $cb66

Call_000_23b7:
    ld c, [hl]
    push bc
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, $cb73
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, $cb66
    ld a, [hl]
    add $ff
    ld hl, $cb76
    ld [hl], a
    ld hl, $cb74
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $cb79
    or [hl]
    jp nz, Jump_000_23e7

    ld hl, sp+$02
    inc [hl]

Jump_000_23e7:
    ld hl, $cb78
    ld [hl], $00
    ld hl, $c4d3
    ld a, [hl]
    ld hl, $cb79
    ld [hl], a
    jp Jump_000_243d


Jump_000_23f7:
    xor a
    ld hl, $cb76
    or [hl]
    jp z, Jump_000_2439

    ld hl, $cb74
    ld a, [hl]
    add $00
    ld [hl+], a
    ld a, [hl]
    adc $01
    ld [hl], a
    xor a
    dec hl
    ld a, [hl]
    ld hl, $cb72
    sbc [hl]
    ld hl, $cb75
    ld a, [hl]
    ld hl, $cb73
    sbc [hl]
    jp c, Jump_000_2439

    ld hl, $cb74
    ld a, [hl]
    ld hl, $cb72
    sub [hl]
    ld hl, $cb74
    ld [hl+], a
    ld a, [hl]
    ld hl, $cb73
    sbc [hl]
    ld hl, $cb75
    ld [hl], a
    ld hl, sp+$02
    ld [hl], $01
    ld hl, $cb76
    dec [hl]

Jump_000_2439:
    ld hl, $cb78
    inc [hl]

Jump_000_243d:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $cb77
    ld [hl], a
    ld a, $81
    ldh [rSC], a

Jump_000_2448:
    ld hl, sp+$02
    ld c, [hl]
    dec [hl]
    xor a
    or c
    jp z, Jump_000_2457

    call Call_000_2233

Call_000_2454:
    jp Jump_000_2448


Jump_000_2457:
    add sp, $04
    pop bc
    ret


Call_000_245b:
    push bc
    ld hl, $c402
    ld a, [hl]
    cp $07
    jp z, Jump_000_2488

    cp $08
    jp z, Jump_000_2488

    cp $09
    jp z, Jump_000_2488

    cp $0d
    jp z, Jump_000_2488

    cp $0e
    jp z, Jump_000_2488

    ld de, $c0e2
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_000_2488

    call Call_000_3116
    jp Jump_000_248b


Jump_000_2488:
    call Call_000_307d

Jump_000_248b:
    call Call_000_308c
    pop bc
    ret


Call_000_2490:
    call Call_000_245b
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_000_249e

    call Call_000_17ca

Jump_000_249e:
    ld a, $01
    ldh [$8e], a
    ld hl, $2000

Call_000_24a5:
    ld [hl], $01
    call $6cef
    ld hl, $c402
    ld a, [hl]
    cp $06
    jp z, Jump_000_24d3

    cp $08
    jp z, Jump_000_24d3

    cp $0a
    jp z, Jump_000_24d3

    cp $0d
    jp z, Jump_000_24d3

    cp $0e
    jp z, Jump_000_24d3

    ld a, $05
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $05
    call $4040

Jump_000_24d3:
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp z, Jump_000_24e8

    ld a, $1e
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1e
    call $4000

Jump_000_24e8:
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp z, Jump_000_2502

    ld hl, $c531
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $00

Jump_000_2502:
    xor a
    ld a, $0e
    ld hl, $c402
    sbc [hl]
    jp c, Jump_000_25fd

    ld e, [hl]
    ld d, $00
    ld hl, $2516
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_2543


    jp Jump_000_2546


    jp Jump_000_2555


    jp Jump_000_2564


    jp Jump_000_2573


    jp Jump_000_2582


    jp Jump_000_2591


    jp Jump_000_25a0


    jp Jump_000_25a3


    jp Jump_000_25b2


    jp Jump_000_25c1


    jp Jump_000_25d0


    jp Jump_000_25d3


    jp Jump_000_25e2


    jp Jump_000_25f1


Jump_000_2543:
    jp Jump_000_25fd


Jump_000_2546:
    ld a, $04
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $04
    call $4ce5
    jp Jump_000_25fd


Jump_000_2555:
    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $4202
    jp Jump_000_25fd


Jump_000_2564:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $58e8
    jp Jump_000_25fd


Jump_000_2573:
    ld a, $07
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $07
    call $4552
    jp Jump_000_25fd


Jump_000_2582:
    ld a, $05
    ldh [$8e], a

Call_000_2586:
    ld hl, $2000
    ld [hl], $05
    call $4762
    jp Jump_000_25fd


Jump_000_2591:
    ld a, $03
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $03
    call $4e06
    jp Jump_000_25fd


Jump_000_25a0:
    jp Jump_000_25fd


Jump_000_25a3:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $4ec2
    jp Jump_000_25fd


Jump_000_25b2:
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $5c17
    jp Jump_000_25fd


Jump_000_25c1:
    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $68b2
    jp Jump_000_25fd


Jump_000_25d0:
    jp Jump_000_25fd


Jump_000_25d3:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $41a2
    jp Jump_000_25fd


Jump_000_25e2:
    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $57bb
    jp Jump_000_25fd


Jump_000_25f1:
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $4a62

Jump_000_25fd:
    ret


Call_000_25fe:
    push bc
    xor a
    ld hl, $c56d
    or [hl]
    jp z, Jump_000_261d

    ld hl, $cb7a
    dec [hl]
    xor a
    or [hl]
    jp z, Jump_000_2618

    xor a
    ld hl, $c56e
    or [hl]
    jp z, Jump_000_26cb

Jump_000_2618:
    ld hl, $cb7a
    ld [hl], $20

Jump_000_261d:
    ld hl, $c56e
    ld [hl], $00
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp c, Jump_000_2697

    xor a
    ld a, $05
    sbc [hl]
    jp c, Jump_000_2697

    ld a, [hl]
    add $ff
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $2640
    add hl, de
    add hl, de

Jump_000_263e:
    add hl, de
    jp hl


    jp Jump_000_264f


    jp Jump_000_265e


    jp Jump_000_267c


    jp Jump_000_268b


    jp Jump_000_266d


Jump_000_264f:
    ld a, $1f
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1f
    call $642a
    jp Jump_000_2697


Jump_000_265e:
    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $423d
    jp Jump_000_2697


Jump_000_266d:
    ld a, $05
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $05
    call $4967
    jp Jump_000_2697


Jump_000_267c:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $5a03
    jp Jump_000_2697


Jump_000_268b:
    ld a, $07
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $07
    call $4788

Jump_000_2697:
    xor a
    ld hl, $c56d
    or [hl]
    jp nz, Jump_000_26cb

    ld hl, $c402
    ld a, [hl]
    cp $07
    jp z, Jump_000_26cb

    cp $08
    jp z, Jump_000_26cb

    cp $09
    jp z, Jump_000_26cb

    cp $0d
    jp z, Jump_000_26cb

    cp $0e
    jp z, Jump_000_26cb

    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $7235
    call $741e

Jump_000_26cb:
    pop bc
    ret


Call_000_26cd:
    push bc
    add sp, -$03
    ld hl, $c402
    ld a, [hl]
    cp $07
    jp z, Jump_000_26ed

    cp $08
    jp z, Jump_000_26ed

    cp $09
    jp z, Jump_000_26ed

    cp $0d
    jp z, Jump_000_26ed

    cp $0e
    jp nz, Jump_000_26f2

Jump_000_26ed:
    ld e, $00
    jp Jump_000_2a20


Jump_000_26f2:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_000_27ef

    ld c, $00
    ld hl, $c576
    ld a, [hl]
    cp $60
    jp nz, Jump_000_271a

    ld hl, $c41e
    ld b, [hl]
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld c, $01
    jp Jump_000_2758


Jump_000_271a:
    ld hl, $c402
    ld a, [hl]
    cp $04
    jp nz, Jump_000_2758

    ld hl, $c576
    ld a, [hl]
    cp $21
    jp z, Jump_000_2746

    cp $22
    jp nz, Jump_000_2758

    ld hl, $c41e
    ld b, [hl]
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld c, $01
    jp Jump_000_2758


Jump_000_2746:
    ld hl, $c41e
    ld b, [hl]
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $02
    ld [de], a
    ld c, $01

Jump_000_2758:
    xor a
    or c
    jp z, Jump_000_27ef

    ld hl, $cb99
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_276a

    ld a, $01
    jr jr_000_276b

Jump_000_276a:
    xor a

jr_000_276b:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_000_277e

    ld hl, $cb99
    ld c, [hl]
    jp Jump_000_2782


Jump_000_277e:
    ld hl, $c41e
    ld c, [hl]

Jump_000_2782:
    ld a, c
    ldh [$8b], a
    ldh a, [$8b]
    ld c, a
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    bit 7, a
    jp nz, Jump_000_27ea

    ldh a, [$8b]
    ld c, a
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00

Call_000_27a3:
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ldh a, [$8b]
    ld b, a
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    call $6171
    add sp, $01
    ldh a, [$8b]
    ld b, a
    ld a, $a0
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld hl, sp+$02
    ld a, [hl]
    or $80
    ld b, a
    ld [de], a
    ld a, $1f
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1f
    call $6ff1
    ld hl, $c56b
    ld [hl], $01

Jump_000_27ea:
    ld e, $01
    jp Jump_000_2a20


Jump_000_27ef:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_000_28ea

    ld hl, $c576
    ld a, [hl]
    cp $a0
    jp nz, Jump_000_28ea

    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ld a, $00
    ldh [$8b], a

Jump_000_280d:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_000_2894

    ld hl, $c41e
    cp [hl]
    jr nz, jr_000_281d

    jp Jump_000_288b


jr_000_281d:
    ldh a, [$8b]
    ld b, a
    ld a, $a0
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_000_286f

    ldh a, [$8b]
    ld b, a
    ld de, $c0a8
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    ld c, a
    ld a, $a4
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld a, $a4
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00

Call_000_286e:
    ld [de], a

Jump_000_286f:
    ld a, $00

Call_000_2871:
    push af
    inc sp
    call $6171
    add sp, $01
    ldh a, [$8b]
    ld c, a
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld hl, sp+$02
    ld a, [hl]
    or $80
    ld c, a
    ld [de], a

Jump_000_288b:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_000_280d


Jump_000_2894:
    ld hl, $c41e
    ld a, [hl]
    ldh [$8b], a
    ld c, a
    ld de, $c0a0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c41e
    ld c, [hl]
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    and $03
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld hl, $c41e
    ld c, [hl]
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call $6171
    add sp, $01
    ld a, $1f
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1f
    call $6ff1
    ld hl, $c56b
    ld [hl], $02
    ld e, $01
    jp Jump_000_2a20


Jump_000_28ea:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_000_28f8

    ld e, $00
    jp Jump_000_2a20


Jump_000_28f8:
    ld hl, $c576
    ld a, [hl]
    cp $20
    jp nz, Jump_000_2a1e

    xor a
    ld hl, $c56b
    or [hl]
    jp z, Jump_000_2a1e

    ld a, [hl]
    cp $01
    jp z, Jump_000_2917

Call_000_290f:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_000_2992

Jump_000_2917:
    ld hl, $cb99
    ld a, [hl]
    cp $ff
    jp nz, Jump_000_2924

    ld a, $01
    jr jr_000_2925

Jump_000_2924:
    xor a

jr_000_2925:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_000_2938

    ld hl, $cb99
    ld c, [hl]
    jp Jump_000_293c


Jump_000_2938:
    ld hl, $c41e
    ld c, [hl]

Jump_000_293c:
    ld de, $c0a0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    and $03
    ld b, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld a, $a4
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $a8
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, c
    ldh [$8b], a
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ldh a, [$8b]
    ld c, a
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call $6171
    add sp, $01
    jp Jump_000_2a12


Jump_000_2992:
    ld a, $00
    ldh [$8b], a

Jump_000_2996:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_000_2a12

    ld hl, $c41e
    cp [hl]
    jr nz, jr_000_29a6

    jp Jump_000_2a09


jr_000_29a6:
    ldh a, [$8b]
    ld c, a
    ld a, $a8
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_000_29c9

    ldh a, [$8b]
    ld b, a
    ld a, $a4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, c
    ld [de], a
    jp Jump_000_29eb


Jump_000_29c9:
    ldh a, [$8b]
    ld c, a
    ld de, $c0a0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    and $03
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_000_29eb:
    ld a, $02
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $02
    ldh a, [$8b]
    ld c, a
    ld a, $a0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a

Call_000_2a00:
    ld a, [de]
    ld c, a
    push af
    inc sp
    call $6171
    add sp, $01

Jump_000_2a09:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_000_2996


Jump_000_2a12:
    ld a, $1f
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1f
    call $6ff1

Jump_000_2a1e:
    ld e, $00

Jump_000_2a20:
    add sp, $03
    pop bc
    ret


Call_000_2a24:
    push bc
    xor a
    ld a, $0e
    ld hl, $c402
    sbc [hl]
    jp c, Jump_000_2b3c

    ld e, [hl]
    ld d, $00
    ld hl, $2a39
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_000_2a66


    jp Jump_000_2a69


    jp Jump_000_2a79


    jp Jump_000_2a89


    jp Jump_000_2a99


    jp Jump_000_2aa9


    jp Jump_000_2ab9


    jp Jump_000_2ac9


    jp Jump_000_2ad9


    jp Jump_000_2ae9


    jp Jump_000_2af9


    jp Jump_000_2b09


    jp Jump_000_2b0c


    jp Jump_000_2b1c


    jp Jump_000_2b2c


Jump_000_2a66:
    jp Jump_000_2b3c


Jump_000_2a69:
    ld a, $04
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $04
    call $5b4e
    ld c, e
    jp Jump_000_2b3e


Jump_000_2a79:
    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $43f7
    ld c, e
    jp Jump_000_2b3e


Jump_000_2a89:
    ld a, $06
    ldh [$8e], a

Jump_000_2a8d:
    ld hl, $2000
    ld [hl], $06
    call $5aa1
    ld c, e
    jp Jump_000_2b3e


Jump_000_2a99:
    ld a, $07
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $07
    call $4adb
    ld c, e
    jp Jump_000_2b3e


Jump_000_2aa9:
    ld a, $05
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $05
    call $4b5d
    ld c, e
    jp Jump_000_2b3e


Jump_000_2ab9:
    ld a, $03
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $03
    call $53fd
    ld c, e
    jp Jump_000_2b3e


Jump_000_2ac9:
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $53e8
    ld c, e
    jp Jump_000_2b3e


Jump_000_2ad9:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $5029
    ld c, e
    jp Jump_000_2b3e


Jump_000_2ae9:
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $5dbf
    ld c, e
    jp Jump_000_2b3e


Jump_000_2af9:
    ld a, $1d
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1d
    call $713f
    ld c, e
    jp Jump_000_2b3e


Jump_000_2b09:
    jp Jump_000_2b3c


Jump_000_2b0c:
    ld a, $06
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $06
    call $431d
    ld c, e
    jp Jump_000_2b3e


Jump_000_2b1c:
    ld a, $1c
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1c
    call $59e6
    ld c, e
    jp Jump_000_2b3e


Jump_000_2b2c:
    ld a, $1b
    ldh [$8e], a
    ld hl, $2000
    ld [hl], $1b
    call $4bc3
    ld c, e
    jp Jump_000_2b3e


Jump_000_2b3c:
    ld e, $00

Jump_000_2b3e:
    pop bc
    ret


Call_000_2b40:
    push bc
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp z, Jump_000_2b5c

    cp $20
    jp z, Jump_000_2b64

    cp $40
    jp nz, Jump_000_2b69

    ld hl, $c40b
    ld [hl], $01
    jp Jump_000_2b69


Jump_000_2b5c:
    ld hl, $c40d
    ld [hl], $01
    jp Jump_000_2b69


Jump_000_2b64:
    ld hl, $c40c
    ld [hl], $01

Jump_000_2b69:
    call Call_000_26cd
    ld c, e
    call Call_000_2a24
    ld b, e
    ld a, c
    or b
    ld c, a
    ld e, c
    pop bc
    ret


Call_000_2b77:
    push bc
    ld hl, $c52b
    ld a, [hl]
    cp $01
    jp z, Jump_000_2b8e

    cp $02
    jp z, Jump_000_2ba4

    cp $03
    jp z, Jump_000_2bba

    jp Jump_000_2bd0


Jump_000_2b8e:
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_000_2b9c

    ld bc, $0132
    jp Jump_000_2b9f


Jump_000_2b9c:
    ld bc, $012b

Jump_000_2b9f:
    ld e, c
    ld d, b
    jp Jump_000_2bed


Jump_000_2ba4:
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_000_2bb2

    ld bc, $01cb
    jp Jump_000_2bb5


Jump_000_2bb2:
    ld bc, $01c0

Jump_000_2bb5:
    ld e, c
    ld d, b
    jp Jump_000_2bed


Jump_000_2bba:
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_000_2bc8

    ld bc, $0396
    jp Jump_000_2bcb


Jump_000_2bc8:
    ld bc, $0380

Jump_000_2bcb:
    ld e, c
    ld d, b
    jp Jump_000_2bed


Jump_000_2bd0:
    ld hl, $c52a
    ld a, [hl]
    cp $28
    jp nc, Jump_000_2be5

    ld b, $00
    add $00
    ld c, a
    ld a, b
    adc $01
    ld b, a
    jp Jump_000_2beb


Jump_000_2be5:
    ld hl, $c52a
    ld c, [hl]
    ld b, $00

Jump_000_2beb:
    ld e, c
    ld d, b

Jump_000_2bed:
    pop bc
    ret


Call_000_2bef:
    ld hl, $c52b
    ld a, [hl]
    cp $01
    jp z, Jump_000_2c05

    cp $02
    jp z, Jump_000_2c11

    cp $03
    jp z, Jump_000_2c1d

    jp Jump_000_2c29


Jump_000_2c05:
    ld hl, $2c48
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_000_2c47


Jump_000_2c11:
    ld hl, $2c4c
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_000_2c47


Jump_000_2c1d:
    ld hl, $2c50
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_000_2c47


Jump_000_2c29:
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $2c54
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ff9c
    add hl, de
    jp c, Jump_000_2c47

    call Call_000_2f24

Jump_000_2c47:
    ret


    ld [hl-], a
    ld e, b
    jr nz, jr_000_2c4c

jr_000_2c4c:
    inc sp
    ld e, b
    jr nz, jr_000_2c50

jr_000_2c50:
    ld [hl], $58
    jr nz, jr_000_2c54

jr_000_2c54:
    dec h
    ld h, h
    nop

Call_000_2c57:
    push bc
    ld hl, $c574
    ld [hl], $91
    inc hl
    ld [hl], $98
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_000_2b77
    ld b, d
    ld c, e
    push bc
    call Call_000_2bef
    add sp, $02
    pop bc
    ret


Call_000_2c79:
    push bc
    ld de, $2cc5
    ld c, e
    ld b, d
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $11
    inc hl
    ld [hl], $98
    ld hl, $c41e
    ld a, [hl]
    or a
    jp z, Jump_000_2ca8

    cp $01
    jp z, Jump_000_2cb0

    cp $02
    jp z, Jump_000_2cb8

    jp Jump_000_2cbd


Jump_000_2ca8:
    ld de, $2cc9
    ld c, e
    ld b, d
    jp Jump_000_2cbd


Jump_000_2cb0:
    ld de, $2ccd
    ld c, e
    ld b, d
    jp Jump_000_2cbd


Jump_000_2cb8:
    ld de, $2cd1
    ld c, e
    ld b, d

Jump_000_2cbd:
    push bc
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


    ld c, [hl]
    ld c, a
    ld c, c
    nop
    ld d, b
    ld d, l
    ld sp, $5000

Call_000_2cce:
    ld d, l
    ld [hl-], a
    nop
    ld d, a
    ld b, c
    ld d, [hl]
    nop

Call_000_2cd5:
    push bc
    add sp, -$02
    ld de, $2d25

Call_000_2cdb:
    ld hl, sp+$00

Call_000_2cdd:
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld a, c
    and $03
    ld c, a
    or a
    jp z, Jump_000_2cf8

    cp $01
    jp z, Jump_000_2d03

    cp $02
    jp z, Jump_000_2d0e

    jp Jump_000_2d16


Jump_000_2cf8:
    ld de, $2d28
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_2d16


Jump_000_2d03:
    ld de, $2d2b
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_2d16


Jump_000_2d0e:
    ld de, $2d2e
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d

Jump_000_2d16:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    add sp, $02
    pop bc
    ret


    ld h, l
    ld h, [hl]
    nop
    ld h, c
    ld h, h
    nop
    ld h, d
    ld h, h
    nop
    ld h, e
    ld h, h
    nop

Call_000_2d31:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    or a
    jp z, Jump_000_2d4e

    ld hl, sp+$06
    ld a, [hl]
    cp $0c
    jp z, Jump_000_2d7d

    ld hl, sp+$06
    ld a, [hl]
    cp $12
    jp z, Jump_000_2d5a

    jp Jump_000_2dc9


Jump_000_2d4e:
    ld hl, $2dda
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_000_2dd3


Jump_000_2d5a:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_000_2d70

    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_000_2dd3


Jump_000_2d70:
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_2cd5
    add sp, $01
    jp Jump_000_2dd3


Jump_000_2d7d:
    ld de, $2dd7
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld a, c
    and $03
    ld c, a
    or a
    jp z, Jump_000_2d9d

    cp $01
    jp z, Jump_000_2da8

    cp $02
    jp z, Jump_000_2db3

    jp Jump_000_2dbb


Jump_000_2d9d:
    ld de, $2ddd
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_2dbb


Jump_000_2da8:
    ld de, $2de0
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_000_2dbb


Jump_000_2db3:
    ld de, $2de3
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d

Jump_000_2dbb:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_000_2dd3


Jump_000_2dc9:
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_000_2dd3:
    add sp, $02
    pop bc
    ret


    ld c, h
    ld d, d
    nop
    dec l
    dec l
    nop
    ld h, a
    ld l, b
    nop
    ld c, h
    ld l, b
    nop
    ld h, a
    ld d, d
    nop

Call_000_2de6:
Jump_000_2de6:
    push bc
    ld b, a
    ld_long a, $ff8d
    ld c, a
    ld hl, $c575
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    cp $98
    call c, Call_000_144b
    cp $9b
    call nc, Call_000_144b
    ld a, b
    swap a
    and $0f
    add c
    ld e, a

jr_000_2e03:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2e03

    ld [hl], e
    inc hl
    ld a, b
    and $0f
    add c
    ld e, a

jr_000_2e10:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2e10

    ld [hl], e
    inc hl
    ld a, l
    ld [$c574], a
    ld a, h
    ld [$c575], a
    pop bc
    ret


Call_000_2e22:
    push bc
    ld hl, sp+$04
    ld b, [hl]
    ld hl, $c575
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    cp $98
    call c, Call_000_144b
    cp $9b
    call nc, Call_000_144b
    ld_long a, $ff8d
    ld c, a
    ld a, b
    and $f0
    jr z, jr_000_2e4d

    swap a
    and $0f
    add c
    ld e, a

jr_000_2e45:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2e45

    ld [hl], e
    inc hl

jr_000_2e4d:
    ld a, b
    and $0f
    add c
    ld e, a

jr_000_2e52:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2e52

    ld [hl], e
    inc hl
    ld a, l
    ld [$c574], a
    ld a, h
    ld [$c575], a
    pop bc
    ret


Call_000_2e64:
    push bc
    ld hl, sp+$08
    ld a, [hl]
    or a
    jr z, jr_000_2e73

    cp $01
    jr z, jr_000_2e77

    ld a, $8d
    jr jr_000_2e79

jr_000_2e73:
    ld a, $03
    jr jr_000_2e79

jr_000_2e77:
    ld a, $48

jr_000_2e79:
    ld [hl], a
    ld hl, sp+$06
    ld b, [hl]

jr_000_2e7d:
    ld hl, sp+$04
    ld a, [hl]
    add b
    dec a
    ld d, a
    ld hl, sp+$05
    ld a, [hl]
    add a
    add a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld a, l
    add d
    jr nc, jr_000_2e93

    inc h

jr_000_2e93:
    ld e, a
    ld a, $98
    add h
    ld d, a
    cp $98
    call c, Call_000_144b
    cp $9b
    call nc, Call_000_144b
    ld hl, sp+$07
    ld c, [hl]

jr_000_2ea5:
    push bc
    ld h, d
    ld l, e
    push de

jr_000_2ea9:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2ea9

    ld d, [hl]
    ld a, d
    dec a
    dec a
    dec a

jr_000_2eb4:
    sub $45
    jr nc, jr_000_2eb4

    add $45
    ld d, a
    push hl
    ld hl, sp+$0e
    ld a, d
    add [hl]
    pop hl
    ld e, a

jr_000_2ec2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2ec2

    ld [hl], e
    pop de
    ld a, e
    add $20
    jr nc, jr_000_2ed0

    inc d

jr_000_2ed0:
    ld e, a
    pop bc
    dec c
    jr nz, jr_000_2ea5

    dec b
    jr nz, jr_000_2e7d

    pop bc
    ret


Call_000_2eda:
    push bc
    ld a, [$c575]
    cp $98
    call c, Call_000_144b
    cp $9b
    call nc, Call_000_144b
    ld hl, $c565
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld_long a, $ff8c
    ld d, a
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_2ef7:
    ld a, [hl+]
    or a
    jr z, jr_000_2f22

    push hl
    add c
    ld l, a
    ld h, b
    jr nc, jr_000_2f02

    inc h

jr_000_2f02:
    ld a, d
    add [hl]
    ld e, a
    ld hl, $c575
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    cp $9b
    call nc, Call_000_144b

jr_000_2f10:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2f10

    ld [hl], e
    ld hl, $c574
    inc [hl]
    jr nz, jr_000_2f1f

    inc hl
    inc [hl]

jr_000_2f1f:
    pop hl
    jr jr_000_2ef7

jr_000_2f22:
    pop bc
    ret


Call_000_2f24:
    ld a, $20

Call_000_2f26:
Jump_000_2f26:
    ld e, a
    ld a, [$c575]
    cp $98
    call c, Call_000_144b
    cp $9b
    call nc, Call_000_144b
    ld hl, $c565
    ld a, [hl+]
    ld h, [hl]
    add e
    ld l, a
    jr nc, jr_000_2f3e

    inc h

jr_000_2f3e:
    ld_long a, $ff8c
    add [hl]
    ld e, a
    ld hl, $c574
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_000_2f49:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_2f49

    ld [hl], e
    ld hl, $c574
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    ret


jr_000_2f58:
    dec [hl]
    ld a, $09
    ld [c], a
    ld a, $11
    ld [c], a
    ld a, $18
    ld [c], a
    ret


Call_000_2f63:
    cp [hl]
    ret z

    jr c, jr_000_2f58

    inc [hl]
    ld a, $08
    ld [c], a
    ret


Call_000_2f6c:
    ld hl, $c2d8
    ld c, $12
    ld a, [$cbc1]
    ld b, a
    call Call_000_2f63
    ld a, b
    cp [hl]
    jr z, jr_000_2fbf

    ld hl, $cbbf
    ld a, [hl+]
    ld [hl], a
    ret


Call_000_2f82:
    ld hl, $c2d9
    ld c, $17
    ld a, [$cbc8]
    ld b, a
    call Call_000_2f63
    ld a, b
    cp [hl]
    jr z, jr_000_3006

    ld hl, $cbc6
    ld a, [hl+]
    ld [hl], a
    ret


Call_000_2f98:
    ld hl, $c2db
    ld c, $21
    ld a, [$cbcf]
    ld b, a
    call Call_000_2f63
    ld a, b
    cp [hl]
    jp z, Jump_000_3041

    ld hl, $cbcd
    ld a, [hl+]
    ld [hl], a
    ret


    nop
    ld bc, $0302
    inc b
    ld b, $08
    dec bc
    rrca
    inc d
    dec de
    inc h
    jr nc, jr_000_2ffd

    ld d, [hl]
    ld [hl], e

jr_000_2fbf:
    ld hl, $cbbe
    ld a, [hl]
    cp $02
    jr z, jr_000_2fe2

    jr c, jr_000_2fce

jr_000_2fc9:
    xor a
    ld [$cbbe], a
    ret


jr_000_2fce:
    inc [hl]
    ld hl, $cbbc
    ld a, [hl+]
    and $0f
    ld [$cbbf], a
    ld a, [hl]
    swap a
    and $0f
    ld [$cbc1], a
    jr jr_000_2fef

jr_000_2fe2:
    inc [hl]
    ld a, [$cbbd]
    and $0f
    ld [$cbbf], a
    xor a
    ld [$cbc1], a

jr_000_2fef:
    ld a, [$cbbf]
    or a
    jr z, jr_000_2fc9

Call_000_2ff5:
    ld de, $cbbf

Jump_000_2ff8:
jr_000_2ff8:
    ld hl, $2faf
    ld a, [de]
    add l

jr_000_2ffd:
    ld l, a
    jr nc, jr_000_3001

    inc h

jr_000_3001:
    ld a, [hl]
    ld [de], a
    inc de
    ld [de], a
    ret


jr_000_3006:
    ld hl, $cbc5
    ld a, [hl]
    cp $02
    jr z, jr_000_3029

    jr c, jr_000_3015

jr_000_3010:
    xor a
    ld [$cbc5], a
    ret


jr_000_3015:
    inc [hl]
    ld hl, $cbc3
    ld a, [hl+]
    and $0f
    ld [$cbc6], a
    ld a, [hl]
    swap a
    and $0f
    ld [$cbc8], a
    jr jr_000_3036

jr_000_3029:
    inc [hl]
    ld a, [$cbc4]
    and $0f
    ld [$cbc6], a
    xor a
    ld [$cbc8], a

jr_000_3036:
    ld a, [$cbc6]
    or a
    jr z, jr_000_3010

Call_000_303c:
    ld de, $cbc6
    jr jr_000_2ff8

Jump_000_3041:
    ld hl, $cbcc
    ld a, [hl]
    cp $02
    jr z, jr_000_3064

    jr c, jr_000_3050

jr_000_304b:
    xor a
    ld [$cbcc], a
    ret


jr_000_3050:
    inc [hl]
    ld hl, $cbca
    ld a, [hl+]
    and $0f
    ld [$cbcd], a
    ld a, [hl]
    swap a
    and $0f
    ld [$cbcf], a
    jr jr_000_3071

jr_000_3064:
    inc [hl]
    ld a, [$cbcb]
    and $0f
    ld [$cbcd], a
    xor a
    ld [$cbcf], a

jr_000_3071:
    ld a, [$cbcd]
    or a
    jr z, jr_000_304b

Call_000_3077:
    ld de, $cbcd
    jp Jump_000_2ff8


Call_000_307d:
    ld de, $dd00
    ld a, $00
    ld [de], a
    ld de, $dd04
    ld [de], a
    ld de, $dd08
    ld [de], a
    ret


Call_000_308c:
    ld de, $dd0c
    ld a, $00
    ld [de], a
    ld de, $dd10
    ld [de], a
    ld de, $dd14
    ld [de], a
    ld de, $dd18
    ld [de], a
    ld de, $dd1c
    ld [de], a
    ld de, $dd20
    ld [de], a

Call_000_30a6:
    ld de, $dd24

Jump_000_30a9:
    ld [de], a
    ld de, $dd28
    ld [de], a
    ld de, $dd2d
    ld [de], a
    ld de, $dd31
    ld [de], a
    ld de, $dd35
    ld [de], a
    ld de, $dd39
    ld [de], a
    ld de, $dd3d
    ld [de], a
    ld de, $dd41
    ld [de], a
    ld de, $dd45
    ld [de], a
    ld de, $dd49
    ld [de], a
    ld de, $dd0f
    ld [de], a
    ld de, $dd13
    ld [de], a
    ld de, $dd17
    ld [de], a
    ld de, $dd1b
    ld [de], a
    ld de, $dd1f
    ld [de], a
    ld de, $dd23
    ld [de], a
    ld de, $dd27
    ld [de], a
    ld de, $dd2b
    ld [de], a
    ld hl, $cbd0
    ld [hl], $01
    ret


Call_000_30f4:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $dd
    ld b, a
    ld a, [bc]
    inc hl
    cp [hl]
    jp nz, Jump_000_310b

    jp Jump_000_3114


Jump_000_310b:
    ld hl, sp+$06
    ld a, [hl]
    ld [bc], a
    ld hl, $cbd0
    ld [hl], $01

Jump_000_3114:
    pop bc
    ret


Call_000_3116:
    ld a, $68
    push af
    inc sp
    ld hl, $0000
    push hl
    call Call_000_30f4
    add sp, $03
    ld a, $68
    push af
    inc sp
    ld hl, $0004
    push hl
    call Call_000_30f4
    add sp, $03
    ld a, $68
    push af

Call_000_3133:
    inc sp
    ld hl, $0008
    push hl
    call Call_000_30f4
    add sp, $03
    ret


Call_000_313e:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add a
    add a
    add $0c
    ld c, a
    ld b, $00
    ld a, $00
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    pop bc
    ret


Call_000_3155:
    push bc
    add sp, -$01
    ld hl, sp+$06
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    add $08
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    add a
    add a
    add $0d
    ld b, a
    ld c, $00
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp

Jump_000_3177:
    ld l, b
    ld h, c
    push hl
    call Call_000_30f4
    add sp, $03
    add sp, $01
    pop bc
    ret


Call_000_3183:
    push bc
    add sp, -$01

Jump_000_3186:
    xor a
    ld a, $0f
    ld hl, sp+$06
    sbc [hl]
    jp nc, Jump_000_3191

    ld [hl], $fc

Jump_000_3191:
    ld hl, sp+$06
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    add $20
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    add a
    add a
    add $0c
    ld b, a
    ld c, $00
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call Call_000_30f4
    add sp, $03
    add sp, $01
    pop bc
    ret


Call_000_31bc:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add a
    add a
    add $0e
    ld c, a
    ld b, $00
    ld a, $03
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    pop bc
    ret


Call_000_31d3:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add a
    add a
    add $0e
    ld c, a
    ld b, $00
    ld a, $04
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    pop bc
    ret


Call_000_31ea:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add a
    add a
    add $0f
    ld c, a
    ld b, $00
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    pop bc
    ret


Call_000_3201:
    push bc
    add sp, -$06
    ld hl, sp+$0b
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    ld a, $06
    jr jr_000_3218

jr_000_3210:
    or a
    ld hl, sp+$04
    rl [hl]
    inc hl
    rl [hl]

jr_000_3218:
    dec a
    jr nz, jr_000_3210

    ld hl, sp+$0a
    ld c, [hl]
    ld b, $00
    ld hl, sp+$04
    ld a, [hl+]

Jump_000_3223:
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05

Jump_000_3233:
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    add $00
    ld [hl+], a
    ld a, [hl]
    adc $98
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld e, c
    ld d, b
    add sp, $06
    pop bc
    ret


Call_000_3264:
    ld bc, $da4f
    ld hl, $da00

jr_000_326a:
    ld d, $80

jr_000_326c:
    ld a, [hl+]
    cp $01
    jr c, jr_000_328e

    push bc
    jr z, jr_000_3289

    push hl
    ld e, a
    srl a
    ld h, a

jr_000_3279:
    ld a, [bc]
    or d
    ld [bc], a
    dec c
    ld a, [bc]
    or d
    ld [bc], a
    dec c
    dec h
    jr nz, jr_000_3279

    pop hl
    bit 0, e
    jr z, jr_000_328d

jr_000_3289:
    dec c
    ld a, [bc]
    or d
    ld [bc], a

jr_000_328d:
    pop bc

jr_000_328e:
    srl d
    jr nz, jr_000_326c

    ld a, c
    add $10
    cp $cf

Call_000_3297:
    ret z

    ld c, a
    jr jr_000_326a

Call_000_329b:
    ld hl, $da40
    ld de, $8060

jr_000_32a1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_32a1

    ld a, [hl+]
    ld [de], a
    ld a, l
    cp $c0
    ret z

    inc e
    jr jr_000_32a1

Jump_000_32b0:
    ld a, d
    or e
    ret z

    ld a, h
    cp $98
    jr c, jr_000_32bb

Call_000_32b8:
    sub $10
    ld h, a

jr_000_32bb:
    xor a
    cp e
    jr nz, jr_000_32c0

    dec d

jr_000_32c0:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_32c0

    ld a, [bc]
    ld [hl+], a
    inc bc

jr_000_32c9:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_32c9

    ld a, [bc]
    ld [hl], a
    inc bc
    inc l
    jr nz, jr_000_32dd

    inc h
    ld a, h
    cp $98
    jr nz, jr_000_32dd

    ld h, $88

jr_000_32dd:
    dec e
    jr nz, jr_000_32c0

    dec d
    bit 7, d
    jr z, jr_000_32c0

    ret


Call_000_32e6:
    call Call_000_349e
    push hl
    ld hl, $cbe5
    ld b, $06

jr_000_32ef:
    ld a, [hl]
    inc hl
    or [hl]
    cp $00
    jr z, jr_000_3301

    inc hl
    inc hl
    dec b
    jr nz, jr_000_32ef

    pop hl
    ld hl, $0000
    jr jr_000_3325

jr_000_3301:
    pop de
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, [$cbe3]
    dec hl
    ld [hl], a
    push hl
    call Call_000_3373
    ld a, [$cbda]
    and $02

Call_000_3313:
    call nz, Call_000_332e
    ld hl, $cbe1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [$cbe3]
    add [hl]
    ld [$cbe3], a
    pop hl

jr_000_3325:
    ldh a, [rLCDC]
    or $81
    and $e7
    ldh [rLCDC], a
    ret


Call_000_332e:
    ld hl, $cbe1
    ld a, [hl+]
    ld h, [hl]

Jump_000_3333:
    ld l, a
    inc hl
    ld e, [hl]
    ld d, $00
    rl e
    rl d
    rl e
    rl d
    rl e
    rl d
    dec hl
    ld a, [hl]
    push af
    and $03
    ld bc, $0080
    cp $01
    jr z, jr_000_335a

    ld bc, $0000
    cp $02
    jr z, jr_000_335a

    ld bc, $0100

jr_000_335a:
    inc hl
    inc hl
    add hl, bc
    ld c, l
    ld b, h
    ld a, [$cbe0]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $90
    add h
    ld h, a
    pop af
    bit 2, a
    jp Jump_000_32b0


Call_000_3373:
    ld a, [hl+]
    ld [$cbe0], a
    ld a, [hl+]
    ld [$cbe1], a
    ld a, [hl+]
    ld [$cbe2], a
    ret


Call_000_3380:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    inc hl

Jump_000_3385:
    ld h, [hl]

Jump_000_3386:
    ld l, a

Jump_000_3387:
    call Call_000_32e6
    push hl
    pop de
    pop bc
    ret


Call_000_338e:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    call Call_000_3373
    pop bc
    ld de, $0000
    ret


Call_000_339d:
    push bc
    call Call_000_33d8
    ld a, $01
    ld [$cbe3], a

Call_000_33a6:
    xor a

Call_000_33a7:
    ld hl, $cbe4
    ld b, $12

jr_000_33ac:
    ld [hl+], a
    dec b
    jr nz, jr_000_33ac

    ld a, $03
    ld [$cbfa], a
    ld a, $00
    ld [$cbfb], a
    pop bc
    ret


Call_000_33bc:
    ld hl, sp+$02
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    add a
    add a
    add a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld d, $98
    add hl, de
    ld a, h
    ld [$c575], a
    ld a, l
    ld [$c574], a
    pop de
    ret


    ret


Call_000_33d8:
    di
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_33e2

    call Call_000_349e

jr_000_33e2:
    call Call_000_33ef
    ldh a, [rLCDC]
    or $81
    and $e7
    ldh [rLCDC], a
    ei
    ret


Call_000_33ef:
    xor a
    ld [$cbf6], a
    ld [$cbf7], a
    ld a, $02
    ld [$cbda], a
    ret


Call_000_33fc:
    ld a, [$cbf9]
    ld l, a
    ld e, a
    ld a, [$cbf8]
    ld d, a
    sla l
    rla
    sla l
    rla
    sla l
    rla
    sla l
    rla
    ld h, a
    ld a, e
    add l
    ld l, a
    ld a, h
    adc d
    ld h, a
    ld a, l
    add $93
    ld [$cbf9], a
    ld d, a
    ld a, h
    adc $5c
    ld [$cbf8], a
    ld e, a
    ret


Call_000_3427:
    ldh a, [rKEY1]
    and $80
    ret nz

    ldh a, [rIE]
    push af
    xor a
    ldh [rIE], a
    ldh [rIF], a

Call_000_3434:
Jump_000_3434:
    ld a, $30
    ldh [rP1], a
    ld a, $01
    ldh [rKEY1], a
    stop
    pop af
    ldh [rIE], a
    ret


Call_000_3442:
    push bc
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, $8000
    add hl, de
    jp c, Jump_000_3463

    xor a
    ld hl, sp+$04
    ld a, $00
    sbc [hl]
    ld c, a
    inc hl
    ld a, $00
    sbc [hl]
    ld b, a
    ld e, c
    ld d, b
    jp Jump_000_3468


Jump_000_3463:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]

Jump_000_3468:
    pop bc
    ret


Call_000_346a:
    ld a, $01
    ld [$cbdd], a
    ld a, $01
    ldh [rSC], a

Jump_000_3473:
    ld a, [$cbdb]

Jump_000_3476:
    ldh [rSB], a
    ld a, $81
    ldh [rSC], a
    ret


Call_000_347d:
    ld a, $02
    ld [$cbdd], a

Jump_000_3482:
    xor a
    ldh [rSC], a
    ld a, $55
    ldh [rSB], a
    ld a, $80
    ldh [rSC], a
    ret


jr_000_348e:
    ld a, l
    ld [$cbda], a
    and $03
    ld l, a

Call_000_3495:
Jump_000_3495:
    ld bc, $01e0
    sla l
    sla l
    add hl, bc
    jp hl


Call_000_349e:
    ldh a, [rLCDC]
    add a
    ret nc

jr_000_34a2:
    ldh a, [rLY]
    cp $92
    jr nc, jr_000_34a2

jr_000_34a8:
    ldh a, [rLY]
    cp $91
    jr c, jr_000_34a8

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ret


    ld a, $dd
    ldh [rDMA], a
    ld a, $28

jr_000_34bb:
    dec a
    jr nz, jr_000_34bb

    ld [hl], a
    ret


Jump_000_34c0:
    push af
    push bc
    push de
    push hl
    ld a, [$cbdd]
    cp $02
    jr nz, jr_000_34d2

    ldh a, [rSB]
    ld [$cbdc], a
    jr jr_000_34e0

jr_000_34d2:
    cp $01
    jr nz, jr_000_34e5

    ldh a, [rSB]
    cp $55
    jr z, jr_000_34e0

    ld a, $04
    jr jr_000_34e2

jr_000_34e0:
    ld a, $00

jr_000_34e2:
    ld [$cbdd], a

jr_000_34e5:
    ld a, $80
    ldh [rSC], a
    jp Jump_000_1482


    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    jr jr_000_348e

    ld hl, $cbda
    ld e, [hl]
    ret


    ei
    ret


    di
    ret


    ld a, [$cbd8]
    jp Jump_000_0150


Call_000_3502:
    ld e, a
    di
    ldh a, [rIE]
    xor e
    and e
    ld hl, $ff0f
    bit 4, a
    jr z, jr_000_3511

    res 4, [hl]

jr_000_3511:
    bit 3, a
    jr z, jr_000_3517

    res 3, [hl]

jr_000_3517:
    bit 2, a
    jr z, jr_000_351d

    res 2, [hl]

jr_000_351d:
    bit 1, a
    jr z, jr_000_3523

    res 1, [hl]

jr_000_3523:
    bit 0, a
    jr z, jr_000_3529

    res 0, [hl]

jr_000_3529:
    ld a, e
    ldh [rIE], a
    reti


Call_000_352d:
    push bc
    xor a
    ld hl, sp+$08
    or [hl]
    or a
    jp z, Jump_000_355e

    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld e, c
    ld a, b
    xor $80
    ld d, a
    ld hl, $8000
    add hl, de
    jp c, Jump_000_355e

    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    xor a

Jump_000_3551:
    ld a, $00
    sbc c
    ld c, a
    ld a, $00
    sbc b
    ld b, a
    ld hl, sp+$04
    ld [hl], c
    inc hl
    ld [hl], b

Jump_000_355e:
    xor a
    ld hl, sp+$04
    ld a, [hl+]
    inc hl
    sbc [hl]

Jump_000_3564:
    dec hl
    ld a, [hl+]
    inc hl
    sbc [hl]
    jp c, Jump_000_358d

Jump_000_356b:
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld b, d
    ld c, e
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]

Call_000_3584:
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_352d
    add sp, $05

Jump_000_358d:
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3777
    ld b, d
    ld c, e
    add sp, $04
    ld a, $b4
    add c
    ld e, a
    ld a, $35
    adc b
    ld d, a
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    pop bc
    ret


    jr nc, jr_000_35e7

Jump_000_35b6:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_000_35f7

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop

Call_000_35c5:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, $0002
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d

Jump_000_35d8:
    ld hl, sp+$07
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_000_36dc

    ld a, [hl]

jr_000_35e7:
    cp $25
    jp nz, Jump_000_35ee

    jr jr_000_35f1

Jump_000_35ee:
    jp Jump_000_36c0


jr_000_35f1:
    inc bc
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b

jr_000_35f7:
    ld a, [bc]
    ld c, a
    ld a, c
    cp $63
    jp z, Jump_000_361a

    ld a, c
    cp $64
    jp z, Jump_000_3659

    ld a, c
    cp $73
    jp z, Jump_000_36a3

    ld a, c
    cp $75
    jp z, Jump_000_3634

    ld a, c
    cp $78
    jp z, Jump_000_367e

    jp Jump_000_36ca


Jump_000_361a:
    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld e, c
    ld d, b
    dec de
    ld a, [de]
    ld c, a
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_000_36ca


Jump_000_3634:
    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld e, c
    ld d, b
    dec de
    dec de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, $00
    push af
    inc sp
    ld hl, $000a
    push hl
    push bc
    call Call_000_352d
    add sp, $05
    jp Jump_000_36ca


Jump_000_3659:
    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld e, c
    ld d, b
    dec de
    dec de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, $01
    push af
    inc sp
    ld hl, $000a
    push hl
    push bc
    call Call_000_352d
    add sp, $05
    jp Jump_000_36ca


Jump_000_367e:
    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld e, c
    ld d, b
    dec de
    dec de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, $00
    push af
    inc sp
    ld hl, $0010
    push hl
    push bc
    call Call_000_352d
    add sp, $05
    jp Jump_000_36ca


Jump_000_36a3:
    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld e, c
    ld d, b
    dec de
    dec de
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push bc
    call Call_000_2eda
    add sp, $02
    jp Jump_000_36ca


Jump_000_36c0:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_000_36ca:
    ld hl, sp+$07
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0001
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    jp Jump_000_35d8


Jump_000_36dc:
    add sp, $03
    pop bc
    ret


Call_000_36e0:
    push bc
    add sp, -$03
    ld hl, sp+$01
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_000_36ea:
    ld hl, sp+$07
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $0001
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    xor a
    ld hl, sp+$00
    or [hl]
    or a
    jp z, Jump_000_370e

    inc hl
    inc [hl]
    jr nz, jr_000_370b

    inc hl
    inc [hl]

jr_000_370b:
    jp Jump_000_36ea


Jump_000_370e:
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    add sp, $03
    pop bc
    ret


    ret


Call_000_3718:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_3786
    ld e, c
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_3786
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_378e
    ld e, c
    ld d, b
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_378e
    pop bc
    ret


Call_000_374f:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_37c4
    ld e, c
    pop bc
    ret


Call_000_375b:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_37c4
    pop bc
    ret


Call_000_3766:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_37c7

Jump_000_3773:
    ld e, c
    ld d, b
    pop bc
    ret


Call_000_3777:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_37c7
    pop bc
    ret


Call_000_3786:
    ld a, c
    rlca
    sbc a
    ld b, a
    ld a, e
    rlca
    sbc a
    ld d, a

Call_000_378e:
    ld a, b
    push af
    xor d
    push af
    bit 7, d
    jr z, jr_000_379c

    sub a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_000_379c:
    bit 7, b
    jr z, jr_000_37a6

    sub a
    sub c
    ld c, a
    sbc a
    sub b
    ld b, a

jr_000_37a6:
    call Call_000_37c7
    jr nc, jr_000_37ae

    add sp, $04
    ret


jr_000_37ae:
    pop af
    and $80
    jr z, jr_000_37b9

    sub a
    sub c
    ld c, a
    sbc a
    sub b
    ld b, a

jr_000_37b9:
    pop af
    and $80
    ret z

    sub a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a
    ret


Call_000_37c4:
    ld b, $00
    ld d, b

Call_000_37c7:
    ld a, e
    or d
    jr nz, jr_000_37d2

    ld bc, $0000
    ld d, b
    ld e, c
    scf
    ret


jr_000_37d2:
    ld l, c
    ld h, b
    ld bc, $0000
    or a
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    call Call_000_3812
    ld d, b
    ld e, c
    rl l
    ld c, l
    rl h
    ld b, h
    or a
    ret


Call_000_3812:
    rl l
    rl h
    rl c
    rl b
    push bc
    ld a, c
    sbc e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    ccf
    jr c, jr_000_3826

    pop bc
    ret


jr_000_3826:
    inc sp
    inc sp
    ret


Call_000_3829:
    ld hl, sp+$02
    ld a, [hl+]
    ld [$cbf9], a
    ld a, [hl]
    ld [$cbf8], a
    ret


Call_000_3834:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de

jr_000_383e:
    ld a, [hl+]
    ld [de], a
    inc de
    or a
    jr nz, jr_000_383e

    pop de
    ret


Call_000_3846:
    push bc
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc b
    inc c
    push hl
    jr jr_000_385d

jr_000_385a:
    ld a, [de]
    ld [hl+], a
    inc de

jr_000_385d:
    dec c
    jr nz, jr_000_385a

    dec b
    jr nz, jr_000_385a

    pop de
    pop bc
    ret


Call_000_3866:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_000_3878

jr_000_3871:
    ld a, [de]
    sub [hl]
    jr nz, jr_000_3881

    cp [hl]
    jr z, jr_000_387c

jr_000_3878:
    inc de
    inc hl
    jr jr_000_3871

jr_000_387c:
    ld de, $0000
    jr jr_000_3889

jr_000_3881:
    ld de, $0001
    jr nc, jr_000_3889

    ld de, $ffff

jr_000_3889:
    ret


Call_000_388a:
jr_000_388a:
    ld a, b

Jump_000_388b:
    ld [hl+], a
    dec de
    ld a, d
    or e
    jr nz, jr_000_388a

    ret


Call_000_3892:
    push bc
    ld hl, sp+$08
    ld d, [hl]
    dec hl
    ld e, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    push hl
    call Call_000_388a
    pop de
    pop bc
    ret


Call_000_38a5:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld e, [hl]
    call Call_000_38c2
    ld e, l
    pop bc
    ret


Call_000_38b1:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_38c5
    ld e, l
    ld d, h
    pop bc
    ret


Call_000_38c2:
    ld b, $00
    ld d, b

Call_000_38c5:
    ld hl, $0000
    ld a, $0f

jr_000_38ca:
    sla e
    rl d
    jr nc, jr_000_38d1

    add hl, bc

jr_000_38d1:
    add hl, hl
    dec a
    jr nz, jr_000_38ca

    bit 7, d
    jr z, jr_000_38da

    add hl, bc

jr_000_38da:
    ret


Call_000_38db:
    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, d
    add e
    add a
    add a
    add a
    ld d, a
    ld a, e
    add a
    add a
    add a
    ld e, a

jr_000_38f1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_38f1

    ld a, e
    ldh [rBCPS], a
    ld a, [bc]
    ldh [rBCPD], a
    inc bc
    inc e
    ld a, e
    cp d
    jr nz, jr_000_38f1

    pop de
    pop bc
    ret


    ldh a, [rLCDC]
    or $10
    ldh [rLCDC], a
    ld a, $48
    ldh [rLYC], a
    ret


jr_000_3911:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_000_3911

    ldh a, [rLCDC]
    and $ef
    ldh [rLCDC], a
    ret


Call_000_391e:
    push bc
    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    swap a
    ld b, a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f
    or b
    swap a
    ld b, a
    ld a, $30
    ldh [rP1], a
    ld a, b
    pop bc
    ld e, a
    ret


Call_000_394c:
    push bc
    call Call_000_3969
    ld b, $32

Jump_000_3952:
    jr jr_000_3954

jr_000_3954:
    jr jr_000_3956

jr_000_3956:
    jr jr_000_3958

jr_000_3958:
    jr jr_000_395a

jr_000_395a:
    jr jr_000_395c

jr_000_395c:
    dec b
    jp nz, Jump_000_3952

    nop
    pop bc
    jr jr_000_3964

jr_000_3964:
    jr jr_000_3966

jr_000_3966:
    jr jr_000_3968

jr_000_3968:
    ret


Call_000_3969:
jr_000_3969:
    dec de
    ld a, e
    or d
    ret z

    ld b, $33

Jump_000_396f:
    jr jr_000_3971

jr_000_3971:
    jr jr_000_3973

jr_000_3973:
    jr jr_000_3975

jr_000_3975:
    jr jr_000_3977

jr_000_3977:
    jr jr_000_3979

jr_000_3979:
    dec b
    jp nz, Jump_000_396f

    nop
    jr jr_000_3980

jr_000_3980:
    jr jr_000_3982

jr_000_3982:
    jr jr_000_3984

jr_000_3984:
    jr jr_000_3969

Call_000_3986:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_000_394c
    ret


Jump_000_398f:
jr_000_398f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_398f

    ld [hl], b
    inc hl
    dec de
    ld a, d
    or e

Jump_000_399a:
    jr nz, jr_000_398f

    ret


    ldh a, [rLCDC]
    bit 6, a
    jr nz, jr_000_39a8

    ld hl, $9800
    jr jr_000_39bb

jr_000_39a8:
    ld hl, $9c00
    jr jr_000_39bb

    ldh a, [rLCDC]
    bit 3, a
    jr nz, jr_000_39b8

    ld hl, $9800
    jr jr_000_39bb

jr_000_39b8:
    ld hl, $9c00

jr_000_39bb:
    ld de, $0400
    jp Jump_000_398f


jr_000_39c1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_39c1

    ld a, [bc]
    ld [hl+], a
    inc bc
    dec de
    ld a, d
    or e
    jr nz, jr_000_39c1

    ret


Call_000_39d0:
    push bc
    ld hl, sp+$04
    ld d, [hl]
    inc hl
    ld e, [hl]
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    call Call_000_39f5
    pop bc
    ret


    push hl
    ldh a, [rLCDC]
    bit 6, a
    jr nz, jr_000_39f0

    ld hl, $9800
    jr jr_000_3a04

jr_000_39f0:
    ld hl, $9c00
    jr jr_000_3a04

Call_000_39f5:
    push hl
    ldh a, [rLCDC]
    bit 3, a
    jr nz, jr_000_3a01

    ld hl, $9800
    jr jr_000_3a04

jr_000_3a01:
    ld hl, $9c00

jr_000_3a04:
    push bc
    xor a
    or e
    jr z, jr_000_3a10

    ld bc, $0020

jr_000_3a0c:
    add hl, bc
    dec e
    jr nz, jr_000_3a0c

jr_000_3a10:
    ld b, $00
    ld c, d
    add hl, bc
    pop bc
    pop de
    push hl
    push de

jr_000_3a18:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_000_3a18

    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    dec d
    jr nz, jr_000_3a18

    pop hl
    ld d, h
    pop hl
    dec e
    jr z, jr_000_3a35

    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    push hl
    push de
    jr jr_000_3a18

jr_000_3a35:
    ret


Call_000_3a36:
    ld de, $c0a0
    ld a, $00
    ld [de], a
    ld de, $c0a1
    ld a, $00
    ld [de], a
    ld de, $c0a2
    ld a, $00
    ld [de], a
    ld de, $c0a3

Jump_000_3a4b:
    ld a, $00
    ld [de], a
    ld de, $c110
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c112
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c114
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c116
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c118
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c11a
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c11c
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c11e
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c120
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c122
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c124
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c126
    ld a, $40
    ld [de], a
    inc de
    ld a, $01
    ld [de], a
    ld de, $c150
    ld a, $00
    ld [de], a
    ld de, $c151
    ld a, $00
    ld [de], a
    ld de, $c152
    ld a, $00
    ld [de], a
    ld de, $c153
    ld a, $00
    ld [de], a
    ld de, $c154
    ld a, $00
    ld [de], a
    ld de, $c155
    ld a, $00
    ld [de], a
    ld de, $c156
    ld a, $00
    ld [de], a
    ld de, $c157
    ld a, $00
    ld [de], a
    ld de, $c158
    ld a, $ff
    ld [de], a
    ld de, $c159
    ld a, $ff
    ld [de], a
    ld de, $c15a
    ld a, $ff
    ld [de], a
    ld de, $c15b
    ld a, $ff
    ld [de], a
    ld de, $c16c
    ld a, $ff
    ld [de], a
    ld de, $c16d
    ld a, $ff
    ld [de], a
    ld de, $c16e
    ld a, $ff
    ld [de], a
    ld de, $c16f
    ld a, $ff
    ld [de], a
    ld de, $c17c
    ld a, $ff
    ld [de], a
    ld de, $c17d
    ld a, $ff
    ld [de], a
    ld de, $c17e
    ld a, $ff
    ld [de], a
    ld de, $c17f
    ld a, $ff
    ld [de], a
    ld de, $c200
    ld a, $ff
    ld [de], a
    ld de, $c201
    ld a, $ff
    ld [de], a
    ld de, $c202
    ld a, $ff
    ld [de], a
    ld de, $c203
    ld a, $ff
    ld [de], a
    ld de, $c204
    ld a, $ff
    ld [de], a
    ld de, $c205
    ld a, $ff
    ld [de], a
    ld de, $c206
    ld a, $ff
    ld [de], a
    ld de, $c207
    ld a, $ff
    ld [de], a
    ld de, $c208
    ld a, $ff
    ld [de], a
    ld de, $c209
    ld a, $ff
    ld [de], a
    ld de, $c20a
    ld a, $ff
    ld [de], a
    ld de, $c20b
    ld a, $ff
    ld [de], a
    ld de, $c20c
    ld a, $ff

Call_000_3b8b:
Jump_000_3b8b:
    ld [de], a
    ld de, $c20d
    ld a, $ff
    ld [de], a
    ld de, $c20e
    ld a, $ff
    ld [de], a
    ld de, $c20f
    ld a, $ff
    ld [de], a
    ld de, $c210
    ld a, $ff
    ld [de], a
    ld de, $c211
    ld a, $ff
    ld [de], a
    ld de, $c212
    ld a, $ff
    ld [de], a
    ld de, $c213
    ld a, $ff
    ld [de], a
    ld de, $c2fc
    ld a, $ff
    ld [de], a
    ld de, $c2fd
    ld a, $ff
    ld [de], a
    ld de, $c2fe
    ld a, $ff
    ld [de], a
    ld de, $c2ff
    ld a, $ff
    ld [de], a
    ld hl, $c402
    ld [hl], $04
    ld hl, $c404
    ld [hl], $00
    ld hl, $c405
    ld [hl], $00
    ld hl, $c40a
    ld [hl], $01
    ld hl, $c414
    ld [hl], $01
    ld hl, $c415
    ld [hl], $00
    ld hl, $c416
    ld [hl], $00
    ld hl, $c418
    ld [hl], $00
    ld hl, $c419
    ld [hl], $00
    ld hl, $c41a
    ld [hl], $00
    ld hl, $c41b
    ld [hl], $00
    ld hl, $c41c
    ld [hl], $00
    ld hl, $c41d
    ld [hl], $00
    ld hl, $c41e
    ld [hl], $00
    ld hl, $c41f
    ld [hl], $00
    ld de, $c420
    ld a, $00
    ld [de], a
    ld de, $c421
    ld [de], a
    ld de, $c422
    ld [de], a
    ld de, $c423
    ld [de], a
    ld hl, $c428
    ld [hl], $00
    ld hl, $c429
    ld [hl], $00
    ld hl, $c42a
    ld [hl], $00
    ld hl, $c42b
    ld [hl], $00
    ld hl, $c42c
    ld [hl], $00
    ld hl, $c42e
    ld [hl], $09
    ld hl, $c42f
    ld [hl], $03
    ld hl, $c442
    ld [hl], $00
    ld hl, $c443
    ld [hl], $00
    ld hl, $c444
    ld [hl], $00
    ld de, $c44c
    ld a, $01
    ld [de], a
    ld de, $c44d
    ld [de], a
    ld de, $c44e
    ld [de], a
    ld de, $c44f
    ld [de], a
    ld de, $c450
    ld a, $ff
    ld [de], a
    ld de, $c451
    ld [de], a
    ld de, $c452
    ld [de], a
    ld de, $c453
    ld [de], a
    ld de, $c454
    ld [de], a
    ld de, $c455
    ld [de], a
    ld de, $c456
    ld [de], a
    ld de, $c457
    ld [de], a
    ld hl, $c468
    ld [hl], $ff
    ld hl, $c46d
    ld [hl], $00
    ld hl, $c501
    ld [hl], $00
    ld hl, $c531
    ld [hl], $01
    ld a, $5e
    add $e0
    ld hl, $c565
    ld [hl], a
    ld a, $08
    adc $ff
    inc hl
    ld [hl], a
    ld hl, $c567
    ld [hl], $49
    ld hl, $c568
    ld [hl], $46
    ld hl, $c569
    ld [hl], $8e
    ld hl, $c56a
    ld [hl], $8b
    ld hl, $c572
    ld [hl], $ff
    ld de, $c17c
    ld hl, $c8de
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c16c
    ld hl, $c8e0
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c160
    ld hl, $c8e2
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c150
    ld hl, $c8e4
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c158
    ld hl, $c8e6
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c168
    ld hl, $c8ea
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c0cc
    ld hl, $c8ec
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c0c4
    ld hl, $c8ee
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $c33f
    ld hl, $c8fa
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c8fd
    ld [hl], $00
    ld hl, $c8fe
    ld [hl], $01
    ld hl, $c8ff
    ld [hl], $00
    ld hl, $c900
    ld [hl], $02
    ld hl, $c902
    ld [hl], $03
    ld de, $c905
    ld a, $01
    ld [de], a
    ld de, $c906
    ld [de], a
    ld de, $c907
    ld [de], a
    ld de, $c908
    ld [de], a
    ld hl, $c92d
    ld [hl], $00
    ld hl, $c92e
    ld [hl], $00
    ld hl, $c92f
    ld [hl], $00
    ld hl, $c930
    ld [hl], $00
    ld hl, $c931
    ld [hl], $00
    ld hl, $c932
    ld [hl], $00
    ld de, $c933
    ld a, $01
    ld [de], a
    ld de, $c934
    ld a, $00
    ld [de], a
    ld hl, $c935
    ld [hl], $00
    ld hl, $c936
    ld [hl], $00
    ld hl, $c943
    ld [hl], $00
    ld hl, $c9a1
    ld [hl], $00
    ld de, $c9b6
    ld a, $ff
    ld [de], a
    ld de, $c9b7
    ld [de], a
    ld de, $c9b8
    ld [de], a
    ld de, $c9b9
    ld [de], a
    ld de, $c9ba
    ld [de], a
    ld de, $c9bb
    ld [de], a
    ld de, $c9bc
    ld [de], a
    ld de, $c9bd
    ld [de], a
    ld de, $c9be
    ld [de], a
    ld de, $c9bf
    ld [de], a
    ld de, $c9c0
    ld [de], a
    ld de, $c9c1
    ld [de], a

Jump_000_3db8:
    ld de, $c9c2
    ld [de], a
    ld de, $c9c3
    ld [de], a
    ld de, $c9c4
    ld [de], a
    ld de, $c9c5
    ld [de], a
    ld hl, $c9d3
    ld [hl], $00

Call_000_3dcd:
    ld hl, $cb67
    ld [hl], $03
    ld hl, $cb68
    ld [hl], $ff
    ld hl, $cb70
    ld [hl], $ff
    ld hl, $cb7b
    ld [hl], $ff
    ld hl, $cb90
    ld [hl], $09
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e4d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e99:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
