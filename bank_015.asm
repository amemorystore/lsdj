; disasSembly of "lsdj.gb"
SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld h, b
    ld b, b
    ret nc

    ld b, l
    ld [hl], b
    ld b, a
    jr nc, jr_015_4050

    ret nc

    ld c, l
    jr nc, jr_015_405b

    nop
    ld d, c
    ld [hl], b
    ld d, e
    jr nc, jr_015_406b

    ld b, b
    ld e, c
    nop
    ld e, e
    jr nc, jr_015_4073

    jr nc, jr_015_407c

    and b
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, h
    dec l
    ld d, e
    ld b, h
    dec l
    ld b, e
    ld c, b
    ld c, b
    ld c, a
    ld c, b
    ld c, b
    ld c, b
    ld b, d
    ld c, a
    ld c, l
    ld b, d
    ld c, a
    ld c, h
    ld b, d
    ld c, a
    ld b, e
    ld e, c
    ld c, l
    ld d, d
    ld c, c
    ld c, l
    ld b, e
    ld c, a
    ld d, a
    ld b, e
    ld c, h
    ld b, c
    ld b, a
    ld d, l
    ld c, c
    ld d, e
    ld c, b
    ld c, e
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    nop

jr_015_4050:
    nop
    nop
    ld b, [hl]
    ld d, d
    dec l
    ld sp, $2020
    nop
    nop
    nop

jr_015_405b:
    nop
    nop
    nop
    nop
    ld bc, $aa39
    xor c
    cp e
    cp h
    call z, $baaa
    sbc b
    add a
    ld [hl], a

jr_015_406b:
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, h
    inc [hl]
    add e
    inc sp
    inc sp

jr_015_4073:
    inc sp
    inc sp
    inc [hl]
    inc sp
    inc sp
    ld b, h
    dec [hl]
    ld b, h
    ld d, l

jr_015_407c:
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ret c

    adc b
    ld a, c
    adc c
    sbc d
    sbc d
    xor d
    xor d
    cp e
    cp e
    res 7, h
    call z, $dccc
    call $dcbc
    db $dd
    db $dd
    db $dd
    call c, $ccdd
    call z, $bcdc
    set 1, e
    cp e
    cp e
    xor d
    ld c, c
    sbc c
    sbc c
    sbc c
    sbc b
    ld a, c
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    inc de
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2111
    ld hl, $1221
    ld [de], a
    ld d, d
    ld [de], a
    ld [de], a
    ld de, $2122
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, [hl]
    push de
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    adc b
    ld a, c
    adc b
    sbc c
    sbc c
    xor d
    xor d
    cp d
    cp e
    set 1, e
    db $fc
    call c, $ddde
    sbc $ee
    xor $fe
    xor $ee
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    cp $ff
    rst $38
    xor $ff
    cp $ee
    xor $ed
    db $ed
    db $dd
    call $cccc
    cp h
    ld c, e
    cp e
    xor e
    xor d
    sbc d
    sbc c
    sbc b
    adc b
    adc b
    add [hl]
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, h
    ld d, h
    inc b
    ld b, h
    inc sp
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $1011
    ld de, $1000
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2100
    ld de, $9212
    ld [hl-], a
    ld [hl+], a
    inc sp
    ld b, e
    inc sp
    dec [hl]
    ld b, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld [hl], l
    db $76
    ld a, b
    ld a, b
    add a
    add sp, -$76
    sbc c
    xor e
    sbc d
    xor h
    xor e
    set 1, e
    call z, $dddc
    db $dd
    db $ed
    db $ed
    xor $ed
    cp $ff
    rst $28
    cp $ff
    rst $28
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $28
    rst $38
    rst $28
    cp $9e
    xor $ee
    db $dd
    db $dd
    db $dd
    call $cccc
    res 7, h
    cp d
    cp d
    xor d
    cp d
    sbc c
    add hl, sp
    sbc b
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]
    inc de
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld hl, $1122
    ld de, $1112
    ld de, $1111
    ld [de], a
    ld b, c
    ld de, $1211
    ld [de], a
    ld de, $2222
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld d, h
    ld b, l
    or [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    db $76
    ld h, a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    sbc b
    xor c
    sbc c
    xor d
    xor d
    jp c, $bbaa

    jp z, $bccc

    call z, $cccd
    db $dd
    call z, $dddc
    call $dddd
    cp [hl]
    db $dd
    db $dd
    db $dd
    db $ed
    db $dd
    call c, $dcec
    db $dd
    call z, $cccc
    set 1, e
    bit 5, e
    xor e
    xor e
    sbc d
    xor d
    sbc d
    sbc c
    sbc c
    adc c
    sbc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], $66
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, h
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    inc sp
    inc sp
    ld b, e
    inc sp
    inc hl
    ld b, d
    ld [hl-], a
    inc hl
    inc hl
    ld [hl+], a
    inc sp
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [hl-], a
    inc sp
    inc sp
    inc hl
    inc sp
    inc sp
    inc sp
    ld [hl], e
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld h, l
    ld d, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    add a
    cp b
    ld a, b
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    xor d
    xor e
    xor e
    cp e
    cp e
    set 1, h
    cp h
    set 1, h
    db $db
    set 1, h
    call z, $cccd
    db $db
    call z, $bccc
    db $db
    res 1, h
    set 1, e
    cp e
    cp e
    cp d
    jp z, $babb

    cp d
    xor c
    xor d
    xor c
    xor c
    sbc c
    sbc c
    ld c, c
    sub a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, l
    ld h, l
    ld h, l
    ld b, l
    ld d, l
    dec [hl]
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    ld b, h
    inc sp
    ld b, e
    ld b, e
    inc [hl]
    inc [hl]
    ld d, e
    ld b, e
    ld b, e
    dec [hl]
    ld b, e
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, l
    ld b, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    sbc c
    adc b
    adc c
    sbc b
    sbc c
    cp c
    sbc c
    xor d
    xor d
    xor d
    cp d
    cp e
    xor e
    cp d
    xor e
    cp e
    cp d
    cp e
    cp e
    xor e
    cp e
    xor e
    cp e
    xor h
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    xor d
    cp e
    xor d
    cp c
    ld a, d
    xor d
    xor d
    sbc d
    xor c
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    ld e, b
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, l
    ld d, h
    ld d, h
    ld d, l
    ld b, h
    ld d, h
    ld d, h
    ld b, l
    ld b, l
    ld d, h
    ld b, h
    ld d, l
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, h
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor b
    adc b
    add a
    adc b
    adc b
    sbc b
    sbc c
    adc b
    sbc c
    xor c
    sbc c
    xor c
    sbc d
    sbc c
    xor c
    xor d
    cp d
    xor c
    xor d
    xor d
    xor e
    xor d
    xor d
    xor d
    xor d
    cp d
    cp d
    cp d
    xor d
    cp d
    cp d
    xor d
    adc c
    xor d
    xor d
    xor d
    xor c
    xor d
    xor d
    sbc c
    xor b
    xor c
    xor c
    sbc c
    sbc c
    adc c
    sbc b
    adc c
    ld l, c
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    db $76
    sub a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    adc c
    ld a, b
    adc b
    sub a
    adc b
    xor b
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    adc d
    adc d
    sbc c
    xor c
    xor c
    xor d
    sbc c
    xor c
    sbc d
    sbc c
    adc d
    xor d
    xor d
    xor c
    xor c
    xor c
    xor c
    xor c
    xor d
    xor c
    sbc d
    xor c
    sbc c
    xor c
    sbc d
    sbc c
    ld a, d
    sbc b
    adc d
    adc c
    adc c
    adc c
    adc c
    adc b
    adc c
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], l
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc c
    adc c
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    adc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    xor d
    sbc c
    xor c
    sbc d
    sbc c
    adc c
    sbc c
    sbc d
    sbc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    sbc c
    adc c
    adc c
    ld a, b
    sub a
    sbc b
    ld l, b
    adc b
    add a
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld h, l
    ld [hl], l
    ld h, [hl]
    db $76
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    ld a, c
    adc c
    adc b
    adc b
    adc b
    sbc c
    adc b
    adc c
    sbc c
    adc c
    sbc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    adc d
    adc c
    xor b
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    ld a, c
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, l
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, c
    ld a, b
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    adc b
    adc c
    sbc b
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    sbc b
    adc c
    adc c
    sbc b
    adc c
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    add a
    add a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    sub a
    adc b
    add a
    adc b
    adc b
    ld a, c
    ld a, b
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    ld a, b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    sbc c
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc c
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
    add a
    sub a
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    db $76
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
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, c
    ld a, b
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
    sbc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    sub a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b

