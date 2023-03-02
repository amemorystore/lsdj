; disasSembly of "lsdj.gb"
SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    ld h, b
    ld b, b
    and b
    ld b, c
    sub b
    ld b, e
    jr nz, jr_012_404d

    ld d, b
    ld c, b
    ld b, b
    ld c, a
    ld d, b
    ld e, b
    ld b, b
    ld h, e
    ret nc

    ld l, a
    db $10
    ld a, c
    ldh a, [$79]
    ld [hl], b
    ld a, e
    ret nc

    ld a, l
    nop
    add b
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
    ld d, h
    dec l
    ld c, l
    ld d, h
    dec l
    ld c, h
    ld d, h
    dec l
    ld b, e
    ld b, e
    ld e, c
    ld d, d
    ld b, e
    ld e, c
    ld d, d
    ld c, c
    ld c, l
    ld d, h
    ld b, c
    ld c, l
    ld d, e
    ld c, b
    ld b, c
    ld b, e
    ld c, h
    ld d, b
    nop
    dec l
    dec l
    nop

jr_012_404d:
    dec l
    dec l
    nop
    nop
    nop
    ld b, h
    ld c, l
    ld e, b
    jr nz, jr_012_4077

    jr nz, jr_012_4059

jr_012_4059:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4407
    ld b, h
    ld [hl-], a
    ld hl, $2122
    ld de, $1121
    ld hl, $3322
    inc h
    ld [hl-], a
    ld h, [hl]
    ldh a, [rOCPD]
    db $ec
    cp h
    call z, $dfce

jr_012_4077:
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ed
    db $dd
    db $db
    res 7, d
    xor d
    sbc b
    add a
    ld h, a
    ld d, [hl]
    inc b
    inc [hl]
    ld b, e
    ld [hl-], a
    ld de, $0010
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld bc, $0001
    ld [de], a
    ld [de], a
    ld [hl+], a
    inc sp
    ld b, h
    ld b, e
    ld d, h
    ld d, l
    ld d, [hl]
    db $76
    rst $20
    add a
    adc b
    sbc d
    sbc d
    xor d
    cp e
    xor h
    cp h
    call z, $ddcd
    db $dd
    db $ed
    xor $ef
    xor $ef
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor $fe
    cp $ef
    ld a, [hl]
    xor $de
    db $dd
    db $dd
    call z, $cbdb
    res 7, e
    xor e
    xor d
    sbc d
    sbc c
    sbc b
    sbc b
    jr z, jr_012_4159

    add [hl]
    ld [hl], a
    ld h, l
    db $76
    ld d, [hl]
    ld d, l
    ld b, h
    ld b, h
    dec [hl]
    ld b, e
    ld b, h
    inc sp
    inc sp
    ld b, e
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc hl
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc h
    inc h
    inc [hl]
    ld b, h
    inc [hl]
    ld [hl], e
    ld d, e
    ld d, h
    ld b, l
    ld b, h
    ld d, h
    ld h, l
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld l, b
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
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    cp c
    adc c
    sbc c
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    xor c

jr_012_4159:
    xor d
    xor c
    xor d
    xor e
    sbc e
    sbc e
    xor d
    sbc d
    sbc d
    xor d
    cp d
    cp e
    xor e
    xor e
    xor d
    xor d
    cp d
    xor d
    xor c
    xor d
    sbc d
    sbc d
    sbc d
    ld a, d
    sbc d
    sbc c
    sbc c
    xor c
    adc b
    xor b
    sbc b
    sbc c
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    or [hl]
    ld b, e
    inc sp
    ld b, e
    ld d, h
    ld b, [hl]
    ld a, e
    ld [hl], l
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    call c, $976a
    add l
    jr nz, jr_012_41b5

jr_012_41b5:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld bc, $7636
    ld h, l
    call nc, Call_012_6676
    adc c
    xor e
    call c, $ffdd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    inc e
    call c, $bacc
    db $76
    ld b, e
    ld b, c
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $34d2
    ld b, h
    db $76
    adc c
    sbc b
    adc c
    sbc e
    cp e
    call $eeed
    xor $ef
    db $dd
    sbc $1e
    db $dd
    adc $cc
    call z, $b8ba
    sbc b
    add a
    ld h, h
    ld [de], a
    ld de, $1021
    nop
    nop
    pop bc
    ld bc, $1211
    dec d
    inc [hl]
    ld h, h
    ld d, a
    adc d
    xor h
    set 3, h
    call c, $cbdb
    cp l
    ld e, e
    cp e
    call c, $c9dc
    cp c
    sbc c
    xor e
    sbc c
    sbc d
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], h
    or e
    inc [hl]
    inc sp
    inc hl
    ld hl, $2302
    ld hl, $3321
    inc [hl]
    ld b, l
    ld h, a
    ld a, b
    sbc d
    sbc d
    ld a, h
    cp [hl]
    db $dd
    db $dd
    db $ed
    db $ec
    sbc $dd
    call z, $bacc
    xor b
    and a
    adc b
    ld [hl], a
    ld d, a
    add h
    ld d, [hl]
    inc [hl]
    ld h, h
    ld d, h
    ld d, h
    inc [hl]
    ld b, e
    ld b, h
    ld b, l
    ld d, h
    ld b, [hl]
    ld b, l
    ld b, l
    ld d, a
    add l
    add a
    ld a, b
    ld a, b
    sbc c
    xor d
    cp d
    cp l
    cp h
    cp h
    cp h
    res 5, d
    xor c
    cp d
    xor c
    sbc d
    ld e, b
    ld [hl], a
    db $76
    add a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    add l
    ld h, a
    db $76
    ld d, l
    or l
    ld h, h
    ld b, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc d
    sbc d
    sbc c
    xor e
    xor d
    call z, Call_012_7dbc
    xor d
    xor e
    xor c
    xor c
    ld a, c
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], l
    ld h, l
    ld d, h
    ld d, l
    ld l, b
    ld [hl], l
    ld b, h
    ld d, l
    ld l, b
    ld [hl], a
    ld h, a
    ld h, l
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    ld l, b
    adc c
    sbc c
    adc c
    ld a, c
    xor b
    ld a, d
    xor c
    sbc c
    sbc d
    adc b
    adc b
    sbc c
    adc d
    sub a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld h, [hl]
    ld h, a
    db $76
    ld d, [hl]
    ld d, a
    ld [hl], l
    db $76
    ld d, [hl]
    ld l, b
    ld a, b
    db $76
    ld h, a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sbc b
    adc b
    ld a, b
    adc c
    sbc c
    adc c
    ld a, d
    sbc c
    xor c
    xor b
    sbc b
    adc c
    ld [hl], a
    ld a, c
    sub a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld h, [hl]
    db $76
    add l
    ld [hl], a
    ld l, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld h, a
    ld h, a
    adc b
    sbc b
    xor b
    sbc c
    add a
    sbc b
    xor b
    adc b
    sbc c
    adc b
    ld a, b
    sbc b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    ld l, b
    ld a, b
    sbc c
    adc b
    sbc b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    db $76
    add a
    ld [hl], a
    add [hl]
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, [hl]
    add a
    adc b
    ld a, c
    ld a, b
    add a
    adc b
    add a
    adc c
    sbc c
    sub a
    sbc b
    adc c
    adc c
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld h, a
    ld [hl], a
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    adc b
    ld a, b
    ld l, b
    adc b
    adc b
    ld a, b
    sbc b
    adc c
    ld a, b
    adc b
    add a
    adc c
    ld a, b
    add [hl]
    add a
    adc c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    db $76
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    sub a
    add a
    adc b
    adc b
    adc b
    adc c
    add a
    adc b
    ld [hl], a
    adc b
    sbc b
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    add a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, c
    ld l, e
    add a
    ld a, h
    add hl, sp
    call nz, Call_012_6b88
    ld l, c
    db $d3
    add [hl]
    ld b, d
    ld d, [hl]
    ld b, [hl]
    ld b, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    sbc d
    ld a, b
    sbc b
    ld l, d
    sbc h
    cp l
    adc h
    ld l, l
    ld [$89b9], a
    ld l, c
    ld [hl], a
    ld d, h
    ld d, h
    ld h, [hl]
    ld d, [hl]
    ld d, l
    add d
    ld [hl], e
    ld l, e
    ld l, d
    ld c, [hl]
    cp h
    ld hl, sp-$6c
    ld h, h
    ld a, c
    ld d, a
    ld [hl], e
    ld a, b
    ld b, a
    sub l
    sbc e
    ld a, b
    db $76
    add $b7
    ld l, b
    ld e, d
    ld e, b
    ld [$854a], sp
    sbc c
    adc c
    ld a, d
    ld l, b
    db $76
    cp b
    or l
    or [hl]
    ld a, h
    ld a, b
    ld c, b
    add a
    and [hl]
    add a
    adc b
    ld d, l
    add a
    ld [hl], a
    adc b
    adc c
    ld l, d
    sbc c
    and a
    add a
    sbc b
    ld a, b
    ld h, [hl]
    db $76
    ld e, b
    add [hl]
    add [hl]
    and [hl]
    adc d
    adc d
    ld c, d
    db $76
    and l
    ld l, c
    ld c, c
    ld l, b
    ld h, [hl]
    sub l
    sub a
    ld a, d
    ld a, c
    adc b
    sub [hl]
    sub l
    ld l, b
    ld h, a
    ld l, d
    ld [hl], a
    sub a
    sub a
    ld a, e
    ld a, d
    ld l, b
    db $76
    db $76
    add [hl]
    ld h, [hl]
    sbc c
    add a
    adc b
    sub a
    add a
    adc b
    sub a
    add [hl]
    add a
    add a
    ld [hl], a
    ld h, a
    sub [hl]
    ld a, b
    ld a, b
    ld a, c
    ld e, b
    adc b
    sub [hl]
    adc e
    ld a, b
    ld l, b
    db $76
    and h
    ld [hl], a
    ld l, b
    ld l, c
    ld a, c
    ld a, c
    add a
    sbc b
    ld [hl], a
    adc b
    ld a, b
    db $76
    add a
    ld [hl], a
    ld h, a
    and a
    ld l, c
    sub a
    sbc b
    adc b
    add a
    add [hl]
    ld l, c
    ld l, b
    ld h, a
    ld a, c
    sub a
    adc b
    add a
    sub a
    adc b
    ld h, a
    ld a, b

Jump_012_4443:
    ld l, d
    ld [hl], a
    adc b
    sub a
    sbc b
    sub a
    sub a
    ld l, c
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld a, b
    ld l, b
    sbc b
    add [hl]
    xor b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    and [hl]
    sbc b
    sub a
    ld a, c
    ld e, c
    ld l, b
    adc b
    ld [hl], a
    sbc b
    ld l, b
    adc b
    adc b
    sub [hl]
    adc b
    ld l, b
    ld l, b
    ld l, c
    ld [hl], a
    add a
    sub a
    adc c
    ld a, c
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    add [hl]
    add a
    ld a, b
    ld h, a
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld h, a
    add a
    ld l, b
    add [hl]
    adc b
    adc b
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    sub a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    ld [hl], a
    add [hl]
    adc b
    add a
    add a
    add a
    adc b
    adc b
    ld a, b
    sub a
    ld l, b
    add [hl]
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
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
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b

jr_012_450b:
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    add [hl]
    adc b
    ld a, b
    add a
    ld l, c
    add [hl]
    adc d
    ld c, d
    sub l
    adc b
    ld l, d
    ld l, d
    and l
    db $76
    ld d, h
    ld h, a
    ld d, a
    ld d, a
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    sbc b
    add a
    sub a
    adc b
    sbc d
    xor d
    sbc e
    ld a, h
    cp c
    sbc c
    ld a, c
    ld a, b
    ld h, a
    ld b, [hl]
    ld h, h
    ld b, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, e
    ld [hl], e
    adc c
    sbc b
    ld l, a
    sbc l
    cp c
    add h
    ld [hl], h
    ld a, c
    ld e, b
    ld d, e
    ld l, b
    ld e, c
    ld h, [hl]
    xor e
    ld a, c
    ld e, b
    or l
    or [hl]
    ld h, a
    add a
    ld h, a
    ld a, [bc]
    ld c, h
    ld h, [hl]
    sbc b
    sbc b
    ld a, d
    sbc c
    ld e, b
    cp b
    and l
    or [hl]
    sbc e
    ld a, b
    ld c, b
    adc b
    and l
    sub [hl]
    sub a
    ld b, h
    sub [hl]
    add a
    ld a, c
    ld [hl], a
    ld e, e
    sbc e
    sbc b
    add a

Jump_012_4575:
    xor b
    db $76
    ld d, l
    add l
    ld l, b
    ld h, a
    ld [hl], a
    and l
    xor c
    sbc e
    sbc c
    db $76
    or e
    ld a, b
    ld c, c
    ld c, d
    jr c, jr_012_450b

    and l
    xor d
    ld a, c
    ld a, c
    sub [hl]
    sub e
    add [hl]
    add l
    ld c, d
    adc b
    add a
    or [hl]
    ld a, h
    ld l, e
    ld e, d
    ld d, [hl]
    add l
    add h
    ld b, [hl]
    sbc c
    sub [hl]
    adc c
    or a
    add a
    ld e, e
    ld l, b
    add a
    ld [hl], a
    add [hl]
    ld h, a
    ld h, a
    or h
    adc b
    add [hl]
    adc b
    ld e, c
    ld [hl], a
    and l

jr_012_45ad:
    sbc e
    ld a, b
    ld a, b
    and a
    and b
    sub h
    ld h, a
    ld l, d
    adc c
    ld l, c
    sbc b
    cp c
    ld l, c
    ld a, c
    ld a, c
    ld d, l
    add a
    ld h, [hl]
    add hl, sp
    ld h, [hl]
    ld a, h
    add a
    xor c
    and [hl]
    and [hl]
    sub e
    ld a, c
    ld e, b
    ld b, a
    ld a, c
    and [hl]
    cp b
    ld l, c
    and h
    ld d, [hl]
    or [hl]
    sub [hl]
    ld e, h
    ld c, b
    xor d
    ld [hl], a
    cp c
    push bc
    push bc
    ld l, d
    jr z, jr_012_4623

    jr c, jr_012_4644

    adc c
    xor c
    ld l, c
    add a
    db $e4
    sbc c
    ld d, a
    ld c, b
    add hl, sp
    add hl, sp
    ld l, d
    db $d3
    rst $00
    db $d3
    xor c
    ld c, c
    ld e, b
    ld d, a
    db $76
    xor c
    ld c, d
    add a
    adc e
    ld h, a
    and a
    ld c, c
    ld d, a
    ld a, [hl-]
    ld d, [hl]
    sbc c
    sub a
    xor d
    ld a, e
    and a
    cp b
    ld h, l
    add [hl]
    ld c, b
    sub e
    sub a
    ld [hl], a
    or a
    ld e, b
    xor b
    adc d
    add a
    add a
    ld e, b
    ld e, b
    add a
    ld h, d
    cp e
    ld d, a
    cp b
    ld l, c
    jr c, jr_012_45ad

    ld a, [hl-]
    ld h, h
    sbc e
    db $76
    adc h
    sbc b
    ld [hl], l
    and a
    sub a
    ld d, h
    add [hl]
    sbc b

jr_012_4623:
    ld b, [hl]
    push bc
    ld a, d
    ld h, a
    ld a, b
    ld a, e
    ld c, c
    ld a, d
    ld [hl], a
    and [hl]
    ld [hl], a
    or l
    ld [hl], a
    cp d
    ld e, e
    ld e, d
    ld b, a
    ld a, c
    add h
    rst $00
    sub [hl]
    or [hl]
    sbc c
    ld l, e
    ld d, [hl]
    ld e, b
    ld b, a
    adc d
    ld d, e
    add hl, sp
    adc b
    adc c
    ld l, c

jr_012_4644:
    ld a, c
    ld e, c
    adc c
    and h
    ld [hl], a
    ld [hl], l
    ld a, b
    add [hl]
    sbc b
    sub a
    ld l, b
    adc e
    ld a, c
    add l
    ld l, b
    call nz, Call_012_7a89
    ld l, d
    jr c, jr_012_46c0

    or [hl]
    ld b, a
    sub [hl]
    and a
    adc b
    sub l
    sub [hl]
    ld l, c
    ld a, h
    ld h, a
    add a
    ld h, [hl]
    sub l
    ld h, [hl]
    sub h
    sbc b
    add [hl]
    and a
    sbc d
    ld a, c
    ld a, d
    ld c, c
    ld l, b
    sub l
    and [hl]
    ld a, c
    sub l
    adc b
    ld a, d
    db $76
    adc d
    add d
    cp c
    ld c, c
    adc b
    ld l, c
    ld e, b
    sub l
    adc b
    sub l
    sbc b
    db $76
    ld a, b
    add l
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, e
    ld c, e
    ld a, b
    ld d, [hl]
    call nz, Call_012_7778
    add a
    and l
    and l
    xor d
    ld c, c
    ld e, l
    ld e, b
    sub h
    sub [hl]
    and a
    ld l, d
    ld c, c
    add l
    sbc c
    add a
    ld l, c
    ld d, l
    ld b, [hl]
    ld a, b
    ld a, b
    sbc b
    sbc b
    sub [hl]
    ld a, b
    ld l, b
    ld l, d
    add l
    sub [hl]
    sub d
    push de
    sbc d
    ld a, [hl-]
    ld a, e
    sbc c
    sub a
    adc c
    add l
    sub a
    add a
    sub h
    adc b
    ld a, [hl-]
    dec a
    ld l, c
    sub a
    ld a, b
    or c
    or l
    db $76

