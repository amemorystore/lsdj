; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    ld h, b
    ld b, b
    ldh [rSCX], a
    ld d, b
    ld b, [hl]
    db $10
    ld c, e
    sub b
    ld c, a
    db $10
    ld d, d
    or b
    ld d, e
    ret nc

    ld d, h
    ld h, b
    ld d, [hl]
    nop
    ld e, c
    ldh [$5b], a
    ldh a, [$5c]
    ret nc

    ld h, b
    nop
    ld h, e
    sub b
    ld h, l
    and b
    ld l, b
    nop
    nop
    ld b, l
    ld c, h
    dec l
    ld b, l
    ld d, d
    ld sp, $5245
    ld [hl-], a
    ld b, l
    ld e, c
    dec l
    ld b, [hl]
    ld b, [hl]
    dec l
    ld b, a
    ld b, a
    ld sp, $4747
    ld [hl-], a
    ld b, a
    ld b, a
    inc sp
    ld c, b
    ld c, b
    ld sp, $4848
    ld [hl-], a
    ld c, c
    ld c, b
    dec l
    ld c, c
    ld e, c
    dec l
    ld c, d
    ld c, b
    dec l
    ld c, e
    ld c, e
    ld sp, $4b4b
    ld [hl-], a
    nop
    dec l
    dec l
    ld b, l
    ld c, h
    dec l
    ld c, e
    ld c, e
    ld [hl-], a
    nop
    nop
    nop
    nop
    db $10
    inc b
    rst $38
    ld bc, $7666
    ld b, d
    ld [de], a
    ld b, l
    ld h, a
    adc b
    sbc d
    call $caed
    sbc b
    add a
    db $76
    ld d, l
    ld d, l
    and a
    adc c
    xor d
    xor d
    cp e
    cp d
    sbc b
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    sbc c
    ld l, c
    sbc b
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    sub [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sub a
    ld b, d
    inc de
    dec [hl]
    ld h, a
    ld a, b
    sbc d
    cp l
    db $ed
    cp d
    ld l, b
    add a
    ld h, l
    ld d, h
    ld b, h
    ld h, a
    ld a, c
    sbc d
    xor e
    cp e
    cp d
    sbc b
    db $76
    ld h, l
    ld d, l
    ld d, l
    sub [hl]
    ld a, b
    sbc c
    xor d
    xor d
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc c
    ret


    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    ld [hl], h
    ld de, $0400
    ld l, c
    cp h
    sbc $eb
    cp h
    res 5, c
    add [hl]
    ld b, d
    inc hl
    inc [hl]
    ld d, a
    sbc d
    xor c
    xor d
    xor d
    xor d
    ld a, c
    add a
    db $76
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld a, b
    ld a, b
    adc c
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
    and d
    ld de, $2500
    adc d
    cp h
    db $dd
    res 7, h
    res 5, c
    add [hl]
    ld b, e
    inc [hl]
    ld d, [hl]
    ld a, c
    adc d
    sbc d
    xor d
    xor d
    sbc c
    sbc b
    db $76
    ld h, l
    ld d, l
    ld d, a
    ld a, b
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    ld a, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc c
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sub a
    jr nc, jr_01a_4147

    nop
    ld [hl], $8b
    cp h
    db $dd
    cp e
    call c, $a9cb
    ld [hl], l
    ld b, e
    inc [hl]
    ld d, l
    ld a, c
    sbc c
    sbc d

jr_01a_4147:
    xor d
    xor d
    cp e
    xor c
    ld [hl], a
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    adc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    add sp, -$79
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add l
    ld hl, $0320
    ld l, c
    cp h
    call $bb7b
    cp e
    cp c
    sbc b
    ld h, h
    inc sp
    dec [hl]
    ld h, a
    sbc d
    sbc c
    sbc c
    xor d
    sbc d
    xor c
    adc b
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    rlca
    adc b
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
    ld [hl], a
    ld a, b
    ld h, d
    ld bc, $14a0
    ld a, d
    cp h
    sbc $db
    cp h
    call z, $97a9
    ld b, e
    inc sp
    ld b, h
    ld d, a
    sbc d
    sbc d
    ld a, e
    cp e
    cp e
    cp d
    add a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld a, b
    ld a, b
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, a
    ld [hl], a
    adc b
    ld h, l
    ld b, e
    ld [hl+], a
    dec [hl]
    ld a, b
    xor e
    call z, $aacb
    xor c
    adc c
    adc b
    db $76
    add l
    ld d, l
    ld l, b
    adc c
    sbc c
    sbc c
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    db $76
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld a, b
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
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    cp b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld b, e
    ld [hl-], a
    inc hl
    ld b, a
    sbc d
    cp l
    call z, Call_01a_6bbb
    xor d
    sbc c
    adc b
    db $76
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    add a
    db $76
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld c, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], l
    ld b, e
    ld hl, $9712
    sbc d
    cp h
    call z, $bbbb
    xor d
    xor c
    add a
    ld h, l
    ld b, h
    ld b, l
    ld h, a
    adc c
    sbc c
    sbc c
    ld l, c
    sbc c
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld e, b
    db $76
    ld h, l
    ld b, h
    ld d, l
    ld a, b
    sbc c
    xor e
    cp e
    xor d
    xor d
    sbc c
    sbc b
    db $76
    ld h, [hl]
    ld d, l
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    adc c
    sbc b
    add a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld b, h
    ld d, [hl]
    ld a, b
    sbc d
    xor d
    xor d
    xor d
    sbc c
    ld l, c
    adc b
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    and a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, h
    ld b, h
    ld b, h
    ld d, a
    adc c
    sbc e
    cp e
    xor d
    xor d
    sbc c
    xor c
    add a
    db $76
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc b
    sbc c
    sbc c
    ld a, c
    adc b
    add a
    db $76
    ld h, [hl]
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
    ld [hl], a
    ld d, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], l
    ld b, h
    ld d, [hl]
    ld a, b
    sbc d
    xor e
    xor d
    xor c
    sbc c
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
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
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, h
    ld b, h
    ld d, [hl]
    adc c
    sbc d
    cp e
    xor d
    xor c
    xor c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor b
    adc c
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld b, h
    ld b, l
    ld d, a
    adc c
    xor e
    cp d
    adc d
    xor d
    xor c
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
    sbc b
    sbc c
    sbc b
    ld l, b
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
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
    ld b, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld b, h
    add l
    ld l, b
    sbc d
    cp e
    cp d
    xor d
    xor c
    xor c
    sbc c
    adc b
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