jr_015_458f:
    ld [hl], a
    ld [hl], a
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
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    add a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld a, c
    ld a, b
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
    add a
    adc b
    adc b
    dec hl
    jp z, Jump_015_7b7c

    or [hl]
    sub [hl]
    ld a, [$eb1d]
    adc a
    and a
    ld a, [hl]
    ld a, c
    ld h, a
    dec h
    ld h, c
    ld [hl], b
    ld b, $00
    ld [hl], l
    ld de, $6899
    or a
    rst $08
    ld a, a
    res 7, h
    or $bb
    ld d, [hl]
    xor e
    or d
    ld h, $40
    inc [hl]
    add hl, bc
    rlca
    ld b, [hl]
    ld a, [de]
    ld b, a
    ld [hl], a
    sub $6a
    cp e
    and a
    rst $10
    ld a, c
    ld a, b
    dec sp
    ld a, c
    ld b, $94
    add [hl]
    ld h, $35
    sub [hl]
    jr z, jr_015_458f

    push bc
    adc d
    and l
    or [hl]
    adc e
    xor e
    xor e
    add hl, sp
    sub a
    ld e, d
    or [hl]
    ld d, a
    dec de
    sub l
    ld l, c
    ld h, h
    add a
    call nc, Call_015_7b7a
    ld c, d
    ld [hl], a
    sbc e
    add a
    rst $10
    ld e, e
    ld e, c
    and a
    add a
    ld a, d
    add e
    jp nz, Jump_000_3db8

    ld e, b
    ld d, a
    xor d
    add l
    ld l, h
    adc h
    ld h, [hl]
    sub a
    cp c
    ld d, [hl]
    xor d
    ld c, d
    ld e, c
    sbc d
    dec hl
    ld h, a
    adc b
    and h
    sub [hl]
    sbc d
    sub d
    or a
    ld a, d
    ld c, b
    sbc d
    db $76
    adc d
    db $76
    ld l, h
    ld e, c
    ld c, e
    ld e, b
    ld e, c
    adc c
    ld h, h
    ld d, a
    ld a, e
    inc sp
    and a
    sub [hl]
    ld l, b
    ld a, b
    ld a, b
    ld c, d
    sub d
    ld l, h
    ld [hl], a
    ld l, c
    ld h, l
    and l
    ld l, b
    ld c, e
    ld b, h
    xor c
    ld c, d
    add c
    rst $00
    and l
    ld c, d
    adc b
    ld b, a
    ld a, c
    ld l, d
    sub d
    ld e, h
    and e
    ld a, d
    dec a
    scf
    ld l, d
    ld d, a
    sbc b
    sub e
    sbc e
    ld a, [hl-]
    ld l, b
    add l
    ld a, c
    jp $85a7


    sbc b
    ld a, c
    sbc l
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    sbc d
    add l
    sub a
    ld a, c
    ld a, c
    ld a, b
    sub [hl]
    adc e
    ld d, [hl]

jr_015_468e:
    ret z

    ld l, d
    ld d, l
    ld l, c
    or l
    adc c
    add [hl]
    sbc b
    ld c, c
    or [hl]
    ld a, c
    add a
    sbc b
    inc a
    add [hl]
    add $76
    sbc d
    ld a, c
    ld e, c
    and l
    ld a, c
    xor b
    ld l, c
    ld b, a
    sbc c
    ld l, b
    adc d
    ld [hl], e
    sbc c
    ld l, b
    and h
    adc e
    ld b, a
    ld e, c
    ld l, d
    ld h, a
    and l
    ld [hl], a
    ld [hl], a
    ld a, b
    adc d
    ld b, [hl]
    add $87
    ld a, b
    ld a, b
    ld h, a
    ld l, b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    adc b
    ld a, b
    ld h, l
    and a
    ld e, c
    sub l
    ld a, b
    ld [hl], a
    ld h, a
    add a
    ld e, b
    sub [hl]
    ld h, [hl]
    and a
    ld h, h
    xor b
    ld l, b
    db $76
    ld a, b
    or l
    ld e, b
    and [hl]
    ld l, c
    ld l, b
    add l
    and [hl]
    add a
    add a
    adc b
    ld e, b
    sub [hl]
    sub [hl]
    adc d
    jr c, jr_015_468e

    adc b
    ld l, c
    db $76
    sbc b
    ld a, c
    db $76
    sbc b
    adc b
    ld l, b
    ld l, c
    add a
    and h
    adc b
    and a
    adc b
    ld e, d
    ld l, d
    ld [hl], a
    sbc b
    db $76
    sbc c
    ld a, b
    ld l, d
    ld [hl], a
    and a
    ld l, c
    ld l, b
    ld a, b
    adc b
    and l
    adc b
    ld a, c
    add a
    adc b
    add a
    ld a, b
    adc b
    sbc b
    ld a, b
    add a
    sbc c
    add a
    sub a
    sub l
    and a
    ld a, c
    ld e, b
    adc b
    ld a, b
    add [hl]
    add [hl]
    add a
    sub [hl]
    ld a, b
    adc b
    db $76
    add a
    ld a, c
    ld l, c
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld e, b
    ld a, b
    db $76
    add a
    sub [hl]
    ld a, b
    ld a, b
    db $76
    add l
    or [hl]
    ld l, b
    ld [hl], a
    add a
    db $76
    adc b
    ld l, b
    ld a, b
    add [hl]
    ld [hl], a
    ld a, c
    ld e, b
    add [hl]
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    ld h, a
    sbc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld a, b
    sub a
    ld a, c
    ld a, b
    adc b
    adc b
    adc b
    add a
    sbc c
    ld [hl], a
    sbc b
    add a
    adc b
    ld a, c
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    ld [hl], l
    adc b
    add [hl]
    sub a
    sbc d
    ld [hl], a
    rst $00
    adc d
    ld e, [hl]
    ld e, h
    ld [hl], a
    cp c
    ld a, h
    ld e, h
    adc c
    ld d, a
    cp b
    or l
    cp b
    adc a
    ld c, c
    or a
    add $a8
    or l
    add $7b
    ld c, e
    ld l, c
    ld a, c
    ld a, $87
    ld a, e
    ld a, [hl-]
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    sub h
    call nz, $a6b5
    ld a, c
    dec sp
    ld [hl], h
    ldh [$e5], a
    sbc b
    db $76
    sub a
    ld l, c
    ld e, d
    ld [hl], l
    sub [hl]
    add a
    ld [hl], a
    db $76
    sub h
    and e
    and a
    ld e, b
    ld e, c
    ld h, [hl]
    and [hl]
    db $76
    ld a, c
    ld d, l
    and [hl]
    ld h, a
    ld a, c
    add hl, sp
    ld l, b
    ld e, c
    ld e, c
    ld c, d
    ld b, a
    ld l, d
    jr c, jr_015_4833

    ld h, l
    ld h, a
    db $76
    ld [hl], a
    add l
    add l
    sub l
    ld [hl], l
    add [hl]
    add [hl]
    add h
    sub l
    ld h, [hl]
    add [hl]
    ld e, b
    ld h, a
    ld [hl], a
    ld e, b
    ld h, a
    ld l, b
    ld d, a
    ld e, b
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    ld h, [hl]
    db $76
    add l
    add [hl]
    ld l, b
    ld h, [hl]
    ld [hl], a
    ld e, b
    ld c, c
    ld h, a
    ld h, a
    ld [hl], l
    or e
    ld l, d
    jr c, jr_015_4860

    ld l, c
    ld [hl], l
    ld h, a
    ld l, b
    ld l, b
    ld e, c
    add [hl]
    ld [hl], l
    sub l
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld e, c
    db $76
    ld a, b
    ld h, [hl]
    ld d, [hl]
    add [hl]
    add l
    ld [hl], a
    add [hl]
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    db $76
    add a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld a, b
    ld e, b
    ld [hl], a
    add [hl]
    add l
    add a
    add a
    add [hl]
    ld [hl], a
    add [hl]
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc c
    sbc d

