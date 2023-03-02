; disasSembly of "lsdj.gb"
SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    ld h, b
    ld b, b
    or b
    ld c, e
    or b
    ld d, d
    ld b, b
    ld e, b
    ld b, b
    ld h, d
    ret nc

    ld l, h
    ld h, b
    ld a, d
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
    ld b, e
    ld b, c
    ld d, h
    ld b, h
    ld c, a
    ld b, a
    ld b, h
    ld d, l
    ld b, e
    ld b, a
    ld c, a
    ld b, c
    ld c, h
    ld b, c
    ld c, l
    ld b, e
    ld c, a
    ld d, a
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    ld b, c
    ld c, [hl]
    ld c, c
    ld c, l
    ld c, h
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $7777
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    add a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    sbc c
    add a
    ld [hl], a
    add a
    ld h, [hl]
    ld [hl], a

Call_018_407c:
    ld [hl], a
    ld a, b
    sbc c
    add a
    adc b
    add a
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld a, c
    sbc c
    ld [hl], a

Call_018_4088:
    ld a, b
    db $76
    ld h, a
    adc b
    ld [hl], a
    ld a, c
    sbc b
    ld [hl], a
    adc b
    db $76
    ld h, a
    adc b
    ld [hl], a
    ld a, c
    sub a
    ld [hl], a
    adc b
    db $76
    ld h, a
    add a
    ld h, [hl]
    adc c
    add a
    ld a, b
    sbc b
    db $76
    ld a, b
    add a
    ld h, a
    adc c
    sub a
    ld a, b
    sbc b
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    adc c
    sub a
    ld a, b
    sbc b
    ld h, [hl]
    ld [hl], a
    db $76
    ld d, a
    sbc d
    sub a
    ld a, b
    sub a
    ld d, l
    ld a, b
    db $76
    ld d, a
    xor d
    add a
    adc c
    ld [hl], a
    ld d, [hl]
    ld a, b
    ld [hl], l
    ld l, b
    xor d
    add a
    adc c
    sub [hl]
    ld d, [hl]
    ld a, b
    ld h, l
    ld a, c
    xor c
    adc b
    sbc c
    db $76
    ld d, [hl]
    ld [hl], a
    ld d, l
    ld a, d
    xor b
    ld a, b
    sbc c
    ld [hl], l
    ld d, a
    db $76
    ld d, [hl]
    adc d
    xor b
    adc c
    sbc b
    ld h, l
    ld h, a
    db $76
    ld d, a
    sbc d
    sbc b
    adc c
    sub a
    ld h, [hl]
    ld [hl], a
    ld h, l
    ld h, a
    sbc c
    sbc b
    sbc c
    add a
    db $76
    db $76
    ld d, l
    ld l, b
    sbc c
    sbc b
    adc b
    add a
    ld h, a
    db $76
    ld d, [hl]
    ld a, b
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld a, c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld h, l
    ld d, [hl]
    adc c
    xor c
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, l
    ld d, a
    adc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, a
    sbc d
    sbc c
    adc b
    adc b
    db $76
    ld [hl], a
    ld h, l
    ld h, a
    sbc d
    sbc b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    ld d, l
    ld l, b
    xor d
    add a
    adc c
    add a
    ld h, [hl]
    add [hl]
    ld d, h
    ld l, c
    cp d
    add a
    adc c
    add [hl]
    ld h, a
    db $76
    ld d, l
    ld a, d
    cp c
    ld [hl], a
    sbc d
    add [hl]
    ld h, a
    ld h, [hl]
    ld b, l
    adc e
    cp b
    ld a, b
    xor c
    ld [hl], l
    ld h, a
    ld [hl], h
    ld [hl], $ab
    and [hl]
    ld l, b
    xor c
    ld h, l
    ld l, b
    ld d, h
    ld b, a
    cp e
    sub [hl]
    ld a, c
    xor b
    ld d, l
    ld a, b
    ld h, h
    ld e, c
    db $db
    add [hl]
    ld a, d
    and a
    ld d, [hl]
    adc b
    inc sp
    ld l, d
    jp z, $8b75

    sub l
    ld d, [hl]
    add a
    ld b, e
    ld a, e
    ret


    ld d, l
    xor e
    add l
    ld d, a
    add [hl]
    inc [hl]
    sbc l
    or a
    ld d, a
    cp d
    ld [hl], l
    ld l, b
    add l
    ld [hl], $be
    or [hl]
    ld e, c
    cp d
    ld h, h
    ld a, b
    ld [hl], h
    ld [hl], a
    call z, Call_018_6a84
    or a
    ld b, l
    ld a, b
    ld h, e
    ld c, c
    db $db
    ld h, h
    ld a, e
    and a
    ld d, [hl]
    adc b
    ld d, e
    xor h
    jp c, $9c55

    sub [hl]
    ld d, a
    sub a
    inc [hl]
    adc l
    ret c

    ld b, [hl]
    xor d
    add l
    ld e, b
    add l
    inc h
    cp $b5
    scf
    xor d
    ld [hl], l
    ld a, c
    ld [hl], e
    daa
    adc $94
    ld e, c
    cp c
    ld d, [hl]
    adc b
    ld h, e
    ld c, c
    db $dd
    ld [hl], h
    ld l, d
    or a
    ld d, a
    add a
    ld b, d
    ld e, e
    db $eb
    ld d, h
    ld a, d
    sub a
    ld h, a
    add [hl]
    ld [hl+], a
    adc l
    cp b
    inc [hl]
    sbc d
    add [hl]
    ld a, b
    add h

jr_018_41c6:
    inc d
    cp a
    add $36
    xor d
    add [hl]
    ld a, c
    ld [hl], e
    ld h, $df
    ld h, l
    ld b, a
    xor d
    ld [hl], a
    adc b
    ld d, d
    jr z, jr_018_41c6

    ld [hl], e
    ld c, b
    xor b
    ld [hl], a
    add a
    ld b, b
    ld a, [hl-]
    db $fd
    ld d, e
    ld e, c
    xor b
    ld a, b
    add [hl]
    ld hl, $fb6d
    ld d, h
    ld a, d
    sbc b
    ld a, b
    add l
    ld [de], a
    adc a
    ld a, [$8965]
    sub a
    ld a, b
    ld [hl], d
    ld [bc], a
    sbc a
    add sp, $46
    adc b
    add a
    adc b
    ld h, c
    inc b
    cp a
    rst $00
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld d, c
    ld d, $df
    cp b
    ld [hl], a
    add a
    ld a, b
    add a
    ld b, b
    daa
    sbc $b8
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    jr nz, jr_018_424f

    call Call_018_76b9
    ld h, a
    adc c
    add l
    ld de, $cd59
    cp c
    ld h, [hl]
    ld h, a
    sbc c
    ld [hl], h
    inc de
    ld a, d
    call z, Call_018_65ca
    ld d, a
    sbc b
    ld h, d
    inc h
    ld a, c
    cp l
    jp c, Jump_018_5854

    sub a
    ld b, d
    ld [hl], $89
    xor l
    ld [$6964], a
    sub [hl]
    inc sp
    ld d, a
    adc b
    xor l
    jp c, Jump_018_7864

    add l
    inc h
    ld a, b
    ld [hl], a
    sbc l
    reti


    ld d, l
    ld a, b
    ld [hl], e
    dec h
    adc b
    ld [hl], a
    sbc l

jr_018_424f:
    reti


    ld [hl], l
    ld a, b
    ld h, e
    ld [hl], $99
    ld [hl], a
    sbc h
    jp c, Jump_018_7766

    ld d, e
    ld b, a
    xor c
    ld h, [hl]
    adc l
    db $eb
    add [hl]
    db $76
    ld b, d
    ld c, b
    xor c
    ld h, l
    adc h
    db $db
    add [hl]
    db $76
    ld [hl-], a
    ld c, b
    xor c
    ld h, l
    ld a, e
    db $db
    and a
    ld h, l
    ld [hl-], a
    ld c, c
    cp c
    ld h, l
    ld a, d
    call c, $7597

jr_018_427a:
    ld hl, $ca4a
    ld h, l
    ld l, d
    call z, Call_018_75c8

jr_018_4282:
    jr nz, jr_018_42ce

    db $db
    ld h, l

Jump_018_4286:
    ld l, c
    call z, $84ba
    db $10
    add hl, sp
    call c, Call_018_5875
    xor e
    db $db
    add l
    nop
    add hl, hl
    call c, Call_018_5785

Jump_018_4297:
    sbc e
    call c, Call_000_0095
    jr jr_018_427a

    sub l
    ld d, [hl]
    adc e
    db $dd
    and l
    nop
    jr jr_018_4282

    and [hl]
    ld d, [hl]

Call_018_42a7:
    adc e
    db $dd
    and [hl]
    nop
    rlca
    sbc $a7
    ld d, l
    ld a, d
    db $dd
    or [hl]
    nop
    ld b, $ce
    or a
    ld d, l
    ld a, d
    sbc $b7
    db $10
    dec b
    cp l
    ret z

    ld d, l
    ld l, c
    rst $08
    rst $00
    jr nz, jr_018_42c7

    cp [hl]
    ret z

    ld d, h

jr_018_42c7:
    ld l, c
    adc $d8
    jr nz, jr_018_42d0

    cp a
    reti


jr_018_42ce:
    ld h, h
    ld e, b

jr_018_42d0:
    cp [hl]
    ret c

    jr nz, @+$04

    xor a
    ld [$5764], a
    adc $d9
    jr nc, jr_018_42dd

    sbc [hl]

jr_018_42dd:
    db $eb
    ld [hl], h
    ld b, a
    xor a
    ld [$0040], a
    ld a, l
    db $fc
    ld [hl], h
    ld b, a
    cp a
    ld a, [$0050]
    ld l, l
    db $ec
    add l
    ld b, [hl]
    adc [hl]
    ei
    ld h, b
    nop
    ld e, e
    db $ed
    sub l
    dec [hl]
    sbc l
    db $ec
    ld [hl], d
    nop
    ld a, [hl-]
    cp $a7
    ld b, h
    ld a, h
    db $ec
    add e
    nop
    add hl, hl
    xor $b7
    ld d, l
    ld a, e
    call c, Call_000_0084
    rla
    sbc $c8
    ld h, l
    ld l, d
    db $dd
    sub l
    nop
    ld b, $be
    ret


    ld h, [hl]
    ld a, c
    db $dd
    and [hl]
    db $10
    dec b
    cp [hl]
    jp c, Jump_018_5975

    call Call_000_20b7
    inc b
    xor [hl]
    jp c, Jump_018_6875

    cp l
    or a
    jr nz, @+$05

    sbc [hl]
    jp c, Jump_018_5776

    cp l
    or a
    jr nc, jr_018_4338

    sbc l
    ei
    add [hl]

jr_018_4338:
    ld d, a
    xor l
    ret z

    jr nc, jr_018_433f

    adc l
    db $ec

jr_018_433f:
    add [hl]
    ld d, [hl]
    xor [hl]
    reti


    ld b, b
    nop
    ld a, h

jr_018_4346:
    db $ed
    sub [hl]
    ld d, [hl]
    sbc l
    ld [$0050], a
    ld e, e
    db $fd
    and a
    ld d, l
    adc h
    db $db
    ld [hl], c
    nop
    ld c, d
    xor $b7
    ld d, h
    ld a, e
    call c, Call_000_0072
    add hl, sp
    rst $28
    ret z

    ld h, h
    ld l, d
    call c, Call_000_0082
    jr z, jr_018_4346

    reti


    ld h, h
    ld l, d
    db $dd
    sub h
    nop
    rla
    rst $08
    jp c, Jump_018_5984

    sbc $a5
    nop
    ld b, $be
    ld [$4874], a
    adc $b6
    db $10
    inc b
    xor [hl]
    db $eb
    sub h
    scf
    cp l
    rst $00
    jr nz, jr_018_4389

jr_018_4386:
    sbc [hl]
    db $fc
    sub l

jr_018_4389:
    ld [hl], $ad
    cp b
    jr nc, jr_018_4391

    adc l
    db $fd
    or [hl]

jr_018_4391:
    ld b, l
    xor l
    ret


    ld b, b
    ld [bc], a
    ld a, e
    cp $a7
    ld b, l
    sbc h
    ret


    ld d, b
    ld bc, $ee6a
    rst $10
    ld d, l
    adc h
    jp c, $0062

    ld e, d
    sbc $c8
    ld d, h
    ld a, e
    bit 6, d
    nop
    ld c, b
    adc $e9
    ld d, h
    ld l, d
    res 0, e
    nop
    jr c, jr_018_4386

    jp c, Jump_018_5974

    res 0, h
    nop
    daa
    cp [hl]
    db $db
    ld [hl], l
    ld e, b
    cp h
    sub l
    db $10
    ld h, $9d
    db $ec
    add [hl]
    ld d, a
    cp h
    and [hl]
    jr nc, jr_018_43e3

    adc h
    call z, Call_018_5796
    xor e
    and a
    ld sp, $7b14
    call c, Call_018_56a7
    sbc e
    xor b
    ld b, d
    inc de
    ld l, d
    cp h
    and a
    ld h, [hl]

jr_018_43e3:
    adc d
    xor b
    ld h, d
    ld [de], a
    ld e, c
    call Call_018_75b9
    ld a, c
    xor c
    ld [hl], e
    ld [hl+], a
    ld e, b
    sbc h
    jp z, Jump_018_7976

    xor c
    ld [hl], h
    ld [hl+], a
    ld b, a
    xor h
    jp z, Jump_018_7886

    xor c
    ld [hl], l
    ld [hl-], a
    ld [hl], $7b
    res 2, a
    ld a, b
    sbc c
    add [hl]
    ld b, d
    dec [hl]
    adc d
    res 4, a
    ld [hl], a
    adc c
    add [hl]
    ld b, e
    dec [hl]
    ld l, d
    cp h
    xor b
    ld [hl], a
    adc c
    add a
    ld d, e
    inc [hl]
    ld l, c
    cp e
    cp c
    ld [hl], a
    adc c
    add a
    ld d, e
    inc [hl]
    ld e, b
    xor e
    cp c
    add a
    ld a, b
    add a
    ld d, h
    inc [hl]
    ld d, a
    xor e
    cp d
    add a
    ld a, b
    adc b
    ld h, l
    ld b, h
    ld d, a
    sbc d
    cp d
    sub a
    ld a, b
    adc b
    ld h, l
    ld b, h
    ld d, [hl]
    adc d
    cp e
    sbc b
    ld a, b
    adc b
    ld [hl], l
    ld b, h
    ld d, [hl]
    ld a, c
    xor e
    xor b
    ld a, b
    adc b
    db $76
    ld b, h
    ld d, [hl]
    ld a, c
    xor e
    xor b
    ld [hl], a
    adc b
    db $76
    ld b, h
    ld d, l
    ld a, b
    xor e
    xor c
    add a
    adc b
    db $76
    ld d, h
    ld b, l
    ld l, b
    sbc d
    xor c
    add a
    adc b
    add a
    ld d, h
    ld b, l
    ld h, a
    sbc d
    cp d
    sbc b
    adc b
    add a
    ld d, l
    ld d, l
    ld h, a
    adc d
    xor d
    sbc b
    adc b
    add a
    ld h, l
    ld d, l
    ld h, a
    adc c
    xor d
    sbc b

Jump_018_4475:
    adc b
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    adc c
    xor d
    xor b
    adc b
    adc b
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld a, b
    xor d
    xor b
    adc b
    adc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    xor d
    xor c
    adc b
    adc b
    db $76
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    adc b