jr_01a_43c4:
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
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
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    jr nz, jr_01a_43e3

jr_01a_43e3:
    ld d, $9b
    cp d
    sbc d
    call $ecee
    and a
    ld d, e
    inc [hl]
    ld h, a
    db $76
    ld d, h
    sbc b
    sbc e
    call z, $98ba
    adc b
    adc b
    add a
    ld h, l
    ld b, l
    ld h, a
    sbc c
    sbc c
    adc b
    adc b
    sbc c
    adc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld d, a
    adc b
    sbc c
    adc b
    adc b
    ld [hl], e
    nop
    nop
    jr c, jr_01a_43c4

    sbc b
    sbc e
    rst $38
    rst $38
    jp z, Jump_01a_7586

    ld d, [hl]
    ld h, [hl]
    ld d, h
    ld b, [hl]
    adc d
    call z, $9aba
    sbc d
    xor c
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc c
    xor d
    sbc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    xor b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld d, c
    nop
    ld bc, $a969
    adc b
    adc l

jr_01a_4451:
    rst $38
    db $fd
    cp c
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, a
    sbc e
    res 7, d
    sbc c
    xor d
    sbc c
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc b
    add a
    adc c
    sbc d
    xor d
    sbc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [$8888], sp
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    jr nc, jr_01a_4451

    dec b
    cp l
    jp c, $bf87

    rst $38
    ld a, [$4574]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld a, c
    xor h
    ld l, h
    xor b
    ld [hl], a
    adc c
    xor c
    ld [hl], l
    ld d, l
    ld l, b
    sbc c
    adc b
    ld [hl], a
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld e, b
    ld [hl], a
    ld [hl], a
    ld [hl], l
    jr nz, jr_01a_44b6

jr_01a_44b6:
    rla
    xor e
    xor b
    ld a, b
    rst $08
    rst $38
    db $eb
    add a
    ld [hl], a
    ld h, [hl]
    sub h
    ld b, h
    ld b, l
    ld l, b
    sbc e
    call z, $99ba
    xor d
    xor b
    ld h, l
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc d
    xor d
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    adc b
    sbc b
    adc b
    adc b
    adc b
    add a
    rst $30
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], l
    jr nz, jr_01a_44ec

    ld l, d

jr_01a_44ec:
    cp e
    sbc b
    ld a, d
    rst $28
    ld e, l
    sub a
    ld d, l
    ld h, [hl]
    db $76
    ld h, l
    ld d, [hl]
    ld l, b
    sbc d
    cp e
    xor c
    add a
    ld a, b
    sbc b
    db $76
    ld d, h
    add [hl]
    adc c
    sbc c
    adc b
    adc c
    sbc c
    xor c
    add a
    db $76
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    sbc c
    sbc c
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    ld h, a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld d, d
    nop
    ld [bc], a
    xor d
    cp d
    adc b
    xor l
    rst $38
    db $fc
    sub a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, l
    ld h, a
    sbc d
    call z, Call_01a_69ca
    sbc d
    xor c
    ld [hl], l
    ld b, h
    ld b, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor d
    xor d
    sbc c
    add a
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld c, c
    add a
    ld b, c
    nop
    dec b
    sbc d
    xor b
    ld a, b
    xor [hl]
    rst $38
    db $eb
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld b, h
    and l
    ld l, b
    sbc d
    cp e
    xor c
    sbc c
    xor d
    xor c
    ld [hl], l
    ld d, h
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    xor d
    ld a, d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    adc b

Jump_01a_4585:
    adc b
    add [hl]
    ld b, d
    inc hl
    ld e, b
    sbc c
    add [hl]
    ld a, c
    rst $18
    db $ed
    sub a
    ld d, a
    adc c
    add [hl]
    ld b, e
    dec [hl]
    ld h, a
    adc b
    adc b
    sbc c
    xor e
    cp d
    xor c
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    sub l
    ld d, [hl]
    adc c
    sbc c
    adc b
    sbc c
    xor d
    sbc c
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    adc b
    adc c
    ld a, c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld b, h
    ld b, l
    ld a, c
    sbc b
    sub a
    adc d
    call $87ca
    ld a, b
    sbc c
    db $76
    ld b, h
    ld d, [hl]
    ld a, b
    adc b
    adc b
    sbc d
    xor d
    xor c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    adc b
    adc b
    sbc c
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add l
    ld b, h
    ld b, [hl]
    adc c
    sbc b
    ld [hl], a
    sbc e
    call c, Call_01a_77b9
    ld a, b
    adc b
    ld h, l
    ld d, l
    ld h, a
    adc b
    sbc b
    adc c
    sbc c
    xor c
    xor c
    add a
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    sbc b
    adc b
    sbc c
    ld l, c
    add a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld d, h
    ld b, l
    ld l, b
    sbc b
    ld [hl], a
    adc c
    cp h
    jp z, $8898

    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    adc b
    ld a, b
    adc c
    xor d
    sbc b
    db $76
    ld [hl], a
    ld [hl], a
    db $76
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
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld d, [hl]
    stop
    ld h, $ab
    xor c
    sbc d
    call $ecee
    cp b
    ld h, e
    ld b, l
    ld h, a
    db $76
    ld d, l
    sub a
    sbc e
    cp h
    cp d
    sbc b
    add a
    adc b
    sbc b
    db $76
    ld d, l
    ld h, a
    adc c
    sbc c
    adc b
    adc b
    adc b
    ld a, c
    add a
    db $76
    ld h, [hl]
    ld a, b
    sbc b
    add a
    ld [hl], a
    adc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld h, a
    ld a, b
    sbc c
    sbc c
    adc b
    add l
    stop
    ld h, $9a
    sbc c
    sbc d
    call $ecee
    xor b
    add h
    ld b, l
    ld h, a
    db $76
    ld d, l
    ld l, b
    xor e
    res 7, d
    sbc b
    add a
    adc b
    adc b
    ld h, l
    ld b, h
    ld d, a
    adc c
    sbc c
    adc b
    adc c
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc b
    sub a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc c
    sbc c
    adc b
    add l
    stop
    ld d, $9a
    sbc c
    sbc d
    rst $18
    rst $38
    db $eb
    add a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld d, h
    ld b, l
    ld l, b
    cp h
    res 5, d
    sbc d
    xor c
    ld l, b
    db $76
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc d
    xor c
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    rlca
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add l
    or b
    nop
    ld h, $9a
    sbc b
    adc d
    rst $18
    rst $38
    db $eb
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, l
    ld b, l
    ld l, c
    ld a, h
    res 3, c
    sbc d
    xor d
    sbc b
    db $76
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc c
    xor d
    xor c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b

