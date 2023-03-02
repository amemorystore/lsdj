; disasSembly of "lsdj.gb"
SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    ld h, b
    ld b, b
    jr nz, jr_020_4046

    ld h, b
    ld b, e
    sub b
    ld b, a
    ret nz

    ld c, h
    and b
    ld d, b
    ret nz

    ld d, e
    jr nz, jr_020_4069

    db $10
    ld e, l
    and b
    ld h, e
    ldh a, [$66]
    ld [hl], b
    ld l, e
    ld d, b
    ld l, l
    ld b, b
    ld [hl], e
    or b
    ld [hl], h
    add b
    ld [hl], a
    nop
    nop
    ld c, e
    ld c, e
    inc sp
    ld c, h
    ld c, h
    dec l
    ld c, l
    ld c, l
    dec l
    ld c, [hl]
    ld b, a
    dec l
    ld c, [hl]
    ld c, [hl]
    ld sp, $4e4e
    ld [hl-], a
    ld c, a
    ld d, d
    dec l
    ld c, a
    ld d, a
    dec l
    ld c, a
    ld e, c
    dec l
    ld d, b
    ld d, b
    dec l
    ld d, d
    ld d, d
    ld sp, $5252
    ld [hl-], a

jr_020_4046:
    ld d, e
    ld c, b
    dec l
    ld d, e
    ld d, e
    dec l
    ld d, h
    ld c, b
    dec l
    nop
    dec l
    dec l
    ld c, e
    ld c, e
    inc sp
    dec l
    ld d, h
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld h, b
    rst $38
    ld bc, $8787
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b

jr_020_4069:
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc c
    adc b
    adc b
    ld [hl], a
    adc b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc b
    db $76
    ld h, a
    sbc b
    adc c
    adc b
    add a
    adc b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    sub a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
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
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    add a
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    sbc b
    add a
    xor b
    adc c
    sbc d
    sub a
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    db $76
    ld d, l
    ld a, b
    xor d
    xor b
    ld h, l
    ld d, [hl]
    adc c
    ld a, d
    xor c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld a, b
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
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
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
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
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
    ld [hl], l
    ld b, h
    ld hl, $5624
    ld [hl], a
    adc c
    sbc d
    cp e
    call z, $badc
    sbc c
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ret z

    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add [hl]
    ld b, h
    ld sp, $4524
    ld a, b
    adc b
    sbc c
    xor e
    cp l
    sbc h
    cp e
    xor c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc c
    sbc d
    xor c
    ld a, c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld l, b
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
    add a
    ld b, h
    ld b, d
    inc h
    ld b, l
    add a
    adc b
    adc c
    xor e
    cp h
    call c, $a9bb
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc c
    sbc d
    sbc c
    sbc c
    adc b
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
    add a
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
    ld d, a
    ld h, h
    ld [hl-], a
    ld de, $4612
    adc c
    cp e
    cp e
    cp h
    call z, $cccc
    cp d
    add a
    ld h, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    xor d
    xor d
    xor d
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ret z

    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, h
    ld [hl-], a
    db $10
    ld [de], a
    dec [hl]
    ld a, c
    xor e
    cp e
    set 1, h
    adc h
    call c, $87ba
    ld h, l
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc d
    xor d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    ld h, a
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
    ld [hl], l
    inc sp
    db $10
    ld bc, $8835
    xor e
    cp e
    cp e
    cp h
    call z, $bbdc
    sub a
    ld [hl], l
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    sbc b
    sbc d
    xor d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc c
    adc c
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
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a

Jump_020_4386:
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc c
    adc b
    ld a, b
    adc c
    sbc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b