jr_012_46c0:
    sub [hl]
    ld l, h
    ld e, d
    sbc b
    ld e, c
    sub [hl]
    ld [hl], a
    add l
    or l
    ld a, d
    ld e, c
    sbc b
    ld e, h
    ld e, d
    ld [hl], l
    or [hl]
    sub [hl]
    sub a
    add [hl]
    ld d, a
    sbc b
    ld a, c
    ld h, a
    sbc e
    ld e, b
    db $76
    and [hl]
    ld e, b
    ld l, c
    ld a, c
    ld h, [hl]
    sub a
    ld l, b
    adc b
    adc c
    and [hl]
    add l
    ld l, c
    ld e, c
    ld c, b
    adc c
    ld l, c
    add a
    ld a, c
    adc c
    ld e, b
    and e
    or [hl]
    xor c
    ld l, b
    add a
    ld e, d
    adc c
    ld [hl], a
    sbc b
    add [hl]
    ld h, a
    xor b
    ld h, a
    add l
    ld a, d
    ld h, [hl]
    db $76
    add [hl]
    ld d, l
    xor c
    sbc c
    sbc b
    ld e, d
    ld e, e
    ld e, b
    ld d, a
    and a
    add h
    push bc
    sbc c
    ld [hl], l
    ld e, h
    ld c, b
    adc b
    adc e
    sbc b
    and l
    ld a, d
    and a
    sub h
    xor b
    ld c, b
    ld h, a
    add l
    add a
    or e
    xor c
    adc b
    adc d
    ld c, d
    adc c
    ld l, d
    ld d, h
    and a
    ld l, b
    sub [hl]
    add a
    and [hl]
    ld l, b
    ld h, a
    sbc d
    ld a, c
    db $76
    sub a
    ld e, d
    ld e, b
    db $76
    push bc
    ld a, d
    sub l
    sub [hl]
    ld d, [hl]
    and [hl]
    adc c
    ld a, b
    adc c
    ld [hl], h
    xor b
    sub a
    ld e, c
    ld a, b
    ld l, b
    db $76
    adc b
    and a
    ld l, d
    ld e, b
    or l
    ld a, b
    ld e, c
    inc a
    jr c, jr_012_47c4

    sub [hl]
    add l
    cp c
    sbc c
    ld c, c
    ld a, c
    ld a, b
    ld e, c
    add l
    sub d
    and e
    db $d3
    cp d
    ld l, h
    ld a, d
    ld a, b
    ld l, e
    ld d, [hl]
    ld [hl], a
    sub h
    and l
    xor d
    ld c, b
    ld a, d
    dec sp
    adc c
    add a
    ld a, c
    ld e, b
    sub l
    ld [hl], a
    or [hl]
    sbc b
    ld e, d
    ld l, b
    add [hl]
    add l
    sub l
    ld a, b
    ld a, c
    ld l, d
    ld l, b
    add [hl]
    or [hl]
    ld a, d
    ld [hl], a
    sub h
    sbc d
    ld e, d
    ld e, b
    ld e, b
    ld [hl], a
    ld [hl], a
    xor d
    add a
    sbc c
    ld c, c
    add [hl]
    adc b
    ld d, a
    or l
    sub l
    add h
    and [hl]
    ld a, c
    ld c, [hl]
    ld c, c
    ld l, b
    and l
    ld h, l
    sub [hl]
    push bc
    sbc b
    add hl, hl
    adc b
    dec sp
    ld c, c
    or [hl]
    and e
    and [hl]
    or a
    ld a, b
    ld l, e
    ld e, b
    ld l, c
    ld l, b
    sub a
    adc c
    or d
    add $87
    ld d, h
    ld l, h
    ld c, d
    db $76
    sub a
    or l
    and l
    and a
    ld a, b
    xor c
    sbc b
    ld b, a
    add a
    ld l, b
    ld [hl], l
    add $69
    ld a, c
    sub a
    ld l, c
    adc b
    adc c
    ld a, b
    ld d, a
    db $76
    adc b
    ld [hl], e
    adc c
    ld l, b
    adc b

jr_012_47c4:
    sbc c
    ld l, b
    and l
    ld l, c
    ld l, b
    add l
    or l
    adc b
    add a
    ld l, d
    ld c, e
    ld a, b
    adc c
    add l
    adc c
    ld h, l
    or h
    xor c
    ld c, l
    ld c, e
    ld e, h
    ld c, b
    sub e
    and e
    sub [hl]
    add e
    sbc b
    adc c
    ld e, d
    ld e, h
    ld l, e
    ld l, c
    db $76
    or h
    and a
    db $76
    ld l, d
    jr c, jr_012_4836

    ld c, c
    push bc
    or h
    sbc b
    add [hl]
    adc b
    adc h
    ld c, h
    ld h, [hl]
    ld a, b
    add e
    and e
    sbc c
    ld [hl], a
    xor d
    ld c, d
    sub [hl]
    ld a, c
    sub a
    and l
    sub a
    sbc c
    sub l
    adc c
    dec sp
    ld h, l
    xor c
    ld e, d
    or e
    sbc b
    sub [hl]
    adc c
    dec sp
    ld [hl], l
    sbc c
    ld [hl], a
    and [hl]
    ld [hl], a
    ld c, e
    ld d, [hl]
    sbc b
    ld c, c
    add h
    push bc
    ld l, b
    add l
    cp c
    adc c
    xor c
    ld c, d
    db $76
    sub l
    add a
    ld [hl], l
    and [hl]
    ld l, d
    ld h, a
    and a
    ld l, h
    db $76
    and h
    ld [hl], a
    add l
    sbc b
    ld l, c
    add a
    ld a, e
    ld h, a
    add a
    ret


    db $76
    sub h
    sbc c
    ld [hl], l
    db $76