Call_018_4497:
    add a
    ld d, l
    ld d, [hl]
    ld h, a
    sbc d
    xor d
    sbc b
    adc b
    add a
    ld h, l
    ld d, [hl]
    ld h, a
    adc c
    xor d
    sbc b
    adc b
    add a
    ld h, l
    ld d, l
    ld h, a
    adc c
    xor d
    sbc b
    adc b
    add a
    ld [hl], l
    ld d, l
    ld h, a
    ld a, c
    xor d
    sbc b
    ld [hl], a
    adc b
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld a, b
    xor d
    xor c
    adc b
    adc b
    add [hl]
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    add a
    adc b
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld [hl], a
    sbc d
    xor c
    add a
    ld a, b
    add a
    ld h, l
    ld d, [hl]
    ld h, a
    adc c
    xor d
    sbc b
    ld [hl], a
    add a
    ld h, l
    ld d, [hl]
    ld h, a
    adc c
    xor d
    sbc b
    ld [hl], a
    add a
    ld [hl], l
    ld d, l
    ld h, a
    ld a, c
    xor d
    sbc b
    ld [hl], a
    adc b
    ld [hl], l

Call_018_44ea:
    ld d, l
    ld h, [hl]
    ld a, b
    xor d
    xor b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    xor d
    xor c
    add a
    adc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    add a
    ld a, b
    ld [hl], a
    ld d, l
    ld d, l
    ld h, a
    sbc d
    xor d
    add a
    ld a, b
    ld [hl], a
    ld h, l
    ld d, l
    ld h, a
    adc d
    cp d
    adc b
    ld [hl], a
    ld [hl], a
    ld h, l
    ld b, l
    ld h, a
    adc c
    xor d
    sbc b
    ld [hl], a
    add a
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld a, c
    xor d
    sbc b
    add a
    adc b
    db $76
    ld b, h
    ld d, [hl]
    ld a, c
    xor d
    xor b
    ld [hl], a
    adc b
    db $76
    ld d, h
    ld d, [hl]
    ld a, b
    xor e
    xor c
    add a
    ld a, b
    ld [hl], a
    ld d, l
    ld d, l
    ld l, b
    sbc d
    xor c
    add a
    ld a, b
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc d
    xor d
    sub a
    ld a, b
    add a
    ld [hl], l
    ld b, l
    ld d, a
    adc d
    cp d
    sbc b
    ld [hl], a
    add a
    ld [hl], l
    ld b, l
    ld d, [hl]
    adc c
    xor d
    xor b
    ld [hl], a
    add a
    db $76
    ld d, h
    ld d, [hl]
    ld a, c
    xor e
    xor b
    ld [hl], a
    ld a, b
    db $76
    ld d, h
    ld d, l
    ld a, b
    xor e
    xor c
    add a
    ld a, b
    ld [hl], a
    ld d, l
    ld d, l
    ld l, b
    xor e
    xor c
    add a
    ld a, b
    add a
    ld h, l
    ld b, l
    ld h, a
    sbc d
    xor d
    add a
    ld [hl], a
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc d
    cp d
    sub a
    ld a, b
    adc b
    ld [hl], l
    ld b, l
    ld d, a
    adc d
    xor d
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld d, [hl]
    adc c
    xor d
    sbc b
    ld [hl], a
    ld a, b
    db $76
    ld d, h
    ld d, [hl]
    ld a, c
    xor e
    xor b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld d, h
    ld b, [hl]
    ld a, b
    xor e
    xor c
    ld [hl], a
    ld a, b
    add a
    ld h, l
    ld b, l
    ld l, b
    adc d
    cp c
    add a
    ld [hl], a
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc d
    xor c
    add a
    ld [hl], a
    adc b
    ld [hl], l
    ld d, l
    ld h, a
    adc d
    xor d
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld d, a
    adc c
    xor d
    sbc b
    ld [hl], a
    adc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, c
    xor d
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld a, b
    xor d
    xor b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, l
    ld d, l
    ld l, b
    sbc d
    xor c
    add a
    ld a, b
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc d
    xor c
    add a
    ld a, b
    add a
    ld [hl], l
    ld d, l
    ld d, a
    sbc d
    xor c
    add a
    ld [hl], a
    add a
    db $76
    ld d, l
    ld h, a
    adc c
    xor d
    add a
    ld [hl], a
    adc b
    db $76
    ld d, l
    ld d, [hl]
    adc c
    xor d
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    sbc b
    add a
    adc b
    add a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    add a
    adc b
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc d
    xor c
    add a
    adc b
    add a
    ld [hl], l
    ld d, l
    ld h, a
    adc c
    xor c
    add a
    ld a, b
    adc b
    db $76
    ld d, l
    ld h, a
    adc c
    xor d
    sbc b
    ld a, b
    adc b
    db $76
    ld h, l
    ld d, a
    adc c
    xor d
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], l
    ld d, l
    ld a, b
    sbc d
    xor c
    add a
    adc b
    add a
    ld [hl], l
    ld d, l
    ld h, a
    adc c
    xor c
    adc b
    ld a, b
    add a
    db $76
    ld d, l
    ld h, a
    adc c
    xor c
    adc b
    ld a, b
    adc b
    db $76
    ld d, l
    ld d, [hl]
    adc c
    sbc c
    sbc b
    adc b
    adc b
    add [hl]
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    sbc b
    adc b
    adc b
    add a
    ld h, l
    ld d, [hl]
    ld h, a
    adc c
    sbc c
    adc b
    adc b
    add a
    ld h, l
    ld d, l
    ld h, a
    adc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], l
    ld d, l
    ld h, a
    adc c
    xor c
    adc b
    adc b
    add a
    db $76
    ld d, l
    ld d, a
    adc b
    sbc c
    sbc b
    adc b
    adc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    adc b
    adc b
    add a
    ld h, l
    ld d, l
    ld h, a
    adc c
    sbc c
    adc b
    sbc b
    add a
    db $76
    ld d, l
    ld h, a
    adc c
    sbc c
    adc b
    adc c
    sbc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    sbc c
    sbc b
    db $76
    ld d, h
    ld d, [hl]
    ld a, b
    sbc d
    sbc c
    sbc c
    sbc b
    db $76
    ld d, h
    ld b, l
    ld a, b
    sbc d
    xor c
    sbc c
    sbc c
    db $76
    ld d, h
    ld b, l
    ld l, b
    sbc d
    xor d
    sbc c
    sbc c
    add a
    ld d, h
    ld b, h
    ld h, a
    sbc d
    xor d
    xor c
    xor c
    add a
    ld d, h
    inc [hl]
    ld d, a
    adc c
    xor d
    xor d
    xor c
    sub a
    ld d, h
    inc [hl]
    ld d, [hl]
    adc c
    xor d
    xor d
    xor d
    sbc b
    ld h, h
    inc sp
    ld b, l
    ld a, c
    xor d
    xor d
    xor d
    xor b
    ld [hl], l
    ld b, e
    dec [hl]
    ld l, b
    sbc d
    xor d
    xor d
    xor c
    ld [hl], l
    ld b, e
    inc [hl]
    ld h, a
    sbc d
    cp e
    xor d
    xor c
    add [hl]
    ld b, e
    inc [hl]
    ld d, a
    adc d
    xor e
    cp d
    xor d
    add a
    ld d, e
    inc hl
    ld b, [hl]
    adc c
    xor e
    cp e
    xor d
    sub a
    ld d, e
    inc hl
    ld b, [hl]
    ld a, c
    xor e
    cp e
    xor d
    sub a
    ld h, h
    ld [hl-], a
    dec [hl]
    ld a, b
    xor d
    cp e
    cp d
    xor b
    ld h, h
    ld [hl-], a
    inc [hl]
    ld l, b
    sbc d
    cp e
    cp e
    xor b
    ld h, h
    ld [hl-], a
    inc h
    ld h, a
    sbc d
    cp e
    cp e
    xor c
    ld [hl], l
    ld [hl-], a
    inc [hl]
    ld d, a
    adc d
    cp e
    cp d
    xor c
    ld [hl], l
    ld b, e
    inc sp
    ld d, a
    adc d
    xor e
    xor d
    xor c
    add [hl]
    ld b, e
    inc sp
    ld d, a
    ld a, c
    xor d
    xor d
    xor d
    add [hl]
    ld b, e
    inc sp
    ld b, [hl]
    adc c
    xor d
    xor d
    xor d
    sub a
    ld d, e
    inc hl
    ld b, [hl]
    ld l, c
    xor d
    xor d
    xor d
    sub a
    ld d, h
    inc sp
    ld b, l
    ld a, b
    sbc d
    xor d
    xor d
    sbc b
    ld h, h
    inc sp
    dec [hl]
    ld e, b
    sbc d
    xor d
    xor d
    xor b
    ld [hl], l
    inc sp
    inc [hl]
    ld h, a
    sbc c
    xor d
    xor d
    xor c
    ld [hl], l
    ld b, e
    inc [hl]
    ld d, a
    adc c
    xor d
    xor d
    xor c
    add [hl]
    ld b, e
    inc [hl]
    ld d, a
    adc c
    xor d
    xor d
    xor d
    add a
    ld d, h
    inc [hl]
    ld b, [hl]
    ld a, c
    xor d
    xor d
    cp d
    sub a
    ld d, h
    inc sp
    ld b, l
    ld a, b
    sbc d
    xor e
    cp d
    sbc b
    ld h, h
    inc sp
    dec [hl]
    ld l, b
    sbc d
    cp e
    cp e
    xor b
    ld h, h
    inc sp
    inc [hl]
    ld h, a
    sbc d
    xor e
    cp e
    xor c
    ld [hl], l
    ld b, e
    inc h
    ld d, a
    adc c
    xor e
    cp e
    xor c
    add [hl]
    ld b, e
    inc sp
    ld d, [hl]
    adc c
    xor e
    cp e
    cp d
    add [hl]
    ld b, e
    inc sp
    ld b, l
    ld a, c
    xor e
    cp e
    cp d
    sub a
    ld d, e
    inc hl
    ld b, l
    ld a, b
    xor e
    cp h
    cp e
    sub a
    ld d, e
    ld [hl+], a
    dec [hl]
    ld l, b
    sbc e
    call z, $a8cb
    ld h, h
    ld [hl+], a
    inc [hl]
    ld h, a
    sbc d
    cp h
    call z, Call_018_64a8
    ld [hl-], a
    inc hl
    ld d, a
    adc d
    cp h
    call z, Call_018_74b9
    ld [hl+], a
    inc hl
    ld b, [hl]
    adc d
    cp h
    db $dd
    cp d
    ld [hl], l
    ld b, c
    ld [hl+], a
    dec [hl]
    ld a, c
    cp h
    db $dd
    jp z, Jump_000_3186

    ld [de], a
    dec [hl]
    ld a, c
    cp h
    db $dd
    db $db
    sub [hl]
    ld d, d
    ld de, $6924
    xor h
    sbc $db
    sub a
    ld b, d
    ld de, $6824
    xor h
    xor $dc
    and a
    ld h, d
    nop
    inc de
    ld d, a
    xor h
    sbc $ed
    xor b
    ld d, d
    db $10
    ld [de], a
    ld d, a
    xor h
    sbc $ed
    cp b
    ld h, e
    nop
    ld [bc], a
    ld b, a
    sbc e
    sbc $ed
    cp c
    ld h, e
    db $10
    ld [bc], a
    ld b, [hl]
    sbc e
    sbc $fe
    ret


    ld [hl], e
    db $10
    ld bc, $8b36
    sbc $fe
    jp z, Jump_000_1074

    nop
    dec [hl]
    adc e
    rst $18
    cp $ca
    add h
    stop
    dec h
    ld a, d
    rst $18
    rst $38
    jp c, Jump_000_1074

    nop
    dec h
    ld a, d
    sbc $ff
    db $db
    sub l
    jr nz, jr_018_4833

jr_018_4833:
    inc h
    ld a, d
    adc $ff
    db $db
    add l
    jr nz, jr_018_483b

jr_018_483b:
    inc d
    ld a, d
    rst $08
    rst $38
    db $eb
    sub l
    jr nz, jr_018_4843

jr_018_4843:
    inc de
    ld a, c
    rst $08
    rst $38
    db $ec
    sub [hl]
    jr nc, jr_018_484b

jr_018_484b:
    inc bc
    ld l, c
    adc $ff
    db $ec
    and [hl]
    jr nc, jr_018_4853

jr_018_4853:
    inc de
    ld l, c
    adc $ff
    db $fc
    sub [hl]
    jr nc, jr_018_485b

jr_018_485b:
    ld [bc], a
    ld l, c
    adc $ff
    db $fd
    and [hl]
    jr nc, jr_018_4863

jr_018_4863:
    ld [bc], a
    ld l, c
    cp [hl]
    rst $38
    db $fd
    and a
    jr nc, jr_018_486b

jr_018_486b:
    ld [bc], a
    ld e, b
    cp [hl]
    rst $38
    db $fd
    and a
    jr nc, jr_018_4873

jr_018_4873:
    ld [bc], a
    ld e, b
    cp [hl]
    rst $38
    db $fd
    and a
    ld sp, $0200
    ld e, b
    cp [hl]
    rst $38
    cp $b7
    ld b, b
    nop
    ld [bc], a
    ld e, b
    cp l
    rst $38
    cp $b7
    ld b, c
    nop
    ld [bc], a
    ld b, a
    cp [hl]
    rst $38
    cp $b8
    ld d, c
    nop
    ld bc, $ad47
    rst $38
    cp $b8
    ld d, c
    nop
    ld bc, $ad47
    rst $38
    cp $c8
    ld d, c
    nop
    ld bc, $ad47
    rst $38
    rst $38
    ret z

    ld d, d
    nop
    ld bc, $ad37
    rst $38
    rst $38
    ret


    ld d, d
    nop
    nop
    scf
    sbc l
    rst $38
    rst $38
    ret


    ld h, d
    nop
    nop
    ld [hl], $9c
    rst $28
    rst $38
    reti


    ld h, e
    nop
    nop
    ld [hl], $9c
    rst $28
    cp $c9
    ld h, e
    nop
    nop
    ld [hl], $9c
    rst $28
    rst $38
    reti


    ld [hl], e
    nop
    nop
    dec h
    adc h
    rst $28
    rst $38
    jp c, $1073

    nop
    dec h
    adc e
    rst $28
    rst $38
    jp c, Jump_000_1074

    nop
    dec h
    adc e
    rst $28
    rst $38
    jp c, Jump_000_1074

    nop
    dec h
    adc e
    rst $18
    rst $38
    jp c, $1084

    nop
    inc d
    ld a, d
    rst $18
    rst $38
    db $db
    add l
    jr nz, jr_018_48fc

jr_018_48fc:
    inc h
    ld a, d
    rst $18
    rst $38
    db $eb
    add [hl]
    jr nc, jr_018_4904