Jump_020_4475:
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    adc b
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
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
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
    adc b
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
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
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld h, l
    ld h, l
    ld h, [hl]
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
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
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
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
    adc c
    adc c
    sbc c
    adc c
    adc b
    sbc c
    adc c
    sbc b
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
    adc b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    adc b
    adc b
    adc b
    add a
    add a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    ld d, l
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
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    adc c
    adc b
    sbc c
    sbc c
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
    ld l, b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    db $76
    ld h, [hl]
    add [hl]
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
    ld a, b
    adc b
    ld a, b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
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
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    sbc b
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
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    adc b
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    ld d, l
    ld h, [hl]
    ld h, [hl]
    add a
    ld [hl], a
    add a
    adc b
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
    adc b
    adc c
    sbc c
    adc b
    sbc c
    adc b
    adc c
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
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
    adc b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    adc b
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
    adc b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    adc c
    adc b
    adc c
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld b, c
    inc h
    ld h, [hl]
    ld d, a
    sbc c
    adc b
    sbc d
    xor c
    sbc d
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld b, c
    inc h
    ld d, [hl]
    ld d, a
    sbc c
    add a
    sbc d
    ld a, c
    sbc c
    sub a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld e, b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, c
    inc hl
    add l
    ld d, a
    sbc c
    adc b
    sbc e
    xor c
    sbc c
    sbc b
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
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld b, c
    inc h
    ld d, l
    ld d, a
    sbc c
    add a
    sbc d
    xor c
    sbc d
    sbc b
    adc b
    adc b
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
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, c
    inc hl
    ld h, l
    ld d, a
    sbc c
    ld a, b
    sbc d
    xor c
    adc d
    sbc b
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
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
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
    ld b, a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, e
    inc sp
    ld b, l
    add l
    ld h, l
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    sub a
    add a
    ld d, h
    inc [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
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
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld d, e
    inc sp
    ld d, l
    ld b, h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    add a
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
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld d, h
    inc [hl]
    ld d, l
    ld d, l
    add [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld h, h
    inc [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, h
    inc [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    adc c
    adc b
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
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, h
    inc [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    add [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld l, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    sub h
    inc [hl]
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    add a
    ld h, h
    inc [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld h, l
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, a
    add a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld e, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], l
    add h
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
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
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    sub a
    add a
    ld [hl], a
    add a
    ld [hl], l
    ld b, h
    ld b, l
    ld d, l
    ld h, a
    db $76
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, l
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
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
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    add a
    ld e, b
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
    add a
    add a
    ld a, b
    ld [hl], l
    ld b, h
    sub l
    ld d, l
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    ld a, b
    adc b
    ld [hl], l
    ld d, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
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
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], l
    ld b, h
    ld d, l
    ld d, l
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld e, b
    add a
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
    ld [hl], l
    ld b, h
    ld d, l
    add l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    adc b
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
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    adc d
    xor c
    sbc c
    adc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
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
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc c
    adc b
    add a
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    add [hl]
    db $76
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
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
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
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
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
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
    ld l, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
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
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
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
    ld [hl], a
    adc b
    ld [hl], a
    add a
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
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
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
    ld l, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
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
    ld a, b
    ld [hl], a
    ld a, b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    ld a, b
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc c
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc c
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
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    sbc b
    adc c
    adc b
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
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    ld l, c
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, l
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    ld l, c
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    add [hl]
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld l, c
    adc b
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
    ld h, [hl]
    ld h, [hl]
    ld h, l
    add [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc c
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sub a
    add a
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    ld a, c
    sbc c
    xor c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
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
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    adc b
    sbc c
    sbc b
    adc c
    sbc b
    adc b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
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
    ld l, b
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
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    sub [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc c
    adc b
    adc b
    adc c
    adc b
    sbc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld d, a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, l
    sub l
    ld b, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, a
    adc b
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    sbc b
    adc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    and a
    ld h, [hl]
    ld d, l
    ld d, h
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    db $76
    ld [hl], a
    adc b
    adc b
    sbc c
    xor c
    ld a, d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    ld l, c
    adc b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, l
    ld b, h
    ld d, l
    ld d, l
    ld d, [hl]
    db $76
    add a
    ld a, b
    adc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
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
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    add hl, sp
    sbc d
    sbc d
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld b, b
    nop
    ld h, h
    nop
    inc sp
    ld [hl], l
    sbc e
    db $dd
    sub a
    rst $08
    ei
    xor d
    xor c
    ld [hl], a
    sbc d
    add l
    ld b, l
    adc b
    db $76
    ld h, a
    db $76
    sbc c
    cp d
    add [hl]
    adc c
    xor b
    ld [hl], a
    add a
    ld h, [hl]
    ld a, c
    add a
    ld h, [hl]
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld l, c
    add a
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    jr nc, jr_020_5283

    ld h, a

jr_020_5283:
    db $10
    ld b, l
    ld b, l
    adc e
    xor $b8
    xor a
    db $fd
    cp d
    cp d
    ld [hl], a
    sbc d
    sub [hl]
    ld [hl], l
    adc c
    add [hl]
    ld a, b
    add a
    ld a, b
    cp e
    add a
    adc c
    cp d
    adc b
    sbc b
    db $76
    ld a, c
    sbc b
    ld h, [hl]
    adc c
    add a
    ld a, b
    add a
    ld [hl], a
    sbc c
    add a
    ld a, b
    sbc b
    add a
    adc b
    db $76
    ld a, b
    adc b
    db $76
    ld a, b
    cp b
    adc b
    adc b
    adc b
    adc c
    add d
    nop
    daa
    jr nz, jr_020_52de

    inc [hl]
    ld l, d
    adc $b8
    adc [hl]
    rst $38
    sbc e
    cp d
    add a
    sbc d
    and a
    ld b, h
    ld a, c
    add a
    ld h, a
    add a
    ld l, b
    sbc d
    sub a
    ld a, c
    xor d
    sbc b
    adc c
    add a
    adc c
    xor b
    db $76
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc b

jr_020_52de:
    ld a, b
    adc b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add e
    nop
    ld [bc], a
    ld d, l
    adc d
    xor d
    ld e, d
    rst $28
    db $fd
    sub a
    ld h, [hl]
    ld h, a
    adc c
    add h
    dec [hl]
    adc e
    cp e
    cp d
    sub a
    ld a, c
    cp h
    sub [hl]
    sub [hl]
    ld h, [hl]
    ld a, c
    xor c
    ld [hl], l
    ld l, b
    xor d
    sbc c
    add a
    ld h, [hl]
    ld a, c
    xor c
    db $76
    ld [hl], a
    ld a, b
    sbc c
    jr jr_020_5378

    ld a, b
    sbc c
    adc b
    db $76
    ld h, a
    adc c
    add a
    ld h, a
    ld [hl], a
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    or b
    nop
    ld h, $8a
    db $dd
    xor c
    cp l
    db $ed
    cp c
    ld [hl], l
    ld [hl-], a
    ld e, b
    sbc b
    db $76
    ld a, c
    adc c
    ld a, l
    jp z, Jump_020_6776

    ld [hl], a
    adc b
    add [hl]
    ld d, [hl]
    adc c
    xor c
    sbc c
    db $76
    ld h, a
    adc c
    add a
    ld h, a
    add a
    ld a, b
    sbc c
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    db $76
    ld h, a
    adc b
    adc b
    adc b
    add a
    ld a, b
    sbc c
    scf
    ld a, b
    ld [hl], a
    ld a, b
    sbc b
    stop
    inc d
    adc e
    sbc $b9
    cp [hl]
    rst $38
    jp c, Jump_000_3186

    add a
    sbc c
    db $76
    ld a, b
    sbc c
    cp l
    db $db
    add l
    ld h, a
    ld [hl], a
    ld a, b
    add [hl]
    ld d, l
    ld a, c
    xor d
    sbc c
    add a
    ld h, [hl]
    adc c
    sbc b
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d

jr_020_5378:
    sbc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld h, [hl]
    ld a, b
    and a
    ld a, b
    db $76
    ld l, b
    adc c
    adc b
    ld [hl], a
    add a
    ld a, b
    adc c
    ld b, b
    nop
    inc bc
    ld a, c
    rst $08
    reti


    adc l
    rst $38
    db $eb
    sub a
    ld b, d
    scf
    sbc d
    sub a
    ld a, b
    sbc c
    xor h
    db $db
    add [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    add a
    ld d, l
    ld l, c
    xor d
    sbc c
    sub a
    ld h, [hl]
    ld a, c
    sbc b
    db $76
    ld [hl], a
    ld [hl], a
    sbc d
    xor b
    ld [hl], a
    adc b
    adc b
    adc c
    add a
    ld h, [hl]
    ld a, b
    adc b
    adc b
    add a
    ld l, b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], $65
    ld d, h
    inc sp
    inc [hl]
    ld b, l
    ld l, b
    sbc e
    call $eeef
    call c, Call_020_76b9
    ld d, h
    ld b, e
    ld [hl], h
    ld b, l
    ld d, [hl]
    ld a, c
    sbc d
    xor e
    cp d
    xor d
    sbc b
    adc b
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
    adc b
    adc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    ret c

    adc b
    adc b
    adc b
    adc b
    db $76
    ld h, l
    ld b, e
    inc sp
    inc sp
    ld b, l
    ld a, b
    sbc e
    call $eeef
    ld a, h
    cp c
    add [hl]
    ld d, h
    inc sp
    inc sp
    ld b, l
    ld h, [hl]
    adc c
    sbc d
    xor e
    cp d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    adc b
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    ld d, [hl]
    xor b
    sbc d
    cp h
    call $cbdc
    xor c
    add [hl]
    ld h, l
    ld b, h
    ld b, h
    ld d, l
    ld h, a
    ld a, b
    sbc c
    sbc d
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld l, b
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
    adc b
    ld [hl], a
    ld b, [hl]
    ld d, h
    ld b, e
    inc [hl]
    ld d, l
    ld a, b
    sbc e
    call $edde
    res 5, c
    db $76
    ld d, h
    inc sp
    ld b, h
    ld [hl], l
    ld h, a
    adc c
    sbc d
    xor d
    xor d
    xor c
    sbc b
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

Jump_020_5486:
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld d, h
    inc sp
    inc sp
    ld b, l
    ld l, b
    sbc e
    call $edee
    call c, $8679
    ld d, h
    inc sp
    inc [hl]
    ld b, l
    ld h, a
    adc c
    xor d
    cp e
    cp d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
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
    ld [hl], a
    and a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld b, h
    inc sp
    inc [hl]
    ld b, l
    ld a, b
    xor e
    call $eeee
    call c, Call_020_76a9
    ld d, h
    inc sp
    inc [hl]
    ld b, l
    ld h, a
    adc c
    xor d
    xor e
    xor d
    sbc c
    sbc c
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
    sbc b
    add hl, bc
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
    adc b
    adc b
    add a
    ld d, h
    ld sp, $0060
    ld [de], a
    ld d, a
    xor h
    rst $38
    rst $38
    rst $38
    db $ec
    xor c
    db $76
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld a, b
    sbc d
    xor e
    cp h
    cp e
    xor c
    adc b

jr_020_5519:
    db $76
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld e, b
    adc b
    add a
    ld d, h
    ld sp, $0000
    inc bc
    ld d, a
    xor h
    rst $38
    rst $38
    rst $38
    db $fc
    cp c
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    xor d
    cp e
    cp e
    xor d
    sbc b
    db $76
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $30
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld d, h
    ld hl, $0000
    ld [de], a
    ld e, b
    xor l
    rst $38
    cp a
    rst $38
    db $ec
    cp c
    db $76
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc d
    cp e
    cp h
    adc e
    xor c
    sbc b
    db $76
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc c
    sbc c
    jr z, jr_020_5519

    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add [hl]
    ld b, d
    db $10
    ld bc, $6874
    xor e
    res 7, e
    call z, $cddd
    res 5, b
    ld h, l
    ld b, l
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    sub a
    adc c
    sbc d
    xor d
    xor d
    xor c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    adc b
    adc c
    adc c
    sbc b
    sbc b
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
    ld e, b
    add a
    ld b, d
    nop
    ld bc, $6824
    sbc e
    cp e
    cp e
    cp h
    db $dd
    call c, $a8cb
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    sbc d
    xor e
    xor d
    xor c
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ret c

    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add [hl]
    ld b, d
    nop
    ld bc, $6824
    xor e
    cp e
    cp e
    cp h
    adc l
    call c, $a8cb
    ld h, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld a, c
    sbc d
    xor d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add [hl]
    ld [hl-], a
    nop
    ld bc, $8824
    xor e
    cp e
    cp e
    call z, $dddd
    res 4, a
    ld h, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    sbc c
    sbc c
    xor d
    xor d
    xor c
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a

jr_020_5668:
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld d, [hl]
    ld [hl-], a
    nop
    ld bc, $6824
    xor e
    cp e
    cp e
    call z, $dcdd
    res 5, b
    ld h, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    adc b
    sbc d
    xor e
    xor d
    xor c
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a

jr_020_569d:
    ld [hl], a
    ld [hl], a
    add a
    ld e, b
    adc b
    adc b
    adc b
    adc b
    add l
    jr nz, jr_020_56a8

jr_020_56a8:
    jr c, jr_020_5668

    db $fd
    res 5, d
    xor c
    sbc b
    db $76
    add h
    inc sp
    ld b, a
    sbc e
    call z, $89a9
    adc c
    sbc b
    db $76
    ld h, l
    ld d, l
    ld h, a
    adc c
    xor d
    sbc c
    ld a, b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc b

jr_020_56ca:
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    rst $00
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], l
    stop
    jr c, jr_020_569d

    db $ed
    ld e, e
    xor d
    sbc c
    adc b
    db $76
    ld d, h
    inc sp
    ld b, a
    xor e
    call z, $99a9
    sbc c
    sub a
    db $76
    ld h, l
    ld [hl], l
    ld h, a
    adc c
    xor d
    xor c
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    adc b
    sbc c
    sbc b
    adc b
    rla
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], l
    sub b
    nop
    ld c, b
    adc $fd
    res 7, d
    xor c
    sbc b
    db $76
    ld d, h
    inc sp
    ld b, a
    xor e
    res 5, c
    ld l, b
    sbc c
    sbc b
    db $76
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor c
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    add a
    adc b
    sbc c
    adc b
    adc b
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
    add a
    jr c, jr_020_56ca

    add a
    ld [hl], a
    ld h, h
    stop
    ld c, c
    adc $fd
    res 5, d
    xor d
    add a
    db $76
    ld b, h
    add e
    ld b, a
    xor h
    res 5, c
    adc b
    sbc c
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ret z

    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], h
    db $10
    ld [bc], a
    ld a, e
    call z, $8aa8
    ld l, l
    db $db
    ld [hl], l
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    xor d
    cp e
    sbc b
    db $76
    ld d, [hl]
    ld a, b
    add a
    add [hl]
    ld a, b
    sbc d
    xor c
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    add a
    ld a, b
    ld [$6687], sp
    ld h, a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], h
    db $10
    sub e
    adc h
    call c, $8aa8
    call Call_020_75da
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc d
    cp e
    adc b
    ld [hl], l
    ld h, [hl]
    ld a, b
    add a
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    sbc c
    sbc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
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
    ld h, h
    db $10
    ld [bc], a
    adc e
    call c, $8aa8
    call Call_020_75da
    inc [hl]
    ld d, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    xor d
    cp d
    sbc b
    ld h, l
    ld h, [hl]
    ld a, b
    add a
    ld [hl], a
    ld a, b
    sbc d
    sbc c
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc b
    add a
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    rst $00
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, h
    db $10
    ld [bc], a
    adc h
    call c, Call_020_7aa8
    call Call_020_757a
    ld b, h
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc d
    xor e
    cp e
    sbc b
    ld h, l
    ld d, [hl]
    ld a, b
    add a
    ld h, [hl]
    ld a, b
    xor d
    xor c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc b
    add a
    ld a, b
    adc b
    ld h, a
    db $76
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld b, h
    ld b, h
    ld a, b
    add a
    db $76
    ld a, b
    xor e
    res 5, c
    sbc c
    xor d
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    sbc c
    sbc c
    adc b
    adc b
    sbc b
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
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    adc b
    sbc c
    sbc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc c
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
    adc b
    adc b
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
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
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
    ld a, b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc b
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
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    sub a
    ld [hl], h
    nop
    nop
    nop
    add hl, hl
    rst $28
    rst $38
    rst $38
    ei
    ld h, h
    ld [hl-], a
    inc sp
    ld b, l
    ld d, l
    ld d, a
    ld e, d
    adc $ff
    db $ec
    and a
    ld d, e
    ld [hl+], a
    dec [hl]
    ld h, a
    sbc d
    xor d
    xor c
    xor d
    sbc c
    adc b
    db $76
    sub l
    ld d, l
    ld d, [hl]
    ld a, c
    sbc d
    xor d
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    add hl, sp
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld d, c
    nop
    nop
    nop
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $00
    ld b, e
    and d
    dec [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, b
    xor e
    sbc $ff
    db $db
    add [hl]
    inc sp
    inc hl
    ld b, [hl]
    adc c
    xor d
    xor d
    ld l, c
    sbc c
    sbc c
    adc b
    db $76
    ld d, l
    ld d, l
    ld h, a
    adc c
    xor d
    xor d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    rst $30
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    jr nc, jr_020_598d

jr_020_598d:
    nop
    inc bc
    xor a
    cpl
    rst $38
    cp $a6
    ld b, e
    inc hl
    ld b, l
    ld h, [hl]
    ld d, [hl]
    ld a, c
    xor h
    rst $28
    cp $c9
    ld [hl], l
    ld [hl-], a
    add h
    ld d, a
    adc d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    adc b
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    sbc c
    xor d
    sbc c
    jr c, jr_020_5a29

    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    add a
    db $76
    db $76
    ld [hl], a
    ld [hl], l
    pop bc
    nop
    nop
    scf
    cp [hl]
    rst $38
    rst $38
    jp c, Jump_020_5486

    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    adc c
    xor e
    ld l, h
    res 5, b
    ld h, l
    ld b, h
    ld b, l
    ld h, a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld a, b
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    ld e, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, h
    ld hl, $0200
    ld e, d
    rst $18
    rst $38
    cp $c9
    ld h, l
    ld b, h
    ld d, l
    add [hl]
    db $76
    ld h, a
    adc d
    cp h
    call z, $87ca
    ld d, h
    ld b, h
    ld d, [hl]
    ld h, a
    adc c
    sbc c
    sbc c
    sbc c
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld d, l
    ld h, a
    adc b
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld hl, sp-$78
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a

jr_020_5a29:
    ld d, d
    stop
    inc b
    adc h
    rst $38
    rst $38
    ld a, l
    xor b
    ld d, h
    ld b, h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc e
    call z, $b9cc
    add [hl]
    ld b, e
    inc [hl]
    ld d, [hl]
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, e
    db $10
    and b
    ld h, $ac
    rst $38
    rst $38
    db $db
    sub [hl]
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    xor e
    cp h
    res 1, b
    ld [hl], l
    ld b, h
    ld b, l
    ld h, a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c

jr_020_5a7a:
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
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
    add a
    ld [hl], a
    db $76
    ld d, h
    ld [hl-], a
    ld de, $3512
    ld a, c
    cp h
    xor $ee
    call c, $a9bb
    sbc c
    ld a, b
    db $76
    ld h, l
    ld b, h
    ld b, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    sbc c
    sbc c
    adc b
    adc b
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    sub $67
    ld a, b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld d, h
    ld hl, $1211
    ld [hl], $79
    cp h
    sbc $9d
    call z, $aabb
    sbc c
    sub a
    db $76
    ld h, l
    ld b, h
    ld b, l
    ld h, [hl]
    ld a, b
    sbc d
    xor d
    xor d
    sbc c
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    jr z, jr_020_5a7a

    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    db $76
    ld b, e
    ld hl, $8311
    ld d, a
    sbc d
    call $dcde
    res 5, d
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld d, h
    ld b, l
    ld d, l
    ld h, a
    adc b
    sbc c
    xor d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld h, a
    ld h, l
    ld b, e
    ld de, $3401
    ld l, b
    xor e
    call $cced
    cp e
    xor d
    sbc c
    sbc b
    add a
    ld h, l
    ld d, h
    ld b, h
    ld d, [hl]
    ld [hl], a
    sbc c
    sbc d
    xor d
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    or a
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, l
    ld [hl-], a
    ld de, $3512
    ld a, c
    cp h
    sbc $dd
    res 1, e
    xor c
    sbc c
    adc b
    db $76
    ld h, l
    ld d, h
    ld d, l
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    sbc c
    sbc c
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], l
    ld d, e
    ld hl, $1300
    ld b, [hl]
    xor e
    call $dcee
    res 5, d
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld b, l
    ld d, l
    ld h, a
    adc c
    sbc d
    adc d
    xor c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    ld l, b
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
    add a
    db $76
    ld h, l
    ld b, h
    inc sp
    ld b, l
    ld l, b
    sbc d
    xor e
    cp e
    cp d
    xor d
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc b

jr_020_5bea:
    adc b
    adc b
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
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld b, e
    inc [hl]
    ld d, l
    ld l, b
    sbc d
    xor e
    cp e
    cp d
    xor c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc b
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
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
    add a
    ld a, b
    ld [hl], a
    or a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld d, h
    inc [hl]
    ld b, h
    ld d, [hl]
    ld a, c
    xor e
    sbc e
    cp e
    xor d
    xor c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    jr c, jr_020_5bea

    ld [hl], a
    add a
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
    ld h, l
    ld b, h
    ld [hl], e
    ld b, l
    ld d, a
    adc c
    sbc d
    cp e
    cp d
    xor d
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
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
    ld a, b
    ld a, b
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
    ld h, [hl]
    ld d, l
    ld b, e
    inc sp
    ld b, l
    ld l, b
    sbc d
    xor e
    cp e
    cp d
    xor c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
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
    or a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, h
    inc sp
    inc [hl]
    ld d, [hl]
    ld a, c
    xor d
    cp e
    cp e
    adc d
    xor d
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    sbc b
    add a
    ld h, h
    jr nz, jr_020_5d15

jr_020_5d15:
    nop
    nop
    dec h
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    res 7, d
    ld l, b
    ld h, l
    ld b, e
    ld [hl+], a
    inc hl
    ld d, [hl]
    adc c
    cp h
    db $dd
    call c, $a9bb
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld h, a
    ld a, c
    sbc c
    sbc d
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    or $77
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld h, e
    stop
    nop
    nop
    ld h, $ae
    rst $38
    rst $38
    sbc a
    cp $dc
    res 5, c
    add a
    ld h, h
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld d, [hl]
    adc d
    cp h
    call z, $bacb
    adc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld h, a
    adc b
    sbc d
    xor d
    xor c
    sbc b
    adc b
    adc b
    ld [$7787], sp
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld d, e
    nop
    nop
    nop
    sub b
    scf
    rst $08
    rst $38
    rst $38
    rst $38
    cp $dc
    cp e
    xor c
    add [hl]
    ld d, h
    ld [hl+], a
    ld [de], a
    inc [hl]
    ld h, a
    sbc d
    cp h
    call z, $aabb
    sbc c
    sbc c
    sbc b
    add a
    db $76
    ld d, l
    ld d, h
    ld d, [hl]
    ld h, a
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    ld b, a
    ld h, h
    jr nz, jr_020_5db4

jr_020_5db4:
    nop
    nop
    ld [hl], $ae
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, Jump_020_5486

    ld b, h
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc d
    cp h
    call z, $bbcc
    sbc b
    db $76
    ld d, h
    ld b, l
    ld d, l
    db $76
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    rst $30
    adc b
    adc b
    adc b
    adc b
    add a
    ld d, e
    jr nz, jr_020_5de9

jr_020_5de9:
    nop
    ld bc, $ae37
    rst $38
    rst $38
    rst $38
    sbc a
    ret


    add [hl]
    ld d, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d
    cp h
    call $bacc
    ld a, b
    ld [hl], l
    ld d, h
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld d, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    db $76
    ld b, d
    stop
    nop
    ld [bc], a
    sbc b
    rst $08
    rst $38
    rst $38
    rst $38
    db $fd
    cp c
    ld [hl], l
    ld d, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    cp e
    call z, $bacb
    sub a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc b
    ld l, c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    dec h
    ld b, e
    ld hl, $2211
    ld b, [hl]
    adc d
    adc $ff
    rst $38
    rst $38
    db $ec
    xor b
    ld h, e
    ld [hl+], a
    ld de, $3572
    ld l, b
    sbc d
    cp h
    call z, $aabb
    sbc b
    ld [hl], a

jr_020_5e6a:
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc b
    db $76
    ld d, e
    ld sp, $1200
    ld b, l
    adc d
    adc $ff
    rst $38
    db $ed
    cp d
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc d
    xor e
    cp e
    xor d
    sbc b
    add a
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    rst $10
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, [hl]
    ld b, e
    jr nz, jr_020_5ebd

jr_020_5ebd:
    ld [de], a
    ld b, [hl]
    adc e
    xor [hl]
    rst $38
    rst $38
    db $ed
    cp d
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc d
    sbc e
    cp e
    xor d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    jr jr_020_5e6a

    adc b
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
    add a
    ld h, l
    ld [hl-], a
    ld h, b
    nop
    inc de
    ld d, a
    xor h
    rst $28
    rst $38
    rst $38
    db $ec
    cp c
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld [hl], a
    adc c
    xor d
    xor d
    cp d
    xor c
    sbc b
    db $76
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    adc b
    add a
    ld h, l
    inc sp
    ld hl, $3412
    ld l, b
    cp h
    rst $18
    rst $38
    db $fd
    res 3, b
    db $76
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor d
    xor d
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    rst $10
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld h, l
    ld b, e
    ld hl, $2301
    ld d, a
    sbc e
    call $9ddd
    res 5, d
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld h, a
    adc c
    xor d
    xor e
    xor d
    xor c
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    daa
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, l
    ld b, e
    ld hl, $8411
    ld l, b
    xor e
    db $dd
    db $ed
    call c, $aacb
    xor c
    adc b
    ld [hl], a
    ld h, l
    ld d, h
    ld d, h
    ld d, l
    ld h, a
    adc c
    xor d
    xor d
    xor c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld h, a
    ld h, l
    ld [hl-], a
    ld hl, $3412
    ld l, b
    xor e
    call $dcdd
    cp e
    xor d
    sbc c
    sbc b
    db $76
    ld h, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld l, b
    adc c
    sbc d
    xor d
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    adc b
    adc c
    adc c
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    or a
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, h
    ld [hl-], a
    ld de, $3512
    ld a, c
    cp h
    db $dd
    db $dd
    call z, $a98a
    sbc c
    adc b
    db $76
    ld d, l
    ld b, h
    ld b, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    xor d
    sbc c
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    rst $30
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld h, e
    stop
    ld [bc], a
    ld a, e
    rst $28
    ld e, a
    db $fd
    cp b
    ld h, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    cp h
    db $dd
    cp d
    add a
    ld d, h
    ld b, h
    add [hl]
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc b
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld d, d
    ret nc

    nop
    inc b
    sbc l
    rst $38
    rst $38
    db $fd
    sub a
    ld d, h
    ld b, h
    ld d, l
    ld h, a
    ld h, a
    adc c
    xor e
    call $b96c
    add [hl]
    ld b, h
    dec [hl]
    ld h, a
    adc c
    sbc d
    xor c
    sbc c
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld d, [hl]
    add a
    adc c
    sbc c
    sbc c
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
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    jr nc, jr_020_6096

jr_020_6096:
    dec [hl]
    ld a, d
    call z, $ccbb
    call c, $86ba
    ld b, h
    ld b, l
    add a
    ld [hl], a
    adc b
    sbc d
    cp e
    cp d
    sub a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    adc c
    sbc d
    xor c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ret z

    adc b
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], h
    db $10
    ld bc, $8b36
    res 7, e
    call z, $a97c
    ld [hl], l
    ld b, e
    ld d, l
    ld [hl], a
    ld a, b
    sbc c
    xor d
    cp e
    cp c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    sbc d
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc b
    adc b
    add a
    add a
    ld d, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], e
    nop
    ld [bc], a
    db $76
    sbc e
    res 7, h
    call $a8cb
    ld h, h
    inc [hl]
    ld d, [hl]
    adc b
    adc c
    sbc c
    xor d
    cp e
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld a, b
    sbc c
    xor d
    xor c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld a, b
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
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld h, d
    nop
    inc bc
    ld d, a
    xor h
    res 7, h
    call $98cb
    ld h, h
    ld b, l
    ld h, a
    ld [hl], a
    ld a, c
    sbc c
    xor e
    cp e
    xor b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    sbc b
    add a
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld [hl], a
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld b, d
    inc [hl]
    ld h, a
    ld h, [hl]
    adc c
    xor e
    cp e
    cp c
    adc b
    adc b
    ld [hl], l
    ld d, l
    ld h, a
    ld [hl], a
    adc b
    sbc c
    xor d
    xor c
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc c
    sbc c
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl-], a
    dec [hl]
    ld [hl], a
    ld h, [hl]
    ld a, d
    xor h
    cp e
    xor c
    adc b
    add a
    ld h, l
    ld d, l
    ld l, b
    adc b
    sbc b
    sbc d
    xor d
    sbc b
    ld [hl], a
    adc b
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
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
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld d, a
    adc b
    adc b
    adc c
    xor d
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
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
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
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
    adc b
    add a
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld d, [hl]
    ld [hl], a
    ld h, l
    ld h, a
    adc b
    add a
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
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
    adc b
    adc b
    db $76
    ld h, [hl]
    db $76
    ld d, l
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    add a
    add a
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld h, l
    db $76
    ld h, [hl]
    ld h, l
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    add a
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
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld a, b
    add a
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld a, b
    adc b
    add a
    db $76
    ld h, a
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
    add a
    adc b
    add a
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
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    adc b
    ld [hl], a
    ld a, c
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld l, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, a
    add a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
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
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    db $76
    ld h, [hl]
    db $76
    ld h, l
    ld l, b
    add a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    db $76
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
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld a, b
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    adc b
    add a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    sbc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    sbc c
    adc c
    ld a, b
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    sub [hl]
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    adc c
    sbc b
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
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc b
    ld l, b
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
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
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
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
    ld h, a
    ld a, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
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
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a