jr_01a_471a:
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add l
    jr nz, jr_01a_4727

jr_01a_4727:
    ld c, b
    cp h
    xor c
    ld a, b
    cp [hl]
    cp $b8
    ld h, l
    ld h, a
    add a
    ld h, a
    ld h, [hl]
    ld [hl], a
    adc c
    xor e
    cp d
    add a
    ld h, a
    adc c
    sub a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    adc b
    sbc c
    sbc c
    adc b
    add a
    db $76
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    ld a, b
    adc b
    or a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], l
    stop
    jr c, jr_01a_471a

    xor b

jr_01a_475f:
    ld a, b
    ld a, [hl]
    cp $c8
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, c
    xor e
    cp d
    add a
    ld [hl], a
    adc c
    xor b
    add [hl]
    ld d, [hl]
    adc b
    sbc c
    adc b
    adc b
    sbc c
    sbc c
    adc b
    add a
    db $76
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add hl, bc
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], h
    db $10
    or b
    jr c, jr_01a_475f

    xor b
    ld a, b
    rst $08
    cp $c8
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc d
    cp e
    ld a, d
    sub a
    ld [hl], a
    adc c
    sbc b
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    ld a, b
    adc b
    adc c
    adc b
    add a
    db $76
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld l, b
    adc b
    adc b
    ld [hl], l
    stop
    ld c, c
    call z, Call_01a_78a8
    rst $08
    rst $38
    cp b
    ld d, l
    ld h, [hl]
    ld h, a
    sub [hl]
    ld h, [hl]
    ld h, a
    adc c
    cp e
    cp d
    add a
    ld h, a
    adc c
    add a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    adc b
    ld a, c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    rst $30
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], l
    stop
    scf
    xor d
    xor b
    adc d
    rst $18
    ld e, a
    jp c, Jump_01a_7677

    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld a, b
    xor e
    res 5, c
    sbc c
    xor d
    xor b
    ld h, l
    add l
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    adc b
    ld c, b
    adc b
    adc c
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], l
    stop
    and a
    xor e
    sub a
    ld a, c
    rst $08
    rst $38
    jp c, Jump_01a_6777

    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld a, b
    xor e
    bit 7, c
    sbc c
    xor d
    xor b
    ld h, l
    ld b, l
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc d
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    sbc b
    adc b
    adc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, a
    adc b
    ld [hl], l
    db $10
    ld bc, $bb69
    xor b
    adc d
    rst $18
    db $fd
    or a
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld h, l
    and l
    ld h, a
    adc d
    cp e
    cp d
    add a
    ld a, b
    sbc c
    add a
    ld d, h
    ld d, [hl]
    adc c
    sbc b
    add a
    ld a, b
    sbc d
    ld a, c
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, [hl]
    or a
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], h
    nop
    ld bc, $cb59
    sbc b
    ld a, d
    rst $28
    cp $87
    ld d, l
    ld d, a
    ld [hl], a
    ld h, l
    ld d, l
    ld h, a
    sbc e
    cp h
    cp d
    add a
    ld a, b
    sbc c
    add [hl]
    ld b, h
    ld b, l
    ld a, b
    sbc b
    adc b
    adc b
    sbc d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    sbc b
    and a
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], h
    db $10
    ld bc, $9a58
    sbc b
    adc d
    rst $18
    db $fd
    cp b
    db $76
    ld h, [hl]
    ld h, l
    ld d, h
    ld d, l
    ld d, [hl]
    adc c
    xor h
    res 5, c
    ld a, c
    sbc c
    add a
    ld d, l
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    ld e, b
    ld [hl], l
    db $10
    ld bc, $aa58
    sub a
    adc d
    rst $18
    cp $b9
    db $76
    ld h, [hl]
    ld h, l
    ld d, h
    ld b, l
    and [hl]
    ld a, c
    cp h
    res 5, c
    sbc d
    xor d
    sub a
    ld d, h
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc d
    xor d
    ld a, c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    ld [hl], l
    ld sp, $6923
    sbc b
    ld [hl], a
    adc e
    rst $28
    db $ec
    sub a
    ld e, b
    sbc c
    ld [hl], l
    ld b, e
    dec [hl]
    ld h, a
    adc b
    adc b
    sbc d
    xor e
    cp d
    sbc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    sub l
    ld d, [hl]
    adc c
    xor c
    sbc c
    sbc c
    xor d
    sbc c
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    ld a, b
    adc b
    adc b
    adc b
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], l
    ld sp, $6923
    sbc b
    and [hl]
    ld a, e
    rst $18
    db $eb
    add a
    ld a, b
    sbc c
    add l
    ld b, e
    ld b, l
    ld h, a
    adc b
    adc b
    sbc c
    xor d
    cp e
    ld a, c
    add a
    ld h, [hl]
    ld [hl], a
    db $76
    ld d, l
    ld d, a
    adc c
    sbc c
    sbc b
    adc c
    xor d
    sbc b
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl-], a
    inc h
    ld a, c
    xor c
    db $76
    ld a, e
    rst $18
    db $eb
    add a
    ld a, b
    sbc c
    db $76
    ld b, h
    ld b, [hl]
    ld [hl], a
    sbc b
    adc b
    sbc c
    xor d
    xor d
    xor b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, l
    ld h, a
    adc c
    sbc c
    adc b
    adc c
    ld l, c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld d, h
    ld b, l
    ld a, c
    sbc b
    ld [hl], a
    adc d
    call $87ca
    ld a, b
    ld l, b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    adc b
    adc b
    sbc c
    xor d
    xor d
    sbc c
    add a
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    add a
    adc c
    sbc c
    adc b
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld d, h
    ld b, [hl]
    adc c
    sbc b
    ld [hl], a
    adc c
    cp h
    cp c
    add a
    ld a, b
    adc b
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc c
    adc b
    adc b
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, a
    ld [hl], a
    adc b
    adc c
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    add h
    ld b, l
    ld a, c
    sbc b
    ld [hl], a
    adc c
    call z, $87ca
    ld a, b
    adc b
    db $76
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    add a
    adc c
    sbc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, h
    ld d, a
    adc c
    add a
    ld a, b
    sbc d
    cp e
    sbc b
    add a
    adc b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    sbc c
    sbc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
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
    adc b
    adc b
    ld [hl], a
    cp b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld b, h
    ld d, [hl]
    adc c
    add a
    ld [hl], a
    sbc d
    adc d
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc b
    adc b
    adc b
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
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
    ld e, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, l
    ld b, h
    add [hl]
    ld a, b
    ld [hl], a
    ld h, a
    sbc e
    cp e
    xor c
    adc b
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    adc b
    adc c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    sbc c
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld d, c
    nop
    inc de
    db $10
    inc b
    adc h
    db $dd
    rst $18
    rst $38
    cp $b9
    adc b
    ld h, d
    nop
    inc de
    ld b, h
    or a
    sbc h
    sbc $dd
    sbc $db
    add [hl]
    ld d, l
    ld b, e
    ld [hl+], a
    inc [hl]
    ld d, a
    ld a, b
    sbc e
    call z, Call_01a_5bcb
    xor c
    db $76
    ld d, h
    ld b, h
    ld b, h
    ld b, [hl]
    ld a, b
    sbc c
    xor d
    cp e
    cp d
    sbc b
    add a
    ld h, [hl]
    ld d, l
    and l
    ld d, [hl]
    ld h, a
    adc b
    sbc c
    ld d, b
    ld bc, $1043
    ld h, $ab
    call z, $ffdf
    db $fd
    cp d
    ld l, c
    ld h, e
    ld [de], a
    inc [hl]
    ld d, h
    ld d, a
    sbc e
    call z, $ddcc
    jp z, Jump_01a_6687

    ld d, h
    inc sp
    ld b, l
    and [hl]
    ld a, b
    xor e
    call z, $babb
    sbc b
    db $76
    ld d, l
    ld d, h
    ld b, h
    ld d, a
    ld a, b
    adc c
    sbc d
    cp d
    ret


    sbc c
    add a
    db $76
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    adc b
    sub a
    jr nz, @+$05

    ld b, d
    ld bc, $cc59
    ld a, h
    rst $28
    rst $38
    db $db
    xor c
    sub a
    ld b, d
    ld [hl+], a
    ld b, l
    ld d, l
    ld l, c
    cp l
    call z, $edcd
    cp c
    ld h, [hl]
    ld h, l
    ld b, e
    inc h
    ld b, [hl]
    ld h, a
    ld a, c
    xor h
    res 5, d
    xor d
    sub a
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld b, a
    adc b
    sbc c
    xor d
    xor d
    sbc c
    adc b
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    adc c
    sub h
    nop
    or l
    jr nz, jr_01a_4bda

    cp e
    sbc e
    rst $28
    rst $38
    call c, $a6dd
    ld b, h
    ld d, h
    ld hl, $7835
    adc c
    ld a, [hl]
    db $ed
    set 1, e
    and a
    ld d, l
    ld d, l
    inc sp
    inc [hl]
    ld d, [hl]
    ld a, b
    sbc e
    cp e
    xor e
    cp e
    sbc b
    ld h, [hl]
    ld h, l
    ld d, h
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc c
    xor d
    xor d
    xor d