jr_015_4833:
    adc b
    adc d
    ld d, a
    ld [hl], $64
    add b
    jp Jump_000_263e


    add l
    or e
    ld a, c
    ld h, a
    inc de
    or a
    ld e, h
    ld c, d
    ld e, b
    ld [hl], a
    add [hl]
    or h
    sub a
    add [hl]
    ld l, d
    sub h
    sbc c
    ld h, [hl]
    sub [hl]
    and a
    adc a
    ld [hl], l
    ld a, b
    adc b
    ld e, d
    ld h, e
    jp nc, Jump_015_5ba8

    ld d, a
    ld e, l
    inc l
    ld e, c
    ld c, d
    add h
    and a

jr_015_4860:
    ld [hl], l
    or h
    sbc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld e, b
    ld l, a
    add hl, de
    add l
    or h
    and h
    jp Jump_015_686a


    scf
    and d
    pop af
    add $5a
    db $76
    sub h
    adc c
    ld l, e
    dec hl
    ld a, b
    db $76
    sbc c
    ld [hl], l
    sbc b
    sub a
    ld e, l
    ld [hl], a
    or b
    and $4b
    ld e, c
    and l
    call nz, Call_015_77a7
    ld l, e
    ld h, [hl]
    or l
    ld l, c
    and h
    ld e, a
    sub l
    and a
    sub [hl]
    sub l
    db $e3
    and l
    adc c
    ld e, h
    ld d, [hl]
    pop bc
    add $a6
    sub l
    call nz, Call_015_588a
    daa
    ld c, h
    ld [hl], a
    ld l, b
    or d
    sub $6b
    sub e
    xor c
    add h
    push bc
    and h
    db $e3
    ld a, e
    ld [hl], a
    ld l, l
    sbc c
    adc b
    db $76
    or l
    sbc c
    ld e, e
    ld d, a
    or h
    sub a
    adc d
    ld c, e
    ld a, d
    dec hl
    ld [hl], l
    push bc
    or h
    sbc c
    ld l, c
    ld a, d
    ld e, b
    add a
    add [hl]
    adc b
    sub a
    ld c, [hl]
    ld e, $38
    or l
    add a
    sbc b
    ld l, b
    and l
    add l
    or a
    ld e, e
    ld [hl], a
    adc h
    ld a, [hl-]
    ld c, c
    add a
    sub h
    xor c
    ld e, d
    ld a, b
    ld h, [hl]
    db $d3
    and [hl]
    adc b
    sub a
    sub a
    add a
    adc c
    ld e, c
    adc b
    ld h, [hl]
    sbc c
    ld l, c
    ld l, c
    ld a, b
    sub h
    jp $85a7


    and a
    ld b, a
    ld l, b
    and a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld h, a
    and h
    pop hl
    jp Jump_015_6aaa


    db $db
    ld [hl], h
    or l
    sub a
    ld a, d
    ld e, b
    ld l, c
    ld l, b
    ld l, d
    db $76
    adc b
    db $76
    and a
    add a
    add h
    ld [c], a
    inc sp
    cp b
    ld e, d
    ld h, [hl]
    cp b
    ld e, b
    sub a
    ld e, h
    ld e, b
    ld [hl], a
    db $76
    or h
    xor c
    ld e, b
    adc b
    ld e, h
    ld a, e
    ld l, b
    add a
    ld a, c
    add e
    cp b
    ld e, d
    ld e, e
    ld [hl], a
    add [hl]
    and [hl]
    add l
    ld a, [hl]
    dec hl
    ld e, c
    add [hl]
    ld l, e
    ld l, b
    sub [hl]
    ld l, c
    ld a, b
    ld a, c
    ld l, b
    ld l, e
    ld c, e
    dec a
    ld b, a
    sbc b
    ld e, c
    ld l, c
    ld e, d
    ld l, b
    adc b
    sub [hl]
    add a
    sub a
    ld e, e
    ld c, b
    adc b
    ld l, c
    add a
    ld l, c
    ld a, c
    ld l, c
    ld e, d
    ld l, b
    add l
    add $94
    db $d3
    or [hl]
    add [hl]
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    sub [hl]
    or l
    ld a, b
    and a
    ld l, c
    ld l, d
    ld e, b
    adc b
    ld [hl], l
    ld a, e
    dec l
    ld a, [hl-]
    db $76
    and l
    sbc b
    ld [hl], a
    ld [hl], a
    or e
    and a
    add a
    adc d
    ld c, e
    ld c, d
    ld e, b
    sbc b
    add h
    sbc c
    ld e, c
    ld h, a
    sub l
    or a
    ld a, b
    ld a, c
    add a
    ld [hl], a
    sub [hl]
    sub a
    ld a, c
    ld a, b
    ld e, c
    add [hl]
    and a
    ld l, b
    ld l, c
    ld [hl], a
    ld [hl], a
    sub a
    add a
    add [hl]
    adc b
    add [hl]
    sub l
    or [hl]
    ld a, c
    ld c, e
    ld l, b
    add a
    adc d
    ld [hl], h
    or a
    ld l, d
    ld e, b
    add a
    add l
    or l
    add a
    add [hl]
    add a
    add [hl]
    and l
    adc c
    ld e, c
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add [hl]
    and l
    sbc b
    db $76
    and l
    and a
    ld [hl], a
    sub [hl]
    add [hl]
    ld a, b
    and [hl]
    adc b
    ld l, c
    ld [hl], a
    adc b
    add [hl]
    sbc b
    ld e, d
    ld h, a
    add a
    ld a, c
    ld [hl], a
    adc b
    sub l
    ld a, d
    ld e, c
    ld a, b
    add [hl]
    and l
    and h
    xor b
    ld e, b
    adc b
    ld l, b
    add [hl]
    sub [hl]
    ld a, b
    ld a, b
    sub a
    sub [hl]
    ld [hl], a
    add a
    ld a, b
    ld e, b
    add l
    sub a
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    adc b
    ld l, b
    add a
    add [hl]
    ld a, c
    ld a, b
    ld h, a
    adc b
    ld a, c
    ld a, b
    and l
    adc b
    sub h
    and a
    adc c
    ld e, c
    add a
    sub [hl]
    adc b
    ld e, b
    sbc b
    ld l, b
    sub [hl]
    sub [hl]
    and [hl]
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld l, d
    ld h, a
    sub a
    ld [hl], a
    add a
    sub a
    ld a, b
    ld l, b
    ld l, d
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    ld a, c
    add a
    adc b
    ld l, c
    ld l, c
    ld a, b
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld e, c
    ld [hl], a
    sub [hl]
    add a
    sub a
    ld a, b
    sbc b
    ld l, c
    add [hl]
    adc b
    add [hl]
    adc b
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    db $76
    adc b
    ld l, b
    add [hl]
    add a
    add a
    add a
    sub a
    ld a, b
    add a
    and l
    adc b
    ld l, c
    ld l, c
    add a
    ld a, b
    adc d
    ld h, a
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    ld l, d
    ld d, a
    adc c
    ld [hl], a
    sub a
    add a
    ld a, c
    ld l, c
    add a
    ld a, b
    ld a, c
    ld e, c
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    ld h, a
    adc b
    ld a, b
    ld e, d
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add a
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    add [hl]
    sbc b
    ld l, b
    ld a, b
    sub [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld e, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    adc c
    ld [hl], a
    ld a, b
    db $76
    adc c
    db $76
    sub a
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, b
    adc b
    ld l, b
    add [hl]
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    sub [hl]
    sbc b
    add [hl]
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, c
    add a
    adc c
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld l, c
    add a
    adc b
    add a
    add a
    ld a, b
    add [hl]
    add a
    add a
    add a
    sub l
    sub [hl]
    adc b
    ld l, c
    ld [hl], a
    sub [hl]
    add [hl]
    adc b
    add a
    ld a, b
    ld l, c
    ld [hl], a
    sub [hl]
    and [hl]
    ld a, b
    ld a, b
    ld e, d
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    sub a
    ld a, b
    add l
    and [hl]
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, c
    ld e, c
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, b
    add a
    add [hl]
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld e, c
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    sub a
    add a
    add a
    ld [hl], a
    add a
    add a
    sub [hl]
    add a
    ld h, a
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld l, b
    add a
    adc b
    ld l, b
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    add a
    adc b
    db $76
    sub a
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add [hl]
    sbc b
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, c
    ld l, c
    ld h, a
    sub a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add [hl]
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    add a
    ld a, c
    ld a, b
    ld l, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    sub a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    sub a
    ld a, b
    ld a, b
    db $76
    add a
    adc b
    ld l, b
    add a
    ld l, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    add [hl]
    ld a, b
    adc b
    add a
    add [hl]
    sub [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld l, c
    add a
    ld a, b
    adc b
    ld l, b
    sub a
    db $76
    sub [hl]
    add a
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    add a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    adc c
    ld l, b
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, c
    ld h, a
    sub [hl]
    sub a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    ld l, c
    ld a, c
    ld [hl], a
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    sub a
    add a
    add a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    sub a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    db $76
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld l, c
    ld [hl], a
    add a
    add [hl]
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    add [hl]
    add a
    sub [hl]
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    adc b
    adc b
    add a
    sub [hl]
    adc b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld h, [hl]
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    adc b
    adc c
    ld l, b
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add sp, -$45
    call z, $99cb
    ld h, l
    ld b, d
    nop
    nop
    ld bc, $6724
    sbc d
    db $dd
    rst $38
    rst $38
    adc [hl]
    res 3, b
    ld h, h
    ld [hl+], a
    db $10
    db $10
    inc de
    ld b, l
    ld a, b
    cp e
    sbc $ee
    xor $db
    xor b
    ld [hl], $42
    ld [hl+], a
    ld de, $3512
    ld h, a
    xor d
    cp l
    sbc $ee
    call z, $96aa
    ld h, l
    ld [hl-], a
    ld b, c
    ld [hl+], a
    inc [hl]
    ld d, [hl]
    adc c
    xor e
    call $dddd
    cp d
    sbc b
    ld [hl], l
    ld d, e
    inc sp
    inc hl
    inc [hl]
    sub [hl]
    ld l, b
    sbc d
    cp h
    cp l
    call c, $a9ca
    add [hl]
    ld d, l
    ld b, h
    inc hl
    ld b, e
    ld b, l
    ld h, a
    adc d
    cp h
    cp h
    call z, $a9bb
    add a
    ld [hl], l
    ld d, h
    inc [hl]
    inc [hl]
    ld b, h
    ld h, [hl]
    ld a, c
    sbc d
    cp e
    cp h
    ld a, e
    cp c
    sbc b
    ld h, [hl]
    ld d, l
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    cp e
    xor e
    cp d
    xor c
    ld b, a
    ld d, [hl]
    ld b, l
    ld d, h
    ld b, l
    ld d, [hl]
    ld l, b
    ld a, b
    sbc d
    xor e
    xor e
    cp e
    sbc c
    add a
    db $76
    ld h, l
    ld h, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    sbc d
    sbc d
    xor d
    cp d
    xor c
    adc b
    ld [hl], a
    ld h, l
    ld h, h
    ld d, h
    ld d, l
    sub [hl]
    ld [hl], a
    adc c
    sbc c
    sbc d
    xor e
    xor c
    sub a
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    xor c
    xor c
    xor c
    sbc c
    adc b
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld e, b
    ld a, b
    adc c
    sbc c
    sbc d
    adc d
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc d
    sbc d
    sbc c
    sbc c
    sbc b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, a
    ld d, a
    ld h, a
    adc b
    adc b
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    sbc b
    sbc d
    adc c
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    adc c
    sbc c
    adc b
    ld a, b
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    add a
    adc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    add a
    adc b
    adc c
    sbc b
    adc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    db $76
    add a
    adc b
    adc b
    sbc c
    adc b
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    ld h, a
    ld h, a
    ld h, a
    add a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, c
    adc b
    adc c
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    add [hl]
    ld [hl], a
    add a
    ld a, b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    add a
    adc c
    adc b
    adc b
    adc b
    ld c, b
    xor d
    cp h
    call z, $babc
    xor b
    add [hl]
    ld h, h
    ld b, e
    ld hl, $1011
    nop
    ld de, $3523
    ld h, a
    adc c
    xor h
    cp [hl]
    rst $18
    rst $38
    rst $38
    rst $38
    cp $de
    cp e
    xor c
    add [hl]
    ld h, h
    ld b, d
    pop de
    db $10
    db $10
    db $10
    ld de, $3423
    ld h, [hl]
    adc b
    xor d
    cp h
    db $dd
    sbc $ef
    cp $ed
    cp e
    jp z, $8798

    ld h, l
    ld b, h
    ld [hl-], a
    ld hl, $1221
    inc de
    inc hl
    ld d, l
    ld h, a
    ld a, b
    xor d
    dec hl
    call $dede
    db $dd
    db $dd
    res 7, c
    sbc b
    add a
    ld h, l
    ld d, e
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld h, e
    ld b, h
    ld d, [hl]
    ld h, [hl]
    adc b
    sbc d
    xor e
    call z, $cccd
    db $dd
    call z, $9abb
    sbc b
    ld [hl], a
    add $54
    ld b, e
    ld [hl-], a
    inc sp
    inc hl
    inc [hl]
    ld b, h
    ld h, l
    ld h, a
    ld a, b
    sbc d
    cp d
    cp e
    set 3, h
    adc h
    cp e
    cp d
    xor c
    adc c
    ld [hl], a
    ld h, l
    ld d, l
    ld b, e
    ld b, e
    inc [hl]
    inc sp
    ld b, l
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld c, c
    adc d
    xor d
    cp e
    cp h
    cp e
    res 7, d
    cp d
    xor c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld d, l
    ld b, h
    add h
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    xor d
    xor e
    xor e
    res 7, e
    xor e
    xor c
    sbc c
    and a
    add [hl]
    ld h, [hl]
    ld d, l
    ld b, l
    ld d, h
    ld b, l
    dec [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    add a
    ld a, c
    adc c
    sbc d
    xor e
    ld l, e
    xor d
    xor d
    cp c
    xor d
    adc c
    add a
    db $76
    ld h, l
    ld [hl], l
    ld b, [hl]
    ld d, h
    ld b, l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld [hl], a
    adc b
    adc c
    xor c
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc b
    adc b
    ld h, a
    db $76
    ld h, l
    sub l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, a
    ld h, [hl]
    adc b
    ld a, b
    adc c
    sbc c
    xor d
    xor d
    xor d
    xor c
    xor b
    sbc c
    adc b
    adc b
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld a, b
    ld a, b
    adc b
    adc c
    ld e, c
    xor c
    xor d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld a, b
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld a, b
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    xor c
    sbc b
    sbc c
    add a
    sub a
    ld [hl], a
    sub a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    adc c
    sbc c
    adc d
    sbc c
    sbc c
    ld a, c
    sbc b
    sbc b
    adc b
    add a
    add a
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld l, c
    ld a, c
    sbc c
    sbc b
    sbc d
    sbc b
    sbc c
    sbc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc c
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    sbc b
    add a
    add a
    ld a, b
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    adc c
    adc b
    sbc c
    adc c
    sbc b
    sbc b
    adc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    sbc b
    add a
    sbc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    add [hl]
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc c
    sbc b
    sbc b
    sbc b
    sbc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    adc c
    ld a, b
    adc c
    adc c
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, c
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [$cdab], sp
    sbc $de
    call z, $aacb
    sbc b
    db $76
    ld d, l
    inc sp
    ld [hl+], a
    ld de, $0000
    ldh a, [rP1]
    nop
    ld de, $3312
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc d
    xor d
    call z, $eecd
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    xor $fd
    call c, $99cb
    sub a
    ld [hl], a
    ld h, l
    ld d, e
    inc sp
    ld hl, $e001
    nop
    nop
    ld bc, $1101
    ld hl, $4532
    ld d, l
    ld h, a
    ld a, c
    sbc c
    cp e
    cp l
    call $ef3d
    rst $28
    rst $28
    cp $ee
    xor $dd
    call z, $a9ca
    sbc b
    add a
    ld h, l
    ld d, l
    inc sp
    and e
    ld [hl+], a
    ld hl, $1111
    ld de, $1212
    ld [hl+], a
    inc [hl]
    ld b, h
    ld d, [hl]
    ld e, b
    ld l, b
    sbc b
    xor d
    ld e, e
    call z, $cecd
    sbc $de
    db $dd
    sbc $dd
    call c, $bacc
    xor d
    sbc b
    add a
    ld [hl], a
    add l
    ld d, e
    ld d, e
    inc sp
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld b, e
    inc [hl]
    ld b, l
    ld d, [hl]
    ld h, a
    ld l, b
    adc b
    sbc d
    xor e
    cp e
    cp h
    call z, $dcdc
    call c, $cccd
    call z, $aacb
    xor c
    sbc b
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld h, h
    ld d, e
    ld b, h
    ld b, e
    inc sp
    inc sp
    inc hl
    ld [hl-], a
    ld b, h
    inc [hl]
    dec [hl]
    ld b, [hl]
    ld b, [hl]
    and [hl]
    ld l, b
    adc b
    adc c
    xor d
    xor d
    cp e
    cp h
    cp h
    set 1, e
    set 1, e
    cp e
    cp d
    cp c
    ld e, c
    adc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, l
    ld b, l
    ld b, e
    ld b, h
    inc sp
    ld b, e
    inc [hl]
    ld b, e
    ld b, h
    ld b, h
    or l
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc d
    sbc d
    xor d
    cp e
    cp h
    xor e
    cp h
    cp h
    xor h
    xor e
    ld c, d
    xor d
    xor c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    and l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    db $76
    db $76
    adc b
    adc c
    sbc c
    sbc c
    xor d
    xor d
    xor e
    xor d
    jp z, Jump_015_5bbb

    xor e
    xor d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, h
    ld h, l
    ld d, h
    ld d, h
    or l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    sbc c
    sbc c
    xor d
    xor c
    xor d
    ld e, d
    cp d
    xor d
    xor d
    sbc d
    sbc d
    adc c
    sbc c
    ld a, c
    adc b
    ld l, b
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    and l
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, a
    ld h, a
    db $76
    add a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    ld l, d
    sbc d
    xor d
    sbc d
    xor d
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    sub a
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld h, l
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    sbc b
    ld l, b
    sbc c
    sbc d
    sbc c
    xor c
    sbc d
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, a
    add a
    adc b
    adc b
    ld a, b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    adc b
    add a
    add a
    ld a, b
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], l
    db $76
    ld d, a
    ld d, [hl]
    ld h, a
    ld h, a
    ld d, a
    ld h, a
    ld [hl], a
    ld h, a
    sub a
    add a
    adc b
    adc b
    adc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, c
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    sbc c
    sbc d
    adc c
    sbc c
    sbc c
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    sbc c
    adc c
    adc c
    adc c
    ld l, c
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    ld a, b
    sbc c
    adc b
    sbc b
    sbc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    sub a
    adc c
    ld a, c
    adc c
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    sbc b
    sub a
    sbc b
    adc c
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    sub a
    ld a, b
    ld a, c
    ld a, b
    ld [hl], l
    and e
    sub $6d
    inc l
    jr z, jr_015_53f5

    ld a, b
    add l
    or a
    sub a
    ld c, c
    ld d, l
    xor e
    inc e
    ld h, l
    sbc h
    inc c
    adc a
    ld c, e
    ld c, e
    add d
    ret nc

    call nz, Call_015_69f7
    sub [hl]
    ret z

    or $57
    sub [hl]
    add [hl]
    adc b
    jr z, jr_015_53fd

    jp nz, Jump_015_588b

    ld l, e
    dec c
    ld c, e
    ld l, d
    ld e, h
    inc hl
    ld d, b
    rst $20
    ld l, e
    ld e, d
    and [hl]
    add a
    ld l, l
    add hl, sp
    ld d, d
    ret nc

    pop af
    jp z, Jump_000_3a4b

    and d
    push de
    jp z, $8466

    sub l
    or [hl]
    ld a, b
    ld l, c
    adc c
    ld h, a
    add [hl]
    ld c, e
    ld [hl], h
    sub a
    ld e, h
    ld l, $2f
    ld h, e
    xor b
    dec a
    ld h, a
    ld h, [hl]
    add l
    or l
    sub [hl]
    sub l
    ld [hl], a
    ld a, c
    ld [hl], l
    sub [hl]
    and a
    sub d
    or a
    adc [hl]
    ld l, l
    adc b
    jp nc, Jump_000_0fbb

    ld c, $0a
    ld l, b
    ld a, b
    ld e, h
    dec sp
    push bc
    add [hl]
    sub l
    sub [hl]
    scf
    ld [hl], a
    add [hl]
    sub [hl]
    sub a
    sub [hl]
    ld b, a
    ret nz

    call nc, Call_015_765a
    or h
    db $e4
    jp z, $8967

    xor h
    ld c, d
    sub l
    and [hl]
    add [hl]

jr_015_53f5:
    sub h
    push bc
    add [hl]
    ld e, e
    add hl, hl
    ld l, [hl]
    ld e, e
    ld b, [hl]

jr_015_53fd:
    or l
    ld a, c
    add [hl]
    inc [hl]
    and h
    xor e
    jr c, jr_015_547e

    or [hl]
    adc b
    ld a, d
    add [hl]
    sub a
    db $76
    sub l
    ld [hl], l
    and e
    and [hl]
    sbc h
    ld [hl], a
    and [hl]
    push af
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld a, [hl-]
    ld d, a
    ld a, b
    ld a, c
    db $76
    ld a, e
    ld d, [hl]
    call nz, $889a
    ld [hl], a
    ld a, c
    inc a
    ld [hl], l
    adc d
    ld c, c
    add l
    sub $6d
    dec sp
    scf
    ld h, l
    ld a, c
    ld e, c
    ld d, a
    add a
    sub a
    sub [hl]
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld e, c
    ld l, c
    ld l, d
    ld a, [hl-]
    ld [hl], l
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld l, e
    ld l, l
    ld e, c
    ld c, e
    ld d, h
    or l
    sub a
    and d
    or [hl]
    or [hl]
    sub a
    add [hl]
    xor c
    ld a, c
    add l
    adc b
    ld [hl], l
    or h
    adc b
    ld a, b
    sub a
    adc b
    ld a, b
    ld l, c
    ld l, d
    ld c, b
    adc d
    add a
    xor b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    sub h
    and [hl]
    ld l, d
    add [hl]
    sub a
    sub [hl]
    and l
    adc b
    ld [hl], a
    ld [hl], a
    cp b
    add a
    ld a, b
    ld h, a
    ld a, c
    add a
    and l
    add [hl]
    and [hl]
    sub [hl]
    adc c
    ld [hl], a
    inc a
    ld c, b

jr_015_547e:
    db $76
    and h
    sbc c
    ld e, c
    ld c, c
    ld l, c
    db $76
    and l
    xor c
    ld e, e
    ld l, b
    ld h, [hl]
    sub h
    sub [hl]
    sub a
    ld a, c
    ld a, b
    add a
    sub [hl]
    ld l, d
    ld l, b
    add a
    ld [hl], a
    add a
    sbc b
    ld [hl], h
    adc b
    ld a, c
    ld l, b
    ld h, a
    adc b
    ld a, b
    sub a
    sub [hl]
    sub l
    ld [hl], a
    add [hl]
    and l
    adc b
    sub a
    add [hl]
    adc b
    ld e, d
    db $76
    adc b
    ld l, c
    ld l, c
    ld a, b
    sbc b
    ld h, a
    ld [hl], a
    push bc
    and [hl]
    and l
    and l
    xor b
    ld [hl], a
    adc c
    adc b
    ld a, b
    ld l, d
    ld e, c
    ld [hl], a
    sub a
    sbc b
    ld a, b
    ld l, b
    ld a, b
    ld h, a
    add a
    adc b
    adc b
    ld l, b
    sub [hl]
    sub a
    adc b
    ld e, c
    ld d, a
    adc b
    add [hl]
    adc c
    ld l, d
    ld a, c
    ld h, [hl]
    sub a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld a, c
    ld l, d
    ld [hl], a
    ld [hl], a
    ld l, b
    add a
    ld a, b
    add [hl]
    adc b
    sub a
    sub a
    sub [hl]
    ld a, c
    ld a, b
    sub l
    adc b
    adc c
    ld e, b
    add a
    add a
    ld [hl], a
    add a
    add a
    db $76
    sub a
    ld l, b
    ld l, c
    ld [hl], a
    and [hl]
    adc b
    add a
    ld l, c
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    sub a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld h, a
    sub [hl]
    and a
    ld a, c
    ld e, b
    ld l, b
    ld a, b
    add [hl]
    sub [hl]
    adc c
    ld l, c
    ld e, c
    db $76
    add [hl]
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    add [hl]
    sub [hl]
    add a
    adc b
    ld l, b
    ld l, b
    ld [hl], a
    adc c
    ld l, d
    adc b
    and [hl]
    sub [hl]
    add a
    add a
    sub a
    ld [hl], a
    sub [hl]
    sbc b
    ld l, d
    ld [hl], a
    add [hl]
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld l, c
    ld e, c
    ld a, b
    ld [hl], a
    add a
    adc c
    ld l, b
    ld a, b
    db $76
    sub h
    sbc b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    ld e, c
    ld l, c
    ld [hl], a
    add a
    add a
    sbc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    sub [hl]
    add a
    ld a, c
    add a
    add [hl]
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add a
    sub a
    adc b
    ld a, b
    sub a
    add [hl]
    add a
    ld e, b
    ld a, c
    ld l, c
    adc b
    ld [hl], l
    sub [hl]
    ld a, c
    ld a, c
    ld l, c
    adc b
    ld a, b
    add a
    add [hl]
    ld h, a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld e, c
    db $76
    adc b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld h, a
    sub l
    sbc b
    ld a, c
    adc b
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld l, b
    add a
    sub [hl]
    sub [hl]
    sub a
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    adc b
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    ld l, c
    ld h, a
    add a
    add [hl]
    add a
    add a
    add a
    add a
    add [hl]
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub a
    adc b
    add a
    ld a, c
    ld a, c
    adc b
    ld [hl], a
    add [hl]
    add [hl]
    add a
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld l, b
    sub [hl]
    ld a, c
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    ld l, b
    add a
    sub a
    sbc b
    add a
    add a
    adc b
    adc b
    ld l, c
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    adc c
    ld [hl], a
    sub [hl]
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    add a
    ld a, b
    add [hl]
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, c
    add a
    add a
    adc b
    adc b
    adc c
    ld a, b
    ld a, b
    add a
    ld a, c
    ld e, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    sub a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    db $76
    sub a
    sub [hl]
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    add [hl]
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc c
    add a
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    sub a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    adc b
    adc c
    ld a, b
    ld a, b
    ld a, c
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    add a
    adc b
    add a
    ld [hl], a
    db $76
    add a
    adc b
    ld l, c
    ld l, c
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, c
    ld l, b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc c
    ld a, b
    adc b
    ld a, b
    add a
    add a
    sub a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, c
    ld a, b
    add a
    sub a
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    adc b
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, c
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    sbc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b

Call_015_588a:
    ld a, b

Jump_015_588b:
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld h, a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc [hl]
    ld h, b
    inc a
    ld hl, sp+$22
    sbc l
    and l
    ld c, b
    cp d
    ld h, h
    ld a, c
    xor b
    ld d, [hl]
    adc c
    add [hl]
    ld a, b
    ld l, c
    sbc d
    sbc c
    cp e
    res 5, c
    adc b
    adc b
    ld d, l
    ld b, h
    inc [hl]
    ld de, $2212
    ld hl, $4734
    ld h, a
    ld a, d
    cp h
    call z, $ffdc
    cp $dd
    sbc $db
    cp c
    sbc c
    db $76
    ld b, h
    ld b, e
    jp nz, $1200

    ld [hl-], a
    ld bc, $6625
    ld h, a
    ld l, d
    cp h
    cp h
    cp l
    rst $28
    db $ed
    call c, $aadd
    sbc c
    xor b
    ld [hl], l
    ld b, h
    ld d, l
    ld b, d
    db $10
    inc [hl]
    ld b, d
    ld [hl+], a
    ld b, [hl]
    ld h, a
    ld h, a
    ld a, d
    cp e
    dec sp
    call $ccdd
    call $a9cc
    sbc c
    xor b
    ld [hl], h
    ld d, h
    ld h, h
    ld b, d
    inc hl
    inc [hl]
    ld b, e
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc d
    xor d
    xor e
    call z, $bbcc
    cp h
    jp c, $98a9

    sub a
    ld [hl], l
    push bc
    ld d, h
    inc sp
    inc sp
    inc [hl]
    inc sp
    ld b, h
    ld h, [hl]
    ld d, a
    ld a, b
    sbc c
    xor c
    xor h
    cp h
    cp e
    cp e
    sbc e
    cp d
    sbc c
    sbc c
    add a
    ld d, [hl]
    ld h, l
    ld d, l
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld h, a
    ld h, a
    ld a, c
    ld e, d
    adc d
    xor e
    cp h
    cp e
    xor e
    xor h
    xor c
    sbc c
    adc b
    add a
    ld h, [hl]
    ld h, l
    ld b, l
    ld b, h
    ld b, l
    ld [hl], h
    ld b, l
    ld b, [hl]
    ld h, a
    ld h, a
    adc c
    sbc b
    xor c
    xor e
    cp e
    xor e
    xor d
    cp d
    xor c
    adc c
    adc b
    and a
    db $76
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, a
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    xor d
    xor d
    ld a, e
    xor d
    xor d
    adc c
    sbc c
    add a
    ld [hl], a
    db $76
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    db $76
    db $76
    ld l, b
    sbc b
    sbc b
    xor c
    sbc d
    cp c
    xor c
    xor d
    xor c
    sbc c
    adc b
    add a
    db $76
    db $76
    ld h, [hl]
    ld d, l
    sub [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc c
    adc c
    adc c
    xor c
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    sbc b
    add a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    ld l, c
    xor d
    sbc c
    xor b
    sbc c
    adc b
    adc b
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    add a
    ld [hl], a
    db $76
    add [hl]
    db $76
    ld h, a
    ld d, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc d
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld a, b
    add [hl]
    add [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    add a
    adc b
    adc b
    ld a, c
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc c
    adc b
    adc c
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    add a
    ld a, b
    sub a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc c
    adc b
    sbc b
    sbc b
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    adc b
    adc c
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, c
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
    ld [hl], a
    db $76
    ld [hl], a
    ld l, b
    cp e
    and h
    ld e, l
    db $fc
    ld d, h
    adc h
    and h
    inc hl
    ld a, b
    ld d, d
    ld h, $97
    ld d, l
    ld a, e
    cp b
    ld a, b
    adc e
    sub a
    ld a, c
    sbc b
    ld d, l
    ld [hl], a
    db $76
    ld d, [hl]
    ld l, b
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    sbc c
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    add a
    ld h, a
    ld h, a
    add a
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sub a
    ld [hl-], a
    ld e, b
    sub e
    ld bc, $9858

jr_015_5b38:
    ld b, e
    ld l, d
    xor c
    ld a, b
    daa
    ld l, e
    ld [hl], l
    ld b, $78
    ld b, d
    ld h, [hl]
    ld l, e
    ld a, b
    adc b
    db $db
    reti


    ld a, d
    rst $18
    sbc d
    ld e, b
    adc d
    sbc c
    dec h
    ld e, e
    adc c
    ld h, a
    adc c
    xor c
    sbc b
    adc e
    sbc c
    ld d, [hl]
    ld c, c
    ld e, c
    inc d
    ld d, $66
    ld b, e
    ld [hl], $98
    add [hl]
    ld a, b
    xor d
    and a
    add a
    sbc b
    sub l
    db $76
    sbc b
    add [hl]
    ld h, a
    sbc d
    sbc d
    adc d
    xor h
    cp e
    ld c, c
    sbc e
    sbc c
    db $76
    ld l, b
    add [hl]
    ld d, l
    ld d, [hl]
    add a
    ld d, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    ld h, [hl]
    and a
    ld l, b
    ld d, h
    ld d, l
    ld e, b
    db $76
    ld e, b
    adc d
    sbc b
    sbc e
    adc h
    sbc h
    ld l, e
    ld e, [hl]
    ld l, c
    db $76
    ld h, [hl]
    sub [hl]
    ld a, d
    ld e, e
    sbc c
    ld a, e
    ld l, d
    sbc c
    and a
    ld e, b
    sub a
    ld h, a
    ld d, l
    add l
    ld b, a
    jr c, jr_015_5b38

    ld b, a
    ld a, b
    ld e, e
    ld e, e
    inc l
    ld c, h
    ld l, c

Jump_015_5ba8:
    ld e, b
    ld e, c
    ld l, b
    ld e, b
    ld l, d
    ld a, c
    ld a, d
    adc d
    adc e
    adc d
    xor d
    sbc c
    sub a
    sub a
    sub a
    db $76
    add a
    ld [hl], a
    db $76

Jump_015_5bbb:
    add [hl]
    sub a
    add a
    add [hl]
    sub a
    add [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    adc c
    adc b
    sbc c
    adc b
    adc b
    ld a, c
    ld a, b
    ld l, d
    adc c
    ld l, d
    ld a, h
    ld l, h
    ld e, e
    ld a, b
    add a
    and h
    sub h
    and h
    sub h
    ld [hl], e
    or d
    sub e
    or h
    and d
    or h
    and e
    or [hl]
    sub a
    ld l, c
    ld c, d
    dec sp
    ld a, [hl-]
    ld d, a
    add [hl]
    sub a
    adc d
    ld l, d
    and l
    sub $b7
    and a
    cp b
    and [hl]
    sub a
    and l
    and a
    add [hl]
    sub a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    ld h, a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    adc c
    adc c
    adc b
    sbc b
    adc c
    sbc b
    adc b
    adc b
    ld a, c
    and a
    add [hl]
    and c
    jp nc, $c3d1

    and l
    sub l
    or h
    and l
    sub a
    ld l, b
    ld e, d
    ld c, c
    ld d, a
    sub h
    add l
    sub a
    ld a, c
    ld l, c
    adc b
    and [hl]
    or l
    and a
    adc d
    ld l, d
    ld l, c
    add a
    sub [hl]
    sub a
    sub [hl]
    sbc b
    add a
    ld a, b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld h, a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    ret z

    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    add [hl]
    sub h
    or e
    or c
    ret nc

    pop hl
    ldh [$f0], a
    pop hl
    ldh a, [$f1]
    push bc
    sbc b
    ld a, c
    ld a, d
    ld l, c
    adc b
    sub l
    call nz, $d264
    db $e3
    push bc
    adc b
    ld a, c
    add [hl]
    and l
    sub [hl]
    adc b
    ld e, d
    ld c, e
    dec sp
    ld c, d
    ld c, d
    ld e, c
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    add [hl]
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, c
    ld a, c
    adc b
    adc b
    adc b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld d, [hl]
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, e
    ld c, h
    ld a, [hl-]
    ld [hl], a
    sub a
    ld a, d
    ld l, d
    ld e, d
    ld a, b
    adc b
    ld [hl], a
    sub a
    and [hl]
    adc b
    ld a, d
    ld e, e
    ld e, e
    ld c, e
    inc a
    inc a
    ld c, e
    ld c, d
    sbc c
    ld l, b
    ld l, d
    ld e, d
    ld c, e
    inc a
    inc a
    ld e, $3b
    ld e, c
    ld e, c
    ld l, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    or a
    adc b
    ld a, c
    ld a, b
    ld l, c
    ld l, d
    ld l, c
    ld l, d
    ld a, b
    sub [hl]
    sub [hl]
    add a
    sub [hl]
    and [hl]
    or e
    jp nz, Jump_015_7935

    ld c, l
    dec l
    dec sp
    ld h, a
    add a
    add a
    adc b
    add a
    add [hl]
    add a
    ld a, c
    ld c, e
    ld c, c
    ld e, e
    ld a, l
    inc a
    inc a
    ld c, d
    add [hl]
    and [hl]
    sub [hl]
    sub a
    add a
    add a
    adc b
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld l, d
    ld e, d
    ld c, d
    ld e, e
    dec a
    rrca
    inc e
    ld e, b
    ld a, b
    cp b
    ld l, c
    ld a, b
    add a
    ld a, c
    ld l, c
    ld e, c
    add a
    add l
    or h
    and [hl]
    sub a
    sub l
    sbc b
    ld a, b
    add l
    ld [hl], l
    sub a
    sub a
    ld a, b
    add a
    add [hl]
    add a
    adc b
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld e, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, c
    ld e, d
    ld e, d
    ld a, d
    ld e, c
    ld h, a
    ld a, b
    add a
    add l
    or e
    call nz, $97a5
    and l
    sub a
    add a
    sub l
    and [hl]
    adc b
    ld l, c
    ld a, b
    ld e, e
    inc a
    ld c, d
    ld e, d
    ld e, c
    add [hl]
    sub [hl]
    sub a
    add [hl]
    sub [hl]
    adc c
    ld l, c
    ld l, b
    ld a, c
    ld [hl], a
    ld a, b
    add a
    sub a
    add [hl]
    sub [hl]
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    sbc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    add [hl]
    adc b
    adc b
    ld l, d
    ld e, c
    ld l, c
    ld l, b
    sub [hl]
    sub [hl]
    sub l
    and l
    and [hl]
    ld a, b
    ld a, c
    ld e, c
    ld l, d
    ld l, c
    ld l, c
    ld l, c
    add a
    sub [hl]
    and l
    sub [hl]
    db $76
    sub a
    ld [hl], a
    adc b
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    cp b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add [hl]
    sub l
    or l
    or h
    and l
    sub a
    add a
    add a
    add [hl]
    and h
    inc sp
    call nz, $88a6
    ld l, c
    ld l, c
    ld e, d
    ld l, b
    ld [hl], a
    sub [hl]
    or h
    or h
    and a
    ld l, d
    ld c, h
    dec l
    adc h
    inc a
    dec l
    inc l
    ld c, e
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld l, d
    ld c, e
    ld e, c
    ld a, c
    ld e, d
    ld l, d
    ld e, d
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    sub [hl]
    sub l
    or l
    adc b
    adc c
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld e, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld a, c
    ld e, c
    ld l, b
    add a
    db $76
    sub [hl]
    sub a
    sub [hl]
    add a
    add a
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    add a
    ld a, c
    ld a, c
    ld l, d
    ld e, d
    ld e, d
    ld l, b
    add l
    or e
    or l
    sub a
    adc b
    ld [hl], a
    sub [hl]
    sbc b
    ld [hl], a
    sub a
    add a
    adc b
    add a
    add a
    sub a
    add [hl]
    and e
    db $d3
    and [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and l
    sub a
    add a
    db $76
    sub [hl]
    sub l
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld l, d
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    add a
    ld e, b
    add a
    adc b
    adc b
    add [hl]
    sub [hl]
    add a
    add a
    sub [hl]
    adc b
    ld a, c
    ld l, b
    ld a, b
    add a
    add a
    ld a, c
    ld a, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld l, b
    ld a, c
    ld e, d
    ld c, e
    ld c, e
    ld c, d
    ld e, d
    ld e, d
    ld l, c
    ld l, c
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    add a
    sub a
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld l, c
    ld l, c
    ld a, b
    add a
    ld [hl], a
    add a
    sub [hl]
    and l
    and [hl]
    ld [hl], a
    add l
    and [hl]
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, b
    add a
    sub a
    ld a, c
    ld e, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, d
    ld a, b
    ld a, c
    ld l, d
    ld c, e
    ld c, d
    ld l, b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld l, c
    ld l, c
    ld l, d
    ld e, d
    ld e, d
    ld e, c
    ld e, d
    ld l, d
    ld e, d
    ld e, d
    ld l, b
    adc b
    ld l, c
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    add a
    ld a, b
    add a
    add a
    sub [hl]
    sub l
    sub [hl]
    add a
    adc b
    add a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    sub l
    sub [hl]
    add a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld l, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld e, b
    ld a, b
    ld a, b
    ld a, c
    ld l, d
    ld e, c
    ld l, b
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld l, d
    ld e, d
    ld e, d
    ld e, c
    ld e, d
    ld a, d
    ld l, d
    ld e, d
    ld l, c
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    add [hl]
    and [hl]
    add a
    sub a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld d, a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    adc d
    ld l, c
    ld a, b
    ld [hl], a
    sub [hl]
    sub [hl]
    and [hl]
    sub [hl]
    sub [hl]
    add a
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    adc b
    xor b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    add a
    add a
    sub [hl]
    sub [hl]
    sub l
    add l
    and [hl]
    sub [hl]
    adc b
    ld a, c
    ld e, c
    ld l, c
    ld l, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld d, a
    sub a
    add [hl]
    sub [hl]
    and [hl]
    sub [hl]
    sub l
    sub [hl]
    and l
    and [hl]
    and h
    or [hl]
    sub a
    add [hl]
    adc b
    ld a, c
    ld a, d
    ld l, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, c
    ld l, b
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub l
    and l
    sub [hl]
    ld [hl], a
    add a
    sub a
    add a
    add a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld h, a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    ld l, d
    ld e, d
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    cp b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, c
    ld l, b
    ld l, b
    ld a, b
    add [hl]
    sub l
    and l
    and h
    ld [hl], l
    or h
    or h
    or l
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    add [hl]
    sub [hl]
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    cp b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    sub l
    and [hl]
    and l
    and l
    and l
    and h
    or h
    ld [hl], h
    or h
    and h
    or l
    and l
    sub a
    add a
    add [hl]
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc c
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add a
    add a
    sub [hl]
    sub [hl]
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    ld a, c
    ld l, d
    di
    add hl, sp
    ld c, e
    db $76
    ld l, e
    ld d, a
    sbc b
    add a
    add a
    add l
    xor b
    ld l, c
    add a
    sub a
    ld a, d
    ld c, c
    ld l, b
    ld c, d
    ld e, b
    add [hl]
    sub a
    ld e, d
    ld d, a
    sub [hl]
    ld a, h
    inc a
    ld [hl], l
    xor c
    ld a, b
    ld c, e
    inc a
    xor b
    add a
    jp Jump_015_7799


    and [hl]
    sub l
    adc c
    ld a, b
    ld a, d
    ld e, c
    add a
    sub a
    ld a, c
    ld c, d
    ld [hl], a
    ld [hl], h
    or a
    ld e, d
    ld h, l
    sub a
    sub a
    sub a
    ld a, b
    ld h, a
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    ld [hl], a
    ld a, b
    ld e, c
    adc b
    sub l
    add $79
    ld e, c
    ld [hl], a
    adc b
    ld e, d
    ld l, b
    ld a, b
    sub l
    call nc, Call_015_67a5
    ld l, b
    ld a, b
    adc b
    ld c, d
    ld l, b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld h, a
    sub a
    adc c
    ld d, a
    add a
    sub [hl]
    sbc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub a
    add a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_67a5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_686a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_69f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_6aaa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_765a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_7799:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_77a7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_015_7935:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_015_7b7a:
    rst $38
    rst $38

Jump_015_7b7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