Jump_020_6776:
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
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
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
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
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    adc b
    adc b
    adc b
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, c
    adc b
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
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
    adc b
    ld a, b
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
    adc b
    ld l, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    adc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
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
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    sbc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor c
    xor d
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
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
    adc b
    add a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    adc c
    sbc c
    xor d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld l, b
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
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc d
    xor d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc b
    add a
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, a
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
    ld a, b
    adc b
    or a
    ld h, h
    ld [hl-], a
    ld de, $3422
    ld d, l
    ld h, [hl]
    ld h, a
    ld a, b
    xor d
    cp h
    db $dd
    call c, $bbcc
    adc e
    cp e
    xor d
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc c
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    rst $30
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], e
    nop
    nop
    nop
    inc bc
    ld a, d
    sbc $ef
    rst $38
    rst $38
    rst $38
    adc a
    db $ec
    and [hl]
    ld b, e
    ld [hl+], a
    inc sp
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    call $dcdd
    cp d
    sbc b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld h, a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    sub $66
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld d, b
    nop
    nop
    nop
    inc d
    adc e
    adc $ef
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    add l
    ld b, d
    ld [hl+], a
    inc [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    sbc l
    db $dd
    call c, $98b9
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc d
    sbc c
    sbc c
    add hl, bc
    sbc c
    adc c
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    add a
    ld b, c
    stop
    nop
    ld [bc], a
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    jp z, $98a9

    ld [hl], l
    ld [hl-], a
    ld de, $3572
    ld a, c
    cp h
    db $dd
    call c, $a9cb
    sbc b
    adc b
    add a
    db $76
    ld d, l
    ld b, h
    ld d, l
    ld d, [hl]
    adc b
    sbc c
    xor d
    xor d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    xor b
    sbc c
    adc b
    add l
    stop
    nop
    nop
    inc b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    bit 5, d
    sub a
    ld h, e
    ld hl, $0200
    ld b, [hl]
    adc d
    call $dddd
    res 5, c
    sbc c
    sbc b
    add a
    ld h, l
    ld d, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld a, c
    sbc d
    xor d
    xor d
    sbc c
    sbc c
    adc b
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    or $66
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], e
    nop
    nop
    nop
    nop
    daa
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    db $ed
    cp e
    xor c
    add [hl]
    ld d, e
    stop
    ld [de], a
    ld b, a
    sbc e
    call $dcdd
    adc e
    cp d
    xor c
    sbc c
    ld [hl], a
    ld h, l
    ld b, h
    ld b, h
    ld b, l
    ld h, a

