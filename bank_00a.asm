; disasSembly of "lsdj.gb"
SECTION "ROM Bank $00a", ROMX[$4000], BANK[$a]

    ld h, b
    ld b, b
    ld d, b
    ld b, c
    jr nc, jr_00a_4049

    ret nz

    ld b, e
    ld b, b
    ld b, [hl]
    add b
    ld c, d
    ldh a, [rKEY1]
    ret nz

    ld d, d
    ldh a, [rHDMA3]
    jr nc, jr_00a_4069

    ret nz

    ld d, [hl]
    ld d, b
    ld d, a
    add b
    ld e, c
    ld h, b
    ld e, a
    jr nz, @+$71

    ldh [$7f], a
    nop
    nop
    ld c, b
    ld b, d
    ld b, a
    ld c, h
    ld b, d
    ld b, a
    ld c, l
    ld c, b
    ld b, e
    ld c, a
    ld c, b
    ld b, e
    ld c, h
    ld b, e
    dec l
    ld c, b
    ld d, h
    ld b, d
    ld c, h
    ld d, h
    ld b, d
    ld c, b
    ld b, c
    ld b, a
    ld c, h
    ld b, c
    ld b, a
    ld b, e
    ld b, d
    ld d, e
    ld c, l
    ld d, d
    ld b, e
    ld d, e
    ld d, a
    ld c, b
    ld c, h
    ld d, a
    ld c, b

jr_00a_4049:
    ld d, c
    ld d, l
    ld c, c
    ld b, e
    ld c, b
    ld c, c
    nop
    nop
    nop
    ld d, h
    ld d, d
    dec l
    scf
    ld [hl-], a
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $75c7
    db $76
    ld b, l
    ld l, d
    adc b
    ld a, c
    sbc $fd

jr_00a_4069:
    xor c
    adc c
    ld b, d
    ld bc, $ba05
    xor c
    sbc $ea
    add e
    ld bc, $8904
    sbc h
    rst $38
    db $ed
    db $d3
    nop
    inc bc
    ld d, h
    ld b, a
    adc l
    cp $c5
    inc de
    ld b, d
    ld [hl-], a
    ld [bc], a
    adc l
    cp $ed
    bit 4, h
    ld h, e
    ld bc, $ab36
    jp c, Jump_00a_6a79

    add e
    inc de
    ld b, [hl]
    add a
    ld l, c
    rst $08
    db $ec
    sub [hl]
    ld b, l
    ld d, l
    inc h
    ld l, d
    sbc b
    xor e
    jp z, Jump_00a_4586

    adc b
    ld h, l
    ld e, b
    call z, Call_00a_6699
    cp b
    ld h, [hl]
    ld h, l
    ld d, a
    ld [hl], a
    xor c
    sbc c
    ld l, c
    adc b
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc c
    adc b
    ld a, b
    xor b
    ld [hl], a
    db $76
    add a
    ld [hl], l
    ld l, b
    sbc b
    adc b
    ld l, c
    ld l, b
    ld h, [hl]
    ld [hl], a
    ld a, c
    adc d
    adc b
    sbc b
    adc c
    adc c
    ld h, a
    ld d, a
    ld a, b
    db $76
    ld h, a
    ld a, d
    sub a
    db $76
    ld [hl], a
    sbc c
    add a
    adc b
    xor c
    sbc b
    ld a, b
    add [hl]
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sbc b
    ld a, c
    sbc c
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    sbc c
    adc c
    ld a, b
    ld a, b
    adc b
    add a
    db $76
    adc b
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld l, b
    adc b
    adc b
    ld a, b
    adc b
    adc c
    add a
    add a
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    add a
    sub a
    add a
    add a
    ld [hl], a
    add a
    ld h, a
    add a
    add a
    add a
    sbc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc b
    db $76
    adc b
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    sub a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add hl, sp
    inc [hl]
    ld c, b
    ld d, l
    ld l, b
    sbc c
    ld a, c
    ld l, d
    db $dd
    cp $dd
    db $fd
    ld a, [$3594]
    dec h
    ldh a, [rP1]
    nop
    inc b
    ld d, l
    ld d, e
    ld de, $bb58
    reti


    xor h
    db $dd
    cp e
    adc d
    xor h
    xor $cd
    call $c8dd
    ld [hl], h
    ld b, l
    ld h, l
    ld d, e
    ld de, $1010
    ld bc, $1112
    ld l, b
    adc e
    ld c, [hl]
    rst $38
    sbc $fe
    db $fd
    xor $ed
    xor c
    add a
    ld d, l
    ld b, e
    ld [hl+], a
    inc hl
    ld b, a
    ld h, l
    ld d, h
    ld d, e
    ld b, l
    ld b, d
    ld b, l
    ld h, a
    adc b
    ld a, c
    adc c
    cp h
    call $dddc
    db $ed
    jp c, Jump_00a_7596

    and e
    ld [hl-], a
    ld bc, $6634
    ld d, h
    ld b, [hl]
    ld d, a
    ld a, b
    sbc c
    xor d
    xor d
    adc c
    add a
    add a
    xor d
    adc c
    adc b
    sbc d
    cp h
    xor d
    ld h, [hl]
    ld d, l
    ld d, a
    db $76
    ld h, [hl]
    ld l, b
    db $76
    ld h, h
    ld b, e
    ld h, [hl]
    ld a, c
    ld a, b
    adc c
    sbc c
    sbc c
    sbc b
    sbc d
    xor e
    xor d
    sbc c
    xor c
    sbc c
    add [hl]
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld h, a
    sub a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    sbc b
    ld a, b
    adc c
    sbc b
    sbc b
    adc c
    cp e
    cp d
    xor d
    adc b
    db $76
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld l, b
    adc b
    adc b
    add a
    ld a, b
    sbc d
    xor c
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    adc b
    sbc c
    adc c
    adc b
    sbc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld h, l
    ld a, b
    add a
    ld h, a
    ld h, a
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld l, b
    ld a, c
    adc b
    adc c
    sbc b
    sbc c
    adc c
    ld a, c
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, c
    adc b
    sbc b
    add a
    ld [hl], a
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    xor c
    sbc b
    db $76
    ld h, [hl]
    ld h, a
    ld d, a
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    ld l, b
    add a
    ld a, b
    adc b
    adc c
    adc b
    ld [hl], a
    ld a, c
    sbc c
    sbc c
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    add [hl]
    ld [hl], a
    sbc c
    sbc b
    adc c
    adc c
    sbc d
    sbc c
    db $76
    db $76
    add a
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    db $76
    ld d, [hl]
    ld d, a
    ld l, b
    ld a, c
    adc c
    sbc b
    add a
    sbc b
    sbc b
    add a
    add [hl]
    db $76
    ld a, b
    adc c
    adc b
    add [hl]
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    add a
    adc b
    ld l, c
    sbc b
    sbc c
    sbc c
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    add a
    adc b
    adc c
    adc b
    sbc c
    adc d
    adc c
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld a, c
    ld a, c
    add a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld a, b
    adc c
    sbc b
    sbc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    add a
    ld a, b
    adc d
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76

jr_00a_42bb:
    add [hl]
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld h, a
    sub a
    add a
    ld a, b
    db $76
    add a
    ld a, b
    ld l, b
    adc b
    adc c
    sbc b
    adc c
    add a
    adc b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sub a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    sbc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    ld h, a
    add a
    adc c
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    sbc b
    ld a, b
    adc b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    jr c, jr_00a_42bb

    adc b
    sub a

Call_00a_4334:
    ld [hl], a
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    call $b9bc
    add a
    ld [hl], h
    ld [hl], d
    ld hl, $5814
    cp l
    xor $ed
    and a
    ld [hl-], a
    db $10
    ld de, $ab16
    rst $18
    cp $fd
    ld d, d
    ld de, $3701
    adc d
    res 5, c
    sbc c
    sbc c
    sbc b
    add a
    ld a, c
    xor c
    sub [hl]
    ld d, h
    ld b, h
    add a
    adc c
    sbc e
    sbc d
    sbc b
    add [hl]
    ld h, [hl]
    ld d, l
    ld h, a
    adc c
    sbc d
    sbc c
    add a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld [hl], a
    sbc b
    sbc b
    adc b
    adc b
    db $76
    ld [hl], l
    ld h, a
    sbc b
    xor c
    sbc c
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    sbc c
    adc b
    sbc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    adc c
    sbc b
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b

