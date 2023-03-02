; disasSembly of "lsdj.gb"
SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    ld h, b
    ld b, b
    or b
    ld b, c
    ldh [rSCY], a
    add b
    ld b, h
    or b
    ld d, e
    ldh a, [$63]
    db $10
    ld h, a
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
    ld b, e
    ld e, c
    ld c, l
    ld b, e
    ld c, h
    ld d, b
    nop
    dec l
    dec l
    nop
    dec l

jr_010_4039:
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
    nop
    nop
    ld b, h
    ld d, d
    dec l
    ld sp, $3031
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $a908
    xor d
    xor d
    sbc c
    sbc b
    add a
    db $76
    ld h, e
    ld b, c
    ld [hl+], a
    nop
    stop
    db $10
    ld bc, $0181
    ld de, $2212
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    adc b
    ld sp, hl
    sbc c
    sbc d
    sbc e
    xor d
    xor h
    xor h
    cp e
    call z, $dddc
    sbc $ee
    xor $fe
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    cp $ff
    cp $ee
    cp $7e
    xor $ed
    db $dd
    db $ed
    call c, $bcdc
    cp h
    cp e
    cp d
    xor d
    sbc d
    xor c
    sbc c
    sbc b
    jr c, jr_010_4039

    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, l
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]
    inc hl
    inc hl
    inc sp
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [de], a
    ld de, $2221
    ld [de], a
    ld hl, $2242
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl-], a
    inc hl
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    ld b, h
    inc [hl]
    dec [hl]
    ld b, l
    add l
    ld b, l
    ld d, h
    ld d, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    cp b
    adc b
    adc c
    adc c
    sbc b
    sbc d
    sbc c
    xor c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor d
    xor c
    xor e
    xor d
    xor e
    sbc e
    cp d
    cp d
    cp d
    xor e
    xor d
    xor e
    xor d
    cp d
    cp d
    cp d
    sbc d
    xor d
    xor c
    adc d
    xor d
    xor d
    sbc c
    xor d
    sbc b
    xor c
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, c
    add a
    adc b
    adc b
    adc c
    adc b
    sbc b
    sbc b
    adc c
    adc c
    adc b
    sbc b
    sbc b
    adc b
    sbc c
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    adc b
    adc b
    adc c
    sbc b
    sbc b
    adc c
    adc b
    adc c
    adc b
    sbc b
    adc b
    sbc b
    adc b
    add a
    adc b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, [hl+]
    xor h
    cp h
    call c, $c8cb
    sbc c
    ld l, c
    ld sp, $0111
    jr nz, jr_010_41be

    ld [bc], a