jr_020_6a2a:
    adc c
    sbc d
    xor d
    xor c
    sbc c
    adc b
    sbc b
    adc b
    add a

jr_020_6a33:
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    add a
    stop
    dec b
    ld c, e
    rst $28
    xor $ee
    rst $38
    ld [$0061], a
    inc de
    ld e, b
    adc c
    sbc d
    cp l
    xor $eb
    add [hl]
    and e
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    sbc d
    cp h
    res 2, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    adc c
    xor d
    ld a, c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    and a
    ld [hl], h
    nop
    nop
    jr z, jr_020_6a33

    rst $38
    rst $28
    rst $28
    rst $38
    ret z

    ld b, b
    ld bc, $8935
    sbc c
    ld a, d
    adc $ee
    jp z, Jump_020_4475

    ld d, l
    ld h, a
    ld h, [hl]
    ld a, b
    xor e
    call z, $87ba
    db $76
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor d
    sbc c
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc b
    adc b
    jr jr_020_6a2a

    ld [hl], a
    db $76
    ld h, a
    ld a, b
    ld h, b
    nop
    nop
    ld l, d
    rst $08
    cp $ee
    rst $28
    db $fd
    sub [hl]
    ret nz

    ld [bc], a
    ld b, a
    sbc c
    xor d
    xor e
    sbc $ed
    and a
    ld d, h
    inc [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    adc c
    cp h
    ld l, e
    xor c
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    sbc b
    add a
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    rst $30
    adc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    jr nc, jr_020_6add

jr_020_6add:
    inc bc
    sbc e
    rst $28
    ld l, [hl]
    xor $ef
    ei
    ld [hl], e
    nop
    inc de
    ld e, b
    sbc c
    xor d
    xor l
    sbc $ec
    add [hl]
    ld d, e
    ld b, h
    add [hl]
    db $76
    ld h, a
    sbc d
    cp h
    res 5, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    sbc b
    rlca
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add [hl]
    ldh [rP1], a
    rlca
    xor h
    rst $38
    cp $ee
    rst $38
    reti


    ld d, c
    ld bc, $7824
    sbc c
    sbc c
    cp l
    ld l, [hl]
    jp c, Jump_020_4386

    ld b, l
    ld h, a
    db $76
    ld a, b
    sbc e
    call z, $97ba
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    adc c
    sbc d
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    adc c
    adc b
    adc b
    adc b
    scf
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], d
    nop
    nop
    add hl, sp
    cp [hl]
    rst $38
    xor $ef
    rst $38
    or a
    jr nc, jr_020_6b51

    add l