jr_01a_4bda:
    sbc c
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, a
    ld a, b
    adc c
    ld [hl], e
    ld [bc], a
    ld d, h
    ld de, $b959
    sbc e
    rst $28
    db $ec
    cp h
    jp z, Jump_01a_4585

    and h
    ld [hl-], a
    ld d, a
    add a
    adc c
    cp h
    res 7, e
    cp d
    add [hl]
    ld d, l
    ld d, h
    ld b, h
    ld b, [hl]
    ld h, a
    ld a, c
    adc e
    cp d
    xor e
    cp d
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    xor c
    sbc b
    rst $10
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    ld d, d
    ld [hl], $63
    inc de
    ld a, c
    sub a
    sbc h
    rst $38
    ld l, e
    cp l
    jp z, Jump_01a_5665

    ld d, h
    inc [hl]
    ld d, a
    ld [hl], a
    adc c
    call z, $abba
    cp c
    db $76
    ld [hl], a
    sub l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    xor d
    xor c
    adc b
    add a
    db $76
    ld d, l
    ld h, a
    ld [hl], a
    ld [hl], a
    add hl, de
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    add [hl]
    ld hl, $4146
    or [hl]
    sbc d
    adc b
    xor l
    db $fd
    set 1, h
    cp b
    ld d, l
    ld h, [hl]
    ld b, e
    dec [hl]
    ld a, b
    ld a, b
    sbc e
    call z, $bb6a
    xor b
    db $76
    ld h, [hl]
    ld d, h
    ld b, l
    ld h, a
    ld h, a
    adc c
    xor d
    xor d
    xor d
    xor c
    add a
    ld [hl], a
    add l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    xor d
    sbc c
    add a
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    add l
    inc sp
    ld d, h
    jr nz, jr_01a_4cbc

    ld h, h
    ld c, b
    cp h
    xor d
    rst $18
    db $fd
    call $a8ed
    adc b
    ld b, h
    inc [hl]
    ld d, h
    ld b, e
    ld b, [hl]
    db $76
    ld a, b
    xor d
    xor d
    cp h
    res 3, d
    xor c
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    adc b
    xor d
    xor d
    xor d
    xor c
    sbc b
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    or [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    ld [hl], h
    ld b, [hl]
    ld h, e
    inc de
    ld h, a
    ld d, l

jr_01a_4cbc:
    adc e
    cp c
    sbc h
    db $ed
    xor e
    call Call_01a_78b9
    add a
    ld d, h
    ld d, l
    ld d, h
    dec [hl]
    ld h, [hl]
    ld h, [hl]
    adc c
    sbc c
    sbc d
    cp e
    xor c
    adc d
    sbc b
    ld [hl], a
    db $76
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    scf
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc b
    ld d, h
    ld h, a
    ld b, d
    dec h
    ld h, h
    add l
    sbc d
    sbc b
    xor h
    db $ec
    cp e
    db $dd
    xor c
    adc c
    sub a
    ld d, l
    ld h, [hl]
    ld d, e
    ld b, [hl]
    ld h, [hl]
    ld d, a
    sbc c
    sbc c
    xor e
    res 5, d
    xor d
    sub a
    ld a, b
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    ld c, c
    sbc d
    xor c
    sbc b
    sbc c
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sub a
    ld h, l
    db $76
    ld hl, $6436
    scf
    xor d
    adc c
    call $bcdb
    call c, $99a8
    add [hl]
    ld d, [hl]
    ld h, l
    ld b, h
    ld d, [hl]
    ld h, l
    ld h, a
    sbc c
    adc c
    xor e
    cp d
    sbc d
    xor c
    add a
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc d
    xor c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    rst $00
    ld [hl], a
    adc b
    adc c
    add l
    ld b, [hl]
    ld [hl], h
    ld [de], a
    ld d, [hl]
    ld b, e
    ld e, c
    xor c
    adc d
    db $dd
    jp z, $8bbd

    adc c
    xor c
    ld [hl], l
    ld d, [hl]
    ld h, h
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    cp e
    xor c
    sbc d
    xor c
    ld a, b
    add a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    add a
    ld [hl], a
    and a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    ld h, h
    ld d, a
    ld h, d
    inc hl
    ld h, [hl]
    inc [hl]
    ld a, d
    sbc b
    sbc h
    db $ed
    cp e
    call $89b9
    xor b
    ld h, l
    ld h, [hl]
    ld d, h
    ld b, l
    ld h, [hl]
    ld d, [hl]
    adc c
    sbc c
    xor d
    cp d
    xor d
    xor d
    sbc b
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    ld a, [hl-]
    sbc c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    sub a
    ld b, h
    ld d, [hl]
    ld b, c
    dec h
    ld [hl], l
    ld b, a
    cp e
    xor c
    call $bbec
    call c, $8898
    add [hl]
    ld b, l
    ld d, l
    ld b, e
    db $76
    ld h, [hl]
    ld l, b
    sbc c
    sbc c
    xor e
    cp d
    sbc d
    xor c
    add a
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    add a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    adc b
    xor b
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld h, a
    adc c
    adc b
    sbc d
    xor d
    xor c
    adc e
    xor c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld h, a
    db $76
    ld d, l
    ld [hl], a
    ld h, l
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, c
    adc b
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    sbc d
    xor c
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    db $76
    ld h, a
    ld [hl], l
    ld d, [hl]
    db $76
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    adc b
    adc c
    xor d
    sbc c
    xor d
    xor d
    sbc c
    xor c
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc c
    sbc c
    adc b
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
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    ld h, [hl]
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    xor c
    adc c
    xor d
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld h, [hl]
    ld h, l
    ld d, a
    ld [hl], a
    ld h, a
    adc b
    adc b
    ld l, c
    sbc c
    sbc c
    xor d
    xor c
    sbc d
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    sbc c
    sbc c
    adc b
    sbc b
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
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    db $76
    ld h, a
    db $76
    ld d, [hl]
    db $76
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    adc b
    sbc d
    sbc c
    sbc d
    xor d
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc b
    adc b
    sbc c
    sbc b
    adc c
    adc b
    ld a, b
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
    ld [hl], a
    add a
    db $76
    sub a
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    adc c
    sbc c
    xor c
    sbc d
    xor d
    sbc c
    sbc c
    adc b
    adc b
    add a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    sbc c
    adc b
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    ld a, c
    sbc d
    xor c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc b
    adc c
    adc c
    adc b
    adc b
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
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
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
    ld a, b
    ld a, b
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
    add a
    add a
    ld a, b
    adc c
    sbc b
    sbc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
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
    adc b
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    adc b
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
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
    adc b
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    sbc c
    adc c
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    sbc c
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld l, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    ld a, b
    add a
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
    sbc b
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
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
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
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    sbc b
    ld [hl], a
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
    ld a, b
    add a
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
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
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
    adc b
    adc b
    adc b
    adc c
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc c
    sbc b
    adc c
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
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
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
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
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc b
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
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    add a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
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
    ld [hl], a
    ld a, b
    db $76
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
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, e
    adc c
    ld sp, $8558
    ld h, [hl]
    adc e
    and a
    adc e
    cp d
    sbc b
    xor h
    cp b
    ld a, c
    sbc c
    add [hl]
    ld l, b
    sub a
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    adc c
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld h, l
    ld [hl], $96
    inc de
    adc b
    ld h, l
    ld d, a
    xor e
    add a
    xor e
    cp d
    adc b
    xor e
    sub a
    ld a, b
    add a
    ld [hl], l
    ld l, b
    ld [hl], l
    ld h, a
    ld a, b
    db $76
    ld a, c
    sub a
    ld a, b
    adc c
    sub a
    ld a, b
    sbc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld h, e
    ld c, c
    sub e
    ld h, $97
    ld h, [hl]
    ld l, c
    cp c
    ld a, b
    cp h
    xor c
    adc d
    cp d
    ld [hl], a
    adc b
    add a
    ld h, l
    adc b
    ld h, [hl]
    ld h, a
    adc b
    ld [hl], a
    adc c
    sbc b
    adc b
    sbc c
    add a
    ld a, c
    sub a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    adc b
    adc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    ld [hl], a
    adc b
    sbc c
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    db $76
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    add a
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld h, a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc b
    add a
    db $76
    ld a, b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    sbc c
    add a
    db $76
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    sbc b
    sbc c
    adc b
    sbc c
    sbc b
    adc b
    ld a, b
    adc b
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
    adc b
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
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
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
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
    rlca
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    jr nz, jr_01a_5617

    ld d, b
    ld [hl], c
    ld h, $73
    scf
    add a
    sbc h
    cp c
    xor e
    rst $18
    ld a, [$dd9b]
    cp c
    adc b
    sbc c
    add a
    add [hl]
    ld d, [hl]
    ld a, b
    ld h, l
    ld d, a
    adc c
    db $76
    ld l, b
    sbc c
    sbc b
    adc b
    adc d
    xor c
    add a
    adc c
    xor c
    add a
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    db $76
    ld a, b
    adc b
    add a
    adc b
    adc b
    rst $20
    ld [hl], h
    ld bc, $1076
    ld [bc], a
    ld d, a
    ld b, c
    ld e, b
    adc c
    res 5, d
    call z, $c9ef
    xor l
    sbc h
    xor b
    adc c
    xor c
    ld [hl], a
    ld h, l
    ld h, a

jr_01a_5617:
    add [hl]
    ld d, h
    ld h, a
    adc b
    ld h, l
    ld l, c
    sbc b
    adc b
    ld a, b
    adc d
    sbc b
    ld [hl], a
    adc c
    sbc b
    ld h, [hl]
    ld a, b
    add a
    ld h, [hl]
    ld [hl], a
    add a
    db $76
    ld h, a
    adc b
    adc b
    ld [hl], a
    sbc c
    sbc b
    ld [hl], a
    adc c
    sbc b
    add a
    ld h, c
    dec b
    add e
    nop
    inc de
    db $76
    inc hl
    adc b
    ld a, d
    jp z, $cd5b

    cp $a9
    call $98cb
    sbc c
    sbc b
    db $76
    ld d, l
    ld h, a
    ld [hl], l
    ld b, l
    ld a, b
    add [hl]
    db $76
    adc c
    sbc b
    add a
    adc c
    sbc c
    sbc b
    ld a, b
    sbc c
    add a
    ld h, a
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    ld [hl], a

Jump_01a_5665:
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
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
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
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
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
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
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
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
    ld [hl], a
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
    add a
    adc b
    adc b
    ld [hl], a
    add a
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
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
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
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
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
    ld [hl], a
    adc b
    adc b
    add a
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
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
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
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    xor d
    xor d
    xor d
    xor d
    cp e
    cp e
    cp e
    cp d
    cp d
    xor d
    xor d
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld e, b
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
    ld h, [hl]
    ld h, [hl]
    ld h, l
    and l
    ld d, l
    ld d, l
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    xor d
    ld l, e
    xor e
    xor e
    cp e
    cp e
    cp d
    xor d
    xor d
    xor d
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub a
    ld [hl], a
    add a
    adc b
    sbc c
    sbc c
    xor d
    xor d
    cp e
    cp e
    cp d
    xor d
    cp d
    xor d
    xor d
    sbc c
    ld l, c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
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
    adc b
    adc b
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
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
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
    ld [hl], a
    ld a, b
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
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
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
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    adc b
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
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
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
    ld [hl], a
    add a
    ld a, b
    add a
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
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
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
    adc b
    adc b
    adc b
    adc b
    add a
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
    adc c
    sbc c
    adc b
    adc b
    adc b
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
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
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
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
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
    adc b
    adc b
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
    ld [hl], a
    ld a, b
    adc b
    adc b
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
    add a
    adc b
    adc b
    adc b
    add a
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
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
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
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
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
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, [hl]
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
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    db $76
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    sbc b
    add a
    add a
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
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
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
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    db $76
    ld h, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc b
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
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
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
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    adc b
    add a
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
    ld [hl], a

Call_01a_5bcb:
    adc b
    adc b
    add a
    add a
    ld a, b
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
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld d, a
    jr nz, jr_01a_5c19

    ld d, d
    inc de
    ld a, c
    adc c
    xor d
    xor e
    call z, Call_01a_78b8
    sbc b
    ld d, h
    inc [hl]
    ld d, l
    and l
    ld h, a
    adc c
    xor d
    xor c
    xor e
    cp c
    adc b
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, c
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    rst $00
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    add e
    dec b

jr_01a_5c19:
    add a
    ld b, e
    ld e, b
    xor c
    sbc d
    xor e
    call z, $987b
    sbc d
    add [hl]
    ld b, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    sbc d
    cp d
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld sp, $a458
    inc [hl]
    adc d
    sbc c
    xor e
    cp h
    call $89b9
    sbc b
    ld h, l
    ld b, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    adc c
    sbc d
    xor c
    cp e
    cp d
    sbc b
    adc b
    db $76
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d
    xor c
    sbc d
    sbc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    add e
    dec b
    add [hl]
    ld b, e
    ld c, b
    xor c
    sbc d
    xor e
    call z, $98db
    sbc c
    db $76
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    xor c
    xor e
    cp d
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld h, a
    sub a
    ld h, a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    jr nc, jr_01a_5d05

    ld h, h
    inc [hl]
    ld a, d
    xor c
    xor d
    cp h
    call $89b9
    xor c
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor c
    sbc c
    xor e
    ld a, c
    add a
    adc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    add d
    ld d, $61
    nop
    ld b, [hl]
    ld sp, $8958
    sbc d
    cp e
    sbc $db
    cp l
    db $db
    adc c
    xor d
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]