jr_012_4836:
    sbc c
    add [hl]
    adc c
    add a
    and [hl]
    ld l, b
    ld h, a
    add [hl]
    ld c, d
    ld d, [hl]
    ld [hl], a
    ld l, e
    ld a, b
    or e
    sub [hl]
    add a
    ld l, d
    ld l, b
    ld [hl], a
    add a
    add a
    add [hl]
    ld l, e
    ld c, d
    add a
    sbc b
    ld a, e
    db $ec
    cp d
    sbc b
    ld b, b
    db $10
    ld hl, $2403
    ld d, e
    ld a, d
    xor l
    ld [$edbd], a
    ret


    add hl, sp
    adc c
    call c, $ccdb
    reti


    cp h
    cp c
    sbc c
    db $76
    ld h, [hl]
    inc sp
    ld d, h
    stop
    nop
    ld d, d
    inc sp
    dec h
    ld h, a
    adc b
    xor d
    jp c, $eeee

    cp $cc
    xor d
    sbc c
    adc b
    sub a
    add [hl]
    and $57
    ld h, [hl]
    db $76
    ld b, l
    ld [hl-], a
    inc hl
    ld de, $5325
    inc de
    ld b, h
    ld a, b
    ld a, c
    xor h
    call z, $ff3e
    call c, $ddca
    res 7, e
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld b, h
    inc hl
    ld [hl+], a
    inc hl
    sub h
    ld d, h
    dec h
    ld d, [hl]
    ld [hl], a
    adc c
    adc b
    adc d
    set 3, l
    db $dd
    cp h
    xor e
    xor h
    cp e
    xor d
    ld a, c
    sbc c
    xor c
    adc b
    db $76
    ld d, l
    ld b, l
    ld d, l
    inc sp
    inc sp
    inc sp
    inc sp
    ld b, e
    ld b, h
    ld d, l
    ld e, b
    ld l, b
    adc c
    ld a, c
    sbc d
    xor d
    cp e
    call $cddb
    call z, $aacb
    sbc c
    ld a, b
    ld [hl], a
    ld h, [hl]
    or l
    ld d, h
    inc hl
    inc [hl]
    ld d, e
    ld b, l
    inc [hl]
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    db $76
    ld [hl], a
    ld a, b
    sbc d
    xor d
    ld e, e
    xor d
    cp e
    call z, $aaab
    cp c
    xor d
    sbc d
    xor d
    adc c
    adc b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld d, l
    or l
    ld b, l
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, l
    ld h, a
    ld h, [hl]
    adc b
    adc c
    sbc c
    xor d
    xor d
    cp e
    ld c, h
    call z, $cbbc
    cp d
    cp c
    xor b
    sbc c
    ld a, b
    ld a, b
    sub a
    db $76
    db $76
    ld d, [hl]
    ld d, h
    ld d, h
    or h
    inc [hl]
    inc sp
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld l, b
    adc c
    sbc c
    xor d
    xor c
    xor c
    xor d
    xor d
    cp d
    ld c, d
    cp d
    cp d
    cp c
    sbc c
    sbc d
    sbc c
    adc c
    sbc b
    add a
    ld [hl], a
    ld h, a
    ld d, l
    ld d, l
    ld b, e
    ld b, h
    and h
    ld b, h
    ld b, e
    ld b, l
    inc [hl]
    ld b, a
    ld h, [hl]
    ld a, b
    ld a, c
    adc c
    sbc d
    xor c
    sbc d
    cp e
    xor d
    xor e
    ld c, e
    cp e
    cp d
    xor d
    sbc d
    adc c
    sbc c
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld b, h
    ld b, e
    sub h
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, [hl]
    ld h, a
    add a
    adc c
    adc b
    xor c
    sbc c
    xor c
    cp d
    sbc d
    xor c
    ld c, e
    xor d
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    adc c
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    and h
    ld b, h
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld h, [hl]
    ld d, a
    ld l, b
    ld [hl], a
    adc b
    adc c
    adc c
    xor d
    sbc d
    xor d
    ld e, d
    xor d
    xor e
    xor d
    cp d
    xor c
    xor c
    sbc c
    sbc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    and [hl]
    ld b, l
    ld b, l
    ld h, h
    ld d, h
    ld d, h
    ld h, h
    ld h, l
    ld h, a
    ld h, a
    ld h, a
    add a
    adc b
    adc c
    adc c
    xor d
    ld l, d
    xor d
    xor d
    cp d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld [hl], l
    ld [hl], l
    ld h, l
    ld h, l
    ld b, [hl]
    ld d, h
    ld d, l
    ld b, h
    ld d, l
    ld d, h
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    adc c
    ld a, c
    sbc c
    sbc d
    xor d
    xor d
    xor d
    xor e
    xor d
    xor c
    xor c
    sbc c
    sbc c
    sbc b
    sbc b
    adc c
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    sub a
    adc b
    add a
    sbc c
    adc d
    sbc d
    xor c
    xor c
    xor e
    xor d
    xor d
    xor d
    xor d
    sbc c
    sbc b
    sbc b
    ld l, b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    ld d, h
    ld d, [hl]
    and l
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    xor c
    cp d
    xor e
    xor c
    cp c
    ld e, c
    xor d
    sbc c
    sbc c
    adc c
    ld a, b
    add a
    add a
    add a
    db $76
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, h
    and [hl]
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld l, b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    xor c
    xor c
    ld e, d
    sbc d
    xor d
    xor d
    sbc d
    adc c
    sbc d
    sbc b
    sbc b
    adc c
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, h
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    sub a
    adc b
    ld a, c
    adc d
    sbc c
    xor d
    xor c
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    sub [hl]
    ld h, a
    ld a, b
    add a
    adc b
    sbc c
    adc d
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    ld e, c
    sbc b
    sbc b
    adc c
    adc b
    ld a, b
    ld l, b
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, a
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld l, b
    ld a, b
    adc c
    adc c
    sbc d
    sbc d
    xor c
    xor d
    ld l, d
    sbc d
    xor c
    xor c
    xor b
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    db $76
    db $76
    sub l
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld b, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    sbc c
    ld a, c
    xor c
    sbc d
    sbc d
    sbc d
    xor d
    sbc c
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    sub [hl]
    db $76
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    xor c
    xor c
    xor c
    xor c
    ld l, b
    sbc c
    adc c
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld d, [hl]
    and l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    ld [hl], a
    adc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc d
    ld a, c
    sbc d
    xor c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, a
    db $76
    add a
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    xor c
    xor c
    xor b
    sbc c
    sbc c
    sbc c
    adc b
    ld l, b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    ld a, d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    adc b
    adc c
    adc b
    sbc b
    sbc d
    sbc c
    sbc c
    xor b
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    sub a
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    sbc c
    sbc b
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    ld l, c
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, a
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    ld a, c
    adc c
    sbc b
    ld a, b
    xor c
    sbc b
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    add a
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    adc d
    sbc c
    sbc c
    ld a, c
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    sub [hl]
    ld h, a
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], a
    ld h, a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc b
    sbc c
    ld a, b
    sbc c
    sbc c
    xor b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld l, b
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    adc c
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    adc c
    sbc c
    ld l, b
    sbc b
    adc c
    adc b
    sbc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], l
    sub [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    db $76
    ld h, a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sbc c
    adc c
    ld a, c
    xor c
    sbc c
    xor c
    sbc c
    sbc b
    adc c
    sbc b
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld d, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld l, b
    adc b
    ld [hl], a
    sub a
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, b
    sbc b
    adc c
    adc c
    sbc c
    ld a, d
    adc c
    sbc c
    sbc c
    adc d
    sbc c
    adc c
    sbc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    db $76
    ld a, b
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    add a
    sub a
    adc b
    adc c
    adc b
    adc c
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    ld l, c
    adc b
    sub a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    ld a, b
    sbc b
    sbc b
    xor b
    sbc c
    sbc c
    sbc b
    adc b
    adc c
    adc b
    sbc b
    adc c
    ld [hl], a
    adc b
    ld a, b
    db $76
    ld a, b
    ld h, a
    db $76
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
    adc c
    adc c
    sbc b
    ld l, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    add [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    sbc b
    adc c
    adc b
    sbc c
    adc d
    adc d
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    sbc b
    adc c
    ld l, b
    adc b
    sub a
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    sub a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a

Jump_012_4da5:
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    sbc b
    ld a, b
    adc c
    ld a, c
    adc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    add [hl]
    ld a, b
    add a
    ld a, b
    adc b
    sub a
    adc c
    adc c
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    adc b
    ld l, b
    adc c
    adc c
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    sub a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    adc c
    ld a, c
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    add [hl]
    sub a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc c
    adc b
    xor b
    adc b
    ld a, c
    adc c
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    db $76
    add [hl]
    add [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc c
    adc c
    sbc b
    adc c
    adc c
    adc c
    sbc c
    ld a, c
    adc c
    adc b
    adc b
    adc b
    adc c
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    sub a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    ld a, b
    sbc b
    sbc b
    sbc b
    adc b
    adc c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    db $76
    db $76
    ld [hl], a
    add [hl]
    db $76
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    sbc b
    adc c
    adc c
    sbc b
    adc b
    sbc c
    adc b
    sbc b
    sbc b
    adc c
    adc b
    add a
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    ld a, c
    adc c
    adc c
    adc b
    sbc b
    adc b
    adc b
    sub a
    sbc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    sbc b
    sub a
    sbc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    db $76
    ld [hl], a
    db $76
    ld h, a
    db $76
    db $76
    ld [hl], a
    add a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    adc b
    sbc b
    adc b
    adc c
    adc b
    ld a, b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    sub a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [$ccdd], a
    cp d
    adc b
    ld [hl], c
    nop
    nop
    ld [de], a
    db $10
    ld [hl-], a
    dec [hl]
    dec [hl]
    ld c, b
    cp c
    call $ac9a
    rst $28
    db $dd
    res 0, a
    sbc b
    adc e
    call $bcdd
    xor l
    db $db
    sbc e
    call z, $89a9
    sbc b
    ld h, h
    ld h, [hl]
    inc hl
    ld b, h
    jr nc, jr_012_4f68

jr_012_4f68:
    nop
    nop
    ld bc, $2233
    inc hl
    ld d, [hl]
    ld h, [hl]
    ld c, c
    xor d
    cp h
    jp z, $feef

    rst $28
    db $ed
    db $ec
    cp e
    xor c
    sbc c
    adc b
    ld a, c
    adc b
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld h, l
    db $76
    db $76
    ld b, l
    ld b, d
    ld [hl-], a
    ld [hl+], a
    ld hl, $3512
    ld b, e
    ld [hl+], a
    inc [hl]
    dec [hl]
    ld a, b
    ld [hl], a
    sbc d
    cp l
    call z, $fede
    rst $38
    db $ec
    db $db
    xor h
    sbc $cb
    res 7, c
    sbc b
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, l
    ld d, h
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld hl, $4423
    ld b, e
    ld [hl-], a
    ld b, h
    ld h, a
    sub a
    adc c
    adc c
    adc c
    adc c
    xor h
    call z, $eecd
    call c, $abbb
    cp e
    call z, $a9bb
    add hl, sp
    adc c
    sbc d
    xor c
    adc b
    ld [hl], a
    ld [hl], l
    ld b, h
    ld b, h
    ld d, [hl]
    ld b, h
    inc sp
    inc sp
    ld [hl-], a
    inc hl
    ld [hl-], a
    jp Jump_012_4443


    ld b, l
    ld h, a
    ld a, b
    ld a, c
    sbc b
    adc b
    adc c
    xor d
    cp e
    xor e
    call c, $cbdc
    ld c, l
    call c, $bccc
    cp d
    xor d
    sbc b
    ld a, b
    ld a, b
    db $76

jr_012_4fea:
    ld h, [hl]
    ld d, l
    ld b, h
    ld [hl-], a
    inc sp
    ld b, h
    and h
    ld b, h
    ld b, h
    ld b, d
    ld b, e
    ld b, e
    ld d, e
    ld b, l
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    cp d
    ld a, h
    cp d
    xor d
    cp l
    set 1, d
    res 7, e
    xor d
    xor c
    xor e
    xor d
    sbc d
    xor b
    adc c
    adc b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld b, h
    inc [hl]
    inc [hl]
    inc sp
    inc sp
    ld b, e
    inc sp
    ld b, h
    ld d, l
    or [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc b
    xor b
    xor d
    xor c
    xor e
    xor e
    cp e
    cp h
    call z, $ccdb
    call z, $ba3a
    cp c
    sbc c
    sbc c
    adc c
    ld a, b
    add a
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld b, l
    and h
    inc [hl]
    ld b, e
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    adc c
    adc c
    sbc d
    xor d
    sbc d
    sbc d
    xor d
    xor d
    xor e
    cp d
    cp d
    jp z, $bbab

    xor d
    xor d
    sbc c
    xor c
    xor c
    sbc b
    sbc c
    jr c, jr_012_4fea

    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld b, l
    ld b, l
    inc sp
    inc [hl]
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    and h
    ld b, h
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    sbc b
    adc c
    sbc c
    sbc d
    xor d
    xor c
    cp d
    xor e
    xor e
    cp e
    ld a, d
    cp e
    cp d
    cp d
    cp d
    xor d
    sbc d
    sbc c
    sbc c
    adc c
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld d, l
    ld b, l
    ld b, e
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    dec [hl]
    ld d, h
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    xor b
    ld a, b
    sbc c
    xor c
    xor d
    sbc d
    xor d
    xor d
    xor d
    sbc d
    xor d
    xor d
    cp d
    cp e
    sbc d
    xor d
    ld c, d
    xor c
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, h
    add h
    ld b, e
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    adc b
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc d
    xor e
    sbc d
    xor e
    xor d
    xor d
    cp d
    cp e
    cp e
    xor e
    cp d
    xor d
    xor d
    xor d
    sbc c
    ld c, c
    sbc b
    adc b
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, l
    ld h, l
    ld b, l
    ld b, l
    ld b, h
    and l
    ld d, e
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc c
    sbc c
    sbc d
    adc d
    xor c
    xor d
    xor d
    xor d
    xor e
    xor d
    cp d
    xor c
    xor d
    xor c
    xor d
    sbc d
    sbc c
    sbc c
    adc b
    ld b, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl], l
    ld h, [hl]
    ld d, h
    ld d, [hl]
    ld b, l
    ld b, l
    ld b, h
    and h
    ld b, h
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    xor c
    sbc c
    xor d
    sbc e
    adc d
    cp e
    cp d
    cp d
    xor e
    xor d
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc c
    add a
    ld c, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld b, l
    ld b, l
    ld b, h
    ld d, h
    ld b, l
    and l
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    ld l, b
    ld l, b
    ld a, c
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc d
    xor d
    xor d
    ld a, d
    xor e
    cp d
    xor e
    xor d
    cp c
    xor d
    xor c
    sbc b
    sbc c
    adc c
    sbc c
    adc b
    sbc b
    add a
    adc b
    ld c, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld h, h
    ld d, [hl]
    and l
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc c
    adc d
    sbc c
    sbc c
    sbc d
    xor e
    adc d
    xor d
    xor d
    cp d
    cp d
    xor d
    xor c
    xor d
    sbc d
    sbc c
    xor c
    sbc b
    sbc b
    adc b
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld h, h
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    sub [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc c
    adc c
    adc d
    sbc c
    xor c
    xor c
    xor d
    adc e
    sbc d
    sbc d
    xor c
    sbc d
    xor c
    xor c
    xor c
    xor c
    sbc d
    sbc c
    sbc c
    sbc b
    adc b
    adc c
    adc b
    ld e, b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    and l
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    sbc c
    adc d
    xor c
    xor d
    adc c
    xor e
    xor e
    xor d
    xor d
    sbc d
    xor d
    xor d
    sbc c
    xor c
    sbc c
    adc c
    sbc b
    sbc b
    sbc b
    add a
    ld c, b
    add a
    ld [hl], a
    add a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld d, l
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    sub [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    adc b
    adc c
    adc c
    sbc c
    sbc d
    sbc d
    xor d
    xor c
    xor d
    xor d
    xor e
    xor c
    cp c
    xor d
    xor c
    sbc d
    sbc c
    adc c
    sbc b
    adc c
    sbc b
    ld e, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    adc c
    adc c
    sbc c
    xor d
    xor d
    sbc e
    xor c
    xor d
    xor d
    xor c
    xor c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    adc d
    ld e, c
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    add [hl]
    ld d, h
    ld d, l
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld l, b
    add a
    sbc b
    adc c
    adc b
    sbc c
    sbc c
    xor c
    xor d
    xor d
    sbc d
    xor d
    sbc d
    xor d
    sbc c
    xor c
    sbc d
    sbc c
    sbc b
    sbc c
    ld e, c
    sbc b
    adc b
    sbc c
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    add [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    xor b
    adc b
    ld a, b
    adc c
    adc c
    sbc d
    sbc c
    sbc c
    sbc d
    xor d
    sbc c
    xor c
    sbc d
    xor c
    xor c
    sbc d
    ld l, b
    sbc c
    sbc c
    xor b
    sbc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a

Call_012_52cb:
    add a
    db $76
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    adc c
    adc c
    sbc c
    adc d
    adc d
    sbc d
    xor d
    sbc d
    sbc c
    sbc d
    xor c
    ld a, d
    sbc c
    sbc d
    sbc d
    sbc c
    sbc c
    adc d
    adc c
    sbc b
    ld a, c
    adc b
    adc c
    ld [hl], a
    add a
    add a
    add [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, a
    and [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    xor c
    sbc c
    xor c
    adc d
    sbc c
    sbc c
    sbc d
    adc b
    sbc c
    sbc b
    adc b
    sbc b
    sbc b
    add a
    sub a
    ld d, a
    add a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    sub [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    adc d
    adc c
    adc c
    xor c
    xor c
    xor d
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    sbc d
    sbc c
    adc c
    sbc b
    sbc c
    adc b
    adc b
    ld l, b
    add a
    add a
    add a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc c
    sbc c
    adc b
    adc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    xor c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    ld l, c
    sbc c
    adc b
    sbc b
    sub a
    sub a
    ld a, b
    ld [hl], a
    add [hl]
    add [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld d, [hl]
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    adc b
    adc b
    xor c
    sbc c
    sbc c
    sbc d
    sbc c
    xor c
    sbc d
    sbc c
    ld a, d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    sub a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    adc b
    ld a, b
    adc c
    ld a, b
    sbc c
    adc c
    sbc c
    sbc c
    sbc d
    adc d
    ld a, c
    xor c
    sbc c
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    adc b
    adc b
    ld [hl], a
    add a
    ld h, a
    add [hl]
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    xor c
    sbc d
    sbc c
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    sbc b
    xor c
    adc c
    sbc b
    ld a, b
    ld l, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld d, a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc c
    adc c
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    adc c
    sbc c
    ld l, c
    sbc b
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
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    ld h, [hl]
    sub a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc c
    ld a, c
    adc b
    adc c
    sbc b
    sbc b
    sbc c
    sbc d
    sbc c
    ld a, d
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld h, a
    ld d, [hl]
    sub a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    sbc c
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    ld a, b
    sbc b
    adc b
    ld l, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    adc b
    adc b
    sbc c
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    ld l, c
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    db $76
    ld d, a
    ld d, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    sbc b
    ld h, a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc c
    adc c
    sbc b
    sbc c
    xor c
    sbc d
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    xor c
    sbc b
    sbc c
    sbc c
    adc b
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    add [hl]
    ld [hl], a
    add a
    add a
    add a
    add a
    sub a
    sbc c
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    ld l, b
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld a, b
    add a
    add a
    sbc b
    adc b
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    ld l, c
    adc b
    adc b
    adc c
    adc c
    adc b
    add a
    sbc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld d, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    sub [hl]
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    ld a, c
    sbc c
    adc b
    sbc c
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    ld a, b
    sbc b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    add [hl]
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc c
    adc c
    sbc b
    adc c
    adc c
    sbc b
    xor b
    sbc c
    adc c
    adc d
    sbc b
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    add [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    sub a
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc c
    adc c
    adc c
    sbc c
    adc c
    adc c
    sbc b
    adc c
    ld a, b
    adc c
    adc c
    adc b
    adc b
    adc c
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, a
    add a
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    adc c
    ld a, c
    adc b
    adc b
    sbc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    sbc c
    adc c
    adc b
    adc b
    sbc b
    adc b
    sub a
    sbc c
    ld a, b
    adc b
    adc c
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    add [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc c
    sbc c
    sbc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    add l
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc c
    adc b
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc c
    sbc b
    ld a, c
    adc b
    sbc b
    sbc b
    sbc b
    adc c
    adc b
    adc b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    add [hl]
    add [hl]
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    sub a
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc c
    ld a, c
    adc b
    adc c
    adc b
    adc b
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    adc b
    sbc b
    sbc b
    adc c
    sbc b
    adc c
    sbc b
    adc c
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc c
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc c
    adc c
    ld a, c
    adc c
    sbc c
    sbc b
    adc c
    adc c
    adc c
    sub a
    sbc b
    adc b
    adc b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld l, b
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    adc b
    sbc c
    adc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    sub a
    adc b
    ld l, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    sbc b
    adc b
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    adc b
    ld l, b
    adc b
    sbc b
    adc b
    adc b
    adc b
    sbc b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc c
    adc b
    adc c
    adc c
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld a, b
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld e, c
    cp l
    call c, $abdb
    sub a
    sub a
    nop
    nop
    nop
    ld de, $1310
    ld [hl+], a
    ld d, h
    inc [hl]
    push bc
    sbc h
    sbc e
    sbc $e9
    xor h
    db $dd
    db $ed
    db $fc
    res 0, [hl]
    adc d
    ld a, b
    cp e
    sbc $dd
    dec de
    res 7, l
    db $db
    adc d
    db $db
    res 3, c
    sbc c
    add a
    add l
    ld d, a
    ld h, e
    inc hl
    ld b, h
    ld b, e
    or b
    nop
    nop
    nop
    nop
    inc hl
    ld [hl-], a
    inc hl
    inc hl

Call_012_5889:
    ld b, l
    db $76
    ld h, a
    sbc c
    sbc d
    sbc h
    bit 3, e
    rst $28
    cp $ef
    rst $28
    sbc $cd
    cp h

Jump_012_5898:
    xor e
    adc b
    xor b
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld h, l
    ld [hl], $66
    ld b, [hl]
    ld h, l
    db $76
    db $76
    ld d, h
    ld d, h
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld de, $3521
    ld d, h
    jp nz, $3522

    ld b, h
    ld d, a
    adc c
    ld a, b
    sbc d
    cp l
    call $decd
    rst $38
    cp $ee
    db $ec
    ld c, e
    jp z, $edcd

    res 7, e
    cp e
    sbc c
    add a
    ld [hl], a
    ld h, a
    ld d, a
    ld d, [hl]
    ld [hl], l
    ld h, l
    ld h, h
    sub h
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld hl, $3312
    ld b, h
    ld b, h
    ld b, e
    ld [hl-], a
    dec [hl]
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    cp c
    adc c
    adc c
    adc b
    xor e
    call $ddcd
    xor $ec
    set 1, d
    cp e
    xor h
    set 1, e
    ld c, d
    xor c
    sbc c
    sbc b
    sbc c
    sbc c
    xor d
    adc c
    adc b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld b, h
    inc [hl]
    ld d, l
    ld d, h
    add e
    inc sp
    inc hl
    ld b, d
    inc sp
    inc hl
    inc hl
    inc sp
    ld b, h
    inc sp
    ld b, l
    ld b, [hl]
    ld d, h
    ld [hl], a
    add a
    adc b
    ret


    sbc c
    ld a, c
    adc c
    sbc d
    xor d
    cp e
    xor e
    cp h
    db $dd
    db $ec
    call z, $cdcc
    db $dd
    call $ab4b
    cp d
    xor d
    sbc c
    adc b
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld h, l
    ld h, l
    ld d, h
    ld b, h
    inc hl
    inc sp
    ld [hl], e
    ld d, h
    ld b, e
    ld b, h
    ld d, h
    ld b, e
    inc sp
    ld b, e
    ld b, e
    ld b, h
    ld b, h
    ld b, l
    ld d, h
    ld h, [hl]
    db $76
    ld [hl], a
    or a
    add a
    ld a, c
    adc b
    xor c
    xor d
    xor e
    jp z, $babb

    cp e
    cp h
    call z, $bacb
    cp e
    ld e, d
    xor d
    xor d
    sbc d
    xor d
    xor c
    xor c
    xor d
    sbc d
    adc c
    adc b
    adc b
    add a
    db $76
    ld h, a
    ld h, l
    ld d, l
    ld h, h
    ld h, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]

Call_012_5969:
    ld b, e
    inc [hl]
    inc [hl]
    inc sp
    ld b, e
    inc [hl]
    ld b, h
    or l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    adc c
    adc c
    adc d
    sbc c
    xor d
    sbc d
    cp d
    xor d
    cp e
    cp e
    adc l
    cp h
    call z, $cccc
    call $babc
    cp d
    xor d
    xor d
    sbc c
    adc b
    sbc b
    sbc b
    add a
    jr c, jr_012_5a09

    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld b, e
    inc [hl]
    inc [hl]
    sub h
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    adc d
    sbc c
    sbc d
    xor d
    xor d
    xor d
    xor c
    xor d
    xor d
    xor d
    xor d
    xor e
    xor e
    cp e
    xor e
    cp e
    xor e
    xor e
    cp d
    ld e, d
    sbc c
    xor c
    sbc c
    xor c
    xor c
    adc c
    adc c
    adc c
    adc b
    adc b
    add a
    add [hl]
    add a
    ld h, [hl]
    ld h, l
    ld b, l
    ld h, [hl]
    ld b, l
    ld d, h
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    inc [hl]
    ld b, h
    inc sp
    ld d, h
    inc [hl]
    ld b, h
    and h
    ld h, l
    ld h, a
    db $76
    add a
    ld [hl], a
    adc c
    adc b
    sbc b
    xor c
    xor d
    xor d
    xor d
    sbc e
    xor d
    sbc e
    xor e
    cp d
    cp d
    cp d
    cp e
    cp e
    cp h
    cp e
    xor e
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    ld c, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld a, b
    ld h, a

jr_012_5a09:
    db $76
    ld [hl], a
    ld h, l
    ld h, l
    ld d, h
    ld d, e
    ld b, h
    add e
    inc [hl]
    ld b, h
    inc sp
    ld b, e
    ld b, h
    inc [hl]
    ld b, h
    ld d, h
    ld d, h
    ld h, l
    ld h, [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    xor b
    adc b
    adc c
    adc c
    xor c
    sbc d
    sbc d
    sbc c
    xor c
    cp d
    xor d
    cp c
    xor d
    xor c
    xor d
    xor d
    adc e
    xor e
    xor e
    sbc d
    xor c
    xor c
    xor c
    xor c
    sbc d
    sbc c
    sbc c
    adc c
    adc c
    sbc c
    ld a, c
    adc b
    ld c, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    db $76
    db $76
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add l
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    add a
    ld [hl], a
    add a
    add a
    xor b
    sbc c
    sbc c
    adc c
    sbc e
    xor c
    xor d
    xor d
    xor d
    xor d
    xor e
    xor e
    xor e
    xor e
    cp e
    xor e
    ld a, e
    xor e
    xor d
    xor d
    xor e
    sbc d
    xor d
    sbc d
    adc d
    sbc b
    adc c
    add a
    adc b
    add a
    add a
    add [hl]
    ld b, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld d, [hl]
    ld h, l
    ld h, l
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld b, l
    ld b, l
    ld d, l
    sub h
    ld b, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    adc b
    add a
    sbc b
    xor b
    adc c
    sbc b
    xor c
    xor c
    xor d
    xor c
    xor d
    sbc e
    sbc d
    xor d
    xor e
    xor e
    xor d
    xor d
    xor c
    ld a, d
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    xor c
    adc c
    sbc b
    adc b
    sbc b
    add a
    add a
    add a
    db $76
    ld a, b
    ld c, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld b, l
    ld d, l
    ld h, h
    ld d, h
    ld d, h
    sub l
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    xor c
    sbc c
    sbc c
    xor c
    sbc d
    xor d
    xor d
    xor d
    cp e
    cp d
    cp e
    xor e
    xor e
    xor d
    xor d
    xor d
    ld a, d
    xor d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    ld b, a
    add a
    ld a, b
    ld h, a
    db $76
    ld h, a
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, h
    ld h, l
    ld b, [hl]
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    add h
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    xor c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    xor d
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor e
    cp e
    cp d
    xor e
    adc d
    xor d
    sbc d
    xor c
    sbc c
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    sub a
    sbc b
    adc b
    adc b
    add a
    ld b, a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    add [hl]
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld a, b
    cp b
    adc b
    ld a, c
    adc b
    adc c
    adc c
    sbc b
    xor b
    xor c
    sbc d
    sbc c
    xor e
    xor d
    xor d
    xor d
    xor d
    adc d
    xor d
    xor d
    xor d
    xor d
    sbc d
    sbc d
    xor c
    sbc d
    sbc c
    sbc c
    sbc d
    adc c
    adc b
    adc c
    adc b
    ld c, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld [hl], l
    ld d, l
    ld d, l
    ld b, l
    ld b, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    db $76
    and a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sbc b
    adc b
    sbc c
    adc c
    sbc c
    sbc d
    sbc d
    xor c
    xor d
    sbc d
    xor c
    adc d
    xor d
    xor d
    xor c
    xor d
    xor c
    xor d
    xor d
    xor c
    sbc d
    xor c
    sbc b
    sbc b
    sbc c
    adc c
    adc c
    ld l, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    sub l
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    add a
    ld [hl], a
    ld a, b
    add a
    adc c
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    xor c
    sbc e
    xor d
    xor d
    sbc e
    xor d
    xor d
    xor d
    sbc d
    sbc d
    sbc d
    sbc c
    sbc c
    sbc d
    ld a, c
    sbc d
    adc c
    adc c
    sbc b
    adc c
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    db $76
    db $76
    ld d, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    add [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc c
    xor b
    sbc c
    sbc c
    sbc d
    sbc d
    sbc d
    xor d
    xor d
    xor d
    cp d
    xor d
    xor d
    xor d
    xor d
    sbc e
    xor c
    adc c
    xor c
    xor c
    sbc d
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    add a
    add a
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, a
    ld d, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    add a
    ld h, a
    and a
    ld [hl], a
    add a
    add a
    add a
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    xor d
    sbc d
    sbc d
    xor c
    cp d
    sbc d
    sbc d
    sbc d
    sbc c
    xor d
    sbc d
    sbc c
    xor c
    sbc d
    adc d
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    ld l, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    and [hl]
    db $76
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    adc d
    sbc c
    xor c
    xor c
    sbc d
    sbc d
    sbc c
    xor c
    xor c
    xor c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    ld a, c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc c
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    add [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld [hl], l
    ld h, a
    ld d, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    add a
    adc b
    add a
    xor b
    adc c
    adc c
    adc c
    adc c
    sbc d
    sbc d
    sbc d
    sbc c
    xor d
    xor d
    sbc c
    cp d
    sbc c
    xor d
    sbc c
    ld a, c
    xor c
    xor c
    sbc d
    sbc c
    sbc c
    xor c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    adc c
    adc b
    add a
    adc b
    ld l, b
    add [hl]
    ld a, b
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    and a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc d
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    adc c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    sbc d
    xor c
    xor c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    ld l, c
    adc c
    adc c
    adc c
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc b
    sbc d
    adc d
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    adc c
    sbc b
    xor c
    adc c
    sbc c
    sbc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    adc c
    ld a, b
    sub a
    adc b
    adc b
    ld d, a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld [hl], l
    db $76
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    db $76
    ld h, a
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    adc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    adc d
    xor c
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    xor d
    adc c
    sbc c
    sbc d
    adc c
    sbc c
    sbc c
    adc b
    sbc b
    ld l, b
    adc c
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    xor c
    xor c
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc d
    ld a, c
    sbc c
    sbc c
    adc c
    sbc b
    adc c
    sbc c
    adc b
    sbc b
    sbc b
    ld a, b
    adc b
    ld a, c
    add a
    ld [hl], a
    add a
    ld e, b
    add [hl]
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    and [hl]
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    xor c
    sbc c
    adc d
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc d
    adc c
    adc c
    sbc b
    adc b
    ld l, b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, l
    ld [hl], l
    ld h, l
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
    ld h, [hl]
    add a
    ld d, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    sbc d
    sbc c
    sbc c
    xor b
    ld a, c
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    and a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    xor b
    adc d
    adc b
    adc c
    sbc b
    ld l, c
    adc b
    adc b
    sub a
    adc c
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    add [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    sbc b
    sbc b
    adc c
    adc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    sbc d
    sbc c
    sbc c
    ld a, c
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    adc c
    sbc b
    adc c
    sbc b
    adc b
    adc b
    ld a, c
    adc b
    add a
    ld a, c
    ld h, a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc b
    sbc b
    sbc b
    adc b
    sbc c
    sbc d
    adc c
    adc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc b
    xor b
    xor c
    adc c
    sbc c
    adc c
    sbc c
    ld a, b
    sbc b
    sbc b
    sbc c
    ld a, c
    adc b
    ld a, c
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, l
    add [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    sbc b
    adc c
    adc c
    adc b
    adc b
    sbc b
    ld a, b
    adc c
    ld h, a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    add a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    sub a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    adc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    adc c
    sbc c
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
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    sbc b
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor b
    sbc b
    sbc c
    sbc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    add a
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
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    sub a
    sbc b
    sbc c
    adc b
    sbc b
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    sbc c
    sbc b
    adc d
    sbc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    adc c
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc c
    ld a, b
    sbc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc b
    sbc b
    ld a, c
    adc b
    sbc b
    adc b
    adc c
    adc b
    sub a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], l
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    add a
    ld [hl], a
    ld a, b
    sub a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    adc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    db $76
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    adc d
    sbc b
    sbc c
    sbc c
    ld a, c
    sbc b
    sbc b
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc c
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
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    ld h, a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    ld a, b
    adc c
    sbc b
    adc b
    adc c
    sbc b
    sbc b
    adc b
    adc c
    sbc c
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc c
    adc b
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    ld a, b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    add [hl]
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    sub a
    adc b
    adc b
    adc b
    adc b
    add a
    adc c
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    adc c
    sbc b
    sbc b
    adc c
    adc c
    adc c
    sbc b
    adc b
    sbc b
    adc c
    adc c
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld d, a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    add [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    adc c
    adc c
    ld a, c
    adc c
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    ld a, c
    sbc c
    sbc b
    adc b
    sbc b
    sbc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    sub a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld l, b
    ld h, [hl]
    ld a, b
    db $76
    add [hl]
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sbc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc b
    sbc c
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    adc b
    adc c
    ld a, b
    sbc c
    adc b
    sub a
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    add a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    adc b
    add a
    adc b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc b
    sbc c

jr_012_6317:
    adc c
    sbc c
    adc b
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld b, l
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld b, l
    adc c
    sbc e
    sbc d
    sub l
    ld h, h
    and l
    db $76
    adc b
    adc b
    adc d
    cp d
    xor c
    sub a
    add [hl]
    ld h, [hl]
    ld b, [hl]
    ld b, l
    ld d, a
    adc b
    and a
    xor d
    adc d
    and a
    add a
    ld c, c
    ld h, h
    ld h, a
    ld a, b
    ld a, b
    sub a
    sbc d
    adc b
    and a
    db $76
    ld h, l
    db $76
    add [hl]
    sbc c
    adc c
    adc b
    sbc b
    ld l, b
    ld h, a
    ld d, a
    ld h, a
    ld a, c
    sbc b
    xor c
    adc b
    sub [hl]
    ld h, [hl]
    jr z, jr_012_6317

    ld l, b
    sub a
    ld [hl], a
    and [hl]
    ld a, c
    add [hl]
    adc d
    ld l, c
    db $76
    ld [hl], l
    adc c
    ld h, [hl]
    xor b
    sub [hl]
    sub [hl]
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    sub [hl]
    ld a, c
    adc b
    adc b
    ld l, c
    ld a, c
    sub [hl]
    adc b
    add a
    ld a, b
    adc b
    add [hl]
    add [hl]
    ld h, a
    ld h, l
    adc b
    ld [hl], a
    adc d
    ld [hl], a
    xor b
    ld l, c
    sub a
    sbc b
    ld e, b
    ld h, a
    and l
    ld l, c
    add l
    sbc b
    ld l, b
    ld c, c
    sub [hl]
    adc b
    sbc c
    ret z

    sub [hl]
    ld a, b
    ld d, [hl]
    db $76
    ld b, a
    add [hl]
    ld l, b
    ld [hl], l
    cp b
    ld l, e
    ld [hl], a
    sub a
    ld a, c
    ld h, l
    ld a, b
    ld b, [hl]
    ld a, b
    or a
    sbc b
    and a
    adc b
    ld h, a
    sub [hl]
    ld a, c
    ld l, b
    sbc b
    sbc e
    add h
    add a
    ld a, b
    ld d, a
    add [hl]
    sbc c
    ld e, d
    sub [hl]
    adc c
    sbc c
    db $76
    sbc e
    add hl, sp
    ld [hl], e
    add hl, sp
    ld e, c
    ld a, c
    ld [hl], a
    ld e, b
    db $76
    xor b
    sub [hl]
    add a
    sub a
    adc d
    db $76
    or a
    ld l, b
    sub h
    sbc c
    ld a, c
    ld d, a
    sbc b
    ld l, b
    sub [hl]
    xor c
    and a
    xor b
    ld a, b
    add a
    ld h, h
    sub h
    ld b, l
    ld a, d
    and [hl]
    cp c
    adc b
    sbc c
    ld c, c
    ld h, l
    db $76
    sbc c
    ld e, c
    xor b
    or a
    ld l, b
    ld e, b
    add h
    ld a, d
    ld h, a
    xor d
    ld e, b
    cp b
    ld h, a
    and a
    ld h, [hl]
    sbc e
    ld b, [hl]
    push hl
    ld e, c
    and h
    sub l
    or l
    ld c, d
    and h
    ld e, e
    add [hl]
    and [hl]
    ld l, b
    ld e, d
    jp nz, Jump_000_356b

    cp c
    add [hl]
    ld c, [hl]
    add e
    sbc c
    ld b, l
    adc d
    ld h, a
    ld c, h
    ld h, l
    ret z

    and [hl]
    adc c
    add a
    adc e
    ld b, l
    ld a, e
    ld b, a
    or a
    adc b
    ld e, e
    ld h, [hl]
    add [hl]
    ld b, a
    add a
    sbc d
    xor e
    push de
    ld h, l
    ld d, e
    add h
    xor e
    adc c
    ret z

    sub [hl]
    ld l, d
    ld [hl], e
    and h
    ld e, b
    ld l, b
    ld l, d
    ld a, e
    add a
    ld h, [hl]
    ld e, b
    add a
    ld l, b
    ld l, d
    ld l, b
    or h
    ld l, b
    add l
    add a
    adc d
    ld e, c
    and [hl]
    adc c
    adc b
    and h
    ld l, e
    jr z, jr_012_64d9

    adc d
    add e
    or a
    sbc b
    ld e, c
    ld [hl], a
    sbc b
    ld b, a
    ld h, a
    sub h
    sbc e
    ld a, [hl+]
    ld l, d
    sub l
    and a
    ld [hl], a
    adc c
    dec bc
    sbc b
    ld a, c
    add [hl]
    ld [hl], l
    cp c
    ld l, b
    sub l
    ld e, e
    ld c, b
    adc b
    sub a
    add l
    jp Jump_012_6799


    add l
    sbc b
    ld [hl], a
    ld a, c
    ld e, c
    ld d, a
    or a
    ld a, d
    sub a
    sub a
    db $76
    ld c, d
    add l
    ld l, c
    ld [hl], h
    sbc c
    sub a
    ld l, d
    add a
    ld a, d
    adc b
    or [hl]
    ld a, b
    ld c, b
    sub e
    sub l
    db $76
    add [hl]
    ld l, e
    ld e, b
    and a
    sbc b
    cp b
    db $76
    sbc b
    ld a, [hl-]
    ld c, c
    ld d, a
    xor b
    add h
    db $e3
    and a
    ld l, c
    ld e, d
    ld a, e
    db $76
    sub a
    ld c, d
    ld h, a
    ld a, c
    db $76
    ld a, c
    ld e, d
    sub a
    adc d
    ld a, b
    sub [hl]
    ld l, c
    sub c
    cp b
    add l
    sub a
    ld l, d
    ld a, e
    ld e, b
    adc c
    ld e, b
    sbc b
    ld [hl], l
    and [hl]
    and e
    sub a
    sub a
    sub l
    sub [hl]
    add a
    cp b
    adc c
    ld h, a
    ld e, c
    add l
    adc d
    ld [hl], a
    push bc
    adc d

jr_012_64d9:
    ld b, l
    or a
    ld a, d
    ld [hl], a
    sub a
    add [hl]
    ld [hl], l
    db $76
    ld l, b
    add h
    and a
    ld h, a
    add [hl]
    sbc b
    or a
    adc b
    db $76
    call nz, $a476
    and a
    ld c, e
    and e
    ld l, e
    ld [hl], l
    or [hl]
    add [hl]
    adc d
    ld h, [hl]
    and [hl]
    ld d, a
    or [hl]
    sbc b
    sbc c
    ld a, c
    ld l, h
    rlca
    or l
    ld e, b
    sbc b
    add h
    cp b
    ld e, c
    push hl
    ld c, e
    or h
    ld a, d
    adc c
    ld c, c
    and [hl]
    ld d, [hl]
    ret nz

    adc b
    ld [hl], a
    ld l, $b5
    sbc e
    add [hl]
    sub [hl]
    and l
    sub a
    ld d, l
    ld a, c
    ld b, a
    ld a, d
    adc c
    sbc d
    ld l, d
    ld l, c
    ld h, [hl]
    sub l
    ld d, l
    adc c
    ld d, a
    ld h, a
    sbc c
    ld a, b
    ld l, b
    or h
    ld a, b
    ld e, d
    ld a, c
    add a
    ld a, c
    db $76
    sub a
    adc b
    ld a, e
    ld [hl], l
    adc d
    ld d, a
    add l
    ld [hl], a
    sbc b
    add [hl]
    sbc e
    ld h, [hl]
    cp b
    ld [hl], l
    rst $00
    ld d, a
    sub a
    ld l, b
    and a
    ld e, d
    ld e, d
    ld e, h
    adc c
    ld c, c
    add [hl]
    ld d, a
    or a
    ld [hl], a
    sub a
    ld a, d
    add [hl]
    sub a
    sub h
    sub [hl]
    call nz, $86b6
    db $76
    and [hl]
    sub a
    ld a, b
    ld e, h
    ld e, c
    add l
    ld e, e
    ld e, c
    add [hl]
    adc c
    ld e, d
    ld [hl], a
    ld [hl], e
    sbc d
    ld e, d
    ld d, a
    ld e, d
    ld [hl], h
    adc e
    ld c, c
    or d
    sbc e
    ld c, h
    ld d, [hl]
    or [hl]
    ld c, d
    add a
    ld b, a
    xor c
    add [hl]
    sbc d
    ld d, a
    or [hl]
    ld a, b
    ld a, d
    ld d, l
    push bc
    ld h, [hl]
    call nz, Call_012_7ca6
    ld e, b
    jp c, $852b

    ld l, b
    ld c, e
    ld d, h
    sbc d
    add hl, hl
    sub l
    ld a, h
    ld d, [hl]
    xor b
    ld l, d
    add h
    or a
    ld a, b
    ccf
    ld d, [hl]
    db $76

jr_012_6591:
    ld l, b
    ld e, c
    or e
    xor b
    and [hl]
    sbc c
    ld h, [hl]
    ld l, d
    add l
    add [hl]
    sub h
    and a
    add a
    sub [hl]
    adc b
    ld h, l
    adc c
    ld e, b
    or [hl]
    add [hl]
    sbc b
    sub [hl]
    rst $00
    ld h, [hl]
    ld e, b
    ld d, l
    sbc c
    ld c, h
    sub a
    ld l, c
    adc c
    ld e, b
    ld a, h
    ld d, [hl]
    rst $10
    ld l, d
    scf
    sub h
    ld a, c
    dec sp
    sbc b
    ld e, l
    dec sp
    ld h, [hl]
    or [hl]
    ld [hl], a
    sbc b
    ld a, h
    db $76
    add a
    ld l, d
    ld b, [hl]
    rst $00
    ld e, b
    add a
    ld l, b
    ld e, e
    sub a
    or [hl]
    ld a, c
    ld a, b
    ld c, c
    ld [hl], a
    add $a9
    ld a, [hl-]
    adc c
    ld e, e
    ld e, b
    or l
    or a
    ld c, c
    or l
    ld e, d
    ld a, [hl+]
    scf
    and h
    sub l
    db $e3
    or [hl]
    adc d
    ld l, h
    ld e, d
    ld e, c
    ld l, b
    ld c, d
    ld d, a
    add l
    or [hl]
    add [hl]
    adc d
    add a
    ld a, h
    db $76
    sub l
    or h
    and [hl]
    ld h, [hl]
    add a
    ld l, c
    ld c, l
    jr c, jr_012_6591

    sub [hl]
    ld a, e
    ld e, b
    ld d, a
    ld a, b
    adc c
    ld e, b
    sub [hl]
    add l
    rst $00
    sub l
    sbc b
    ld h, [hl]
    add l
    sbc c
    ld h, [hl]
    adc b
    sbc d
    ld e, d
    sub [hl]
    and [hl]
    ld l, b
    add l
    sub a
    ld e, b
    ld e, c
    and l
    adc b
    ld d, a
    sub a
    adc e
    inc l
    sub e
    sbc c
    ld [hl], e
    or l
    sbc c
    ld e, d
    db $76
    ld a, h
    db $76
    cp c
    db $76
    or h
    or [hl]
    dec e
    add hl, sp
    ld e, e
    dec sp
    and a
    sub h
    and a
    sub d
    push de
    ld l, c
    ld b, a
    ld a, b
    db $76
    and l
    or a
    ld l, c
    sbc c
    ld [hl], a
    ld l, e
    ld b, a
    sub e
    sub a
    ld [hl], a
    sbc b
    ld a, d
    ld [hl], a
    sub a
    ld d, a
    sub l
    jp nz, Jump_012_5898

    sbc b
    ld c, e
    ld e, c
    ld e, c
    ld l, d
    and e
    push bc
    sub [hl]
    sub l
    add [hl]
    add [hl]
    adc c
    ld e, d
    ld a, b
    and [hl]
    and a
    add l
    cp c
    ld c, e
    add [hl]
    ld a, b
    ld l, b
    ld d, a
    and d
    sub h
    push bc
    adc d
    xor d
    ld l, b
    sub l
    adc c
    ld l, b
    ld l, b
    sub e
    ld a, b
    add a
    ld e, d
    cp b
    ld e, e
    ld [hl], l
    adc c
    ld h, [hl]
    and l
    or [hl]
    ld e, l
    ld [hl], a
    dec a
    ld d, h
    or [hl]

Call_012_6676:
    ld e, e
    or e
    or a
    ld e, h
    ld h, a
    add a
    ld h, a
    and h
    sbc c
    ld l, d
    ld h, [hl]
    ld [hl], a
    ld l, b
    add l
    sub l
    ld a, c
    or h
    ld a, e
    ld e, c
    add [hl]
    adc b
    add l
    sbc c
    ld e, b
    sub h
    or a
    cp c
    sub l
    ld a, b
    ld b, a
    xor l
    add hl, bc
    adc c
    add l
    and a
    sub e
    rst $00
    ld c, e
    ld l, b
    ld e, e
    ld a, b
    ld b, a
    ld d, e
    and a
    adc b
    ld a, c
    ld c, h
    ld e, c
    add l
    ld a, c
    and d
    xor b
    ld h, a
    sub e
    or [hl]
    sub [hl]
    jp $89c8


    ld l, c
    ld [hl], a
    add a
    sub d
    and a
    adc b
    ld e, e
    ld e, e
    ld l, b
    sub l
    db $d3
    sub h
    jp nz, Jump_000_2a8d

    ld l, b
    dec sp
    sub a
    add h
    or e
    adc b
    ld c, e
    ld h, a
    adc h
    ld c, c
    or [hl]
    sub h
    db $d3
    add [hl]
    sub [hl]
    add [hl]
    inc e
    ld c, c
    sub [hl]
    and h
    add $76
    or l
    db $76
    sbc c
    ld b, a
    cp b
    ld [hl], a
    or d
    xor b
    ld h, [hl]
    ld a, d
    ld l, l
    ld c, c
    adc b
    ld h, [hl]
    and h
    or [hl]
    ld a, c
    ld l, d
    ld a, c
    ld e, d
    sub h
    or l
    and [hl]
    add e
    cp b
    dec sp
    ld a, b
    xor b
    adc b
    ld a, b
    ld h, a
    ld l, b
    sub h
    sbc c
    sub h
    or a
    ld e, e
    db $76
    ld l, c
    ld e, d
    ld h, a
    adc c
    ld a, b
    ld a, b
    add l
    sub a
    add a
    add l
    adc d
    ld h, a
    add h
    or e

jr_012_670a:
    or [hl]
    ld l, d
    add [hl]
    sbc c
    ld a, h
    ld c, b
    ld l, c
    ld h, l
    ld a, e
    ld e, b
    ld a, b
    add a
    sub [hl]
    add [hl]
    sbc d
    add hl, hl
    and a
    ld b, a
    or l
    ld a, d
    ld e, e
    ld [hl], a
    cp e
    ld d, [hl]
    jp $9678


    ld e, c
    ld l, h
    ld c, c
    adc c
    ld h, a
    sub [hl]
    ld a, b
    ld a, d
    ld c, h
    ld l, b
    ld [hl], a
    ld [hl], e
    or h
    adc c
    ld e, c
    ld a, b
    adc b
    ld d, l
    or a
    sub a
    or e
    sbc c
    ld h, [hl]
    ld e, c
    add a
    ld a, e
    ld e, b
    sub $a5
    adc c
    ld h, a
    adc c
    ld d, [hl]
    adc c
    sub h
    call nz, $89a7
    ld e, d
    ld [hl], a
    ld h, l
    sub [hl]
    add l
    add a
    ld c, l
    ld c, h
    ld c, e
    ld h, a
    ld l, c
    sub d
    and h
    and [hl]
    adc c
    sub l
    sbc c
    add l
    sbc c
    dec sp
    add a
    ld b, [hl]
    ld a, e
    jr c, jr_012_670a

    ld a, b
    or l
    ld [hl], a
    and a
    ld l, b
    add [hl]
    ld l, b
    and a
    ld l, c
    sub l
    adc b
    ld [hl], a
    adc h
    ld d, [hl]
    adc d
    ld l, b
    adc c
    add a
    and [hl]
    sub a
    ld [hl], a
    ld h, [hl]
    adc d
    add hl, hl
    sbc c
    ld e, c
    sub l
    sbc b
    ld l, b
    ld c, d
    ld e, d
    ld a, [hl-]
    add [hl]
    adc b
    or d
    rst $10
    ld l, b
    adc c
    ld e, c
    ld e, h
    ld h, a
    sub [hl]
    ld l, b
    ld l, e
    db $76
    sbc d
    inc e
    and l
    add a
    and [hl]
    ld [hl], a
    or d
    adc h

Jump_012_6799:
    ld a, [hl-]
    ld l, c
    ld a, b
    ld h, a
    sub l
    xor d
    ld l, c
    xor c
    ld e, b
    sub a
    db $76
    or h
    and a
    and a
    ld e, d
    add a
    db $76
    or a
    ld e, d
    ld h, e
    adc c
    ld h, [hl]
    adc b
    ld b, l
    ld a, e
    add h
    cp c
    ld h, a
    ld l, e
    ld b, [hl]
    and a
    ld h, a
    and [hl]
    ld a, c
    ld a, c
    ld e, c
    adc b
    ld c, b
    xor c
    xor d
    or e
    sbc c
    ld h, l
    ld a, d
    ld e, b
    adc d
    ld [hl], l
    sbc b
    ld [hl], a
    adc d
    ld d, [hl]
    cp b
    dec sp
    ld l, e
    ld b, a
    or [hl]
    sub l
    xor b
    ld a, [hl+]
    ld a, e
    dec sp
    or h
    adc c
    sub a
    ld e, b
    add [hl]
    ld l, h
    ld c, b
    adc b
    add a
    add [hl]
    sub h
    ld a, d
    ld [hl], l
    and a
    ld e, c
    xor b
    ld l, b
    and a
    sub l
    ld a, d
    ld a, [hl-]
    db $76
    ld a, c
    ld h, [hl]
    adc d
    db $76
    adc b
    and [hl]
    add l
    and h
    sbc b
    ld h, e
    cp b
    ld h, a
    and a
    db $76
    adc e
    ld c, c
    or a
    ld e, d
    sub a
    ld e, d

jr_012_6800:
    ld l, b
    ld b, a
    and a
    ld e, c
    sub [hl]
    sbc b
    sub l
    ld a, d
    db $76
    adc e
    ld h, e
    add $97
    ld l, d
    ld h, [hl]
    ld a, c
    ld [hl], h
    rst $00
    ld d, [hl]
    cp b
    ld e, c
    adc d
    add hl, sp
    add a
    db $76
    call nc, $8988
    ld c, e
    add [hl]
    adc c
    ld h, a
    add l
    add a
    ld l, d
    sub h
    adc e
    ld e, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    adc e
    ld e, b
    sbc c
    ld h, l
    sbc c
    ld c, c
    ld h, [hl]
    add a
    ld a, b
    ld l, b
    adc c
    ld l, b
    or h
    sbc b
    add h
    sbc b
    ld a, b
    ld l, c
    ld d, a
    adc c
    ld [hl], l
    cp b
    ld a, c
    adc b
    ld [hl], l
    and [hl]
    add a
    and a
    ld e, e
    adc b
    inc a
    ld [hl], a
    ld l, b
    or e
    sbc b
    add [hl]
    and a
    ld e, c
    sbc d
    add e
    xor c

jr_012_6853:
    ld h, h
    push bc
    ld a, b
    ld l, d
    ld [hl], l
    and a
    ld e, d
    and [hl]
    ld l, b
    sbc b
    add a
    adc b
    add hl, sp
    add h
    adc c
    ld h, h
    add $79
    ld h, a
    db $d3
    sbc d
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], h
    sbc c
    ld c, b
    add [hl]
    adc b
    ld l, e
    db $76
    or a
    ld l, c
    or a

Call_012_6876:
    ld e, b
    ld a, c
    jr c, jr_012_6800

    ld h, a
    and h
    sbc b
    sbc b
    ld e, d
    or h
    ld l, e
    ld h, [hl]
    sub [hl]
    ld h, a
    ld a, b
    ld [hl], l
    ld a, d
    ld h, a
    adc c
    ld a, b
    ld a, h
    ld e, d
    ld a, c
    ld e, c
    add l
    db $76
    ld c, c
    ld c, c
    and [hl]
    sbc b
    and h
    cp b
    ld l, c
    ld e, c
    adc b
    ld e, d
    ld h, l
    sub [hl]
    ld a, b
    ld h, a
    sub d
    cp d
    xor d
    xor b
    ld l, b
    add a
    ld [hl], a
    adc b

Jump_012_68a6:
    ld h, a
    sub l
    ld l, c
    sub h
    sub [hl]
    sbc b
    ld l, c
    or a
    ld l, l
    ld [hl], h
    ld a, c
    ld h, e
    jp Jump_012_4da5


Call_012_68b5:
    ld c, d
    ld l, c
    ld a, b
    or a
    add [hl]
    sbc b
    jr c, jr_012_6853

    adc b
    ld e, d
    db $76
    ld d, a
    add a
    and l
    ld a, d
    ld l, c
    add a
    or l
    add [hl]
    add a
    ld a, b
    ld e, c
    sbc b
    add a
    add a
    and [hl]
    ld l, d
    ld d, [hl]
    and h
    xor c
    ld a, [hl-]
    sub a
    adc b
    ld e, c
    add a
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    add a
    add [hl]
    xor b
    ld a, $76
    or l
    ld a, d
    ld [hl], a
    and h
    ld l, d
    ld e, b
    ld a, d
    ld e, b
    ld e, d
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld l, c
    ld h, h
    rst $10
    ld c, c
    sub a
    and [hl]
    and [hl]
    add [hl]
    ld a, d
    add hl, sp
    and l
    ld l, c
    add [hl]
    sub a
    sbc b
    ld d, a
    and [hl]
    adc e
    ld h, [hl]
    and a
    ld a, c
    dec sp
    ld h, [hl]
    ld a, c
    db $76
    and [hl]
    sbc b
    ld e, d
    add a
    adc c
    ld c, b
    or l
    sub [hl]
    ld l, b
    add a
    ld e, e
    ld c, c
    sbc b
    ld [hl], a
    ld a, b
    ld l, c
    or e
    sub a
    ld a, b
    adc b
    ld a, c
    ld c, b
    and [hl]
    ld l, e
    ld a, b
    and h
    add a
    ld a, c
    ld a, b
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld l, c
    ld [hl], a
    ld l, d
    ld e, c
    ld [hl], a
    adc c
    ld a, d
    ld h, a
    ld a, c
    add a
    adc b
    and l
    ld l, c
    ld d, [hl]
    and h
    adc b
    ld h, a
    and l
    or [hl]
    sbc b
    ld a, c
    ld l, b
    ld [hl], a
    and [hl]
    sub h
    adc b
    ld l, c
    ld [hl], l
    sub l
    ld l, d
    ld a, b
    sub a
    ld l, c
    and [hl]
    sub l
    sbc d
    ld d, a
    sub [hl]
    sbc c
    add a
    add [hl]
    adc c
    ld e, c
    sub [hl]
    ld a, d
    ld e, c
    ld h, [hl]
    xor d
    inc l
    ld [hl], h
    xor b
    ld a, b
    sub l
    sub l
    ld l, d
    ld h, a
    ld l, c
    adc b
    adc b
    ld [hl], a
    ld a, c
    ld d, a
    sub a
    ld l, b
    sub a
    ld a, b
    ld a, b
    add l
    rst $00
    ld e, h
    sub [hl]
    ld l, e
    ld a, [hl-]
    db $76
    or a
    ld e, b
    or d
    xor c
    ld l, d
    db $76
    sbc b
    ld e, e
    or c
    ret z

    ld e, c
    add l
    ld [hl], a
    ld a, $36
    cp b
    ld l, b
    or l
    sub l
    adc h
    scf
    or [hl]
    ld l, b
    sub a
    ld h, [hl]
    xor c
    ld e, b
    and h
    sbc c
    add [hl]
    ld a, c
    sbc c
    ld l, b
    ld l, b
    ld c, b
    and e
    sbc b
    sub [hl]
    or l
    adc c
    ld e, d
    sub l
    ld l, e
    add hl, sp
    ld h, h
    sub a
    adc b
    adc b
    sub a
    adc c
    and e
    or l
    ld a, c
    ld l, b
    sub l
    ld a, e
    ld c, b
    ld [hl], a
    ld a, b
    ld a, c
    or [hl]
    or [hl]
    ld l, e
    ld d, a
    xor b
    ld e, d
    ld h, [hl]

Call_012_69b7:
    and a
    ld l, c
    ld h, l
    jp Jump_000_399a


    add [hl]
    sbc c
    ld e, b
    ld d, l
    adc d
    ld a, [hl+]
    add l
    sub [hl]
    ld e, c
    db $76
    sbc b
    ld a, b
    call nz, Call_012_69b7
    add a
    sub [hl]
    ld l, d
    ld l, b
    adc b
    ld h, a
    and [hl]
    add a
    ld [hl], l
    cp b
    sbc c
    ld l, b
    sbc c
    ld e, c
    ld [hl], l
    add [hl]
    ld [hl], a
    ld l, b
    add [hl]
    sbc c
    ld h, [hl]
    or a
    xor d
    dec hl
    sub l
    sbc b
    ld d, [hl]
    and [hl]
    ld [hl], a
    ld e, c
    add [hl]
    xor c
    db $76
    adc b
    adc c
    ld e, d
    ld h, [hl]
    or [hl]
    ld c, d
    ld [hl], a
    adc b
    ld e, d
    add [hl]
    adc b
    ld e, b
    sub l
    sbc d
    ld e, c
    and [hl]
    or l
    ld a, b
    ld l, b
    adc d
    ld d, [hl]
    ld a, c
    sub a
    and a
    ld l, b
    and [hl]
    ld a, b
    ld a, c
    ld a, c
    ld a, d
    ld h, [hl]
    sbc b
    ld l, b
    ld [hl], l
    adc c
    ld h, [hl]
    add a
    and l
    ld l, d
    ld d, a
    or a
    ld a, c
    ld l, c
    add [hl]
    ld a, c
    ld h, [hl]
    or a
    ld a, b
    ld a, c
    add [hl]
    sub a
    ld a, c
    ld a, b
    adc c
    ld e, c
    add [hl]
    and a
    ld c, c
    ld a, b
    sub [hl]
    add a
    sbc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld h, [hl]
    sbc c
    add [hl]
    sub a
    ld l, d
    add [hl]
    adc b
    sub a
    adc c
    ld h, a
    ld l, b
    add a
    ld a, c
    ld [hl], a
    ld a, d
    ld [hl], h
    sbc b
    ld h, [hl]
    sub [hl]
    sub l
    adc c
    ld h, a
    add a
    add l
    sub a
    ld a, b
    sub a
    ld a, c
    ld [hl], a
    add a
    sbc b
    ld a, b
    add a
    ld a, b
    ld l, b
    ld l, c
    db $76
    adc b
    add [hl]
    sbc b
    ld a, b
    add a
    add l
    sbc b
    ld a, b
    add l
    and a
    ld a, c
    ld l, b
    adc c
    ld h, [hl]
    and [hl]
    ld a, b
    add [hl]
    and a
    add a
    ld [hl], a
    or h
    adc c
    ld [hl], a
    sub l
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    or [hl]
    sub a
    ld a, d
    ld l, c
    ld e, c
    ld a, b
    ld l, c
    ld c, c
    add [hl]
    adc b
    ld a, b
    add a
    ld a, c
    ld h, a
    sub [hl]
    ld h, a
    ld l, c
    ld a, b
    and [hl]
    adc b
    add h
    call nz, Call_012_5969
    add a
    ld a, c
    ld l, c
    sub a
    ld a, b
    ld a, b
    add a
    ld a, d
    ld d, a
    sub a
    ld l, c
    ld l, b
    sub a
    ld a, c
    add [hl]

Jump_012_6a98:
    call nz, Call_012_5889
    sub l
    ld a, b
    ld e, c
    sbc b
    ld l, c
    add a
    sub e
    xor b
    ld e, b
    sub a
    add a
    sub a

Jump_012_6aa7:
    ld a, c
    ld l, c
    ld h, a
    sub a
    ld h, [hl]
    or h
    sub a
    add a
    ld a, b
    sbc c
    ld e, d
    db $76
    xor b
    ld e, b
    add a
    adc d
    ld e, c
    ld [hl], a
    add a
    ld l, c
    jr c, jr_012_6b35

    ld l, d
    ld e, b
    or [hl]
    sbc b
    adc c
    sub [hl]
    db $76
    sub a
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    and l
    sbc b
    ld e, e
    add l
    sbc b
    add a
    add h
    add a
    ld a, b
    add a
    ld a, b
    ld l, d
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], l
    xor b
    ld l, d
    add l
    add $6a
    ld h, a
    add a
    ld [hl], a
    ld [hl], l
    and a
    ld l, d
    add l
    xor c
    ld l, c
    db $76
    adc b
    ld l, b
    add [hl]
    or [hl]
    ld [hl], a
    ld l, b
    ld a, c
    ld l, d
    sbc b
    adc b
    ld l, c
    sub h
    xor b
    db $76
    add [hl]
    adc c
    ld e, c
    add h
    sbc d
    ld c, d
    db $76
    sbc b
    ld e, d
    ld h, [hl]
    sbc c
    ld c, c
    sub h
    and a
    ld l, e
    ld d, a
    adc c
    ld c, b
    and h
    sbc b
    ld a, b
    add [hl]
    add a
    add [hl]
    adc d
    ld e, b
    sub a
    add a
    ld a, b
    sub h
    or [hl]
    adc b
    add [hl]
    ld l, d
    ld e, d
    ld l, b
    ld a, b
    ld l, b
    ld h, a
    sub [hl]
    ld a, c
    db $76
    add [hl]
    adc d
    ld h, a
    adc b
    ld h, a
    sub [hl]
    and l
    adc c
    ld e, b
    ld a, c
    ld l, d
    ld l, b
    ld [hl], a
    sbc b
    db $76
    and [hl]
    db $76
    add a
    add a
    sub a
    ld a, c

jr_012_6b35:
    ld a, b
    ld [hl], a
    and [hl]
    adc c
    add [hl]
    add [hl]
    ld a, c
    ld d, a
    ld l, b
    ld a, c
    ld e, d
    sub a
    and a
    ld a, c
    add a
    ld a, b
    ld a, d
    ld h, l
    sbc b
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sub [hl]
    sub a
    adc b
    add l
    ld l, d
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    sub [hl]
    sub a
    add a
    adc b
    ld c, d
    ld e, b
    and h
    ld l, b
    ld h, [hl]
    and l
    sbc b
    ld a, c
    ld a, c
    ld l, b
    ld c, c
    ld [hl], a
    ld [hl], l
    ld a, b
    or l
    adc d
    ld l, c
    ld l, b
    sub a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add l
    ld a, c
    sub [hl]
    ld e, e
    ld h, a
    adc d
    ld l, b
    sub a
    sub [hl]
    adc d
    ld c, b
    ld a, c
    ld d, l
    adc b
    add [hl]
    sbc b
    db $76
    sbc b
    ld a, b
    ld a, c

Call_012_6b88:
    db $76
    sbc b
    db $76
    sub [hl]
    add a
    add a
    ld a, b
    ld l, d
    add a
    ld a, c
    ld [hl], a
    and [hl]
    sbc c
    ld a, b
    ld a, c
    ld e, b
    adc b
    ld [hl], a
    add a
    ld l, b
    and l
    adc c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    and l
    adc b
    ld [hl], a
    ld l, c
    add h
    ld a, d
    add a
    adc b
    add [hl]
    ld a, b
    and h
    or a
    add l
    sub a
    ld a, c
    ld e, d
    ld h, a
    adc b
    db $76
    sub [hl]
    sub a
    ld l, h
    ld e, b
    adc b
    ld e, c
    add a
    sub l
    sub a
    and [hl]
    and [hl]
    sbc c
    ld c, d
    ld a, b
    ld c, d
    ld a, b
    add [hl]
    ld a, c
    ld h, [hl]
    and a
    ld l, d
    sub l
    ld a, b
    sub a
    ld e, b
    xor b
    ld e, b
    ld [hl], l
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld e, d
    ld [hl], a
    adc c
    adc b
    add a
    xor b
    ld e, c
    add h
    and a
    ld a, b
    add [hl]
    ld a, c
    ld c, d
    ld l, b
    adc c
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, d
    ld h, a
    adc d
    ld e, b
    ld l, b
    ld [hl], a
    sbc b
    add [hl]
    sub l
    sub a
    sbc b
    ld l, b
    sub a
    ld a, b
    db $76
    and h
    ld a, d
    ld d, a
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    adc d
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld l, c
    add a
    sub a
    add [hl]
    add a
    ld a, d
    ld l, b
    ld h, [hl]
    and l
    ld a, b
    ld a, b
    sub [hl]
    adc e
    ld e, d
    add a
    and a
    ld [hl], a
    add l
    sub a
    ld l, c
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld a, c
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld h, a
    add a
    ld e, c
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    add [hl]
    adc b
    ld d, [hl]
    adc b
    add a
    ld a, c
    db $76
    sbc b
    ld h, a
    adc b
    ld [hl], a
    ld a, d
    ld h, a
    sub a
    ld [hl], a
    ld a, c
    ld l, b
    sbc c
    adc c
    ld a, d
    ld e, d
    add l
    or e
    and a
    ld h, a
    and h
    adc b
    ld e, d
    ld a, b
    adc b
    ld a, c
    sub h
    or [hl]
    add a
    add a
    ld a, c
    ld e, b
    ld l, c
    ld a, b
    ld h, a
    or [hl]
    sub a
    adc b
    add a
    sub a
    ld a, b
    adc b
    ld e, e
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld e, c
    and h
    and a
    db $76
    sub a
    sbc b
    ld l, b
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    sub l
    adc c
    ld c, b
    sbc b
    ld d, a
    add a
    sub a
    adc c
    ld h, [hl]
    and [hl]
    ld a, c
    ld h, a
    sub a
    ld a, b
    ld e, c
    xor b
    ld a, e
    ld e, b
    add a
    adc b
    sub a
    sub l
    sbc c
    ld c, d
    ld a, b
    ld l, b
    add a
    sub [hl]
    xor b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld e, b
    db $76
    ld l, c
    ld l, b
    add a
    and a
    sub [hl]
    add [hl]
    sub a
    add a
    ld a, c
    adc b
    ld e, d
    ld l, b
    sub l
    add a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    and l
    ld a, b
    sub [hl]
    adc c
    ld h, a
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    xor b
    ld l, b
    ld l, d
    db $76
    ld a, b
    sub h
    and a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    sub a
    add [hl]
    adc d
    db $76
    xor b
    ld e, c
    db $76
    adc b
    add a
    add a
    ld e, d
    ld c, b
    and [hl]
    ld a, c
    db $76
    or a
    ld a, b
    ld a, b
    add a
    add a
    ld l, b
    add a
    ld h, a
    ld a, b
    ld h, a
    add a
    ld a, b
    sbc b
    ld a, b
    ld a, d
    ld h, [hl]
    sbc b
    ld l, b
    sub l
    add a
    ld l, b
    sub [hl]
    sbc b
    ld e, c
    sbc b
    adc d
    ld h, [hl]
    and l
    sub a
    ld e, c
    sub [hl]
    ld l, c
    ld [hl], a
    ld a, b
    adc c
    ld l, b
    add [hl]
    ld a, b
    ld a, c
    ld a, b
    sub l
    add a
    add [hl]
    add a
    ld l, b
    ld a, b
    sub a
    sub a
    adc b
    add a
    sub l
    add a
    ld a, b
    db $76
    ld a, c
    ld l, b
    ld a, c
    ld a, c
    ld h, a
    sub a
    sub a
    add [hl]
    sbc b
    ld l, c
    ld l, c
    ld d, a
    add a
    add [hl]
    add a
    sub a
    adc b
    ld a, b
    ld a, d
    add l
    ld a, d
    ld h, a
    sub l
    sub [hl]
    ld l, d
    ld [hl], l
    sbc b
    ld [hl], a
    sbc c
    ld l, c
    ld e, d
    add l
    adc b
    add l
    and [hl]
    ld l, b
    adc c
    ld a, b
    ld a, c
    ld h, a
    add a
    sub l
    xor b
    ld l, c
    ld a, c
    ld l, b
    ld e, c
    ld l, b
    adc c
    ld h, [hl]
    and a
    adc d
    ld l, b
    sub [hl]
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    ld e, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld l, b
    add a
    adc b
    db $76
    adc b
    ld [hl], a
    add a
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    ld l, c
    ld l, d
    ld a, c
    db $76
    sub [hl]
    add [hl]
    sub a
    ld a, b
    ld l, d
    ld e, d
    ld [hl], a
    sub [hl]
    add a
    add a
    adc b
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    ld d, a
    ld h, a
    adc b
    adc b
    add l
    or [hl]
    ld [hl], a
    and a
    ld l, b
    adc b
    ld l, b
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, d
    ld l, b
    sub [hl]
    sbc b
    ld e, d
    add l
    add a
    ld [hl], a
    sub [hl]
    adc b
    add a
    and [hl]
    adc b
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    adc c
    add l
    sub [hl]
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    sbc b
    adc b
    ld e, c
    ld [hl], a
    add a
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add [hl]
    add [hl]
    sbc b
    ld l, c
    ld [hl], a
    db $76
    adc c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    sbc b
    ld h, a
    add [hl]
    ld a, b
    add a
    and a
    ld e, d
    sub [hl]
    sub a
    add a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld d, a
    add a
    ld l, b
    ld [hl], a
    and a
    ld a, c
    ld a, c
    and a
    add a
    sub [hl]
    add [hl]
    ld l, c
    ld c, c
    add a
    adc b
    ld h, a
    sbc b
    add a
    ld a, c
    ld a, c
    ld a, c
    ld a, b
    db $76
    add [hl]
    adc c
    ld l, c
    ld a, b
    db $76
    add a
    sub [hl]
    ld a, e
    ld l, b
    add [hl]
    ld a, b
    ld l, b
    add l
    sbc b
    ld [hl], a
    adc b
    adc b
    ld l, e
    ld [hl], l
    and [hl]
    ld [hl], a
    sub a
    ld [hl], a
    ld a, c
    ld l, c
    ld a, c
    sub a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld a, b
    add [hl]
    sbc b
    ld l, c
    add a
    add [hl]
    adc b
    db $76
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    and [hl]
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    sbc b
    ld h, a
    ld l, b
    ld h, a
    ld l, d
    add l
    and a
    sub [hl]
    ld [hl], a
    sub a
    ld e, h
    ld d, a
    sub a
    ld l, b
    adc c
    db $76
    ld a, d
    ld [hl], a
    adc d
    ld l, b
    sub a
    ld h, a
    db $76
    ld [hl], a
    adc b
    ld h, a
    sbc b
    sub a
    adc c
    add a
    ld a, b
    ld a, b
    db $76
    add [hl]
    sub a
    sbc b
    sub [hl]
    adc b
    ld a, b
    and [hl]
    ld a, c
    ld a, b
    db $76
    ld a, c
    ld e, b
    and a
    ld a, b
    add [hl]
    and [hl]
    sub a
    ld l, c
    and a
    ld [hl], a
    add a
    sub l
    sbc b
    ld e, c
    db $76
    ld a, c
    ld b, a
    sub [hl]
    sub a
    ld l, d
    add [hl]
    adc c
    ld l, b
    sub [hl]
    ld h, l
    sub a
    db $76
    adc c
    ld e, b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    sbc b
    ld l, c
    sbc b
    ld l, d
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc c
    add [hl]
    adc c
    ld [hl], a
    ld a, b
    adc c
    ld e, d
    db $76
    sbc b
    ld l, b
    add a
    add [hl]
    sbc d
    ld e, b
    sbc b
    ld d, a
    sub a
    add [hl]
    sbc c
    ld c, b
    sub [hl]
    ld a, b
    sub [hl]
    add [hl]
    adc c
    ld d, a
    sub a
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    ld l, b
    ld d, l
    sbc b
    ld a, b
    ld [hl], a
    ld a, d
    ld l, b
    ld [hl], a
    sub a
    add a
    and a
    ld l, c
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc d
    ld h, a
    ld l, c
    and a
    ld a, b
    sub l
    adc c
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    add l
    adc b
    add l
    and a
    ld [hl], a
    adc b
    add a
    adc d
    ld e, c
    adc b
    ld l, b
    add l
    adc b
    ld l, b
    ld l, c
    add a
    adc b
    sub l
    adc b
    ld a, b
    ld [hl], a
    ld l, b
    ld l, e
    ld h, a
    add a
    add h
    and a
    ld [hl], a
    ld a, b
    add [hl]
    sbc b
    ld a, b
    sub a
    ld l, b
    ld a, b
    add [hl]
    sbc c
    ld e, b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    adc b
    add [hl]
    add a
    sbc b
    ld h, a
    sub a
    ld a, b
    add a
    sub a
    ld a, b
    adc b
    adc b
    ld l, c
    ld h, a
    adc b
    ld a, c
    add [hl]
    and [hl]
    adc d
    ld e, c
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    ld a, b
    adc b
    adc b
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    add [hl]
    add a
    ld a, b
    adc b
    adc c
    ld a, b
    add a
    ld e, b
    ld l, b
    add [hl]
    add a
    ld h, a
    sub [hl]
    xor b
    ld l, b
    sub [hl]
    ld a, c
    ld l, b
    add [hl]
    sub a
    ld a, b
    add [hl]
    ld a, c
    ld a, c
    sub [hl]
    and [hl]
    ld a, c
    add a
    ld a, b
    ld a, b
    db $76
    sub l
    ld [hl], a
    and l
    sbc c
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    add a
    and [hl]
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld e, b
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    add a
    ld a, c
    ld a, b
    ld a, c
    ld h, a
    add a
    ld a, c
    ld h, [hl]
    sub [hl]
    ld a, c
    ld h, [hl]
    sub a
    adc b
    add [hl]
    and [hl]
    ld a, c
    ld e, c
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    ld l, c
    ld c, d
    ld [hl], a
    add a
    sub a
    sub [hl]
    sbc b
    ld l, b
    add [hl]
    adc c
    ld d, a
    and l
    and a
    ld a, d
    ld l, b
    adc b
    ld a, b
    add [hl]
    sub [hl]
    adc b
    ld e, c
    add a
    ld a, c
    ld [hl], a
    sbc b
    ld l, c
    ld e, b
    sub [hl]
    ld a, d
    ld [hl], a
    add a
    adc b
    xor c
    add a
    sub a
    db $76
    add [hl]
    add [hl]
    add a
    sub a
    ld a, c
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    db $76
    add l
    sub a
    adc b
    add a
    add a
    adc c
    ld a, b
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld l, b
    xor b
    sub a
    adc b
    add a
    add a
    ld l, b
    db $76
    sub [hl]
    sub a
    adc b
    sub [hl]
    adc c
    ld l, b
    sub a
    ld a, c
    db $76
    add l
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, c
    ld l, c
    ld a, c
    ld l, b
    and [hl]
    add a
    ld [hl], a
    adc b
    ld h, a
    sbc c
    ld [hl], a
    add a
    ld l, b
    ld a, b
    sub l
    sbc b
    ld a, b
    add a
    adc b
    adc c
    ld d, a
    adc c
    ld h, a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    sbc b
    ld l, b
    ld l, b
    ld h, a
    add a
    add a
    and l
    adc b
    ld l, b
    add a
    adc b
    ld l, c

jr_012_6faf:
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a

jr_012_6fb5:
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    add l
    add a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    ld a, b
    add a
    ld a, b
    db $76
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    sub [hl]
    add a
    sub [hl]
    sbc b
    db $76
    ret c

    sbc d
    scf
    ld l, c
    ld d, h
    rst $00
    add h
    adc h
    jr c, jr_012_701a

    jr c, jr_012_6fb5

    ld [hl], e
    db $e4
    add l
    ld l, a
    ld a, [bc]
    sbc b
    ld h, [hl]
    sub $a7
    sub e
    ld e, e
    dec sp
    dec sp
    ld a, b
    add a
    call nc, $9997
    add [hl]
    ld c, b
    add e
    sbc c
    ld e, c
    ld h, a
    adc d
    ld a, b
    adc b
    db $76
    sub [hl]
    ld [hl], a
    add l
    sbc b
    ld l, c
    add [hl]
    adc h
    reti


    add l
    and l
    add l
    and [hl]
    ld c, [hl]
    jr c, jr_012_6faf

    ld a, b
    jp Jump_012_79a7


    inc a
    ld e, b
    ld e, b
    sub h
    sub e
    and a
    ld e, c
    ld a, b
    ld e, e
    ld d, a
    and a
    ld a, e
    ld a, c
    adc b

jr_012_701a:
    ld a, d
    ld d, [hl]
    and [hl]
    ld h, a
    sub [hl]
    db $76
    ld h, [hl]
    ld e, c
    ld a, b
    ld l, e
    ld e, c
    and [hl]
    sub [hl]
    jp Jump_012_7ab5


    ld c, e
    ld e, c
    ld a, b
    ld [hl], h
    jp nc, Jump_012_68a6

    ld a, d
    ld l, $37
    call nz, $a5c5
    sbc b
    ccf
    ld a, [hl+]
    ld a, b
    ld [hl], a
    sub l
    sbc b
    add a
    ld e, d
    sub h
    xor b
    ld e, b
    db $76
    ld l, c
    sub [hl]
    xor b
    sbc b
    ld a, b
    ld a, b
    adc b
    ld e, b
    add l
    sub [hl]
    ld e, d
    ld h, [hl]
    adc d
    ld e, c
    sub l
    xor c
    ld d, a
    add a
    ld e, e
    add hl, hl
    or l
    sub a
    push bc
    ld a, c
    ld e, e
    inc a
    dec [hl]
    db $d3
    and [hl]
    db $d3
    xor d
    dec l
    ld d, a
    ld [hl], a
    ld [hl], l
    pop bc
    xor b
    adc b
    adc c
    ld a, h
    ld d, a
    and l
    sub [hl]
    ld [hl], l
    sub l
    ld [hl], a
    ld e, e
    ld h, a
    ld a, e
    ld d, a
    sub l
    adc c
    add l

jr_012_7079:
    adc d
    ld e, d
    ld e, l
    ld d, a
    or l
    sub l
    pop de
    ld c, d
    dec sp
    ld e, b
    ld l, c
    ld [hl], l
    or l
    and a
    ld h, a
    adc c
    ld c, c
    ld l, b
    sub [hl]
    sbc c
    sub [hl]
    adc b
    adc c
    ld l, b
    ld d, l
    sub [hl]
    ld a, [hl+]
    add l
    adc c
    sbc b
    sub a
    ld [hl], a
    sbc c
    ld c, b
    and l
    ld l, c
    ld [hl], a
    and a
    ld l, e
    push de
    or [hl]
    ld e, c
    add h
    adc c
    inc a
    ld c, c
    adc c
    add [hl]
    ret nc

    ret z

    ld c, d
    ld l, c
    ld e, d
    ld l, c
    sub d
    ld h, e
    sbc b
    add [hl]
    ld a, e
    ld a, [hl+]
    db $76
    and l
    add a
    add l
    sbc c
    ld c, a
    ld l, b
    adc c
    ld c, e
    add l
    or [hl]
    sub [hl]
    and d
    cp c
    ld c, c
    ld a, b
    ld e, e
    jr z, jr_012_7079

    sub $96
    sbc c
    ld a, $4b
    ld h, h
    call nc, Call_012_7697
    sbc e
    ld a, [hl-]
    db $76
    db $76
    ld [hl], a
    and e
    adc d
    ld e, e
    ld l, b
    sub [hl]
    add [hl]
    sub l
    and [hl]
    ld l, e
    ld e, d
    ld h, a
    and a
    add [hl]
    sub l
    ld a, c
    ld l, b
    adc b
    ld d, a
    sub l
    sub a
    add a
    ld l, b
    sbc b
    adc d
    ld e, c
    adc b
    adc b
    ld [hl], l
    or [hl]
    sbc b
    ld l, b
    ld a, c
    ld c, d
    ld d, a
    ld [hl], a
    add a
    and h
    rst $00
    ld a, e
    dec sp
    ld l, b
    ld [hl], a
    sub a
    or e
    cp b
    ld [hl], a
    ld a, d
    ld c, e
    ld h, l
    sub a
    ld h, l
    add [hl]
    or [hl]
    ld a, d
    adc b
    ld a, d
    ld e, h
    ld [hl], l
    and l
    sub l
    add [hl]
    cp b
    ld e, d
    ld l, b
    add [hl]
    ld [hl], a
    sub l
    sub h
    ld l, d
    ld [hl], a
    sbc d
    ld l, c
    ld [hl], a
    or [hl]
    ld h, a
    ld l, b
    sub l
    ld c, c
    ld [hl], l
    and a
    adc c
    ld a, b
    ld a, c
    ld a, c
    ld [hl], l
    sub [hl]
    ld [hl], l
    sbc b
    adc d
    ld l, d
    ld l, d
    ld [hl], l
    adc c
    ld l, b
    ld [hl], a
    adc b
    ld h, a
    sub [hl]
    adc c
    ld e, c
    ld [hl], a
    ld h, [hl]
    or [hl]
    sub a
    adc c
    ld c, e
    sbc b
    ld a, d
    add l
    call nz, Call_012_68b5
    ld l, c
    dec sp
    ld d, a
    or [hl]
    sub l
    push bc
    ld h, a
    ld a, c
    ld e, e
    ld e, d
    ld d, a
    sub [hl]
    xor b
    ld [hl], a
    ld c, e
    ld h, l
    adc b
    ld l, b
    ld a, b
    adc b
    ld l, b
    add h
    xor b
    dec sp
    add a
    ld a, d
    ld [hl], a
    and [hl]
    and l
    sub [hl]
    and a
    ld e, h
    ld h, a
    ld a, b
    ld h, [hl]
    and e
    ld a, b
    add a
    adc d
    ld l, c
    db $76
    and a
    add a
    ld a, b
    ld c, h
    ld h, a
    sub a
    sub l
    or [hl]
    db $76
    ld a, c
    ld e, d
    ld h, a
    ld l, b
    sub l
    sub [hl]
    sub a
    ld l, d
    ld l, b
    ld l, c
    add [hl]
    or [hl]
    sub l
    adc b
    ld [hl], a
    adc b
    ld c, d
    ld e, b
    ld l, b
    ld [hl], a
    sub h
    rst $10
    ld h, a
    add [hl]
    ld c, h
    add hl, sp
    add a
    and [hl]
    xor b
    sub h
    sbc d
    jr c, jr_012_720f

    ld l, b
    add [hl]
    and [hl]
    ld a, c
    ld a, b
    and [hl]
    ld l, e
    and a
    sbc b
    add a
    ld a, b
    sub l
    sbc c
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld b, a
    and l
    ld a, e
    ld [hl], a
    add a
    ld a, c
    add l
    sub l
    ld e, e
    ld l, b
    adc c
    ld l, b
    and h
    and [hl]
    ld a, c
    ld e, c
    ld a, b
    ld e, c
    sub [hl]
    and [hl]
    ld a, c
    ld e, c
    ld a, b
    ld l, d
    ld d, [hl]
    or l
    and l
    adc c
    add a
    sbc c
    ld c, c
    db $76
    ld a, b
    ld [hl], l
    and l
    sbc b
    ld e, c
    ld a, c
    ld l, c
    ld h, a
    add [hl]
    ld l, b
    add a
    sub a
    sbc d
    ld c, d
    ld h, a
    ld a, b
    ld h, a
    sub h
    or h
    adc d
    adc c
    ld c, h
    add hl, sp
    and [hl]
    or [hl]
    sub a
    add l
    sub [hl]
    ld c, d
    db $76
    sbc b
    ld a, c
    and [hl]
    sub a
    ld e, c
    ld [hl], h
    ld e, c
    ld e, b
    and a
    adc d
    ld e, b
    ld a, b
    adc b
    ld e, b
    and l
    adc c
    ld a, b
    add a
    ld a, b
    ld h, a
    ld h, a
    sbc c
    xor b
    sub l
    and a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, c
    sub h
    or [hl]
    add a
    add a
    ld a, c
    ld c, d
    ld h, a
    sbc b

jr_012_720f:
    ld h, [hl]
    sub h
    sbc c
    ld c, e
    ld l, b
    adc c
    ld l, b
    or e
    xor b
    db $76
    ld a, c
    ld l, c
    ld l, c
    add [hl]
    and a
    ld l, b
    sub l
    ld d, a
    ld l, d
    ld d, a
    adc c
    ld l, d
    ld [hl], l
    or [hl]
    add a
    ld a, b
    add a
    ld e, h
    ld d, l
    and a
    ld a, b
    sub h
    xor b
    ld a, e
    ld h, a
    sbc b
    ld e, b
    sub h
    and a
    ld l, b
    adc b
    ld a, c
    ld a, b
    add h
    and [hl]
    ld a, c
    add a
    ld a, d
    ld e, c
    and h
    or [hl]
    ld e, c
    db $76
    ld a, c
    ld l, c
    sub [hl]
    sub a
    ld a, c
    add l
    sub a
    ld l, d
    ld [hl], l
    sbc b
    ld e, d
    add [hl]
    adc b
    ld c, b
    and e
    xor c
    add hl, sp
    add [hl]
    ld l, e
    ld e, c
    or h
    rst $00
    ld [hl], a
    ld [hl], a
    ld l, d
    dec sp
    ld h, l
    or l
    ld a, b
    and h
    adc d
    ld c, d
    ld h, a
    sub [hl]
    adc b
    sub l
    adc b
    ld l, c
    ld a, b
    sbc b
    ld a, c
    add [hl]
    add [hl]
    ld e, c
    sub [hl]
    ld a, c
    ld e, d
    adc b
    adc b
    ld h, a
    db $76
    adc b
    ld l, c
    ld a, b
    sub a
    ld a, c
    ld [hl], a
    add [hl]
    adc c
    ld [hl], l
    ld l, b
    ld a, d
    ld l, b
    add [hl]
    add [hl]
    and l
    sbc b
    ld l, d
    ld l, c
    db $76
    sbc b
    add [hl]
    and a
    ld a, d
    ld h, a
    sub a
    ld l, c
    ld h, a
    adc b
    ld l, c
    add [hl]
    adc c
    ld a, c
    ld l, b
    ld h, a
    add a
    add [hl]
    or l
    sbc c
    ld l, c
    adc b
    ld l, c
    or a
    sub l
    adc b
    db $76
    sub a
    ld l, e
    ld e, b
    sub a
    ld a, b
    sub l
    or [hl]
    ld l, c
    ld e, c
    ld [hl], a
    ld a, c
    sub l
    add a
    ld a, c
    ld [hl], l
    ld a, c
    ld d, a
    add a
    sub a
    add a
    ld l, d
    ld [hl], a
    and a
    ld a, b
    sub l
    sbc c
    ld e, c
    add [hl]
    ld e, c
    ld h, a
    sub l
    ld a, c
    ld e, b
    and [hl]
    ld a, c
    ld l, b
    sub [hl]
    adc c
    ld e, b
    ld [hl], a
    sub a
    add a
    sub [hl]
    adc b
    adc b
    ld a, c
    ld l, b
    db $76
    and l
    and [hl]
    adc b
    ld [hl], a
    ld a, e
    ld e, c
    add [hl]
    sub [hl]
    add [hl]
    add [hl]
    adc c
    ld c, d
    ld h, [hl]
    adc d
    ld l, b
    and l
    sbc b
    ld h, a
    add [hl]
    ld a, d
    ld h, a
    sub a
    add a
    add a
    and l
    adc c
    ld d, a
    adc b
    ld a, d
    add [hl]
    sub a
    sub a
    ld a, b
    ld [hl], a
    ld l, d
    ld h, a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, c
    add l
    sbc b
    ld e, b
    sub l
    sbc d
    ld e, b
    add [hl]
    ld a, b
    ld [hl], a
    and a
    add a
    ld a, c
    ld l, b
    add a
    ld [hl], a
    and [hl]
    sub [hl]
    adc b
    ld l, c
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add [hl]
    ld a, c
    ld c, b
    ld a, c
    ld a, c
    sub l
    or [hl]
    adc b
    ld l, b
    ld l, c
    ld a, [hl-]
    sub h
    sub a
    sub [hl]
    and [hl]
    add a
    ld a, c
    ld e, b
    adc c
    ld d, a
    sub [hl]
    sub l
    adc c
    ld a, c
    add a
    ld a, d
    ld h, l
    and a
    ld l, b
    add [hl]
    sub a
    ld l, b
    add a
    adc c
    ld e, d
    db $76
    sub [hl]
    sbc b
    db $76
    sbc b
    ld e, e
    or a
    sub a
    db $76
    add a
    sbc b
    ld l, d
    db $76
    sub a
    ld a, b
    sub [hl]
    add a
    ld a, b
    ld e, c
    sub [hl]
    ld a, c
    db $76
    ld [hl], l
    ld a, c
    ld l, b
    ld a, b
    ld a, d
    ld h, [hl]
    or [hl]
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    ld e, b
    and l
    ld a, c
    ld h, l
    sub a
    ld l, c
    sub a
    sbc b
    ld a, d
    ld h, [hl]
    sub a
    ld h, [hl]
    sub [hl]
    adc b
    ld l, d
    ld l, c
    sub l
    adc b
    ld h, [hl]
    sub [hl]
    adc b
    ld a, b
    sbc b
    ld l, e
    ld d, a
    and [hl]
    ld [hl], a
    add a
    adc b
    ld l, e
    ld e, b
    sub a
    ld a, b
    db $76
    and [hl]
    adc b
    ld l, c
    add a
    ld l, e
    ld d, [hl]
    or l
    ld a, b
    add l
    and [hl]
    adc d
    ld l, b
    ld [hl], a
    ld a, b
    add l
    sub a
    ld l, c
    ld e, d
    db $76
    ld l, b
    db $76
    sub [hl]
    ld a, d
    ld l, c
    add a
    ld a, c
    ld d, a
    and l
    adc c
    ld h, a
    sbc b
    ld a, d
    ld l, c
    sub h
    add a
    add [hl]
    or l
    ld l, e
    ld h, a
    add a
    sbc c
    db $76
    sub [hl]
    ld a, c
    db $76
    add a
    adc b
    ld a, d
    ld h, a
    adc b
    ld a, b
    add l
    sub a
    ld [hl], a
    add l
    adc d
    ld c, d
    sub h
    sbc c
    ld [hl], a
    xor b
    ld l, c
    ld e, b
    add [hl]
    adc b
    ld [hl], a
    sub l
    ld e, c
    ld c, d
    ld [hl], a
    add a
    ld h, [hl]
    or l
    sbc c
    ld l, c
    add a
    ld l, c
    ld a, b
    add [hl]
    sbc b
    ld l, b
    ld [hl], a
    sbc c
    sbc c
    add l
    add a
    ld l, c
    sub l
    adc d
    ld e, b
    sub [hl]
    adc c
    ld [hl], a
    sub [hl]
    adc b
    ld h, a
    sub [hl]
    adc c
    ld l, c
    sub [hl]
    adc b
    ld l, b
    sub l
    adc b
    ld e, c
    ld [hl], a
    adc c
    ld [hl], a
    or h
    xor b
    ld e, b
    add a
    ld l, b
    ld l, c
    ld h, a
    ld [hl], a
    adc b
    add l
    sbc b
    ld c, c
    ld [hl], a
    adc c
    ld e, c
    and e
    xor b
    ld l, b
    add a
    ld a, d
    ld e, c
    add a
    add a
    ld h, a
    add [hl]
    add a
    adc c
    ld l, b
    add a
    ld a, c
    add l
    sbc b
    ld l, b
    adc b
    adc c
    ld a, b
    add [hl]
    and [hl]
    ld e, c
    ld h, a
    adc b
    adc c
    add l
    add a
    ld l, b
    add [hl]
    adc c
    ld d, a
    sub [hl]
    sbc b
    ld l, b
    sub [hl]
    adc b
    ld l, c
    add [hl]
    ld l, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld a, c
    db $76
    and a
    ld e, d
    add [hl]
    adc b
    ld a, b
    add [hl]
    and a
    ld l, d
    ld [hl], a
    ld a, b
    adc c
    ld h, a
    and [hl]
    ld a, b
    add l
    adc c
    ld c, d
    add [hl]
    sub a
    ld a, b
    sub l
    sbc b
    ld l, c
    ld a, b
    ld l, c
    add a
    sbc c
    add [hl]
    ld a, c
    ld d, a
    sub a
    ld l, c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    and [hl]
    adc b
    add [hl]
    adc c
    ld l, c
    ld l, b
    sub [hl]
    ld a, b
    ld [hl], a
    and a
    ld l, b
    ld a, b
    add a
    adc b
    db $76
    sub a
    ld a, c
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    add a
    add a
    ld a, b
    db $76
    sub [hl]

Jump_012_7466:
    adc d
    ld d, a
    xor b
    ld l, d
    db $76
    sub [hl]
    add [hl]
    add a
    add a
    ld a, e
    adc b
    add a
    adc b
    db $76
    sub [hl]
    add a
    ld a, b
    sbc b
    ld e, c
    ld [hl], a
    add a
    ld [hl], a
    sub a
    add a
    sbc b
    ld l, b
    ld h, a
    adc b
    ld h, a
    sub a
    ld a, b
    ld a, b
    sub a
    ld l, c

Call_012_7488:
    db $76
    add a
    sbc c
    add a
    sub a
    ld a, c
    ld l, b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    sbc c
    ld l, c
    ld [hl], l
    ld a, d
    ld d, [hl]
    sub [hl]
    adc b
    add [hl]
    sub a
    adc c
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    add a
    ld a, b
    add [hl]
    adc b
    ld l, b
    sub a
    adc b
    add a
    add a
    sbc b
    ld l, b
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add l
    sub a
    ld a, c
    ld a, b
    ld h, a
    ld a, c
    db $76
    sub [hl]
    ld a, b
    add l
    sbc c
    ld a, b
    sub l
    ld a, d
    ld e, b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc c
    db $76
    add a
    ld l, c
    add a
    sbc c
    ld l, c
    db $76
    adc b
    ld l, b
    and [hl]
    ld a, b
    ld l, b
    adc b
    ld a, c
    ld l, b
    and a
    sbc b
    ld a, b
    add [hl]
    adc b
    ld e, c
    ld [hl], a
    adc b
    ld a, c
    sub l
    sbc b
    ld [hl], a
    add [hl]
    ld a, c
    ld h, a
    add [hl]
    ld [hl], a
    adc c
    add [hl]
    adc b
    ld l, c
    db $76
    adc b
    ld a, b
    add a
    sub a
    ld a, c
    add a
    ld [hl], a
    adc b
    add a
    add [hl]
    ld a, b
    ld [hl], a
    sub a
    ld l, c
    add [hl]
    xor b
    ld e, c
    ld [hl], a
    adc c
    ld e, b
    sub [hl]
    adc b
    ld a, b
    add l
    adc b
    ld l, b
    adc b
    add a
    ld l, c
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld a, c
    add [hl]
    sbc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, c
    db $76
    sbc b
    ld l, c
    add [hl]
    adc b
    ld l, b
    add a
    adc b
    ld l, c
    add a
    add a
    ld [hl], a
    db $76
    adc b
    ld a, b
    ld a, b
    sub a
    ld a, d
    ld h, a
    add a
    ld e, c
    add [hl]
    add a
    ld a, c
    ld [hl], a
    adc b
    adc b
    and a
    and [hl]
    adc b
    ld l, b
    add a
    ld l, e
    ld h, [hl]
    and [hl]
    ld a, c
    add [hl]
    sbc b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    ld h, a
    ld a, b
    ld a, b
    add [hl]
    adc d
    ld e, b
    sbc b
    ld a, d
    ld h, [hl]
    adc b
    ld l, c
    db $76
    sub [hl]
    adc b
    add a
    adc b
    adc c
    add a
    adc b
    ld a, d
    db $76
    sub a
    ld l, c
    ld [hl], a
    sbc b
    ld l, c
    add [hl]
    add a
    ld l, b
    add [hl]
    sub a
    ld l, b
    add [hl]
    sub a
    adc b
    ld l, b
    sub [hl]
    ld a, d
    ld h, [hl]
    sub a
    ld l, c
    add [hl]
    sub a
    ld a, c
    add [hl]
    sbc b
    ld l, c
    db $76
    add a
    adc b
    ld a, b
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    ld l, c
    add l
    and [hl]
    adc b
    ld [hl], a
    sub a
    ld e, c
    db $76
    sub a
    ld [hl], a
    add a
    sub [hl]
    adc c
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    sub a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    sub [hl]
    adc b
    add [hl]
    sub a
    ld a, c
    ld a, b
    sub a
    ld l, c
    db $76
    sub [hl]
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld l, b
    ld l, b
    add a
    adc c
    ld a, b
    add [hl]
    adc b
    ld l, b
    sub a
    ld l, b
    ld h, a
    sub a
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld h, a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    adc c
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, c
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    add a
    ld a, b
    ld l, b
    add [hl]
    adc c
    ld [hl], a
    sub [hl]
    adc b
    ld l, b
    add [hl]
    ld a, b
    ld [hl], a
    add [hl]
    ld l, b
    ld a, c
    ld a, b
    ld a, c
    ld e, c
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    sbc b
    ld h, a
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld e, b
    add [hl]
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add [hl]
    adc c
    ld h, a
    sub [hl]
    sub a
    ld a, c
    add [hl]
    sub a
    ld a, b
    add a
    add a
    adc c
    db $76
    adc b
    ld l, b
    adc b
    adc b
    db $76
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld l, b
    adc b
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
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    add [hl]
    add a
    adc c
    ld e, b
    sbc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    add [hl]
    add a
    ld a, b
    ld l, c
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    ld l, b
    add a
    add [hl]
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    sbc b
    add a
    sbc b
    ld h, a
    add [hl]
    adc b
    ld l, b
    add a
    ld a, b
    adc b
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    add [hl]
    sub a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld l, b
    add [hl]
    adc b
    ld a, b
    add [hl]
    sbc b

Call_012_7697:
    ld [hl], a
    sub a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    add a
    adc b
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    sub a
    adc b
    ld a, b
    add a
    add a
    add a
    sub a
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld l, c
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, b
    sub a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc c
    ld l, b
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    sub a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    db $76
    sub a
    ld a, b
    db $76
    sub a
    add a
    ld [hl], a
    add a
    ld a, c
    db $76
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, c
    ld h, a
    sub a
    ld a, b
    ld a, b
    sbc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, c
    add [hl]

Jump_012_7738:
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    sub a
    adc b
    add a
    ld a, c
    ld l, c
    add [hl]
    adc b
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    sbc b
    ld l, b
    sub a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b

Call_012_7778:
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    sub [hl]
    adc b
    ld l, b
    ld [hl], a
    adc b
    add [hl]
    sub a
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    sub a
    adc b
    ld h, a
    add a
    ld a, b
    add a
    sbc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    db $76
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    add a
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
    add a
    adc b
    ld a, c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld h, a
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    ld a, c
    ld l, b
    sub [hl]
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    add a
    sub a
    add a
    ld a, b
    add a
    add a
    add a
    add [hl]
    adc b
    adc c
    ld l, c
    add [hl]
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld h, a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b

Jump_012_7835:
    sub [hl]
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    add a
    adc b
    add a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    db $76
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    adc b
    ld l, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld l, b
    add [hl]
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    ld a, b
    adc b
    adc c
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    db $76
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    ld l, c
    add a
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld a, c
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    sub a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    adc b
    add a
    add a
    add a
    adc b
    add a
    sub a
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    sub a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    ld c, b
    ld h, b
    inc hl
    add hl, sp
    db $fd
    sbc $c4
    inc b
    ld b, a
    cp $de
    or d
    inc de
    ld e, d
    xor $cc
    add b
    ld b, d
    ld c, l
    db $ec
    add $23
    inc h
    ld h, [hl]
    xor e
    adc c
    ld [hl], d
    ld h, h
    ld b, h
    ld l, b
    cp l
    adc b
    call nc, Call_012_6876
    xor l
    ret z

    xor b
    ld d, [hl]
    ld a, h
    sbc c
    jp hl


    sbc c
    ld a, c
    sub a
    add a
    sbc l
    ld a, b
    ld e, d
    db $76
    ld h, [hl]
    sbc e
    ld d, l
    ld a, e
    xor b
    ld [hl], a
    adc b
    sub h
    ld e, c
    ld a, c
    xor b
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld l, b
    adc c
    add [hl]
    ld h, e
    ld d, l
    ld a, b
    adc b
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld h, a
    ld a, c
    db $76
    ld a, b
    ld [hl], a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    add [hl]
    ld a, b
    ld h, h
    ld d, [hl]
    sbc b
    add [hl]
    ld h, a
    ld [hl], a
    ld d, a
    adc c
    ld h, a
    ld [hl], l
    add a
    ld a, c
    ld a, b
    ld l, b
    db $76
    ld h, a
    ld a, b
    sub a
    add [hl]
    adc b
    ld a, b
    ld h, a
    ld h, a
    adc c
    sbc d
    add a
    db $76
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    xor c
    ld h, a
    adc b
    ld h, a
    sub a
    sbc d
    ld l, b
    ld [hl], a
    ld h, a
    adc d
    adc b
    ld l, b
    adc b
    ld a, b
    ld a, c
    xor b
    add a
    ld a, c
    sbc d
    sub a
    sbc b
    ld [hl], a
    ld a, b
    adc d
    add a
    adc b
    ld [hl], a
    ld l, c
    adc b
    adc c
    add a
    add a
    ld h, a
    adc b

Jump_012_79a7:
    sbc b
    sub a
    ld a, b
    add a
    sbc b
    adc b
    adc c
    adc b
    ld a, c
    ld a, b
    adc b
    add a
    sbc b
    sub [hl]
    add a
    add a
    add a
    adc b
    adc b
    add a
    add a
    ld a, b
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld l, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld l, c
    add a
    add a
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld e, d
    ld h, h
    pop de
    ret nc

    rst $10
    inc a
    dec a
    ld a, [hl-]
    sub [hl]
    add $7b
    ld l, c
    ld l, c
    add a
    sub [hl]
    call nc, $97c5
    ld l, e
    ld e, e
    ld c, h
    ld e, e
    ld l, b
    sub [hl]
    adc b
    ld a, c
    ld l, c
    sub [hl]
    and [hl]
    or l
    sub [hl]
    adc d
    ld c, e
    ld l, b
    sub [hl]
    adc c
    ld l, c
    ld e, c
    ld l, b
    sub h
    jp $a8b4


    ld a, $1d
    add hl, sp
    add l
    and [hl]
    adc b
    ld l, e
    ld e, c
    add [hl]
    and l
    and [hl]
    ld a, d
    ld e, c
    ld h, a
    ld a, b
    ld [hl], a
    db $76
    adc c
    ld h, a
    ld h, [hl]
    sub h
    and l
    ld a, d
    inc l
    dec l
    ld b, a
    or e
    jp nz, Jump_012_6aa7

    ld l, b
    db $76
    sub [hl]
    sub [hl]
    ld l, b
    adc b
    ld e, h
    ld c, b
    add l
    and [hl]
    add l
    sub a
    ld a, c
    ld e, b
    ld a, c
    ld h, a
    sub l
    adc c
    ld l, b
    add a
    add a
    ld h, [hl]
    add a
    ld l, c
    ld a, c
    ld h, a
    add [hl]
    sub [hl]
    add a
    ld l, c
    ld e, c
    ld [hl], a
    sub l
    and [hl]
    ld a, b
    ld a, c
    ld e, e
    xor b
    adc b
    add [hl]
    sub a
    ld a, c
    ld e, e
    ld c, d
    ld l, b
    add [hl]
    and [hl]
    sbc b
    ld l, c
    ld a, b
    ld [hl], a
    sub l
    and [hl]
    ld h, l
    sub a
    ld a, d
    ld e, d
    ld e, c
    add [hl]
    and l
    or [hl]
    ld a, c
    ld e, c
    ld l, c
    ld a, b
    ld [hl], a
    sub [hl]
    and l
    sbc b
    xor d
    ld e, e
    ld d, a
    and l
    or h
    and a
    adc c
    ld c, e
    ld c, c

Call_012_7a89:
    add l
    or h
    and [hl]
    adc b
    ld a, c
    ld l, b
    db $76
    add a
    add a
    ld a, c
    ld l, d
    ld e, e
    ld a, b
    add [hl]
    sub l
    and [hl]
    ld a, c
    ld l, b
    ld e, d
    ld e, c
    ld h, [hl]
    and l
    sub [hl]
    ld l, b
    ld e, c
    ld l, b
    add [hl]
    sub [hl]
    sub a
    ld l, c
    ld c, h
    ld e, d
    ld [hl], l
    pop bc
    ld [c], a
    and a
    ld e, e
    ld c, d
    ld l, c
    ld a, b
    add a
    sub a
    add a
    ld a, b

Jump_012_7ab5:
    adc b
    add a
    add a
    adc b
    ld l, c
    ld l, c
    ld a, b
    add a
    sub [hl]
    and [hl]
    add a
    adc c
    ld l, c
    ld a, b
    ld l, b
    add a
    add [hl]
    sub a
    add a
    ld a, c
    ld l, c
    add [hl]
    sub l
    sub a
    ld a, c
    ld e, e
    ld e, b
    add [hl]
    and l
    and [hl]
    adc c
    ld e, d
    ld l, b
    add a
    sub l
    and a
    adc c
    ld e, d
    ld l, c
    ld a, c
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, c
    ld a, b
    add a
    ld a, b
    add a
    sub a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, c
    ld e, c
    ld h, a
    sub l
    sub [hl]
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub [hl]
    add a
    add a
    add a
    ld a, c
    adc b
    add a
    add [hl]
    sub [hl]
    add a
    add a
    ld l, c
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, c
    db $76
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld e, c
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld l, e
    ld l, b
    sub a
    adc b
    ld a, d
    ld e, c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    ld a, d
    add a
    ld a, b
    ld a, b
    ld l, d
    and a
    sub [hl]
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    ld h, a
    sub [hl]
    adc b
    add [hl]
    ld l, b
    adc b
    ld [hl], a
    add [hl]
    ld d, l
    ld a, d
    ld h, a
    sub l
    ld a, b
    and e
    sbc c
    ld b, a
    adc b
    add [hl]
    ld [hl], a
    and l
    ld l, d
    add a
    ld l, b
    adc b
    adc e
    ld c, c
    and l
    add a
    ld l, b
    db $76
    sub a
    sub [hl]
    ld l, d
    ld c, e
    ld e, b
    ld e, e
    ld d, a
    and a
    ld c, d
    sub [hl]
    sbc b
    ld [hl], a
    db $76
    xor b
    ld h, a
    ld e, [hl]
    ld d, [hl]
    sub a
    sbc b
    add a
    ld a, b
    ld a, d
    ld c, d
    ld c, c
    and h
    sub l
    ld c, b
    and [hl]
    ld e, b

Jump_012_7bd3:
    adc b
    ld l, d
    db $76
    and [hl]
    ld [hl], a
    adc b
    db $76
    or [hl]
    ld e, c
    or e
    and [hl]
    sbc b
    sub a
    ld l, b
    or h
    xor c
    add [hl]
    add [hl]
    adc c
    or e
    adc b
    or h
    sub l
    ld e, h
    sub l
    ld l, b
    add a
    sub h
    adc e
    adc b
    db $76
    ld a, e
    add [hl]
    or e
    and [hl]
    sub a
    ld l, e
    ld h, [hl]
    or l
    ld l, d
    xor b
    ld e, d
    ld e, c
    adc b
    ld a, b
    ld h, [hl]
    and a
    ld h, a
    ld a, e
    ld e, c
    sub l
    ld l, e
    ld e, d
    ld h, a
    ld e, c
    or h
    call nc, $f783
    ld c, h
    ld e, b
    dec sp
    ld d, [hl]
    and a
    ld e, b
    or a
    ld [hl], h
    sbc b
    ld l, d
    add l
    and a
    ld e, b
    add a
    sub [hl]
    jp Jump_012_6a98


    ld e, c
    add a
    and [hl]
    sub e
    xor d
    ld e, l
    and b
    cp e
    ld a, [hl-]
    ld e, c
    ld l, e
    scf
    ld [hl], h
    ld [hl], a
    sbc b
    add [hl]
    ld a, c
    ld l, b
    or h
    sub a
    ld l, d
    ld c, e
    ld e, b
    add [hl]
    or e
    xor b
    ld l, c
    ld [hl], l
    or l
    sbc c
    ld l, b
    ld e, d
    ld b, a
    ld [hl], a
    sub l
    and l
    add a
    db $76
    or a
    ld e, c
    add l
    adc b
    ld l, b
    sub [hl]
    add l
    adc d
    adc b
    ld c, [hl]
    ret z

    ld a, b
    and h
    add [hl]
    or l
    ld [hl], a
    or a
    ld e, e
    add d
    or l
    sbc b
    sub l
    add [hl]
    ld a, c
    add h
    jp nc, $8695

    adc e
    ld l, c
    ld h, l
    or e
    xor d
    inc l
    ld h, a
    adc b
    and [hl]
    add [hl]
    adc d
    add a
    db $76
    adc b
    ld d, [hl]
    and l
    ld a, e
    ld c, l
    ld h, [hl]
    ld l, d
    sub l
    and [hl]
    adc d
    ld [hl], h
    ld a, b
    add a
    and [hl]
    and [hl]
    and e
    sbc e
    add a
    sub [hl]
    adc e
    ld c, d
    ld a, d
    ld c, c
    sub l
    and [hl]
    sub l
    xor d
    ld h, h
    or a
    or h
    db $76
    jp Jump_012_7bd3


    ld d, a
    adc d
    adc b
    inc a
    ld a, b
    ld e, c
    add [hl]
    sub [hl]
    sbc b
    ld l, c
    adc b
    ld a, b
    ld [hl], a
    adc b
    sub l
    ld a, h
    ld h, [hl]
    ld [hl], l
    xor b
    ld a, d
    ld e, c

Call_012_7ca6:
    ld c, d
    adc b
    ld e, c
    and [hl]
    ld l, e
    inc l
    ld l, b
    ld e, b
    sub l
    adc b
    sbc c
    ld c, h
    dec sp
    ld [hl], h
    ret z

    ld c, c
    and [hl]
    ld l, b
    adc b
    or e
    ld a, d
    ld l, c
    ld l, b
    ld l, c
    and l
    sub h
    adc d
    dec sp
    ld c, d
    add c
    rst $10
    sub [hl]
    ld c, d
    ccf
    scf
    ld [hl], a
    and h
    sbc c
    ld [hl], l
    sub a
    ld [hl], a
    add l
    adc e
    ld e, b
    dec a
    ld b, a
    adc d
    ld e, d
    ld c, b
    ld a, c
    ld e, c
    ld h, a
    ld [hl], a
    jp nc, $8887

    ld l, d
    ld l, c
    ret


    ld a, [hl+]
    add [hl]
    ld a, c
    ld l, d
    add l
    sub [hl]
    sub a
    ld l, e
    jr c, @-$59

    sbc b
    db $76
    ld a, c
    ld a, h
    rla
    or e
    ret z

    add hl, sp
    adc b
    ld [hl], a
    ld a, c
    ld l, d
    and [hl]
    ld h, a
    add [hl]
    sub $49
    and l
    ld l, e
    ld [hl], a
    ld d, a
    ld c, d
    ld h, h
    ld l, h
    ld a, c
    ld h, [hl]
    and a
    ld l, c
    ld l, c
    dec sp
    or h
    add l
    ld l, e
    and [hl]
    adc c
    ld e, b
    sbc b
    ld e, b
    rst $00
    ld a, c
    ld d, l
    jp c, Jump_012_7738

    xor c
    ld h, [hl]
    ld a, d
    add h
    ld a, d
    ld a, b
    sub l
    add a
    or [hl]
    sbc e
    ld h, a
    sbc b
    ld e, c
    sub a
    ld l, c
    adc b
    add a
    ld [hl], l
    adc e
    ld h, h
    adc c
    ld [hl], a
    ld a, b
    sub a
    ld a, [hl-]
    add a
    ld l, e
    ld c, c
    ld l, d
    ld h, l
    sub $69
    ld l, b
    adc b
    ld a, b
    ld e, b
    add a
    ld a, c
    ld a, c
    add l
    ld a, b
    adc c
    ld h, l
    sub a
    and [hl]
    ld l, d
    ld e, e
    ld l, b
    ld a, c
    ld d, a
    and l
    sbc c
    ld d, [hl]
    sbc b
    ld a, b
    add [hl]
    ld a, b
    adc c
    ld e, c
    ld l, d
    add [hl]
    ld a, b
    add a
    sbc b
    ld b, a
    adc b
    ld a, d
    ld d, a
    and a
    ld [hl], a
    sub a
    ld l, d
    add [hl]
    ld h, l
    and [hl]
    adc b
    ld h, [hl]
    sbc c
    ld h, a
    add l
    adc d
    ld e, b
    adc c
    ld e, b
    add [hl]
    adc b
    add [hl]
    add a
    adc b
    sbc c
    ld a, b
    ld [hl], a
    ld a, c
    ld h, a
    sub a
    sub a
    ld h, a
    adc b
    ld l, d
    add a
    add a
    ld h, a
    ld a, c
    ld l, b
    sub [hl]
    ld [hl], a
    ld [hl], a
    sbc c
    ld h, l
    and a
    db $76
    ld a, b
    adc b
    ld h, a
    sub a
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    sub [hl]
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    adc c
    ld e, c
    add a
    ld a, b
    ld l, b
    sub a
    ld [hl], a
    sub a
    add a
    adc b
    db $76
    ld a, c
    ld [hl], a
    ld a, b
    adc c
    ld [hl], a
    ld a, b
    sub l
    sub a
    add a
    adc c
    ld l, b
    ld l, c
    adc b
    ld [hl], a
    adc b
    sbc b
    sub [hl]
    adc b
    add a
    ld a, b
    add a
    sub [hl]
    add a
    ld a, b
    and [hl]
    ld a, b
    ld [hl], a

Call_012_7dbc:
    add a
    sub a
    ld a, b
    ld l, b
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, c
    add a
    ld l, c
    ld a, b
    ld a, b
    db $76
    add a
    sub a
    ld [hl], a
    add a
    ld c, d
    sbc d
    or h
    inc hl
    ld d, [hl]
    sbc c
    cp d
    jp z, Jump_012_7466

    adc c
    sbc b
    adc b
    sbc e
    sbc e
    xor b
    and e
    sub [hl]
    inc de
    ld [hl+], a
    ld a, [hl-]
    sbc [hl]
    db $ed
    ret c

    ld de, $d86c
    ld [de], a
    ld a, [hl-]
    db $ed
    add h
    ld c, d
    ld d, a
    jp z, $31c8

    ld c, h
    db $ed
    sub $22
    ld b, [hl]
    ld d, [hl]
    ld h, h
    ld b, d
    sbc h
    cp l
    xor b
    adc d
    ld b, [hl]
    adc c
    cp b
    ld b, e
    ld b, a
    ld h, h
    ld [hl-], a
    xor d
    xor h
    cp h
    sbc d
    xor c
    ld b, h
    ld h, h
    ld b, h
    inc sp
    ld a, [hl-]
    sbc d
    add a
    add a
    ld [hl], a
    db $dd
    db $eb
    xor l
    call Call_000_1232
    dec sp
    sbc $70
    ld l, [hl]
    add b
    ld c, c
    reti


    call z, Call_012_7488
    ld [de], a
    adc e
    sbc $92
    dec d
    and [hl]
    ld e, b
    sub h
    inc d
    and [hl]
    ld d, [hl]
    push de
    sbc [hl]
    call c, Call_012_52cb
    ld c, b
    ret z

    ld [hl], $a6
    ld [hl], $db
    ret


    ld b, d
    ld c, [hl]
    ld [hl], d
    rla
    sbc d
    db $ed
    ld d, c
    adc a
    sub c
    jr @-$21

    and $13
    xor l
    add $44
    ld c, c

jr_012_7e4d:
    or l
    ld [hl+], a
    ld [hl+], a
    adc $c8
    ld l, b
    db $dd
    ld d, l
    sub l
    inc de
    adc c
    and a
    ld [hl+], a
    ld a, l
    sbc $83
    inc hl
    adc b
    ld a, b
    inc l
    rst $20
    add hl, de
    res 0, l

jr_012_7e65:
    inc hl
    ld h, a
    ld l, h
    db $db
    ret z

    ld hl, $fc2a
    call $a883
    ld h, c
    sbc [hl]
    ld h, d
    ld [hl], $9e
    sub h
    ld sp, $e89d
    dec d
    sbc $96
    ld b, d
    jr z, jr_012_7e4d

    and l
    push de
    inc sp
    sbc l
    jp c, Jump_012_7835

    sub l
    inc [hl]
    sbc l
    jp c, Jump_000_2263

    jr @-$20

    sub e
    ld l, h
    sbc l
    sub c
    ld [hl+], a
    ld a, e
    or [hl]
    jr z, jr_012_7e65

    xor c
    sub l
    ld d, l
    ld b, a
    cp d
    add [hl]
    xor e
    add a
    ld h, [hl]
    ld e, d
    ld b, e
    ld c, e
    ld [$9c42], a
    or a
    add [hl]
    inc de
    xor h
    ld h, b
    sbc l
    jp c, $2742

    and l
    ld a, h
    add $6a
    ld [hl], c
    ld e, l
    db $d3
    inc a
    call nz, $de39
    ld d, c
    ld e, d
    sub e
    inc hl
    adc h
    and h
    ld a, h
    sub d
    scf
    xor l
    sbc $82
    dec [hl]
    ld l, c
    jp z, Jump_000_3177

    ld a, [hl-]
    sub l
    adc l
    xor b
    xor d
    ld h, d
    ld c, b
    xor c
    adc d
    jp z, $8768

    ld d, h
    and [hl]
    ld [hl], $b8
    ld h, a
    sbc d
    ld h, h
    adc l

jr_012_7edf:
    cp b
    ld b, d
    adc l
    rst $00
    ld [hl-], a
    ld b, [hl]
    adc e
    res 6, l
    dec h
    ld e, b
    xor e
    or l
    inc h
    sbc b
    adc e
    push bc
    ld e, b
    or h
    jr z, jr_012_7edf

    ld h, l
    add a
    add l
    ld e, e
    and l
    ld c, b
    jp c, Jump_012_4575

    sbc c
    ld l, b
    xor c
    and l
    ld [hl], a
    ld l, c
    bit 2, l
    sbc c
    ld a, b
    ld h, h
    ld l, d
    xor b
    ld d, a
    sub a
    adc c
    cp b
    ld d, [hl]
    adc b
    cp b
    ld [hl-], a
    ld l, d
    and a
    ld a, c
    sbc b
    cp h
    xor b
    ld b, l
    ld d, l
    ld e, e
    ret


    ld a, b
    and l
    ld b, l
    ld l, c
    ld e, c
    ld l, b
    adc b
    ld a, b
    db $76
    adc c
    add [hl]
    ld l, b
    sub l
    ld e, d
    xor b
    ld h, a
    ld h, a
    sub a
    ld l, b
    add h
    ld a, c
    cp d
    ld [hl], l
    ld [hl], a
    adc c
    adc b
    db $76
    ld h, [hl]
    adc c
    and a
    ld h, [hl]
    sbc c
    add a
    ld d, l
    ld a, c
    ld [hl], a
    adc b
    sbc b
    adc b
    sbc d
    sub h
    dec [hl]
    adc c
    xor d
    adc b
    ld [hl], l
    ld h, a
    sbc c
    ld a, b
    db $76
    ld l, c
    db $76
    sbc e
    xor c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    sub [hl]
    ld d, [hl]
    sbc c
    ld a, b
    adc b
    adc c
    add [hl]
    ld e, b
    sub a
    ld e, b
    ld c, c
    add a
    ld l, b
    xor c
    ld h, [hl]
    sbc d
    sub [hl]
    ld d, l
    ld e, b
    xor c
    ld d, [hl]
    sbc b
    ld a, b
    xor c
    ld a, b
    sbc b
    add [hl]
    ld a, c
    ld a, b
    adc b
    ld h, l
    sbc d
    ld [hl], l
    ld l, b
    add a
    sbc e
    add a
    ld h, [hl]
    adc c
    ld h, l
    adc b
    sbc b
    ld a, b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld l, c
    xor c
    db $76
    db $76
    sbc c
    db $76
    db $76
    ld a, d
    ret z

    ld d, [hl]
    adc b
    ld h, a
    ld h, a
    sbc d
    and a
    ld h, a
    add [hl]
    db $76
    sbc c
    ld [hl], a
    ld a, c
    and a
    ld d, l
    db $76
    sbc c
    sub l
    ld a, c
    xor b
    ld d, [hl]
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld l, b
    adc b
    ld [hl], a
    sbc d
    add [hl]
    ld d, a
    ld [hl], a
    adc b
    add a
    sbc b
    ld [hl], a
    ld h, a
    sbc b
    adc b
    ld a, c
    add a
    ld h, a
    ld a, b
    ld a, b
    adc b
    add a
    adc c
    sbc b
    add [hl]
    ld a, b
    add a
    ld d, a
    adc d
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld h, a
    add a
    sbc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    add a
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    add a
    db $76
    adc c
    sub [hl]
    ld l, b
    adc c
    ld a, b
    add a
    ld a, b
    db $76
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