jr_020_6b51:
    adc c
    xor d
    sbc d
    sbc $ee
    cp c
    ld h, h
    inc sp
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, c
    xor e
    res 5, c
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor d
    sbc c
    adc b
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc c
    adc b
    adc b
    db $76
    ld b, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    adc d
    xor d
    xor d
    xor d
    xor d
    sbc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld l, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld h, l
    ld d, h
    inc sp
    inc sp
    inc [hl]
    ld b, h
    ld d, l
    ld d, l
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, c
    sbc c
    sbc c
    sbc c
    xor d
    xor d
    xor c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    db $76
    ld d, $77
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, h
    jr nz, jr_020_6bdf

jr_020_6bdf:
    nop
    sub h
    ld a, d
    call z, $bbcc
    cp e
    cp e
    cp h
    cp e
    xor d
    add a
    ld h, h
    ld b, h
    ld b, l
    ld [hl], a
    sbc c
    adc c
    adc b
    add a
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, c
    add a
    ld d, e
    nop
    nop
    ld [bc], a
    ld e, b
    cp l
    db $dd
    res 7, e
    cp e
    call z, $bacc
    xor b
    ld [hl], l
    ld b, e
    inc [hl]
    ld d, [hl]
    adc b
    sbc c
    adc b
    adc b
    adc c
    sbc d
    xor d
    xor d
    sbc c
    sbc b
    db $76
    ld h, a
    add a
    ld a, b
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
    ld a, b
    adc b
    ret z

    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld h, h
    jr nz, jr_020_6c4a