jr_018_4904:
    inc d
    ld a, d
    adc $ff
    db $db
    sub [hl]
    ld sp, $1400
    ld l, c
    adc $ff
    db $eb
    sub [hl]
    ld b, c
    nop
    inc de
    ld l, c
    cp [hl]
    rst $38
    db $ec
    sub a
    ld b, c
    nop
    inc de
    ld l, b
    cp [hl]
    rst $38
    db $ec
    and a
    ld b, d
    nop
    inc de
    ld e, b
    cp l
    rst $28
    db $ec
    and a
    ld d, d
    nop
    ld [bc], a
    ld d, a
    xor l
    rst $28
    db $ec
    and a
    ld d, d
    nop
    ld [bc], a
    ld d, a
    xor l
    rst $28
    db $ed
    xor b
    ld h, e
    db $10
    ld [bc], a
    ld b, a
    sbc h
    rst $28
    db $ed
    cp b
    ld h, e
    db $10
    ld bc, $9b46
    rst $18
    db $ed
    cp c
    ld h, h
    db $10
    ld bc, $9b46
    rst $18
    db $ed
    cp c
    ld [hl], h
    jr nz, @+$03

    ld [hl], $8b
    sbc $ed
    cp c
    ld [hl], l
    jr nz, @+$03

    ld [hl], $8b
    sbc $ed
    cp c
    ld [hl], l
    ld sp, $3511
    adc d
    adc $ed
    cp d
    ld [hl], l
    ld sp, $3511
    ld a, d
    call $caed
    add l
    ld [hl-], a
    ld [de], a
    dec [hl]
    ld a, d
    call $cadd
    add l
    ld [hl-], a
    ld [de], a
    dec [hl]
    ld a, c
    cp l
    db $dd
    jp z, Jump_018_4286

    ld [de], a
    dec [hl]
    ld a, c
    cp l
    db $dd
    jp z, Jump_018_4286

    ld [de], a
    dec [hl]
    ld a, c
    cp l
    call $86ba
    ld b, d
    ld [hl+], a
    dec [hl]
    ld a, c
    cp h
    call c, $86ba
    ld b, e
    inc hl
    ld b, l
    ld a, c
    cp h
    call z, $86b9
    ld b, e
    inc sp
    ld b, l
    ld a, c
    xor h
    call z, $86ba
    ld b, e
    inc sp
    ld b, l
    ld a, c
    xor h
    call z, $86b9
    ld d, e
    inc sp
    ld b, l
    ld a, c
    xor h
    call z, $86b9
    ld d, h
    inc sp
    ld b, [hl]
    ld a, c
    xor e
    cp e
    xor c
    db $76
    ld d, h
    inc [hl]
    ld d, [hl]
    ld a, c
    xor e
    res 5, c
    db $76
    ld d, h
    ld b, h
    ld d, [hl]
    ld a, c
    xor e
    cp e
    xor c
    db $76
    ld d, h
    ld b, h
    ld d, [hl]
    ld a, c
    xor e
    cp d
    xor b
    db $76
    ld d, h
    ld b, l
    ld d, [hl]
    adc c
    xor e
    xor d
    sbc b
    db $76
    ld d, l
    ld b, l
    ld h, a
    adc c
    xor d
    cp d
    sbc b
    db $76
    ld d, l
    ld b, l
    ld h, a
    adc c
    xor d
    xor d
    sbc b
    db $76
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor d
    sub a
    db $76
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor c
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor c
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    xor d
    sbc c
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    xor d
    xor c
    add a
    ld h, l
    ld d, l
    ld d, [hl]
    ld a, b
    adc c
    xor d
    sbc b
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld a, b
    sbc d
    xor d
    sbc b
    ld [hl], a
    ld h, l
    ld d, l
    ld h, a
    ld a, b
    sbc d
    xor d
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    sbc c
    xor c
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    xor c
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc b
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    sbc c
    sbc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld e, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, a
    adc c
    cp h
    cp c
    ld [hl], a
    ld [hl], a
    adc c
    sbc d
    xor c
    sbc d
    xor c
    add a
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    adc c
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    dec h
    ld b, h
    ld b, l
    ld h, a
    adc e
    db $dd
    cp c
    ld [hl], a
    ld [hl], a
    sbc d
    cp d
    xor h
    xor $ca
    add [hl]
    ld b, d
    ld b, h
    ld h, a
    sbc d
    cp e
    xor b
    ld [hl], l
    ld sp, $3511
    ld h, [hl]
    ld h, h
    inc sp
    ld e, c
    rst $28
    ei
    ld [hl], h
    ld b, l
    ld a, c
    xor d
    xor d
    cp [hl]
    cp $b7
    ld b, d
    ld [de], a
    ld b, a
    sbc c
    xor e
    call z, Call_018_55a7
    ld d, l
    inc de
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, c
    cp l
    db $db
    ld [hl], h
    inc sp
    ld b, [hl]
    sbc e
    set 1, [hl]
    rst $38
    ret


    ld d, e
    ld hl, $8936
    cp h
    db $dd
    cp b
    ld d, h
    inc sp
    inc sp
    inc [hl]
    ld d, l
    ld h, a
    adc c
    cp l
    cp $a5
    ld [hl+], a
    inc [hl]
    ld a, e
    xor $dd
    xor $c8
    ld d, e
    inc hl
    ld e, b
    xor h
    call z, Call_018_65a8
    ld b, e
    ld [hl+], a
    ld [hl], e
    inc sp
    ld e, b
    xor h
    rst $38
    db $fc
    ld h, d
    ld [de], a
    ld [hl], $9b
    sbc $ff
    jp c, Jump_018_5575

    ld h, [hl]
    rst $00
    ld a, b
    sbc c
    ld [hl], h
    stop
    ld [bc], a
    ld l, h
    rst $38
    rst $38
    and [hl]
    db $10
    ld h, $9a
    cp h
    xor $ca
    sbc b
    db $76
    ld b, e
    ld b, l
    ld h, a
    db $76
    jr nc, jr_018_4d19

jr_018_4d19:
    dec b
    rst $08
    rst $38
    rst $10
    jr nc, @+$17

    xor l
    dec bc
    cp h
    cp c
    sbc d
    xor c
    add a
    ld [hl], l
    jr nc, jr_018_4d29

jr_018_4d29:
    nop
    nop
    ld a, [hl-]
    rst $38
    rst $38
    ld hl, sp+$20
    ld [hl], c
    ld e, c
    call $efdd
    rst $38
    db $ec
    add l
    jr nz, jr_018_4d3a

jr_018_4d3a:
    nop
    ld bc, $ff6c
    rst $38
    ret


    ld b, $42
    inc h
    ld b, h
    adc a
    rst $38
    rst $38
    call nz, RST_00
    nop
    ld e, h
    rst $38
    rst $38
    rst $38
    push de
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    and h
    nop
    nop
    ld bc, $7b35
    rst $38
    rst $38
    sub $00
    add b
    ld b, $88
    adc e
    rst $28
    rst $38
    rst $38
    db $db
    add c
    nop
    inc bc
    ld a, h
    xor $ef
    cp $cb
    push bc
    nop
    ld bc, $8d35
    rst $38
    rst $38
    ld a, [$0060]
    nop
    ld bc, $af35
    rst $38
    rst $38
    ld b, $10
    inc d
    ld [hl], a
    adc e
    rst $38
    rst $38
    ei
    stop
    nop
    adc a
    rst $38
    rst $38
    rst $38
    call nz, Call_000_0070
    ld b, $ef
    rst $38
    add d
    add hl, hl
    rst $38
    ld sp, hl
    nop
    nop
    ld d, $bd
    call c, $99ba
    inc b
    ld b, h
    ld e, d
    rst $38
    cp $a4
    nop
    nop
    nop
    ld e, d
    rst $28
    rst $38
    rst $38
    ld sp, hl
    jr nz, jr_018_4db0

jr_018_4db0:
    and b
    inc de
    ld b, a
    adc c
    rst $38
    rst $38
    ld hl, sp+$00
    inc h
    jr nz, jr_018_4dbb

jr_018_4dbb:
    ld bc, $bf14
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    nop
    ld [bc], a
    add hl, sp
    rst $38
    rst $38
    cp $30
    nop
    nop
    nop
    inc b
    xor a
    rst $38
    adc a
    ld hl, sp+$00
    nop
    nop
    inc b
    ld a, c
    cp a
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld [bc], a
    ld d, a
    ld c, $ff
    rst $38
    rst $38
    sub h
    ld sp, $0000
    nop
    rlca
    rst $38
    rst $38
    rst $38
    call nz, RST_00
    nop
    ld [bc], a
    rst $08
    rst $38
    rst $38
    db $fd
    ld b, b
    nop
    nop
    nop
    nop
    sbc a
    rst $38
    rst $38
    ei
    stop
    nop
    nop
    rlca
    rst $18
    rst $38
    rst $38
    db $e4
    nop
    ld [bc], a
    ld sp, $0700
    rst $28
    rst $38
    ld sp, hl
    ld d, b
    nop
    ld b, a
    rst $08
    cp $ff
    rst $38
    db $fc
    ld b, b
    nop
    inc b
    xor [hl]
    rst $38
    rst $38
    rst $38
    cp $e0
    nop
    nop
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    ld a, [c]
    nop
    nop
    inc bc
    rst $08
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    adc a
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
    nop
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    nop
    nop
    nop
    xor a
    rst $38
    rst $38
    rst $38
    ld a, [$0000]
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    or b
    nop
    nop
    nop
    ld e, l
    rst $38
    rst $38
    rst $38
    db $fd
    stop
    nop
    scf
    sbc a
    rst $38
    rst $38
    rst $38
    ret nc

    nop
    nop
    ld b, $bc
    ld l, a
    rst $38
    rst $38
    rst $38
    ld h, b
    nop
    nop
    ld c, e
    rst $38
    cp $ff
    rst $38
    rst $38
    ld h, b
    nop
    nop
    ld a, [bc]
    sub [hl]
    ld b, l
    xor a
    rst $38
    rst $38
    ld [hl], b
    nop
    nop
    ld [hl-], a
    db $10
    ld bc, $ff9e
    rst $38
    ld a, [$00f0]
    nop
    nop
    dec b
    rst $18
    rst $38
    rst $38
    rst $38
    and d
    nop
    nop
    nop
    add hl, sp
    rst $18
    rst $38
    ld l, $ed
    cp d
    xor d
    add e
    nop
    inc bc
    adc h
    rst $28
    rst $38
    db $fc
    ld [hl], d
    dec d
    xor [hl]
    ld [$0364], a
    ld a, d
    rst $38
    rst $38
    ret c

    ld a, b
    xor d
    ld d, b
    nop
    ld bc, $ffaf
    rst $38
    db $fd
    and a
    ld d, c
    or b
    nop
    nop
    ld e, e
    rst $38
    rst $38
    rst $38
    ld a, [$0010]
    nop
    inc bc
    ld a, l
    rst $38
    rst $38
    rst $38
    pop af
    nop
    nop
    nop
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    db $fc
    ld d, b
    nop
    nop
    inc bc
    adc e
    rst $38
    rst $38
    rst $38
    jp RST_00


    nop
    ld c, c
    rst $18
    rst $38
    rst $38
    db $fd
    ld [hl], c
    nop
    inc b
    ld a, c
    cp h
    cp h
    ld a, a
    rst $38
    ret c

    jr nz, jr_018_4ef5

jr_018_4ef5:
    ld c, c
    xor c
    adc b
    sbc e
    cp e
    call c, Call_000_0096
    inc b
    xor a
    db $fc
    add [hl]
    adc h
    rst $18
    db $eb
    add h
    nop
    inc bc
    cp a
    cp $84
    inc [hl]
    adc l
    cp $b6
    jr nz, @+$06

    ld c, c
    adc d
    cp h
    sbc $db
    xor c
    ld h, h
    jr nz, jr_018_4f1e

    sbc e
    jp z, $ce89

    rst $38

jr_018_4f1e:
    cp c
    ld [hl], l
    sub h
    ld b, e
    ld b, l
    ld d, h
    ld d, a
    sbc e
    db $dd
    jp z, Jump_000_1085

    inc d
    ld l, d
    db $db
    sbc c
    sbc c
    sbc c
    ld hl, sp+$64
    inc sp
    ld b, a
    cp [hl]
    xor $da
    xor d
    ld [hl], a
    adc b
    db $76
    ld [hl-], a
    inc sp
    ld l, d
    rst $08
    rst $38
    sbc e
    sub [hl]
    ld b, e
    ld sp, $5635
    sbc e
    call Call_018_77c9
    ld h, l
    ld [hl-], a
    ld [hl], $88
    adc c
    sbc c
    xor b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    adc d
    cp h
    res 0, l
    ld [hl-], a
    inc [hl]
    ld b, l
    ld l, b
    cp [hl]
    rst $38
    db $fd
    rst $30
    ld b, c
    nop
    nop
    dec h
    adc h
    rst $38
    rst $38
    rst $38
    or a
    jr nc, jr_018_4f6c