jr_010_41be:
    ld [de], a
    ld d, c
    ld d, h
    ld [hl], h
    ld e, b
    xor c
    cp e
    xor l
    sbc $eb
    db $fc
    rst $18
    call z, $a8eb
    sbc c
    adc b
    ld h, l
    or l
    ld d, h
    inc hl
    inc de
    ld b, h
    ld b, e
    inc h
    ld d, l
    db $76
    jr z, jr_010_4255

    ld a, b
    adc c
    cp d
    cp l
    xor c
    ld e, c
    res 5, h
    adc d
    sbc c
    sub [hl]
    sub a
    ld h, l
    ld [hl], a
    ld b, l
    ld [hl], $47
    ld d, h
    ld c, b
    ld b, h
    ld [hl], a
    ld h, a
    db $76
    ld l, b
    sbc c
    adc b
    xor d
    sbc b
    sbc e
    adc e
    xor d
    sub a
    sbc b
    ld a, d
    adc b
    ld h, a
    ld b, a
    and [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    db $76
    scf
    ld [hl], a
    db $76
    add a
    add a
    sbc c
    ld a, c
    sbc c
    adc c
    adc b
    ld a, d
    ld [hl], a
    xor b
    sbc b
    add [hl]
    ld [hl], a
    ld l, b
    add a
    ld d, [hl]
    add l
    ld h, [hl]
    db $76
    ld [hl], h
    add a
    ld d, [hl]
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    sbc b
    sbc b
    and a
    adc d
    sbc b
    adc b
    xor b
    ld l, b
    sub a
    sub a
    db $76
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld d, a
    ld [hl], a
    sub a
    ld a, b
    adc b
    add a
    adc b
    sbc b
    sbc c
    adc b
    xor b
    ld a, b
    adc b
    sbc b
    adc c
    ld [hl], a
    adc c
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    db $76
    adc b
    adc b
    ld l, b
    add a
    adc c
    ld a, c
    adc c
    add a

jr_010_4255:
    sub a
    sub a
    adc b
    adc c
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    adc b
    add a
    adc c
    add a
    adc b
    ld a, c
    adc b
    adc b
    adc b
    ld l, c
    adc b
    sub a
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    adc c
    adc b
    ld l, c
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    sub a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld l, c
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    sub a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    sbc b
    adc b
    adc b
    add a
    adc c
    ld a, b
    adc b
    add a
    adc b
    sub a
    adc b
    adc b
    adc b
    add a
    adc c
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, c
    ld a, b
    add a
    add a
    adc b
    adc b
    add a
    ld a, c
    ld a, b
    add a
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    ld l, c
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld l, e
    ld c, d
    ld a, c
    ld h, [hl]
    and h
    or [hl]
    ld [hl], a
    and h
    ret nc

    db $e4
    sub l
    pop de
    pop hl
    db $d3
    sbc b
    ld h, [hl]
    sbc b
    ld c, [hl]
    inc l
    dec a
    ld e, c
    ld a, b
    ld a, c
    ld e, h
    rra
    dec hl
    ld l, c
    ld a, c
    ld a, c
    ld e, d
    ld l, c
    ld [$585b], a
    sub l
    or l
    ld a, e
    ld c, d
    ld e, c
    sub l
    or e
    or [hl]
    sub l
    or h
    db $d3
    call nz, $82c3
    or a
    sub [hl]
    or [hl]
    adc d
    ld l, d
    ld l, c
    add a
    ld a, d
    ld l, c
    adc b
    ld l, h
    ld c, l
    ld c, l
    ld e, c
    ld l, c
    cp b
    adc c
    ld a, c
    ld a, c
    ld a, d
    ld l, d
    ld a, c
    ld a, d
    ld a, d
    ld a, c
    sub l
    add $a5
    or [hl]
    and a
    or l
    sub l
    push bc
    and a
    and a
    adc b
    adc c
    sub a
    adc b
    adc c
    ld a, c
    ld e, e
    ld [hl], a
    adc b
    ld a, b
    sub a
    adc b
    ld h, a
    adc b
    adc b
    ld a, d
    ld e, e
    ld e, c
    ld a, b
    adc b
    ld l, e
    ld e, c
    ld a, c
    ld e, d
    ld l, b
    ld [hl], a
    sub [hl]
    ld a, b
    ld l, b
    ld a, b
    ld [hl], l
    or h
    and [hl]
    add [hl]
    and l
    add l
    and l
    sub [hl]
    db $76
    sub [hl]
    add l
    and h
    add a
    ld [hl], a
    sbc b
    ld l, b
    ld l, b
    ld l, c
    ld e, d
    ld a, [hl-]
    ld e, c
    ld c, h
    add hl, hl
    ld l, c
    ld c, d
    ld e, b
    ld e, b
    ld l, b
    ld l, b
    ld h, [hl]
    db $76
    add [hl]
    add [hl]
    add l
    add [hl]
    sub [hl]
    ld [hl], a
    add [hl]
    ld [hl], a
    db $76
    add a
    ld [hl], a
    add a
    db $76
    ld a, b
    ld l, b
    add [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    ld l, c
    ld e, b
    ld [hl], a
    ld l, b
    ld a, b
    ld e, d
    ld e, c
    ld e, d
    ld c, c
    ld l, b
    ld l, b
    db $76
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add a
    ld [hl], a
    add a
    add [hl]
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add [hl]
    sub l
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add [hl]
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld l, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    add [hl]
    add [hl]
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    add [hl]
    add a
    add a
    sub [hl]
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    db $76
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld l, b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, c
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b

jr_010_4460:
    adc b
    ld a, b
    ld a, b
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
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    add d
    xor b
    ld e, d
    ld a, b
    db $76
    adc b
    ld l, d
    ld h, a
    ld a, d
    ld d, [hl]
    and l
    ld l, c
    ld d, a
    ld a, c
    dec sp
    ld d, [hl]
    and a
    ld a, c
    ld l, d
    ld e, d
    ld l, d
    ld c, l
    dec l
    ld e, c
    ld l, d
    ld l, c
    ld h, a
    sbc c
    dec hl
    db $76
    adc b
    ld d, a
    ld [hl], h
    ld a, b
    ld h, a
    db $76
    sub h
    sub [hl]
    sub e
    or h
    and l
    ld a, b
    db $76
    add [hl]
    sub l
    add [hl]
    ld a, d
    ld c, b
    ld h, l
    sub a
    ld e, d
    ld e, b
    ld c, d
    ld c, b
    ld e, d
    ld c, c

Call_010_44b8:
    ld c, d
    dec hl
    ld d, a
    ld e, d
    ld c, b
    ld h, a
    ld d, [hl]
    add a
    ld d, [hl]
    add l
    add h
    ret nz

    jp $9395


    jp nz, $86b3

    add l
    add l
    add l
    add l
    ld [hl], a
    ld l, b
    ld a, b
    ld a, [hl-]
    ld a, [hl-]
    add hl, sp
    ld [hl], l
    add [hl]
    ld e, d
    ld a, [hl-]
    dec hl
    jr z, jr_010_4460

    ld l, c
    dec e
    daa
    add l
    ld l, b
    ld d, e
    jp nz, $b3a0

    sub l
    add h
    sub h
    and b
    or h
    ld a, b
    ld h, h
    add a
    ld c, b
    ld e, b
    ld e, b
    ld c, b
    ld d, [hl]
    ld [hl], l
    ld e, d
    add hl, hl
    ld d, a
    ld d, a
    ld [hl], l
    db $76
    ld [hl], l
    ld h, a
    ld h, a
    ld e, c
    add hl, hl
    ld [hl], h
    adc b
    ld a, [hl+]
    ld a, b
    ld d, [hl]
    ld h, [hl]
    sub h
    add [hl]
    ld l, b
    ld d, [hl]
    db $76
    db $76
    ld l, b
    ld h, a
    db $76
    ld h, [hl]
    sub h
    and e
    ld a, b
    dec [hl]
    sub [hl]
    ld l, b
    ld [hl], h
    sub l
    add [hl]
    ld c, c
    add e
    and [hl]
    ld h, a
    add a
    ld l, c
    ld c, d
    ld e, b
    ld h, a
    ld e, d
    ret


    ld a, b
    ld c, b
    ld [hl], a
    db $76
    ld l, c
    ld e, b
    ld l, b
    db $76
    and h
    jp nz, $87b5

    ld [hl], a
    ld l, c
    add e
    ld [hl], e
    and [hl]
    add l
    sub h
    jp nz, $a4b4

    or d
    and a
    add [hl]
    add a
    add a
    ld e, d
    ld c, d
    ld e, d
    dec sp
    ld [hl], a
    ld c, l
    inc l
    dec l
    ld a, [hl-]
    ld a, b
    ld e, d
    db $76
    and l
    sub [hl]
    sub l
    sub [hl]
    sub [hl]
    sub l
    or h
    and [hl]
    ld [hl], a
    add l
    or l
    sub l
    and a
    add [hl]
    and l
    and h
    or l
    sbc b
    ld [hl], a
    sub a
    ld e, h
    ld e, b
    ld a, c
    ld a, b
    ld e, d
    ld c, h
    ld c, e
    ld c, d
    add a
    adc c
    ld a, b
    ld a, c
    ld [hl], a
    and l
    and a
    adc b
    ld a, b
    db $76
    xor b
    ld e, e
    ld a, b
    sub [hl]
    adc b
    sbc b
    ld a, b
    add a
    sbc b
    add a
    sbc b
    add [hl]
    push bc
    or [hl]
    adc c
    ld l, d
    ld [hl], a
    sub a
    ld l, b
    and a
    ld l, e
    ld c, e
    ld l, c
    ld a, b
    adc c
    ld l, c
    adc b
    adc c
    ld l, d
    ld a, d
    ld [hl], a
    and a
    adc c
    ld e, e
    adc d
    ld a, b
    sbc c
    ld e, e
    ld [hl], a
    and [hl]
    and [hl]
    or [hl]
    sub a
    and [hl]
    sub a
    or h
    or a
    adc b
    adc d
    ld a, b
    jr c, @-$74

    ld a, b
    sbc b
    sbc b
    ld l, l
    dec l
    ld l, c
    adc b
    adc d
    ld l, d
    ld e, h
    ld e, e
    ld a, c
    ld a, d
    ld e, [hl]
    xor h
    ld a, c
    ld l, e
    ld [hl], a
    xor c
    ld e, d
    adc b
    and [hl]
    or h
    push de
    or h
    db $e4
    add $a7
    and [hl]
    or l
    sbc b
    and l
    cp c
    ld a, c
    sbc b
    ld a, e
    ld l, d
    ld a, d
    ld a, c
    ld l, e
    ld a, d
    adc c
    adc c
    ld a, e
    ld a, b
    sbc b
    ld a, b
    xor b
    ld a, c
    adc e
    ld l, d
    adc b
    and a
    or l
    and a
    sub [hl]
    or [hl]
    or l
    add $b6
    and [hl]
    xor c
    ld l, c
    sub a
    sbc b
    xor b
    adc c
    adc c
    adc c
    sbc c
    ld l, d
    ld a, c
    sub [hl]
    cp b
    ld a, d
    ld l, d
    sbc b
    adc d
    cp h
    ld a, c
    adc c
    adc d
    ld a, b
    adc c
    adc b
    adc c
    sub [hl]
    sbc c
    ld a, c
    sbc b
    ld a, c
    or h
    push bc
    or [hl]
    add l
    db $d3
    sub $89
    sub a
    or [hl]
    sbc c
    adc c
    adc c
    sub a
    and [hl]
    xor b
    sbc c
    ld l, e
    sub [hl]
    cp b
    cp b
    sbc c
    ld l, h
    ld l, b
    sbc c
    ld a, e
    ld e, h
    ld e, e
    ld l, e
    ld e, h
    ld c, l
    ld c, h
    ld l, c
    adc c
    ld a, d
    ld a, b
    add l
    call nc, Call_010_79aa
    or l
    call nc, $d6c4
    sbc d
    sub a
    and [hl]
    db $d3
    rst $00
    sbc b
    and a
    adc d
    cp b
    adc c
    ld l, e
    ld e, h
    ld a, c
    ld l, [hl]
    ld l, $6a
    ld a, d
    ld l, h
    ld c, h
    ld e, c
    sbc b
    adc b
    and a
    sub [hl]
    add [hl]
    and [hl]
    or [hl]
    and a
    and l
    or [hl]
    and a
    sub a
    or [hl]
    sbc b
    or l
    ret z

    ld a, d
    adc c
    ld a, b
    and a
    xor d
    ld a, b
    xor b
    ld a, d
    sbc b
    ld l, e
    ld e, h
    ld e, e
    ld a, e
    ld l, e
    ld e, d
    sbc c
    ld l, l
    inc a
    ld l, b
    sbc b
    ld h, [hl]
    or l
    or a
    sbc c
    ld a, b
    or l
    or [hl]
    or h
    cp b
    adc b
    adc c
    add a
    xor b
    ld l, c
    and [hl]
    xor d
    ld a, c
    and [hl]
    adc c
    sbc b
    adc b
    sbc b
    adc c
    add a
    adc d
    ld l, e
    adc b
    adc c
    adc c
    adc b
    adc b
    adc c
    sbc d
    db $76
    or a
    ld a, d
    ld a, c
    ld l, e
    ld l, b
    and [hl]
    sbc b
    sbc d
    ld c, h
    ld e, d
    ld a, c
    adc b
    sub [hl]
    and a
    ld d, a
    sub [hl]
    and [hl]
    and a
    or e
    push bc
    and a
    and [hl]
    sbc b
    sub a
    sbc c
    ld e, h
    dec a
    inc a
    ld e, e
    ld l, d
    cp h
    ld e, d
    ld l, e
    ld l, d
    adc c
    ld l, e
    ld l, d
    ld l, b
    and a
    adc c
    add [hl]
    or [hl]
    sub a
    sbc b
    add [hl]
    or l
    inc [hl]
    or l
    xor b
    add a
    and l
    add $a6
    sbc b
    sub a
    adc e
    ld c, h
    ld c, d
    ld a, c
    ld a, b
    adc d
    ld e, h
    sbc h
    ld e, c
    sub a
    sbc b
    ld a, c
    ld l, d
    ld l, d
    ld a, d
    ld e, h
    ld c, e
    ld e, e
    ld l, c
    sub a
    ld a, e
    ld l, c
    sub a
    ld h, a
    and [hl]
    and [hl]
    and l
    call nc, $a7b6
    sub [hl]
    jp Jump_010_79b8


    ld a, e
    ld l, d
    ld a, c
    ld a, b
    adc b
    sbc l
    ld l, b
    adc c
    ld a, d
    ld l, c
    adc b
    sbc b
    adc b
    ld a, d
    ld l, d
    add a
    or [hl]
    adc d
    ld l, d
    ld l, d
    add a
    adc b
    adc b
    and [hl]
    sub a
    or h
    add $97
    and [hl]
    and a
    and [hl]
    sbc c
    ld a, c
    ld a, c
    ld a, c
    add a
    adc c
    ld c, b
    add a
    sub a
    adc c
    ld e, d
    sub h
    or a
    add a
    sbc c
    ld l, d
    add a
    adc c
    ld l, c
    ld a, e
    ld c, h
    ld c, h
    adc h
    ld e, d
    ld l, e
    ld e, d
    adc b
    adc b
    sub [hl]
    sub a
    or e
    push de
    and l
    push bc
    or h
    call nz, $87b7
    ld e, b
    add [hl]
    and [hl]
    adc c
    ld a, b
    adc b
    ld l, e
    ld e, c
    add a
    sbc b
    ld a, d
    ld e, d
    ld l, e
    ld e, h
    ld c, e
    ld l, d
    sbc d
    ld e, e
    ld e, d
    ld a, c
    ld [hl], a
    sub [hl]
    or [hl]
    sub [hl]
    and [hl]
    sub [hl]
    call nz, $b5a4
    sbc b
    ld a, b
    sub a
    add a
    add a
    sub a
    adc b
    add a
    sub a
    adc b
    ld a, b
    add a
    ld a, c
    ld e, e
    ld a, c
    ld l, d
    ld a, d
    ld e, d
    ld a, b
    adc b
    ld e, d
    adc b
    ld l, d
    ld e, b
    sub [hl]
    sub a
    add [hl]
    sub [hl]
    and [hl]
    add [hl]
    jp nz, $97d4

    sub [hl]
    add a
    ld c, b
    add a
    sub [hl]
    and [hl]
    adc b
    add [hl]
    sbc b
    ld a, b
    sub [hl]
    sub a
    ld a, c
    ld l, c
    add a
    ld l, d
    ld a, b
    ld l, d
    sbc d
    ld l, c
    ld a, c
    ld l, c
    ld e, e
    ld e, c
    add a
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    adc b
    ld l, c
    ld l, c
    add a
    sub l
    adc b
    ld e, d
    ld l, b
    ld a, b
    add h
    and [hl]
    add a
    and h
    or l
    sub l
    sub [hl]
    and h
    and [hl]
    add [hl]
    sub [hl]
    sub [hl]
    ld l, b
    ld a, b
    ld a, c
    ld e, h
    ld a, [hl-]
    ld [hl], a
    adc b
    ld e, c
    ld e, d
    ld c, e
    ld e, b
    add a
    ld l, c
    ld e, d
    ld e, b
    add a
    adc d
    ld h, [hl]
    and l
    sub l
    or h
    and l
    and [hl]
    add a
    and l
    sub a
    add [hl]
    sub l
    and h
    and l
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld a, c
    ld e, e
    ld e, c
    ld e, d
    ld c, e
    ld l, b
    add [hl]
    add a
    ld e, d
    ld e, d
    dec sp
    ld e, b
    adc b
    sub [hl]
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    sub l
    adc c
    ld h, l
    or h
    and h
    and [hl]
    add [hl]
    and h
    or h
    and l
    sub h
    sub a
    add a
    ld a, b
    ld a, b
    db $76
    add a
    ld [hl], a
    ld l, d
    ld c, c
    ld e, d
    ld c, d
    ld e, b
    ld a, b
    ld l, c
    ld c, d
    db $76
    ld h, a
    ld [hl], a
    add [hl]
    ld a, e
    ld c, c
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld [hl], a
    ld e, c
    ld [hl], l
    and l
    sub a
    db $76
    add a
    ld d, a
    ld a, b
    add l
    sub h
    sub [hl]
    add [hl]
    add a
    add [hl]
    sub [hl]
    ld a, c
    ld h, a
    ld l, b
    add l
    sbc b
    ld l, c
    ld l, b
    cp c
    ld [hl], a
    ld a, b
    ld l, b
    ld l, c
    ld h, a
    ld a, c
    ld a, [hl-]
    ld l, b
    ld l, d
    ld e, c
    ld e, c
    ld c, d
    ld l, b
    add h
    and e
    ld h, [hl]
    ld [hl], a
    sub h
    and h
    sub l
    and l
    add [hl]
    add [hl]
    sub [hl]
    sub [hl]
    ld e, d
    ld h, a
    ld a, b
    ld l, c
    ld l, b
    ld l, c
    adc b
    ld l, c
    ld e, c
    ld e, d
    ld c, c
    ld [hl], a
    ld l, c
    ld e, d
    ld e, c
    ld h, [hl]
    sub [hl]
    add a
    ld [hl], a
    db $76
    add l
    or l
    ld [hl], l
    and h
    and [hl]
    add a
    ld a, b
    ld a, b
    ld h, a
    add [hl]
    sub [hl]
    ld a, c
    ld c, c
    ld [hl], a
    db $76
    sub [hl]
    adc b
    ld l, b
    ld h, [hl]
    add [hl]
    add [hl]
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld l, c
    ld c, e
    ld c, c
    ld l, b
    ld c, c
    ld [hl], a
    ld a, b
    xor b
    ld [hl], a
    add l
    sub a
    ld e, c
    ld h, a
    ld [hl], a
    ld [hl], a
    sub l
    add a
    ld l, b
    ld h, a
    add h
    and h
    sub h
    or h
    ld h, l
    and h
    sub l
    add [hl]
    add [hl]
    add [hl]
    adc b
    ld e, c
    ld h, a
    ld a, b
    ld c, c
    ld e, c
    ld c, d
    ld l, b
    ld a, b
    ld e, c
    sbc c
    ld c, c
    ld [hl], a
    ld l, b
    add [hl]
    adc b
    ld h, [hl]
    add a
    add [hl]
    db $76
    ld [hl], a
    db $76
    add a
    ld [hl], a
    db $76
    add l
    ld b, h
    and l
    sub l
    add a
    add [hl]
    sub l
    add [hl]
    ld [hl], a
    ld l, b
    ld l, b
    ld e, b
    ld e, c
    ld [hl], a
    ld l, c
    ld l, b
    ld l, c
    xor d
    ld e, b
    add [hl]
    add [hl]
    ld l, c
    ld e, b
    add [hl]
    ld [hl], a
    add l
    or h
    sub l
    add a
    ld a, b
    db $76
    add [hl]
    sub h
    ld [hl], h
    sub l
    sub e
    or h
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld a, c
    ld e, b
    ld c, e
    ld c, c
    add [hl]
    ld [hl], a
    ld l, b
    ld e, c
    ld e, b
    db $76
    add [hl]
    add l
    sub [hl]
    ld [hl], a
    add l
    sub [hl]
    add a
    ld l, c
    ld l, b
    ld l, c
    ld e, b
    ld a, b
    sub a
    sub l
    sub [hl]
    add [hl]
    add a
    add [hl]
    sub h
    sub [hl]
    add l
    sub l
    sub [hl]
    sub h
    and l
    ld a, b
    ld l, c
    ld [hl], l
    ld b, [hl]
    ld a, b
    ld l, b
    ld l, c
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld e, c
    ld [hl], a
    ld l, d
    ld a, [hl-]
    db $76
    ld a, b
    ld l, b
    ld e, d
    ld a, c
    ld l, b
    add h
    and l
    add [hl]
    db $76
    sub [hl]
    and e
    and h
    sub [hl]
    add l
    add l
    and h
    add a
    db $76
    add [hl]
    ld e, b
    ld l, b
    ld l, c
    ld e, c
    ld h, a
    ld a, b
    ld l, b
    ld e, b
    ld [hl], a
    ld l, c
    ld e, d
    dec sp
    inc l
    ld e, c
    ld c, c
    ld l, b
    xor d
    ld e, b
    ld l, b
    ld [hl], a
    add [hl]
    sub l
    and l
    sub [hl]
    add a
    add [hl]
    add [hl]
    sub h
    and l
    add a
    ld [hl], a
    sub l
    ld h, l
    add a
    ld [hl], a
    add a
    ld l, c
    ld l, b
    ld e, d
    ld e, c
    ld e, b
    ld [hl], a
    ld a, b
    ld e, c
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    ld l, b
    add l
    sub [hl]
    db $76
    sub [hl]
    add [hl]
    sub l
    sub [hl]
    add [hl]
    adc b
    ld h, a
    ld h, a
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    sub [hl]
    db $76
    sub h
    and [hl]
    db $76
    add [hl]
    ld a, b
    ld [hl], a
    ld l, c
    ld a, c
    ld l, b
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld e, c
    ld l, b
    ld h, a
    add a
    ld l, c
    ld [hl], l
    and [hl]
    add [hl]
    sub [hl]
    ld a, b
    ld h, a
    add [hl]
    sub h
    and l
    sub h
    and [hl]
    ld a, b
    ld [hl], a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    ld l, c
    ld e, b
    ld a, b
    adc b
    ld l, b
    ld l, c
    ld e, c
    ld c, c
    ld e, e
    inc a
    ld a, [hl-]
    ld c, d
    ld h, a
    ld a, b
    ld h, l
    and l
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add [hl]
    add [hl]
    add a
    ld [hl], a
    add [hl]
    add [hl]
    and e
    and l
    and e
    or h
    sub [hl]
    sub h
    and l
    add a
    add [hl]
    xor b
    ld e, b
    ld [hl], a
    ld a, b
    ld l, c
    ld c, e
    add hl, sp
    ld e, d
    ld c, c
    ld l, b
    ld l, c
    ld e, d
    ld c, b
    add a
    ld a, b
    ld [hl], l
    db $76
    db $76
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    sub [hl]
    ld a, b
    ld [hl], l
    and l
    sub l
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, d
    ld d, a
    sub [hl]
    ld a, b
    ld l, b
    ld l, b
    ld l, b
    ld a, b
    ld l, b
    add [hl]
    ld [hl], a
    add [hl]
    adc b
    ld l, b
    ld l, c
    and a
    add a
    add a
    ld a, c
    ld e, e
    ld c, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    sub h
    and l
    sub h
    ld h, l
    add [hl]
    sub h
    sub [hl]
    add a
    ld l, c
    ld [hl], l
    sub a
    ld l, c
    ld h, a
    adc b
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld l, c
    xor b
    ld [hl], a
    ld l, b
    ld a, b
    ld l, c
    ld e, c
    ld e, c
    ld e, d
    ld e, b
    ld l, b
    add a
    ld l, c
    ld h, a
    sub [hl]
    add [hl]
    sub l
    db $76
    add [hl]
    sub l
    sub l
    and l
    and l
    add a
    add a
    add l
    sub [hl]
    adc b
    ld l, c
    db $76
    add [hl]
    adc c
    ld l, b
    and a
    ld [hl], a
    ld a, b
    ld l, c
    ld e, d
    ld c, d
    ld e, c
    ld l, c
    ld l, c
    ld a, b
    ld l, b
    ld [hl], a
    add [hl]
    add a
    add [hl]
    sub l
    ld h, h
    and l
    sub l
    or l
    sub a
    adc b
    ld [hl], a
    sub l
    sub a
    add a
    add a
    ld l, c
    ld e, c
    ld a, b
    ld a, b
    ld l, b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld e, d
    ld e, c
    ld a, b
    ld a, b
    ld e, c
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    add [hl]
    and l
    sub [hl]
    ld a, b
    db $76
    and [hl]
    add a
    add [hl]
    sub a
    ld [hl], a
    add a
    add [hl]
    adc b
    ld [hl], a
    add [hl]
    and h
    and [hl]
    ld [hl], l
    add a
    add [hl]
    sub [hl]
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    ld a, d
    ld c, d
    ld l, b
    ld a, b
    add a
    ld a, b
    ld l, c
    ld e, c
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld h, a
    sub a
    ld l, b
    add a
    ld [hl], a
    sub l
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld h, a
    sub l
    and l
    sub a
    ld a, c
    ld l, b
    ld [hl], a
    add a
    add a
    ld a, c
    ld e, d
    ld e, d
    ld e, c
    ld e, d
    ld e, d
    ld c, d
    xor b
    ld l, d
    ld e, b
    ld a, b
    ld [hl], a
    sub l
    sub [hl]
    add a
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld a, b
    add a
    db $76
    sub l
    ld [hl], l
    and [hl]
    add [hl]
    and l
    add a
    add a
    sub [hl]
    add [hl]
    ld a, c
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld e, c
    ld e, d
    ld c, d
    adc b
    ld l, b
    ld l, b
    ld a, b
    db $76
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    add [hl]
    sub [hl]
    sub [hl]
    add a
    add [hl]
    sub a
    ld a, b
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    db $76
    sub a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    sub [hl]
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add [hl]
    add [hl]
    adc b
    add a
    sub [hl]
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld l, b
    ld l, b
    ld [hl], a
    ld a, c
    ld e, d
    ld l, c
    ld l, c
    adc b
    ld l, c
    ld l, b
    ld [hl], a
    add a
    sub [hl]
    sub [hl]
    add [hl]
    sub l
    sub l
    or h
    and [hl]
    and l
    sub [hl]
    adc c
    ld e, b
    ld h, a
    add a
    ld a, b
    ld a, c
    ld l, d
    ld e, c
    ld h, a
    adc b
    ld a, b
    ld l, d
    ld e, c
    ld l, c
    ld l, c
    ld a, b
    ld a, c
    ld e, d
    ld a, b
    ld a, b
    ld h, a
    sub l
    sub [hl]
    and l
    sub a
    add [hl]
    and l
    sub [hl]
    and l
    sub [hl]
    add [hl]
    add [hl]
    sub a
    ld a, c
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld [hl], a
    add a
    ld l, c
    ld a, b
    ld [hl], a
    add a
    sub a
    ld a, c
    ld e, c
    ld l, b
    sub [hl]
    add a
    add a
    sub [hl]
    add a
    add a
    add a
    add [hl]
    add a
    add [hl]
    sbc b
    ld l, b
    ld h, [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    sub a
    add a
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    adc b
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    add a
    add a
    ld h, a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    ld l, b
    ld a, b
    ld l, c
    ld l, c
    ld e, d
    ld e, d
    ld c, d
    ld a, b
    ld l, c
    ld [hl], a
    add a
    add a
    add a
    add a
    and l
    adc b
    ld [hl], a
    sub a
    add a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    sbc b
    ld l, b
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    adc b
    ld l, c
    sub a
    add a
    ld a, c
    ld l, d
    ld l, c
    ld e, e
    ld c, c
    ld l, c
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    sub l
    and [hl]
    db $76
    sub [hl]
    sub [hl]
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    sub a
    adc b
    adc b
    ld l, b
    add a
    sub [hl]
    add [hl]
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    sub a
    add a
    ld a, c
    db $76
    sub a
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    add a
    sub a
    sub [hl]
    add a
    add a
    sub [hl]
    db $76
    sub a
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld l, d
    ld l, c
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    xor b
    ld [hl], a
    ld a, c
    ld l, c
    ld a, c
    ld l, b
    ld a, b
    sub [hl]
    sub [hl]
    add a
    add [hl]
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    and l
    ld h, [hl]
    sub [hl]
    adc b
    add [hl]
    and [hl]
    adc c
    ld h, a
    add a
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld a, c
    ld l, c
    sbc e
    ld e, c
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    add a
    ld a, b
    add [hl]
    sub [hl]
    and [hl]
    adc b
    ld [hl], a
    add [hl]
    and l
    ld h, [hl]
    and [hl]
    sub a
    adc b
    add a
    sub [hl]
    adc b
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    sbc c
    add a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    add a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    sub [hl]
    sub a
    db $76
    and [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub l
    sub a
    adc b
    ld a, b
    ld a, b
    sub a
    ld l, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    add a
    adc c
    ld l, b
    ld a, b
    adc b
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    sbc c
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    add a
    sub [hl]
    sub a
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    sub a
    sub [hl]
    db $76
    add a
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld l, c
    ld l, c
    ld l, b
    ld a, c
    ld l, c
    ld l, c
    ld e, c
    ld l, c
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    sub a
    sub a
    add [hl]
    and [hl]
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    sub a
    add a
    add a
    adc c
    ld l, b
    ld a, c
    ld a, b
    add a
    add a
    ld a, c
    ld l, c
    ld l, d
    ld l, b
    add a
    adc c
    ld a, c
    ld [hl], a
    sub a
    sub a
    add [hl]
    sub a
    add [hl]
    sub a
    add a
    sub a
    add a
    sub a
    sub [hl]
    add a
    sub [hl]
    sub a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    adc b
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    sub [hl]
    sub a
    add a
    sub a
    ld a, b
    add a
    sub [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, c
    ld a, b
    ld a, c
    ld [hl], a
    adc c
    ld l, c
    ld a, b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    sub a
    ld l, b
    add [hl]
    adc b
    add [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    add a
    sub a
    ld l, d
    ld e, d
    ld e, c
    ld l, c
    adc d
    ld e, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld h, a
    adc b
    add a
    add a
    ld a, b
    add [hl]
    and [hl]
    sub a
    adc b
    add a
    sub a
    sub [hl]
    sub a
    adc b
    add a
    sub a
    ld a, c
    ld a, c
    ld l, b
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld l, b
    add a
    adc b
    ld l, c
    ld l, b
    ld a, b
    sub [hl]
    sub a
    ld a, c
    ld [hl], a
    ld [hl], a
    and [hl]
    adc b
    add a
    add [hl]
    sub a
    add a
    add [hl]
    and a
    ld [hl], a
    sub a
    add a
    add a
    and [hl]
    add a
    ld a, c
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld l, c
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    sub a
    add a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add [hl]
    sub a
    add a
    adc b
    add [hl]
    ld h, [hl]
    sub a
    add a
    adc b
    add [hl]
    sbc b
    add a
    add a
    adc b
    adc b
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    ld a, c
    ld e, c
    adc c
    ld a, b
    adc b
    ld a, c
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    add a
    adc c
    ld l, c
    ld l, b
    ld a, c
    add a
    adc b
    ld a, c
    adc b
    ld a, c
    ld a, b
    xor b
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    add a
    sub a
    sub a
    adc b
    ld a, b
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub a
    sub [hl]
    add a
    add a
    add a
    add a
    sub a
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, c
    ld l, b
    adc b
    sbc c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add [hl]
    sbc b
    add [hl]
    and [hl]
    sub [hl]
    ld a, b
    adc b
    add [hl]
    sub [hl]
    add a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld l, c
    sbc b
    ld a, b
    adc c
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld l, b
    add a
    sub [hl]
    sub [hl]
    sub a
    adc b
    add [hl]
    add a
    sub [hl]
    add a
    add a
    add a
    ld a, b
    adc b
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld l, d
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    add [hl]
    sub [hl]
    sub a
    ld [hl], a
    sub [hl]
    add a
    sub a
    add a
    adc b
    ld [hl], a
    sub [hl]
    sub [hl]
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, c
    ld l, c
    ld a, b
    ld l, b
    add a
    adc c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld l, b
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    adc c
    ld a, b
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, c
    ld a, b
    adc b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld l, c
    ld [hl], a
    sub [hl]
    add a
    add [hl]
    add a
    add a
    adc b
    add a
    sub a
    adc b
    ld a, b
    add a
    ld a, b
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, c
    ld a, b
    ld l, c
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add a
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    adc b
    add a
    sub a
    add a
    adc b
    add a
    add a
    ld a, c
    ld a, b
    add a
    adc b
    adc b
    add a
    adc c
    ld l, b
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld l, b
    ld l, b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    ld a, c
    add [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, b
    adc c
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld l, d
    ld h, a
    adc b
    ld l, c
    ld l, b
    adc b
    ld l, c
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    add a
    add a
    add a
    adc b
    add a
    add a
    adc b
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld l, c
    ld a, c
    ld l, c
    ld l, b
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    ld h, a
    add [hl]
    sub a
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    sub a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, d
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    sub [hl]
    add a
    sub [hl]
    add [hl]
    sub a
    sub [hl]
    sub [hl]
    add a
    add [hl]
    sub a
    ld a, c
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld e, c
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add [hl]
    sub a
    add a
    ld a, b
    add a
    add a
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    sbc c
    ld e, c
    ld l, b
    ld a, b
    adc b
    ld l, d
    ld e, c
    ld a, b
    adc b
    add a
    add a
    add a
    add a
    add [hl]
    add a
    add a
    db $76
    add a
    sub a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, c
    ld a, b
    ld a, c
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    ld a, c
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    add a
    add a
    sub a
    add [hl]
    sub a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    sbc b
    ld a, b
    add a
    add a
    sub a
    add a
    add a
    add a
    add a
    sub [hl]
    sub [hl]
    add a
    add a
    add a
    sub a
    add [hl]
    db $76
    sbc b
    add a
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    sub [hl]
    sub [hl]
    add a
    add a
    ld [hl], a
    sub [hl]
    sub a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, c
    ld l, c
    ld l, b
    adc b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub a
    add a
    sub [hl]
    adc b
    ld a, b
    add a
    adc b
    add [hl]
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    sub [hl]
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld l, c
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    sub [hl]
    add a
    add a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    add a
    adc b
    ld a, b
    add a
    sub [hl]
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    sub a
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    sub [hl]
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    sub a
    sub a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    sub a
    add a
    add [hl]
    adc b
    add a
    add [hl]
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, c
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    sub [hl]
    adc b
    add a
    sub a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add a
    adc b
    add [hl]
    sub a
    ld [hl], a
    add a
    add a
    add a
    sub a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld l, b
    add a
    sub [hl]
    add a
    add a
    add [hl]
    sub a
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    add [hl]
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    sub [hl]
    add a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add [hl]
    sub a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    add [hl]
    sub [hl]
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    sub a
    add [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, c
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a

Jump_010_5266:
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add [hl]
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    add a
    add a
    add a
    sub [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    add a
    sub a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld a, c
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    db $76
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    sub [hl]

Jump_010_53a7:
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    daa
    sub a
    add a
    add l
    and [hl]
    add a
    ld l, h
    ld c, d
    ld l, c
    ld e, d
    ld l, c
    dec e
    ld c, d
    ld e, $2c
    inc a
    adc b
    and l
    ld l, d
    ld a, [hl-]
    dec sp
    add hl, hl
    ld [hl], h
    and l
    ld c, c
    ld [hl], l
    add e
    ret nc

    jp $f093


    db $e3
    ld l, b
    ld e, b
    ld h, a
    db $76
    add l
    ld a, c
    ld e, b
    ld h, a
    ld l, c
    ld c, d
    ld a, [hl+]
    ld h, a
    sub l
    add [hl]
    adc b
    ld a, [hl-]
    adc b
    add e
    pop de
    cp b
    ld e, c
    ld a, b
    ld l, c
    ld c, d
    ld h, a
    ld a, b
    add a
    ld a, c
    inc a
    ld e, b
    sub l
    and [hl]
    adc b
    ld a, b
    ld a, b
    sub h
    or [hl]
    sub l
    or l
    and l
    or h
    or [hl]
    and l
    call nz, $96a6
    or [hl]
    sbc b
    sub a
    and [hl]
    sbc c
    ld c, l
    ld e, d
    ld l, d
    ld e, l
    ld c, e
    ld e, l
    ld e, d
    adc c
    ld l, e
    ld e, l
    inc a
    ld l, c
    sub a
    and a
    or l
    and a
    and a
    and l
    push bc
    or [hl]
    and [hl]
    and a
    sbc b
    adc c
    adc b
    sub a
    and [hl]
    xor b
    add a
    ld l, b
    add a
    and a
    sbc c
    ld a, c
    adc b
    ld e, e
    ld a, b
    adc c
    ld a, c
    ld a, d
    ld e, e
    ld l, d
    ld l, e
    ld [hl], a
    ld a, d
    sbc c
    ld a, c
    add a
    and a
    sub [hl]
    sub a
    ld a, c
    add [hl]
    or l
    sub a
    sub l
    or a
    add a
    add a
    sub l
    or h
    sub a
    adc b
    ld a, c
    ld l, c
    sub a
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    ld l, e
    ld c, d
    ld [hl], a
    adc c
    ld a, b
    adc b
    db $76
    ld a, b
    ld h, a
    sub a
    ld a, c
    db $76
    sbc b
    add a
    sub a
    adc b
    add a
    ld a, c
    add [hl]
    sub a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    sub a
    add a
    and [hl]
    adc b
    add [hl]
    xor b
    add a
    and [hl]
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    sbc c
    ld e, d
    ld l, b
    sbc d
    ld a, b
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    adc b
    ld l, d
    ld a, b
    adc c
    ld l, c
    add a
    ld a, d
    db $76
    and a
    add a
    ld a, b
    adc b
    sub l
    and a
    add [hl]
    and [hl]
    adc c
    sub l
    and [hl]
    and l
    adc c
    ld a, b
    add a
    ld l, c
    sub a
    adc b
    ld a, c
    ld a, d
    ld l, b
    add a
    ld a, d
    add a
    adc c
    ld l, c
    add [hl]
    ld a, d
    ld l, b
    ld a, c
    ld [hl], a
    sbc c
    ld l, c
    add a
    adc c
    db $76
    sbc b
    ld h, a
    sbc b
    ld l, b
    and h
    sbc b
    sub l
    or l
    add a
    and l
    sub a
    add a
    adc c
    ld e, c
    ld [hl], a
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld a, c
    ld l, c
    ld a, b
    ld l, b
    add a
    ld a, d
    ld l, b
    add a
    ld l, c
    add l
    sbc b
    add a
    adc b
    db $76
    and [hl]
    ld a, b
    add [hl]
    sbc b
    ld h, a
    sub [hl]
    sub a
    add [hl]
    add a
    add [hl]
    adc b
    ld l, c
    add [hl]
    sbc b
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    ld [hl], a
    sub l
    ld a, c
    db $76
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, b
    ld l, d
    ld e, b
    ld [hl], a
    ld e, c
    ld a, b
    ld a, b
    ld l, c
    add a
    ld l, b
    add a
    ld a, b
    add [hl]
    add a
    db $76
    sub a
    ld [hl], a
    add [hl]
    adc b
    ld d, l
    sbc b
    ld h, [hl]
    sub a
    ld a, b
    ld [hl], l
    sub a
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld e, b
    add a
    adc d
    ld l, c
    ld l, c
    ld e, b
    add a
    ld e, b
    adc b
    ld a, b
    ld h, a
    add a
    ld e, c
    db $76
    add [hl]
    add [hl]
    sub a
    ld e, b
    ld h, a
    ld h, a
    add a
    ld a, c
    ld d, a
    ld a, b
    db $76
    add a
    ld l, b
    sub l
    sub a
    db $76
    sub a
    ld l, b
    ld h, a
    ld a, c
    add [hl]
    adc b
    ld c, d
    ld [hl], a
    ld l, c
    ld h, [hl]
    adc b
    ld d, a
    sub a
    ld e, c
    ld [hl], a
    ld a, c
    ld h, [hl]
    sub [hl]
    ld [hl], a
    add [hl]
    add a
    add [hl]
    adc b
    ld h, [hl]
    ld a, b
    db $76
    sub l
    adc c
    ld h, [hl]
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld h, [hl]
    adc c
    ld e, b
    ld h, [hl]
    ld l, c
    ld d, a
    ld a, b
    ld a, b
    ld a, c
    ld c, b
    add [hl]
    ld l, b
    ld [hl], a
    ld a, c
    ld h, [hl]
    add a
    ld [hl], a
    add a
    ld l, c
    add [hl]
    ld a, c
    ld h, a
    add a
    ld a, c
    ld d, a
    add a
    db $76
    adc b
    db $76
    sub [hl]
    sub a
    ld h, [hl]
    adc b
    ld l, b
    sub l
    sub a
    ld [hl], l
    add a
    db $76
    add a
    ld a, b
    ld h, a
    ld [hl], a
    db $76
    adc b
    ld a, b
    add a
    ld c, d
    ld [hl], a
    ld e, c
    ld [hl], l
    ld [hl], a
    ld e, c
    add l
    ld a, c
    ld [hl], a
    ld l, b
    add l
    add a
    adc b
    ld [hl], l
    and [hl]
    ld h, [hl]
    sub l
    adc b
    add h
    sub a
    ld d, l
    sub a
    ld h, a
    add a
    ld l, c
    db $76
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add [hl]
    ld a, c
    db $76
    adc b
    ld [hl], a
    ld l, b
    xor b
    ld [hl], a
    ld l, d
    ld h, [hl]
    add a
    ld l, c
    ld [hl], a
    ld a, c
    ld h, [hl]
    sub [hl]
    ld a, b
    db $76
    adc b
    add l
    or [hl]
    db $76
    add l
    ld a, b
    sub h
    adc b
    add l
    ld a, c
    ld h, a
    add a
    ld e, c
    add [hl]
    ld a, b
    ld a, b
    ld l, c
    ld e, c
    ld [hl], a
    ld l, b
    add a
    ld a, c
    ld l, b
    add [hl]
    ld a, d
    ld h, a
    add a
    ld l, b
    ld [hl], a
    ld l, b
    add [hl]
    ld a, b
    db $76
    sub a
    ld l, b
    ld [hl], a
    sub a
    sub [hl]
    ld a, c
    db $76
    sub a
    ld e, b
    sub l
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    sub l
    adc b
    add a
    ld [hl], a
    ld l, b
    sub [hl]
    ld a, b
    ld [hl], a
    adc c
    ld e, c
    ld [hl], a
    ld l, c
    ld [hl], a
    ld a, c
    ld e, c
    sub a
    ld l, b
    adc b
    ld e, d
    ld [hl], l
    sub a
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    sub l
    adc c
    ld h, a
    sub a
    ld l, c
    add [hl]
    sub a
    ld [hl], a
    and [hl]
    adc b
    add a
    ld a, c
    ld h, a
    and a
    ld e, c
    add a
    ld a, c
    ld h, a
    adc c
    ld c, b
    ld a, d
    ld l, b
    sub a
    ld l, d
    ld h, a
    adc b
    ld h, a
    sub a
    add a
    sub [hl]
    sub a
    ld [hl], a
    sub a
    ld a, b
    add a
    sbc b
    db $76
    sub a
    ld [hl], a
    sub a
    add [hl]
    ld h, [hl]
    xor b
    ld l, c
    sub a
    ld h, a
    and [hl]
    ld a, c
    ld [hl], a
    sub a
    ld e, d
    ld a, b
    ld c, e
    ld l, b
    ld a, c
    ld c, c
    ld a, c
    sbc b
    adc b
    adc b
    ld h, a
    sbc b
    ld l, b
    sub a
    adc b
    db $76
    sub a
    add l
    xor b
    ld l, c
    add l
    adc d
    ld h, [hl]
    adc b
    ld a, b
    sub a
    ld l, c
    add [hl]
    adc c
    db $76
    sbc c
    ld e, e
    ld h, a
    adc c
    ld l, c
    ld a, c
    ld e, b
    sub [hl]
    ld a, c
    db $76
    adc c
    ld l, b
    sbc c
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    adc d
    ld [hl], a
    adc b
    adc d
    db $76
    sbc c
    ld h, a
    sbc b
    sbc b
    sub l
    adc c
    ld [hl], a
    adc b
    add a
    sub l
    sbc c
    add [hl]
    add a
    sub [hl]
    ld a, d
    ld h, a
    sub [hl]
    ld a, c
    ld [hl], a
    adc c
    ld e, c
    adc b
    ld l, d
    ld [hl], a
    ld a, d
    ld h, a
    sbc b
    ld e, d
    add [hl]
    adc d
    ld l, b
    adc b
    add [hl]
    adc b
    ld a, c
    db $76
    adc c
    db $76
    adc b
    add a
    and [hl]
    ld a, c
    add a
    sbc b
    ld a, b
    sub [hl]
    adc c
    add a
    adc c
    ld a, c
    ld a, c
    sbc c
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, c
    add a
    ld [hl], a
    and a
    ld l, d
    ld [hl], a
    adc c
    ld l, b
    sub a
    ld a, c
    add [hl]
    adc b
    ld h, a
    sub a
    ld a, b
    sub l
    xor b
    ld [hl], a
    and [hl]
    adc b
    and h
    sbc c
    add [hl]
    adc b
    ld l, c
    add a
    ld a, c
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld l, b
    adc c
    ld l, b
    add [hl]
    adc c
    ld a, b
    sub a
    ld a, b
    sub a
    add a
    adc c
    ld [hl], a
    adc b
    and l
    ld a, d
    add a
    add [hl]
    ld a, b
    sub [hl]
    adc c
    sub a
    ld l, d
    db $76
    sbc b
    ld [hl], a
    sub [hl]
    adc c
    add [hl]
    xor c
    ld [hl], a
    and [hl]
    ld a, c
    sub a
    ld a, c
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld l, d
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    adc c
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld a, c
    db $76
    sbc b
    ld [hl], a
    sub a
    ld a, b
    sub a
    ld a, b
    sub [hl]
    sbc b
    ld [hl], a
    sbc b
    ld a, c
    add [hl]
    adc c
    add a
    sbc b
    add a
    adc b
    ld l, c
    add a
    sbc b
    ld e, c
    sub [hl]
    ld a, d
    ld l, b
    sbc b
    add a
    adc d
    ld e, c
    sub [hl]
    ld a, c
    db $76
    sub a
    ld [hl], a
    adc b
    ld l, b
    and l
    xor b
    ld [hl], a
    sbc b
    add a
    ld d, a
    adc c
    add l
    sub a
    add [hl]
    sbc c
    ld l, b
    sub l
    sbc c
    ld [hl], a
    sbc b
    ld l, d
    ld [hl], a
    adc b
    ld l, c
    ld a, c
    sbc c
    ld a, b
    ld l, e
    ld [hl], a
    ld l, d
    ld l, b
    adc c
    ld l, b
    sub a
    ld a, c
    add [hl]
    sbc b
    ld [hl], a
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    sub l
    sbc b
    ld l, b
    sub a
    ld a, b
    ld l, c
    add a
    sub a
    ld a, d
    ld h, a
    sbc b
    ld l, d
    add [hl]
    adc c
    ld a, b
    adc c
    ld e, c
    add a
    ld l, c
    add a
    ld a, d
    ld l, b
    adc b
    db $76
    sbc b
    ld l, b
    add [hl]
    ld a, c
    add [hl]
    adc b
    ld a, c
    add [hl]
    sbc b
    ld a, b
    db $76
    sbc b
    add a
    ld a, c
    db $76
    adc c
    ld l, b
    and l
    sbc b
    add [hl]
    adc c
    add [hl]
    sbc b
    ld l, b
    sub a
    ld l, c
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add a
    ld l, d
    db $76
    sbc c
    ld l, c
    db $76
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    add [hl]
    adc b
    db $76
    sub a
    adc b
    sub [hl]
    adc b
    add a
    ld a, c
    add [hl]
    and [hl]
    add a
    add a
    add a
    adc b
    ld a, c
    ld l, b
    add a
    ld l, d
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld e, d
    ld [hl], a
    sbc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    add [hl]
    adc c
    ld [hl], a
    sbc b
    ld l, c
    add [hl]
    adc b
    add [hl]
    sub a
    ld a, b

Jump_010_5790:
    db $76
    ld a, d
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld l, c
    add a
    ld l, d
    ld l, c
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld h, a
    and [hl]
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld l, b
    sub [hl]
    ld a, c
    add l
    xor b
    ld h, a
    adc b
    ld [hl], a
    sbc b
    sbc c
    add [hl]
    sbc b
    add [hl]
    and [hl]
    ld a, b
    sub [hl]
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, c
    ld e, b
    ld [hl], a
    ld l, b
    adc b
    ld a, c
    ld h, a
    sub a
    ld l, b
    add a
    ld a, c
    ld h, a
    and [hl]
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld h, [hl]
    adc b
    ld a, b
    add a
    adc b
    sub l
    adc c
    db $76
    and a
    ld l, c
    ld [hl], a
    sbc b
    ld h, a
    and l
    sbc b
    ld l, b
    adc c
    add a
    adc b
    ld h, a
    sbc b
    ld l, b
    adc b
    ld l, d
    ld e, b
    ld a, c
    ld l, b
    adc b
    ld l, c
    ld h, a
    sbc b
    ld l, b
    ld h, a
    adc b
    add a
    sub a
    db $76
    sbc b
    ld [hl], a
    sub [hl]
    adc c
    add [hl]
    adc b
    add l
    sbc b
    ld l, b
    add [hl]
    adc c
    ld [hl], a
    sub a
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    sbc b
    ld e, c
    ld a, b
    ld l, d
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc c
    add [hl]
    sbc b
    ld l, b
    adc b
    ld a, b
    ld a, b
    adc b
    add [hl]
    sbc b
    ld [hl], a
    sub l
    ld a, c
    ld [hl], a
    adc c
    db $76
    ld l, c
    ld a, b
    add a
    ld l, d
    db $76
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    db $76
    add a
    ld l, c
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    sub [hl]
    ld a, c
    add [hl]
    ld a, c
    db $76
    sbc b
    add a
    sub [hl]
    sbc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld l, d
    ld h, a
    sub a
    add [hl]
    adc c
    ld e, c
    sub a
    ld a, c
    ld [hl], a
    ld a, c
    ld a, c
    ld [hl], a
    ld l, c
    adc b
    ld l, c
    add [hl]
    adc c
    ld h, a
    add a
    ld a, b
    sub l
    ld a, c
    add [hl]
    adc c
    ld [hl], a
    sub [hl]
    ld a, c
    ld [hl], a
    sub [hl]
    ld a, b
    add [hl]
    adc b
    sub [hl]
    adc b
    db $76
    and a
    ld l, b
    sub [hl]
    ld a, c
    add a
    ld a, d
    ld e, c
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    sub [hl]
    sub a
    ld a, c
    sub [hl]
    adc b
    add [hl]
    ld a, c
    ld a, b
    add a
    ld a, b
    sub l
    sbc b
    ld [hl], a
    adc b
    ld h, a
    add [hl]
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add a
    adc b
    ld l, b
    ld a, d
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    sub [hl]
    add a
    and [hl]
    adc c
    add l
    sbc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    adc b
    db $76
    and a
    ld l, b
    adc b
    ld l, b
    add a
    ld l, b
    ld h, a
    sbc b
    ld e, b
    ld a, b
    ld a, c
    ld d, a
    sub a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld l, b
    add [hl]
    adc c
    ld l, b
    adc b
    db $76
    sbc b
    ld l, b
    add a
    ld a, c
    db $76
    adc c
    ld l, b
    sub [hl]
    adc b
    sub l
    adc c
    ld [hl], a
    adc c
    adc b
    sub [hl]
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    adc b
    ld l, d
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld l, b
    add a
    ld a, c
    ld [hl], l
    sbc b
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, c
    ld h, a
    adc b
    ld e, c
    ld [hl], a
    ld l, b
    add [hl]
    adc c
    ld h, a
    add a
    adc c
    db $76
    adc b
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld [hl], a
    sub l
    sbc b
    db $76
    sub [hl]
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    and [hl]
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld a, b
    db $76
    adc c
    ld e, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    adc b
    ld h, a
    adc b
    ld l, c
    db $76
    adc b
    db $76
    sub a
    ld a, b
    add [hl]
    sub a
    db $76
    sub a
    ld a, b
    add a
    adc b
    ld h, a
    ld a, b
    add a
    sub [hl]
    adc c
    ld h, a
    ld a, c
    ld [hl], a
    sub a
    ld l, b
    add [hl]
    add a
    sub a
    ld a, c
    ld h, a
    sub [hl]
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    sub a
    ld l, c
    add a
    ld a, c
    db $76
    sub a
    add [hl]
    sub a
    add a
    sub l
    adc c
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    sub a
    sbc b
    db $76
    adc b
    ld l, b
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, c
    add a
    ld a, b
    add [hl]
    adc b
    ld l, b
    add [hl]
    adc b
    add [hl]
    sbc b
    ld h, a
    sub a
    db $76
    and [hl]
    ld a, c
    db $76
    adc b
    ld a, b
    add a
    ld a, b
    ld h, a
    ld l, c
    ld [hl], a
    adc b
    ld h, a
    sub [hl]
    adc c
    ld l, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    adc b
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc c
    ld h, a
    sub a
    ld a, b
    sub [hl]
    ld a, b
    db $76
    ld a, b
    ld [hl], a
    add a
    ld l, b
    sub [hl]
    adc b
    ld l, b
    add a
    ld h, a
    sub a
    ld a, c
    db $76
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add l
    sub a
    ld l, b
    adc c
    ld a, b
    db $76
    sub [hl]
    ld a, b
    ld a, c
    ld h, a
    sub l
    sbc b
    db $76
    sub a
    adc b
    add [hl]
    adc b
    add [hl]
    sub a
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    sbc b
    ld l, b
    adc b
    ld l, b
    add [hl]
    sbc b
    ld l, b
    sub [hl]
    ld a, b
    ld [hl], a
    adc c
    ld e, c
    ld a, c
    ld l, b
    add a
    ld l, c
    add l
    sbc b
    ld [hl], a
    sub a
    ld a, b
    ld h, l
    adc b
    add [hl]
    sub a
    db $76
    sub [hl]
    adc b
    db $76
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    adc c
    ld l, c
    ld [hl], a
    ld [hl], a
    adc c
    ld l, b
    sub a
    ld l, d
    ld [hl], a
    ld a, c
    ld h, a
    adc b
    ld e, b
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    sub [hl]
    ld a, b
    add [hl]
    adc b
    ld a, b
    sub [hl]
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    sbc b
    ld l, c
    db $76
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    add [hl]
    ld a, c
    ld a, b
    ld a, c
    ld e, b
    adc b
    ld l, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, c
    add [hl]
    add a
    add [hl]
    sub a
    adc b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    sub [hl]
    ld a, c
    ld h, a
    adc b
    add a
    sub [hl]
    ld a, b
    db $76
    adc b
    add [hl]
    sub a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld l, b
    ld [hl], a
    ld a, c
    ld l, b
    ld a, c
    ld l, d
    ld h, a
    adc c
    ld h, a
    sub [hl]
    add a
    and a
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    sub a
    adc b
    add [hl]
    ld a, b
    add [hl]
    adc c
    ld l, b
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add a
    sub [hl]
    ld a, b
    add [hl]
    adc b
    db $76
    adc b
    ld l, b
    sub [hl]
    adc b
    ld h, [hl]
    add a
    add a
    sub a
    ld [hl], a
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    add [hl]
    ld a, b
    ld a, b
    ld a, c
    xor b
    ld l, b
    ld l, c
    add a
    ld l, c
    ld l, b
    add a
    ld l, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    db $76
    ld [hl], a
    ld h, a
    sbc b
    ld [hl], a
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    sub a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, c
    ld h, [hl]
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    sub a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    sbc b
    adc b
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    db $76
    sbc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld l, b
    sub [hl]
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    ld a, b
    add [hl]
    adc c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, c
    ld h, a
    sbc b
    ld [hl], a
    sub a
    add a
    add a
    add a
    ld [hl], a
    sub a
    add a
    add [hl]
    sub a
    add [hl]
    adc b
    ld [hl], a
    add a
    ld l, c
    ld [hl], a
    adc c
    ld h, a
    sub a
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld l, c
    add a
    ld l, c
    ld l, b
    sbc b
    ld l, c
    ld a, c
    ld h, a
    sub a
    ld l, c
    db $76
    sbc b
    ld h, a
    sub a
    ld [hl], a
    add a
    adc b
    db $76
    sub a
    add a
    ld h, [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    ld l, b
    add [hl]
    ld a, c
    db $76
    ld a, c
    adc c
    add [hl]
    ld a, b
    db $76
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    add a
    sbc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    db $76
    sub a
    ld a, b
    sub l
    adc b
    ld l, b
    ld a, b
    db $76
    sbc b
    ld l, b
    db $76
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    adc c
    ld l, c
    add [hl]
    adc c
    db $76
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    adc c
    ld a, b
    add [hl]
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    add a
    adc b
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld l, b
    db $76
    adc c
    ld [hl], a
    sub a
    add a
    ld a, b
    ld l, b
    sub [hl]
    ld a, b
    add [hl]
    sub a
    ld a, b
    add a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld h, a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    sub [hl]
    adc c
    db $76
    sub a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld l, b
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    sub a
    ld a, b
    add a
    ld a, c
    ld l, b
    add [hl]
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld a, b
    ld h, a
    ld a, c
    ld l, b
    adc b
    ld l, b
    adc c
    ld l, b
    add a
    ld a, b
    ld l, b
    adc b
    ld h, a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    add [hl]
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    sub [hl]
    add a
    add [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld l, b
    add a
    ld a, c
    ld h, a
    adc b
    ld l, b
    ld l, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    adc b
    ld l, b
    sub l
    sbc b
    ld l, b
    add a
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    sub a
    ld l, c
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    db $76
    sub a
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld l, b
    sub [hl]
    sbc c
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    adc b
    add a
    ld h, a
    ld a, b
    add [hl]
    sbc b
    db $76
    sub a
    ld a, b
    add [hl]
    adc b
    adc b
    add a
    adc b
    ld l, b
    ld l, c
    ld [hl], a
    ld l, d
    ld a, c
    ld a, b
    ld a, c
    ld h, a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add [hl]
    sub a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    ld l, d
    db $76
    ld a, c
    ld [hl], a
    add a
    ld a, c
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    add a
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, c
    add a
    sbc b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld l, c
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    sub a
    ld [hl], a
    sub [hl]
    adc b
    ld l, b
    add a
    ld a, b
    add a
    ld a, c
    ld h, a
    sub a
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld h, [hl]
    sub a
    ld l, b
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc c
    ld l, b
    add [hl]
    add a
    adc b
    adc c
    ld l, b
    ld a, c
    ld h, a
    sub a
    ld a, b
    add [hl]
    sub a
    add a
    sub a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    sub [hl]
    sub a
    ld l, b
    ld [hl], a
    sbc b
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    adc b
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    adc c
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld l, b
    add a
    add a
    sub a
    ld a, b
    add a
    adc b
    ld h, a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld h, a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    db $76
    adc b
    ld a, b
    add a
    add a
    ld h, [hl]
    add a
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    sbc b
    ld l, b
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
    add [hl]
    adc b
    ld a, c
    db $76
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, c
    add a
    add a
    ld [hl], a
    add a
    adc b
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld l, b
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, c
    db $76
    sub a
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    adc b
    ld [hl], a
    sub a
    add a
    sub [hl]
    add a
    adc b
    ld a, c
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    ld l, b
    sub a
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    add a
    add a
    sub a
    ld [hl], a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld l, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    add [hl]
    adc b
    ld h, a
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    db $76
    sub a
    add a
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    add [hl]
    adc c
    ld h, a
    add a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    add a
    ld a, c
    ld l, b
    add a
    add [hl]
    ld a, c
    ld h, a
    sub a
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    sub a
    add a
    ld h, [hl]
    sub a
    add [hl]
    sbc b
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    sub [hl]
    adc b
    add a
    adc b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    db $76
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add [hl]
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub a
    add a
    sub [hl]
    adc b
    db $76
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
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, c
    add a
    adc b
    ld h, a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc c
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld l, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add [hl]
    sub a
    adc b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld l, b
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    sbc b
    ld l, b
    add a
    adc b
    adc b
    ld a, b
    add [hl]
    adc c
    ld h, a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    sbc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    db $76
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    sub a
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, c
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    sub a
    adc b
    sub a
    ld a, b
    add a
    sbc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    sub a
    adc b
    ld l, b
    adc b
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    ld l, c
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add [hl]
    sub a
    ld [hl], a
    add a
    ld a, b
    sub [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    add a
    add a
    ld a, c
    adc b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    db $76
    sub a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, c
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld l, b
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, c
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, c
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld h, a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    add [hl]
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    sub a
    adc b
    sub a
    ld a, b
    db $76
    sbc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    adc b
    add a
    add a
    add [hl]
    adc b
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    db $76
    adc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    adc b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld l, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    db $76
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    ld a, b
    add [hl]
    sub a
    add [hl]
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, c
    add a
    ld a, b
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    sub a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add [hl]
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    cp b
    cp e
    add a
    ld h, h
    ld hl, $ce28
    ret


    inc sp
    ld d, l
    ld h, a
    db $dd
    add a
    ld d, l
    ld [hl], l
    ld a, e
    ld a, b
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    sbc d
    ld [hl], a
    ld [hl], a
    adc d
    add a
    ld d, l
    ld l, b
    ld a, c
    sub a
    sbc b
    db $76
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    xor d
    cp a
    add sp, $40
    ld b, $77
    ld a, e
    xor b
    xor b
    ld d, d
    inc b
    db $ed
    cp c
    ld b, h
    ld d, l
    ld l, b
    ld a, e
    adc b
    adc b
    sub [hl]
    ld d, [hl]
    ld h, l
    ld h, a
    xor d
    sbc b
    ld [hl], l
    ld h, [hl]
    sub a
    ld [hl], a
    add a
    adc b
    db $76
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    xor h
    rst $38
    add h
    inc bc
    inc sp
    ld d, e
    ld [hl], a
    cp d
    jp c, Jump_010_5266

    ld l, [hl]
    cp c
    ld d, [hl]
    add l
    ld d, [hl]
    adc b
    adc d
    sbc c
    ld b, h
    adc c
    sbc e
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld a, b
    xor c
    db $76
    ld h, a
    ld a, b
    adc b

jr_010_6490:
    ld h, a
    adc c
    ld a, b
    ld h, a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, c
    xor d
    xor c
    adc c
    add h
    jr c, jr_010_64fc

    ld d, d
    ld b, a
    db $dd
    res 4, [hl]
    ld b, h
    add h
    ld d, [hl]
    ld [hl], a
    adc e
    db $ec
    sub [hl]
    add a
    jr nc, jr_010_64f0

    xor c
    sub [hl]
    ld a, b
    sbc h
    sub h
    ld e, b
    ld h, l
    ld d, a
    sub a
    bit 0, h
    ld h, $bb
    ld a, c
    add h
    ld e, b
    ld l, c
    ret z

    ld h, l
    sbc e
    db $76
    inc [hl]
    ld b, l
    adc b
    cp a
    jp z, Jump_010_5790

    ld d, a
    adc b
    sbc h
    and a
    ld d, [hl]
    ld b, a
    sbc b
    add l
    add hl, hl
    db $db
    rst $00
    ld d, l
    ld h, h
    ld d, a

jr_010_64f0:
    jp z, $a8b9

    ld d, e
    jr c, jr_010_6490

    ld [hl], a
    db $76
    ld a, c
    xor c
    adc e
    add l

jr_010_64fc:
    ld d, l
    ld h, l
    adc d
    adc d
    ld e, c
    ld [hl], h
    daa
    cp e
    sub l
    ld b, a
    xor d
    add a
    ld d, [hl]
    cp e
    add a
    inc hl
    ld l, b
    sbc c
    res 2, l
    ld l, b
    add [hl]
    ld l, b
    ld l, c
    ret


    ld [hl], h
    ld e, c
    xor b
    adc b
    ld h, [hl]
    add [hl]
    adc c
    sbc d
    ld a, b
    add a
    add [hl]
    or [hl]
    ld a, d
    jp z, Jump_010_6874

    ld [hl], a
    ld [hl], a
    sub a
    sbc c
    xor d
    sbc b
    add [hl]
    ld d, e
    ld l, b
    xor c
    ld a, b
    sbc e
    add a
    dec [hl]
    adc c
    ld a, d
    ld a, b
    ld a, c
    adc c
    db $76
    ld a, d
    xor c
    ld [hl], a
    db $76
    ld h, [hl]
    adc h
    cp c
    add l
    db $76
    ld d, [hl]
    ld e, c
    call c, Call_010_44b8
    db $76
    ld l, b
    sbc b
    adc c
    cp d
    add l
    ld d, l
    ld e, c
    ld [hl], a
    ld e, b
    adc c
    jp z, Jump_010_53a7

    ld d, l
    ld l, b
    sbc e
    sbc d
    add a
    ld [hl], l
    ld l, b
    sbc e
    or a
    db $76
    ld d, l
    ld a, b
    xor d
    xor c
    and [hl]
    ld d, l
    ld b, [hl]
    adc d
    sbc b
    xor e
    add a
    ld d, l
    ld e, b
    sub a
    xor c
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    ld h, [hl]
    ld h, a
    add a
    sbc c
    xor c
    add l
    ld l, b
    add a
    ld a, c
    adc b
    sub a
    ld h, a
    adc b
    sbc b
    sbc b
    ld h, [hl]
    add a
    sbc d
    sbc c
    ld h, [hl]
    ld d, l
    ld a, b
    xor c
    sbc b
    adc b
    db $76
    adc b
    add [hl]
    ld l, b
    sbc c
    xor c
    ld d, a
    ld [hl], l
    ld a, b
    xor c
    adc c
    sbc b
    ld d, [hl]
    ld a, b
    sbc d
    ld l, b
    ld h, a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld a, c
    ld a, c
    add a
    ld l, b
    ld [hl], a
    ld a, c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    ld a, c
    add a
    adc b
    ld h, [hl]
    ld a, b
    ld l, c
    cp d
    add a
    ld h, [hl]
    ld a, b
    adc d
    sub a
    add [hl]
    ld h, a
    adc c
    sbc c
    ld [hl], a
    ld [hl], a
    db $76
    sbc b
    ld [hl], a
    adc b
    sbc b
    add a
    ld h, [hl]
    ld [hl], a
    ld a, b
    xor c
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    adc c
    sbc c
    ld h, a
    ld [hl], a
    adc b
    add [hl]
    adc c
    ld a, b
    ld h, a
    add a
    sbc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    xor c
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    ld l, b
    ld h, [hl]
    ld a, c
    sbc c
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    adc b
    ld l, b
    adc b
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sub a
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    add a
    add [hl]
    ld a, b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    sub [hl]
    add [hl]
    adc b
    add a
    ld a, b
    ld a, c
    add a
    db $76
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    adc c
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    add a
    ld a, b
    ld a, b
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    ld l, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    adc b
    ld h, a
    ld a, b
    add a
    add a
    adc c
    adc b
    db $76
    db $76
    add a
    adc c
    adc b
    add a
    ld h, a
    ld h, a
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld d, a
    add a
    adc c
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    ld l, b
    ld a, c
    sbc b
    ld a, b
    db $76
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    sbc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_010_6874:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_010_79aa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_010_79b8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