jr_01a_5d05:
    ld [hl], a
    db $76
    ld a, b
    sbc b
    ld a, b
    sbc d
    sbc b
    adc c
    sbc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    rst $00
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, b
    ld b, a
    jr nc, jr_01a_5d2a

    ld h, l

jr_01a_5d2a:
    inc de
    ld a, b
    sbc c
    sbc e
    cp h
    xor $8b
    adc $d9
    adc d
    cp c
    db $76
    ld a, b
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    adc c
    sub a
    ld a, c
    xor c
    adc b
    sbc c
    sbc b
    adc b
    ld a, b
    add a
    db $76
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld de, $1066
    inc b
    ld h, e
    ld h, $69
    sbc c
    cp h
    adc $fd
    cp h
    xor $b8
    sbc e
    xor b
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    sbc c
    add a
    adc c
    xor b
    adc b
    sbc c
    adc b
    add a
    ld a, b
    add a
    ld h, a
    adc b
    db $76
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
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
    ld [hl], e
    ld b, $73
    ld bc, $5247
    ld e, c
    xor d
    adc c
    call $bacb
    cp e
    xor b
    adc b
    sub a
    ld h, [hl]
    ld a, b
    ld [hl], l
    ld h, a
    adc b
    ld [hl], a
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld a, b
    adc b
    ld h, c
    ld c, b
    ld d, c
    inc de
    ld [hl], a
    inc hl
    adc d
    sbc b
    adc e
    call c, $bbba
    cp d
    ld h, a
    adc c
    add [hl]
    ld d, [hl]
    add a
    ld d, l
    ld l, b
    add a
    ld l, b
    adc c
    adc b