jr_018_4f6c:
    nop
    ld h, $bf
    rst $38
    cp a
    db $fd
    ld [hl], d
    nop
    nop
    nop
    ld h, $ae
    rst $38
    rst $38
    ld a, [$0030]
    nop
    ld [bc], a
    ld b, a
    xor [hl]
    rst $38
    cp $a5
    db $10
    inc de
    ld h, a
    adc b
    adc c
    xor h
    db $dd
    jp z, Jump_000_2174

    ld [hl], $9a
    ld a, d
    cp h
    res 3, b
    ld [hl], l
    ld b, e
    inc [hl]
    ld h, a
    sbc e
    cp h
    cp d
    add a
    ld [hl], a
    ld h, l
    ld b, e
    ld b, [hl]
    ld c, b
    adc c
    xor d
    sbc b
    ld [hl], a
    ld [hl], a
    ld d, e
    inc h
    ld a, d
    call z, $98ba
    add a
    ld h, [hl]
    ld d, l
    ld b, e
    ld [hl], $9c
    db $dd
    db $db
    sub a
    ld h, l
    ld b, l
    ld d, l
    ld b, l
    ld a, c
    adc $ed
    cp c
    db $76
    ld h, [hl]
    ld d, h
    ld [hl], d
    inc h
    ld a, d
    rst $18
    db $fd
    xor b
    db $76
    ld [hl], a
    ld h, l
    ld [hl-], a
    dec [hl]
    adc d
    cp h
    call c, Call_018_77b9
    and a
    ld h, l
    ld sp, $8a36
    call z, $aacc
    add [hl]
    ld d, l
    ld b, e
    inc sp
    ld b, a
    sbc e
    call z, $a9ba
    add a
    ld h, [hl]
    ld d, h
    ld d, l
    ld l, b
    xor e
    cp d
    add a
    ld [hl], a
    add a
    ld [hl], l
    ld b, l
    ld l, b
    xor d
    cp e
    cp c
    db $76
    ld d, h
    ld b, l
    ld h, [hl]
    ld [hl], a
    sbc d
    cp e
    cp d
    sub a
    ld h, l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    ld a, e
    cp d
    sbc b
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    xor e
    cp d
    sbc b
    add a
    db $76
    ld d, l
    ld h, a
    ld [hl], a
    cp c
    xor e
    cp d
    db $76
    ld d, [hl]
    ld h, a
    ld a, b
    sbc b
    add a
    ld h, a
    sbc c
    xor c
    ld [hl], l
    ld d, [hl]
    ld l, b
    sbc e
    xor d
    add [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, c
    xor e
    cp d
    sub a
    ld d, h
    ld b, h
    ld d, l
    ld a, b
    xor d
    adc d
    xor d
    sbc b
    ld [hl], l
    ld b, e
    ld b, [hl]
    ld [hl], a
    ld a, b
    sbc e
    cp e
    xor b
    add a
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld l, d
    sbc $ec
    sub a
    ld b, e
    ld b, h
    ld h, [hl]
    ld [hl], a
    adc c
    xor d
    cp e
    cp d
    add [hl]
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, c
    sbc d
    cp h
    cp d
    ld [hl], h
    ld b, e
    ld b, h
    ld d, a
    ld a, b
    sbc c
    xor e
    cp e
    and a
    ld d, h
    ld b, l
    ld [hl], a
    adc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    adc c
    xor c
    add a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    adc c
    sbc c
    adc c
    adc b
    ld [hl], l
    ld d, [hl]
    ld l, b
    adc b
    adc c
    sbc b
    adc b
    sbc c
    add [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc b
    ld a, b
    adc b
    add a
    ld [hl], l
    ld d, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, a
    adc c
    sbc d
    sbc c
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor c
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    sbc d
    xor c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    adc d
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    sbc d
    xor d
    add a
    ld h, [hl]
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    adc b
    add a
    db $76
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc c
    xor c
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    add a
    sub l
    ld d, l
    ld h, a
    adc b
    adc b
    adc c
    sbc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld a, b
    sbc b
    add a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    sbc c
    adc b
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, b
    adc b
    sbc c
    sbc c
    adc b
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld l, b
    ld a, d
    xor e
    cp d
    db $76
    ld h, [hl]
    ld d, [hl]
    ld a, b
    add a
    adc b

jr_018_5319:
    ld h, h
    ld b, h
    inc [hl]
    ld h, a
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add e
    inc de
    ld a, d
    cp e
    adc $c8
    ld d, l
    ld b, e
    ld b, [hl]
    add a
    adc c
    sub [hl]
    ld b, h
    ld sp, $7825
    ld a, d
    xor c
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a

Jump_018_5376:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    jr z, jr_018_5319

    ld h, e
    inc de
    ld a, d
    cp h
    rst $28
    ret z

    ld h, [hl]
    ld b, e
    ld b, [hl]
    ld [hl], a
    sbc d
    add [hl]
    ld d, h
    ld hl, $6764
    sbc d
    xor d
    sbc b
    db $76
    ld a, b
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a

Call_018_53b8:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a

Call_018_53c8:
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld l, b
    adc b
    adc b
    add a
    ld b, c
    dec d
    adc d
    cp l
    rst $38
    cp b
    ld [hl], l
    inc hl
    ld d, [hl]
    ld l, b
    cp d
    add [hl]
    add e
    nop
    inc h
    ld e, b
    xor e
    xor d
    xor b
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    adc c
    sbc b
    add a
    db $76
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    sub [hl]
    ld h, [hl]
    ld a, b
    adc b
    adc b
    ld [hl], h
    inc hl
    ld l, b
    sbc d
    rst $18
    jp c, Jump_018_4297

    ld b, l
    ld d, [hl]
    xor e
    ld a, b
    ld [hl], l
    ld hl, $4623
    sbc d
    cp e
    cp c
    db $76
    ld h, [hl]
    ld a, b
    xor d
    xor c
    add a
    ld h, l
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc c
    add a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    ld [hl], l
    inc sp
    ld l, c
    cp d
    call Call_018_77c9
    ld h, l
    ld h, a
    ld [hl], a
    ld a, c
    add a
    ld h, l
    ld b, e
    dec [hl]
    ld [hl], a
    adc c
    sbc b
    adc b
    add a
    adc b
    adc c
    sbc d
    sub a
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    adc b
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc b
    ld h, h
    inc hl
    ld a, e
    db $dd
    db $dd
    and a
    ld d, l
    ld d, [hl]
    ld l, c
    adc b
    sbc b
    ld h, h
    ld b, h
    inc [hl]
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    db $76
    db $76
    ld h, a
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    add a
    ld [hl], a
    db $76
    ld h, a
    adc c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    jr z, jr_018_5549

    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    ld h, e
    ld [bc], a
    adc [hl]
    db $fd
    db $dd
    add e
    sub h
    ld h, a
    cp h
    xor b
    add [hl]
    ld [hl-], a
    ld b, h
    ld b, [hl]
    sbc c
    adc b
    add [hl]
    ld h, a
    ld [hl], a
    adc d
    xor c
    xor d
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    sbc b
    db $76
    ld d, l
    ld d, l
    ld a, b
    sbc c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld hl, sp+$77
    add a
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    adc b
    add a
    db $76
    jr nz, jr_018_5537

    rst $38
    adc [hl]
    or l
    nop
    ld b, a
    sbc [hl]
    db $fc
    ld [hl], h
    inc sp
    ld [hl], $77
    ld h, a
    db $76
    ld h, a
    add a
    adc c
    add a
    ld a, d
    xor c
    sbc b
    ld h, l
    ld d, l
    ld a, c
    xor d

jr_018_5537:
    sbc b
    ld [hl], l
    ld d, l
    ld d, [hl]
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a

jr_018_5549:
    ld a, b
    sbc c
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub h
    ld b, a
    cp a
    ei
    ld h, e
    ld [hl+], a
    ld l, e
    call c, $30a7
    ld d, $9b
    xor b
    ld d, d
    dec [hl]
    ld a, b
    xor c
    add a
    adc c
    xor d
    sbc b

Jump_018_5575:
    ld [hl], l
    ld b, l
    ld a, c
    xor c
    adc b
    ld [hl], l
    ld d, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld a, d
    sub a
    ld h, l
    ld d, [hl]
    adc c
    xor c
    sbc b
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    sbc b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    db $76
    ld h, a
    ld [hl], a
    adc b
    add a
    ld h, l
    ld d, [hl]
    ld a, b
    add hl, sp
    add [hl]
    ld h, a
    ld h, [hl]
    ld h, l
    ld l, c
    rst $08

Call_018_55a7:
    add $24
    ld a, b
    xor e
    sub l
    inc sp
    ld d, [hl]
    adc e
    and [hl]
    add d
    inc hl
    ld l, b
    xor d
    sbc b
    ld [hl], a
    adc c
    sbc b
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    add a
    ld h, l
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sub a
    ld h, [hl]
    ld d, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    adc b
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc c
    adc b
    db $76
    ld h, a
    adc b
    adc b
    adc b
    db $76
    ld h, a
    ld a, b
    sbc b
    db $76
    add l
    ld h, a
    adc b
    add a
    db $76
    ld h, a
    ld a, b
    sbc c
    ld [hl], h
    inc hl
    ld a, h
    db $fc
    db $76
    db $76
    ld d, a
    sbc c
    db $76
    ld h, [hl]
    ld d, l
    ld a, b
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    adc b
    add a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, c
    sbc b
    db $76
    ld [hl], l
    ld d, a
    sbc c
    sbc b
    db $76
    ld d, [hl]
    ld a, b
    sbc d
    sbc b
    db $76
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $00
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
    xor h
    ld a, b
    ld h, l
    ld d, l
    ld l, b
    sbc b
    ld [hl], a

Jump_018_5636:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld l, b
    sbc c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    db $76
    ld d, l
    ld h, a
    sbc d
    sbc b
    add [hl]
    ld d, l
    ld h, a
    adc b
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    add a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sub a
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld l, b
    sbc b
    add a
    ld h, h
    ld d, [hl]
    adc b
    ld l, c
    add a
    ld [hl], a
    ld [hl], a
    db $76

Jump_018_5675:
    ld h, a
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    db $76
    ld d, l
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    add a
    db $76
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b

Call_018_56a7:
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld h, a
    ld a, b
    adc b
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Jump_018_5776:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Call_018_5785:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b

Call_018_5796:
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b

Jump_018_5854:
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Call_018_5875:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a

Call_018_58b7:
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    and a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    ld a, c
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc d
    xor c
    adc b
    add a
    ld a, b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    add a
    ld l, b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    xor d
    sbc c
    xor b
    ld [hl], a
    adc b
    add a
    db $76
    add [hl]
    ld h, a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    sbc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b

Jump_018_5974:
    ld [hl], a

Jump_018_5975:
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b

Jump_018_5984:
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld h, a
    add a
    adc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], l
    sbc h
    ld [hl], a
    and a
    ld e, b
    db $76
    db $76
    ld l, b
    ld [hl], l
    sbc c
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    adc b
    ld a, c
    add a
    add h
    inc l
    ld [c], a
    ld l, l
    ld h, l
    cp b
    ld e, b
    db $76
    add [hl]
    ld l, c
    adc b
    adc b
    adc c
    sbc b
    db $76
    ld [hl], a
    ld a, b
    adc b
    sbc b
    ld [hl], e
    ld a, [hl+]
    ld hl, sp+$4b
    or [hl]
    sbc d
    and [hl]
    ld [hl], a
    db $76
    ld l, c
    sub a
    adc b
    ld a, c
    and a
    ld b, l
    ld h, a
    adc c
    sub a
    ld h, l
    inc hl
    xor a
    and [hl]
    ld c, d
    ld a, c
    sub l
    ld b, l
    ld h, a
    ld l, b
    bit 5, b
    and a
    adc e
    ld [hl], d
    scf
    ld a, b
    sbc c
    db $76
    ld d, d
    adc e
    jp hl


    adc e
    ld [hl], a
    cp b
    dec [hl]
    ld h, [hl]
    sub a
    ld l, l
    push de
    ld l, h
    add a
    and a
    inc h
    ld a, b
    adc c
    ld h, [hl]
    ld d, e
    daa
    reti


    ld a, l
    call nz, Call_018_407c
    ld h, [hl]
    ld e, b
    adc b
    db $db
    ld d, a
    and a
    ld a, b
    ld b, e
    ld a, b
    ld a, b
    add a
    ld d, e
    rla
    db $fd
    ld c, e
    di
    ld c, [hl]
    ld [hl], b
    ld d, a
    ld e, b
    sbc c
    db $ec
    ld [hl], a
    xor b
    ld h, a
    ld b, h
    ld l, b
    ld a, b
    sub a
    ld sp, $f81b
    cpl
    pop hl
    ld a, [hl]
    jr nc, jr_018_5b54

    ld l, c
    xor e
    reti


    ret z

    sbc b
    ld [hl], l
    dec h
    add a
    ld a, c
    add l
    jr nz, jr_018_5b68

    db $e4
    xor a
    ld [hl], h
    cp b
    inc b
    add a
    adc d
    adc l
    and [hl]
    ld a, b
    ld [hl], a
    ld d, c
    ld c, b
    add [hl]
    adc b
    ld d, d
    rlca
    db $fd
    scf
    rst $20
    ld c, c
    ld [hl], d
    ld b, a
    ld e, c
    sbc h
    add sp, $59
    add l
    add a
    inc de
    sbc c
    adc e
    and [hl]
    ld sp, $d64c
    ld l, e
    sub a
    sbc b
    sub l
    ld h, a

Call_018_5b12:
    add a
    sbc l
    add e
    adc d
    ld l, b
    sub h
    ld b, a
    ld a, b
    cp d
    adc b
    add [hl]
    ld b, a
    xor c
    ld l, c
    ld d, a
    sbc d
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    and a
    ld l, c
    ld [hl], a
    sbc b
    ld l, b
    add a
    adc b
    adc c
    add a
    add h
    ld a, e
    and [hl]
    sbc d
    ld a, c
    sub [hl]
    adc b
    ld e, b
    sub [hl]
    ld a, c
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc c
    add a
    sub a
    adc c
    ld d, [hl]
    cp b
    ld c, b
    add [hl]
    adc c
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a

jr_018_5b54:
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b

jr_018_5b68:
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    db $76
    ld a, d
    adc b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    db $76
    ld a, b
    ld h, [hl]
    sbc c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld d, a
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    adc b
    add a
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    db $76
    add l
    xor h
    ld [hl], a
    cp b
    ld a, d
    ld h, e
    ld a, b
    ld a, c
    adc b
    xor d
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    sbc c
    adc c
    add [hl]
    ld h, d
    inc e
    pop hl
    ld e, [hl]
    ld [hl], l
    or l
    rla
    ld [hl], a
    xor c
    sbc h
    and a
    db $76

Call_018_5bdd:
    ld a, b
    ld d, h
    ld a, b
    ld e, d
    xor b
    ld h, c
    inc b
    cp $49
    ld hl, sp+$7a
    ld d, d
    ld [hl], a
    ld a, c
    sbc e
    ret z

    ld h, [hl]
    ld l, b
    ld [hl], h
    ld a, c
    sbc e
    cp b
    ld b, c
    ld bc, $96cf
    call z, Call_018_6278
    ld b, a

jr_018_5bfb:
    adc c
    xor h
    ld [$7777], a
    ld [hl], e
    daa
    sbc d
    jp z, Jump_000_0073

    ld a, a
    and $9c
    xor c
    add h
    dec [hl]
    ld a, c
    xor d
    db $dd
    db $76
    rst $00
    add h
    dec b
    xor d
    xor d
    sub a
    jr nz, jr_018_5c45

    ld sp, hl
    ld a, d
    sub a
    add h
    inc d
    ld l, b
    cp d
    xor a
    sub l
    ld e, b
    add [hl]
    db $10
    adc e
    sbc c
    xor c
    ld b, b
    inc c
    ld sp, hl
    ld a, e
    sbc b
    and a
    inc d
    add a
    cp h
    cp h
    or $27
    and [hl]
    jr nz, jr_018_5c81

    cp c
    sbc c
    ld d, b
    ld a, [bc]
    ld hl, sp+$7c
    add [hl]
    and a
    inc b
    sbc b
    sbc [hl]
    xor h
    rst $30
    rla
    and [hl]

jr_018_5c45:
    ld sp, $b75b
    db $76
    jr nz, jr_018_5cca

    or l
    xor h
    ld d, a
    and c
    ld [$fd69], sp
    xor a
    jp nz, $8329

    inc de
    adc e
    add [hl]
    ld h, e
    dec b
    db $eb
    ld e, d
    ld hl, sp+$5a
    ld d, b
    dec bc
    sbc h
    db $fd
    db $dd
    ld d, d
    ld a, b
    ld sp, $b849
    ld h, l
    jr nz, jr_018_5bfb

    or h
    cp a
    ld [hl], l
    and e
    rlca
    jp z, $cddf

    call nz, $7326
    inc d
    xor e
    ld [hl], h
    ld b, b
    inc e
    ld hl, sp+$4d
    call nz, Call_018_4088

jr_018_5c81:
    xor e
    cp a
    call c, Call_018_44ea
    ld h, l
    ld de, $a66b
    ld [hl-], a
    inc bc
    rst $38
    ld h, a
    ld hl, sp+$5b
    and b
    ld c, h
    xor l
    ei
    call z, Call_018_6674
    ld d, e
    add hl, sp
    cp b
    ld d, h
    ld hl, $b67e
    cp l
    ld [hl], a
    ld [hl], d
    rlca
    xor c
    cp d
    xor h
    sub [hl]
    ld h, [hl]
    ld h, a
    ld d, l
    adc e
    xor c
    ld [hl], l
    dec [hl]
    cp e
    ld d, [hl]
    jp z, $7479

    ld l, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    ld h, a
    ld [hl], a
    sub a
    ld a, c
    sub a
    ld h, a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b

jr_018_5cca:
    ld [hl], h
    ld e, c
    sub a
    adc b
    ld a, c
    add a
    ld d, a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    add [hl]
    ld a, d
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    adc b
    adc c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld d, a
    sbc c
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    add [hl]
    ld d, [hl]
    adc d
    ld [hl], a
    adc c
    add a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    add [hl]
    ld d, a
    add a
    ld a, b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld h, [hl]
    adc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld h, l
    adc d
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld h, l
    adc d
    add a
    adc b
    adc b
    ld a, b
    add a
    add l
    ld a, [hl-]
    add $7a
    ld [hl], a
    sub a
    ld h, a
    ld [hl], a
    adc b
    adc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    sub a
    ld h, a
    inc sp
    adc $67
    or a
    ld l, b
    ld h, l
    ld [hl], a
    adc b
    sbc d
    xor b
    ld [hl], a
    ld l, b
    ld h, [hl]
    ld a, b
    ld a, b
    adc b
    xor b
    ld h, [hl]
    ld sp, $c98f
    xor d
    sub a
    ld d, l
    ld h, l
    ld a, d
    sbc c
    ret


    or a
    ld [hl], h
    adc c
    ld h, [hl]
    sbc b
    adc b
    sbc d
    add h
    jr nz, jr_018_5e06

    ret z

    bit 7, c
    ld [hl], d
    ld d, a
    ld c, b
    add hl, hl
    cp [hl]
    ld [hl], e
    db $76
    ld e, c
    add l
    ld a, c
    sbc c
    sbc b
    ld d, d
    nop
    ld e, a
    reti


    db $ed
    ld l, b
    ld [hl], b
    ld c, b
    ld c, b
    ei
    rst $08
    ld [hl], e
    db $76
    ld l, c
    add l
    ld l, c
    cp d
    sbc c
    ld d, c
    nop
    ld e, a
    push af
    rst $18
    add a
    sub b
    ld [$fd68], sp
    sbc $74
    ld d, l
    ld l, b
    db $76
    adc e
    cp c
    add a
    jr nc, jr_018_5dff

jr_018_5dff:
    rst $28
    add hl, hl
    ld sp, hl
    add hl, de
    ld h, b
    ld c, c
    ld a, h

jr_018_5e06:
    db $fd
    db $eb
    ld b, e
    ld b, h
    ld [hl], a
    ld d, a
    db $db
    adc b
    ld [hl], d
    nop
    rrca
    or $7f
    jp Jump_000_0376


    adc b
    rst $08
    rst $28
    or e
    inc sp
    ld [hl], $74
    adc a
    ret z

    and a
    ld [hl], b
    inc bc
    rst $38
    ld a, d
    ld a, [$5047]
    scf
    sbc [hl]
    rst $38

jr_018_5e2a:
    ld a, [$5423]
    ld h, [hl]
    jr c, jr_018_5e2a

    ret


    ld h, b
    nop
    xor a
    ret z

    db $dd
    ld h, a
    ld [hl], c
    ld d, $7b
    rst $38
    db $fd
    ld b, c
    ld d, l
    ld b, [hl]
    inc [hl]
    ld c, [hl]
    ld [hl], a
    add d
    nop
    ld a, a
    ret c

    cp l
    db $76
    ld [hl], d
    ld h, $7a
    rst $38
    rst $38
    ld [hl], b
    ld b, a
    ld d, l
    ld h, e
    sbc l
    sub a
    add h
    ld bc, $b89e
    call $7276
    jr jr_018_5ed4

    rst $38
    rst $18
    add b
    scf
    ld d, a
    ld h, h
    adc h
    sub a
    ld [hl], h
    inc bc
    cp [hl]
    sub a
    xor d
    ld [hl], a
    ld h, d
    ld c, b
    ld d, a
    rst $38
    cp h
    sub d
    ld e, b
    ld h, l
    ld h, l
    adc e
    add a
    add l
    inc [hl]
    sbc e
    sbc b
    xor b
    ld l, b
    ld h, h
    ld [hl], a
    ld l, d
    cp d
    xor b
    add a
    sub [hl]
    ld l, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld d, [hl]
    sbc c
    ld a, b
    adc b
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    db $76
    ld l, b
    add a
    adc b
    adc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld d, a
    xor d
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld h, l
    ld a, d
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b

jr_018_5ed4:
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld d, l
    adc d
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld b, [hl]
    and a
    ld l, c
    ld [hl], a
    sub a
    ld h, a
    ld h, [hl]
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add l
    ld e, c
    and a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    db $76
    ld a, c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    sub a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    ld a, c
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], $b9
    ld a, d
    add a
    add [hl]
    ld l, c
    ld [hl], l
    sbc b
    ld a, d
    sbc b