jr_020_6c4a:
    nop
    ld [hl], $9c
    xor $ed
    call z, $bcab
    call z, $a9cb
    add a
    ld d, h
    inc sp
    ld b, h
    ld h, a
    adc c
    sbc b
    adc b
    adc c
    sbc c
    xor d
    sbc d
    xor c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    ld [$7787], sp
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], l
    jr nz, jr_020_6c7f

jr_020_6c7f:
    nop
    pop de
    ld a, l
    rst $38
    rst $38
    rst $38
    call c, $bcbb
    res 5, c
    ld h, h
    ld sp, $1300
    ld e, b
    xor h
    adc l
    res 5, c
    sbc c
    sbc c
    xor d
    xor c
    add a
    ld h, l
    ld b, h
    ld d, [hl]
    ld h, a
    adc c
    xor d
    xor c
    sbc b
    add a
    ld a, b
    adc b
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    add a
    add a
    adc b
    ld c, b
    add a
    ld b, c
    nop
    nop
    nop
    add hl, hl
    rst $28
    rst $38
    rst $38
    db $fd
    cp e
    cp e
    res 7, d
    add [hl]
    ld d, d
    nop
    ld [bc], a
    ld b, [hl]
    sbc e
    db $dd
    call c, $99ca
    sbc c
    sbc d
    xor d
    adc b
    db $76
    ld d, h
    ld b, h
    add [hl]
    ld a, b
    sbc c
    xor c
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ret c

    add a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    ld h, h
    nop
    nop
    nop
    inc bc
    sbc a
    rst $38
    rst $38
    rst $38
    xor e
    cp e
    call z, $a8cb
    ld h, h
    ld hl, $2401
    ld a, c
    cp h
    call z, $99ba
    sbc b
    sbc c
    ld a, d
    sbc c
    add a
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc b
    ld a, b
    adc b
    sbc b
    adc b
    add a
    rlca
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc c
    adc c
    add [hl]
    ld b, b
    nop
    nop
    ret nz

    ld c, d
    rst $28
    rst $38
    rst $38
    db $ed
    cp e
    cp e
    call z, $86ba
    ld b, d
    db $10
    ld [bc], a
    ld b, a
    sbc e
    adc h
    res 5, c
    adc b
    sbc c
    sbc d
    xor c
    adc b
    ld h, [hl]
    ld d, h
    ld d, l
    ld h, a
    adc c
    sbc d
    xor c
    sbc b
    adc b
    ld [hl], a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    db $76
    ld a, b
    add a
    ld a, b
    adc b
    add [hl]
    ld l, b
    sbc b
    ld h, a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    add a
    adc b
    ld h, a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    db $76
    ld a, b
    add a
    ld l, b
    sbc b
    add a
    sbc b
    ld [hl], a
    ld a, c
    add [hl]
    ld l, b
    adc b
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld a, b
    add a
    ld h, a
    sbc c
    ld [hl], a
    adc c
    sub a
    ld a, b
    sbc c
    ld h, [hl]
    sbc d
    db $76
    adc c
    sub a
    add a
    adc b
    add a
    ld a, c
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld l, b
    sub a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld h, a
    sbc b
    ld h, [hl]
    adc c
    add a
    ld a, b
    sbc b
    ld [hl], a
    sbc b
    add a
    adc c
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld h, [hl]
    adc b
    adc b
    adc b
    add a
    add a
    ld e, b
    sub a
    ld a, b
    add a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    add [hl]
    ld l, b
    sub [hl]
    ld h, a
    adc b
    add a
    ld l, b
    xor b
    db $76
    sbc c
    ld [hl], a
    ld a, b
    sbc b
    ld h, a
    add a
    ld a, b
    adc b
    adc b
    ld l, b
    sub a
    ld l, b
    sbc b
    ld [hl], a
    add a
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld l, b
    add a
    ld a, c
    db $76
    adc c
    db $76
    ld a, d
    add a
    ld a, b
    sbc b
    add a
    sbc c
    db $76
    ld a, c
    sub [hl]
    ld l, b
    sub a
    ld a, b
    add [hl]
    adc b
    db $76
    sbc b
    ld h, a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    ld l, b
    add a
    ld l, b
    sub a
    ld a, b
    sbc b
    ld [hl], a
    adc c
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, c
    db $76
    ld l, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    sbc c
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    sbc b
    ld h, a
    sbc c
    db $76
    adc c
    add a
    ld a, b
    ld [hl], a
    ld h, [hl]
    adc c
    add l
    ld a, d
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    add [hl]
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    sub a
    ld h, a
    sbc b
    ld [hl], a
    adc c
    add [hl]
    ld h, a
    sbc b
    db $76
    ld a, c
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    sub a
    ld l, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, c
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    sub a
    ld l, c
    and a
    ld l, c
    and a
    ld a, c
    add a
    adc b
    ld h, a
    xor b
    ld l, b
    ld l, b
    ld [hl], a
    ld a, b
    sbc b
    ld h, a
    adc b
    db $76
    ld a, b
    add a
    ld h, a
    sbc c
    ld h, a
    sbc c
    db $76
    adc b
    add a
    add a
    adc c
    add l
    ld a, d
    sub [hl]
    ld l, b
    xor b
    ld e, b
    sbc b
    ld [hl], a
    ld a, b
    xor b
    ld d, a
    xor b
    ld l, b
    add a
    ld d, a
    ld d, a
    xor c
    ld d, a
    sbc b
    ld h, a
    add [hl]
    adc c
    ld [hl], l
    sbc e
    ld [hl], l
    adc d
    add a
    add a
    ld a, c
    and [hl]
    ld a, d
    and [hl]
    ld l, b
    sbc b
    db $76
    ld a, c
    add a
    ld h, a
    xor b
    ld d, [hl]
    sbc c
    ld [hl], a
    add a
    ld a, b
    db $76
    ld a, c
    sub [hl]
    ld a, d
    add [hl]
    ld a, b
    add a
    ld [hl], a
    adc c
    add [hl]
    ld a, c
    sub [hl]
    ld a, c
    sub a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld h, [hl]
    sbc c
    db $76
    adc d
    sub [hl]
    ld l, c
    and a
    ld h, a
    sbc c
    db $76
    ld a, c
    add [hl]
    adc b
    add a
    sub a
    sbc c
    sub [hl]
    ld a, b
    db $76
    ld a, b
    ld h, a
    adc b
    db $76
    adc b
    add a
    ld a, b
    sbc b
    ld h, [hl]
    adc c
    db $76
    ld a, c
    add a
    ld d, a
    xor c
    ld h, l
    sbc c
    add [hl]
    ld a, b
    sbc b
    ld h, a
    adc c
    db $76
    add a
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    ld l, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld a, c
    sub a
    ld a, b
    sbc b
    ld [hl], a
    sbc b
    ld l, b
    sbc b
    ld h, a
    sbc c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc c
    add a
    adc c
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    xor b
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add [hl]
    adc c
    add a
    sbc c
    ld [hl], a
    adc c
    ld [hl], a
    sub a
    ld l, b
    sub a
    ld a, c
    add a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    xor b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    adc c
    db $76
    adc d
    ld [hl], h
    adc d
    sub l
    adc c
    db $76
    ld a, b
    adc b
    add a
    ld a, c
    sub [hl]
    ld a, b
    adc b
    add a
    ld a, c
    add [hl]
    ld a, c
    sub a
    ld h, a
    ld a, c
    add a
    ld a, b
    add a
    ld a, c
    sub a
    ld h, a
    adc c
    db $76
    ld a, b
    sub a
    ld l, b
    sub a
    ld a, c
    add a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld [hl], a
    adc c
    add [hl]
    ld a, c
    sub a
    ld l, b
    xor c
    add [hl]
    adc d
    add [hl]
    ld l, c
    xor c
    ld h, [hl]
    sbc e
    db $76
    adc c
    add a
    ld [hl], a
    sbc c
    db $76
    adc b
    add [hl]
    ld h, a
    sub a
    ld d, [hl]
    adc c
    db $76
    adc b
    add a
    ld [hl], a
    sbc c
    db $76
    sbc e
    add l
    adc e
    sub [hl]
    ld a, d
    sub a
    ld l, b
    adc c
    db $76
    ld a, c
    add a
    add a
    ld a, b
    sub a
    ld d, a
    adc b
    ld h, a
    adc b
    add a
    ld a, b
    sbc b
    ld h, a
    adc b
    adc b
    adc b
    sbc b
    ld [hl], a
    adc b
    db $76
    ld a, b
    add [hl]
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld l, b
    sub a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    ld l, b
    add a
    ld [hl], a
    adc b
    db $76
    ld a, c
    add a
    add a
    sbc c
    add [hl]
    ld a, b
    sub a
    ld [hl], a
    adc b
    sub a
    ld a, b
    adc b
    db $76
    ld l, b
    sub a
    ld l, b
    sub a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld h, a
    adc b
    ld a, b
    add a
    ld a, c
    add a
    adc c
    db $76
    adc c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    ld a, c
    sub a
    ld l, c
    add a
    ld a, b
    add a
    adc b
    db $76
    adc c
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc c
    ld [hl], a
    adc d
    add [hl]
    adc d
    add [hl]
    adc c
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    sbc b
    ld a, b
    add [hl]
    ld l, b
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld [hl], a
    ld [hl], a
    xor c
    ld h, [hl]
    ld l, d
    ld h, h
    ld a, c
    db $76
    ld a, b
    ld a, c
    add [hl]
    ld a, c
    sub [hl]
    ld l, c
    and a
    ld l, b
    adc b
    add [hl]
    ld a, b
    sub [hl]
    ld l, b
    sbc b
    ld [hl], a
    sbc b
    ld [hl], a
    adc c
    sub a
    ld a, b
    sbc b
    ld h, a
    sbc c
    add a
    ld a, c
    and a
    ld l, c
    xor b
    adc b
    adc b
    sub a
    ld d, a
    sub a
    ld h, a
    add a
    adc b
    ld h, a
    add a
    ld a, b
    add a
    ld a, c
    db $76
    ld a, c
    db $76
    ld a, c
    ld [hl], a
    sbc b
    ld l, b
    sub [hl]
    ld e, c
    and [hl]
    ld e, b
    sub a
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    sbc b
    sbc c
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    sub a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld h, a
    adc b
    db $76
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    adc c
    add a
    adc b
    sbc b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, c
    sbc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    sbc b
    ld h, a
    sbc b
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    sbc c
    add a
    adc c
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc b
    add a
    ld a, b
    db $76
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc c
    add [hl]
    ld a, b
    adc b
    sub [hl]
    ld b, d
    dec [hl]
    ld h, l
    ld d, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    adc b
    sbc c
    sbc b
    adc c
    sbc c
    adc b
    adc c
    ld a, b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld d, h
    ld d, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    sbc c
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld b, h
    ld d, a
    db $76
    ld h, a
    ld [hl], a
    add a
    adc c
    sbc b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    add a
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
    ld b, a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    add h
    ld d, a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    ld a, c
    sbc c
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    ld a, c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], l
    ld b, h
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    adc c
    adc b
    adc c
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    add a
    sbc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], l
    ld b, l
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    add a
    adc c
    sbc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], h
    ld b, l
    add a
    ld h, [hl]
    ld [hl], a
    add a
    ld a, b
    sbc c
    add a
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
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
    add a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    db $76
    db $76
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sub a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld l, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    sbc b
    ld a, c
    add a
    sbc b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld h, a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld l, b
    add [hl]
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc c
    ld a, b
    adc b
    adc c
    add a
    adc b
    ld a, c
    ld a, b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    sbc b
    add a
    adc b
    adc c
    sub a
    adc b
    ld a, c
    ld a, b
    sbc b
    add a
    sub a
    adc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc c
    ld a, b
    sbc b
    ld a, b
    sub a
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub a
    add a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    add a
    ld [hl], a
    adc b
    sbc c
    adc c
    sbc b
    adc b
    ld a, b
    sub a
    adc c
    adc c
    ld a, c
    adc b
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    sbc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    sub a
    sub a
    ld a, b
    ld [hl], a
    sub a
    sbc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc c
    adc c
    sbc b
    ld [hl], a
    adc b
    adc c
    add a
    add a
    ld l, b
    ld a, b
    add a
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
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    add a
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
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
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
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a

Call_020_757a:
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
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
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a

Call_020_75da:
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
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
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b

Call_020_76a9:
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b

Call_020_76b9:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
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
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_020_7aa8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