jr_01a_5ddb:
    adc c
    sbc b
    adc b
    adc c
    add a
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    add a
    ld a, b
    adc b

jr_01a_5de7:
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    xor b
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    add a
    ld sp, $2077
    dec h
    add h
    ld h, $aa
    sbc b
    sbc l
    call c, $bbbb
    cp c
    ld [hl], a
    sbc c
    ld [hl], l
    ld d, a
    db $76
    ld d, [hl]
    ld a, c
    add a
    ld a, c
    sbc c
    adc b
    adc c
    sbc b
    adc b
    sbc c
    add a
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld e, b
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
    ld [hl], l
    inc bc
    sub l
    inc de
    ld h, a
    ld [hl], d
    jr z, jr_01a_5ddb

    ld a, b
    xor l
    db $db
    cp h
    sbc $db
    xor h
    jp z, Jump_01a_7887

    ld [hl], l
    ld b, l
    db $76
    ld d, h
    ld b, [hl]
    ld h, l
    ld h, [hl]
    ld a, b
    adc b
    adc c
    xor d
    adc b
    sbc d
    sbc b
    adc b
    sbc c
    add a
    ld [hl], a
    add a
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    adc b
    cp b
    ld [hl], d
    jr jr_01a_5de7

    dec d
    ld a, b
    ld b, c
    ld e, d
    add [hl]
    ld a, b
    cp l
    cp d
    call $b9dd
    cp h
    sbc c
    ld [hl], a
    adc c
    ld h, h
    ld d, [hl]
    ld h, l
    ld b, h
    ld h, [hl]
    ld h, l
    ld d, [hl]
    adc b
    ld a, b
    sbc d
    xor c
    adc c
    xor d
    adc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc b
    adc b
    sbc c
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, b
    ld e, d
    ld h, e
    sbc h
    or a
    dec h
    cp c
    inc [hl]
    ld a, e
    cp b
    ld a, e
    db $dd
    xor d
    cp l
    jp c, $ba8a

    add [hl]
    ld a, b
    ld [hl], h
    dec [hl]
    ld d, l
    ld b, e
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld h, a
    db $76
    adc c
    sbc b
    sbc c
    xor d
    sbc c
    sbc d
    sbc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, $66
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sub a
    inc sp
    cp e
    ld d, a
    db $dd
    and h
    ld l, b
    or h
    dec h
    sbc d
    add l
    ld a, h
    jp z, $bd89

    cp b
    adc d
    cp c
    db $76
    adc c
    ld h, h
    ld d, [hl]
    ld [hl], l
    inc [hl]
    ld h, [hl]
    ld d, h
    ld d, [hl]
    ld [hl], a
    ld h, a
    adc c
    sbc b
    adc c
    xor c
    adc c
    xor d
    sbc b
    adc c
    sbc b
    rla
    adc b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    add l
    and a
    rst $00
    ld e, e
    db $eb
    ld h, d
    ld e, e
    add d
    scf
    xor c
    db $76
    xor l
    cp c
    sbc d
    call z, $ab98
    adc b
    ld h, a
    adc b
    ld d, h
    ld h, [hl]
    ld h, h
    dec [hl]
    ld h, [hl]
    ld b, h
    ld h, a
    db $76
    ld h, a
    sbc c
    ld a, b
    adc c
    sbc b
    adc c
    sbc c
    adc b
    adc c
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ret c

    adc b
    adc b
    adc b
    ld [hl], e
    jr z, jr_01a_5f98

    inc d
    ld d, [hl]
    ld sp, $7569
    ld l, b
    cp e
    sbc c
    call $bc7b
    db $ed
    xor d
    cp e
    xor b
    ld a, b
    add a
    ld d, l
    ld d, [hl]
    ld d, h
    ld b, l
    ld h, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    xor d
    xor c
    sbc d
    xor c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld b, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    sbc b
    ld d, e
    ld l, c
    ld b, b
    dec [hl]
    ld h, h
    inc de
    ld [hl], a
    ld b, l
    ld l, c
    cp c
    adc d
    db $dd
    res 7, l
    db $db
    xor d
    res 5, b
    adc c
    sub [hl]
    ld d, l
    ld h, [hl]
    ld d, h
    db $76
    ld h, l
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, c
    xor c
    sbc c
    xor d
    xor c
    xor d
    xor c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld h, $56
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b