jr_018_5f86:
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    sub a
    add a
    ld l, b
    db $76
    sub e
    dec e
    or $8c
    ld h, [hl]
    add l
    ld l, b
    ld d, [hl]
    add a
    sbc d
    add a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    ld h, [hl]
    ld b, e
    sbc l
    xor b
    xor c
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc d
    xor c
    add [hl]
    ld e, b
    add a
    ld [hl], a
    ld a, b
    adc c
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], e
    jr z, jr_018_5f86

    xor c
    ld [hl], a
    ld [hl], l
    ld a, b
    or $87
    adc e
    xor b
    db $76
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, d
    add hl, de
    ld a, e
    adc d
    add [hl]
    db $76
    ld h, a
    ld h, l
    ld a, b
    adc d
    and a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc d
    sub a
    add a
    ld [hl], a
    db $76
    ld [hl], l
    daa
    db $ed
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    sbc e
    sub a
    db $76
    ld l, c
    db $76
    ld [hl], a
    ld a, b
    adc b
    xor b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    scf
    cp d
    sbc c
    add a
    ld [hl], a
    ld a, b
    ld h, l
    ld a, b
    ld a, d
    and a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl-], a
    cp l
    adc c
    or [hl]
    ld l, b
    ld h, a
    ld [hl], l
    ld l, b
    ld a, c
    xor b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld l, e
    ret


    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    adc c
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    ld h, a
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], l
    ld l, b
    sbc c
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    db $76
    ld d, l
    ld a, c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], l
    ld d, a
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    add a
    adc c
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], l
    ld d, a
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, a
    xor d
    adc c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    db $76
    ld h, a
    adc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b

Call_018_6278:
Jump_018_6278:
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld l, b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    adc c
    xor c
    sbc b
    adc b
    add a
    ld a, b
    sbc c
    sbc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    adc c
    xor d
    xor b
    ld [hl], a
    db $76
    ld l, b
    sbc d
    cp d
    add a
    ld [hl], a
    ld h, a
    adc b
    sbc d
    sbc c
    adc b
    adc b
    ld l, b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, l
    ld d, h
    ld d, a
    add a
    adc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    add a
    adc b
    adc c
    sbc c
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    xor b
    ld [hl], a
    ld [hl], a
    db $76
    ld b, e
    dec [hl]
    xor [hl]
    jp c, Jump_018_4475

    ld b, l
    ld l, d
    db $db
    ld [hl], e
    inc [hl]
    ld a, c
    sbc c
    add a
    ld [hl], a
    adc b
    sbc e
    db $dd
    and a
    ld a, b
    xor e
    xor b
    adc c
    xor d
    sbc c
    xor d
    cp d
    sbc c
    ld e, d
    xor c
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, e
    dec [hl]
    xor l

jr_018_639a:
    jp c, $8887

    ld d, l
    adc d
    xor b
    and e
    ld d, a
    adc c
    add a
    ld a, b
    sbc c
    sbc c
    cp h
    call c, $9a87
    xor c
    adc c
    xor e
    cp c
    sbc c
    ld e, e
    cp d
    xor e
    cp d
    cp e
    xor c
    sbc c
    adc b
    ld h, e

Call_018_63b9:
    ld hl, $bf04
    rst $38
    sub h
    ld l, d
    ld [hl], e
    cp d
    cp d
    ld [hl], d
    rla
    call Call_018_58b7
    call $beb9
    db $fd
    sbc b
    cp a
    cp $b9
    cp h
    sbc e
    cp d
    xor e
    cp e
    xor c
    sbc e
    rst $18
    reti


    adc c
    xor d
    sbc c
    sbc d
    res 3, c
    xor d
    xor d
    xor b
    ld [hl], a
    ld d, d
    ld a, [hl]
    cp $b5
    ld c, h
    db $d3
    rlca
    call c, $0482
    rst $18
    jp z, $df89

    db $76
    ld l, c
    rst $28
    cp c
    xor e
    db $ed
    xor c
    cp e
    call $bdca
    xor $b9
    adc c
    cp e
    sub a
    jr z, jr_018_639a

    sbc c
    adc c
    cp d
    adc c
    cp e
    add l
    scf
    rst $28
    db $ed
    xor b
    cp d
    ld b, l
    cp l
    or a
    jp nz, $c89d

    ld b, h
    adc l
    jp c, $cf89

    ld [$feae], a
    ret


    adc h
    db $ed
    cp e
    db $dd
    cp e
    sub a
    sbc h
    sbc c
    db $dd

jr_018_6425:
    add a
    ld h, h
    ld d, a
    db $76
    sbc h
    cp e
    adc $dc
    add [hl]
    cp a
    cp $f7
    adc h
    sub e
    add hl, sp
    db $dd
    sub h
    jr c, jr_018_6425

    add h
    ld b, a
    cp e
    ld h, h
    ld a, h
    rst $38
    cp e
    rst $18
    adc [hl]
    cp d
    call c, Call_018_77b9
    sbc c
    adc b
    sbc c
    sbc c
    xor d
    call z, Call_018_7897
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld a, b
    sbc e
    res 5, e
    call z, Call_018_64a7
    ld b, e
    ld de, $cb5b
    cp e
    cp e
    cp c

jr_018_645e:
    db $76
    adc c
    add [hl]
    ld h, a
    sbc e
    and a
    ld a, c
    cp d
    sbc b
    ld a, b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc d
    xor d
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld d, h
    ld d, a
    db $76
    ld h, [hl]
    ld h, a
    rst $00
    ld h, a
    ld h, l
    ld h, a
    sbc e
    and l
    ld [hl+], a
    dec d
    cp d
    sbc h
    reti


    ld a, b
    ld d, h
    sbc d
    ld h, [hl]
    adc d
    ld l, h
    add a
    xor d
    xor e
    add [hl]
    ld [hl], a
    ld b, [hl]
    adc b
    adc b
    db $76
    adc b
    ld [hl], a
    db $76
    ld d, [hl]
    ld d, l
    ld [hl], a
    ld d, l
    ld d, l
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld d, l

Call_018_64a7:
    ld b, l

Call_018_64a8:
    ld b, d
    inc hl
    ld b, l
    ld h, l
    ld b, h
    ld b, e
    ld b, h
    ld d, h
    ld [hl], l
    ld b, l
    adc b
    ld d, l
    ld b, c
    jr c, jr_018_645e

    ld a, b
    ld [hl], a
    sub l
    dec d
    sub l
    inc d
    ld a, c
    cp c
    ld [hl], a
    ld d, a
    ld [hl], l
    ld b, h
    ld b, e
    ld [hl+], a
    ld b, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, e
    inc sp
    ld b, h
    ld [hl-], a
    dec [hl]
    dec d
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld b, e
    ld [hl+], a
    inc hl
    ld b, h
    ld d, l
    ld h, a
    db $76
    ld h, l
    ld d, [hl]
    ld [hl], l
    ld [hl-], a
    jr nc, jr_018_64e6

    add a
    ld d, [hl]
    db $76
    add [hl]

jr_018_64e6:
    ld [de], a
    db $76
    db $10
    inc h
    ld h, a
    ld b, e
    ld a, c
    add a
    ld d, h
    ld h, l
    ld h, e
    ld h, a
    ld h, h
    ld b, l
    ld [hl], a
    ld h, l
    ld d, l
    ld d, h
    inc [hl]
    ld d, l
    ld b, d
    inc h
    ld h, a
    db $76
    ld d, l
    ld h, [hl]
    ld b, $54
    inc sp
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld a, b
    ld h, [hl]
    ld b, d
    nop
    dec b
    cp b
    ld b, l
    ld a, c
    add e
    ld b, l
    and [hl]
    ld bc, $9747
    inc sp
    ld a, b
    db $76
    ld b, h
    ld h, h
    inc h
    ld a, c
    ld [hl], l
    ld b, l
    ld h, [hl]
    ld b, d
    ld d, l
    ld b, e
    ld b, l
    ld h, a
    ld d, h
    ld b, [hl]
    ld [hl], a
    ld h, l
    ld b, h
    ld d, h
    ld b, l
    ld d, h
    ld b, h
    ld b, l
    ld d, l
    ld h, l
    or [hl]
    ld h, h
    ld [hl-], a
    nop
    ld bc, $a58d
    ld l, b
    add l
    nop
    ld c, b
    ld h, b
    ld b, $9b
    and l
    ld c, d
    ld a, b
    ld h, e
    dec h
    ld b, d
    ld b, a
    adc d
    ld [hl], h
    ld a, c
    add [hl]
    ld b, h
    ld d, h
    inc [hl]
    ld d, [hl]
    add a
    ld b, e
    ld b, a
    add $45
    ld d, l
    ld b, e
    inc sp
    ld b, e
    dec h
    sbc c
    ld h, a
    ld h, d
    ld d, a
    ld hl, $0153
    ld [hl], $cf
    add a
    ld a, b
    add a
    ld d, b
    ld [$2660], sp
    adc h
    push bc
    ld [hl], $76
    ld sp, $4424
    ld d, a
    sbc d
    add hl, sp
    xor c
    ld h, l
    ld h, l
    ld d, a
    add a
    adc c
    db $76
    ld h, [hl]
    ld d, a
    add [hl]
    ld d, [hl]
    ld d, h
    ld h, a
    ld b, e
    ld d, h
    add l
    ld [hl], l
    ld l, b
    ld h, c
    ld bc, $c87d
    ld h, [hl]
    ld a, b
    ld d, b
    ld b, $51
    inc h
    ld l, d
    ret c

    ld b, l
    adc d
    sub l
    ld [de], a
    ld b, h
    adc e
    call Call_018_77c8
    ld h, l
    ld b, e
    scf
    add a
    ld a, c
    xor d
    xor b
    ld [hl], a
    db $76
    ld b, e
    ld hl, $4435
    adc c
    sbc e
    cp d

Call_018_65a8:
    ld h, d
    ld c, e
    db $ec
    and [hl]
    ld e, d
    or h
    inc b
    sbc d
    ld [hl], l
    dec [hl]
    xor h
    ld h, b
    dec d
    xor d
    jr nc, jr_018_65ff

    adc d
    sbc c
    call z, Call_018_7687
    ld b, h
    ld d, e
    dec [hl]
    ret z

    xor e
    cp e
    cp e
    xor c
    add l
    ld [hl-], a
    inc sp
    ld [hl+], a
    ld b, [hl]

Call_018_65ca:
    ld a, b
    ld [hl], h
    ld c, d
    rst $38
    ret c

    ld l, c
    adc c
    ld hl, $947b
    ld [hl], $bf
    add $48
    cp c
    ld d, d
    inc d
    ld h, [hl]
    ld l, b
    xor l
    db $ec
    cp e
    ld h, [hl]

jr_018_65e1:
    ld d, d
    inc d
    ld d, l
    ld a, c
    sbc d
    cp e
    xor e
    xor b
    ld h, e
    ld de, $2422
    ld l, b
    xor e
    xor b
    ld [hl], l
    xor a
    add sp, $66
    ld a, d
    add d
    ld e, l
    rst $10
    ld b, l
    adc h
    ld a, [$be34]
    sub e
    nop

jr_018_65ff:
    ld b, [hl]
    jr z, jr_018_65e1

    db $eb
    cp d
    ld d, h
    ld d, d
    ld d, $97
    adc e
    xor c
    call $cabc
    ld [hl], a
    ld d, e
    ld [hl-], a
    and h
    ld a, b
    xor h
    db $dd
    rst $38
    and h
    daa
    db $dd
    add h
    ld e, c
    call c, $bf64
    and e
    ld h, $bf
    jp $b949


    ld d, b
    rla
    ld [hl], a
    xor [hl]
    rst $38
    jp z, Jump_000_1274

    dec [hl]
    adc c
    xor e
    call c, $89bd
    sbc d
    add l
    ld b, d
    inc de
    ld d, a
    sbc e
    set 3, [hl]
    db $dd
    ret c

    dec [hl]
    cp a
    jp hl


    ld a, b
    cp l
    ld b, d
    ld l, l
    or [hl]
    ld b, h
    sbc l
    or [hl]
    inc sp
    ld l, b
    ld h, d
    dec d
    sbc d
    sbc h
    rst $28
    ret c

    ld a, d
    cp b
    add d
    ld [hl], $78
    sbc e
    rst $28
    db $ed
    xor c
    xor c
    ld h, e
    inc [hl]
    ld b, l
    ld l, b
    cp [hl]
    db $fc
    rst $18
    reti


    add l
    nop
    ld l, h
    db $ec
    xor d
    call c, Call_000_2871
    or [hl]
    ld de, $a659
    ld de, $a759
    ld d, [hl]
    ld l, b
    sbc d
    adc $c8

Call_018_6674:
    ld a, b
    xor e
    add [hl]
    ld l, b
    sbc c
    adc b
    xor e
    cp c
    ld [hl], a
    sbc d
    sub a
    ld h, [hl]
    add $56
    ld a, b
    sbc c
    sbc d
    cp e
    sub a
    ld h, [hl]
    ld [hl], l
    ld b, e
    ld b, a
    cp h
    sbc b
    ld [hl], e
    inc bc
    ld d, a
    cp h
    ld h, l
    add a
    inc sp
    ld b, a
    sbc c
    ld a, b
    cp h
    jp z, $7876

    ld [hl], h
    inc sp
    ld d, [hl]
    ld l, b
    cp h
    ld l, d
    xor d
    xor c
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, a
    adc c
    sbc b
    adc c
    xor c
    add [hl]
    ld d, l
    ld b, h
    ld d, l
    ld d, l
    dec h
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, e
    ld [hl+], a
    dec h
    add a
    ld l, b
    ld [hl], e
    inc h
    ld a, e
    reti


    ld d, [hl]
    ld [hl], h
    ld [hl], e
    ld b, l
    ld [hl], a
    ld l, c
    call $87ca
    sbc b

Call_018_66c8:
    ld h, h
    inc [hl]
    ld d, [hl]