Call_00a_43a7:
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, b
    add a
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld l, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    db $76
    or [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld l, b
    add a
    ld [hl], a
    ld h, a
    sbc b
    ld b, [hl]
    add e
    ld l, b
    ld l, c
    ld a, d
    adc e
    cp e
    rst $28
    rst $38
    xor $dc
    cp b
    ld h, l
    stop
    nop
    nop
    nop
    ld [bc], a
    ld b, [hl]
    ld a, b
    ld [$dd9a], sp
    db $ed
    rst $28
    rst $38
    cp $eb
    add [hl]
    ld h, l
    inc [hl]
    inc sp
    ld b, e
    inc [hl]
    inc hl
    ld [hl+], a
    inc hl
    dec [hl]
    ld l, b
    adc d
    cp l
    xor $de
    call z, $88b9
    db $76
    ld h, l
    ld d, l
    ld d, h
    inc sp
    ld [hl+], a
    inc de
    ld b, a
    ld l, b
    sbc d
    cp h
    call $abbb
    xor c
    xor d
    sbc d
    sbc c
    sub [hl]
    ld h, l
    ld [hl-], a
    inc hl
    ld [de], a
    ld [hl-], a
    ld b, [hl]
    ld d, a
    adc b
    sbc c
    xor e
    cp h
    db $dd
    db $ed
    db $ed
    db $db
    cp d
    db $76
    ld d, d
    ld [hl+], a
    ld [hl], d
    ld [hl-], a
    ld b, e
    ld b, h
    ld b, e
    ld h, [hl]
    ld a, c
    xor d
    cp e
    call $ddde
    res 5, d
    sbc c
    sub a
    and [hl]
    ld h, l
    ld b, h
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    inc h
    ld d, [hl]
    adc c
    xor d
    xor e
    cp h
    cp h
    set 1, h
    cp d
    ret


    add a
    ld h, [hl]
    ld b, h
    inc [hl]
    inc [hl]
    ld b, l
    ld d, [hl]
    ld a, b
    ld [hl], a
    adc c
    ld a, b
    sbc c
    xor d
    cp e
    xor e
    cp d
    xor c
    sub a
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    adc c
    xor d
    cp e
    cp e
    cp d
    xor c
    sbc b
    add a
    ld h, a
    ld d, a
    ld d, l
    ld h, l
    ld d, l
    ld b, l
    ld d, l
    db $76
    ld [hl], a
    adc d
    sbc d
    cp d
    sbc d
    xor d
    sbc d
    sbc c
    sbc b
    sub a
    add [hl]
    ld h, l
    ld d, h
    inc [hl]
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, a
    adc b
    adc c
    ld l, c
    sbc d
    cp d
    xor d
    cp d
    cp d
    sbc c
    add [hl]
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, a
    ld [hl], a
    ld a, b
    adc c
    xor d
    xor c
    xor c
    xor d
    sbc c
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    adc d
    sbc b
    sbc c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc c
    sbc c
    sbc c
    xor c
    xor c
    sbc b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    adc c
    add a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld [hl], a
    adc c
    adc c
    sbc d
    sbc d
    sbc c
    xor d
    sbc c
    xor b
    adc b
    sub a
    add [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    adc b
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld l, b
    ld a, b
    sbc c
    adc c
    adc d
    sbc c
    adc c
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    xor c
    sbc c
    sbc b
    adc c
    ld a, b
    db $76
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, b
    ld l, b
    adc b
    sbc d
    adc c
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    adc c
    sbc b
    sbc c
    sbc c
    adc c
    adc b
    adc b
    add a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    sbc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    sbc b
    adc b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    sbc b
    add a
    ld a, b
    add a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a

Jump_00a_4586:
    ld [hl], a
    add a
    adc b
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld a, b
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld l, b
    ld h, a
    ld a, b
    ld a, b
    adc b
    add a
    sbc b
    adc b
    add a
    adc b
    sbc b
    adc b
    ld [hl], a
    add a
    ld h, a
    add a
    ld h, a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    adc b
    sbc b
    sbc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    sub a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc c
    ld a, c
    adc b
    ld a, c
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    sbc b
    sbc b
    adc b
    rst $10
    adc b
    sub l
    ld c, b
    add l
    ld b, l
    ld h, a
    db $76
    ld d, h
    ld d, [hl]
    ld a, c
    xor b
    add [hl]
    ld a, b
    xor d
    cp e
    dec hl
    sbc $fe
    rst $38
    xor $ec
    cp d
    add a
    ld [hl], l
    ld d, e
    stop
    nop
    nop
    db $10
    ld de, $34a2
    ld h, [hl]
    add a
    ld a, c
    xor e
    cp h
    cp l
    adc $ff
    rst $38
    db $ed
    call z, $aacb
    cp d
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld d, l
    ld b, h
    inc sp
    jr nz, jr_00a_468a

    nop
    ld de, $2311
    ld b, l
    ld l, b
    add hl, sp
    xor d
    set 3, [hl]
    rst $28
    cp $ff
    cp $ee
    db $ed

jr_00a_468a:
    call c, $87c9
    ld h, l
    ld b, h
    ld b, e
    di
    ld [hl-], a
    ld hl, $2111
    inc sp
    inc sp
    ld b, h
    ld b, h
    ld b, l
    ld h, l
    ld a, b
    sbc c
    set 3, [hl]
    rst $28
    ld a, $ff
    rst $28
    sbc $ec
    res 3, b
    add [hl]
    ld h, l
    ld h, h
    ld b, d
    ld hl, $0111
    ld [bc], a
    ld [hl+], a
    or h
    ld b, l
    ld d, [hl]
    ld l, b
    adc b
    sbc d
    sbc e
    xor d
    sbc d
    xor d
    xor d
    cp e
    cp h
    call z, $cccc
    adc e
    xor d
    sbc c
    sbc b
    add [hl]
    ld d, l
    ld b, h
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld bc, $1211
    inc hl
    dec [hl]
    ld d, a
    add hl, sp
    sbc e
    call z, $efdf
    cp $fe
    db $ed
    call c, $aaba
    sbc b
    ld a, b
    db $76
    ld d, l
    ld b, h
    call nc, Call_000_2233
    inc hl
    ld [hl+], a
    inc hl
    inc [hl]
    ld d, h
    ld d, [hl]
    ld h, a
    ld a, b
    adc c
    xor d
    cp e
    call z, Call_00a_4ddc
    xor $de
    call c, $aacc
    adc b
    ld h, [hl]
    ld d, h
    ld b, e
    inc [hl]
    inc hl
    inc hl
    inc sp
    inc sp
    ld b, e
    or l
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc c
    xor c
    xor d
    cp e
    cp e
    cp h
    call z, $cbcc
    cp e
    xor c
    xor c
    adc b
    add a
    ld d, [hl]
    ld d, e
    ld [hl-], a
    ld [de], a
    ld bc, $1211
    inc hl
    inc [hl]
    ld d, l
    ld h, a
    adc b
    ld c, d
    xor h
    call z, $dded
    db $ed
    db $dd
    call c, $aaba
    sbc b
    adc b
    db $76
    ld [hl], l
    ld d, l
    ld b, h
    call nc, Call_00a_4334
    ld b, h
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    adc b
    sbc d
    xor e
    cp e
    call c, Call_000_3dcd
    call z, $cccc
    xor e
    xor b
    sbc b
    ld [hl], a
    ld [hl], l
    ld d, l
    ld b, e
    inc [hl]
    inc sp
    ld [hl-], a
    ld b, e
    inc [hl]
    and l
    ld b, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    adc d
    xor d
    set 1, h
    call $cddc
    call c, $aacb
    sbc b
    add a
    ld d, [hl]
    ld d, h
    ld b, e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld b, h
    ld d, l
    ld h, [hl]
    ld l, b
    adc b
    ld e, d
    xor e
    cp h
    cp h
    db $db
    res 7, e
    cp e
    cp d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    ld h, l
    push de
    ld d, h
    ld d, h
    inc sp
    ld b, e
    ld b, h
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    add a
    sbc c
    sbc d
    cp e
    call z, Call_00a_5ccc
    set 1, e
    cp e
    xor d
    adc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    and h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    xor d
    sbc e
    xor h
    cp e
    cp h
    cp h
    cp h
    cp e
    xor d
    sbc d
    adc b
    db $76
    ld h, [hl]
    ld d, h
    ld b, h
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    ld b, l
    ld b, [hl]
    ld h, [hl]
    db $76
    ld a, c
    ld a, c
    ld e, b
    sbc d
    sbc d
    xor d
    xor e
    cp d
    xor e
    xor e
    sbc d
    xor d
    sbc c
    sbc c
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    or l
    ld d, l
    ld b, h
    inc [hl]
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld l, b
    ld a, b
    sbc c
    xor c
    cp d
    cp h
    cp h
    ld l, e
    xor e
    cp d
    sbc d
    xor c
    sbc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], l
    ld h, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    add l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor d
    cp e
    cp e
    res 7, e
    cp d
    cp d
    sbc d
    adc b
    add a
    db $76
    ld h, l
    ld h, h
    ld d, l
    ld b, h
    ld b, l
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    ld e, c
    adc c
    sbc c
    adc c
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor c
    xor d
    sbc c
    adc b
    sub a
    ld [hl], a
    ld h, [hl]
    or l
    ld d, h
    ld d, h
    ld b, e
    ld d, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc c
    adc c
    xor c
    cp d
    cp e
    xor e
    ld l, e
    cp d
    sbc d
    sbc d
    sbc b
    adc b
    add a
    ld [hl], a
    add [hl]
    db $76
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    add h
    ld d, l
    ld h, l
    db $76
    ld [hl], a
    add a
    sbc c
    sbc c
    sbc d
    xor e
    xor d
    cp e
    xor e
    xor d
    cp c
    sbc c
    ld a, c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld h, h
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    add a
    sbc b
    sbc c
    sbc d
    sbc d
    xor e
    xor c
    cp d
    sbc d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    sub l
    ld d, l
    ld d, l
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    sbc d
    sbc d
    xor d
    ld e, d
    sbc c
    sbc d
    sbc b
    xor b
    sbc b
    add a
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    add l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    add a
    add a
    sbc b
    sbc c
    sbc c
    xor d
    xor d
    cp c
    xor d
    xor c
    sbc d
    adc c
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, l
    ld [hl], l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld e, b
    ld a, b
    sbc c
    adc c
    sbc d
    sbc d
    xor c
    xor d
    sbc c
    xor d
    sbc c
    sbc b
    adc b
    ld a, b
    ld h, a
    ld h, [hl]
    sub l
    ld d, l
    ld d, l
    ld h, l
    ld b, [hl]
    ld h, l
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    xor c
    ld l, c
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    sub l
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld a, b
    sbc b
    sbc c
    adc d
    xor d
    sbc d
    xor d
    sbc d
    sbc b
    sbc c
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, l
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld a, b
    ld e, b
    adc b
    adc c
    adc d
    sbc c
    sbc c
    xor d
    sbc d
    sbc b
    xor b
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, a
    ld h, a
    sub [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    db $76
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    add a
    adc b
    sub a
    adc c
    adc c
    adc c
    adc c
    ld l, c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    add [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, c
    adc c
    adc c
    sbc b
    sbc c
    xor c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b

Jump_00a_4940:
    ld a, b
    adc b
    ld a, b
    add [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    adc c
    ld a, c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    sub [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    sbc c
    ld l, c
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    adc b
    add a
    add a
    add [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    add [hl]
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    adc b
    sbc b
    adc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    adc b
    ld a, b
    add a
    ld a, b
    ld h, a
    ld [hl], a
    sub a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    ld l, b
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    adc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    sbc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc c
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    add a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    add a
    db $76
    add a
    adc b
    adc b
    adc b
    sbc b
    ld l, c
    adc c
    sbc c
    sbc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a

jr_00a_4a20:
    sub a
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    sbc b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    sub [hl]
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    adc b
    ld a, b
    ld d, d
    jr nc, jr_00a_4a20

    adc $df
    ld h, [hl]
    cp $50
    adc d
    db $ec
    ld b, e
    inc sp
    inc hl
    inc hl
    inc hl
    ld [hl], l
    sub l
    db $dd
    ld d, c
    inc sp
    and a
    ld l, [hl]
    push bc
    adc a
    add hl, hl
    push af
    ld l, $ed
    jp hl


    ld b, l
    ld [hl], $ac
    jp c, $be8b

    ld [hl], c
    db $dd
    ld b, c
    ld c, e
    res 7, l
    sub h
    dec d
    inc sp
    ld hl, $2845
    cp l
    or a
    ld [hl], l
    ld [hl+], a
    ld e, c
    and $8b
    inc b
    cp h
    or l
    ld d, d
    ld a, [hl]
    call z, Call_000_3584
    ld c, b
    sbc d
    cp l
    or e
    ld c, h
    rst $00
    ld [hl-], a
    ld c, c
    set 1, e
    add l
    ld b, h
    ld b, [hl]
    ld b, h
    inc [hl]
    daa
    call $33f5
    adc d
    sbc d
    xor h
    ret c

    ld c, b
    db $ed
    xor b
    ld b, h
    xor [hl]
    ld d, h
    ld d, l
    adc b
    sbc b
    ld [hl], $9c
    db $ed
    cp h
    call z, Call_000_2231
    ld h, a
    ld a, b
    xor c
    ld a, h
    and e
    inc de
    ld b, e
    ld b, e
    ld b, l
    ld l, d
    xor c
    add [hl]
    xor c
    ld a, c
    jp c, $bc23

    xor d
    ld [$7956], a
    cp b
    add a
    ld b, l
    ld b, a
    sbc d
    ld a, d
    jp z, $b89d

    ld h, l
    ld h, $87
    ld h, e
    inc h
    xor e
    sbc c
    ld d, d
    ld [hl-], a
    ld l, c
    sbc b
    add l
    adc d
    add a
    adc c
    res 5, c
    sbc c
    jp z, $8767

    sbc d
    sbc b
    ld b, e
    ld l, d
    sub e
    ld e, b
    adc b
    adc d
    add a
    call z, $9687
    ld b, l
    ld h, h
    ld d, [hl]
    ld b, c
    inc [hl]
    ld h, a
    add a
    ld d, h
    ld b, [hl]
    xor d
    ld [hl], a
    ld a, b
    add a
    xor l
    res 3, c
    sbc d
    cp d
    ld [hl], a
    ld l, d
    cp d
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld l, b
    sbc c
    ld h, [hl]
    cp b
    adc c
    adc b
    ld [hl], a
    ld l, c
    or a
    inc sp
    ld [hl-], a
    ld b, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld a, b
    db $76
    adc h
    ld a, b
    ld a, e
    call z, $a7cb
    ld d, l
    sbc d
    add [hl]
    sbc c
    xor d
    xor c
    add a
    ld d, h
    ld l, b
    adc b
    ld [hl], a
    and [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld a, d
    sbc c
    db $76
    ld b, e
    dec [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc c
    add l
    ld a, b
    ld a, d
    res 5, c
    xor c
    sbc d
    cp b
    ld d, l
    ld h, [hl]
    adc b
    db $76
    db $76
    adc b
    ld [hl], l
    ld a, c
    sbc b
    ld h, a
    sub [hl]
    add a
    ld h, l
    ld d, a
    adc d
    xor d
    add l
    ld d, [hl]
    ld h, h
    ld b, e
    ld d, [hl]
    ld a, b
    sbc b
    ld a, c
    sbc d
    adc c
    ld l, d
    res 7, e
    ret z

    sbc b
    xor c
    ld h, l
    ld d, a
    ld l, b
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc d
    adc b
    and a
    sbc b
    ld h, [hl]
    ld d, l
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld a, b
    xor b
    sub a
    ld a, b
    adc c
    sbc d
    xor d
    xor d
    xor e
    xor c
    add a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld l, c
    sub a
    ld h, l
    ld h, l
    adc c
    adc c
    xor c
    sub a
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, a
    adc c
    adc b
    ld a, c
    sbc d
    xor c
    sbc b
    adc b
    adc d
    sbc d
    cp d
    sbc b
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld a, b
    sbc c
    sbc b
    add [hl]
    ld h, [hl]
    ld d, l
    ld h, a
    ld [hl], a
    sbc b
    ld [hl], a
    ld d, l
    ld h, [hl]
    sbc b
    sbc c
    sbc c
    xor d
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    adc b
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, l
    add [hl]
    ld h, l
    ld d, a
    ld a, b
    sbc b
    xor b
    adc c
    sbc c
    ld [hl], a
    db $76
    ld h, l
    db $76
    db $76
    ld h, a
    add a
    sub a
    ld h, a
    adc c
    xor d
    xor d
    xor d
    ld a, b
    ld [hl], a
    adc b
    adc c
    add a
    ld [hl], a
    adc b
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    db $76
    ld [hl], a
    add a
    ld a, b
    sub a
    cp b
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], l
    ld d, l
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    xor d
    xor d
    ld a, d
    xor c
    adc b
    db $76
    ld d, [hl]
    ld l, b
    ld a, c
    adc b
    ld h, h
    ld d, l
    ld d, [hl]
    ld h, a
    ld l, b
    add a
    ld [hl], a
    add a
    xor b
    adc c
    sbc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    sbc d
    sbc d
    ld a, d
    xor d
    xor b
    add [hl]
    ld h, l
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    adc c
    adc c
    sbc b
    and [hl]
    ld h, a
    adc c
    sbc c
    sub a
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc c
    sbc b
    sbc b
    adc c
    sbc c
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    sbc c
    sbc d
    sbc c
    add a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    adc c
    sub a
    adc b
    adc b
    sbc b
    sbc b
    adc d
    sbc b
    sub a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc c
    sbc c
    ld a, c
    xor c
    sbc b
    add [hl]
    ld h, l
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc c
    xor c
    sbc b
    add a
    and a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    xor c
    ld a, b
    sbc c
    sbc c
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    sbc c
    sbc d
    add a
    xor b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, a
    ld a, b
    add a
    add [hl]
    add a
    adc b
    sbc b
    sbc b
    xor c
    sbc c
    ld a, b
    adc b
    db $76
    db $76
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc d
    adc b
    ld a, c
    ld a, b
    add [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    add a
    ld a, b
    sub a
    sbc c
    sbc d
    xor c
    sbc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    sbc c
    adc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld l, b
    sbc b
    adc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    adc b
    adc c
    sbc c
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    add a
    db $76
    ld l, b
    adc b
    sbc b
    adc c
    sbc b
    adc b
    ld h, a
    ld h, [hl]
    ld d, a
    ld h, a
    db $76
    add [hl]
    db $76
    ld [hl], a
    add a
    adc b
    adc c
    adc c
    adc c
    ld a, c
    adc b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc c
    ld [hl], a
    add a
    ld a, b
    ld l, b
    adc b
    adc b
    sbc b
    adc b
    ld h, a
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    add a
    add a
    sbc c
    sbc c
    sbc c
    ld a, c
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    sub a
    adc b
    ld [hl], a
    and a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc d
    sbc c
    ld a, c
    sbc c
    ld a, b
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    sbc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    adc c
    adc c
    add a
    adc b
    adc c
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc c
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c

Call_00a_4ddc:
    adc c
    sbc b
    adc b
    ld [hl], a
    add a
    sbc b
    sbc b
    add a
    add a

jr_00a_4de5:
    ld [hl], a
    add a
    db $76
    ld [hl], a
    db $76
    add a
    ld [hl], a
    add a
    db $76
    add a
    add a
    ld d, l
    jr nz, jr_00a_4e14

    cp a
    db $fc
    add [hl]
    ld e, a
    sbc $fd
    db $eb
    rla
    inc [hl]
    jr nz, jr_00a_4e1f

    sub a
    ld [hl], l
    sub e
    ld [hl+], a
    ld b, e
    ld h, a
    sbc c
    cp l
    sbc $d9
    xor d
    or l
    jr nz, jr_00a_4e2e

    scf
    call z, $a8b8
    adc c
    db $76
    ld h, [hl]
    xor d

jr_00a_4e14:
    sbc d
    cp l
    xor d
    call z, Call_00a_5089
    jr z, jr_00a_4de5

    ld b, h
    adc l
    db $eb

jr_00a_4e1f:
    adc c
    ld [hl], a
    cp l
    and h
    ld sp, $5522
    ld b, l
    inc sp
    ld d, l
    ld b, l
    ld h, [hl]
    adc d
    cp d
    or [hl]

jr_00a_4e2e:
    ld de, $4536
    inc [hl]
    inc [hl]
    adc l
    rst $38
    db $eb
    adc b
    xor c
    xor b
    ld [hl], a
    adc d
    db $dd
    ld [$99bb], a
    ld [hl], a
    inc [hl]
    ld l, d
    xor $dc
    sub [hl]
    ld d, l
    ld b, l
    db $10
    ld [hl], $99
    add [hl]
    ld d, l
    ld l, b
    sbc b
    ld b, e
    inc sp
    ld h, l
    ld a, c
    xor d
    xor e
    sub l
    ld de, $1610
    sbc d
    xor b
    cp l
    db $ed
    xor $c8
    ld [hl], l
    ld b, h
    scf
    ld a, c
    xor h
    db $ed
    cp d
    sbc b
    adc d
    sbc b
    db $76
    adc b
    cp e
    and [hl]
    ld b, e
    ld [de], a
    inc hl
    ld de, $6664
    adc d
    xor e
    sbc b
    ld h, a
    ld h, l
    ld [hl-], a
    ld [hl], $8a
    xor e
    xor c
    add a
    add a
    ld d, e
    inc [hl]
    ld e, b
    sbc e
    sbc $fe
    cp $a6
    ld d, e
    ld b, [hl]
    ld a, c
    sbc c
    xor l
    call c, $86b9
    ld h, [hl]
    db $76
    ld d, h
    ld d, [hl]
    ld a, c
    adc b
    add l
    ld [hl-], a
    inc d
    ld h, a
    db $76
    ld h, l
    ld h, [hl]
    sbc d
    xor c
    sbc c
    ld [hl], l
    ld b, h
    db $76
    sbc h
    db $eb
    cp b
    adc b
    adc b
    adc c
    ld a, b
    ld h, a
    ld h, [hl]
    ld a, c
    cp h
    call $87ba
    ld h, [hl]
    sbc b
    xor c
    sbc b
    sbc d
    sbc d
    xor b
    add l
    inc sp
    inc sp
    inc sp
    dec [hl]
    adc b
    adc b
    ld h, l
    ld b, [hl]
    ld a, b
    add a
    ld [hl], l
    ld d, l
    ld h, a
    ld a, c
    sbc b
    xor d
    sub a
    ld h, [hl]
    sbc d
    call z, Call_00a_76ba
    db $76
    adc b
    adc b
    ld b, a
    ld [hl], a
    db $76
    ld [hl], a
    adc d
    xor e
    sbc d
    sbc c
    sbc c
    adc c
    sbc c
    add a
    ld [hl], a
    adc b
    ld a, b
    ld h, h
    add h
    ld b, h
    inc sp
    dec [hl]
    ld d, a
    ld [hl], a
    ld h, [hl]
    adc c
    cp d
    add [hl]
    ld d, l
    ld d, a
    ld a, c
    adc d
    xor c
    sbc c
    ld a, b
    adc d
    xor e
    xor d
    add [hl]
    ld d, [hl]
    ld d, [hl]
    adc d
    cp d
    xor b
    sbc b
    xor b
    adc b
    adc b
    sbc c
    ld [hl], a
    or [hl]
    ld a, b
    sbc c
    adc c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, e
    inc [hl]
    ld b, h
    ld b, h
    ld d, [hl]
    ld h, [hl]
    sbc d
    sbc h
    xor c
    sub a
    ld [hl], a
    adc b
    adc c
    sbc c
    cp e
    xor e
    xor c
    xor c
    sbc c
    sub a
    ld h, h
    ld b, h
    ld a, b
    ld e, d
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    add [hl]
    ld [hl], a
    ld d, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    sub e
    ld [hl-], a
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    adc d
    xor e
    xor c
    adc b
    adc d
    cp e
    cp e
    sbc c
    ld e, d
    xor d
    xor b
    adc b
    ld [hl], a
    ld h, l
    ld d, e
    ld b, l
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc c
    sbc c
    xor c
    db $76
    push bc
    ld b, l
    ld h, [hl]
    ld a, b
    adc c
    add a
    ld a, b
    adc b
    ld [hl], a
    ld d, h
    inc h
    dec [hl]
    ld e, b
    adc c
    sbc e
    cp h
    ld e, e
    xor d
    sub a
    ld h, a
    ld [hl], a
    adc b
    xor h
    call $87a8
    adc b
    sbc b
    add a
    ld h, [hl]
    ld d, h
    ld b, e
    add h
    ld d, a
    ld h, a
    ld h, a
    adc b
    xor e
    xor e
    cp c
    sub [hl]
    ld d, h
    ld b, e
    ld b, [hl]
    ld l, c
    sbc c
    sbc c
    adc b
    and a
    ld h, [hl]
    ld b, e
    inc sp
    ld b, l
    ld h, a
    xor d
    set 1, h
    res 5, c
    sbc b
    ld a, b
    ld a, b
    adc b
    sbc c
    xor d
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    ld b, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc d
    sbc d
    ret


    add [hl]
    ld h, h
    ld b, l
    ld d, a
    sbc c
    xor c
    xor b
    sub [hl]
    ld h, a
    ld d, l
    dec [hl]
    ld b, [hl]
    ld d, a
    adc c
    xor e
    inc a
    call z, $a9ba
    sbc b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, h
    ld d, h
    sub l
    ld b, [hl]
    ld d, a
    ld [hl], a
    adc b
    sbc c
    xor c
    xor b
    adc b
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, c
    xor d
    ld e, d
    sbc b
    db $76
    ld h, [hl]
    ld d, [hl]
    db $76
    ld l, b
    ld a, c
    xor e
    cp h
    cp h
    res 5, e
    xor c
    add a
    ld [hl], l
    or [hl]
    ld h, [hl]
    db $76
    ld d, l
    ld [hl], a
    ld [hl], a
    db $76
    ld h, h
    ld b, h
    inc [hl]
    ld b, l
    ld d, a
    ld a, b
    sbc e
    xor e
    cp h
    adc c
    add a
    ld h, [hl]
    db $76
    ld a, b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld e, b
    sbc c
    sbc c
    xor d
    cp d
    sbc c
    sbc b
    db $76
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    add h
    ld d, l
    ld d, l
    ld d, [hl]
    add a
    sbc c
    xor e
    call z, $bbcc
    adc b
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    adc c
    ld a, b
    adc c
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc d
    sbc d
    sbc c
    sub a
    db $76
    add $56
    ld d, h
    ld h, l
    ld d, [hl]
    ld h, a
    ld a, b
    add a
    db $76
    db $76
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    sbc c
    xor e
    ld l, h
    call $99bc
    add [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    add a
    adc c
    add a
    add a
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc d
    sbc c
    xor d
    sbc c
    sbc b
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld d, h
    dec [hl]
    ld b, l
    ld h, a
    ld [hl], a
    ld l, b
    adc c
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc c
    cp d
    cp e
    cp e
    cp d
    xor c
    ld [hl], a
    ld h, a
    ld d, a
    ld h, l
    ld h, a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    sbc c
    xor d
    cp d
    xor c
    add a
    sub [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a

Call_00a_5089:
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    ld l, e
    xor d
    cp e
    xor d
    xor c
    sbc b
    ld [hl], a
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld h, a
    add a
    adc b
    sbc b
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, a
    ld h, [hl]
    ld a, b
    sbc d
    xor d
    cp d
    xor c
    add a
    ld h, [hl]
    ld d, h
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld h, a
    ld h, a
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    xor c
    xor c
    xor d
    cp d
    xor d
    sbc b
    ld [hl], a
    ld [hl], l
    add h
    ld d, h
    ld d, e
    ld d, l
    ld h, [hl]
    add a
    adc b
    adc c
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc d
    sbc c
    sbc b
    sbc b
    add a
    ld h, a
    ld h, l
    ld h, l
    ld h, a
    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    sbc c
    adc c
    ld a, d
    sbc c
    xor d
    xor c
    xor d
    adc c
    ld [hl], a
    db $76
    ld h, l
    ld d, [hl]
    ld d, l
    ld b, h
    ld h, l
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    adc b
    sub a
    add a
    add a
    adc b
    sbc c
    sbc c
    adc c
    ld a, c
    add a
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, [hl]
    add a
    adc c
    adc c
    xor c
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    add a
    adc c
    sbc d
    xor d
    xor c
    xor c
    add a
    add l
    ld h, h
    ld b, l
    ld b, h
    ld b, h
    ld d, l
    ld h, a
    ld a, b
    ld a, b
    adc b
    adc c
    sbc d
    adc c
    sbc c
    adc b
    adc b
    sbc b
    sbc b
    adc b
    adc b
    add a
    add a
    db $76
    ld h, l
    ld d, [hl]
    ld d, l
    ld a, b
    adc c
    sbc d
    xor c
    sbc d
    sbc c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    add a
    db $76
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    db $76
    add a
    sub a
    sbc b
    sbc c
    xor c
    sbc c
    xor c
    sbc d
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    adc b
    sbc d
    xor c
    xor b
    xor b
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    sbc b
    ld h, a
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    db $76
    ld h, a
    ld a, b
    adc b
    sbc c
    adc c
    adc c
    adc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld h, a
    adc b
    adc c
    xor c
    ld a, c
    sbc d
    sbc b
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    add a
    add a
    adc b
    adc c
    sbc d
    xor d
    sbc c
    sbc c
    adc c
    ld a, b
    adc b
    add a
    adc b
    add a
    sbc b
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, a
    add a
    adc b
    adc b
    sbc b
    sbc c
    adc b
    sbc c
    adc b
    adc b
    add a
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld a, b
    adc b
    adc c
    adc c
    sbc c
    sbc d
    sbc c
    xor d
    adc c
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc d
    xor c
    xor c
    xor c
    adc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    add [hl]
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    sbc b
    add a
    add a
    sub a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    ld a, c
    xor c
    sbc b
    adc b
    adc b
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc b
    sbc b
    sbc b
    adc b
    adc c
    add a
    adc b
    ld l, b
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
    adc c
    adc c
    sbc b
    sbc c
    sbc b
    ld a, b
    adc b
    add a
    ld a, b
    db $76
    add a
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    xor c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, c
    adc c
    adc c
    adc b
    ld a, b
    add a
    add a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a

Jump_00a_526f:
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc b
    adc c
    adc c
    sbc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    add a
    sbc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    sbc c
    ld a, c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    add a

jr_00a_52af:
    ld a, b
    adc b
    sbc b
    adc c
    ld a, b
    adc b
    add a
    add a
    ld l, b
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    and [hl]
    or e
    jp nz, $b887

    and d
    ld d, [hl]
    ccf
    ld e, a
    ld h, [hl]
    ld b, $5e
    adc [hl]
    jp nc, Jump_00a_4940

    jp hl


    db $e3
    ld d, b
    ld e, e
    cp [hl]
    adc d
    inc b
    ld e, $9f
    sub [hl]
    ld b, c
    scf
    ld a, [$61e3]
    jr z, jr_00a_52af

    xor b
    daa
    inc e
    ld a, a
    sub a
    dec [hl]
    add hl, sp
    reti


    db $e4
    ld [hl], b
    ld a, c
    ret c

    sub $35
    dec sp
    xor h
    adc c
    ld h, $29
    jp c, Jump_00a_6297

    ld [hl], l
    jp hl


    push bc
    ld d, h
    ld h, a
    cp [hl]
    adc b
    dec h
    ld e, c
    xor h
    xor b
    ld b, d
    db $76
    ret


    sub $61
    ld l, b
    cp h
    adc c
    ld b, l
    ld a, [de]
    xor h
    sbc d
    inc [hl]
    ld h, [hl]
    res 6, [hl]
    ld h, e
    ld [hl], l
    cp h
    cp b
    ld b, h
    ld c, b
    sbc l
    sbc d
    inc sp
    ld d, a
    sbc e
    rst $00
    ld h, e
    ld d, [hl]
    cp d
    xor c
    ld h, e
    ld d, a
    sbc e
    xor d
    ld d, l
    scf
    sbc e
    sbc b
    ld [hl], l
    ld d, l
    xor e
    and a
    add h
    ld d, [hl]
    adc e
    cp c
    ld d, l
    ld d, a
    ld a, e
    xor b
    ld d, a
    ld b, a
    adc d
    xor c
    ld [hl], h
    ld h, [hl]
    adc d
    cp c
    ld h, l
    ld d, l
    sbc d
    sbc d
    ld h, [hl]
    ld d, [hl]
    adc d
    sbc b
    ld [hl], l
    ld d, a
    sbc c
    cp b
    ld [hl], l
    ld [hl], l
    adc c
    or a
    db $76
    ld h, a
    sbc d
    sbc c
    ld [hl], l
    ld e, b
    adc c
    xor c
    ld [hl], l
    db $76
    sbc c
    sbc b
    add [hl]
    ld d, [hl]
    adc d
    adc c
    db $76
    ld h, a
    ld a, c
    xor b
    db $76
    ld h, a
    adc c
    sbc b
    db $76
    ld h, a
    adc b
    sbc c
    db $76
    ld l, b
    ld a, d

Jump_00a_536e:
    sbc b
    ld h, a
    ld h, [hl]
    sbc c
    adc b
    add [hl]
    ld h, a
    adc b
    sub a
    db $76
    ld [hl], a
    ld a, c
    sbc b
    ld h, a
    ld h, a
    adc c
    sbc b
    ld [hl], a
    ld h, a
    sbc b
    sbc b
    db $76
    ld h, a
    adc b
    sbc c
    db $76
    ld h, a
    adc d
    ld a, b
    add l
    ld [hl], a
    adc c
    adc b
    add [hl]
    ld h, a
    ld a, d
    adc b
    ld [hl], a
    ld h, a
    adc c
    adc c
    ld h, a
    ld h, a
    adc c
    sbc b
    db $76
    ld h, [hl]
    adc b
    sbc b
    add [hl]
    ld [hl], a
    ld a, c
    adc c
    ld [hl], a
    ld h, a
    adc b
    sbc b
    add [hl]
    ld [hl], a
    adc c
    adc b
    ld [hl], a
    db $76
    adc b
    adc b
    add [hl]
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    db $76
    adc c
    adc b
    ld [hl], a
    ld h, a
    adc b
    adc b
    add [hl]
    ld a, b
    ld a, b

jr_00a_53be:
    sbc b
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    ld a, b
    db $76
    adc b
    adc b
    add [hl]
    add a
    adc b
    sbc b
    ld [hl], a
    ld h, a
    adc b
    add a
    add a

jr_00a_53d0:
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sub a
    add a
    add a
    ld a, c
    adc b
    add [hl]
    ld a, b
    adc b
    add a
    add [hl]
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    jr z, jr_00a_5459

    sbc [hl]
    add hl, hl
    ld [hl], d
    add l
    ld e, a
    add $e5
    dec d
    ld d, c
    reti


    sbc a
    or l
    ld d, c
    ld d, $9d
    ei
    db $eb
    ld h, $10
    ld a, e
    sbc [hl]
    db $ec
    add e
    ld [hl+], a
    daa
    xor e
    call c, Call_00a_43a7
    inc hl
    adc d
    adc $b8
    ld [hl], e
    inc [hl]
    ld b, a
    call z, $87d9
    jr nc, jr_00a_5471

    sbc e
    db $db
    xor b
    ld b, h
    ld b, e
    adc b
    cp l
    sbc c
    sub e
    ld b, l
    jr c, jr_00a_53d0

    cp e
    ld a, b
    ld d, h
    ld h, h
    ld a, e
    sbc d
    cp b
    ld h, a
    ld b, l
    ld b, [hl]
    adc h
    sbc c
    and l
    ld h, [hl]
    jr c, jr_00a_53be

    cp d
    adc c
    ld h, l
    ld h, l
    ld a, b
    adc e
    sbc c
    sub [hl]
    ld c, b
    ld b, a
    sub a
    xor c
    xor c
    ld h, [hl]
    ld [hl], l
    ld l, c
    adc c
    xor b
    sbc b
    ld d, [hl]
    ld h, [hl]
    adc c
    ld a, d
    and a
    add [hl]
    ld [hl], a
    ld h, a
    cp b
    adc e
    ld l, b
    ld [hl], h
    ld [hl], a
    ld l, e
    sub a

jr_00a_5459:
    and a
    ld l, b
    ld b, a
    add a
    xor d
    ld a, c
    add l
    db $76
    ld h, a
    adc c
    xor b
    add a
    ld h, a
    ld [hl], l
    adc c
    adc c
    sub a
    sub [hl]
    ld d, a
    ld d, a
    sub a
    xor c
    ld l, b
    ld h, l

jr_00a_5471:
    add [hl]
    ld l, d
    adc b
    sub a
    ld a, b
    ld e, b
    ld h, [hl]
    xor c
    adc d
    add [hl]
    add [hl]
    ld h, a
    ld a, b
    xor b
    sbc b
    sub a
    ld [hl], h
    ld a, b
    ld a, d
    adc b
    sub [hl]
    ld e, b
    ld b, a
    adc b
    xor c
    ld a, c
    ld [hl], l
    db $76
    ld a, c
    ld a, c
    xor b
    and [hl]
    ld d, a
    ld h, a
    sbc b
    sbc c
    adc b
    ld [hl], l
    ld h, a
    ld a, c
    sbc b
    xor c
    ld h, a
    ld d, l
    ld [hl], a
    sbc e
    ld a, c
    db $76
    db $76
    ld e, b
    adc b
    xor b
    adc c
    db $76
    ld [hl], l
    ld a, c
    adc c
    sub [hl]
    sub a
    ld d, a
    ld h, a
    sbc c
    sbc d
    sub a
    db $76
    db $76
    ld a, c
    sbc b
    sbc b
    ld h, a
    ld h, a
    db $76
    sbc b
    sbc c
    add a
    ld [hl], a
    ld l, b
    ld l, b
    sbc b
    sbc b
    ld h, a
    ld h, [hl]
    adc b
    ld a, e
    add a
    sub [hl]
    ld e, c
    ld e, b
    add a
    sbc d
    ld a, b
    ld [hl], l
    add [hl]
    ld a, c
    adc b
    ld [hl], a
    add a
    ld h, [hl]
    add [hl]
    sbc b
    adc c
    add a
    db $76
    ld a, b
    ld a, b
    sub a
    sbc b
    ld [hl], a
    db $76
    add a
    adc c
    adc b
    sub [hl]
    sub [hl]
    ld l, b
    add a
    and a
    adc c
    ld l, b
    db $76
    ld a, c
    adc c
    sub a
    adc b
    ld l, b
    db $76
    sbc b
    adc c
    adc b
    db $76
    add [hl]
    ld [hl], a
    sbc c
    adc b
    add a
    ld h, a
    ld [hl], a
    adc b
    adc c
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    ld h, a
    ld [hl], a
    add a
    ld l, d
    adc b
    sub [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    sbc b
    ld a, c
    db $76
    db $76
    ld a, b
    adc b
    and a
    add a
    ld h, a
    ld [hl], a
    sbc b
    ld a, c
    ld [hl], a
    add [hl]
    ld l, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld h, a
    ld a, b
    adc b
    adc b
    add a
    add [hl]
    ld l, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    add a
    add a
    ld a, b
    db $76
    sub [hl]
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, c
    ld l, b
    ld h, [hl]
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    add [hl]
    sub [hl]
    sub a
    ld a, b
    add a
    add [hl]
    sbc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld c, c
    ld l, c
    ld e, h
    ld d, a
    and [hl]
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld h, [hl]
    and a
    add [hl]
    adc d
    ld l, c
    ld a, c
    db $76
    xor b
    ld l, b
    add a
    add a
    ld [hl], a
    or e
    call nz, Call_00a_69a7
    ld e, d
    db $76
    and l
    sbc c
    xor d
    ld e, c
    add l
    or l
    adc d
    ld e, c
    db $76
    or l
    ld a, d
    dec a
    inc l
    ld e, c
    add h
    jp $d3c3


    cp b
    ld e, d
    ld c, l
    inc l
    ld e, c
    add [hl]
    ld a, c
    ld [hl], l
    sbc b
    ld l, b
    ld l, d
    ld c, d
    ld a, b
    ld h, [hl]
    or h
    and h
    and a
    ld [hl], a
    or [hl]
    ld l, h
    inc a
    dec l
    ld d, a
    ld [hl], a
    ret nz

    and $6b

jr_00a_559b:
    ld l, $2b
    add [hl]
    and a
    ld l, b
    and e
    and [hl]
    and a
    ld a, b
    adc d
    ld e, $63
    rst $00
    ld c, [hl]
    ld a, [hl+]
    sub h
    sbc c
    ld c, d
    add a
    sbc b
    ld e, d
    add d
    db $d3
    xor b
    ld a, b
    ld a, e
    dec c
    ld h, a
    or e
    xor c
    ld d, [hl]
    push bc
    ld a, d
    ld e, c
    ld [hl], a
    adc c
    ld e, d
    or [hl]
    adc c
    ld l, b
    sub h
    or h
    xor b
    ld l, b
    ld a, e
    ld a, [hl-]
    add [hl]
    or h
    sbc b
    ld l, d
    ld a, [hl-]
    add a
    add l
    add a
    ld e, e
    ld a, [hl-]
    ld e, d
    ld e, d
    ld c, e
    ld l, c
    ld e, e
    jr c, jr_00a_559b

    cp c
    ld c, b
    add a
    add e
    pop af
    or [hl]
    ld e, c
    ld l, b
    adc c
    ld c, e
    inc a
    add c
    and $4b
    db $76
    ld l, e
    add l
    and l
    and a
    ld e, d
    ld a, c
    ld l, d
    ld h, a
    ld a, e
    dec sp
    ld l, b
    ld a, d
    ld e, b
    sub e
    db $d3
    ldh [$e3], a
    sbc b
    ld a, c
    ld a, $0d
    inc a
    ld c, c
    add [hl]
    and l
    adc b
    sub [hl]
    ld a, b
    sub a
    ld [hl], a
    sub [hl]
    adc c
    ld h, l
    or l
    adc b
    add [hl]
    adc b
    add a
    ld l, c
    ld d, h
    call nz, Call_00a_5998
    ld [hl], a
    and d
    sub $4c
    ld e, b
    add [hl]
    or h
    and l
    and h
    or e
    db $d3
    sbc c
    ld l, d
    ld l, c
    ld l, c
    ld e, e
    add hl, sp
    add [hl]
    and e
    ld [c], a
    sbc d
    ld c, d
    add h
    jp nc, $3cb9

    ld h, [hl]
    ld a, c
    ld h, a
    sub a
    add l
    sbc b
    add [hl]
    ld l, h
    add hl, sp
    and l
    sub [hl]
    adc b
    ld l, c
    add [hl]
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    ld c, d
    ld e, b
    adc b
    db $76
    sub a
    ld l, c
    ld l, c
    db $76
    and [hl]
    adc c
    ld l, b
    add [hl]
    sub a
    add [hl]
    add a
    ld a, d
    adc d
    ld a, b
    ld a, b
    ld [hl], a
    and l
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    sub [hl]
    ld a, c
    ld e, d
    ld e, c
    ld h, [hl]
    sub [hl]
    add a
    sub l
    and a
    ld l, c
    db $76
    and l
    adc c
    ld c, b
    and h
    xor b
    ld e, d
    ld l, e
    dec sp
    ld a, b
    ld a, c
    add [hl]
    sub a
    ld a, b
    db $76
    and l

jr_00a_5676:
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld e, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    db $76
    adc b
    add a
    ld a, b
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
    ld a, b
    sbc c
    ld l, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, b
    ld l, c
    ld l, c
    ld a, b
    add [hl]
    sub a
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld l, c
    ld l, b
    ld [hl], a
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], l
    and [hl]
    ld a, c
    ld e, e
    ld c, d
    ld l, b
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld l, c
    ld e, d
    ld c, e
    ld e, d
    ld l, b
    ld a, b
    jr jr_00a_5676

    or h
    and [hl]
    ld a, c
    ld l, b
    and l
    and l
    and l
    and h
    call nz, $c3b4
    xor b
    ld e, e
    ld c, h
    adc a
    dec c
    ld d, [hl]
    and [hl]
    sub a
    add a
    sub [hl]
    and h
    sub a
    adc b
    sub l
    and a
    ld a, b
    add [hl]
    adc d
    ld c, d
    add h
    or [hl]
    ld a, c
    add [hl]
    sub [hl]
    ld a, d
    ld l, c
    db $76
    call nz, $87a6
    sub l
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    add [hl]
    and [hl]
    ld a, c
    ld a, c
    ld e, d
    ld e, d
    ld e, c
    add [hl]
    sub [hl]
    sbc b
    ld a, b
    ld [hl], a
    sub [hl]
    sub a
    ld a, b
    adc b
    add [hl]
    sub [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    add a
    add a
    adc b
    db $76
    and [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add [hl]
    sub a
    add a
    ld a, b
    ld l, b
    ld a, c
    ld a, c
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld c, b
    add a
    ld a, b
    add a
    ld a, c
    add a
    ld l, b
    sub a
    ld l, b
    and a
    ld e, b
    and a
    ld d, a
    cp b
    ld b, [hl]
    ret


    push de
    cp e
    ld b, h
    cp h
    ld b, h
    xor l
    ld d, d
    xor l
    ld d, d
    adc [hl]
    ld [hl], c
    ld a, a
    add b
    ld l, [hl]
    and c
    ld a, $31
    inc l
    di
    add hl, de
    push af
    rlca
    ld sp, hl
    dec b
    db $ec
    inc de
    adc $41
    sbc [hl]
    ld [hl], d
    ld l, l
    and e
    sbc e
    call nc, $d838
    ld h, $bb
    inc [hl]
    xor e
    ld [hl], h
    ld a, h
    add h
    ld a, c
    and [hl]
    ld e, b
    and a
    ld e, b
    ld l, c
    ld d, [hl]
    adc d
    ld h, [hl]
    adc b
    add [hl]
    adc b
    add a
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a

jr_00a_57a7:
    adc b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    db $76
    adc c
    db $76
    ld a, d
    push bc
    ld a, e
    add h
    ld l, e
    and e
    ld e, h
    or e
    ld c, l
    and h
    inc a
    jp $c53b


    ld a, [hl-]
    push bc
    ld c, c
    and h
    ld e, d
    or h
    ld c, h
    sub h
    ld l, e
    and d
    ld l, l
    sub e
    ld e, l
    and e
    ld e, l
    and c
    ld e, l
    and e
    ld e, h
    jp nc, $a25d

    ld e, l
    and d
    ld l, e
    and e
    ld e, e
    or e
    ld c, e
    call nz, $d649
    jr z, jr_00a_57a7

jr_00a_57df:
    dec [hl]
    adc d
    ld b, h
    xor h
    ld d, h
    adc h
    ld [hl], l
    ld a, d
    sub l
    ld l, c
    and [hl]
    ld l, b
    adc c
    ld h, a
    adc c
    ld [hl], a
    ld a, b
    ld d, a
    ld l, b
    sub a
    ld l, b
    sbc c
    ld d, a
    sbc c
    db $76
    adc d
    ld [hl], l
    ld a, d
    add l
    ld a, c
    sub l
    ld l, c
    sub [hl]
    ld c, c
    or a
    ld b, a
    xor c
    ld b, [hl]
    ret z

    ld b, [hl]
    ret z

    ld b, [hl]
    cp d
    ld b, l
    cp c
    ld d, [hl]
    xor c
    ld b, a
    cp b
    ld c, b
    or a
    ld c, b
    or [hl]
    ld e, b
    rst $00
    jr c, jr_00a_57df

    scf
    rst $10
    daa
    ret c

    ld [hl], $d8
    dec [hl]
    bit 6, e
    cp h
    ld d, h
    sbc h
    ld [hl], d
    adc e
    add h
    ld l, d
    and l
    ld e, d
    sub [hl]
    ld l, c
    sub a
    ld [hl], a
    sub a
    ld a, b
    and a
    adc b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc c
    add l
    ld a, d
    add l
    ld a, d
    sub l
    ld e, d
    sub l
    ld l, d
    and l
    ld c, d
    or l
    ld e, d
    and [hl]
    ld c, d
    and [hl]
    ld e, d
    sub [hl]
    ld e, e
    add [hl]
    ld e, d
    sub l
    ld e, e
    and h
    ld l, h
    sub e
    ld l, h
    sub h
    ld e, e
    or h
    ld c, e
    push bc
    add hl, sp
    sub $37
    ret c

    ld [hl], $b9
    ld d, h
    sbc e
    ld h, l
    adc d
    add l
    ld l, c
    sub [hl]
    ld l, b
    sub a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, c
    add a
    ld a, b
    sub a
    ld l, b
    xor b
    ld h, a
    xor b
    ld h, [hl]
    xor c
    ld h, [hl]
    xor c
    ld d, [hl]
    sbc d
    ld d, l
    xor c
    ld h, l
    xor d
    ld d, l
    sbc d
    ld d, l
    adc c
    ld h, l
    xor c
    ld d, h
    cp d
    ld d, l
    cp d
    ld d, h
    cp d
    ld d, h
    cp d
    ld d, h
    cp e
    ld d, e
    sbc l
    ld h, e
    sbc e
    sub e
    ld l, e
    and l
    ld e, c
    and [hl]
    ld h, a
    xor b
    db $76
    adc b
    db $76
    ld a, c
    sub [hl]
    ld l, b
    sub a
    ld e, b
    ld l, b
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld [hl], l
    adc c
    add [hl]
    ld l, d
    sub l
    ld a, c
    and [hl]
    ld e, d
    sub [hl]
    ld e, c
    and l
    ld c, c
    and l
    ld e, c
    sub [hl]
    ld e, c
    sub l
    ld l, c
    sub [hl]
    ld l, c
    sub l
    ld a, c
    add l
    ld a, d
    and [hl]
    ld e, d
    or l
    adc c
    add $47
    rst $00
    ld b, a
    xor d
    ld d, l
    sbc c
    ld [hl], l
    adc c
    add a
    ld l, c
    add a
    ld l, b
    sub a
    ld [hl], a
    ld l, b
    add [hl]
    adc c
    add [hl]
    ld l, b
    add [hl]
    ld a, b
    sbc b
    ld e, b
    sbc b
    ld h, a
    xor b
    ld d, a
    sbc b
    ld h, [hl]
    sbc c
    ld d, a
    sbc c
    ld h, [hl]
    xor b
    ld h, a
    sbc c
    ld h, [hl]
    and a
    ld h, [hl]
    xor b
    ld d, a
    xor b
    ld h, [hl]
    xor b
    ld d, a
    xor c
    add l
    sbc d
    ld h, l
    sbc d
    ld [hl], h
    adc e
    add h
    ld a, c
    sub l
    ld l, b
    sub a
    ld d, a
    sbc b
    db $76
    adc b
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    sbc b
    db $76
    sbc b
    ld [hl], a
    ld a, c
    db $76
    adc d
    db $76
    ld a, d
    ld [hl], l
    adc c
    add l
    adc c
    add [hl]
    ld l, d
    add [hl]
    ld a, d
    add l
    ld a, c
    add l
    adc c
    db $76
    adc c
    db $76
    adc c
    db $76
    adc c
    ld [hl], l
    adc d
    ld [hl], l
    ld a, d
    sub l
    ld l, c
    and [hl]
    ld e, c
    sbc b
    ld h, [hl]
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    add a
    ld a, b
    add a
    ld a, c
    add [hl]
    ld a, b
    sub [hl]
    ld l, d
    add a
    ld l, b
    add a
    ld a, c
    add [hl]
    ld a, b
    sub [hl]
    ld l, c
    add a
    ld l, c
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    add a
    ld l, d
    ld [hl], a
    ld a, b
    sub [hl]
    ld l, b
    sub a
    ld l, b
    sub a
    ld h, a
    sbc b
    ld [hl], a
    adc b
    add [hl]
    add a
    add a
    ld l, b
    ld a, b
    sbc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    ld [hl], a
    sub a
    ld l, b
    sub a
    ld l, b
    sub a
    ld e, c
    add a
    ld l, b
    sub a
    ld a, b
    sub a
    ld a, b
    and a
    ld l, b
    sub a
    ld l, b
    sub [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    sub a
    ld l, b
    ld e, b
    add a
    ld a, c
    add [hl]
    ld a, b
    add a
    ld [hl], a
    sub a
    ld h, a
    and a
    ld h, a
    xor b
    ld d, [hl]
    sbc d
    ld d, l
    xor e
    db $f4
    sbc h
    ld d, h
    adc l
    ld h, d
    adc l
    ld [hl], c
    ld a, [hl]

Call_00a_5998:
    add c
    ld l, l
    and c
    ld c, l
    or d
    inc a
    ld [c], a
    dec de
    inc h
    add hl, bc
    rst $30
    ld b, $fa
    inc b
    db $ec
    inc de
    sbc $41
    xor [hl]
    ld [hl], b
    ld l, [hl]
    and d
    ld c, h
    call nc, $d799
    ld h, $cb
    inc [hl]
    xor h
    ld d, e
    ld a, l
    add e
    ld l, e
    and l
    ld e, c
    and a
    ld d, [hl]
    xor b
    ld d, [hl]
    adc d
    ld h, l
    adc c
    add l
    ld a, c
    add a
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
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    adc c
    db $76
    sbc b
    db $76
    ld a, d
    ld [hl], a
    ld a, c
    sub $6a
    sub [hl]
    ld e, c
    and l
    ld c, d
    or [hl]
    ld c, c
    add $39
    push de
    ld a, [hl+]
    sub $29
    rst $10
    add hl, hl
    sub $39
    push bc
    ld c, c
    push bc
    dec sp
    call nz, $d43c
    inc l
    db $d3
    inc l
    db $d3
    dec hl
    db $d3
    inc l
    call nz, $d42b
    dec de
    push de
    dec hl
    push de
    ld a, [hl+]
    and $18
    rst $30
    rlca
    ld hl, sp+$15
    ld a, [$9c24]
    ld b, e
    sbc l
    ld d, e
    ld a, e
    sub h
    ld l, c
    or a
    ld b, a
    cp b
    ld d, [hl]
    sbc c
    ld [hl], l
    ld a, d
    add [hl]
    ld l, c
    ld b, a
    ld h, a
    and a
    ld h, a
    sbc b
    ld [hl], l
    sbc c
    db $76
    ld a, e
    add l
    ld l, d
    sub l
    ld l, c
    and l
    ld e, b
    xor b
    ld b, [hl]
    ret


    ld b, [hl]
    jp z, $bb35

    ld b, l
    xor h
    ld d, h
    xor h
    ld d, h
    xor d
    ld d, h

jr_00a_5a3d:
    cp d
    ld d, l
    xor d
    ld b, l
    cp c
    scf
    ret z

    ld b, [hl]
    ret


    ld [hl], $da
    dec h
    jp c, $ea24

    inc sp
    call c, $ae33
    add c
    sbc [hl]
    ld h, d
    ld a, [hl]
    add d
    ld l, h
    and h
    ld c, e
    or l
    ld c, b
    cp b
    ld b, a
    xor b
    db $76
    adc b
    ld [hl], a
    rst $00
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    ld a, d
    add l
    ld l, d
    sub [hl]
    ld e, e
    and l
    ld c, d
    or l
    ld c, d
    or [hl]
    add hl, sp
    or [hl]
    ld c, b
    rst $00
    add hl, sp
    rst $00
    jr c, jr_00a_5a3d

    ld c, b
    add $49
    or l
    ld c, d
    or l
    ld a, [hl-]

jr_00a_5a7e:
    call nz, Call_00a_743b
    ld c, e
    call nz, $c44b
    ld a, [hl-]
    db $e4
    add hl, hl
    and $17
    jp hl


    inc h
    db $db
    inc [hl]
    xor l
    ld h, e
    adc h
    sub e
    ld l, c
    or [hl]
    ld e, b
    xor b
    ld h, [hl]
    sbc d
    ld [hl], l
    adc c
    add [hl]
    ld l, c
    sub [hl]
    ld l, b
    sbc b
    ld h, a
    ld a, c
    ld h, [hl]
    sbc c
    ld h, [hl]
    ld a, e
    ld [hl], h
    adc h
    ld [hl], e
    ld a, l
    ld [hl], d
    adc l
    add d
    ld a, l
    add d
    adc h
    ld [hl], e
    ld e, h
    ld [hl], e
    adc h
    ld [hl], e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc l

jr_00a_5ab9:
    ld h, e

jr_00a_5aba:
    adc [hl]
    ld [hl], c

jr_00a_5abc:
    ld a, [hl]
    sub b
    ld l, l
    or b
    sbc l
    jp nz, $d53b

    jr z, jr_00a_5a7e

    ld b, [hl]
    cp c
    ld h, [hl]
    adc d
    ld [hl], l
    ld a, d
    add a
    ld e, b
    sbc b
    ld d, a
    add hl, sp
    ld h, [hl]
    sbc d
    ld [hl], h
    adc d
    add h
    ld a, d
    and h
    ld l, d
    or h
    ld c, d
    push bc
    add hl, sp
    sub $29
    push hl
    jr z, jr_00a_5ab9

    jr z, jr_00a_5aba

    jr c, jr_00a_5abc

    add hl, hl
    sub $2a
    push bc
    ld a, [hl-]
    push de
    ld a, [de]
    sub $09
    or $87
    ld sp, hl
    dec b

jr_00a_5af3:
    db $eb
    inc hl
    call c, $9d43
    ld h, h
    ld a, d
    sub l
    ld e, c
    and a
    ld h, [hl]
    xor c
    ld h, l
    ld c, e
    ld [hl], l
    ld l, e
    sub l
    ld e, c
    or [hl]
    ld c, b
    or a
    scf
    reti


    dec [hl]
    swap h
    call z, $bc43
    ld h, e
    xor h
    ld d, e
    xor h
    ld b, h
    xor e
    ld d, h
    xor h
    ld b, h
    xor h
    ld b, e
    cp h
    inc sp
    cp l
    ld d, d
    xor [hl]
    ld [hl], c
    sbc [hl]
    ld [hl], c
    ld a, a
    sub b
    ld e, l
    jp $c53b


    jr c, jr_00a_5af3

    ld [hl], $a9
    ld h, l
    adc e
    db $76
    cp b
    add a
    ld h, a
    sbc c
    ld h, [hl]
    adc d
    ld h, l
    adc e
    ld [hl], h
    ld a, h
    sub d
    ld l, [hl]
    sub d
    ld e, l
    or d
    ld c, l
    and d

jr_00a_5b41:
    ld a, $b2
    ld a, $b2
    ld c, l
    and d
    ld e, h
    and d
    ld e, l
    and d
    ld e, l
    sub d
    ld l, l
    sub d
    ld l, l
    ld h, d
    ld c, [hl]
    or d
    dec a
    call nc, $e61a
    jr jr_00a_5b41

    dec h
    jp z, $9a54

    ld [hl], l
    ld a, c
    add a
    ret z

    sbc c
    ld h, [hl]
    adc c
    add l
    ld a, d
    add l

Jump_00a_5b67:
    ld l, e
    sub l
    ld e, d
    or l
    ld c, d
    push bc
    ld a, [hl-]
    or [hl]
    add hl, sp
    and $29
    add $2a
    push bc
    ld a, [hl-]

jr_00a_5b76:
    push bc
    ld a, [hl-]
    push bc
    dec sp
    or h
    dec sp
    call nz, $d52a
    ld a, [hl+]
    ld h, l
    add hl, de

jr_00a_5b82:
    rst $20
    rlca
    ld sp, hl
    dec d
    db $eb
    inc de
    call $ab52
    add e
    ld a, d
    sub [hl]
    ld a, b
    adc b
    rst $20
    adc b
    add [hl]
    ld l, c
    sub [hl]
    ld e, c
    and a
    ld c, c
    or [hl]
    add hl, sp
    rst $00
    scf
    ret c

    jr jr_00a_5b76

    daa
    rst $30
    rla
    ld hl, sp+$17
    ld hl, sp+$18
    add sp, $27
    rst $10
    jr z, jr_00a_5b82

    scf
    rst $20
    add hl, hl
    ret c

    ld d, $79
    dec d
    ei
    inc de
    db $dd
    ld sp, $61bd
    adc h
    add h
    ld l, e
    add [hl]
    ld l, b
    and [hl]
    ld [hl], a
    adc b
    rst $00
    ld a, c
    add [hl]
    ld l, c
    and a
    ld c, b
    ret z

    ld b, a
    cp c
    ld b, l
    reti


    ld [hl], $da
    dec [hl]
    jp c, $db25

    dec d
    swap h
    swap l
    swap l
    cp e
    dec [hl]
    ret


    ld b, h
    swap l
    call z, $8d13
    ld sp, $50bf
    adc [hl]
    add c
    ld e, l
    or e
    ld c, e
    or l
    ld e, c
    and [hl]
    ld l, b
    sbc b
    ld h, a
    adc b
    and a
    ld [hl], a
    and a
    ld h, a
    xor c
    ld b, [hl]
    cp d
    ld b, h
    cp e
    ld b, e
    cp h
    ld h, e
    xor h
    ld h, e
    xor e
    ld h, e
    adc l
    ld d, e
    xor h
    ld d, d
    xor h
    ld h, e
    sbc l
    ld d, e
    sbc h
    ld h, e
    sbc h
    ld d, h
    sbc h
    ld h, d
    sbc l
    ld h, d
    xor l
    add d
    ld l, l
    and d
    ld e, e
    or l
    ld a, [hl-]
    or a
    ld c, b
    xor b
    ld h, [hl]
    sbc c
    db $76
    ld a, d
    add [hl]
    ld a, b
    and a
    ld b, a
    cp b
    ld b, [hl]
    cp d
    ld b, h
    xor h
    ld d, e
    sbc h
    ld h, e
    adc h
    ld [hl], e

jr_00a_5c2c:
    adc h
    ld [hl], e
    sbc h
    ld h, e
    ld e, h
    ld d, h
    xor h
    ld d, e
    xor h
    ld d, e
    sbc h
    ld d, e
    xor h
    ld d, e
    sbc l
    ld h, d
    adc [hl]
    ld [hl], d
    ld a, l
    sub d
    sbc h
    call nz, $c54a
    ld c, b
    cp b
    ld b, [hl]
    xor c
    ld h, [hl]
    adc c
    add [hl]
    ld l, c
    sub a
    ld d, a
    xor b
    ld d, a
    adc c
    ld d, [hl]
    sbc d
    ld [hl], h
    adc e
    ld h, h
    adc e
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    inc a
    ld [hl], h
    ld a, h
    ld [hl], h
    adc h
    ld d, h
    sbc h
    ld h, e
    sbc h
    ld [hl], d
    sbc h
    add d
    ld l, l
    and d
    ld c, e
    call nz, $c68a
    jr c, jr_00a_5c2c

    ld b, a
    xor c
    ld h, l
    adc c
    add [hl]
    ld l, c
    sub a
    ld l, b
    sbc b
    ld h, [hl]
    xor c
    ld h, l
    ld l, d
    add e
    adc e
    add e
    ld a, e
    add e
    ld a, e
    and d
    ld l, l
    sub d
    ld e, l
    sub e
    ld l, h
    and d
    ld l, h
    sub e
    ld c, h
    sub e
    ld l, h
    add e
    ld a, h

jr_00a_5c95:
    sub e
    ld l, h
    and e
    ld l, e
    or e
    ld c, d
    call nc, $d649
    scf
    ret


    ld [hl], h
    cp d
    ld h, h
    sbc d
    ld [hl], l
    ld a, d
    sub l
    ld l, c
    sub a
    ld h, a
    xor c
    ld d, [hl]
    sbc d
    ld h, h
    adc e
    add h
    ld c, d
    and h
    ld e, e
    and l
    ld c, e
    or l
    ld c, e
    or h
    ld e, e
    or h
    ld c, e
    or h
    ld c, h
    or h
    ld c, e
    and l
    ld l, e

jr_00a_5cc1:
    and h
    ld c, e
    or e
    ld c, h
    or h
    dec sp
    push de
    add hl, hl
    rst $10
    jr z, jr_00a_5c95

Call_00a_5ccc:
    scf
    xor d
    ld d, h
    xor d
    dec [hl]
    adc d
    add [hl]
    ld a, c
    add a
    ld l, b
    sbc b
    ld h, a
    adc c
    db $76
    adc c
    add [hl]
    ld l, d
    sub [hl]
    ld e, c
    or [hl]
    ld a, [hl-]
    push bc
    add hl, sp
    add $38
    rst $00
    add hl, sp
    add $2a
    or l
    ld c, d
    call nz, $c54a
    ld c, c
    push bc
    sbc d
    push de
    ld a, [hl+]
    add $38
    ret c

    jr z, jr_00a_5cc1

    dec [hl]
    jp z, $ab35

    ld h, e
    sbc d
    add l
    ld l, d
    ld h, $58
    and a
    db $76
    xor b
    ld [hl], l
    adc c
    add [hl]
    ld a, d
    sub l
    ld l, c
    and [hl]
    ld c, d
    or a
    scf
    ret z

    daa
    ret c

    ld [hl], $c9
    dec [hl]
    reti


    ld [hl], $d8
    ld [hl], $d8
    scf
    ret


    daa
    ret z

    ld h, $d9
    sub [hl]
    ret


    dec [hl]
    swap h
    cp l
    ld b, d
    sbc [hl]
    ld h, d
    ld a, h
    sub d
    ld l, d
    and h
    ld e, c
    or a
    ld e, b
    ld e, c
    ld h, [hl]
    sbc c
    add l
    ld a, c
    sub l
    ld l, c
    and a
    ld h, a
    xor b
    ld d, l
    cp c
    ld b, h
    cp e
    ld d, e
    xor l
    ld h, e
    sbc l
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld d, e
    xor h
    ld d, e
    xor e
    ld h, h
    sbc h
    ld d, h

jr_00a_5d4f:
    sbc h
    ld [hl], e
    adc l
    ld [hl], d
    ld a, l
    sub d
    ld e, l
    and e
    ld c, e
    push bc
    add hl, sp
    add $38
    cp b
    ld d, a
    sbc c
    db $76
    xor b
    add a
    ld l, b
    sbc b
    ld h, [hl]
    adc c
    ld h, [hl]
    adc e
    ld h, l
    adc e
    ld [hl], e
    adc h
    add e
    ld l, h
    sub e
    ld l, h
    and e
    ld e, h
    and h
    ld e, h
    and h
    ld e, h
    sub h
    ld e, e
    and e
    ld l, l
    add e
    ld l, h
    and e
    ld e, l
    sub h
    ld c, h
    ld [hl], e
    ld c, e
    call nz, $c639
    jr c, jr_00a_5d4f

    ld [hl], $c9
    ld b, l
    xor d
    ld [hl], l
    ld a, d
    ld [hl], a
    ld l, c
    adc b
    add $89
    ld [hl], l
    adc d
    ld [hl], l
    ld l, h
    sub h
    ld e, h
    and e
    ld e, e
    jp $c54a


    ld a, [hl+]
    add $39
    sub $4a
    push bc
    ld c, d
    or h
    ld c, e
    or h
    dec sp
    call nz, $c43b
    ld a, [hl-]
    push de
    add hl, hl
    and $28
    adc b
    ld h, $da
    ld b, h
    xor h
    ld h, e
    adc h
    ld [hl], l
    ld a, d
    sub [hl]
    ld l, c
    adc b
    ld [hl], a
    adc b
    add a
    ld a, c
    or [hl]
    ld l, c
    sub [hl]
    ld e, c
    or [hl]
    ld c, b
    rst $00
    ld [hl], $d9
    dec h
    reti


    inc [hl]
    jp z, $bb35

    inc [hl]
    xor d
    ld b, l
    ret


    dec [hl]
    jp z, $d935

    dec [hl]
    jp z, $cb25

    inc [hl]
    call z, $cd42
    ld b, d
    xor l
    ld [hl], d
    ld a, l
    add e
    ld l, e
    and l
    ld c, c
    and a
    ld h, a
    sbc b
    ld h, [hl]
    adc c

jr_00a_5dec:
    add [hl]
    ld a, c
    sub [hl]
    ld h, a
    ld a, b
    ld d, a
    cp b
    ld d, [hl]
    sbc d
    ld d, h
    xor h
    ld h, d
    xor h
    ld [hl], d
    sbc l
    ld [hl], e
    ld a, l
    ld [hl], e
    ld a, e
    ld [hl], h
    dec hl
    add e
    adc h
    ld [hl], e
    ld a, h
    add e
    ld a, h
    add e
    ld l, l
    sub c
    ld l, l
    sub d
    ld e, l
    or e
    dec sp
    db $d3
    adc e
    push de
    jr c, jr_00a_5dec

    ld b, [hl]
    xor d
    ld d, l
    xor c
    add h
    adc c
    add a
    ld l, b

jr_00a_5e1c:
    sbc b
    ld h, a
    adc d
    ld h, [hl]
    ld a, [hl-]
    ld [hl], h

jr_00a_5e22:
    ld a, h
    sub e
    ld l, h
    and h
    inc a
    or h
    dec sp
    push bc
    ld a, [hl+]
    add $3a
    push bc
    ld a, [hl-]
    add $3b
    or l
    ld c, d
    call nz, $b54a
    ld c, d
    push bc
    ld a, [hl-]
    push bc
    jr c, jr_00a_5e22

    daa
    add sp, $26
    jp c, $ba55

    ld d, h
    sbc e
    ld [hl], h
    adc c
    add [hl]
    ld a, b
    sub a
    add [hl]
    sbc b
    add [hl]
    ld a, c
    add [hl]
    ld l, c
    and [hl]
    ld c, c
    or a
    jr c, jr_00a_5e1c

    daa
    ret c

    ld h, $d9
    ld [hl], $cb
    dec [hl]
    jp z, $ba45

    ld b, l
    cp d
    and l
    cp d
    ld [hl], $c9
    dec [hl]
    jp z, $db25

    inc h
    call z, $ad43
    ld d, d
    adc [hl]
    ld [hl], d
    ld l, h
    ld d, e
    ld l, d
    and l
    ld e, b
    and a
    ld h, a
    sbc b
    ld h, [hl]
    adc b
    add [hl]
    ld l, c
    sub a
    ld e, b
    and a
    ld h, a
    xor c
    sub l
    xor d
    ld d, h
    sbc e
    ld h, e
    sbc e
    add e
    ld a, l
    add d
    ld a, h
    and e
    ld e, h
    and e
    ld e, e
    and l
    ld l, d
    or h
    ld l, d
    add h
    ld l, h
    add h
    ld a, h
    add e
    ld l, h
    sub d
    ld e, [hl]
    and e
    ld c, l
    or h
    add hl, sp
    sub $38
    adc b
    scf
    xor d
    ld d, l
    sbc d
    ld [hl], l
    ld a, d
    sub l
    ld a, c
    sub a
    ld e, b
    and a
    ld l, b
    adc b
    db $76
    adc c
    add $79
    sub [hl]
    ld l, b
    or [hl]
    ld e, b
    or a
    scf
    ret z

    ld [hl], $c9
    ld h, $c9
    dec [hl]
    ret c

    scf
    sbc b
    scf
    ret z

    scf
    ret z

    daa
    ret c

    ld [hl], $c9
    ld h, $da
    dec h
    jp c, $cc43

    ld d, e
    sbc l
    ld [hl], e
    ld a, h
    sub h
    ld e, d
    sub [hl]
    ld e, b
    xor b
    ld d, a
    adc c
    ld h, [hl]
    adc c
    ld [hl], a
    ld a, b
    sub [hl]
    ld [hl], a
    ld l, b
    ld d, a
    sbc c
    ld d, [hl]
    adc d
    ld [hl], h
    adc h
    ld [hl], h
    ld a, e
    sub e
    ld l, h
    sub h
    ld l, e
    and h
    ld e, e
    sub h
    dec sp
    sub h
    ld l, e
    sub h
    ld l, e
    sub h
    ld e, h
    sub h
    ld e, e
    and h
    ld e, e
    or h
    ld e, d
    or [hl]
    ld a, [hl-]
    add $88
    cp b
    ld b, [hl]
    xor d
    ld h, l
    adc e
    db $76
    ld a, d
    add a
    ld l, c
    sub a
    ld e, b
    sbc c
    ld h, a
    sbc c
    ld h, [hl]
    ld e, d
    db $76
    ld l, c
    and l
    ld e, d
    and [hl]
    ld c, b
    xor b
    ld b, a
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    ld h, l
    sbc d
    add l
    xor d
    ld h, h
    xor d
    ld h, l
    sbc d
    ld d, l
    sbc e
    ld h, h
    sbc e
    ld h, h
    sbc h
    ld h, h
    adc e
    add h
    ld a, e
    ld h, h
    ld a, d
    sub [hl]
    ld e, b
    and [hl]
    ld h, a
    sbc c
    ld h, a
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    sbc b
    ld l, b
    adc c
    or a
    sbc c
    db $76
    ld a, d
    add l
    adc c
    sub l
    ld l, c
    and [hl]
    ld e, b
    or a
    ld b, a
    xor b
    ld d, [hl]
    xor d
    ld d, l
    ld e, d
    ld d, l
    sbc d
    ld h, [hl]
    sbc d
    ld [hl], l
    adc d
    ld h, l
    sbc d
    ld [hl], h
    adc c
    add h
    ld a, d
    add l
    ld a, c
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld d, a
    add a
    ld [hl], a
    db $76
    ld a, b
    add a
    sbc b
    ld a, c
    ld a, b
    sub [hl]
    ld d, [hl]
    ld [hl], a
    sbc b
    ld e, b
    sbc e
    sbc c
    ld d, l
    ld a, b
    db $76
    ld c, c
    sub [hl]
    xor h
    rst $10
    scf
    adc e
    ld h, d
    ld h, e
    xor c
    ret z

    ld [hl], c
    cp e
    rst $00
    sub c
    sbc d
    ld d, $ea
    ld d, e
    ld l, [hl]
    push af
    ld b, h
    ld a, [hl]
    ld c, c
    ld [hl], e
    ld h, [hl]
    xor [hl]
    xor c
    ld d, $c7
    sub h
    ld [hl], e
    sbc b
    add sp, $58
    ld d, l
    db $fd
    ld [hl-], a
    ld e, b
    ld a, e
    and a
    ld d, a
    ld l, d
    or h
    add [hl]
    ld a, b
    adc c
    sub h
    ld d, a
    sub a
    ld a, c
    ld l, b
    db $76
    jp z, $934b

    add a
    adc b
    ld [hl], h
    and [hl]
    adc c
    adc b
    add [hl]
    and a
    and [hl]
    ld h, a
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    adc e
    ld b, a
    add a
    adc c
    ld [hl], a
    db $76
    sbc d
    ld h, a
    ld h, [hl]
    ld a, c
    adc c
    db $76
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    sub a
    ld [hl], a
    ld a, b
    add a
    sub a
    ld l, b
    sbc c
    sub a
    ld [hl], a
    ld a, c
    adc b
    db $76
    ld a, c
    sub a
    db $76
    ld l, d
    adc c
    ld h, a
    ld h, a
    adc c
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    db $76
    ld l, d
    add [hl]
    ld [hl], a
    ld a, b
    ld a, d
    sub l
    ld a, b
    add a
    add a
    ld a, b
    ld l, c
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    add a
    ld e, b
    ld a, b
    add a
    ld a, b
    sub a
    adc b
    add a
    ld d, a
    and a
    db $76
    sbc b
    adc b
    sub [hl]
    ld a, b
    sub [hl]
    ld [hl], a
    ld [hl], a
    adc d
    sbc b
    db $76
    and a
    xor b
    dec h
    sbc b
    adc d
    ld a, b
    ld e, c
    add sp, $45
    ld [hl], e
    adc c
    ld a, b
    ld h, h
    db $fc
    ld [hl], a
    ld [hl], d
    ld l, e
    ld b, a
    ld l, c
    adc d
    adc d
    and a
    ld h, a
    ld e, c
    ld h, e
    sub l
    add a
    ret z

    adc d
    ld l, c
    sub [hl]
    ld h, [hl]
    ld a, b
    ld h, h
    sbc c
    ld a, b
    ret c

    ld l, c
    add l
    ld d, [hl]
    ld e, d
    add a
    ld a, c
    sbc h
    sub a
    add l
    ld h, l
    add l
    ld e, c
    ld e, d
    xor c
    sub [hl]
    ld [hl], a
    ld a, b
    ld h, l
    ld [hl], a
    ld a, c
    xor c
    adc c
    add a
    add a
    ld d, a
    ld h, [hl]
    ld a, b
    ld l, c
    and a
    sbc c
    sub a
    db $76
    ld [hl], a
    ld l, b
    ld a, b
    add a
    xor b
    ld a, d
    ld h, [hl]
    ld l, b
    ld h, a
    add [hl]
    ld l, b
    xor c
    adc b
    add [hl]
    ld a, b
    ld l, c
    ld d, a
    ld a, b
    ld a, c
    adc b
    add a
    adc c
    add [hl]
    ld h, a
    add a
    sub a
    adc c
    ld a, b
    adc b
    add [hl]
    ld l, b
    db $76
    adc c
    ld e, b
    adc b
    sbc b
    ld a, b
    add [hl]
    adc b
    ld l, b
    ld h, a
    adc b
    adc b
    ld a, b
    adc c
    ld [hl], a
    add a
    sub [hl]
    adc c
    ld l, c
    add a
    ld l, c
    ld a, c
    cp b
    ld h, a
    ld c, e
    and e
    xor b
    ld l, h
    sub l
    add l
    adc d
    ld [hl], e
    sub [hl]
    ld l, b
    adc c
    cp b
    ld h, [hl]
    ld l, l
    or b
    ld c, e
    dec sp
    add $4c
    ld e, h
    or c
    ld c, d
    ld d, h
    ld l, h
    sbc b
    sub l
    sbc [hl]
    add d
    ld h, a
    add hl, sp
    sub h
    ld d, a
    xor d
    or [hl]
    ld l, e
    db $76
    ld [hl], a
    sub h
    add l
    ld a, e
    adc d
    ld h, l
    sbc d
    and [hl]
    ld d, a
    db $76

jr_00a_60d0:
    add a
    ld [hl], a
    ld a, b
    adc d
    sbc b
    ld c, c
    sbc b
    add a
    ld d, l
    adc c
    ld a, c
    ld a, b
    adc b
    adc c
    ld l, b
    ld [hl], l
    ld l, c
    ld l, c
    ld [hl], l
    xor d
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    sub a
    ld l, c
    sbc b
    ld l, b
    sub [hl]
    ld a, b
    db $76
    ld a, b
    ld a, b
    sbc b
    adc b
    ld a, c
    ld l, b
    add a
    ld a, b
    ld l, c
    add a
    add a
    ld a, c
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    adc b
    adc c
    add [hl]
    adc c
    ld l, b
    db $76
    ld a, b
    adc b
    add [hl]
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    sbc b
    ld e, c
    ld a, b
    sub a
    ld a, b
    ld e, b
    sub l
    adc d
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    ld h, [hl]
    xor h
    dec [hl]
    ld a, b
    xor c
    and a
    add e
    ret z

    sbc b
    ld h, [hl]
    sub l
    adc b
    jr c, jr_00a_60d0

    cp c
    ld [hl], a
    db $76
    xor b
    ld e, b
    ld b, a
    ld l, h
    db $76
    ld l, e
    db $76
    sub [hl]
    ld b, e
    rst $00
    ld a, b
    ld a, e
    sbc b
    ld l, c
    ld [hl], e
    add [hl]
    ld [hl], a
    sbc c
    ld l, b
    adc e
    adc c
    ld [hl], h
    add a
    sub [hl]
    add h
    sbc h
    ld [hl], l
    sbc b
    ld e, d
    ld [hl], a
    db $76
    xor d
    ld c, c
    sub [hl]
    adc b
    sbc b
    add a
    sub l
    ld a, b
    db $76
    ld a, b
    ld a, b
    ld a, c
    add a
    ld a, c
    ld h, [hl]
    adc d
    ld d, [hl]
    add a
    add a
    adc c
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, c
    ld e, c
    ld h, a
    and a
    add [hl]
    add a
    add [hl]
    adc b
    ld a, b
    sub a
    ld a, b
    ld e, c
    ld [hl], a
    ld a, b
    sub a
    adc b
    ld h, a
    adc d
    db $76
    add a
    ld a, c
    ld a, b
    db $76
    adc b
    ld [hl], a
    add a
    add a
    ld a, c
    db $76
    adc b
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    add [hl]
    add a
    ld [hl], a
    ld a, b
    sub [hl]
    adc b
    add l
    ld a, d
    ld l, c
    db $76
    add a
    and [hl]
    ld l, c
    ld l, b
    sub a
    sub a
    ld h, a
    adc c
    add h
    xor b
    sub [hl]
    adc l
    dec bc
    ld e, c
    add a
    adc b
    ld e, b
    sbc b
    inc a
    add [hl]
    ld a, [hl]
    ld h, l
    add [hl]
    sub h
    ld a, c
    ld l, e
    dec sp
    sbc b
    add [hl]
    sub h
    db $76
    and [hl]
    add a
    ld a, l
    ld a, b
    ld l, c
    ld l, b
    add e
    xor d
    dec hl
    sub e
    cp e
    ld h, h
    or a
    ld [hl], a
    ld d, [hl]
    sub h
    sbc d
    ld c, e
    ld a, d
    db $76
    sub a
    ld h, a
    ld a, b
    ld e, c
    ld l, b
    and a
    or [hl]
    adc b
    sub [hl]
    ld d, a
    ld e, d
    ld [hl], a
    db $76
    add a
    ret z

    ld h, a
    ld e, b
    ld l, c
    ld [hl], l
    ld a, b
    xor c
    ld l, c
    ld a, b
    ld a, d
    ld d, a
    ld e, b
    add [hl]
    sbc c
    db $76
    xor b
    ld [hl], a
    ld l, c
    ld h, l
    ld a, b
    add [hl]
    cp b
    ld a, b
    add a
    sub [hl]
    ld l, b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld l, b
    ld h, a
    sub a
    ld a, b
    sbc b
    ld a, b
    xor b
    ld a, b
    db $76
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld a, b
    adc b
    ld l, b
    ld h, a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    and [hl]
    ld e, b
    ld h, [hl]
    sbc d
    ld h, [hl]
    sub a
    sub a
    ld a, d
    jr c, jr_00a_6292

    ld a, e
    ld [hl], l
    ld a, b
    cp b
    ld d, a
    ld h, l
    xor d
    ld l, b
    ld h, [hl]
    xor c
    add h
    ld h, a
    or l
    sub a
    ld [hl], l
    xor c
    adc c
    ld d, [hl]
    ld e, d
    adc e
    ld h, a
    ld [hl], h
    ld l, h
    ld h, l
    sub [hl]
    ld h, a
    push bc
    ld c, c
    and [hl]
    ld e, d
    push bc
    ld l, b
    sub l
    ld e, b
    ld l, b
    adc c
    sub l
    cp b
    ld l, b
    db $76
    ld h, a
    and [hl]
    ld l, c
    adc b
    adc c
    ld h, a
    ld a, b
    sub [hl]
    ld h, a
    adc c
    ld [hl], a
    or a
    ld l, b
    sbc c
    add l
    add [hl]
    ld l, c
    db $76
    ld l, d
    sbc c
    sbc b
    ld a, b
    ld h, a
    add l
    ld e, c
    ld h, a
    sbc c
    adc b
    adc b
    ld a, b
    db $76
    ld l, b
    ld [hl], a
    sbc b
    adc b
    add a
    ld a, b
    ld a, b
    ld h, a
    ld l, b
    add a
    sub a
    sub a
    and [hl]
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    ld a, c
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc c
    ld a, b
    sub l
    ld l, b
    add l
    ld [hl], l
    adc c
    ld l, e
    ld a, b
    ld d, a
    adc e
    jr c, jr_00a_6300

    db $76
    sbc d
    and c
    adc e
    and c
    call c, Call_000_290f
    xor b
    add d

jr_00a_6292:
    or a
    add l
    and a
    ld a, c
    ld a, c

Jump_00a_6297:
    add a
    ld l, c
    ld h, a
    sbc e
    dec de
    ld a, b
    and a
    sub h
    ld h, a
    ld [hl], a
    add a
    ld c, c
    cp b
    sbc c
    ld d, l
    ld l, h
    add a
    add h
    ld c, a
    ld l, b
    ld [hl], a
    ld e, b
    adc c
    ld [hl], a
    ld h, [hl]
    ld a, d
    sub [hl]
    sub [hl]
    ld e, [hl]
    ld [hl], a
    ld d, l
    xor b
    inc a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, e
    ld e, b
    ld l, b
    sub a
    ld l, b
    ld l, c
    ld e, b
    and l
    sub [hl]
    adc c
    sub l
    ld l, c
    ld l, b
    ld a, c
    ld [hl], a
    ld l, b
    adc b
    ld a, b
    add a
    ld l, b
    and a
    ld [hl], a
    sub [hl]
    sub a
    sbc b
    ld e, c
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    sbc b
    ld a, c
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    add a
    xor c
    add a
    add a
    and a
    ld h, a
    sub [hl]
    adc b
    add a
    add [hl]
    sbc d
    ld l, b
    ld l, c
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld h, a
    adc b
    add a
    db $76
    adc b
    adc b
    ld [hl], a
    ld a, c
    ld a, c
    ld h, a
    ld a, b

jr_00a_6300:
    ld a, c
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    sbc b
    ld a, c
    add a
    add a
    ld [hl], l
    adc c
    ld e, c
    adc b
    and l
    ld l, c
    db $76
    ld [hl], l
    adc c
    ld d, a
    xor b
    sbc b
    adc b
    ld d, a
    ld a, d
    dec sp
    ld [hl], a
    ld [hl], l
    ret z

    db $76
    sub a
    ld l, c
    ld h, [hl]
    add a
    adc d
    ld l, b
    sub [hl]
    sbc d
    add [hl]
    db $76
    ld l, c
    ld a, b
    sub l
    add a
    xor c
    ld [hl], a
    ld a, d
    sbc b
    db $76
    ld [hl], a
    ld a, c
    adc b
    ld [hl], l
    sbc e
    sub [hl]
    ld a, b
    ld h, a
    ld l, c
    sub h
    ld a, e
    ld a, c
    and h
    sub [hl]
    ld l, b
    ld h, [hl]
    ld [hl], l
    adc e
    ld [hl], a
    sub a
    ld l, c
    sub [hl]
    ld d, [hl]
    adc c
    ld a, c
    ld [hl], a
    adc c
    and a
    ld h, a
    ld a, b
    adc b
    add l
    sbc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    add a
    db $76
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, d
    db $76
    sub l
    adc b
    add [hl]
    ld l, c
    ld a, b
    adc b
    adc b
    adc d
    ld h, [hl]
    sub a
    ld l, c
    ld [hl], a
    ld l, b
    adc b
    adc e
    ld h, [hl]
    adc e
    add a
    ld [hl], $99
    ld a, [hl-]
    add hl, sp
    ret z

    ld e, c
    di
    ld b, d
    rst $00
    ld a, b
    and h
    adc [hl]
    and e
    ld h, d
    adc h
    ld a, d
    dec de
    xor e
    xor b
    db $e3
    dec [hl]
    sbc c
    add [hl]
    add l
    adc h
    and l
    add l
    adc b
    adc b
    ld d, l
    xor b
    ld c, d
    rst $00
    ld c, d
    ld b, a
    ld d, a
    and h
    ld d, a
    and a
    ld [hl], a
    xor b
    adc b
    and a
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    xor b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, c
    and l
    ld [hl], a
    ld [hl], a
    adc c
    ld e, b
    add [hl]
    sbc d
    db $76
    adc b
    ld l, b
    sub [hl]
    ld [hl], l
    adc b
    sub a
    adc b
    adc b
    sbc b
    db $76
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add [hl]
    add a
    ld a, c
    sub [hl]
    sub [hl]
    adc c
    adc b
    ld l, c
    ld a, b
    ld l, b
    sub a
    ld h, a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    db $76
    add a
    add a
    ld l, b
    ld a, b
    sbc c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, d
    ld a, b
    sbc b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], l
    xor c
    ld l, e
    add [hl]
    ld [hl], l
    sbc c
    ld e, b
    and l
    ld l, h
    add a
    add l
    sub a
    ld l, b
    add a
    ld e, b
    xor d
    sub [hl]
    add l
    and [hl]
    ld a, d
    ld b, [hl]
    add a
    ld a, d
    ld [hl], a
    adc b
    adc d
    ld b, l
    db $76
    ld a, b
    adc c
    sub l
    xor c
    adc c
    ld [hl], h
    add h
    add a
    add a
    add [hl]
    xor e
    add a
    sub e
    sub l
    ld l, b
    ld l, d
    db $76
    cp d
    ld [hl], a
    ld h, [hl]
    add a
    sub [hl]
    ld a, c
    db $76
    cp d
    ld d, a
    ld a, b
    add a
    ld l, b
    add [hl]
    ld a, b
    sub [hl]
    ld a, b
    add a
    adc c
    ld h, a
    add [hl]
    sbc b
    add a
    add a
    ld [hl], a
    sbc b
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    add a
    sbc b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    sbc b
    ld l, b
    ld a, b
    ld a, c
    add a
    adc b
    add [hl]
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld d, a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, d
    ld [hl], a
    sub l
    adc b
    add [hl]
    sub [hl]
    ld a, d
    ld l, c
    ld a, c
    and l
    add [hl]
    sbc c
    ld h, a
    ld l, b
    ld [hl], l
    cp b
    ld d, a
    sbc h
    ld b, [hl]
    sub a
    ld h, d
    xor c
    or l
    add a
    inc e
    ld h, [hl]
    add l
    ld h, a
    or e
    jp z, Jump_00a_773e

    add [hl]
    ld h, h
    ld l, c
    or a
    ld c, b
    ret


    ld e, b
    xor c
    adc c
    or d
    adc e
    ld d, l
    xor d
    db $76
    cp b
    ld c, c
    ld [hl], a
    ld [hl], l
    adc e
    ld h, l
    xor c
    db $76
    ld c, d
    or h
    ld a, b
    db $76
    sbc b
    db $76
    sbc b
    add l
    adc c
    add [hl]
    add a
    sub h
    ld a, e
    ld d, l
    and a
    adc b
    add a
    adc b
    db $76
    adc c
    ld [hl], l
    ld l, e
    adc b
    ld a, c
    add l
    adc c
    db $76
    sub a
    add a
    ld a, b
    add l
    sub a
    add [hl]
    ld a, b
    ld a, c
    ld a, c
    add [hl]
    ld a, b
    add l
    sub [hl]
    sub a
    ld l, c
    add [hl]
    ld a, b
    add a
    adc b
    ld h, [hl]
    sbc c
    add [hl]
    adc b
    sbc b
    add a
    add [hl]
    ld a, c
    sub a
    ld a, c
    ld l, c
    add a
    add a
    ld l, b
    db $76
    and a
    ld l, c
    ld l, c
    add a
    ld [hl], a
    ld b, a
    adc b
    ld [hl], a
    ld l, c
    sub a
    sub a
    ld a, c
    sub [hl]
    sub a
    ld h, a
    add a
    add [hl]
    add a
    sbc b
    sbc b
    sub [hl]
    ld e, b
    sub [hl]
    ld l, b
    ld l, b
    sbc c
    sub a
    add [hl]
    sub a
    ld h, a
    ld b, a
    and [hl]
    sbc c
    and a
    add a
    add l
    ld l, b
    ld h, a
    sbc b
    db $76
    sbc d
    ld a, d
    add [hl]
    db $76
    ld e, e
    ld d, [hl]
    sub a
    adc b
    adc b
    ld a, c
    add a
    ld c, b
    add a
    sub a
    sub a
    ld l, d
    sbc c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, [hl]
    ld h, [hl]
    xor b
    or [hl]
    adc c
    sbc d
    ld h, a
    ld h, [hl]
    add [hl]
    ld h, a
    ld e, b
    xor d
    adc b
    db $76
    ld h, [hl]
    sbc c
    ld h, l
    adc c
    adc b
    adc b
    ld [hl], a
    sbc b
    ld h, [hl]
    ld h, a
    sbc b
    ld a, b
    adc b
    sbc c
    ld [hl], a
    ld h, [hl]
    adc b
    add [hl]
    add a
    adc b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    db $76
    ld a, b
    sbc b
    adc b
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, a
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, c
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld l, c
    add a
    add [hl]
    adc c
    ld [hl], a
    adc b
    sub [hl]
    ld a, d
    ld [hl], a
    ld l, c
    add [hl]
    adc b
    add a
    ld e, c
    sbc d
    ld [hl], h
    add a
    sub [hl]
    sub a
    ld d, a
    sbc e
    sbc c
    ld b, h
    sub a
    ld a, b
    ld l, c
    ld [hl], a
    xor h
    and [hl]
    ld d, c
    adc [hl]
    ld d, h
    ld e, b
    ld l, d
    ret z

    add h
    sub [hl]
    db $76
    add [hl]
    ld c, b
    cp d
    ld [hl], l
    sbc b
    ld a, b
    sbc c
    ld h, e
    sbc d
    sub a
    ld h, a
    ld h, a
    and a
    sbc b
    ld e, b
    xor e
    ld h, a
    ld h, h
    xor b
    ld a, c
    add h
    adc d
    ld l, d
    ld a, c
    ld [hl], h
    adc c
    sub [hl]
    adc c
    ld l, b
    adc b
    sub e
    cp b
    ld e, c
    sub a
    ld l, b
    ld l, c
    sub e
    sbc b
    ld l, b
    add a
    or [hl]
    ld e, d
    add l
    ld [hl], a
    ld a, b
    ld l, c
    sub [hl]
    adc b
    ld l, b
    and a
    ld [hl], a
    add a
    add a
    sub [hl]
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc c
    add [hl]
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    ld a, b
    adc c
    db $76
    ld a, c
    ld [hl], a
    add [hl]
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    add a
    add a
    ld l, c
    add [hl]
    add [hl]
    adc b
    adc b
    ld a, b
    add [hl]
    adc b
    ld h, a
    or a
    add a
    ld a, c
    sbc b
    sub l
    xor b
    ld d, [hl]
    sub a
    ld l, d
    add [hl]
    or l
    ld a, d
    ld [hl], h
    sbc b
    adc c
    ld e, b
    ld e, b
    ld h, a
    and l
    ld d, [hl]
    add [hl]
    sub a
    adc d
    ld c, b
    ret z

    ld c, b
    ld h, a
    add a
    ld l, b
    add [hl]
    sbc c
    or [hl]
    ld a, c
    sub h
    sbc c
    ld [hl], l
    ld l, b
    xor c
    ld h, a
    add a
    ld l, d
    and l
    ld h, l
    cp b
    ld d, a
    add a
    ld l, b
    or a
    ld h, a
    ld a, d
    ld h, a
    add [hl]
    ld e, d
    ld a, d
    db $76
    ld a, d
    sub l
    ld h, a
    sub a
    ld l, c
    add a
    ld a, b
    sub a
    sub a
    add a
    ld a, b
    add [hl]
    sub [hl]
    adc c
    ld l, c
    add [hl]
    adc b
    add a
    ld [hl], a
    add a
    adc b
    sub [hl]
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    add [hl]
    adc c
    sub [hl]
    adc b
    db $76
    adc b
    add a
    ld h, a
    add a
    sub a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    and a
    sub a
    ld h, a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, c
    ld e, d
    and e
    ld l, l
    add h
    ld d, a
    sbc b
    ld c, b
    ld l, c
    sub [hl]
    ld [hl], l
    xor c
    ld e, c
    sbc c
    ld [hl], l
    adc c
    ld b, a
    sbc c
    add [hl]
    xor c
    adc c
    ld a, b
    add a
    ld b, [hl]
    sbc e
    ld [hl], $c9
    sbc b
    ld h, a
    sub l
    ld a, b
    add h
    ld a, d
    ld l, c
    adc c
    and l
    add a
    ld d, a
    ld h, [hl]
    ld a, b
    db $76
    sbc b
    adc b
    adc c
    add h
    add a
    ld [hl], a
    add l
    sbc b
    ld l, c
    cp b
    db $76
    ld a, d
    db $76
    add a
    ld h, [hl]
    xor b
    adc c
    ld l, b
    add a
    ld a, b
    ld h, [hl]

Call_00a_6699:
    ld [hl], a
    sbc c
    ld [hl], a
    ld a, d
    ld a, b
    add [hl]
    ld d, a
    ld a, c
    ld l, b
    ld h, a
    xor b
    ld a, c
    ld h, l
    adc c
    ld a, b
    ld [hl], l
    sbc d
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    add a
    ld a, b
    add [hl]
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    ld l, c
    add a
    ld a, c
    db $76
    add a
    ld [hl], a
    sbc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    sub a
    adc b
    ld [hl], a
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld a, b
    ld h, a
    add a
    ld h, [hl]
    adc d
    ld a, b
    add a
    add l
    ld l, c
    ld [hl], h
    ld a, c
    sbc c
    ld a, c
    ld a, b
    ld a, d
    sub e
    ld l, b
    ld a, c
    ld h, a
    sbc c
    adc b
    ld a, b
    ld [hl], h
    adc b
    add [hl]
    adc e
    ld c, d
    sbc d
    ld h, a
    ld e, b
    add a
    add [hl]
    sub l
    xor d
    ld [hl], a
    sub [hl]
    ld h, a
    adc c
    ld d, [hl]
    ld [hl], a
    sbc d
    ld l, b
    ld [hl], a
    ld a, c
    adc b
    ld h, [hl]
    adc d
    ld l, b
    ld l, b
    add a
    adc h
    ld b, a
    add a
    add a
    add [hl]
    ld l, c
    adc c
    ld h, a
    adc b
    ld l, c
    db $76
    ld [hl], a
    sub a
    adc b
    ld h, a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld h, a
    ld a, b
    ld [hl], a
    sbc b
    add [hl]
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    sub a
    add a
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld a, c
    adc c
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    adc b
    ld l, b
    sub a
    add [hl]
    ld h, a
    adc e
    db $76
    ld a, c
    and a
    ld h, a
    adc b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    adc c
    or [hl]
    ld h, e
    sbc b
    and l
    ld [hl], $c9
    add a
    sbc d
    ld h, h
    sbc c
    ld [hl], c
    ld l, d
    xor b
    adc d
    add l
    ld a, e
    ld d, [hl]
    ld h, h
    xor d
    ld a, b
    sbc d
    ld [hl], h
    adc d
    ld [hl], e
    ld e, b
    sbc b
    sub a
    cp b
    ld e, h
    sub h
    ld a, b
    ld d, a
    add a
    add a
    adc b
    add [hl]
    xor b
    ld d, a
    sbc b
    ld d, a
    adc b
    ld e, b
    ld [hl], a
    adc b
    add [hl]
    and a
    ld l, b
    ld h, [hl]
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc c
    db $76
    add [hl]
    ld h, a
    sbc b
    add a
    ld a, b
    adc b
    add [hl]
    db $76
    adc b
    ld a, b
    add a
    ld a, d
    and [hl]
    add [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    sbc c
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    sbc c
    ld [hl], a
    sub a
    adc b
    ld h, a
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    add a
    ld [hl], l
    adc b
    db $76
    sub a
    ld a, b
    adc b
    add a
    adc b
    db $76
    adc b
    ld h, a
    adc b
    ld a, b
    add a
    add a
    sub a
    ld [hl], a
    ld h, a
    add a
    adc c
    ld l, b
    ld a, c
    add a
    ld [hl], a
    add a
    add a
    ld l, b
    adc b
    adc d
    ld [hl], a
    ld l, c
    add a
    ld h, [hl]
    adc c
    adc b
    adc b
    ld d, a
    xor b
    ld [hl], a
    ld e, b
    sbc c
    ld a, c
    ld h, a
    add a
    add a
    ld h, a
    and [hl]
    adc c
    add a
    ld a, c
    sub a
    ld e, c
    ld [hl], l
    sbc b
    ld a, d
    ld d, [hl]
    and [hl]
    ld l, d
    ld a, b
    add a
    adc b
    adc b
    add a
    ld l, b
    add a
    adc b
    ld a, b
    ld l, e
    ld [hl], a
    db $76
    adc c
    ld l, b
    add a
    ld a, c
    sub [hl]
    sub l
    ld l, d
    add [hl]
    add l
    sbc b
    adc c
    ld h, [hl]
    add a
    and a
    ld [hl], a
    adc c
    ld a, b
    sub l
    adc b
    add a
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld a, c
    ld l, c
    ld [hl], a
    ld l, c
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld a, c
    ld h, a
    add [hl]
    sbc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    add a
    add a
    adc b
    adc b
    ld a, b
    and l
    add [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    adc c
    db $76
    ld a, c
    sub l
    sbc b
    ld a, e
    ld e, b
    ld l, b
    sub l
    ld h, a
    ret


    ld c, d
    sbc d
    ld d, a
    sbc b
    scf
    or [hl]
    ld l, d
    ld l, e
    add a
    add [hl]
    or [hl]
    ld c, c
    ld l, d
    ld h, [hl]
    xor d
    add [hl]
    adc c
    ld h, e
    adc d
    ld b, l
    adc c
    add l
    adc e
    add [hl]
    sbc c
    db $76
    ld l, b
    ld [hl], l
    add a
    ld l, c
    cp b
    ld e, e
    and l
    ld a, b
    add l
    ld [hl], a
    ld l, b
    add a
    adc b
    adc c
    adc c
    ld h, [hl]
    add [hl]
    ld a, b
    ld l, c
    ld a, b
    adc c
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    adc b
    add a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    adc c
    ld [hl], a
    sub a
    ld [hl], a
    ld a, c
    add a
    ld l, c
    sub a
    adc b
    ld a, b
    ld a, c
    db $76
    ld a, c
    ld e, c
    add l
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld h, a
    ld a, b
    adc b
    ld a, b
    db $76
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc b
    add a
    db $76
    adc b
    sbc b
    ld [hl], a
    sub a
    ld a, c
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc c
    ld h, a
    add a
    ld [hl], a
    sbc b
    ld e, b
    adc b
    add a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    sbc b
    add h
    sbc c
    ld d, a
    adc c
    add [hl]
    ld a, b
    sub a
    sub a
    ld d, a
    xor b
    ld [hl], l
    sbc e
    ld h, [hl]
    xor b
    ld e, c
    ld l, c
    ld h, [hl]
    adc b
    ld l, c
    sub a
    sub [hl]
    add [hl]
    ld a, b
    add l
    ld a, c
    ld a, b
    ld e, c
    ld [hl], a
    adc b
    ld l, b
    ld l, b
    add a
    adc b
    add a
    sub a
    ld e, b
    sbc b
    ld h, a
    sub a
    ld a, b
    add a
    ld a, b
    ld a, c
    add a
    add [hl]
    ld a, b
    ld a, b
    add a
    adc b
    ld a, c
    add [hl]
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld l, c
    sub [hl]
    ld e, b
    ld a, b
    adc b
    add a
    ld [hl], a
    sbc b
    add a
    ld h, a
    add a
    sub a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld l, b
    add [hl]
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    sbc b
    db $76
    sbc b
    add a
    ld l, c
    ld a, b
    sub a
    ld a, b
    sbc c
    ld c, c
    add [hl]
    ld a, h
    ld h, l
    and a
    sub l
    ld l, b
    and a
    add l
    adc d
    sub [hl]
    and [hl]
    ld l, c
    db $76
    ld h, a
    adc c
    add h
    cp c
    ld a, c
    ld d, a
    ld l, b
    ld l, b
    add l
    ld a, b
    ld a, h
    ld h, [hl]
    sub a
    add a
    ld h, a
    add l
    adc e
    add [hl]
    add [hl]
    xor b
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld [hl], a
    and a
    sub a
    adc c
    ld l, b
    db $76
    adc c
    ld a, c
    db $76
    add a
    sbc c
    ld e, c
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    ld l, d
    db $76
    ld l, c
    add a
    add [hl]
    ld [hl], a
    adc c
    add [hl]
    adc b
    ld [hl], a
    add a
    add [hl]
    ld l, c
    add [hl]
    adc b
    ld l, c
    sub [hl]
    ld a, b
    ld h, a
    adc b
    add a
    ld a, b
    add a
    and a
    ld l, b
    ld h, a
    add a
    add a
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, c
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    sbc b
    add [hl]
    sbc c
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b

Call_00a_69a7:
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    sub [hl]
    add a
    add a
    adc b
    add [hl]
    ld l, b
    adc b
    adc b
    ld [hl], a
    adc b
    add [hl]
    ld h, a
    ld a, b
    sbc b
    sub l
    ld a, b
    rst $00
    add l
    ld [hl], l
    sbc b
    sub a
    add a
    sbc d
    and a
    ld h, l
    ld l, c
    sbc b
    ld d, l
    ld [hl], a
    call z, Call_00a_7674
    sbc b
    ld [hl], l
    ld d, [hl]
    xor d
    ld a, b
    db $76
    adc c
    and [hl]
    ld h, l
    add a
    adc c
    ld [hl], a
    ld a, b
    sbc h
    ld h, [hl]
    db $76
    sbc b
    add a
    ld h, [hl]
    sbc c
    adc b
    adc b
    adc c
    ld a, b
    ld d, a
    db $76
    adc c
    add a
    sub a
    add a
    sbc b
    ld l, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld h, a
    sub [hl]
    add a
    sub a
    sub a
    add a
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld l, b
    sub a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    adc c
    ld a, b
    add a
    add a
    ld l, c
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld h, a
    sub a
    adc b
    ld h, a
    sub a
    sub a
    ld a, b
    add a
    sub a
    ld l, c
    ld [hl], a
    sbc b
    db $76
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    cp d
    ld c, b
    adc c
    ld h, a
    ld h, [hl]
    ld h, a
    xor c
    ld d, a
    adc c
    adc b
    ld h, l
    add a
    sbc c
    ld e, d
    add h
    xor c
    add [hl]
    ld d, a
    sbc b
    adc b
    sub h
    ld l, h
    or [hl]
    ld b, [hl]
    add [hl]
    ret z

    add l
    ld a, b
    ld a, d
    add [hl]
    ld b, a
    adc b
    sbc b
    ld h, a
    ld e, c
    rst $10
    ld d, [hl]
    ld e, b
    ld a, d
    db $76
    add [hl]
    sbc c
    ld [hl], a
    ld h, a
    ld l, c
    and a
    ld h, [hl]
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, c
    sub [hl]
    ld a, c
    ld a, b
    sub [hl]
    add [hl]
    ld a, c
    adc c
    db $76
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc c
    adc b
    add a
    ld h, a
    add [hl]
    add [hl]
    adc b
    sbc b
    add a
    add a
    adc b
    add [hl]
    ld [hl], a
    add a

Jump_00a_6a79:
    ld a, c
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    ld h, a
    adc b
    add a
    ld [hl], a
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    sbc b
    add a
    ld [hl], a
    ld a, b
    add a
    add [hl]
    adc c
    adc b
    ld h, a
    ld a, b
    ld a, b
    db $76
    adc c
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    ld a, c
    ld a, b
    add a
    db $76
    ld [hl], a
    ld l, b
    sbc c
    sub a
    ld a, c
    ld [hl], a
    ld h, a
    db $76
    sub a
    ld a, b
    sub [hl]
    adc b
    adc b
    ld h, [hl]
    ld h, a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    sbc c
    ld [hl], a
    adc c
    db $76
    adc b
    ld l, b
    add [hl]
    adc b
    adc d
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    adc b
    adc c
    ld l, c
    add a
    adc b
    ld h, [hl]
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    add [hl]
    ld l, b
    adc b
    sub a
    sub a
    adc c
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    add [hl]
    sbc b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    ld a, d
    db $76
    adc d
    and e
    sbc d
    ld h, [hl]
    and [hl]
    sub a
    ld l, d
    ld c, c
    add l
    sbc b
    ld h, a
    adc d
    sub l
    ld a, c
    and [hl]
    ld c, e
    sub e
    xor b
    ld l, c
    and a
    ld h, h
    add $59
    ld h, a
    ld [hl], a
    sbc c
    ld a, b
    adc c
    db $76
    sub a
    ld d, a
    adc b
    ld a, c
    db $76
    sbc e
    ld h, a
    ld a, b
    db $76
    ld a, c
    add [hl]
    ld [hl], a
    sbc c
    ld a, b
    add [hl]
    sub a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, b
    ld l, c
    add [hl]
    db $76
    ld a, c
    add [hl]
    sub a
    ld a, c
    add a
    adc b
    ld h, [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add [hl]
    adc c
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a

Call_00a_6b7a:
    add [hl]
    ld [hl], a
    ld a, b
    adc c
    ld a, c
    ld a, b
    adc b
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc c
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    adc b
    add a
    add a
    ld l, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add [hl]
    ld [hl], a
    adc c
    ld h, a
    ld l, c
    ld a, b
    sub [hl]
    db $76
    adc c
    ld [hl], a
    add a
    ld a, d
    adc b
    db $76
    add a
    add a
    add [hl]
    ld a, b
    adc d
    adc b
    add a
    adc b
    add [hl]
    ld l, b
    add a
    sbc b
    ld h, a
    adc b
    sub a
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    ld h, a
    and a
    ld [hl], a
    ld l, b
    add a
    adc b
    ld a, b
    ld h, a
    sub a
    ld [hl], a
    adc c
    add a
    adc b
    add [hl]
    adc b
    ld h, [hl]
    adc b
    add [hl]
    sbc b
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc c
    ld l, b
    ld l, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    add [hl]
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    ld l, b
    add a
    add a
    add a
    add [hl]
    adc c
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld l, b
    sbc c
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    adc c
    db $76
    ld l, e
    ld d, [hl]
    cp b
    ld [hl], l
    sbc b
    ld [hl], a
    ld l, c
    adc b
    ld l, b
    ld h, [hl]
    ld a, c
    add a
    ld l, b
    ld a, d
    add h
    adc d
    add [hl]
    ld l, d
    ld h, a
    sbc b
    db $76
    ld a, c
    add l
    xor b
    ld h, a
    ld a, c
    add a
    sbc b
    ld h, a
    ld a, c
    ld h, [hl]
    adc b
    sbc c
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld h, a
    ld [hl], a
    and a
    ld a, c
    ld a, b
    adc b
    ld [hl], l
    add [hl]
    adc c
    ld h, a
    adc b
    adc c
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    adc b
    sub [hl]
    sub a
    adc c
    db $76
    ld h, a
    add a
    adc c
    ld l, b
    ld a, c
    sub a
    add a
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    db $76
    ld a, b
    add a
    ld a, b
    add [hl]
    sbc b
    ld a, b
    ld h, a

Jump_00a_6c68:
    sub a
    ld [hl], a
    ld a, b
    ld l, c
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc c
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    ld h, a
    ld a, b
    ld a, b
    db $76
    adc c
    sub a
    ld l, c
    ld [hl], a
    ld a, b
    db $76
    adc b
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    add [hl]
    adc c
    ld a, b
    sbc c
    db $76
    add a
    ld a, c
    ld h, a
    ld l, b
    adc b
    ld l, b
    adc b
    adc b
    ld [hl], l
    sub a
    add a
    ld a, b
    ld h, a
    add a
    add a
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld l, c
    adc b
    add [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    sbc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    adc b
    adc b
    add a
    ld a, b
    add a
    ld h, a
    add a
    add a
    ld a, b
    add a
    adc b
    add [hl]
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    add [hl]
    add a
    sub a
    adc b
    add [hl]
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc c
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, b
    ld a, b
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    sbc b
    ld l, b
    adc b
    ld e, c
    sbc b
    ld l, b
    adc b
    adc c
    db $76
    sbc b
    ld a, b
    add a
    add [hl]
    sbc c
    sub [hl]
    ld l, b
    ld h, a
    adc c
    ld [hl], l
    adc b
    sbc b
    db $76
    ld h, a
    add a
    adc b
    and [hl]
    adc c
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    add a
    adc c
    ld a, c
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    db $76
    add [hl]
    adc b
    add a
    sbc b
    ld h, a
    add a
    ld [hl], a
    ld a, c
    add a
    adc b
    add a
    ld a, b
    db $76
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    db $76
    ld l, c
    add a
    add a
    adc c
    add a
    add a
    ld l, b
    ld [hl], a
    add a
    adc b
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld a, b
    adc b
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    add a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    sub a
    add a
    ld [hl], a
    adc b
    add [hl]
    add a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    xor b
    ld h, [hl]
    adc b
    sub a
    ld a, c
    ld d, a
    sbc b
    db $76
    ld l, c
    add a
    add a
    ld [hl], a
    ld [hl], a
    sub a
    ld h, [hl]
    ld a, c
    add a
    sub a
    ld [hl], a
    sbc b
    db $76
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc c
    add a
    sub a
    ld l, b
    ld l, c
    sub [hl]
    ld l, c
    sub [hl]
    adc c
    ld [hl], a
    ld l, b
    sbc b
    ld e, b
    add a
    ld a, b
    sub a
    ld h, a
    sub a
    db $76
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    sub [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    db $76
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    db $76
    add a
    add a
    sbc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld h, a
    adc d
    ld [hl], l
    sbc b
    ld a, b
    ld [hl], a
    sub a
    ld l, c
    ld l, c
    add l
    adc c
    ld l, b
    adc b
    add a
    adc b
    add [hl]
    ld a, d
    ld l, c
    ld [hl], l
    sbc c
    ld h, a
    ld a, b
    add a
    ld e, b
    sub a
    ld a, c
    adc b
    db $76
    cp b
    ld c, c
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    sbc b
    ld a, c
    db $76
    sub a
    ld a, b
    ld a, b
    add a
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    add l
    adc b
    add [hl]
    ld a, c
    add a
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    sbc b
    db $76
    adc c
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    add [hl]
    sbc c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld l, b
    ld [hl], a
    adc c
    add [hl]
    adc c
    ld a, b
    ld [hl], a
    ld d, a
    adc b
    ld a, b
    db $76
    sbc b
    sub a
    ld d, l
    sbc b
    ld a, b
    adc c
    ld [hl], a
    xor c
    add a
    ld d, [hl]
    ld [hl], a
    adc b
    add [hl]
    adc b
    adc d
    add [hl]
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    adc d
    adc b
    db $76
    add a
    ld a, b
    add [hl]
    ld a, c
    add a
    adc c
    db $76
    adc c
    add a
    ld l, b
    add a
    adc b
    ld h, a
    sbc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    db $76
    ld [hl], a
    adc b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    sub a
    add a
    add a
    ld a, b
    ld h, a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld h, a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld d, a
    adc b
    db $76
    adc b
    ld l, b
    add a
    sbc b
    sbc b
    ld e, c
    ld l, c
    ld a, b
    ld [hl], a
    ld [hl], a
    and a
    ld h, a
    adc b
    ld a, e
    ld h, a
    add [hl]
    sbc c
    add [hl]
    ld a, b
    add a
    ld a, b
    sub a
    ld l, b
    xor c
    ld d, a
    adc c
    ld h, a
    or h
    ld a, c
    add a
    and a
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    adc c
    ld h, [hl]
    rlca
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld b, [hl]
    di
    cpl
    add b
    res 3, c
    jp nc, Jump_00a_526f

    jp c, $b21a

    ld a, [hl]
    ld b, e
    rst $30
    inc e
    ret nc

    adc a
    inc [hl]
    or $1d
    pop bc
    sbc [hl]
    dec [hl]
    push hl
    dec l
    sub d
    xor l
    ld h, $f5
    dec a
    add c
    xor h
    daa
    db $e3
    ld a, $81
    ld a, [hl-]
    ld a, [bc]
    jp nc, Jump_00a_536e

    add sp, $1b
    pop bc
    ld a, l
    ld b, l
    rst $10
    inc e
    and c
    sbc l
    dec [hl]
    rst $10
    ld l, e
    and d
    sbc d
    ld c, b
    sub a
    ld l, c
    db $76
    sbc c
    ld e, b
    sub [hl]
    ld l, e
    db $76
    sbc b
    ld e, b
    and [hl]
    ld a, d
    sub a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld h, a
    sub a
    ld l, c
    db $76
    adc b
    ld l, b
    add a
    ld l, d
    db $76
    sbc b
    ld l, b
    sub [hl]
    adc c
    ld h, a
    sbc b
    ld h, a
    sub [hl]
    ld a, c
    db $76
    sbc c
    ld e, c
    sub l
    ld a, c
    ld h, a
    sbc b
    ld l, b
    sub [hl]
    ld a, d
    ld h, l
    xor b
    ld e, c
    and l
    ld a, c
    db $76
    sbc c
    ld e, b
    sub [hl]
    ld l, c
    ld d, [hl]
    and a
    ld l, b
    and l
    adc c
    ld a, b
    add a
    ld a, b
    ld l, c
    add l
    sbc b
    ld h, a
    and l
    ld a, d
    ld h, [hl]
    xor b
    sbc c
    sub l
    adc c
    ld h, a
    and a
    ld e, c
    and h
    adc e
    ld h, [hl]
    and a
    ld e, d
    sub l
    sbc c
    ld h, [hl]
    or [hl]
    ld e, d
    sub h
    sbc d
    ld d, a
    and [hl]
    ld e, d
    sub h
    adc d
    ld d, [hl]
    or [hl]
    ld e, e
    ld [hl], l
    sbc c
    ld e, b
    or l
    ld l, d
    ld [hl], l
    ld e, c
    ld e, b
    and [hl]
    ld e, e
    add h
    sbc c
    ld e, b
    sub [hl]
    ld l, c
    ld [hl], l
    xor c
    ld c, b
    and [hl]
    ld a, d
    ld [hl], l
    xor b
    ld a, c
    sub l
    ld a, d
    ld h, [hl]
    and a
    ld e, d
    add l
    ld a, e
    ld d, [hl]
    or a
    ld e, d
    sub h
    adc d
    ld h, [hl]
    and a
    ld a, c

jr_00a_6ff0:
    add [hl]
    sbc c
    ld d, a
    and a
    ld l, c
    db $76
    adc c
    ld e, c
    sub [hl]
    ld l, d
    ld [hl], l
    sbc b
    ld h, a
    sub [hl]
    ld a, b
    db $76
    ld [$9568], sp
    adc c
    ld [hl], l
    or a
    ld e, b
    and l
    ld l, h
    ld h, h
    xor c
    jr z, jr_00a_6ff0

    ld c, [hl]
    ld [hl], d
    jp z, $d1ba

    ld e, a
    ld d, b
    db $ec
    ld b, $f4
    dec l
    sub d
    xor l
    rla
    push de
    inc a
    and d
    sbc e
    ld b, l
    ld h, a
    ld c, c
    or l
    ld l, h
    ld h, h
    cp c
    ld c, b
    or l
    ld l, e
    sub e
    adc e
    ld b, l
    ret z

    ld c, c
    and h
    ld a, e
    add h
    ret


    add hl, hl
    call nz, $835c
    sbc e
    ld b, a
    add $4b
    add e
    sbc e
    ld b, [hl]
    add $4b
    sub h
    ld a, d
    ld d, l
    rst $00
    ld a, [hl-]
    sub h
    sbc e

jr_00a_7046:
    ld b, a
    or [hl]
    ld e, d
    db $76
    adc c
    ld l, b

jr_00a_704c:
    sub [hl]
    adc b
    ld h, a
    sub a
    xor c
    add l
    sbc b
    ld h, a
    and a
    ld l, b
    add [hl]
    ld a, c
    ld h, a
    sbc b
    ld l, b
    sub [hl]
    adc c
    ld [hl], l
    sbc b
    ld e, b
    db $76
    ld a, c
    add a
    sbc b
    ld l, b
    sub [hl]
    ld a, c
    db $76
    sbc b
    ld l, c
    add [hl]
    ld a, e
    ld d, [hl]
    xor b
    ld e, c
    sub l
    adc e
    ld h, [hl]
    and a
    ld e, d
    sub h
    ld a, e
    ld h, l
    cp b
    ld e, b
    and l

jr_00a_707a:
    ld l, e
    ld [hl], l
    sbc b
    ld [hl], a
    sub a
    ld a, c
    ld d, [hl]
    adc c
    ld h, a
    sbc b
    ld e, c
    sub [hl]
    ld l, d
    add l
    adc c
    ld h, a
    or [hl]
    ld e, d
    sub l
    adc e
    ld d, a
    xor b
    xor c
    sub h
    adc e
    ld d, l
    cp c
    jr c, jr_00a_704c

    ld l, d
    ld [hl], a
    ld a, d
    ld h, a
    sbc b
    ld l, b
    and h
    ld a, d
    add l
    ld e, c
    ld b, a
    and l
    ld a, d
    ld [hl], l
    sbc d
    ld c, b
    or l
    ld l, e
    ld [hl], l
    sbc c
    ld d, a
    or [hl]
    ld l, d
    ld [hl], l
    sbc c
    cp b
    and l
    ld l, h
    ld [hl], e
    cp d
    jr c, jr_00a_707a

    ld l, h
    ld h, h
    cp c
    add hl, sp
    or h
    ld l, h
    ld [hl], h
    xor e
    jr c, jr_00a_7046

    ld l, e
    ld [hl], l
    sbc c
    ld d, a
    and [hl]
    ld l, c
    add [hl]
    sbc b
    ld l, b
    sub [hl]
    ld a, c
    db $76
    sub a
    ld l, d
    add l
    ld e, c
    ld d, a
    and [hl]
    ld l, d
    add [hl]
    sbc b
    ld d, a
    or l
    ld l, d
    add h
    xor c
    ld d, a
    and l
    adc c
    ld [hl], l
    and a
    cp c
    sub l
    ld a, d
    ld h, l
    cp b
    ld c, c
    and l
    ld l, e
    ld [hl], h
    xor c
    ld c, b
    push bc
    ld l, d
    ld [hl], h
    sbc d
    ld d, a
    ld h, [hl]
    ld e, e
    sub h
    sbc d
    ld d, a
    or [hl]
    ld e, e
    sub h
    adc e
    ld b, [hl]
    or a
    ld l, c
    sub l
    ld a, d
    ld h, [hl]
    xor b
    adc b
    and l
    ld a, d
    db $76
    sbc b
    ld h, a
    sub a
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    ld a, c
    add l
    adc c
    ld h, [hl]
    sbc b
    ld e, b
    sub l
    ld a, c
    add l
    sbc b
    ld e, b
    sub [hl]
    ld a, d
    add l
    sbc d
    ld d, a
    or [hl]
    ld l, c
    ld h, l
    adc d
    ld h, [hl]
    and a
    ld e, c
    sub [hl]
    ld a, d
    ld [hl], l
    cp b
    ld e, b
    and [hl]
    ld l, c
    sub l
    sbc c
    ld l, b
    and a
    ld hl, sp-$6b
    adc c

jr_00a_7133:
    ld h, a
    sbc b
    ld e, b
    and a
    ld l, d
    add l
    sbc d
    ld b, [hl]
    rst $00
    ld c, d
    sub h
    ld l, h
    ld d, e
    dec bc
    ld b, $ba
    db $76
    ld d, a
    push af
    ld [$1bf5], sp
    sub [hl]
    ld e, c
    sbc b
    and d
    adc l
    ld d, b
    rst $08
    ld [hl], h
    xor e
    ld h, l
    ld [hl], a
    sub $37
    or $2a
    or [hl]
    ld e, b
    ld a, c
    and l
    ld c, e
    and h
    ld l, e
    sub l
    xor b
    sub a
    add l
    xor d
    ld d, h
    sbc d
    ld h, a
    ld a, d
    db $76
    adc b
    add a
    ld [hl], a
    sbc b
    ld d, a
    xor c
    ld d, [hl]
    ld d, a
    ld l, c
    add [hl]
    adc c
    ld d, a
    xor b
    ld c, c
    or h
    ld a, d
    ld h, a
    or [hl]
    ld c, e
    and e
    ld l, l
    ld [hl], e
    xor c
    jp hl


    sub e
    adc l
    ld d, e
    sla [hl]
    add $6a
    ld h, h
    add sp, $09
    sub $2d
    add h
    xor c
    ld c, c
    ld b, d
    ccf
    sub c
    adc l
    ld b, l
    or a
    ld l, d
    ld [hl], h
    cp e
    dec [hl]
    reti


    jr c, jr_00a_7133

    sub a
    ld e, b
    or [hl]
    ld a, c
    and [hl]
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    sub [hl]
    ld l, b
    sub a
    ld l, b
    adc b
    ld l, c
    ld [hl], a
    sub [hl]
    xor d
    add l
    adc e
    ld d, [hl]
    sub a
    ld l, d
    add h
    sbc h
    ld b, l
    xor c
    ld e, c
    ld [hl], l
    adc h
    ld b, e
    ret z

    ld c, b
    ld h, l
    ld a, d
    ld h, [hl]
    cp b
    ld a, [hl-]
    jp $936c


    sbc c
    ld e, b
    or h
    ld l, h
    add e
    xor e
    ld b, [hl]
    and a
    adc d
    ld h, l
    cp c
    scf
    or a
    ld c, d
    sub [hl]
    adc b
    ld l, b
    and l
    ld l, d
    add h
    ld a, e
    add l
    ld a, c
    add [hl]
    db $76
    adc b
    add [hl]
    adc c
    ld h, [hl]
    xor b
    ld [hl], a
    sub a
    ld a, c
    add [hl]
    adc d
    ld h, a
    and a
    ld l, b
    sub [hl]
    ld l, d
    ld [hl], l
    adc c
    ld e, b
    and l
    ld l, e
    ld [hl], h
    adc d
    ld [hl], a
    add [hl]
    ld l, d
    add l
    adc d
    ld d, a
    sbc b
    ld e, c
    and l
    sbc d
    ld h, [hl]
    xor b
    ld l, b
    sub [hl]
    ld a, c
    db $76
    sbc c
    ld e, b
    and a
    ld e, d
    add [hl]
    adc d
    ld h, [hl]
    xor b
    ld e, b
    ld e, b
    ld l, b
    ld [hl], a
    and a
    ld c, b
    or a
    ld e, c
    add [hl]
    ld a, c
    ld [hl], a
    sub [hl]
    ld a, d
    add h
    adc e
    ld h, [hl]
    sbc c
    xor b
    sub l
    adc e
    ld h, h
    cp c
    ld b, a
    add $5a
    add l
    xor c
    ld d, a
    or [hl]
    ld e, d
    sub h
    sbc c
    ld h, [hl]
    ld h, a
    ld e, d
    sub h
    ld a, e
    ld h, l
    sbc c
    ld l, b
    add [hl]
    ld a, d
    ld d, [hl]
    cp b
    ld d, a
    sub a
    ld a, c
    ld [hl], a
    sub a
    ld d, a
    and [hl]
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    adc b
    ld l, b
    sub [hl]
    ld l, c
    add [hl]
    adc b
    ld l, b
    and [hl]
    jp z, $9a84

    ld d, [hl]
    xor b
    ld e, c
    sub l
    adc e
    ld d, l
    cp b
    ld c, c
    and h
    ld a, e
    ld h, h
    ret z

    ld c, c
    ld d, e
    ld l, h
    ld [hl], l
    sbc c
    ld c, c
    call nz, Call_00a_736c
    xor d
    ld b, a
    or l
    ld l, e
    ld [hl], e
    xor e
    ld b, a
    and [hl]
    ld a, e
    add h
    sbc c
    ld c, b
    and [hl]
    ld e, c
    sub l
    adc b
    db $76
    sub a
    ld e, d
    add [hl]
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    sbc b
    db $76
    adc b
    add l
    ld a, d
    add l
    adc d
    ld l, b
    add [hl]
    adc d
    ld h, h
    xor e
    ld b, [hl]
    or a
    ld l, c
    add l
    adc d
    ld d, l
    ret z

    ld c, b
    sub [hl]
    ld l, d
    ld h, [hl]
    or a
    add hl, sp
    sub l
    ld a, e
    ld h, l
    xor b
    ld c, d
    or h
    ld l, e
    add l
    sbc c
    ld e, b
    and l
    ld a, d
    add l
    adc d
    ld h, a
    sub [hl]
    ld a, d
    ld h, l
    adc d
    ld h, [hl]
    sub a
    ld l, c
    add [hl]
    sbc c
    ld [hl], l
    sbc b
    db $76
    sbc b
    adc b
    db $76
    sbc c
    ld h, [hl]
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    or a
    ld e, b
    or a
    ld e, b
    sub a
    ld a, b
    ld l, b
    and l
    ld l, d
    sub l
    ld e, d
    adc b
    ld d, a
    ld a, d
    add l
    ld l, h
    add h
    ld a, d
    ld [hl], a
    add [hl]
    ld a, d
    ld [hl], h
    sbc e
    ld h, l
    and a
    ld a, c
    ld [hl], a
    adc d
    add a
    sbc b
    ld h, a
    and a
    ld l, b
    add l
    sbc b
    ld l, b
    sub a
    ld e, c
    add a
    ld a, c
    ld h, a
    sbc b
    ld e, c
    add a
    sub a
    ld a, b
    sbc b
    ld e, b
    and a
    ld e, c
    add a
    adc b
    ld e, b
    and a
    ld c, d
    sub [hl]
    ld l, c
    sub a
    add a
    ld l, b
    db $76
    ld e, e
    sub [hl]
    ld e, d
    and a
    ld [hl], l
    adc e
    ld h, e
    sbc e
    ld h, [hl]
    add a
    xor d
    ld b, h
    bit 0, h
    cp c
    ld h, [hl]
    db $76
    xor c
    ld d, l
    cp b
    ld d, a
    and [hl]
    ld a, b
    add l
    sub a
    ld a, b
    add a
    adc b
    add l
    ld a, b
    and [hl]
    sbc b
    and a
    ld [hl], a
    ld a, c
    sub h
    ld a, d
    and h
    adc b
    adc b
    add l
    ld a, e
    add e
    xor c
    ld [hl], l
    or l
    adc b
    sub h
    sbc d
    ld d, [hl]
    or a
    ld e, c
    sub h
    sbc d
    ld h, l
    or [hl]
    ld e, c
    sub h
    sbc d
    ld h, h
    or a
    ld h, a
    or h
    xor b
    ld [hl], h
    cp b
    ld b, a
    or [hl]
    ld a, b
    add [hl]
    and a
    ld e, b
    db $d3
    ld e, c
    or l
    ld [hl], a
    adc b
    and h
    ld l, e
    ld [hl], e
    ld a, d
    add [hl]
    add [hl]
    sbc c
    ld [hl], h
    sbc d
    ld [hl], h
    adc c
    add [hl]
    add a
    sub a
    db $76
    sbc b
    db $76
    sbc c
    db $76
    sbc b
    ld [hl], a
    sub [hl]
    adc b
    db $76
    sub a
    db $76
    and l
    ld a, c
    sub l
    adc b

Call_00a_736c:
    ld l, b
    sub l
    ld a, d
    and h
    ld a, d
    ld [hl], l
    and [hl]
    ld l, c
    sub h
    adc e
    ld d, l
    or a
    ld e, c
    sub h
    sbc d
    ld h, h
    or a
    ld l, b
    and h
    ld a, d
    call nz, Call_00a_7898
    and h
    ld a, e
    ld [hl], e
    xor d
    db $76
    and [hl]
    adc c
    ld [hl], e
    jp z, $b844

    db $76
    db $76
    and a
    ld d, [hl]
    ret


    ld d, l
    xor b
    add l
    ld a, b
    and a
    ld e, b
    or [hl]
    ld h, a
    sub a
    ld a, b
    add a
    sub [hl]
    add a
    ld d, l
    ld l, c
    add [hl]
    adc b
    db $76
    sub a
    ld l, c
    add l
    sbc c
    ld h, l
    or a
    ld l, b
    sub h
    xor c
    ld d, l
    add $bb
    and e
    ld l, c
    sub a
    sub l
    ld e, d
    call nz, $b54a
    add a
    ld e, b
    add $48
    and a
    ld a, b
    ld l, b
    ld [hl], a
    scf
    cp b
    ld l, b
    ld [hl], a
    or a
    ld d, [hl]
    or a
    ld h, a
    sub a
    adc b
    add l
    and [hl]
    ld a, b
    sub h
    sbc d
    add h
    xor b
    add l
    add l
    xor d
    ld [hl], c
    cp h
    ld [hl], e
    adc b
    xor c
    ld [hl], c
    xor e
    add e
    sbc c
    ld a, b
    add l
    xor d
    ld [hl], l
    sbc b
    ld a, b
    and h
    adc c
    sub l
    adc b
    ld a, c
    sub l
    ld l, d
    and l
    ld a, b
    adc b
    sub l
    ld e, d
    ld [hl], l
    ld l, c
    ld [hl], a
    sub a
    ld e, c
    sub a
    ld l, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    adc c
    db $76
    adc c
    and a
    ld [hl], a
    sbc c
    ld h, [hl]
    adc d
    db $76
    ld a, b
    sub a
    ld [hl], l
    xor c
    ld h, h
    sbc d
    add l
    ld [hl], a
    sbc c
    ld [hl], h
    sbc d
    db $76
    sub a
    ld a, c
    sub l
    adc c
    ld [hl], l
    or a
    ld c, c
    or h
    ld a, b
    add [hl]
    and a
    ld a, b
    and h
    ld a, c
    call nz, $8879
    sub e
    ld a, c
    call nz, Call_00a_7987
    push bc
    ld d, [hl]
    sbc b
    add $36
    reti


    ld h, l
    ld l, b
    ld h, a
    ld h, l
    and a
    sub a
    sub [hl]
    db $76
    sbc c
    add h
    ld l, b
    cp b
    ld h, h

Call_00a_743b:
    ld a, e
    sub [hl]
    ld h, [hl]
    xor b
    and l
    add [hl]
    adc e
    add [hl]
    ld d, a
    cp b
    add l
    ld e, b
    xor b
    ld e, b
    add l
    xor b
    ld [hl], h
    or [hl]
    ld e, e
    sub l
    ld e, c
    sub a
    or l
    ld a, [hl-]
    rst $00
    ld c, c
    ld e, d
    add $37
    rst $00
    ld l, b
    ld c, b
    xor d
    scf
    sub a
    adc c
    ld h, [hl]
    adc d
    ld c, b
    sbc c
    ld l, b
    db $76
    cp b
    scf
    sbc e
    ld e, b
    ld h, [hl]
    ret z

    ld d, l
    adc b
    adc d
    ld b, [hl]
    ld a, e
    ld d, l
    add a
    sbc b
    ld h, [hl]
    adc d
    ld [hl], h
    adc c

jr_00a_7477:
    and l
    ld h, a
    sbc e
    ld h, l
    ld l, d
    or l
    ld h, l
    sbc c
    and l
    ret z

    sbc c
    ld [hl], l
    ld [hl], a
    sub $56
    sbc b
    add a
    ld h, [hl]
    rst $10
    ld h, l
    cp b
    db $76
    ld l, b
    xor b
    ld d, e
    adc c
    sub [hl]
    ld d, a
    cp c
    ld b, h
    xor c
    sub l
    db $76
    cp b
    ld h, [hl]
    sbc c
    ld [hl], a
    add [hl]
    xor b
    ld [hl], l
    sbc c
    sub a
    ld [hl], a
    ld a, d
    sub e
    ld a, c
    and [hl]
    db $76
    ld a, d
    add l
    ld l, d
    sub l
    add a
    ld a, b
    and [hl]
    ld l, c
    ld [hl], a
    ld l, b
    ld d, a
    xor c
    ld b, a
    ld a, c
    sub [hl]
    ld e, b
    ret z

    scf
    cp c
    ld h, [hl]
    ld e, c
    rst $00
    jr z, jr_00a_7477

    ld e, b
    sbc b
    sbc c
    ld c, b
    sub [hl]
    ld a, c
    add [hl]
    adc c
    ld l, b
    adc b
    ld l, d
    db $76

jr_00a_74cb:
    adc d
    ld h, [hl]
    adc c
    ld a, b
    ld h, [hl]
    ld a, c
    ld [hl], l
    ld a, b
    sbc b
    db $76
    ld a, d
    add a
    ld h, a
    sbc b
    db $76
    ld a, c
    adc b
    ld l, b
    add a
    ld a, b
    sub a
    adc b
    ld l, b
    and a
    ld l, b
    add a
    and a
    scf
    ret


    ld d, a
    add a
    cp b
    ld d, l
    rst $00
    ld e, c
    and h
    ld a, c
    and a
    and e
    ld e, e
    or e
    ld l, d
    db $76
    and [hl]
    ld l, b
    sub h
    sbc e
    ld h, e
    sbc e
    db $76
    ld [hl], l
    xor d
    ld h, e
    adc c
    db $76
    sub a
    ld a, b
    ld [hl], a
    or a
    ld d, a
    xor b
    ld a, b
    ld h, a
    sbc c
    ld [hl], l
    add [hl]
    sbc d
    ld h, h
    ld a, e
    ld b, a
    ld [hl], l
    sbc b
    sub [hl]
    ld l, c
    ld l, b
    adc b
    ld h, a
    ld a, c
    add a
    ld [hl], a
    ld a, c
    adc b
    ld e, b
    ld a, c
    and a
    and a
    sbc d
    ld l, b
    ld c, b
    sbc c
    ld d, [hl]
    adc b
    ld a, d
    ld d, [hl]
    sbc d
    ld h, a
    add a
    adc c
    ld h, a
    sbc d
    ld b, a
    ld l, d
    db $76
    ld d, a
    reti


    ld h, $9c
    ld h, a
    ld h, [hl]
    sbc d
    ld [hl], a
    ld d, a
    sbc h
    sub d
    ld c, e
    cp b
    ld h, e
    cp h
    or a
    jr c, jr_00a_74cb

    sbc d
    ld h, [hl]
    add l
    cp e
    add e
    ld e, d
    xor d

jr_00a_754b:
    ld h, e
    ld e, d
    reti


    inc [hl]
    ld a, l
    ld b, a
    ld h, $aa
    and h
    ld h, a
    sbc c
    db $76
    add [hl]
    sub a
    or [hl]
    ld h, [hl]
    ld a, d
    xor b
    ld b, h
    sbc e
    and [hl]
    add l
    xor h
    add l
    ld d, a
    sbc e
    sub h
    ld e, c
    cp b
    ld h, [hl]
    ld l, d
    sbc b
    ld e, b
    sub [hl]
    add a
    xor b
    ld d, l
    sbc h
    sub h
    ld b, a
    ret


    add h
    ld e, e
    sbc b
    ld d, a
    add [hl]
    and a
    ld a, c
    ld a, b
    ld l, d
    ld [hl], a
    add a
    ld l, b
    ld l, d
    ld b, a
    ld a, d
    and h
    ld e, b
    xor e
    ld d, [hl]
    ld l, d
    sub a
    ld [hl], l
    adc e
    ld h, a
    adc b
    ld l, b
    sub l
    adc c
    sub a
    adc d
    ld l, b
    ld [hl], h
    sbc e
    ld h, l

Jump_00a_7596:
    ld l, d
    ld a, e
    add e
    ld a, c
    and a
    ld a, b
    ld e, c
    sbc b
    add [hl]
    ld [hl], l
    ld l, e
    ld e, c
    ld b, a
    sbc d
    sub h
    ld e, b
    sbc e
    ld d, a
    ld e, b
    or a
    sub l
    ld l, c
    adc e
    ld h, [hl]
    ld [hl], a
    or a
    ld [hl], a
    ld e, d
    ld l, d
    sub h
    db $76
    cp c
    ld h, l
    ld e, d
    xor b
    ld h, e
    cp c
    add [hl]
    ld a, b
    ld l, c
    sub [hl]
    and h
    cp c
    xor c
    jr c, jr_00a_754b

    and [hl]
    add l
    sbc c
    ld l, e
    ld h, d
    xor d
    sub h
    add a
    ld l, l
    ld h, l
    ld a, b
    sub l
    adc b
    ld c, d
    ld a, c
    ld l, b
    ld [hl], h
    sub $5a
    ld a, b
    ld c, e
    sub h
    and h
    ld a, d
    sbc b
    ld a, [hl+]
    adc c
    sub h
    sub [hl]
    adc c
    ld e, h
    scf
    ld [hl], a
    xor b
    ld h, l
    ld e, l
    sbc b
    ld d, h
    adc b
    sub $39
    ld c, h
    ld a, b
    add e
    cp b
    adc d
    ld e, c
    ld l, b
    sbc b
    or l
    ld [hl], l
    ld a, [hl]
    ld l, c
    ld h, $c9
    sub h
    ld c, e
    ld a, c
    ld [hl], a
    ld [hl], l
    ld h, l
    xor c
    ld d, a
    ld e, h
    ld [hl], a
    sub h
    ld a, d
    add a
    ld e, c
    ld l, c
    and e
    add a
    or a
    ld e, c
    ld e, d
    or h
    and a
    cp b
    ld e, e
    ld c, c
    sub [hl]
    add [hl]
    call nz, Call_00a_6b7a
    ld [hl], a
    ld h, [hl]
    push de
    add a
    ld e, d
    adc h
    inc [hl]
    and a
    or [hl]
    ld d, a
    ld a, h
    ld b, [hl]
    and [hl]
    or h
    adc b
    ld a, e
    scf
    xor b
    sub h
    adc b
    adc d
    ld d, a
    ld a, c
    ld [hl], e
    sub l
    sbc e
    ld e, c
    ld c, b
    or l
    add l
    ld a, c
    sbc c
    ld a, [hl-]
    sub a
    sub e
    or a
    adc b
    inc a
    sub [hl]
    ld h, h
    cp b
    and [hl]
    ld a, [hl+]
    sbc d
    ld d, [hl]
    add [hl]
    rst $00
    add hl, sp
    ld l, e
    ld h, [hl]
    and h
    rst $00
    add hl, sp
    ld a, h
    ld b, a
    add [hl]
    ret c

    ld h, a
    ld e, h
    ld e, c
    ld [hl], l
    sub [hl]
    sub a
    ld a, d
    ld a, [hl-]
    ld l, c
    sub [hl]
    sub h
    adc e
    ld l, e
    daa
    adc d
    jp nz, Jump_00a_6c68

    ld l, c
    ld e, b
    sub l
    adc c
    sub [hl]
    dec sp
    ld e, e
    sub d
    add a
    rst $00
    ld a, [hl-]
    ld e, c
    ld h, [hl]
    add a
    or l
    ld e, d

Call_00a_7674:
    ld e, e
    ld [hl], a
    ld [hl], h
    rst $00
    sbc b
    ld c, c
    adc d
    add h
    sub h
    sbc e
    adc b
    ld c, b
    ld a, b
    db $e4
    add l
    adc d
    ld a, e
    dec [hl]
    xor c
    and h
    ld h, a
    adc l
    ld l, b
    ld d, a
    and [hl]
    and [hl]
    ld l, d
    ld c, c
    ld a, c
    and [hl]
    add h
    sbc d
    ld h, a
    ld e, e
    sub l
    add [hl]
    xor d
    jr c, jr_00a_7708

    sub l
    ld d, [hl]
    or [hl]
    sbc e
    add hl, hl
    ld [$845a], sp
    cp h
    daa
    ld l, c
    ld a, d
    jp Jump_00a_5b67


    xor h
    ld d, $a6
    sbc b
    ld a, b
    ld a, e
    ld e, b
    or a
    xor b
    ld [hl], h
    ld l, h
    ld a, [hl-]
    add a
    ld [hl], a
    ld [hl], l
    ld a, [hl]

Call_00a_76ba:
    ld l, d
    ld c, b
    ld d, a
    ret c

    ld l, c
    ld c, b
    ld l, l
    ld h, a
    sub [hl]
    sub a
    ld l, b
    ld l, $89
    ld d, h
    adc b
    cp e
    ld c, b
    ld a, b
    ld e, b
    or [hl]
    sbc b
    add hl, sp
    ld e, d
    ld e, d
    and h
    add a
    ld e, c
    adc e
    ld d, a
    ld h, l
    cp b
    ld h, a
    sbc h
    daa
    ld c, b
    jp hl


    ld d, h
    ld l, d
    ld l, h
    add [hl]
    ld h, a
    add [hl]
    rst $00
    dec hl
    sbc b
    ld d, a
    add [hl]
    cp d
    ld e, b
    ld b, [hl]
    adc l
    or c
    ld a, b
    adc c
    ld l, b
    ld l, e
    sub e
    ld [hl], a
    adc b
    ld l, d
    ld c, c
    add l
    sbc b
    xor b
    ld l, b
    ld c, d
    sub a
    add a
    and l
    ld e, b
    adc l
    sub [hl]
    ld d, [hl]
    and a
    add a
    ld a, d
    ld e, d
    ld d, a

jr_00a_7708:
    sub a
    sub a
    ld l, b
    ld e, c
    ld l, c
    adc c
    ld [hl], h
    ld l, c
    ld l, e
    ld h, a
    ld d, a
    xor b
    add a
    ld e, b
    sbc d
    ld h, [hl]
    add a
    sub a
    ld a, d
    ld b, a
    ld l, l
    add a
    ld d, e
    cp [hl]
    ld b, l
    ld c, e
    ld l, b
    or [hl]
    ld h, a
    ld a, c
    adc e
    ld b, [hl]
    ld a, c
    sub [hl]
    sub [hl]
    ld e, h
    adc b
    ld h, l
    ld a, c
    or a
    sbc b
    ld a, c
    ld [hl], a
    ld [hl], a
    or l
    ld l, c
    ld a, d
    ld e, c
    ld h, [hl]
    and a
    ld [hl], a
    ld a, b
    ld e, c
    add [hl]

Jump_00a_773e:
    sub a
    add [hl]
    ld l, c
    ld d, a
    ld l, c
    sub a
    sub e
    ld a, d
    and a
    ld d, a
    ld a, b
    or l
    db $76
    sbc b
    adc c
    ld h, l
    sub [hl]
    cp c
    add [hl]
    ld h, a
    sbc d
    ld [hl], l
    add a
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    add l
    sbc b
    sbc b
    ld h, a
    ld [hl], a
    sub [hl]
    sub a
    ld h, h
    adc e
    ld l, b
    sub l
    sub [hl]
    db $76
    adc h
    ld h, l
    ld l, b
    adc b
    and l
    ld a, b
    ld l, c
    ld a, b
    db $76
    or a
    db $76
    ld a, b
    sbc c
    ld [hl], l
    add [hl]
    adc c
    sbc b
    ld b, a
    ld a, b
    or l
    ld [hl], a
    sbc b
    ld l, c
    ld [hl], a
    sub a
    sub [hl]
    ld [hl], a
    ld l, d
    adc b
    ld l, b
    ld d, [hl]
    cp d
    ld [hl], a
    ld e, b
    ld a, c
    add [hl]
    sbc c
    ld h, a
    adc b
    ld e, d
    ld [hl], a
    adc b
    add [hl]
    adc e
    ld l, b
    add l
    ld a, d
    db $76
    adc c
    ld h, a
    ld a, b
    ld a, d
    add l
    sbc c
    ld c, d
    adc b
    ld l, b
    adc b
    ld a, c
    add hl, sp
    xor b
    ld l, b
    ld h, [hl]
    adc c
    adc c
    ld d, a
    ld c, h
    or l
    ld d, a
    adc d
    sub l
    ld e, d
    sbc b
    ld [hl], a
    ld [hl], l
    sbc d
    ld a, c
    ld h, l
    adc c
    sub a
    add a
    ld e, c
    sbc b
    ld d, a
    adc c
    add [hl]
    ld d, a
    sbc e
    ld d, a
    sbc b
    ld e, b
    ld l, b
    sbc c
    ld d, [hl]
    ld a, c
    ld a, c
    add [hl]
    adc b
    ld a, b
    adc b
    db $76
    sub a
    ld a, b
    ld [hl], a
    ld a, d
    ld [hl], a
    ld l, b
    adc d
    sbc b
    ld [$a8aa], sp
    ld b, [hl]
    ld l, b
    adc e
    add [hl]
    ld d, [hl]
    ld a, c
    or l
    ld a, b
    ld [hl], a
    add a
    ld l, b
    and [hl]
    ld a, b
    ld h, [hl]
    sbc c
    ld a, b
    ld a, b
    ld e, b
    adc d
    ld e, d
    ld e, b
    adc e
    ld b, [hl]
    ld l, h
    add a
    ld h, a
    ld a, c
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    add a
    adc b
    adc c
    ld l, b
    ld [hl], l
    sbc d
    ld [hl], l
    ld a, b
    adc b
    ld [hl], a
    ld l, d
    add a
    ld l, d
    adc c
    jr c, jr_00a_787e

    sbc b
    jr c, jr_00a_7873

    adc c
    ld d, a
    ld e, c
    adc c
    add a
    ld [hl], a
    ld l, c
    and l
    db $76
    ld a, c
    sub l
    ld h, a
    ret c

    ld h, l
    ld l, b
    xor c
    ld d, a
    ld a, c
    ld h, [hl]
    sbc c
    ld l, c
    ld l, b
    ld a, c
    ld [hl], a
    ld l, e
    ld h, l
    ld a, c
    ld l, c
    sub a
    ld [hl], a
    add [hl]
    ld a, c
    sub a
    add a
    ld [hl], a
    adc d
    ld [hl], l
    adc d
    add a
    ld [hl], a
    sbc c
    and [hl]
    dec sp
    ld [hl], a
    adc d
    ld h, [hl]
    ld a, c
    ld l, d
    sub a
    ld e, c
    add a
    sbc b
    ld h, a
    adc c
    ld h, a
    sub a
    ld h, [hl]
    ld e, c
    sub a
    ld h, a
    ld a, c
    and [hl]
    ld e, c
    xor b
    ld e, c
    ld h, l
    xor d
    ld l, b
    ld h, [hl]
    ld e, h
    sub l
    ld [hl], a
    sbc b
    sbc b
    ld e, c
    ld l, c
    sub a
    ld h, [hl]
    sbc c
    adc b
    ld h, l
    sbc b
    add [hl]
    sbc b
    ld a, b
    ld a, b
    adc c
    add l
    sub a
    ld l, b
    adc b
    adc b
    add [hl]
    adc b
    ld [hl], a
    ld a, d
    add a
    ld h, [hl]
    adc b
    and a
    ld c, b
    adc c
    add a
    ld [hl], l
    ld l, b
    add a
    add [hl]

jr_00a_7873:
    ld [hl], a
    sub a
    sub l
    ld a, b
    sbc b
    ld h, [hl]
    ld l, c
    and [hl]
    ld [hl], a
    add [hl]
    adc c

jr_00a_787e:
    ld h, a
    and [hl]
    sbc b
    sub a
    ld a, d
    ld d, [hl]
    sbc b
    ld [hl], l
    cp b
    ld a, b
    ld h, [hl]
    sbc b
    add [hl]
    and a
    add [hl]
    ld a, d
    sub [hl]
    ld [hl], a
    add [hl]
    sbc c
    add hl, sp
    xor c
    ld c, c
    add l
    adc c
    ld [hl], l

Call_00a_7898:
    sbc b
    add l
    and [hl]
    sub a
    ld l, b
    ld l, h
    ld l, b
    ld e, b
    sub a
    and a
    add [hl]
    and l
    add [hl]
    call nz, $8877
    ld a, c
    ld d, a
    cp c
    ld h, h
    sub a
    sbc b
    add a
    ld h, a
    xor b
    ld a, c
    ld l, c
    ld c, d
    sub [hl]
    ld h, a
    sub [hl]
    xor b
    ld d, [hl]
    adc d
    db $76
    add l
    cp b
    ld d, a
    and [hl]
    ld [hl], a
    add l
    sbc c
    db $76
    ld l, d
    ld e, b
    xor b
    ld h, a
    add a
    ld e, c
    xor b
    ld h, h
    sbc c
    ld h, a
    adc d
    ld l, d
    ld h, h
    cp d
    or e
    sbc c
    add [hl]
    add l
    sub [hl]
    or a
    sub l
    ld l, c
    ld a, d
    ld l, c
    add h
    adc b
    and a
    ld h, a
    ld e, b
    ld l, b
    ld d, a
    adc d
    ld h, a
    ld l, b
    ld l, c
    and [hl]
    ld [hl], a
    sub a
    ld a, b
    and [hl]
    db $76
    and l
    sbc c
    db $76
    ld a, c
    sub [hl]
    sub a
    add a
    ld a, c
    ld l, b
    ld h, a
    sub a
    sbc b
    ld h, [hl]
    adc e
    ld h, [hl]
    ld l, b
    sub a
    ld [hl], a
    ld l, b
    add a
    and [hl]
    and h
    adc b
    sub a
    ld l, b
    sub [hl]
    add a
    sub l
    ld a, c
    adc b
    ld [hl], a
    db $76
    xor b
    ld a, c
    ld a, b
    ld c, b
    ld a, c
    ld h, l
    sbc b
    sbc b
    ld h, a
    ld a, b
    sbc b
    add h
    adc c
    adc b
    add [hl]
    ld [hl], a
    and [hl]
    add l
    add [hl]
    adc c
    db $76
    ld l, b
    xor b
    ld e, c
    ld e, c
    ld a, d
    ld [hl], h
    sbc c
    add [hl]
    sbc c
    ld e, c
    sub [hl]
    ld l, b
    sub a
    ld l, b
    add a
    ld h, a
    sub l
    sub l
    cp b
    ld l, b
    ld [hl], a
    adc c
    add l
    ld a, b
    adc b
    db $76
    ld l, b
    cp b
    ld [hl], l
    ld a, c
    adc c
    adc b
    ld h, l
    xor b
    and l
    ld l, b
    sub a
    add l
    ld [hl], a
    xor b
    ld l, b
    ld [hl], a
    adc c
    and h
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld l, b
    adc c
    ld d, a
    and a
    add [hl]
    add a
    ld a, c
    ld h, a
    sbc b
    add [hl]
    sub l
    adc c
    add [hl]
    ld a, b
    add [hl]
    sub a
    ld l, d
    add [hl]
    ld l, d
    sub h
    adc b
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc c
    ld h, a
    ld a, b
    ld h, [hl]
    add $97
    add l
    ld a, e
    add a
    db $76
    add a
    and [hl]
    ld e, c
    adc b
    sub l
    add h
    cp c
    ld l, b
    ld l, b
    ld a, b
    add a
    add a
    add [hl]
    sbc c
    ld d, [hl]

Call_00a_7987:
    adc d
    add l
    ld l, c
    adc c
    add a
    ld d, a
    and [hl]
    ld [hl], a
    and a
    ld e, b
    db $76
    sbc c
    and [hl]
    add hl, sp
    ld a, b
    sbc b
    sub h
    and l
    sbc b
    adc b
    ld e, l
    ld c, b
    sub h
    ld a, c
    or l
    ld a, d
    db $76
    or a
    ld h, h
    cp b
    ld l, c
    ld c, d
    ld a, b
    add [hl]
    sub h
    sbc c
    ld a, c
    add [hl]
    ld e, b
    add $77
    db $76
    sbc e
    ld h, a
    sub h
    add a
    xor c
    ld a, b
    ld c, b
    adc c
    db $76
    sub l
    adc d
    add [hl]
    ld e, c
    sub a
    sub a
    ld h, [hl]
    adc c
    ld a, b
    add a
    ld e, b
    xor b
    add l
    add a
    ld a, b
    sub a
    ld a, c
    db $76
    ld l, b
    add [hl]
    adc c
    ld a, c
    add [hl]
    sbc b
    sub [hl]
    add a
    ld l, b
    xor c
    ld c, b
    ld a, b
    and a
    add l
    adc d
    ld l, b
    add a
    ld h, [hl]
    xor c
    ld h, [hl]
    adc c
    ld h, a
    sub [hl]
    ld h, a
    cp b
    ld c, c
    ld e, b
    adc d
    ld h, [hl]
    sbc c
    ld [hl], a
    ld a, c
    ld e, b
    add a
    and [hl]
    add [hl]
    adc c
    ld l, c
    ld [hl], l
    adc c
    add h
    cp b
    ld h, [hl]
    ld a, d
    ld [hl], a
    and l
    add [hl]
    sbc d
    ld l, b
    ld c, e
    ld l, c
    add l
    ld [hl], a
    xor b
    ld e, d
    ld h, [hl]
    ld a, e
    add l
    sub a
    ld [hl], a
    sbc c
    ld e, c
    add a
    sub l
    ld a, b
    xor b
    ld l, b
    ld [hl], a
    adc c
    db $76
    and l
    ld l, c
    adc c
    ld e, c
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    ld e, b
    sub a
    ld h, a
    or l
    ld a, b
    add a
    ld a, d
    ld h, [hl]
    sub a
    add [hl]
    sub a
    ld l, d
    ld l, c
    ld [hl], a
    add [hl]
    sub [hl]
    adc d
    ld e, b
    ld l, e
    ld h, l
    and l
    sub a
    sbc c
    dec hl
    ld a, b
    ld l, b
    and l
    add a
    ld a, c
    ld a, b
    ld e, b
    sub [hl]
    or l
    ld a, c
    ld a, b
    ld e, e
    ld h, l
    ld l, c
    add [hl]
    sub [hl]
    ld c, e
    adc c
    ld h, [hl]
    ld h, a
    sbc b
    ld a, b
    ld l, b
    adc c
    ld d, [hl]
    and [hl]
    adc b
    ld [hl], a
    ld l, c
    ld h, a
    sbc b
    db $76
    sub a
    sub a
    ld e, b
    sbc b
    ld h, a
    sub [hl]
    ld a, d
    ld h, [hl]
    ld a, d
    ld h, a
    adc c
    add a
    sub [hl]
    sbc d
    ld l, c
    ld e, b
    adc b
    add [hl]
    adc b
    ld l, b
    adc c
    ld h, a
    add [hl]
    adc c
    add [hl]
    ld e, e
    ld l, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc c
    ld d, a
    and l
    adc b
    sbc b
    ld l, b
    ld h, l
    cp c
    ld h, l
    xor b
    ld e, b
    ld a, c
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    sub a
    ld h, a
    add a
    sbc c
    db $76
    ld a, d
    ld h, [hl]
    and a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    sub [hl]
    ld l, e
    ld h, a
    add a
    sub [hl]
    and a
    ld l, b
    adc b
    ld l, c
    add a
    add l
    sub a
    sub a
    ld [hl], a
    adc b
    sub h
    ld a, c
    adc b
    ld h, a
    ld l, c
    sbc c
    ld l, b
    add h
    adc c
    ld l, d
    add l
    ld l, b
    sbc b
    ld l, c
    sub l
    ld l, c
    ld b, a
    cp b
    add [hl]
    ld l, b
    ld l, b
    and l
    adc b
    add a
    ld [hl], a
    and a
    ld l, b
    add a
    add a
    adc b
    ld a, d
    add [hl]
    adc c
    ld e, b
    adc b
    adc b
    ld h, [hl]
    adc c
    adc b
    ld h, [hl]
    adc d
    sub l
    ld l, c
    ld h, [hl]
    sbc b
    db $76
    sub a
    db $76
    and a
    ld c, d
    add a
    add [hl]
    sbc b
    ld a, c
    add [hl]
    ld a, c
    ld l, d
    ld e, b
    sub l
    adc d
    ld e, b
    ld a, b
    add a
    ld a, c
    add h
    and a
    ld a, d
    ld h, [hl]
    sub [hl]
    and a
    db $76
    ld a, b
    add [hl]
    adc c
    ld d, [hl]
    and [hl]
    adc c
    ld l, b
    ld l, d
    db $76
    ld l, c
    sub [hl]
    adc b
    ld l, c
    ld e, c
    and l
    add a
    add [hl]
    adc c
    ld a, b
    db $76
    ld [hl], a
    or l
    adc b
    adc b
    adc b
    adc c
    ld h, a
    sub a
    add [hl]
    ld a, c
    ld a, c
    db $76
    ld l, b
    sbc c
    ld l, b
    ld l, c
    ld a, c
    ld [hl], l
    sub a
    and [hl]
    add a
    ld l, b
    sbc c
    add [hl]
    ld h, a
    sub a
    adc b
    ld l, c
    ld a, b
    ld h, [hl]
    and a
    adc b
    adc b
    ld l, d
    ld e, c
    db $76
    add a
    sub [hl]
    ld a, c
    ld l, c
    ld a, b
    ld h, a
    and [hl]
    ld a, b
    add a
    ld a, c
    db $76
    add l
    adc b
    and a
    ld l, b
    ld l, c
    dec [hl]
    adc b
    sub a
    ld a, c
    ld d, a
    ld a, c
    ld [hl], a
    sub h
    adc c
    ld a, d
    ld e, b
    ld l, c
    add [hl]
    add a
    sub a
    sbc b
    ld a, d
    sub [hl]
    ld [hl], a
    and [hl]
    ld a, b
    ld a, b
    adc b
    ld d, a
    and l
    sub a
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    db $76
    sub [hl]
    cp d
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    sub a
    sub [hl]
    ld e, d
    db $76
    sub [hl]
    sub a
    add a
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    ld h, h
    adc c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, d
    ld l, b
    add l
    add a
    sub a
    add [hl]
    ld l, c
    adc b
    add a
    or [hl]
    add a
    ld l, b
    adc b
    add a
    add a
    add [hl]
    sub a
    adc b
    ld c, e
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc c
    ld l, b
    add l
    sbc b
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    db $76
    and a
    ld e, c
    sbc b
    add [hl]
    ld a, b
    adc b
    db $76
    sbc b
    ld l, c
    add [hl]
    sub a
    adc c
    ld [hl], a
    ld l, c
    adc b
    ld a, b
    add [hl]
    xor c
    ld l, b
    db $76
    ld a, c
    adc b
    db $76
    adc b
    adc b
    ld e, d
    add [hl]
    sub [hl]
    ld [hl], a
    xor b
    ld [hl], a
    sub a
    ld e, c
    add l
    and a
    ld h, a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld l, c
    ld h, a
    add a
    add a
    sbc b
    add [hl]
    adc b
    adc c
    ld [hl], l
    sub a
    ld a, c
    ld [hl], a
    ld h, a
    sub [hl]
    adc b
    ld [hl], a
    and a
    ld e, d
    add [hl]
    adc b
    adc b
    ld l, c
    ld h, [hl]
    xor b
    ld l, b
    ld [hl], a
    sub a
    ld a, c
    ld d, a
    adc b
    and l
    ld a, b
    ld [hl], a
    or a
    ld e, b
    add [hl]
    and [hl]
    ld a, b
    adc c
    add [hl]
    add [hl]
    adc c
    ld [hl], a
    sub a
    adc c
    adc b
    add [hl]
    sub a
    ld l, d
    ld d, [hl]
    xor b
    ld h, a
    add [hl]
    sub [hl]
    adc b
    ld l, d
    ld [hl], l
    sub l
    sbc c
    db $76
    add [hl]
    ld a, c
    add a
    add l
    sbc b
    ld a, d
    ld e, b
    adc b
    add a
    db $76
    sbc c
    adc b
    ld e, b
    ld l, c
    and [hl]
    ld l, c
    ld d, [hl]
    adc c
    ld h, a
    adc b
    db $76
    and l
    ld a, d
    add a
    ld a, b
    ld l, b
    ld a, b
    add a
    sub a
    ld a, c
    ld d, a
    xor b
    sbc b
    adc b
    sub a
    ld e, b
    ld l, e
    db $76
    add [hl]
    sbc b
    db $76
    sub a
    ld a, d
    db $76
    add [hl]
    sub [hl]
    sbc c
    ld d, a
    ld l, b
    ld a, b
    add [hl]
    sub a
    adc b
    ld c, c
    ld a, b
    sub h
    ld a, c
    ld [hl], a
    ld l, c
    ld a, c
    ld h, a
    ld [hl], a
    or l
    ld l, c
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    sub a
    ld a, c
    ld e, c
    ld l, b
    sub l
    adc c
    adc b
    ld a, b
    ld c, b
    adc d
    db $76
    sub [hl]
    sbc d
    ld c, b
    adc c
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld a, d
    ld d, a
    and [hl]
    ld a, b
    db $76
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    ld h, l
    adc d
    ld e, b
    ld h, a
    adc e
    ld h, [hl]
    add a
    add [hl]
    ld a, d
    ld e, d
    sub [hl]
    ld a, c
    ld h, a
    adc b
    add a
    ld l, d
    ld a, b
    sub l
    sub a
    ld [hl], a
    sub a
    ld e, d
    ld [hl], a
    ld [hl], a
    sub [hl]
    sbc d
    ld e, b
    adc b
    ld a, b
    add a
    sub [hl]
    ld a, b
    adc d
    ld l, c
    add l
    sbc b
    ld [hl], a
    sbc b
    ld e, c
    ld a, b
    ld a, b
    sub l
    sbc b
    ld l, b
    ld [hl], a
    sbc b
    add l
    sub a
    add a
    ld l, c
    ld l, c
    sub l
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    db $76
    sub [hl]
    adc c
    ld l, c
    db $76
    add a
    sub a
    add a
    adc b
    adc b
    ld e, c
    and [hl]
    db $76
    ld a, c
    adc b
    ld h, a
    sbc b
    ld [hl], a
    add [hl]
    adc d
    ld l, d
    ld h, a
    ld l, d
    add [hl]
    ld a, b
    ld [hl], a
    adc c
    ld h, a
    add [hl]
    adc c
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sbc b
    ld e, b
    add a
    adc c
    ld h, a
    adc b
    ld l, b
    sub a
    ld l, b
    add a
    adc c
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    ld l, d
    db $76
    adc b
    ld a, b
    db $76
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub a
    ld a, d
    add a
    ld l, b
    adc b
    add [hl]
    ld a, b
    adc b
    ld l, c
    db $76
    adc c
    sbc b
    ld [hl], a
    ld a, c
    adc b
    ld [hl], a
    ld [hl], a
    adc c
    ld l, b
    ld a, b
    adc b
    add l
    and a
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    sbc b
    ld h, [hl]
    sbc c
    ld a, b
    db $76
    adc b
    ld a, b
    adc b
    ld e, c
    ld [hl], a
    adc b
    add a
    adc c
    ld l, b
    ld [hl], a
    ld a, c
    add l
    add a
    ld a, c
    ld a, b
    ld a, b
    add l
    sub a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld [hl], a
    sbc b
    ld a, b
    ld e, c
    add a
    ld [hl], a
    ld [hl], a
    adc c
    ld l, b
    ld a, b
    ld l, b
    sub a
    add a
    ld a, b
    adc c
    ld h, [hl]
    sbc b
    add [hl]
    ld [hl], a
    sbc c
    ld l, b
    ld a, b
    add [hl]
    sub a
    sub a
    ld a, b
    add a
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld h, a
    add a
    ld a, c
    sub l
    sbc b
    and a
    ld l, b
    adc c
    sub [hl]
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    add a
    ld [hl], l
    ld l, c
    ld a, c
    ld e, c
    ld [hl], a
    sub [hl]
    add a
    adc b
    ld e, c
    ld [hl], a
    add a
    add [hl]
    xor b
    ld h, a
    ld a, c
    ld a, c
    ld [hl], l
    and a
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    db $76
    adc c
    ld l, d
    ld e, b
    sub a
    add l
    adc c
    ld a, c
    ld [hl], a
    ld a, d
    ld [hl], l
    and [hl]
    add [hl]
    adc b
    ld l, c
    add l
    sub a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    and l
    adc b
    ld l, b
    ld h, a
    ld l, c
    adc b
    add l
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    sub a
    db $76
    sub a
    adc c
    ld h, a
    ld a, b
    sub a
    sbc b
    add a
    sbc b
    ld l, d
    ld h, a
    adc b
    add [hl]
    ld a, c
    ld a, b
    add a
    ld a, c
    ld h, [hl]
    sbc b
    ld a, b
    ld a, c
    ld h, a
    sub [hl]
    adc b
    ld [hl], a
    sub a
    adc b
    ld e, c
    add a
    sub l
    add a
    adc d
    db $76
    ld a, c
    ld [hl], a
    sub l
    add a
    adc b
    ld e, c
    ld h, [hl]
    sbc c
    ld h, a
    add a
    ld a, d
    ld a, b
    ld h, [hl]
    add a
    sub a
    ld l, c
    add [hl]
    ld a, c
    ld h, a
    sub a
    add [hl]
    ld a, c
    adc b
    add a
    add a
    ld [hl], a
    sub a
    adc c
    ld h, a
    add a
    add [hl]
    sbc b
    ld l, b
    add [hl]
    ld a, c
    ld h, a
    sub a
    add a
    adc c
    ld l, b
    sub l
    ld a, c
    ld a, b
    add [hl]
    ld a, b
    adc b
    ld l, b
    and l
    adc b
    ld l, c
    add [hl]
    ld a, c
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add l
    sbc c
    ld l, c
    add [hl]
    ld a, c
    adc b
    ld e, b
    add a
    sbc b
    ld [hl], a
    sub [hl]
    sub a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sub a
    ld d, a
    and a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc c
    ld h, a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld l, c
    add [hl]
    add a
    ld [hl], a
    ld a, b
    sub [hl]
    ld a, c
    ld l, d
    ld [hl], l
    adc c
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld e, c
    add [hl]
    sbc b
    ld h, a
    add a
    ld [hl], a
    adc b
    ld h, a
    add a
    and a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld a, c
    ld a, c
    ld h, a
    ld a, b
    ld [hl], a
    and a
    sbc b
    add a
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    ld a, c
    add l
    add [hl]
    sub a
    add a
    ld a, b
    ld a, c
    ld e, c
    sub l
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    adc b
    ld l, c
    ld h, a
    sbc b
    ld [hl], a
    sub [hl]
    add a
    sub a
    ld l, b
    ld h, a
    sub a
    ld l, b
    adc b
    ld l, b
    ld a, b
    adc b
    add [hl]
    add [hl]
    ld a, c
    add a
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    adc b
    ld a, c
    add [hl]
    sub [hl]
    sub a
    ld l, b
    adc c
    ld a, b
    add a
    add [hl]
    sub a
    adc c
    ld l, b
    ld l, b
    add a
    sbc b
    ld [hl], a
    adc c
    ld e, c
    add a
    sub a
    add [hl]
    adc b
    ld l, d
    ld a, b
    ld d, a
    add [hl]
    and a
    db $76
    adc c
    ld l, b
    sub a
    ld a, b
    sub a
    add a
    ld l, c
    ld a, b
    add [hl]
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    ld a, c
    ld h, a
    sub a
    ld l, b
    sbc b
    ld l, b
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld a, d
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    ld a, c
    ld a, b
    ld h, a
    add a
    sub a
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add [hl]
    adc c
    adc b
    ld l, b
    ld [hl], a
    sbc b
    add a
    ld [hl], a
    adc c
    ld [hl], a
    add a
    add a
    sub a
    ld l, b
    adc c
    ld e, b
    add a
    add a
    add [hl]
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    sbc b
    ld h, [hl]
    adc b
    adc b
    ld a, b
    ld a, b
    db $76
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld h, a
    ld a, c
    add a
    add a
    ld l, c
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld h, a
    sbc c
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    ld a, b
    adc c
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    db $76
    ld a, d
    ld a, b
    add a
    ld a, b
    add a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    add [hl]
    ld a, c
    add a
    ld [hl], a
    adc b
    adc b
    ld h, a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld e, b
    adc b
    add [hl]
    adc b
    ld a, b
    sbc b
    ld l, b
    ld l, b
    sub a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, d
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld a, c
    ld a, b
    ld [hl], a
    ld a, c
    add a
    add a
    ld a, b
    ld a, b
    ld a, d
    add l
    adc b
    adc b
    add [hl]
    ld a, c
    adc b
    ld e, b
    add a
    adc b
    ld l, b
    add a
    add a
    add a
    add [hl]
    sub a
    adc b
    ld e, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld l, c
    add a
    add a
    ld [hl], a
    add a
    sub l
    sub [hl]
    ld l, c
    add a
    ld a, b
    ld a, b
    db $76
    add a
    adc b
    ld l, c
    ld [hl], a
    adc b
    adc b
    ld h, l
    adc d
    ld l, b
    ld a, b
    add [hl]
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    xor b
    adc b
    add a
    ld a, c
    ld a, c
    ld e, b
    sub l
    sub a
    ld l, c
    adc c
    db $76
    ld l, c
    add [hl]
    sub a
    add a
    ld a, c
    ld h, a
    ld h, [hl]
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, c
    ld l, b
    sub a
    ld [hl], a
    add a
    adc b
    adc c
    ld l, c
    ld h, a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    ld [hl], a
    sub a
    sub a
    sbc b
    ld a, c
    ld a, b
    ld h, a
    add a
    sub a
    adc b
    ld l, d
    ld e, b
    sub [hl]
    ld a, c
    sub a
    ld l, b
    ld a, b
    adc c
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld l, c
    ld [hl], a
    add a
    adc b
    adc b
    ld e, b
    sub a
    add a
    add a
    adc b
    ld l, b
    adc b
    ld d, a
    sub a
    adc b
    ld l, b
    adc c
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld l, d
    ld h, [hl]
    adc b
    add a
    sub a
    add a
    adc b
    ld a, b
    add a
    sub a
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    sub [hl]
    ld l, c
    ld [hl], a
    sub [hl]
    ld a, b
    adc b
    add a
    adc b
    adc c
    ld h, a
    add a
    ld a, c
    add [hl]
    add a
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    ld [hl], a
    ld h, a
    sbc b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