jr_01a_5f98:
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sub a
    ld b, h
    and a
    add d
    ld d, [hl]
    ld h, d
    ld d, $86
    ld b, [hl]
    adc e
    xor b
    sbc h
    call c, $cdba
    jp z, $baab

    add a
    sbc c
    ld [hl], l
    ld d, [hl]
    db $76
    ld b, h
    ld h, a
    ld h, l
    ld h, a
    add a
    ld [hl], a
    adc c
    sbc b
    sbc c
    xor d
    sbc c
    sbc d
    adc c
    adc c
    sbc b
    add a
    adc b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add sp, -$68
    add l
    scf
    sub e
    inc de
    ld d, l
    ld b, c
    ld c, b
    ld [hl], l
    ld d, a
    xor e
    sbc b
    cp l
    call c, $9ebc
    cp d
    xor h
    cp c
    ld [hl], a
    adc b
    ld h, l
    ld h, [hl]
    ld h, l
    ld b, h
    ld h, [hl]
    ld d, l
    ld h, a
    add a
    ld a, b
    sbc c
    ld a, c
    sbc d
    cp c
    sbc c
    xor d
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    db $76
    adc b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    db $76
    ld h, a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    sbc c
    xor c
    sbc d
    xor d
    sbc c
    sbc d
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
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
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    db $76
    ld [hl], a
    ld h, l
    ld d, [hl]
    add l
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc d
    xor c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
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
    ld h, a
    db $76
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    xor d
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
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
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld l, b
    sbc c
    sbc c
    xor d
    xor c
    sbc d
    sbc c
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
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
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    add a
    ld [hl], a
    add a
    adc c
    ld [hl], a
    sbc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    sbc c
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, [hl]
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc c
    add a
    adc c
    add a
    sbc c
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    ld h, [hl]
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    sub a
    ld l, b
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld h, l
    adc c
    ld d, l
    sbc c
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc c
    db $76
    adc c
    add [hl]
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    or a
    ld c, b
    and a
    ld l, b
    sbc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    sbc b
    ld h, a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld l, d
    sub l
    ld l, d
    add l
    ld a, c
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    sub a
    ld l, b
    sub [hl]
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
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
    add [hl]
    adc d
    ld h, h
    adc d
    ld h, [hl]
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, c
    add [hl]
    ld a, c
    db $76
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    db $76
    adc c
    db $76
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
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
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld h, a
    sbc b
    db $76
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    sub a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add [hl]
    ld a, c
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
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
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
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
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc c
    ld a, b
    ld [hl], a
    ld a, c
    cp d
    sbc c
    cp d
    adc c
    add a
    adc b
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    ld a, b
    add a
    ld a, b
    db $76
    ld a, b
    sbc b
    adc c
    sub a
    ld h, [hl]
    adc b
    db $76
    ld a, b
    add [hl]
    ld a, c
    xor d
    xor c
    sbc c
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
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
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, c
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    db $76
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sub a
    ld a, b
    adc b
    ld [hl], a
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    db $76
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, a
    adc b
    db $76
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    adc b
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    sbc c
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    sbc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld h, a
    add a
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    sbc c
    adc b
    adc b
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
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add [hl]
    ld l, b
    add a
    ld h, a
    add a
    ld l, b
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    adc b
    ld [hl], a
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
    adc b
    adc b
    adc b
    ld a, b
    sbc c
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
    ld [hl], a
    ld h, a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    sbc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    adc c
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
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
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a

Jump_01a_6687:
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
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
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
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
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
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
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a

Jump_01a_6777:
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    sbc b
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc c
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    sbc b
    sbc c
    add a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld l, b
    add a
    ld a, b
    sbc c
    xor c
    sbc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    db $76
    ld d, l
    add [hl]
    db $76
    ld h, [hl]
    ld h, a
    adc c
    xor c
    add a
    ld a, b
    sbc d
    xor c
    sbc b
    adc b
    adc c
    sbc b
    add a
    ld h, a
    ld e, c
    xor c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    db $76
    ld [hl], a
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    db $76
    ld d, l
    db $76
    adc c
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    ld h, a
    adc c
    add a
    ld [hl], a
    adc c
    sbc c
    ld [hl], a
    ld a, b
    adc c
    adc b
    db $76
    ld h, a
    adc c
    sbc b
    db $76
    ld d, a
    sbc c
    add [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc b
    adc b
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

Call_01a_69ca:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_6bbb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7586:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7677:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_77b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_01a_7887:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_78a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_01a_78b8:
    rst $38

Call_01a_78b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