jr_018_66cb:
    ld a, d
    cp e
    cp e
    cp e
    sbc b
    sub l
    inc [hl]
    ld b, e
    ld b, [hl]
    ld a, b
    adc b
    adc c
    add a
    ld d, h
    ld [hl-], a
    ld [hl+], a
    inc sp
    ld b, h
    ld h, a
    sbc d
    xor c
    xor d
    sbc b
    ld [hl], l
    stop
    dec b
    xor l
    call c, $a6bb
    ld b, l
    ld d, e
    ld de, $9a36
    sbc d
    ld l, e
    cp c
    ld [hl], l
    ld b, e
    inc hl
    ld d, [hl]
    ld [hl], a
    ld a, b
    cp e
    xor c
    add a
    ld d, h
    inc sp
    inc hl
    inc [hl]
    ld b, l
    cp b
    add a
    ld h, [hl]
    ld h, l
    ld b, h
    ld [hl-], a
    ld [hl+], a
    dec [hl]
    ld [hl], a
    ld a, b
    db $76
    ld h, h
    stop
    jr c, jr_018_66cb

    ld a, d
    sbc b
    ld d, e
    dec [hl]
    ld h, l
    ld b, h
    ld l, b
    sbc b
    db $76
    ld h, [hl]
    ld d, h
    inc sp
    inc sp
    dec [hl]
    ld a, b
    adc b
    ld l, b
    db $76
    ld d, h
    inc sp
    ld b, h
    ld b, h
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld d, h
    ld b, e
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld d, a
    sub a
    add a
    db $76
    ld [hl-], a
    ld b, h
    jr nz, @+$04

    ld c, c
    xor $b8
    ld [hl], a
    ld b, c
    ld [bc], a
    ld d, l
    ld hl, $a848
    ld h, e
    dec [hl]
    ld d, h
    ld hl, $4623
    adc d
    res 3, b
    adc c
    add [hl]
    inc sp
    ld b, h
    ld d, [hl]
    ld h, a
    sbc d
    ld [hl], l
    ld h, l
    ld b, e
    db $10
    inc hl
    dec [hl]
    ld a, b
    adc c
    sbc c
    adc b
    ld d, d
    ld bc, $b76b
    ld h, a
    ld a, d
    ld h, b
    dec sp
    sub d
    ld bc, $b76b
    inc [hl]
    ld a, d
    and [hl]
    ld b, e
    inc [hl]
    ld e, b
    adc $ca
    sbc b
    and a
    ld d, e
    ld b, e
    ld [hl], $75
    ld l, c
    sbc b
    add a
    ld h, [hl]
    ld d, d
    ld de, $4701
    adc c
    xor h
    call c, $2367
    xor h
    ld [hl], h
    ld b, h
    adc e
    ld d, b
    ld l, h
    ld [hl], d
    inc sp
    ld l, h
    and e
    dec h
    ld a, b
    ld [hl], d
    scf
    inc [hl]
    ld l, d
    rst $28
    or [hl]
    ld d, a
    ld [hl], h
    ld [hl-], a
    dec [hl]
    ld h, a
    adc c
    xor e
    cp d
    sbc b
    adc b
    ld h, h
    ld [hl+], a
    sub e
    ld b, l
    ld l, b
    sbc d
    sbc c
    add l
    ld [hl], $bd
    and [hl]
    ld d, a
    xor c
    ld b, c
    adc h
    ld h, c
    dec h
    xor l
    jp Jump_018_5636


    ld h, d
    dec h
    ld d, d
    ld e, d
    call Call_018_66c8
    ld b, d
    ld hl, $5613
    xor e
    cp h
    ld l, c
    adc d
    db $76
    ld h, e
    inc bc
    ld b, e
    ld l, b
    ld a, c
    call c, Call_018_4497
    cp [hl]
    add l
    ld [hl], a
    adc h
    ld [hl], b
    dec e
    ld [hl], c
    ld d, l
    ld l, h
    call nz, $7537
    ld b, d
    inc bc
    ld [hl], l
    ld c, c
    rst $28
    reti


    ld h, a
    ld [hl], e
    db $10
    ld h, d
    ld b, [hl]
    ld a, b
    xor l
    jp c, $979a

    ld [hl], l
    ld [hl+], a
    ld b, h
    ld b, a
    sbc d
    sub a
    ld b, e
    adc [hl]
    jp hl


    ld h, [hl]
    ld a, d
    add b
    add hl, bc
    or h
    dec h
    ld a, e
    ld a, [$9735]
    ld h, h
    ld [bc], a
    ld h, l
    scf
    rst $08
    ld a, [$a9c7]
    ld [hl], e
    ld bc, $2421
    ld l, d
    call z, $cbbb
    add [hl]
    ld d, c
    ld bc, $5734
    sbc e
    ld e, l
    db $dd
    db $db
    ld [hl], l
    ld hl, $be27
    jp z, Jump_018_75ba

    dec [hl]
    db $76
    db $10
    dec h
    ld h, a
    ld d, h
    db $76
    adc b
    adc b
    add a
    ld [hl], a
    sbc e
    ret


    db $76
    ld a, c
    sub a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    sub a
    ld h, [hl]
    ld e, b
    add [hl]
    ld d, l
    ld h, a
    ld [hl], a
    adc b
    sbc c
    adc c
    xor d
    sbc b
    add a
    ld [hl], a
    ld [hl], l
    ld a, b
    adc c
    add [hl]
    ld h, h
    ld hl, $ab37
    sbc b
    ld a, b
    add l
    dec h
    xor c
    ld d, l
    adc d
    xor d
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    xor l
    db $db
    cp e
    cp d
    sbc b
    ld [hl], a
    ld [hl], l
    ld h, a
    adc c
    sbc d
    sbc d
    cp e
    xor c
    add a
    db $76
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor c
    sbc b
    ld [hl], a
    db $76
    ld d, h
    ld b, l
    ld a, c
    sbc c
    sbc b
    ld h, l
    xor d
    cp h
    sub [hl]
    ld a, b
    ld d, e

Jump_018_6875:
    ld d, a
    ld [hl], a
    ld h, [hl]
    sbc e
    cp d
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld l, e
    cp e
    xor d
    xor c
    sub a
    ld h, [hl]
    ld d, l
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc b
    db $76
    ld h, l
    ld d, [hl]
    add [hl]
    ld h, a
    ld a, b
    sbc d
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld d, h
    ld l, b
    db $76
    ld [hl], a
    ld b, h
    adc e
    res 5, c
    cp b
    ld h, e
    ld e, c
    add h
    ld c, b
    cp h
    res 5, e
    xor c
    sbc c
    add a
    ld d, h
    ld d, a
    xor e
    cp d
    cp e
    sbc e
    xor b
    db $76
    ld d, h
    ld d, a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, l
    ld d, h
    ld b, h
    ld h, a
    adc c
    sbc c
    sbc e
    jp z, Jump_018_6278

    ld [de], a
    add hl, sp
    db $ec
    sbc h
    db $ec
    xor c
    adc c
    or a
    dec [hl]
    adc b
    ld a, b
    adc b
    xor e
    xor e
    cp d
    add a
    ld h, a
    sbc c
    adc b
    adc b
    xor e
    cp e
    xor c
    sbc b
    adc b
    adc b
    ld d, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, c
    xor d
    sbc c
    sbc b
    add a
    ld d, l
    add h
    ld l, d
    call c, $a8bb
    db $76
    ld h, a
    xor b
    ld d, a
    xor c
    xor d
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    adc $dc
    cp e
    cp e
    xor c
    adc b
    add a
    ld [hl], a
    adc c
    sbc c
    sbc b
    sbc d
    xor c
    add a
    ld [hl], a
    scf
    ld [hl], a
    adc b
    sbc c
    sbc d
    xor c
    adc b
    add a
    db $76
    ld d, l
    ld d, h
    ld e, d
    rst $38
    xor d
    res 5, b
    add e
    sbc d
    ld [hl-], a
    ld l, c
    cp l
    or a
    adc e
    sub a
    adc c
    adc b
    ld [hl], l
    ld a, l
    db $fd
    cp e
    cp e
    cp d
    add sp, -$79
    ld a, b
    adc b
    sbc e
    xor c
    sbc b
    xor d
    sbc b
    ld [hl], a
    adc b
    ld a, c
    sbc b
    sbc b
    ld [hl], l
    ld b, a
    rst $38
    cp e
    call c, $23c9
    cp h
    ld b, c
    ld b, a
    xor l
    and l
    ld a, e
    sub l
    ld a, c
    xor e
    add h
    ld a, l
    adc [hl]
    jp z, $b8bc

    ld [hl], a
    ld h, l
    ld d, h
    ld c, b
    cp h
    call $cccb
    xor b
    db $76
    ld d, a
    ld [hl], a
    ld l, d
    cp e

Call_018_6962:
    call z, $8ba9
    rst $38
    db $db
    xor c
    xor b
    ld [hl+], a
    sbc b
    inc [hl]
    ld a, c
    call $8985
    push bc
    ld h, a
    ld a, b
    db $76
    cp a
    rst $38
    db $ec
    cp e
    cp b
    ld h, [hl]
    ld h, h
    ld b, l
    ld l, c
    cp h
    db $dd
    call z, $97ab
    ld h, l
    ld d, l
    ld a, b
    sbc d
    cp l
    xor $eb
    ld h, [hl]
    cp a
    db $fc
    xor e
    xor c
    ld h, d
    ld c, e
    ld d, l
    ld e, b
    sbc h
    reti


    ld a, c
    sub [hl]
    ld l, b
    sbc d
    xor b
    ld a, d
    rst $38
    rst $38
    ret


    sbc d
    sbc b
    ld [hl], a
    dec h
    ld h, a
    xor h
    call z, $a9cb
    xor c
    ld [hl], l
    ld d, [hl]
    ld a, b
    sbc e
    db $dd
    sbc $ff
    jp c, $b784

    db $ed
    adc c
    cp e
    and a
    inc [hl]
    call z, Call_018_6962
    cp l
    sub h
    ld a, e
    sub a
    xor h
    res 3, b
    sbc a
    cp $ca
    sbc c
    xor c
    adc c
    sub a
    ld a, b
    adc d
    cp e
    cp d
    sbc c
    xor d
    sbc c
    ld [hl], a
    sbc c
    cp d
    cp h
    db $dd
    call $b9ec
    ld [hl], h
    ld c, c
    cp $ba
    cp d
    sub a
    dec [hl]
    xor c
    ld b, e
    ld l, c
    xor e
    add [hl]
    sbc d
    adc b
    xor e
    cp d
    adc b
    cp l
    db $fd
    cp e
    cp d
    xor d
    sbc c
    sbc b
    ld a, b
    sbc d
    db $eb
    cp e
    cp e
    cp e
    xor c
    add a
    adc c
    sbc d
    cp h
    cp h
    call z, $badc
    add l
    ld d, [hl]
    sbc l
    res 5, e
    and a
    ld d, h
    ld a, e
    add e
    ld h, $89
    adc b
    ld a, b
    sbc b
    adc d
    cp d
    add a
    adc d
    db $dd
    adc e
    cp e
    cp e
    cp d
    xor c
    add a
    ld a, c
    sbc d
    xor c
    xor d
    xor e
    cp d
    sbc b
    ld a, b
    adc b
    adc b
    ld e, e
    db $db
    sbc h
    ret


    adc c
    ld h, [hl]
    add [hl]
    ld b, [hl]
    ld h, l
    ld a, e
    xor $ec
    xor b
    sbc b
    ld b, h
    ld [hl], a
    ld [hl], l
    ld d, a
    cp e
    sbc b
    sbc c
    sbc c
    adc b
    adc b
    ld a, b
    xor h
    db $dd
    set 1, h
    res 5, c
    adc b
    and a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    xor d
    xor d
    sbc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld e, c
    call c, $a8ba
    ld [hl], l
    ld b, l
    adc b
    ld h, [hl]
    sbc d
    adc e
    xor c
    sbc c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    sbc e
    call z, $bacc
    xor c
    sub a
    ld h, l
    ld d, l
    ld h, a
    ld c, c
    sbc c
    sbc d
    sbc c
    add a
    ld h, l
    ld b, h
    ld b, l
    ld d, l
    ld h, a
    adc b
    sbc c
    sbc c
    add a
    ld [hl], l
    ld b, h
    ld [hl], d
    inc h
    ld d, [hl]
    sbc e

Call_018_6a84:
    rst $28
    db $db
    cp c
    ld d, h
    inc sp
    inc [hl]
    ld b, h
    ld a, c
    xor e
    cp e
    xor d
    sbc b
    sub [hl]
    ld d, h
    ld b, l
    ld l, b
    sbc d
    xor e
    cp e
    xor d
    sbc b
    ld h, l
    ld b, e
    ld b, h
    ld d, l
    ld h, a
    adc c
    sbc c
    cp c
    add a
    ld h, [hl]
    ld d, h
    ld b, h
    ld b, l
    ld h, a
    adc d
    cp c
    xor d
    sub a
    ld h, e
    db $10
    dec d
    cp l
    cp d
    sbc d
    add [hl]
    ld d, [hl]
    sbc c
    ld d, c
    ld [hl], $77
    ld d, h
    ld d, a
    ld [hl], a
    adc d
    xor c
    adc b
    sbc e
    call z, $88a9
    adc b
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld b, h
    ld h, [hl]
    ld d, l
    ld [hl], a
    adc c
    adc b
    xor d
    add a
    add a
    ld h, [hl]
    ld d, h

jr_018_6ad7:
    jr c, jr_018_6ad7

    sbc c
    cp c
    adc b
    jr nc, jr_018_6b5a

    ld d, b
    scf
    ld l, d
    sub l
    ld a, d
    add l
    ld a, c
    xor c
    db $76
    ld l, d
    xor $cc
    res 5, d
    add [hl]
    ld h, a
    ld d, h
    ld d, [hl]
    cp b
    sbc b
    sbc c
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc d
    xor d
    sub [hl]
    ld b, a
    rst $28
    sbc b
    reti


    sbc c
    ld b, b
    ld a, d
    jr nz, jr_018_6b5e

    sbc h
    or a
    ld a, d
    and l
    ld e, b
    xor c
    ld [hl], l
    ld c, c
    sbc $cc
    xor e
    sbc c
    sbc b
    ld [hl], a
    ld d, e
    ld d, [hl]
    ld d, [hl]
    adc d
    cp e
    sbc d
    res 3, b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    adc e
    call z, $93bb
    dec sp
    jp hl


    ld a, c
    sbc b
    add a
    ld [de], a
    sla c
    ld a, b
    xor h
    sub [hl]
    sbc e
    add l
    ld a, e
    cp c
    ld [hl], a
    ld a, h
    db $fd
    call $99b8
    ld a, b
    sub a
    ld b, [hl]
    add [hl]
    ld a, d
    xor c
    xor c
    set 1, e
    xor c
    adc b
    add a
    adc b
    adc d
    call c, $ecde
    res 2, a
    ld h, h
    inc sp
    dec h
    cp [hl]
    jp c, $97bc

    ld d, e
    ld l, c
    ld h, c
    ld c, b
    adc b
    sbc b
    ld a, d

jr_018_6b5a:
    xor b
    adc e
    res 5, b

jr_018_6b5e:
    sbc e
    xor $8c
    res 5, e
    cp d
    xor d
    add a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc c
    xor e
    xor b
    adc b
    adc c
    sbc b
    ret


    sbc c
    sbc d
    xor e
    xor d
    sbc c
    sbc d
    xor c
    ld a, b
    ld [hl], l
    ld h, a
    ld h, a
    sub a
    ld e, e
    db $fc
    sbc h
    ret c

    adc b
    ld b, h
    cp e
    ld d, [hl]
    cp e
    xor h
    cp b
    xor d
    db $76
    adc c
    sbc b
    adc c
    xor h
    db $ed
    xor $8b
    call z, $98aa
    ld [hl], a
    add a
    adc d
    xor c
    xor c
    sbc d
    xor c
    add a
    ld h, [hl]
    ld h, a
    ld h, a
    adc b
    adc c
    xor d
    xor e
    xor c
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    sbc d
    sbc d
    cp h
    ret


    ld [hl], l
    inc sp
    ld d, a
    sbc e
    res 5, d
    xor d
    cp h
    cp c
    adc b
    adc b
    adc c
    adc b
    adc c
    sbc d
    cp e
    sbc c
    sbc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc c
    adc b
    add a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    sbc c
    add [hl]
    ld d, l
    adc c
    sbc b
    xor e
    add a
    add [hl]
    ld a, c
    sub [hl]
    ld l, b
    adc b
    sbc c
    sbc c
    adc b
    adc b
    adc c
    ld [hl], a
    adc b
    ld l, c
    sbc c
    sbc c
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld h, a
    db $76
    ld h, a
    ld d, l
    ld [hl], a
    ld l, b
    sub [hl]
    ld l, b
    ld h, h
    ld h, [hl]
    ld a, d
    and [hl]
    adc d
    add [hl]
    db $76
    ld h, a
    add a
    ld a, b
    sbc c
    ld [hl], a
    sbc b
    ld l, b
    add [hl]
    ld l, b
    db $76
    adc b
    ld e, c
    xor b
    adc b
    ld [hl], a
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    ld a, c
    sbc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    adc c
    sbc c
    sbc d
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    xor d
    xor d
    xor c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    or a
    ld [hl], a
    ld h, l
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    xor e
    cp h
    call z, $988a
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    sbc b
    add a
    ld a, b
    adc c
    sbc d
    sbc c
    adc b
    ld [hl], a
    adc b
    add a
    ld h, l
    ld [hl-], a
    inc [hl]
    ld h, a
    ld [hl], a
    ld h, l
    ld d, l
    ld d, a
    adc c
    xor d
    xor d
    xor e
    call $cadd
    add a
    ld a, b
    adc b
    add a
    db $76
    ld h, l
    sub a
    db $76
    ld d, l
    ld d, l
    ld d, a
    adc b
    adc b
    ld [hl], a
    ld h, a
    adc b
    sbc c
    adc b
    sbc c
    xor e
    cp e
    cp d
    ret c

    ld a, b
    adc b
    ld [hl], a
    ld d, d
    ld de, $7736
    db $76
    ld d, h
    ld d, l
    ld l, b
    sbc d
    xor d
    xor d
    cp h
    ld l, l
    call c, $87a9
    adc c
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, h
    inc sp
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    xor e
    cp e
    cp d
    xor c
    sbc c
    sbc b
    db $76
    ld sp, $4601
    ld [hl], a
    ld h, l
    ld b, h
    ld b, l
    ld a, c
    sbc d
    xor c
    xor e
    sbc $ee
    db $db
    sbc b
    adc c
    xor d
    xor c
    add a
    ld h, [hl]
    or [hl]
    ld h, [hl]
    ld d, h
    ld b, h
    ld b, l
    ld d, l
    ld d, h
    ld d, l
    ld h, a
    ld [hl], a
    adc b
    sbc d
    cp h
    call z, $bbbb
    db $db
    xor d
    sbc b
    ld h, e
    db $10
    inc d
    ld [hl], a
    ld h, l
    ld b, e
    inc [hl]
    ld d, a
    sbc c
    sbc c
    sbc d
    call Call_018_5bdd
    xor d
    sbc d
    xor e
    xor d
    adc b
    ld [hl], a
    db $76
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld b, e
    inc sp
    inc [hl]
    ld d, l
    ld h, $67
    adc d
    cp e
    cp h
    call z, $cccc
    cp d
    sbc b
    ld h, e
    ld [hl+], a
    ld b, [hl]
    db $76
    ld d, h
    ld [hl-], a
    ld h, e
    ld b, a
    adc b
    adc c
    sbc d
    call $bacc
    xor d
    cp h
    call z, $99ba
    adc b
    ld [hl], a
    ld h, [hl]
    sub [hl]
    ld d, h
    inc sp
    ld hl, $3312
    ld b, l
    ld d, [hl]
    ld h, a
    ld a, b
    sbc d
    call $dddd
    call c, $c7ba
    ld d, h
    inc [hl]
    ld h, a
    add [hl]
    ld b, e
    ld hl, $5623
    ld a, b
    adc b
    sbc d
    cp e
    xor d
    xor e
    cp e
    ld a, l
    call z, $98ba
    adc b
    adc b
    add a
    db $76
    ld b, e
    ld hl, $1211
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    adc b
    sbc e
    sbc $ee
    call c, $97ca
    ld b, d
    ld b, a
    sbc d
    sub [hl]
    ld d, e
    ld hl, $6724
    ld [hl], a
    add hl, hl
    sbc d
    xor d
    xor d
    xor d
    xor e
    call $badc
    xor c
    add a
    ld a, b
    sbc c
    add a
    ld h, h
    ld [hl-], a
    or c
    ld de, $3423
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor h
    xor $ee
    res 2, a
    ld d, e
    ld [hl], $9b
    ld a, b
    ld d, h
    ld hl, $5723
    ld [hl], a
    ld a, b
    sbc d
    cp e
    sbc c
    sbc c
    sbc d
    xor h
    db $dd
    res 5, b
    rst $20
    ld [hl], a
    adc c
    adc b
    ld [hl], l
    ld b, e
    ld [hl+], a
    ld hl, $3412
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, c
    xor h
    sbc $9d
    db $db
    sub [hl]
    ld hl, $bc37
    xor b
    ld h, h
    ld hl, $7835
    ld [hl], a
    adc d
    xor e
    cp e
    cp d
    ld e, c
    sbc c
    xor h
    call c, $97cb
    ld h, [hl]
    ld a, b
    sbc c
    add a
    ld d, e
    inc hl
    inc [hl]
    ld [hl-], a
    ld [hl+], a
    inc [hl]
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, c
    cp l
    xor $ed
    ret


    ld h, c
    ld [bc], a
    ld a, e
    res 0, [hl]
    ld b, d
    inc de
    ld l, b
    scf
    ld a, b
    xor d
    xor e
    cp e
    cp d
    sbc c
    sbc d
    call $bacc
    add [hl]
    ld h, a
    adc d
    xor c
    ld [hl], l
    jp nz, $4323

    inc sp
    inc [hl]
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, b
    xor e
    db $dd
    db $ed
    jp z, Jump_000_0361

    ld a, e
    ld a, e
    add [hl]
    ld sp, $5812
    add a
    ld a, c
    cp e
    cp d
    sbc d
    xor c
    xor d
    xor e
    call c, $a8cb
    push de
    ld d, a
    sbc d
    xor c
    ld [hl], h
    ld hl, $4312
    inc [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, c
    cp h
    db $dd
    sbc l
    or a
    nop
    daa
    cp e
    xor b
    ld [hl], h
    ld [hl+], a
    ld [hl], $87
    ld h, a
    sbc h
    sbc $db
    xor d
    sbc c
    adc c
    xor h
    res 7, d
    sub a
    ld d, h
    ld e, b
    sbc c
    sbc b
    ld d, e
    ld [de], a
    ld b, e
    inc sp
    ld b, l
    ld h, a
    ld a, b
    ret c

    adc b
    sbc d
    cp e
    res 2, h
    nop
    ld e, c
    xor d
    add a
    ld d, e
    inc hl
    ld e, c
    and a
    ld h, a
    xor h
    dec a
    res 5, e
    cp d
    adc c
    xor d
    sbc c
    sbc d
    xor b
    ld d, h
    ld l, b
    sbc c
    add a
    ld d, d
    inc de
    ld d, h
    add h
    ld d, l
    ld d, [hl]
    ld a, b
    adc b
    adc c
    xor d
    xor e
    cp d
    ld d, b
    ld [bc], a
    sbc d
    xor b
    db $76
    ld b, d
    inc de
    ld a, d
    add a
    ld a, c
    adc $ed
    cp d
    xor h
    ret


    adc d
    cp c
    adc b
    sbc d
    sub [hl]
    inc [hl]
    ld a, c
    sbc c
    ld [hl], l
    ld hl, $4324
    ld b, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    sbc c
    xor e
    cp e
    cp e
    and l
    nop
    ld a, [hl-]
    jp z, Jump_018_5376

    ld de, $a937
    ld [hl], a
    sbc e
    call z, $bccb
    db $dd
    xor c
    xor d
    sbc b
    sbc c
    xor c
    dec d
    ld d, a

jr_018_71f2:
    sbc c
    add a
    ld b, c
    ld [bc], a
    ld b, h
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, c
    xor d
    sbc d
    cp h
    res 4, a
    sub b
    rlca
    call z, Call_018_64a7
    ld de, $9a25
    add a
    sbc d
    xor e
    call $bdcb
    cp b
    adc c
    cp c
    sbc c
    sbc c
    ld [hl], l
    ld d, [hl]
    adc b
    adc b
    ld h, d
    ld bc, $4435
    ld b, l
    ld d, [hl]
    ld a, c
    xor d
    sbc d
    call z, $95cb
    nop
    jr jr_018_71f2

    and a
    ld d, e
    ld [hl+], a
    ld b, a
    xor d
    adc b
    adc c
    xor h
    db $dd
    call c, $a88c
    adc b
    sbc c
    sbc c
    sbc c
    db $76
    ld d, [hl]
    ld a, b
    adc b
    ld h, d
    nop
    inc [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    cp d
    cp e
    xor d
    cp h
    res 2, h
    nop
    ld a, [hl-]
    cp e
    sub [hl]
    ld b, d
    ld de, $ca38
    add a
    adc c
    ld c, l
    db $dd
    call z, $88db
    xor d
    sbc b
    ld a, b
    sbc b
    db $76
    ld h, a
    adc b
    add [hl]
    ld d, d
    ld bc, $9534
    ld d, l
    ld h, a
    sbc d
    xor d
    xor e
    cp e
    cp b
    jr nc, jr_018_7281

    call Call_018_53c8
    db $10
    dec d
    sbc d
    add hl, bc
    sbc d
    cp h
    db $dd
    jp z, $aaab

    cp h
    xor c
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    add a
    ld d, h
    ld b, b

jr_018_7281:
    ld [de], a
    inc hl
    ld d, [hl]
    ld h, a
    sbc d
    cp d
    xor d
    cp d
    ld [hl], d
    ld [bc], a
    sbc [hl]
    db $fd
    cp b
    ld d, c
    ld bc, $9878
    adc c
    xor h
    db $dd
    jp z, $cb99

    xor e
    res 2, a
    ld h, l
    ld h, [hl]
    ld h, a
    sbc c
    sbc b
    dec h
    ld sp, $2201
    ld [de], a
    ld b, l
    ld l, b
    xor e
    cp d
    xor d
    add l
    ld [hl+], a
    ld e, e
    rst $38
    jp c, $8184

    ld h, $9a
    sbc c
    xor h
    call c, $aaba
    cp h
    cp c
    cp h
    and a
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, c
    add [hl]
    ld d, e
    db $10
    ld [de], a
    inc hl
    ld b, l
    ld h, a
    sbc d
    cp h
    res 0, h
    db $10
    ld c, h
    rst $38
    ret


    ld [hl], l
    db $10
    dec d
    xor d
    adc c
    cp l
    cp $ba
    sbc c
    cp e
    xor c
    cp h
    cp c
    db $76
    ld h, l
    ld d, [hl]
    ret


    xor d
    sub a
    ld d, h
    ld [hl+], a
    ld [hl-], a
    ld [de], a
    inc [hl]
    ld l, b
    sbc c
    xor e
    xor b
    ld b, c
    ld [bc], a
    ld a, [hl]
    rst $38
    add hl, sp
    ld [hl], e
    db $10
    ld h, $98
    adc d
    rst $18
    cp $ba
    sbc c
    cp e
    xor d
    cp d
    sbc b
    db $76
    ld h, l
    push af
    ld a, b
    adc b
    db $76
    ld b, d
    inc h
    ld b, d
    ld [de], a
    ld b, [hl]
    adc c
    xor e
    res 2, l
    db $10
    rla
    rst $28
    ld a, l
    xor b
    ld b, c
    ld [bc], a
    ld d, a
    adc b
    sbc h
    rst $38
    db $fd
    cp c
    sbc e
    cp c
    sbc d
    xor c
    sbc b
    ld [hl], a
    push af
    ld b, l
    ld l, b
    add a
    ld d, h
    ld hl, $3234
    inc [hl]
    ld h, a
    sbc d
    cp e
    and a
    ld b, b
    ld [bc], a
    adc a
    ld a, a
    jp c, $1084

    ld h, $77
    adc d
    rst $08
    rst $38
    db $db
    sbc d
    cp d
    adc c
    xor d
    sbc b
    ld [hl], a
    or $55
    ld [hl], a
    adc b
    ld h, h
    ld hl, $4313
    inc hl
    ld d, [hl]
    adc c
    xor h
    cp b
    ld d, b
    nop
    ld c, h
    ld a, a
    db $db
    and a
    ld sp, $8826
    adc c
    cp [hl]
    rst $38
    db $db
    xor d
    res 3, c
    xor d
    xor b
    ld [hl], a
    rst $30
    ld d, l
    ld h, a
    adc b
    ld [hl], l
    jr nc, jr_018_7369

    inc sp
    inc hl

jr_018_7369:
    ld d, a
    sbc d
    cp h
    jp z, JoypadTransitionInterrupt

    ld c, h
    adc a
    jp z, $20a7

    inc d
    ld a, c
    sbc c
    cp a
    rst $38
    db $eb
    sbc c
    cp e
    add a
    sbc d
    xor c
    add a
    rst $30
    ld h, l
    ld h, a
    adc c
    add [hl]
    ld b, c
    ld [bc], a
    ld [hl-], a
    ld [de], a
    ld b, [hl]
    adc c
    xor h
    jp c, Jump_000_0061

    dec sp
    ld a, a
    jp c, Jump_000_30a9

    inc d
    ld a, c
    adc b
    xor [hl]
    rst $38
    db $ec
    xor d
    res 0, a
    sbc c
    sub a
    ld [hl], a
    rst $30
    ld h, l
    ld h, a
    adc c
    add [hl]
    ld b, c
    ld bc, $2332
    ld b, [hl]
    ld a, b
    xor h
    ret z

    jr nc, jr_018_73b0

    ld a, [hl]

jr_018_73b0:
    ld a, [hl]
    cp d
    sub [hl]
    ld [hl+], a
    ld b, a
    sbc c
    sbc c
    rst $08
    rst $38
    call c, $cbbc
    sbc c
    xor c
    add [hl]
    ld h, [hl]
    rst $30
    ld h, l
    ld l, b
    sbc b
    ld [hl], l
    jr nc, jr_018_73c9

    ld [hl+], a
    dec h

jr_018_73c9:
    ld [hl], a
    ld a, c
    cp h
    and [hl]
    nop
    inc bc
    cp a
    ld a, l
    cp d
    add e
    ld bc, $a848
    adc d
    rst $28
    db $fd
    cp d
    xor h
    cp c
    sbc d
    cp d
    add [hl]
    ld h, a
    or $55
    ld a, c
    sbc b
    ld h, l
    jr nz, jr_018_73f9

    ld de, $7835
    sbc d
    call z, Call_000_0084
    ld b, $ef
    ld a, h
    xor d
    ld [hl], d
    ld [de], a
    ld l, c
    sbc b
    sbc e
    rst $38
    db $fd

jr_018_73f9:
    cp d
    xor h
    xor b
    sbc c
    sbc c
    db $76
    ld h, a
    add $66
    adc c
    add [hl]
    ld d, h
    ld hl, $0122
    ld b, [hl]
    ld a, b
    sbc d
    cp d
    ld d, c
    nop
    ld a, [hl+]

jr_018_740f:
    cp $7b
    cp d
    ld d, d
    inc h
    adc d
    adc b
    sbc l
    rst $38
    db $ed
    cp e
    call z, $9a98
    add a
    ld d, h
    ld h, a
    and [hl]
    ld h, a
    sbc c
    add [hl]
    ld b, d
    ld [de], a
    ld [hl-], a
    inc de
    ld h, a
    adc b
    sbc e
    or a
    db $10
    ld bc, $fc8f
    ld l, d
    sub [hl]
    ld [hl+], a
    ld e, c
    cp c
    adc c
    cp a
    cp $db
    call $9adb
    xor c
    ld [hl], h
    inc sp
    ld d, [hl]
    and [hl]
    ld a, d
    xor c
    ld [hl], l
    ld sp, $1122
    scf
    sbc d
    sbc c
    xor c
    jr nc, jr_018_744d

jr_018_744d:
    ld c, h
    db $fd
    xor d
    ld l, b
    ld b, d
    jr c, jr_018_740f

    adc b
    xor [hl]
    rst $38
    db $db
    cp l
    db $ec
    xor d
    res 2, [hl]
    ld [hl-], a
    dec [hl]
    ld h, l
    ld l, b
    xor c
    ld [hl], l
    ld b, d
    ld [de], a
    db $10
    inc d
    ld a, c
    xor d
    cp d
    ld [hl], c
    nop
    ld b, $ef
    db $db
    cp d
    add d
    inc h
    adc e
    sbc b
    adc e
    rst $38
    db $fd
    cp e
    call $abaa
    cp c
    ld h, e
    inc sp
    ld b, l
    ld d, l
    ld a, [hl+]
    sub a
    ld h, l
    ld [hl-], a
    ld hl, $3600
    sbc e
    cp h
    or [hl]
    nop
    ld bc, $fc7e
    cp e
    and [hl]
    and d
    ld e, d
    jp z, $bf88

    rst $38
    db $db
    cp h
    jp c, $bbaa

    sub [hl]
    inc sp
    inc [hl]
    ld b, l
    ld l, c
    add hl, hl
    db $76
    ld d, e
    ld [hl-], a
    db $10
    inc b
    ld l, c
    xor e
    cp d
    ld b, b
    nop
    add hl, de
    db $ed
    cp e
    bit 4, d
    add [hl]
    cp l
    and a
    adc e
    rst $38
    db $ec
    call z, $99dc

Call_018_74b9:
    cp e
    cp c
    ld h, h
    inc [hl]
    ld b, h
    ld b, a
    sbc c
    db $76
    ld d, e
    inc hl
    jr nz, jr_018_74c6

    ld b, a

jr_018_74c6:
    xor d
    xor d
    add d
    nop
    inc b
    call $bcba
    sub h
    inc hl
    ld e, l
    ret


    ld a, c
    rst $18
    db $fd
    cp h
    sbc $b9
    xor e
    xor d
    ld [hl], l
    ld b, h
    ld d, l
    ld d, l
    ld a, c
    sub a
    db $e4
    inc sp
    ld [hl-], a
    nop
    inc h
    ld a, d
    cp h
    and h
    nop
    ld [bc], a
    sbc l
    cp e
    call z, Call_000_2394
    ld a, h
    ld a, [hl-]
    adc b
    cp a
    db $fd
    cp h
    sbc $da
    xor e
    cp d
    add l
    ld b, l
    ld d, l
    ld d, l
    adc d
    sbc b
    ld h, h
    sub e
    ld sp, $3501
    adc c
    cp e
    add c
    nop
    inc bc
    cp l
    xor c
    cp h
    add h
    inc h
    adc l
    jp c, $df2a

    db $fd
    cp e
    sbc $c9
    sbc e
    cp d
    ld h, e
    inc sp
    ld b, l
    ld l, b
    xor d
    xor b
    ld h, l
    ld b, e
    pop de
    ld bc, $7946
    cp e
    add c
    nop
    inc b
    call $bda9
    sub e
    inc de
    ld a, h
    ret


    sbc d
    rrca
    db $fc
    xor e
    sbc $b9
    sbc e
    bit 6, e
    inc sp
    inc h
    ld l, b
    xor e
    xor b
    ld [hl], l
    ld b, h
    jr nz, @-$2e

    ld b, [hl]
    ld a, d
    cp d
    ld h, b
    nop
    ld b, $db
    sbc d
    db $ed
    ld [hl], d
    inc de
    adc l
    cp b
    sbc e
    rst $38
    ld e, d
    xor h
    xor $b8
    sbc e
    cp d
    ld h, e
    inc sp
    inc [hl]
    ld e, b
    cp e
    xor b
    db $76
    ld d, h
    jr nz, jr_018_7562

    or a
    adc c

jr_018_7562:
    xor d
    ld b, b
    nop
    ld [$8ada], sp
    db $ed
    ld h, d
    inc h
    xor l
    cp b
    sbc e
    rst $38
    db $eb
    xor h
    xor $b9
    sbc d
    cp c
    ld h, e
    ld [hl+], a
    inc h
    ld l, b
    cp e
    xor c
    db $76
    ld d, h
    jr nz, @+$04

    ld e, b
    ld [$10a6], a
    nop
    ld a, [hl+]
    ret z

    adc h
    ei
    ld b, d
    scf
    call $be89
    rst $38
    jp z, $3dbd

    xor b
    sbc e
    cp b
    ld b, b
    ld [bc], a
    ld [hl], $8a
    cp d
    xor c
    ld h, l
    ld b, e
    ld hl, $9c14
    ret


    add b
    nop
    dec b
    cp c
    ld a, d
    rst $28
    sub e
    inc hl
    adc l
    cp b
    sbc e
    rst $38
    ei
    xor e
    sbc $db
    ld [$73ba], sp
    nop
    dec [hl]
    ld a, c
    xor e
    xor d
    sub a

Call_018_75b9:
    ld b, h

Jump_018_75ba:
    ld b, d
    nop
    ld c, b
    call z, Call_000_0093
    sub b
    ld e, d
    sub a
    xor l
    add sp, $43
    ld e, c
    db $eb

Call_018_75c8:
    adc d
    rst $08
    rst $38
    cp d
    adc $ec
    xor b
    sbc e
    and [hl]
    db $10
    inc de
    ld b, a
    xor e
    cp e
    and a
    ld d, l
    inc sp
    ld [hl-], a
    ld d, $9b
    and [hl]
    nop
    nop
    jr jr_018_75e8

    adc l
    db $fc
    ld h, d
    ld [hl], $ce
    sbc b
    xor l

jr_018_75e8:
    rst $38
    reti


    xor l
    cp $ca
    adc d
    xor c
    ld h, b
    pop bc
    ld b, [hl]
    adc c
    xor e
    xor d
    add [hl]
    ld b, e
    inc sp
    ld [de], a
    ld e, b
    cp d
    ld h, b
    nop
    ld bc, $7889
    ld a, a
    add $33
    ld l, h
    reti


    sbc e
    rst $28
    ei
    sbc e
    rst $28
    db $ec
    sbc b
    xor d
    add h
    nop
    inc d
    ld c, b
    xor e
    cp e
    sub a
    ld d, e
    inc [hl]
    ld b, d
    dec h
    sbc e
    sub h
    nop
    nop
    ld a, [hl-]
    sub a
    sbc l
    ld a, [$38b2]
    call c, $be89
    cp $98
    cp [hl]
    cp $c9
    sbc d
    xor b
    jr nz, jr_018_7631

    ld d, a
    sbc d
    sbc e

jr_018_7631:
    cp c
    ld h, h
    inc sp
    ld b, h
    inc h
    ld a, d
    xor b
    stop
    ld b, $b8
    adc d
    xor $83
    inc [hl]
    sbc [hl]
    cp c
    xor h
    rst $28
    reti


    sbc e
    rst $28
    db $eb
    sbc c
    xor c
    ld [hl], c
    nop
    dec [hl]
    adc c
    cp e
    cp e

jr_018_7650:
    add [hl]
    ld b, e
    inc [hl]
    ld b, e
    ld c, b
    xor e
    add c
    nop
    nop
    ld a, e
    add a
    cp a
    add sp, $32
    ld c, c
    db $ec
    add hl, sp
    rst $08
    db $fd
    sbc b
    cp [hl]
    cp $c8
    sbc e
    sub a
    db $10
    ld bc, $9968
    xor e
    jp z, $b274

    ld b, h
    ld b, h
    ld l, c
    cp d
    ld d, b
    nop
    inc b
    xor d
    ld a, c
    rst $18
    or $12
    ld c, d
    db $eb
    adc c
    ld c, a
    ei
    adc c
    rst $08
    db $fd
    xor c
    xor d

Call_018_7687:
    sub h
    nop
    inc bc
    ld a, c
    sbc c
    cp h
    cp c
    ld h, e
    ld [de], a
    call nc, Call_018_7a35
    or a
    nop
    nop
    jr jr_018_7650

    adc e
    rst $38
    sub d
    inc hl
    adc [hl]
    ret c

    sbc e
    rst $28
    ld c, d
    sbc e
    rst $28
    db $eb
    sbc d
    cp c
    ld h, b
    nop
    ld d, $89
    sbc d
    call z, Call_018_53b8
    inc hl
    ld b, e
    and l
    adc e
    and l
    nop
    nop
    ld c, d
    and a
    adc l
    rst $38

Call_018_76b9:
    ld [hl], d
    inc h
    xor [hl]
    xor b
    sbc h
    rst $38
    ret


    xor l
    rst $28
    jp c, $a88a

    ld b, b
    nop
    scf
    sbc c
    sbc e
    call z, Call_018_42a7
    inc h
    inc sp
    ld b, a
    db $eb
    ld [hl], d
    nop
    nop
    ld a, d
    adc b
    cp a
    ei
    ld [hl-], a
    scf
    call z, $be99
    db $fd
    xor d
    cp l
    dec a
    cp d
    xor d
    sub [hl]
    db $10
    ld [bc], a
    ld h, a
    adc c
    xor e
    cp d
    ld [hl], l
    ld [hl-], a
    inc sp
    dec [hl]
    ld a, c
    xor b
    sub b
    nop
    dec b
    xor c
    adc d
    rst $38
    call nz, Call_018_7d23
    ret c

    adc d
    rst $18
    ei
    xor e
    sbc $ec
    add hl, bc
    cp d
    ld [hl], c
    nop
    inc b
    ld a, c
    sbc d
    call Call_018_63b9
    ld [hl+], a
    ld b, h
    ld d, [hl]
    adc d
    and l
    nop
    and b
    ld a, [hl-]
    and a
    adc h
    cp $51
    dec h
    adc $97
    sbc h
    rst $38
    jp z, $eead

    ret


    sbc e
    sub a
    jr nz, jr_018_7723

jr_018_7723:
    ld b, a
    sbc c
    xor e
    res 2, [hl]
    ld sp, $4524
    ld d, a
    xor d
    ld h, b
    nop
    ld [bc], a
    dec bc
    ld a, b
    cp a
    ld hl, sp+$21
    add hl, sp
    db $eb
    ld a, c

jr_018_7738:
    cp a
    db $fc
    xor d
    call $baed
    xor d
    add e
    add b
    inc bc
    ld l, b
    xor d
    cp h
    cp d
    ld [hl], l
    ld hl, $5634
    ld a, c
    xor b
    ld b, b
    nop
    dec b
    cp d
    add hl, bc
    rst $18
    call nz, Call_018_5b12
    ld [$ce9a], a
    jp c, $deab

    db $ed
    cp e
    cp c
    ld h, b
    nop
    push af
    ld a, c
    xor d
    call z, Call_018_63b9

Jump_018_7766:
    ld [de], a
    ld b, l
    ld h, a
    ld a, b
    sub a
    stop
    jr jr_018_7738

    sbc e
    adc a
    add d
    inc de
    ld a, [hl]
    reti


    xor e
    sbc $c9
    sbc h
    rst $28
    db $ec
    xor e
    xor b
    jr nc, jr_018_777f

jr_018_777f:
    ld [hl], $59
    sbc e
    call z, Call_018_53b8
    inc hl
    ld d, [hl]
    ld [hl], a
    ld a, b
    sub l
    nop
    nop
    ld a, [hl-]
    cp c
    sbc h
    db $fd
    sub c
    inc d
    xor [hl]
    cp c
    xor e
    db $ed
    cp c
    xor h
    rst $28
    db $db
    xor e
    and a
    stop
    ld b, a
    adc b
    dec hl
    res 4, a
    ld b, d
    inc h
    ld d, [hl]
    ld h, [hl]
    ld a, c
    add e
    nop
    nop
    ld l, h
    cp b
    xor [hl]
    ei
    ld sp, $cfc5
    xor c
    xor e
    db $ed
    xor d
    cp l
    xor $db

Call_018_77b9:
    xor e
    sub l
    nop
    ld bc, $9957
    xor h
    db $db
    sub [hl]
    ld sp, $6725
    db $76
    adc c
    add d

Call_018_77c8:
    nop

Call_018_77c9:
    ld bc, $a87c
    xor [hl]
    ld a, [$2721]
    adc [hl]
    xor b
    sbc e
    db $dd
    cp d
    cp [hl]
    cp $cb
    cp d
    add h
    nop
    ld [bc], a
    ld d, a
    adc c
    cp h
    res 6, l
    ld [hl-], a
    ld b, [hl]
    ld h, [hl]
    ld d, l
    ld a, d
    or a
    stop
    ld e, l
    ret z

    adc e
    cp $60
    inc de
    xor a
    ld b, a
    sbc d
    call $bdba
    rst $28
    db $db
    cp e
    sub l
    db $10
    ld bc, $7945
    cp h
    cp d
    add [hl]
    add d
    dec [hl]
    ld d, l
    ld d, l
    ld l, c
    and a
    stop
    ld e, h
    jp c, $cb89

    ld h, d
    inc d
    sbc [hl]
    ret z

    ld c, c
    xor e
    cp e
    cp l
    xor $db
    xor e
    sub a
    ld sp, $3500
    ld a, b
    xor d
    xor c
    ld h, h
    inc hl
    sub [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld d, l
    ld a, b
    sbc d
    sub l
    inc [hl]
    xor [hl]
    jp c, Jump_018_5675

    ld d, d
    dec h
    inc a
    and a
    ld a, b
    xor h
    call z, $ffdf
    cp b
    adc c
    sbc b
    ld h, e
    inc de
    ld d, a
    ld [hl], a
    sbc c

jr_018_783f:
    add l
    ld [hl], d
    ld b, [hl]
    add a
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld a, c
    call $a7dc
    jr nz, jr_018_7887

    xor $a6
    ld b, l
    ld d, l
    ld hl, $ba37
    adc b
    xor e
    db $dd
    set 1, l
    res 3, c
    sbc d
    sub l
    ld [hl+], a
    ld b, [hl]
    db $76
    or [hl]
    ld [hl], a
    ld h, l
    ld b, l

Jump_018_7864:
    ld h, a
    ld h, l
    ld b, l
    ld h, a
    ld h, [hl]
    ld a, c
    xor d
    xor d
    cp h
    bit 4, c
    dec b
    ld c, l
    and [hl]
    inc sp
    ld d, a
    ld b, d
    ld [hl], $ab
    add [hl]
    ld a, c
    adc $dc
    call $a8ec
    sbc d
    and a
    db $d3
    dec [hl]
    ld h, [hl]
    ld h, a
    adc d
    sub a

Jump_018_7886:
    ld b, d

jr_018_7887:
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld a, c
    xor h
    db $dd
    cp h
    call c, $20b8
    jr c, jr_018_783f

    ld [hl], h

Call_018_7897:
    ld d, l
    ld h, h
    inc sp
    ld e, b
    cp c
    ld a, c
    call $aadb
    ld l, l
    db $db
    sbc c
    xor e
    sub a
    ld d, l
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, e
    ld [hl+], a
    inc [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], $77
    adc b
    adc c
    sbc d
    call $b9dc
    sbc c
    add [hl]
    ld b, [hl]
    adc c
    add a
    ld d, l
    ld d, h
    ld [hl+], a
    db $76
    adc c
    add [hl]
    ld [hl], a
    adc b
    adc b
    xor l
    db $ec
    xor d
    cp e
    cp d
    sbc b
    sbc d
    xor b
    ld a, b
    adc b
    add l
    ld b, e
    inc [hl]
    ld b, h
    ld d, a
    add a
    ld h, h
    dec [hl]
    ld h, a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc d
    xor d
    sbc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc d
    xor c
    adc b
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Jump_018_7976:
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Call_018_7a35:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_018_7d23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
