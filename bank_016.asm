; disasSembly of "lsdj.gb"
SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld h, b
    ld b, b
    ret nz

    ld b, c
    ld d, b
    ld b, h
    ldh a, [rLYC]
    jr nz, jr_016_4059

    nop
    ld d, e
    ld b, b
    ld d, [hl]
    sub b
    ld l, a
    db $10
    ld [hl], d
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
    ld c, b
    ld d, h
    dec l
    ld c, h
    ld d, h
    dec l
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
    ld d, h
    ld c, a
    ld c, l
    jr nz, jr_016_4077

    jr nz, jr_016_4059

jr_016_4059:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6748
    db $76
    add a
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld h, l
    ld h, l
    ld [hl], l
    ld a, b
    cp c
    adc e
    jp z, $ffff

    rst $38
    rst $38

jr_016_4077:
    rst $28
    rst $38
    cp $ee
    xor $ed
    db $dd
    res 7, e
    ld a, [bc]
    xor d
    sbc c
    sbc c
    add a
    ld h, l
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    db $10
    ld hl, $3322
    inc [hl]
    ld d, l
    ld h, a
    sbc d
    cp e
    rst $08
    rst $28
    rst $38
    rst $08
    rst $38
    rst $38
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
    rst $28
    sbc $dc
    ld c, h
    cp e
    cp d
    xor d
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld d, h
    ld d, h
    dec [hl]
    inc [hl]
    inc bc
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld hl, $1011
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    stop
    ld [de], a
    ld [de], a
    ld [hl+], a
    inc [hl]
    inc [hl]
    ld d, l
    ld d, l
    ld d, a
    ld hl, sp+$78
    adc c
    sbc c
    xor d
    xor e
    cp e
    call z, $eedc
    xor $ee
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    rst $28
    sbc $dd
    set 1, e
    cp d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, h
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    ld d, h
    ld d, h
    ld b, l
    ld d, l
    ld b, l
    ld b, h
    ld d, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld b, h
    ld b, l
    ld b, l
    ld b, e
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, e
    ld b, e
    inc [hl]
    inc hl
    inc sp
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld sp, $3232
    inc h
    inc h
    inc sp
    and e
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    sbc c
    xor c
    xor c
    xor d
    xor e
    xor e
    xor e
    cp e
    cp h
    xor h
    xor e
    set 1, e
    jp z, $bbbb

    res 5, h
    xor e
    cp e
    cp e
    sbc e
    xor d
    cp e
    cp d
    xor c
    xor d
    sbc d
    xor d
    sbc d
    sbc d
    xor c
    sbc d
    sbc c
    xor b
    xor c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    sbc c
    adc b
    adc b
    ld a, c
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc c
    adc b
    sub a
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc c
    adc c
    sbc c
    adc c
    adc b
    sbc c
    sbc b
    adc c
    sbc b
    ld a, b
    sbc b
    adc b
    sbc c
    ld a, c
    adc b
    add a
    sub a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rrc e
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $10
    ld l, h
    rst $38
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


    call z, $dbdc
    dec bc
    sub a
    jr nc, jr_016_41e4

jr_016_41e4:
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
    or b
    inc b
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    add a
    ld b, [hl]
    ld [hl], a
    jr nc, jr_016_4206

jr_016_4206:
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
    ldh a, [rP1]
    ld [bc], a
    ld b, h
    ld [hl], a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    cp $ee
    sub $14
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
    ld bc, $43f2
    ld b, b
    inc h
    inc h
    ld l, b
    adc c
    sub a
    ret


    and a
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp h
    db $76
    inc [hl]
    ld b, b
    stop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ld bc, $4443
    add l
    adc c
    db $db
    ld l, l
    ld sp, hl
    cp $ee
    rst $18
    rst $28
    rst $38
    rrca
    rst $38
    xor $ff
    xor $ef
    db $fc
    adc b
    rst $10
    ld a, c
    adc b
    ld h, l
    ld b, d
    ld de, $0010
    pop bc
    nop
    nop
    ld hl, $0226
    inc h
    ld b, c
    add a
    xor b
    adc c
    adc e
    xor l
    reti


    xor [hl]
    bit 5, l
    cp [hl]
    cp c
    ret c

    jp hl


    sbc d
    db $dd
    rst $28
    call $bdfc
    ld [$8bca], a
    ld l, d
    add a
    add e
    ld b, d
    ld [hl], c
    ld [de], a
    jr nc, jr_016_4296

jr_016_4296:
    nop
    ld bc, $0312
    inc de
    db $76
    ld b, h
    adc b
    xor c
    xor d
    adc d
    xor e
    call c, $dcff
    xor c
    xor [hl]
    rst $38
    call z, $aab7
    xor c
    adc $76
    adc c
    ld e, c
    add [hl]
    adc c
    ld [hl], l
    ld b, l
    ld b, l
    ld e, c
    inc h
    add [hl]
    inc b
    ld d, l
    ld b, d
    db $76
    db $76
    dec [hl]
    ld b, e
    ld l, b
    adc b
    ld [hl], l
    add a
    ld a, d
    add a
    sbc e
    cp h
    sub a
    ei
    call c, $9b8d
    cp e
    add $97
    adc l
    ld l, d
    sbc b
    sub a
    db $76
    sub a
    ld b, [hl]
    ld a, c
    ld h, [hl]
    ld b, e
    ld h, a
    ld b, a
    dec d
    ld b, d
    ld b, e
    ld h, h
    ld [hl], h
    xor c
    db $76
    ld c, b
    adc d
    ld a, b
    xor b
    ld a, b
    jp z, $ac7b

    ld a, c
    xor c
    reti


    call z, $97bd
    xor d
    xor c
    xor b
    ld [hl], h
    ld d, e
    ld h, a
    ld c, c
    ld h, h
    ld b, l
    ld h, a
    ld d, e
    ld h, l
    ld [hl], a
    ld d, a
    ld [hl], a
    ld [hl], l
    sbc c
    add [hl]
    ld l, c
    adc b
    adc d
    adc c
    xor e
    or a
    ld l, b
    ld a, b
    adc b
    add [hl]
    and a
    ld l, b
    add [hl]
    ld a, d
    ld l, d
    ld h, a
    ld l, c
    ld l, c
    or a
    adc b
    add a
    add a
    ld [hl], a
    xor b
    add [hl]
    adc b
    ld [hl], a
    adc b
    sbc b
    ld [hl], h
    and a
    db $76
    ld [hl], h
    ld h, [hl]
    db $76
    ld e, b
    ld d, a
    add [hl]
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], l
    xor d
    ld [hl], a
    add a
    sbc d
    sub a
    adc e
    ld l, h
    sbc b
    sub a
    adc b
    adc e
    sbc b
    add a
    ld [hl], a
    ld l, c
    db $76
    add a
    sub [hl]
    db $76
    ld d, h
    ld e, b
    jr c, jr_016_43ba

    ld d, e
    sub h
    ld [hl], a
    adc b
    ld a, b
    ld e, b
    adc b
    xor b
    sbc c
    adc b
    ld l, b
    adc c
    xor e
    add a
    sbc c
    sbc d
    cp b
    ld a, c
    adc b
    adc b
    adc b
    db $76
    sbc b
    ld a, b
    ld h, a
    ld l, b
    ld a, b
    add [hl]
    ld h, [hl]
    ld a, b
    ld h, e
    ld h, l
    ld h, a
    ld [hl], a
    ld l, b
    db $76
    ld l, b
    ld l, c
    adc b
    add a
    db $76
    sbc c
    adc c
    adc b
    sub a
    sbc d
    sub a
    sbc d
    adc b
    sub a
    adc b
    sbc b
    sub a
    sub a
    add a
    xor c
    ld a, c
    ld e, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    db $76
    db $76
    ld d, [hl]
    ld h, a
    ld h, l
    add a
    ld h, l
    ld [hl], a
    ld d, a
    ld d, [hl]
    ld a, b
    ld h, a
    add a
    add a
    and [hl]
    sbc c
    xor c
    adc d
    sbc b
    adc c
    sbc c
    sbc b
    sub a
    ld a, b
    adc b
    sub a
    sbc b
    ld a, b
    adc b
    ld h, a
    ld a, c
    ld h, a
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    add a
    ld [hl], a
    ld d, l
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    sub a
    sbc b
    adc c
    sbc c
    adc c

jr_016_43ba:
    sbc c
    ld a, d
    adc b
    adc b
    sub [hl]
    ld a, b
    ld h, [hl]
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    add a
    ld a, b
    ld [hl], a
    add a
    ld e, c
    add a
    db $76
    ld h, a
    add a
    ld [hl], a
    ld l, b
    add a
    ld [hl], a
    adc b
    ld a, b
    sub a
    adc b
    add a
    adc c
    adc c
    sub a
    sbc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    sub a
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    ld l, b
    ld h, a
    add a
    ld e, b
    ld a, b
    db $76
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc c
    sbc b
    ld [hl], a
    adc c
    sbc b
    add a
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    sub a
    adc b
    add a
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    add a
    sub a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc c
    adc b
    ld a, b
    ld a, b
    sbc b
    add a
    adc b
    ld a, b
    ld [hl], $89
    ld a, b
    cp h
    adc c
    ld l, d
    sbc h
    cp d
    xor b
    ld l, h
    ld a, d
    add h
    ld d, a
    ld b, d
    ld h, d
    dec h
    and [hl]
    ld a, c
    add l
    and a
    xor e
    sub a
    adc e
    sbc e
    sbc d
    add a
    call nc, $8764
    ld h, [hl]
    ld a, e
    ld l, c
    ld l, b
    xor c
    ld [hl], l
    ld [hl], h
    ld [hl], a
    ld e, b
    ld l, b
    adc l
    add hl, sp
    or h
    sub [hl]
    ld h, a
    sub h
    ld a, c
    ld l, c
    ld a, c
    ld [hl], a
    ld [hl], e
    sub a
    sub [hl]
    cp c
    xor b
    ld d, [hl]
    and [hl]
    ld d, [hl]
    adc c
    xor b
    xor d
    adc c
    sub l
    and h
    and a
    ld a, c
    add a
    ld h, a
    ld h, l
    add a
    ld a, c
    ld [hl], l
    adc c
    ld a, d
    sub a
    and a
    and l
    adc d
    sbc e
    ld e, d
    ld a, b
    sub [hl]
    or a
    sub a
    sbc b
    sub a
    ld [hl], l
    ld a, [hl+]
    ld d, h
    ld [hl], a
    add a
    ld l, b
    adc b
    ld h, l
    sub h
    push de
    sub a
    sbc d
    cp b
    ld e, l
    inc a
    ld b, l
    sbc b
    sub l
    or l
    sbc b
    db $76
    sub [hl]
    ld l, h
    ld l, d
    ld a, c
    ld a, c
    ld h, l
    and a
    ld a, b
    adc c
    adc b
    sbc e
    ld a, c
    add [hl]
    sub [hl]
    sub h
    or h
    adc b
    ld e, b
    add hl, sp
    ld c, e
    ld c, b
    and l
    add a
    add a
    ld [hl], a
    add h
    ld a, d
    add a
    adc d
    ld l, d
    adc d
    and l
    sbc b
    and l
    sub a
    ld a, d
    ld l, c
    db $76
    db $76
    add [hl]
    add a
    adc b
    ld l, c
    ld c, d
    ld e, c
    ld d, a
    db $76
    and h
    or h
    or a
    xor c
    ld e, l
    ld c, d
    ld d, a
    ld l, b
    add [hl]
    or h
    and l
    sub [hl]
    ld e, d
    ld e, e
    dec sp
    ld c, c
    add l
    sub e
    or a
    ld l, b
    ld l, c
    ld c, h
    ld a, b
    ld a, b
    ld a, c
    ld d, l
    adc b
    ld [hl], a
    ld a, c
    db $76
    adc b
    add a
    and h
    sbc c
    ld d, a
    add [hl]
    ld a, c
    ld d, [hl]
    add [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld a, c
    ld e, d
    adc d
    ld a, c
    ld e, b
    add l
    and [hl]
    and l
    sub [hl]
    add a
    ld l, c
    ld l, b
    ld e, c
    ld [hl], a
    db $76
    xor b
    add a
    ld e, c
    ld [hl], a
    ld h, [hl]
    sub a
    ld a, b
    adc b
    add [hl]
    ld a, b
    ld l, b
    add a
    sub [hl]
    adc b
    add [hl]
    add l
    adc c
    ld a, b
    ld l, c
    ld a, d
    ld [hl], a
    and l
    sub a
    add a
    add a
    ld a, c
    ld e, c
    ld l, b
    ld e, b
    ld a, b
    ld h, [hl]
    and [hl]
    adc b
    adc b
    ld l, c
    ld d, a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    db $76
    sbc b
    ld a, b
    adc c
    add a
    add [hl]
    sub [hl]
    add [hl]
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld a, b
    sub [hl]
    adc b
    adc c
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    ld l, c
    ld h, a
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld a, c
    ld a, c
    ld l, c
    ld a, b
    add a
    add [hl]
    add a
    adc b
    ld l, c
    ld l, c
    ld e, c
    ld h, a
    add a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld a, b
    ld h, a
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    add a
    adc b
    adc c
    ld a, c
    adc b
    ld a, b
    adc b
    ld l, b
    db $76
    add [hl]
    adc b
    adc c
    ld l, c
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld h, [hl]
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sub a
    adc b
    sub [hl]
    add a
    add a
    ld a, c
    ld a, c
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld l, d
    ld a, b
    db $76
    sub [hl]
    add a
    ld [hl], a
    adc b
    ld l, d
    ld a, c
    ld h, a
    ld l, b
    add a
    adc c
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    add [hl]
    add [hl]
    adc b
    ld a, c
    ld l, b
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    sub a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    ret c

    sbc e
    sub a
    ld h, [hl]
    ld h, h
    ld d, a
    ld d, l
    ld h, e
    add e
    ld a, b
    sbc c
    adc c
    sbc c
    ld a, b
    adc b
    ld d, a
    sbc b
    add [hl]
    add [hl]
    ld h, a
    add a
    add [hl]
    ld d, a
    ld l, b
    sub a
    adc d
    sbc d
    xor c
    and a
    ld [hl], h
    ld d, d
    and l
    ld h, a
    ld l, b
    ld a, b
    ld a, e
    cp e
    ret z

    xor b
    adc b
    ld d, [hl]
    ld e, b
    ld l, d
    ld a, c
    add a
    add [hl]
    and a
    adc b
    add a
    ld [hl], a
    ld d, [hl]
    ld l, c
    ld e, c
    ld a, d
    adc c
    adc c
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], l
    ld [hl], a
    ld a, c
    sbc b
    ld a, c
    sbc c
    ld a, b
    and l
    add [hl]
    add l
    ld [hl], e
    sub a
    ld e, d
    ld l, d
    ld a, c
    ld l, d
    add a
    ld [hl], a
    ld a, b
    ld d, [hl]
    sbc e
    ld d, a
    add a
    ld h, [hl]
    db $76
    sub l
    add a
    sbc d
    sbc b
    ld a, b
    ld a, c
    ld a, e
    ld l, b
    ld h, h
    ld h, a
    ld a, b
    ld [hl], a
    or a
    sbc c
    adc b
    db $76
    ld a, d
    sbc c
    ld a, b
    ld l, b
    ld e, b
    sub [hl]
    and a
    and a
    add h
    adc b
    xor b
    ld e, d
    ld l, c
    adc e
    adc b
    db $76
    and [hl]
    and [hl]
    add a
    ld d, a
    ld e, c
    ld h, a
    ld l, b
    ld a, b
    and a
    add $96
    and [hl]
    ld h, a
    add [hl]
    ld l, b
    ld [hl], a
    ld l, b
    sub a
    ld l, b
    adc e
    sbc d
    ld a, c
    ld l, b
    ld h, [hl]
    sub h
    ld h, h
    ld [hl], l
    xor b
    adc e
    ld l, d
    adc e
    sub a
    ld h, [hl]
    sub l
    add l
    add [hl]
    ld h, a
    ld a, e
    ld a, d
    sbc c
    db $76
    sub l
    ld [hl], h
    ld e, b
    add a
    sbc d
    ld a, d
    ld a, c
    sbc c
    sbc d
    ld a, b
    ld h, [hl]
    ld h, [hl]
    add [hl]
    add l
    adc b
    sbc c
    adc c
    cp b
    ld e, d
    ld l, b
    ld d, a
    ld d, a
    ld e, c
    or l
    or [hl]
    add $96
    adc c
    ld l, c
    ld c, c
    daa
    add hl, sp
    ld h, l
    db $76
    cp b
    sbc c
    or l
    ld h, a
    ld h, [hl]
    ld h, l
    ld l, b
    ld e, b
    ld l, c
    ld [hl], a
    xor b
    sbc b
    or [hl]
    or [hl]
    add a
    ld a, c
    ld e, b
    ld e, c
    ld c, b
    ld h, a
    ld [hl], a
    ld h, l
    db $76
    and a
    xor c
    ld a, c
    ld c, d
    ld e, b
    ld l, c
    ld h, a
    add l
    add h
    ld h, l
    add l
    adc c
    adc d
    ld a, b
    adc b
    adc b
    sub a
    ld [hl], l
    ld h, a
    ld b, [hl]
    ld d, a
    adc b
    adc c
    sub a
    sbc c
    ld a, e
    ld l, c
    ld h, a
    ld d, a
    ld h, [hl]
    sub l
    or [hl]
    sub a
    ld a, d
    ld l, d
    ld e, c
    ld e, b
    add a
    add [hl]
    sub l
    and [hl]
    add a
    ld [hl], a
    db $76
    ld [hl], a
    adc c
    adc c
    sbc b
    ld l, b
    ld l, b
    ld b, a
    db $76
    sub [hl]
    sbc c
    sub h
    or [hl]
    add a
    ld a, c
    ld [hl], a
    ld c, e
    ld e, b
    add a
    sub [hl]
    add [hl]
    push bc
    sub l
    adc b
    ld h, [hl]
    ld a, c
    ld c, c
    ld d, [hl]
    and [hl]
    add a
    sub l
    ld a, b
    sbc b
    adc c
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    sub l
    sbc b
    add h
    ld d, [hl]
    ld d, h
    ld d, [hl]
    cp b
    adc c
    xor h
    ld l, e
    cp e
    sbc b
    sbc b
    add e
    ld b, e
    ld [hl], e
    add hl, sp
    ld l, b
    adc e
    sbc h
    sbc d
    xor d
    ld a, c
    add [hl]
    sub l
    ld d, h
    ld d, h
    ld h, h
    ld e, b
    adc e
    xor h
    cp l
    ld a, e
    add [hl]
    ld d, [hl]
    and l
    ld [hl], d
    ld [hl], h
    ld h, e
    adc e
    adc l
    sbc [hl]
    sbc c
    ld e, d
    ld h, l
    ld d, h
    and l
    ld a, b
    and a
    add a
    adc d
    ld e, e
    adc d
    ld d, [hl]
    adc b
    ld [hl], l
    xor c
    ld a, b
    add a
    ld h, a
    ld l, d
    ld d, [hl]
    adc b
    ld a, c
    adc b
    and a
    sbc c
    add h
    add [hl]
    ld l, b
    ld l, b
    rst $00
    ld e, c
    ld l, c
    ld l, b
    and a
    cp b
    or a
    sub l

jr_016_4768:
    ld e, b
    ld b, a
    ld b, a
    ld e, b
    ld e, b
    ld [hl], a
    or a
    ret


    ld a, b
    sub a
    add [hl]
    inc [hl]
    db $76
    ld c, b
    ld a, d
    ld a, d
    xor e
    sub a
    adc b
    sub l
    add [hl]
    sub l
    ld e, b
    and [hl]
    ld l, b
    xor d
    ld l, e
    xor d
    ld e, b
    ld d, a
    ld d, l
    and [hl]
    and h
    rst $00
    ld a, c
    sbc c
    sbc b
    ld a, d
    ld d, a
    ld h, a
    add l
    ld e, b
    sub a
    xor b
    xor c
    sbc c
    sbc b
    ld a, b
    ld d, a
    ld d, [hl]
    ld d, a
    ld [hl], a
    sub a
    cp b
    sbc b
    sbc c
    sub a
    adc b
    ld d, [hl]
    ld d, [hl]
    ld a, b
    ld a, c
    cp b
    or a
    or [hl]
    add [hl]
    adc d
    ld c, b
    ld a, b
    ld l, b
    ld c, b
    sub h
    db $76
    and a
    ld a, b
    sub a
    ld l, c
    adc b
    ld h, [hl]
    cp b
    ld a, c
    sbc c
    sub l
    sbc b
    ld [hl], l
    ld h, a
    ld h, [hl]
    jr c, jr_016_4768

    ld a, c
    ld a, d
    and a
    ret z

    and a
    sub [hl]
    db $76
    ld h, a
    ld l, b
    ld l, b
    adc c
    ld a, b
    ld l, e
    adc b
    sub a
    ld d, [hl]
    sub l
    and l
    add [hl]
    ld [hl], a
    ld l, b
    ld c, e
    db $76
    ld l, d
    sbc d
    ld h, a
    or l
    sub l
    sub l
    sub h
    adc b
    sbc d
    ld l, d
    ld e, b
    ld c, b
    ld [hl], a
    add l
    and [hl]
    xor b
    xor b
    sbc c
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, h
    ld [hl], a
    ld l, b
    ret z

    ret c

    xor c
    add a
    add e
    ld h, a
    ld c, d
    ld b, a
    ld e, d
    ld h, l
    xor b
    add $b9
    sub a
    ld c, d
    and a
    ld a, [hl-]
    ld l, b
    db $76
    and a
    add [hl]
    sbc b
    add h
    ld [hl], l
    add l
    adc c
    ld a, b
    ld l, b
    sub a
    or a
    sub a
    sub l
    db $76
    ld b, l
    ld b, a
    inc l
    ld l, d
    cp e
    sbc b
    and l
    and [hl]
    db $76
    ld [hl], a
    ld h, a
    sbc b
    ld l, c
    ld a, b
    and a
    xor c
    add [hl]
    sub [hl]
    ld [hl], a
    add a
    add l
    sbc b
    adc c
    sbc c
    xor b
    adc b
    ld h, [hl]
    ld [hl], a
    ld d, a
    ld [hl], h
    ld h, [hl]
    ld a, d
    cp c
    xor d
    adc d
    ld e, b
    sub l
    ld d, [hl]
    inc [hl]
    add h
    sbc b
    ld a, d
    cp b
    reti


    sbc e
    ld [hl], a
    or a
    ld c, b
    ld b, a
    ld [hl], h
    ld [hl], a
    and [hl]
    cp b
    xor d
    ld l, h
    ld l, b
    ld l, b
    ld c, c
    ld h, l
    cp b
    sub a
    or [hl]
    add [hl]
    sbc c
    ld [hl], l
    ld h, a
    ld h, a
    ld l, d
    sub a
    sbc c
    xor b
    sub a
    and a
    ld l, c
    ld e, c
    ld c, b
    ld e, b
    ld e, b
    ld a, d
    or a
    and a
    add a
    sub l
    sub [hl]
    ld [hl], a
    ld l, c
    ld [hl], a
    ld l, c
    ld l, b
    adc c
    push bc
    db $76
    add l
    db $76
    ld l, b
    ld e, b
    adc c
    ld a, c
    ld a, b
    sub a
    add a
    add a
    ld e, b
    ld h, [hl]
    ld a, c
    db $76
    ld [hl], a
    ld a, b
    ld a, d
    and a
    sub a
    ld l, b
    db $76
    add a
    ld h, a
    sub [hl]
    and [hl]
    adc b
    ld [hl], a
    ld l, b
    ld e, b
    ld c, c
    add a
    sub [hl]
    and [hl]
    and a
    ld d, [hl]
    add a
    ld [hl], a
    ld e, b
    ld c, b
    ld c, d
    ld a, d
    adc b
    and a
    sub l
    sub l
    add l
    sbc b
    add [hl]
    ld a, d
    ld e, c
    adc d
    ld e, c
    adc c
    and [hl]
    or l
    ld [hl], l
    add [hl]
    sub l
    ld l, d
    ld c, h
    ld l, d
    ld l, d
    ld e, b
    sub [hl]
    add a
    add [hl]
    ld d, l
    sub a
    ld l, b
    ld l, c
    db $76
    xor b
    sbc b
    ld h, l
    ld [hl], l
    ld l, b
    ld a, b
    sub a
    ld a, b
    adc b
    add [hl]
    sub a
    ld l, b
    ld a, b
    ld h, l
    ld c, d
    ld h, a
    and a
    add a
    ld e, b
    add l
    ld a, b
    ld h, [hl]
    db $76
    and a
    ld l, d
    db $76
    db $76
    ld a, c
    ld d, [hl]
    add [hl]
    db $76
    adc d
    sub a
    adc b
    adc b
    adc b
    add a
    ld d, a
    ld e, b
    ld a, b
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    sbc b
    and a
    and [hl]
    ld [hl], l
    add l
    ld a, b
    dec sp
    ld c, c
    ld l, d
    adc c
    and [hl]
    call nz, $86a6
    db $76
    ld e, c
    ld c, e
    ld a, b
    ld a, d
    ld l, d
    sub [hl]
    add a
    ld h, a
    ld l, b
    sub l
    sub a
    and a
    ld a, c
    adc b
    ld l, c
    adc b
    add [hl]
    add a
    ld h, a
    ld a, b
    sbc c
    sbc c
    add [hl]
    add a
    ld h, a
    ld l, b
    ld l, b
    ld a, c
    db $76
    sub [hl]
    add [hl]
    ld l, b
    adc b
    ld l, d
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    and [hl]
    sub a
    ld a, c
    ld h, a
    add [hl]
    db $76
    add a
    sub l
    sbc b
    ld a, b
    ld a, c
    ld [hl], a
    sbc b
    and a
    sub [hl]
    db $76
    ld [hl], a
    ld e, b
    ld h, a
    adc c
    xor c
    adc b
    sub a
    adc c
    ld [hl], a
    db $76
    add a
    db $76
    ld d, a
    adc c
    ld a, c
    xor b
    sbc b
    add a
    add l
    db $76
    ld l, b
    ld a, c
    sbc b
    ld a, b
    add a
    ld a, c
    ld a, d
    ld h, a
    add [hl]
    ld [hl], a
    add l
    add a
    adc c
    ld l, h
    ld l, c
    ld e, b
    adc b
    sub [hl]
    add l
    db $76
    ld a, d
    add a
    ld a, d
    ld a, b
    sbc c
    sub a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    add a
    xor c
    adc b
    ld l, b
    ld e, b
    ld l, c
    add a
    add a
    sub a
    add [hl]
    sub a
    add [hl]
    sbc b
    add a
    ld a, b
    ld l, d
    ld e, c
    ld a, b
    ld a, b
    sub a
    and a
    add a
    ld a, b
    ld e, b
    ld l, c
    ld l, c
    ld [hl], a
    sub [hl]
    sub a
    ld a, e
    adc b
    sbc b
    ld a, b
    ld h, a
    add [hl]
    sub [hl]
    ld [hl], a
    add a
    sbc e
    ld a, d
    ld h, a
    sub [hl]
    sub [hl]
    and a
    sub l
    adc b
    ld l, c
    ld e, d
    ld a, b
    ld a, c
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    sbc b
    xor b
    sbc b
    sbc c
    ld [hl], a
    adc b
    ld h, l
    ld h, l
    ld h, [hl]
    adc b
    sub [hl]
    sbc b
    and a
    sbc c
    sbc b
    ld e, b
    ld l, b
    ld [hl], l
    db $76
    ld [hl], l
    sub [hl]
    sbc b
    ld a, d
    ld a, c
    ld l, c
    ld a, c
    sub [hl]
    sub [hl]
    sub l
    add [hl]
    sub [hl]
    ld e, c
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    sbc b
    ld a, c
    ld a, c
    add a
    add a
    ld [hl], l
    sbc b
    and [hl]
    ld [hl], a
    ld e, b
    ld a, c
    adc c
    ld l, b
    sub a
    adc c
    sub a
    sub a
    add [hl]
    db $76
    ld a, b
    ld l, c
    ld e, b
    add a
    sbc b
    sub a
    add a
    sub a
    ld l, b
    ld a, b
    adc b
    ld a, b
    db $76
    ld a, b
    adc c
    add a
    ld a, b
    ld [hl], a
    sub a
    and [hl]
    adc b
    ld l, c
    ld c, c
    ld a, c
    ld a, b
    sub a
    and h
    and h
    sub [hl]
    add a
    adc c
    ld a, d
    ld l, b
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld l, d
    adc c
    adc c
    ld h, a
    ld a, b
    adc b
    ld h, a
    add [hl]
    ld a, b
    and a
    add [hl]
    adc c
    adc b
    ld l, d
    ld l, c
    ld l, c
    ld e, b
    ld [hl], a
    sub h
    add a
    add [hl]
    and a
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    ld l, c
    add a
    sub a
    ld [hl], a
    adc b
    ld l, c
    sub a
    ld l, b
    add [hl]
    add a
    ld a, b
    adc c
    xor b
    sbc c
    adc b
    ld d, a
    ld [hl], l
    db $76
    ld h, a
    ld h, [hl]
    sbc b
    sbc c
    sbc c
    xor c
    sbc c
    ld [hl], a
    ld h, a
    ld l, b
    ld d, [hl]
    add [hl]
    add a
    ld a, c
    add a
    ld a, e
    adc c
    adc b
    db $76
    add a
    db $76
    ld [hl], a
    add l
    ld [hl], a
    adc c
    ld l, c
    ld a, c
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc c
    add [hl]
    ld a, c
    ld a, b
    adc b
    ld h, a
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    sub [hl]
    and a
    sub a
    ld a, b
    sub [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld a, b
    ld a, c
    adc c
    xor b
    sbc b
    adc b
    ld [hl], l
    add [hl]
    ld [hl], l
    sub a
    add a
    ld a, d
    add [hl]
    adc c
    ld [hl], a
    ld h, a
    add l
    ld h, a
    ld [hl], l
    add a
    cp b
    adc c
    sbc b
    ld h, a
    db $76
    db $76
    add a
    add [hl]
    adc b
    adc c
    ld a, d
    adc c
    add a
    sub l
    add l
    ld h, [hl]
    db $76
    ld a, b
    ld l, c
    adc c
    and a
    sbc c
    add [hl]
    add l
    ld h, [hl]
    ld e, b
    ld [hl], a
    add a
    adc d
    ld a, b
    adc c
    add a
    ld [hl], a

Call_016_4a83:
    add h
    ld h, [hl]
    add a
    ld a, c
    sbc d
    adc b
    ld a, d
    ld [hl], h
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld l, b
    ld a, c
    adc b
    xor b
    add [hl]
    ld [hl], a
    db $76
    ld d, a
    ld h, [hl]
    add a
    adc c
    sbc c
    adc c
    adc d
    ld e, b
    ld [hl], l
    add l
    add l
    ld [hl], a
    ld a, b
    ld a, d
    adc c
    xor c
    sbc b
    ld h, [hl]
    ld [hl], h
    ld [hl], l
    ld l, b
    ld [hl], a
    adc b
    adc c
    adc b
    sbc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    add [hl]
    ld a, c
    ld a, b
    ld l, b
    add a
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld l, b
    adc d
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    add a
    sbc b
    ld a, c
    sbc c
    ld a, d
    ld l, c
    ld b, [hl]
    db $76
    ld [hl], l
    add [hl]
    add [hl]
    adc c
    adc d
    adc d
    adc c
    ld l, b
    db $76
    ld h, a
    ld e, b
    ld [hl], a
    ld a, c
    adc b
    sbc b
    sub a
    adc b
    ld h, a
    ld l, b
    ld l, b
    ld a, b
    add a
    ld l, d
    db $76
    adc b
    add a
    ld [hl], a
    sub [hl]
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    adc b
    sub [hl]
    adc c
    adc b
    sub [hl]
    sub [hl]
    adc b
    and h
    ld h, a
    ld l, b
    ld l, b
    add [hl]
    ld a, c
    adc c
    ld a, b
    xor c
    ld l, c
    add a
    add a
    ld l, c
    ld [hl], l
    sub a
    ld a, b
    ld [hl], a
    adc b
    adc c
    sbc c
    ld a, c
    ld a, b
    db $76
    ld [hl], a
    ld h, a
    adc b
    and l
    adc b
    ld [hl], a
    adc b
    ld a, d
    ld h, a
    and a
    add a
    ld [hl], a
    add a
    adc b
    ld a, c
    adc b
    ld a, b
    ld e, b
    add a
    sub l
    adc c
    add a
    adc c
    ld [hl], a
    adc b
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    adc c
    add a
    sbc b
    sub [hl]
    add a
    add a
    ld [hl], a
    db $76
    ld l, c
    adc b
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    sbc b
    ld a, b
    add a
    db $76
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sub [hl]
    add a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    adc b
    add a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    adc b
    adc b
    adc b
    sbc c
    ld l, c
    ld [hl], a
    add a
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    add a
    ld l, c
    adc c
    ld l, b
    adc b
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add [hl]
    add a
    adc b
    ld a, c
    adc b
    ld a, b
    ld h, a
    add [hl]
    sbc b
    ld a, b
    adc b
    ld l, c
    add a
    adc c
    add a
    add a
    add [hl]
    ld e, b
    add a
    ld [hl], a
    sbc b
    add a
    sub a
    ld l, c
    ld l, b
    ld h, a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    sbc b
    adc c
    ld a, c
    ld l, c
    ld l, b
    db $76
    ld h, a
    ld [hl], l
    adc b
    adc b
    sbc b
    sub a
    ld a, b
    ld a, b

Jump_016_4bb7:
    ld e, e
    ld l, d
    ld a, c
    ld a, b
    db $76
    add [hl]
    sub l
    add a
    ld a, c
    sub a
    adc b
    ld l, b
    adc b
    adc b
    ld l, e
    ld [hl], a
    db $76
    add l
    add a
    add a
    ld l, c
    ld a, b
    ld l, c
    ld h, a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld l, b
    ld e, c
    ld l, b
    sub a
    ld a, b
    sub h
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    adc b
    ld a, b
    ld l, b
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld l, c
    adc b
    adc c
    adc c
    add a
    db $76
    db $76
    sub a
    ld l, c
    ld a, b
    ld l, b
    adc b
    ld a, c
    sbc b
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    ld a, c
    ld a, c
    adc b
    adc b
    ld l, b
    add a
    adc b
    adc b
    ld a, c
    add a
    sbc b
    sub a
    add a
    db $76
    ld l, b
    ld [hl], a
    adc c
    ld a, b
    ld a, b
    add l
    sub a
    add a
    add [hl]
    add a
    ld l, b
    ld [hl], a
    sbc b
    ld a, c
    add a
    sbc b
    add a
    add a
    add [hl]
    add [hl]
    add a
    add a
    sbc b
    add a
    adc b
    add a
    sub a
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    sub a
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, d
    adc c
    sbc b
    sub a
    add [hl]
    add [hl]
    adc b
    add a
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    sub a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    db $76
    add [hl]
    adc c
    adc c
    ld l, b
    ld l, b
    add a
    add [hl]
    add a
    and a
    sub a
    add [hl]
    add a
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    sub l
    add a
    db $76
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    add a
    ld a, c
    add a
    add [hl]
    xor b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld d, a
    adc b
    ld [hl], a
    add a
    sub [hl]
    add a
    sub a
    ld a, c
    adc b
    db $76
    sub [hl]
    ld [hl], a
    db $76
    adc b
    ld a, b
    ld l, b
    ld l, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, c
    add a
    ld a, c
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    add [hl]
    sbc b
    adc b
    add a
    add a
    db $76
    ld a, b
    ld a, b
    add a
    add [hl]
    add [hl]
    add a
    ld a, b
    ld [hl], a
    adc b
    sbc b
    add a
    sub a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld l, c
    db $76
    sub a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    sub [hl]
    db $76
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    and [hl]
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    adc c
    ld l, c
    adc b
    sub [hl]
    sub a
    db $76
    sub l
    add a
    ld a, b
    add a
    sbc b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    sub a
    sub [hl]
    sbc b
    ld a, c
    ld a, c
    ld [hl], a
    adc b
    db $76
    sub [hl]
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    sub a
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld h, a
    adc b
    ld a, c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    sbc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld a, d
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld l, d
    ld l, d
    ld a, b
    sbc b
    add [hl]
    add [hl]
    sub [hl]
    add a
    add a
    ld [hl], a
    ld l, c
    ld a, c
    adc c
    ld a, c
    ld a, b
    db $76
    sub [hl]
    add [hl]
    sub a
    adc b
    ld a, c
    ld l, c
    ld l, b
    adc b
    ld a, b
    adc b
    sub a
    adc b
    add [hl]
    db $76
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    sub a
    sub a
    add a
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld l, b
    ld a, c
    sub [hl]
    adc b
    ld a, b
    ld h, a
    add a
    adc b
    ld [hl], a
    sub a
    sbc b
    adc c
    add a
    adc b
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    add a
    db $76
    sbc b
    ld l, c
    ld l, c
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add l
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, c
    ld a, d
    ld a, c
    ld l, b
    ld a, b
    add a
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    adc b
    ld l, b
    ld e, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld a, c
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld l, c
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    sbc b
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc c
    adc b
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld l, b
    adc b
    adc b
    add a
    add [hl]
    adc c
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc c
    ld a, c
    adc c
    ld [hl], a
    add [hl]
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    db $76
    ld l, c
    ld a, c
    add a
    sub [hl]
    add a
    sub a
    add a
    ld a, b
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    adc b
    ld l, c
    ld l, b
    add a
    sub [hl]
    adc c
    sub a
    adc c
    ld l, c
    ld h, a
    db $76
    ld a, b
    db $76
    sub [hl]
    sub [hl]
    adc b
    add [hl]
    adc b
    adc b
    add a
    ld a, c
    ld l, c
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld a, b
    and a
    db $76
    adc c
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    sub a
    adc b
    ld a, b
    ld l, c
    ld a, b
    add a
    db $76
    sub [hl]
    add [hl]
    db $76
    add a
    sbc b
    ld l, c
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    sub a
    ld a, c
    ld a, b
    add a
    add a
    add a
    sub [hl]
    add [hl]
    add a
    ld [hl], a
    adc c
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    sub [hl]
    sub [hl]
    ld h, a
    adc b
    ld a, b
    ld l, c
    ld e, c
    ld [hl], a
    add [hl]
    adc b
    sub a
    sub [hl]
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    adc c
    ld a, b
    add [hl]
    and [hl]
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    sbc c
    ld a, b
    adc b
    add a
    add [hl]
    add [hl]
    add [hl]
    db $76
    add a
    ld a, b
    adc c
    ld a, c
    adc c
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add l
    sub [hl]
    ld a, b
    ld l, c
    ld [hl], a
    ld a, c
    add a
    add a
    sub a
    add a
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    sbc b
    ld l, b
    ld a, b
    ld l, b
    ld l, c
    db $76
    sbc b
    add a
    sbc b
    ld [hl], a
    ld a, c
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, c
    sbc b
    adc b
    adc b
    adc b
    add a
    ld a, c
    ld a, c
    ld h, a
    add a
    ld h, a
    adc b
    add [hl]
    add a
    ld h, a
    adc b
    add a
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc c
    ld a, c
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    sbc b
    ld a, b
    adc b
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    add a
    sbc b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    add a
    adc b
    sub a
    adc c
    ld [hl], a
    ld a, b
    db $76
    sub a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    sub a
    add a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, [de]
    xor $ef
    db $ed
    xor $dd
    xor b
    adc $63
    ld sp, $1100
    ld de, $1010
    ld bc, $0191
    ld hl, $2614
    xor d
    db $db
    adc c
    db $ed
    xor $ec
    xor $bc
    rst $00
    ld d, [hl]
    sbc c
    ld sp, hl
    xor e
    cp d
    xor c
    and a
    xor a
    xor $ee
    xor $ee
    cp l
    db $ec
    xor $ee
    xor $ee
    ld e, $ee
    rst $28
    db $ed
    rst $00
    ld b, a
    ld h, l
    ld b, d
    ld de, $1101
    ld bc, $1011
    ld de, $e001
    ld de, $0111
    inc [hl]
    ld a, e
    sbc e
    sbc $dc
    jp c, $ccbb

    cp l
    adc $ed
    call c, $eeee
    xor $ed
    call z, $efee
    xor $ee
    xor $ee

jr_016_4f7b:
    xor $ee
    xor $fe
    xor $1d
    xor c
    cp d
    and a
    ld d, e
    ld [de], a
    ld [de], a
    ld bc, $1101
    ld bc, $1101
    ld de, $1100
    ret nc

    ld [de], a
    ld b, e
    ld b, h
    ld l, b
    ld a, c
    adc d
    cp d
    cp h
    cp e
    adc $dd
    xor $ee
    xor $ef
    adc [hl]
    cp $ee
    rst $28
    xor $ee
    db $db
    cp d
    xor c
    sbc b
    adc b
    adc d
    sbc b
    sbc b
    add a
    add a
    add hl, de
    adc c
    xor b
    adc c
    add a
    db $76
    ld d, d
    ld hl, $0111
    ld de, $1100
    ld bc, $1010
    ldh [rNR11], a
    inc [hl]
    ld d, l
    ld h, [hl]
    db $76
    ld l, b
    adc c
    sbc c
    xor d
    cp h
    adc $cc
    xor $ed
    xor $9e
    xor $ed
    xor $ed
    db $ec
    cp e
    xor e
    cp c
    xor c
    sbc d
    sbc b
    sbc b
    adc c
    sbc c
    sbc d
    jr jr_016_4f7b

    sbc c
    sub a
    db $76
    ld h, [hl]
    ld d, e
    inc hl
    ld [de], a
    ld hl, $1100
    ld bc, $1001
    ld de, $21e1
    inc hl
    ld b, e
    ld d, h
    ld d, h
    ld d, l
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor e
    sbc e
    call c, $eedd
    ld a, a
    xor $df
    db $ed
    db $fd
    cp $dd
    call c, $aaba
    adc b
    add [hl]
    add [hl]
    db $76
    ld l, b
    ld a, b
    jr @-$75

    adc c
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld h, l
    ld d, h
    inc sp
    ld de, $1101
    ld de, $1001
    ret nz

    ld de, $2312
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    xor d
    xor c
    res 5, e
    res 1, h
    db $dd
    call c, $eedd
    db $dd
    call $bcdc
    cp h
    xor e
    xor d
    sbc d
    adc c
    add a
    ld a, b
    daa
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, l
    ld h, h
    ld b, h
    ld b, e
    ld hl, $2122
    and c
    ld [de], a
    ld hl, $2122
    inc h
    inc [hl]
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    sbc c
    xor c
    sbc e
    ld a, h
    cp h
    set 3, l
    adc $de
    sbc $de
    db $ed
    call c, $bbdc
    cp d
    sbc d
    sbc c
    ld a, b
    jr z, jr_016_50e9

    ld h, a
    ld [hl], a
    db $76
    ld h, a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld b, h
    ld b, h
    inc sp
    and d
    ld sp, $2222
    inc hl
    inc hl
    inc sp
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    xor c
    xor c
    xor d
    xor e
    xor e
    cp e
    call z, $ccbd
    db $dd
    call z, $cbcc
    xor e
    xor d
    ld l, c
    sbc c
    add a
    add a
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    cp b
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    sbc d
    sbc c
    sbc d
    xor d
    xor e
    xor e
    jp z, $bbbb

    xor d
    cp d
    ld a, d
    xor c
    xor c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld l, b
    ld l, b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    db $76
    ld a, b
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, h

jr_016_50e9:
    ld b, h
    ld b, l
    ld b, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    ld a, d
    xor d
    xor d
    xor c
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    adc c
    adc c
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld d, a
    add a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    sub l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    adc c
    adc c
    adc c
    adc b
    adc c
    adc b
    add a
    ld l, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    sbc b
    adc b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    xor b
    sbc c
    sbc b
    sbc b
    sbc b
    ld a, c
    adc c
    adc b
    sbc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    sub a
    sbc b
    adc c
    ld a, c
    sbc b
    sbc c
    adc b
    adc b
    adc c
    sbc c
    adc b
    adc b
    adc b
    sub a
    sbc b
    adc b
    add a
    sub a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, a

Jump_016_51bd:
    ld h, [hl]
    db $76
    ld h, a
    add a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld l, c
    adc b
    add a
    add a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, a
    add [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc c
    adc b
    sbc c
    ld a, c
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    adc c
    add a
    adc b
    adc b
    ld a, b
    adc c
    ld a, b
    adc b
    sub a
    adc b
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
    ld a, b
    add a
    adc b
    add [hl]
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc c
    ld a, c
    adc b
    adc c
    adc b
    ld l, c
    ld a, b
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, c
    ld a, c
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
    ld a, b
    sbc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld a, c
    add a
    adc b
    adc b
    ld a, b
    ld a, c
    adc b
    add a
    add a
    sbc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    db $76
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    add [hl]
    ld [hl], a
    add hl, de
    call $c7dd
    ld d, h
    ld d, [hl]
    ld d, l
    ld [bc], a
    ld de, $0212
    ld de, $0111
    ld de, $b001
    ld h, $65
    ld b, h
    ld b, [hl]
    adc d
    xor d
    cp d
    res 1, d
    set 3, l
    sbc c
    add [hl]
    ld [hl], l
    ld l, d
    add sp, $69
    xor e
    cp b
    sub a
    ld d, l
    ld d, [hl]
    adc c
    call z, $edce
    db $fd
    rst $28
    xor $fe
    xor $0e
    xor $de
    call c, Call_016_64b9
    inc sp
    ld [hl-], a
    db $10
    db $10
    db $10
    ld de, $1011
    jr nz, jr_016_5351

    and c
    db $10
    ld hl, $4212
    ld [hl], $67
    sbc b
    xor d
    cp b
    add a
    ld h, a
    ld a, c
    xor d
    xor e
    cp d
    or a

jr_016_5351:
    adc b
    xor d
    sbc h
    set 1, h
    call $ccee
    xor $ee
    sbc $ec
    xor $ee
    jp z, $dd1c

    db $ed
    call z, $badd
    sub l
    ld d, e
    ld b, [hl]
    ld h, e
    ld [de], a
    ld [bc], a
    ld de, $0111
    ld de, $01b1
    ld de, $0122
    ld de, $2311
    ld [hl+], a
    ld b, a
    ld h, a
    db $76
    ld [hl], a
    adc e
    cp e
    call z, $cabc
    sbc d
    cp d
    cp d
    res 7, e
    cp e
    xor d
    xor e
    cp e
    xor h
    xor e
    cp h
    cp e
    cp e
    inc a
    xor e
    xor h
    res 7, e
    cp e
    cp c
    xor c
    sbc c
    sbc b
    ld h, a
    ld d, a
    ld h, l
    ld d, h
    ld d, e
    inc hl
    add e
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc de
    ld hl, $1112
    ld [de], a
    inc de
    ld b, h
    ld d, l
    dec [hl]
    ld h, a
    ld a, b
    ld a, c
    and a
    xor d
    xor h
    cp e
    cp e
    set 1, h
    cp e
    xor e
    call z, $baca
    cp d
    xor e
    xor d
    xor d
    ld a, c
    xor c
    xor c
    xor d
    xor c
    xor d
    sbc c
    xor d
    cp e
    cp c
    sbc c
    adc c
    sbc b
    adc b
    ld a, b
    add a
    dec [hl]
    ld h, l
    ld d, l
    ld b, l
    dec [hl]
    ld b, h
    inc [hl]
    ld b, e
    ld b, h
    ld b, l
    ld b, e
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld b, h
    inc [hl]
    or h
    ld b, l
    ld d, l
    ld d, a
    ld [hl], a
    add a
    sbc b
    sbc d
    cp d
    cp e
    cp e
    cp l
    call z, $dccc
    cp e
    xor e
    cp e
    sbc c
    xor b
    sbc b
    adc b
    add a
    ld a, b
    ld a, b
    adc c
    adc c
    sbc d
    xor d
    cp e
    xor e
    cp d
    ld c, e
    xor e
    sbc d
    adc b
    adc b
    add a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, e
    and h
    ld d, e
    ld b, h
    ld d, h
    ld b, l
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc c
    xor c
    sbc d
    cp d
    adc d
    sbc d
    xor d
    xor d
    xor c
    xor d
    xor c
    xor c
    sbc c
    adc c
    adc c
    sub a
    sbc b
    adc c
    adc b
    sbc b
    ld l, c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    sbc d
    xor d
    xor d
    xor c
    sbc c
    adc b
    adc c
    ld a, b
    db $76
    db $76
    db $76
    ld d, l
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc [hl]
    ld b, h
    inc [hl]
    ld d, h
    ld d, l
    ld h, [hl]
    and a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc d
    xor d
    sbc d
    xor d
    xor d
    xor d
    xor c
    sbc d
    adc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc d
    xor c
    sbc c
    ld c, d
    adc c
    add a
    add a
    ld a, b
    add a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld b, h
    and h
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    sbc b
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    sbc c
    sbc c
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc b
    ld l, b
    sbc b
    adc b
    adc c
    adc b
    adc c
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, l
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld d, a
    sub [hl]
    ld h, a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
    sbc c
    adc c
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    sbc b
    sbc b
    ld l, c
    adc c
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    add a
    ld [hl], a
    ld a, b
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
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc c
    adc c
    adc b
    sbc b
    adc b
    sub a
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc c
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    add a
    sbc b
    ld a, c
    adc b
    adc b
    adc c
    adc b
    adc b
    ld a, c
    adc b
    adc b
    ld a, c
    add a
    adc c
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    add a
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    sub a
    adc b
    adc b
    ld a, b
    adc c
    ld a, c
    ld a, b
    ld a, b
    adc c
    add a
    sbc b
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
    sbc b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    sbc b
    add a
    adc b
    adc b
    ld a, c
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    sub a
    adc b
    sbc b
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld b, a
    ld [hl], a
    sbc b
    ld a, b
    add [hl]
    adc b
    sbc c
    add a
    ld [hl], l
    ld h, [hl]
    ld a, c
    sbc e
    cp d
    sub a
    ld d, l
    inc sp
    or h
    ld d, a
    sbc e
    call $badc
    add [hl]
    ld d, e
    ld [hl+], a
    inc sp
    dec [hl]
    ld [hl], a
    xor c
    cp h
    cp h
    bit 7, b
    ld h, l
    ld [hl-], a
    inc hl

Call_016_5674:
    add hl, sp
    xor e
    call c, $879a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, c
    sbc c
    xor c
    adc b
    or a
    ld h, [hl]
    ld [hl], a
    adc b
    adc d
    sbc d
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld b, l
    ld b, [hl]
    ld h, [hl]
    adc c
    cp e
    call $a8ac
    db $76
    ld b, h
    ld b, h
    ld d, a
    sbc b
    sbc b
    sub [hl]
    ld h, a
    ld d, [hl]
    ld [hl], a
    add a
    ld l, b
    ld a, c
    xor c
    ld a, c
    sbc b
    sub a
    ld d, [hl]
    ld [hl], a
    adc c
    ld a, d
    cp d
    sbc d
    sub l
    add a
    db $76
    ld d, h
    ld b, l
    ld [hl-], a
    ld d, a
    adc b
    xor c
    cp d
    xor d
    sbc d
    adc e
    xor c
    sbc b
    ld d, l
    ld sp, $8644
    sbc h
    cp e
    cp e
    or a
    add l
    ld h, a
    inc [hl]
    ld b, e
    ld b, [hl]
    and a
    ld a, l
    cp l
    xor b
    adc b
    add [hl]
    ld h, a
    ld d, a
    ld [hl], a
    db $76
    db $76
    or a
    ld [hl], a
    ld a, c
    ld a, b
    xor c
    xor d
    xor c
    adc b
    ld d, [hl]
    ld d, l
    ld h, e
    ld h, h
    ld e, b
    sbc e
    cp h
    cp e
    ld a, b
    ld d, l
    ld b, d
    ld b, h
    adc b
    xor d
    call $b7c9
    ld h, [hl]
    ld d, l
    ld b, l
    ld [hl], a
    xor d
    adc d
    db $76
    add h
    ld h, l
    ld h, a
    ld d, a
    db $76
    sub [hl]
    sbc d
    sbc e
    ld a, h
    cp d
    or a
    add [hl]
    ld d, [hl]
    ld d, h
    ld b, [hl]
    add [hl]
    ret z

    sbc d
    add a
    add a
    adc b
    adc c
    sub a
    add a
    db $76
    ld h, a
    ld b, [hl]
    ld d, l
    add a
    adc e
    cp l
    sbc e
    xor b
    and a
    scf
    inc sp
    ld b, e
    ld [hl], l
    adc d
    adc e
    cp c
    xor c
    sbc b
    ld h, a
    ld b, e
    ld b, [hl]
    ld b, a
    ld d, a
    xor c
    cp e
    db $db
    ld a, c
    add a
    ld h, a
    ld a, b
    and l
    ld l, c
    ld a, c
    ld a, b
    sub h
    add [hl]
    ld l, b
    ld e, b
    xor b
    ld l, b
    sbc b
    ld [hl], e
    ld h, h
    ld d, [hl]
    ld l, c
    xor b
    and [hl]
    xor b
    ld a, d
    ld a, c
    and [hl]
    sub a
    adc c
    ld l, e
    ld b, a
    sub a
    ld [hl], c
    add a
    ld l, d
    ld e, c
    adc c
    or l
    sbc b
    ld e, e
    ld [hl], a
    add l
    add [hl]
    sub a
    ld c, b
    ld h, [hl]
    or h
    adc d
    ld a, d
    adc d
    and a
    xor c
    adc b
    ld a, [hl-]
    sub [hl]
    add c
    ld h, a
    jr c, jr_016_57c3

    ld a, b
    or [hl]
    adc b
    add hl, sp
    dec h
    ld [hl], a
    adc e
    or [hl]
    cp d
    add a
    sub a
    ld h, [hl]
    ld d, l
    and l
    ld [hl], a
    adc c
    sbc d
    adc c
    ld h, h
    add h
    ld a, b
    ld l, b
    cp b
    adc e
    or l
    ld a, c
    ld e, b
    add l
    sbc b
    ld l, b
    adc b
    ld a, c
    sbc c
    sub [hl]
    ld a, d
    ld h, l
    ld d, d
    ld h, a
    ld e, c
    cp b
    xor c
    and a
    ld [hl], a
    daa
    ld [hl], d
    add a
    ld a, l
    sbc e
    add [hl]
    add l
    ld h, a
    add hl, de
    ld [hl], h
    call nz, Call_016_6fbc
    xor d
    call nz, Call_016_68b6
    add hl, de
    ld h, e
    or h
    ld a, b
    ld e, e
    adc c
    add a
    or a
    adc b
    ld d, [hl]
    ld d, [hl]
    add l
    ld l, b
    adc d

Jump_016_57a6:
    sbc d
    sbc c
    sub a
    sbc d
    ld a, c
    ld a, b
    sub l
    sub l
    ld c, c
    ld d, [hl]
    ld h, l
    sub [hl]
    sbc b
    ld l, c
    ld h, [hl]
    or [hl]
    sbc b
    ld a, c
    ld e, c
    db $76
    and [hl]
    ld a, e

jr_016_57bc:
    sub a
    adc d
    xor c
    adc b
    ld a, b
    ld h, a
    ld h, h

jr_016_57c3:
    ld h, l
    adc c
    ld b, a
    sbc d
    sub [hl]
    ld l, b
    ld h, a
    ld a, b
    ld [hl], e
    adc b
    sbc c
    ld e, c
    xor c
    ld h, a
    ld [hl], a
    ld a, b
    add a
    add h
    sbc c
    ld [hl], a
    ld l, b
    sub l
    xor c
    sbc d
    ld e, h
    add a
    ld h, e
    xor b
    jr c, jr_016_585b

    ld [hl], h
    or h
    and [hl]
    ld c, e
    ld h, h
    xor c
    rst $00
    ld e, e
    adc c
    ld h, l
    push bc
    ld a, d
    ld e, e
    ld h, [hl]
    or a
    ld [hl], a
    ld c, b
    ld c, d
    ld d, e
    and [hl]
    ld l, e
    ld c, d
    ld [hl], a
    add a
    call nz, Call_016_7b8b
    ld h, l
    call nz, Call_016_7977
    ld e, c
    adc c
    rst $00
    sbc d
    ld d, a
    ld h, e
    add h
    add hl, sp
    ld a, c
    add a
    xor b
    xor b
    ld l, h
    daa
    add h
    and l
    adc c
    adc c
    add [hl]
    or l
    adc b
    ld l, c
    add [hl]
    xor c
    sbc c
    adc d
    add l
    or [hl]
    ld [hl], l
    ld c, b
    ld b, [hl]
    add [hl]
    ld l, c
    ld b, a
    adc d
    adc c
    sub a
    sbc b
    ld l, b
    add hl, sp
    ld l, h
    add a
    sbc b
    bit 1, h
    ld [hl], l
    add [hl]
    and l
    xor d
    add [hl]
    sub d
    adc b
    jr c, jr_016_57bc

    sub l
    cp b
    ld e, h
    add hl, hl
    and h
    xor b
    adc d
    adc c
    db $76
    add l
    ld d, a
    ld a, b
    ld a, e
    ld [hl], a
    sbc b
    adc d
    ld [hl], a
    ld l, b
    scf
    add h
    scf
    adc c
    cp b
    adc d
    or [hl]
    add a
    jp z, $8585

    ld h, a
    sub l
    ld l, c
    db $76
    push de
    jp z, Jump_016_586a

jr_016_585b:
    add e
    or h
    adc c
    ld c, d
    ld h, e
    sub l
    ld a, b
    ld e, e
    ld l, c
    adc b
    ret c

    ld a, b
    ld c, b
    add l
    ld [hl], a

Jump_016_586a:
    ld l, b
    adc b
    ld l, c
    cp d
    sbc b
    xor b
    ld e, b
    ld h, l
    add [hl]
    ld d, l
    sub a
    ld a, c
    db $76
    and l
    ld h, [hl]
    sub e
    xor b
    ld l, d
    ld a, d
    adc b
    ld h, [hl]
    sbc c
    sbc e
    ld a, e
    add l
    and [hl]
    adc b
    ld l, b
    adc c
    ld d, l
    sub [hl]
    ld e, c
    daa
    and l
    sbc c
    sbc b
    sbc d
    ld h, [hl]
    ld d, l
    and a
    ld a, b
    sub a
    add a
    sub a
    ld a, c
    ld e, b
    and l
    adc b
    ld a, b

jr_016_589b:
    ld a, c
    ld c, b
    add a
    sbc b
    ld e, c
    ld e, c
    db $76
    db $76

jr_016_58a3:
    ld d, a
    ld a, b
    ld l, b
    and [hl]
    xor d
    ld l, d
    and [hl]
    sbc c
    ld b, [hl]
    add a
    ld h, a
    add h
    cp b
    ld a, e
    and a
    sbc c
    add [hl]
    db $76
    ld a, c
    ld a, [hl-]
    ld b, a
    db $76
    ld h, [hl]
    or l
    ld a, h
    ld h, a
    add $7a
    ld d, a
    ld c, d
    ld d, a
    push bc
    ld [hl], l
    ld l, d
    ld c, b
    or [hl]
    or [hl]

jr_016_58c8:
    ld e, h
    ld h, [hl]
    and h
    add l
    ld a, c
    ld e, e
    ld [hl], d
    push hl
    ld e, e
    ld [hl], a
    sub a
    sub a
    and a
    ld a, d
    add [hl]
    sub [hl]
    ld c, d
    ld l, c
    ld h, a
    add a
    ld a, h
    ld l, b
    or a
    adc c
    ld a, b
    ld [hl], l
    ld h, h
    ld d, a
    dec hl
    ld b, a
    cp b
    xor e
    ld c, h
    and [hl]
    jp nz, Jump_016_57a6

    jr c, jr_016_58a3

    sbc b
    sbc d
    ld l, e
    sub h
    and l
    ld a, d
    ld h, h
    xor c
    ld d, [hl]
    ld l, d
    ld e, e
    ld h, [hl]
    xor b
    ld c, d
    ld [hl], a
    adc b
    db $76
    jr c, jr_016_589b

    ld a, b
    ld a, d
    add [hl]
    ld [hl], l
    and [hl]
    ld e, c
    add a
    and a
    cp b
    ld h, a
    ld e, b
    ld h, h
    and [hl]
    ld a, c
    sbc e
    db $76
    and $89
    ld a, [de]
    add [hl]
    ld [hl], l
    cp b
    ld e, h
    ld e, l
    and a
    or [hl]
    ld e, b
    ld d, l
    add [hl]
    add [hl]
    ld d, [hl]
    sbc e
    db $76
    sub l
    sbc c
    ld h, [hl]
    ld a, c
    ld [hl], h
    ld d, a
    ld a, c
    sbc d
    ld a, b
    call nz, Call_016_597a
    add [hl]
    ld l, c
    adc c
    ld a, e
    jr c, jr_016_58c8

    ld h, a
    adc b
    ld h, l
    ld [hl], a
    or a
    xor c
    and a
    ld l, b
    sub e
    and h
    ld h, a
    ld [hl], a
    sub [hl]
    adc b
    ret


    ld l, b
    ld a, h
    ld c, b
    and a
    add l
    ld h, a
    ld l, b
    ld [hl], a
    add l
    sbc c
    ld a, [hl-]
    ld b, a
    ld c, b
    ld l, b
    ret


    ld a, d
    ld a, [hl-]
    sub c
    xor b
    ld a, e
    ld e, c
    and a
    jp nz, Jump_016_4bb7

    ld d, h
    sub d
    and a
    sbc c
    ld a, c
    or a
    xor b
    sbc c
    ld c, d
    ld h, l
    and h
    ld l, b
    add hl, sp
    adc d
    ld l, e
    ld h, a
    or [hl]
    ld l, l
    ld h, a
    ld h, a
    ld [hl], a
    ld e, b
    adc c
    scf
    and [hl]
    or [hl]
    ld e, d
    add e
    and [hl]

Call_016_597a:
    ld e, d
    ld h, a
    sub l
    db $76
    or h
    ld e, d
    ld [hl], a
    jp Jump_016_6cbd


    ld a, b

Call_016_5985:
    add h
    db $76
    ld l, b
    ld e, c
    ld h, [hl]
    push de
    sbc d
    ld a, c
    sub a
    ld e, b
    add l
    add [hl]
    ld a, [hl-]
    ld h, a
    sub l
    ret z

    add [hl]
    add a
    adc b
    sub e
    adc e
    inc a
    ld h, [hl]
    or l
    adc b
    adc c
    ld c, d
    add [hl]
    or h
    adc b
    ld c, c
    ld h, h
    db $76
    sub a
    ld l, b
    ld c, h
    ld h, [hl]
    or a
    xor d
    sbc b
    adc b
    add a
    add l
    or [hl]
    ld h, a
    ld a, b
    sub [hl]
    add a
    sbc c
    sub [hl]
    and [hl]
    sub a
    ld [hl], a
    ld c, b
    ld h, [hl]
    ld l, b
    ld e, e
    ld h, [hl]
    xor b
    ld b, $6a
    adc b
    ld [hl], a
    add a
    add h
    adc b
    ld e, c
    sub a
    ld a, b
    sbc d
    ld l, d
    ld a, d
    add e
    sub [hl]
    ld a, b
    ld e, b
    db $76
    add h
    cp c
    sbc h
    ld e, h
    and d
    cp b
    ld c, b
    db $76
    add h
    adc b
    xor b
    ld e, d
    xor b
    ld l, b
    ld l, e
    ld b, l
    and a
    ld l, c
    ld l, c
    db $76
    ld l, b
    sub [hl]
    ld l, h
    add [hl]
    and a
    adc e
    jr z, jr_016_5a63

    or d
    sbc c
    ld l, c
    ld a, b
    db $e3
    cp d
    ld l, h
    ld l, b
    and h
    ld d, h
    add a
    ld b, a
    ld l, c
    xor b
    xor b
    sbc c
    ld a, b
    ld d, a
    add a
    ld l, b
    ld d, a
    ld a, c
    rst $00
    xor b
    ld a, d
    ld l, b
    sub l
    add l
    ld l, c
    ld b, a
    add l
    or h
    ld a, d
    ld e, b
    ld h, [hl]
    or [hl]
    ld e, c
    adc b
    sub l
    sbc c
    ld e, d
    add hl, sp
    ld [hl], h
    or a
    ld a, l
    ld c, e
    add [hl]
    or [hl]
    or [hl]
    ld e, d
    sub a
    ld [hl], h
    sub a
    ld a, c
    ld a, h
    ld l, d
    adc c
    add h
    ld h, l
    ld l, b
    ld d, l
    or h
    sbc c
    sbc c
    ld a, b
    or l
    ld a, b
    inc a
    db $76
    add l
    or l
    ld a, e
    ld c, d
    ld [hl], a
    sub a
    add l
    ld a, e
    ld b, [hl]
    sub a
    ld l, d
    ld l, b
    and [hl]
    or a
    adc b
    ld [hl], a
    sub e
    add $88
    adc d
    ld e, d
    db $76
    add a
    ld [hl], h
    sub a
    adc b
    ld h, a
    adc b
    ld [hl], l
    add [hl]
    ld a, b
    ld e, c
    ld e, b
    ld [hl], l
    xor d
    ld l, c
    adc b
    ld l, c
    add [hl]
    ld h, a
    ld [hl], a
    add l
    sbc e
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    sbc b

jr_016_5a63:
    ld e, c
    ld l, b
    add l
    and [hl]
    ld e, c
    ld l, e
    ld d, a
    and [hl]
    and l
    ld a, c
    ld a, c
    ld d, a
    or [hl]
    sub a
    adc b
    adc b
    ld a, d
    adc b
    adc d
    ld h, l
    adc b
    ld a, b
    ld h, a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld d, a
    and [hl]
    xor b
    ld l, b
    sbc c
    ld a, d
    sub h
    and a
    ld [hl], a
    add [hl]
    ld l, c
    sub h
    xor b
    adc c
    ld l, b
    ld [hl], a
    db $76
    xor b
    ld c, b
    ld [hl], a
    add [hl]
    ld a, c
    ld l, b
    ld a, b
    and [hl]
    ld a, b
    adc c
    ld e, b
    sub [hl]
    and a
    ld l, d
    ld h, [hl]
    adc b
    ld [hl], l
    ld a, d
    ld h, a
    add [hl]
    and a
    ld l, b
    ld a, b
    add e
    ret z

    ld l, b
    ld e, c
    add [hl]
    and l
    xor b
    ld c, h
    ld a, b
    and [hl]
    sub [hl]
    ld l, b
    ld a, c
    adc b
    adc d
    add [hl]
    adc b
    add a
    ld l, c
    ld h, [hl]
    and h
    sub [hl]
    ld h, a
    add a
    and h
    ld a, c
    ld e, c
    ld l, b
    db $76
    ld [hl], a
    ld a, d
    ld l, d
    or [hl]
    xor b
    and [hl]
    adc c
    db $76
    add h
    add a
    ld h, [hl]
    ld l, b
    ld e, c
    ld a, d
    ld l, d
    or a
    add a
    ld l, c
    ld a, b
    ld h, [hl]
    add h
    adc c
    ld l, c
    sub a
    cp b
    ld a, b
    ld a, b
    add l
    add [hl]
    db $76
    sub a
    add [hl]
    sbc c
    ld a, c
    db $76
    and a
    db $76
    add a
    ld a, b
    sub a
    ld l, c
    ld a, b
    add a
    ld h, a
    sbc b
    ld l, d
    ld [hl], a
    xor b
    ld h, a
    sub a
    ld e, d
    add [hl]
    or a
    add a
    db $76
    ld a, b
    ld [hl], h
    sub [hl]
    adc b
    adc b
    ld h, a
    adc b
    ld [hl], a
    ld [hl], l
    sub a
    ld [hl], a
    ld a, c
    ld l, e
    sub [hl]
    xor c
    ld l, d
    add [hl]
    ld [hl], a
    db $76
    add a
    ld e, d
    ld h, a
    sbc c
    ld a, d
    ld e, d
    add l
    and l
    sub [hl]
    ld a, d
    ld h, [hl]
    call nz, Call_016_6998
    adc b
    db $76
    and [hl]
    adc c
    adc d
    and [hl]
    sub a
    ld l, c
    ld l, b
    ld h, l
    add l
    adc b
    ld a, c
    ld h, [hl]
    or a
    ld l, e
    ld e, c
    ld l, b
    ld h, a
    ld [hl], a
    adc b
    add a
    and a
    xor c
    ld a, b
    db $76
    add l
    sub l
    sbc b
    ld l, c
    ld [hl], a
    add $99
    ld l, d
    ld b, a
    add [hl]
    sub [hl]
    ld l, c
    ld d, a
    sub [hl]
    adc c
    ld a, d
    ld a, b
    ld a, b
    sub [hl]
    ld a, c
    ld e, e
    db $76
    and a
    ld l, b
    ld a, b

jr_016_5b4f:
    add l
    sbc c
    ld e, d
    ld [hl], a
    add [hl]
    ld e, b
    ld h, a
    ld e, c
    or e
    rst $10
    ld a, e
    db $76
    xor b
    add a
    ld a, c
    ld h, a
    ld [hl], l
    ld [hl], a
    ld a, d
    ld l, c
    or l
    sbc d
    ld a, [hl-]
    ld h, [hl]
    sub l
    sub l
    adc b
    ld d, a
    ld a, b
    ld a, b
    ld l, d
    add a
    or [hl]
    ld e, d
    ld d, l
    push bc
    ld h, a
    sub a
    ld e, d
    ld d, a
    and l
    adc e
    ld a, b
    sub a
    and a
    ld a, b
    add l
    ld d, [hl]
    ld [hl], a
    db $76
    ld l, h
    ld h, l
    cp c
    adc c
    sub [hl]
    and a
    ld c, c
    ld [hl], a
    ld e, b
    add [hl]
    sbc c
    adc d
    ld l, b
    sub a
    or e
    xor c
    ld h, a
    ld d, [hl]
    and l
    sbc b
    adc c
    ld h, a
    sub [hl]
    sub l
    adc b
    ld [hl], a
    ld a, d
    ld c, c
    ld a, c
    add [hl]
    ld a, c
    adc b
    ld a, b
    adc c
    ld h, a
    add a
    ld e, c
    ld h, l
    adc b
    ld a, c
    or l
    sbc c
    add l
    sub a
    ld e, c
    ld d, l
    sub l
    add a
    ld a, d
    add a
    sbc c
    and l
    push de
    ld e, h
    jr c, jr_016_5b4f

    ld c, b
    and l
    ld a, d
    ld e, c
    sub [hl]
    ld l, d
    ld [hl], l
    sub a
    add a
    ld a, b
    ld h, a
    add a
    adc b
    and h
    sbc d
    ld [hl], a
    sbc b
    sbc b
    ld a, b
    and l
    ld l, c
    ld a, b
    add h
    ld a, b
    sub [hl]
    and a
    sbc b
    ld l, d
    ld h, a
    ld c, b
    and d
    sub a
    ld e, h
    ld c, b
    or a
    adc c
    ld a, c
    add a
    ld e, e
    ld b, a
    adc b
    add a
    sub a
    sbc c
    ld c, b
    or e
    adc b
    ld l, c
    add l
    sub a
    sub [hl]
    adc c
    ld a, b
    add h
    sbc b
    ld a, l
    ld [hl], a
    or e
    cp e
    add hl, hl
    ld a, c
    add l
    and a
    ld l, d
    ld c, e
    add l
    sbc c
    ld a, b
    ld h, [hl]
    and h
    sub [hl]
    ld e, c
    db $76
    sbc c
    ld [hl], l
    adc c
    ld d, a
    add l
    add [hl]
    add [hl]
    xor b
    adc e
    adc d
    ld a, b
    and l
    ld [hl], a
    ld e, d
    ld e, b
    ld h, a
    and a
    sbc d
    ld e, c
    ld a, b
    adc b
    ld d, a
    ld h, [hl]
    ld h, a
    add [hl]
    adc c
    adc c
    add a
    adc d
    ld l, b
    scf
    and [hl]
    sub a
    add [hl]
    xor b
    ld [hl], a
    add [hl]
    adc c
    ld d, [hl]
    and h
    sbc c
    ld c, e
    ld [hl], a
    adc b
    ld [hl], l
    sub a
    ld l, [hl]
    ld d, a
    or a
    ld l, e
    ld d, a
    adc b
    ld [hl], a
    sbc b
    ld a, c
    ld a, b
    add a
    sbc d
    ld c, e
    ld [hl], l
    call nz, $b678
    ld h, a
    ld h, l
    and l
    adc e
    ld h, [hl]
    or a
    ld a, c
    adc c
    ld [hl], a
    ld [hl], a
    sub l
    add a
    ld a, b
    ld e, d
    add [hl]
    sub [hl]
    adc b
    ld l, c
    ld l, c
    ld h, l
    sub [hl]
    ld d, a
    ld e, e
    ld [hl], a
    adc c
    ld [hl], a
    and [hl]
    sbc c
    ld l, c
    sub a
    add [hl]
    sub [hl]
    ld [hl], a
    ld e, b
    db $76
    adc b
    sbc b
    sub a
    or a
    ld a, c
    ld h, a
    add l
    ld e, b
    ld [hl], l
    ld l, e
    add hl, sp
    sub [hl]
    ld l, d
    ld c, e
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], l
    adc b
    ld a, c
    sbc b
    adc d
    ld l, b
    and h
    add a
    ld h, a
    ld [hl], a
    ld l, c
    db $76
    or [hl]
    adc d
    ld l, d
    adc b
    ld l, b
    ld h, h
    sub a
    ld e, e
    ld h, a
    and a
    ld l, c
    ld l, c
    ld l, c
    ld e, b
    add a
    ld a, c
    ld l, b
    sub [hl]
    adc c
    ld e, c
    add l
    sub [hl]
    ld h, a
    sub l
    ld l, d
    ld [hl], a
    and a
    adc c
    add [hl]
    add a
    ld a, c
    add a
    sub a
    sbc c
    add a
    sbc b
    ld c, c
    db $76
    ld a, c
    ld e, d
    ld a, b
    ld a, d
    ld h, a
    and l
    ld a, c
    ld d, a
    db $76
    add [hl]
    ld a, b
    add a
    adc d
    sbc d
    sub [hl]
    sbc b
    add h
    and h
    ld l, b
    ld h, [hl]
    add a
    ld a, b
    or l
    sbc c
    ld a, b
    ld [hl], a
    sub a
    add l
    ld a, b
    ld h, a
    ld l, c
    ld l, b
    add [hl]
    ld a, c
    ld a, b
    sbc b
    ld a, b
    add [hl]
    or l
    sbc c
    ld h, a
    ld c, b
    ld [hl], a
    add [hl]
    ld a, d
    ld c, e
    ld l, b
    sub [hl]
    ld a, b
    ld c, b
    sub h
    add a
    add a
    xor b
    ld l, e
    add l
    cp c
    adc c
    ld a, b
    ld l, b
    ld [hl], l
    xor b
    ld l, b
    ld h, a
    add a
    adc b
    adc b
    ld a, c
    ld a, c
    ld l, b
    add [hl]
    adc b
    ld h, [hl]
    ld e, b
    ld l, b
    ld h, l
    xor b
    ld a, c
    sub a
    sbc b
    sub a
    db $76
    sub a
    db $76
    add [hl]
    sub a
    ld a, b
    sub l
    sbc d
    sbc b
    add [hl]
    sub l
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    sbc c
    ld a, c
    add a
    and l
    add a
    ld l, b
    adc b
    sub [hl]
    add a
    ld l, c
    ld e, b
    add [hl]
    sub [hl]
    ld a, b
    add a
    ld a, b
    db $76
    add [hl]
    sub a
    add a
    ld a, c
    ld l, b
    ld l, b
    ld [hl], a
    ld a, d
    db $76
    ld l, d
    db $76
    add a
    and a
    sbc c
    adc c
    ld a, b
    db $76
    db $76
    add [hl]
    ld [hl], a
    ld a, c
    add [hl]
    sub a
    adc b
    ld l, c
    ld a, d
    ld e, d
    add [hl]
    add [hl]
    ld l, c
    ld a, b
    ld l, c
    add a
    xor b
    ld a, d
    ld l, c
    ld [hl], a
    ld l, b
    ld l, c
    ld l, b
    xor b
    add [hl]
    adc b
    ld l, c
    ld h, [hl]
    sub a
    adc b
    adc b
    ld l, d
    ld l, b
    sub h
    sbc b
    ld l, c
    ld e, b
    db $76
    adc b
    db $76
    sbc e
    ld a, d
    db $76
    sub a
    ld h, a
    ld [hl], l
    ld [hl], a
    ld l, b
    add a
    sbc c
    sub a
    sbc b
    adc b
    ld c, c
    add [hl]
    sub [hl]
    ld [hl], a
    add [hl]
    adc d
    ld [hl], a
    rst $00
    ld l, d
    ld a, b
    add l
    ld [hl], a
    sub l
    ld l, b
    db $76
    ld [hl], a
    adc b
    ld l, c
    sbc c
    sub [hl]
    sbc c
    db $76
    sub a
    ld l, b
    add l
    sub a
    ld l, b
    adc b
    ld l, d
    ld a, b
    sbc b
    adc c
    ld c, d
    ld d, [hl]
    ld [hl], h
    ld [hl], a
    ld [hl], a
    ld l, c
    ld l, c
    and [hl]
    ld a, d
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add a
    db $76
    ld a, b
    add a
    adc d
    sbc b
    or a
    ld a, d
    ld d, [hl]
    sub a
    ld h, a
    add [hl]
    and [hl]
    ld e, c
    ld [hl], a
    adc b
    ld a, c
    sbc b
    sub a
    ld l, c
    add h
    ld [hl], l
    ld l, c
    add l
    cp b
    ld a, c
    ld a, b
    sbc c
    ld [hl], l
    or l
    ld a, d
    ld e, b
    add a
    sub [hl]
    db $76
    adc c
    ld e, c
    ld [hl], a
    sub l
    add a
    ld [hl], a
    sub a
    ld l, c
    add [hl]
    sub a
    ld l, e
    ld h, l
    sub a
    ld a, b
    sub [hl]
    cp c
    ld a, b
    sub l
    ld h, a
    ld h, [hl]
    ld h, l
    sub [hl]
    ld a, b
    sbc b
    ld a, d
    ld l, b
    and h
    adc d
    ld c, c
    db $76
    adc c
    ld h, [hl]
    or [hl]
    sbc c
    sbc b
    add [hl]
    ld a, b
    ld d, [hl]
    sub [hl]
    adc b
    ld e, d
    add a
    ld a, c
    ld [hl], l
    sub [hl]
    ld a, d
    ld c, b
    add h
    sbc c
    ld [hl], a
    ld l, b
    adc c
    add [hl]
    xor b
    ld e, c
    ld h, [hl]
    and a
    ld a, c
    ld h, a
    sub l
    add a
    and [hl]
    sbc b
    ld c, e
    db $76
    add a
    cp d
    add [hl]
    ld [hl], a
    add a
    and h
    adc d
    ld l, b
    sub a
    xor c
    ld l, b
    xor b
    ld l, b
    ld a, b
    add a
    adc b
    ld h, h
    sub l
    ld a, b
    ld l, c
    sbc b
    ld l, c
    sub [hl]
    add [hl]
    adc b
    ld [hl], h
    sbc c
    ld e, b
    and a
    sub a
    ld l, d
    db $76
    add a
    adc c
    ld h, a
    adc b
    ld h, [hl]
    and h
    sbc b
    ld e, d
    db $76
    ld a, e
    ld e, b
    sbc b
    ld a, b
    ld a, b
    add [hl]
    ld h, a
    ld a, b
    add [hl]
    adc d
    ld [hl], a
    and a
    ld l, h
    ld e, d
    add l
    adc c
    sub [hl]
    adc c
    ld c, c
    sub h
    sbc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add l
    and a
    ld l, b
    add [hl]
    sbc c
    ld l, c
    sub a
    adc b
    add a
    add [hl]
    ld a, b
    ld [hl], a
    db $76
    ld a, c
    ld e, b
    add [hl]
    adc c
    sub a
    adc c
    ld l, d
    ld h, [hl]
    add a
    ld l, c
    ld [hl], a
    sub a
    ld a, d
    ld [hl], a
    xor b
    adc d
    ld [hl], a
    and h
    adc b
    db $76
    ld a, b
    ld a, [hl-]
    db $76
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    db $76
    or a
    ld l, b
    add [hl]
    adc b
    ld c, d
    add l
    adc e
    ld h, a
    add a
    sub a
    add [hl]
    ld a, c
    ld e, d
    ld h, a
    add h
    xor b
    ld l, c
    add a
    ld l, b
    ld l, c
    ld [hl], a
    ld a, b
    sub [hl]
    add a
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    sbc b
    db $76
    ld a, d
    ld [hl], l
    sbc b
    ld l, c
    ld h, [hl]
    and a
    ld h, a
    sub a
    ld l, c
    ld l, b
    add a
    sbc b
    db $76
    sub [hl]
    sub a
    ld c, d
    adc b
    ld l, c
    sbc b
    sub a
    adc c
    ld h, [hl]
    sub l
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld l, d
    ld d, a
    adc b
    add a
    add l
    or [hl]
    ld l, c
    adc b
    ld h, [hl]
    add [hl]
    add l
    adc b
    sbc b
    adc b
    sub a
    ld l, d
    sub e
    add l
    ld a, c
    ld [hl], a
    ld e, d
    add a
    sub a
    ld d, a
    adc c
    add a
    ld [hl], a
    add [hl]
    db $76
    xor b
    ld [hl], a
    sub a
    sub [hl]
    adc c
    ld a, c
    ld l, b
    sub [hl]
    and [hl]
    add a
    add a
    add a
    ld l, b
    ld a, b
    sub [hl]
    sbc b
    add a
    ld e, d
    ld l, c
    db $76
    sub a
    add [hl]
    adc b
    ld a, b
    adc c
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld l, b
    add [hl]
    ld [hl], a
    ld a, c
    db $76
    ld l, c
    adc b
    ld [hl], a
    add a
    sbc b
    ld l, c
    ld d, a
    add $a4
    adc d
    adc c
    sbc c
    adc c
    ld l, b
    add a
    ld [hl], l
    adc b
    ld e, c
    ld l, b
    ld l, b
    adc b
    ld a, c
    db $76
    ld h, h
    adc b
    ld l, c
    ld e, c
    db $76
    and [hl]
    ld a, c
    ld [hl], a
    sub [hl]
    sub a
    adc c
    ld [hl], a
    and h
    and a
    adc b
    ld e, d
    ld a, b
    db $76
    adc c
    add a
    add a
    ld a, c
    ld l, c
    db $76
    db $76
    ld a, b
    ld l, c
    ld a, b
    adc c
    sbc c
    ld h, a
    ld a, c
    ld h, l
    add [hl]

jr_016_5f12:
    sub a
    adc c
    ld a, c
    ld a, c
    add l
    sub l
    sub a
    ld e, c
    ld e, c
    ld a, b
    sub a
    sub [hl]
    adc b
    ld a, b
    ld a, d
    ld l, c
    ld a, b
    add [hl]
    add [hl]
    and [hl]
    add a
    ld a, c
    ld a, b
    ld h, a
    ld l, b
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    add [hl]
    add [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub [hl]
    ld l, d
    ld l, b
    ld h, a
    sub a
    add [hl]
    sbc b
    adc b
    adc c
    ld [hl], a
    adc b
    add l
    add a
    add a
    ld l, c
    ld h, a
    ld a, b
    or l
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, c
    ld a, [hl-]
    ld [hl], a
    add l
    or a
    sbc b
    ld a, e
    add a
    and a
    add l
    ld e, d
    ld d, [hl]
    db $76
    sub a
    sbc c
    ld a, c
    ld l, c
    and l
    add a
    add a
    add [hl]
    ld a, b
    ld h, [hl]
    sbc c
    ld a, b
    ld [hl], a
    sub a
    adc c
    adc b
    adc d
    adc b
    ld h, a
    add l
    add a
    ld d, a
    ld a, c
    ld l, c
    ld a, b
    or [hl]
    sub a
    sub [hl]
    ld d, a
    ld l, b
    ld d, a
    ld a, b
    ld a, c
    adc c
    sub a
    adc h
    ld d, a
    add l
    sub l
    adc b
    ld a, b
    ld l, b
    adc b
    ld e, c
    ld e, d
    db $76
    sbc c
    ld a, b
    ld [hl], a
    sub l
    ld a, c
    ld l, d
    jr c, jr_016_5f12

    and a
    adc b
    ld c, d
    add a
    ld [hl], a
    sbc b
    and a
    ld l, c
    ld h, [hl]
    ld a, b
    db $76
    add [hl]
    or a
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld h, a
    ld l, d
    db $76
    ld a, b
    sbc b
    ld a, c
    sub l
    sbc b
    add [hl]
    add l
    adc c
    ld l, c
    sbc c
    ld e, b
    adc c
    db $76
    add a
    sub l
    sbc b
    add a
    adc b
    add l
    adc b
    adc c
    ld e, c
    ld e, c
    ld [hl], l
    or [hl]
    ld l, c
    ld a, c
    sub a
    adc b
    sub a
    ld l, d
    ld h, l
    and a
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    db $76
    sbc c
    ld e, c
    ld l, c
    ld l, b
    ld [hl], l
    add a
    ld l, e
    add l
    sub a
    sbc b
    adc d
    ld l, b
    db $76
    sub l
    ld h, a
    adc c
    ld c, b
    sub a
    sbc d
    ld a, b
    sub l
    ld [hl], a
    add l
    ld l, b
    ld h, [hl]
    sbc b
    adc d
    ld l, c
    adc b
    sub h
    xor b
    ld l, c
    ld [hl], a
    db $76
    add a
    sbc b
    ld e, c
    adc b
    ld [hl], a
    add l
    and [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    ld d, a
    add a
    adc d
    ld a, b
    xor c
    ld a, c
    db $76
    db $76
    adc b
    ld [hl], a
    add [hl]
    and a
    sub a
    sub [hl]
    adc c
    db $76
    ld l, c
    ld l, c
    add l
    ld a, d
    ld e, c
    ld h, [hl]
    sub e
    and a
    ld l, b
    ld l, c
    adc b
    or [hl]
    ld l, c
    ld e, c
    add [hl]
    add [hl]
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    sub a
    ld l, d
    ld e, b
    add l
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    sub a
    sub a
    add a
    sub [hl]
    ld a, c
    ld d, [hl]
    ld [hl], a
    ld a, b
    ld h, a
    xor c
    ld a, b
    sbc b
    ld [hl], a
    adc b
    add [hl]
    ld l, c
    ld h, a
    ld h, a
    add a
    ld l, d
    sbc b
    sbc b
    adc d
    db $76
    ld a, c
    ld [hl], a
    ld a, c
    ld l, c
    db $76
    push bc
    ld a, b
    ld l, d
    ld [hl], a
    and l
    sub [hl]
    adc c
    ld h, a
    ld [hl], a
    add a
    ld l, d
    ld a, b
    sbc b
    sub a
    adc b
    ld a, c
    db $76
    db $76
    add a
    ld h, a
    add a
    sbc b
    ld a, b
    ld l, c
    adc b
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    sbc c
    adc c
    ld l, d
    sub a
    add [hl]
    and [hl]
    ld a, b
    ld l, c
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    add [hl]
    add a
    adc c
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    adc d
    ld a, b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    adc c
    ld l, c
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    sub [hl]
    sub [hl]
    adc b
    add a
    add a
    add [hl]
    ld a, d
    add a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    add l
    ld a, c
    ld h, a
    add a
    add a
    adc b
    ld a, b
    ld e, c
    add [hl]
    add l
    adc d
    ld l, c
    add a
    ld l, c
    ld a, b
    sub [hl]
    adc c
    sub l
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld e, b
    and a
    ld a, c
    adc b
    sub [hl]
    sub a
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld h, a
    or h
    ld a, e
    ld a, b
    ld a, c
    adc b
    add h
    sbc b
    ld l, c
    ld a, b
    ld h, a
    ld h, [hl]
    add a
    ld a, d
    ld a, b
    db $76
    and [hl]
    ld a, b
    ld h, a
    ld [hl], a
    sub [hl]
    add a
    ld l, d
    ld l, b
    sub a
    adc c
    ld a, c
    ld a, b
    sub [hl]
    sub a
    adc b
    adc b
    ld l, b
    add [hl]
    add a
    add [hl]
    sub [hl]
    ld a, c
    ld e, b
    ld l, b
    add [hl]
    add a
    add a
    ld [hl], a
    add [hl]
    and a
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    add [hl]
    ld [hl], a
    adc c
    ld a, b
    add a
    ld [hl], a
    add [hl]
    ld a, c
    ld e, c
    db $76
    sub a
    sub a
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    and a
    adc b
    sub a
    db $76
    sub [hl]
    ld a, c
    ld e, b
    ld h, [hl]
    add a
    ld a, c
    ld a, c
    add [hl]
    sub a
    ld a, c
    ld [hl], a
    ld [hl], a
    add [hl]
    xor b
    add a
    ld l, c
    adc c
    db $76
    adc b
    db $76
    sub [hl]
    adc c
    ld [hl], a
    ld a, b
    and [hl]
    ld a, c
    ld c, c
    add [hl]
    db $76
    ld [hl], a
    ld a, b
    sbc c
    ld a, c
    adc c
    ld l, b
    add a
    ld [hl], a
    ld h, a
    add a
    sub [hl]
    sbc b
    add a
    sbc b
    ld c, d
    ld [hl], a
    adc b
    ld h, a
    ld [hl], a
    add a
    ld [hl], l
    add a
    add [hl]
    adc b
    adc b
    adc b
    adc c
    ld [hl], a
    ld a, c
    ld h, a
    add a
    ld l, b
    add [hl]
    add a
    sbc c
    add a
    add a
    sub [hl]
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld d, a
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], l
    sub a
    sub a
    ld a, b
    sub [hl]
    add a
    adc c
    ld l, c
    adc b
    ld h, a
    adc b
    ld l, b
    ld l, c
    add [hl]
    adc b
    add [hl]
    ld a, b
    add a
    ld [hl], a
    and a
    adc c
    ld a, c
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], l
    sub a
    ld [hl], a
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    sbc b
    ld l, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    ld a, b
    db $76
    sbc b
    adc b
    ld a, b
    sub [hl]
    add [hl]
    adc b
    ld e, d
    ld e, b
    add a
    sbc b
    ld e, c
    ld l, c
    db $76
    sub l
    sub a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    ld a, c
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    db $76
    sbc b
    add a
    adc b
    ld a, c
    ld h, a
    adc b
    ld a, b
    ld h, a
    adc c
    ld [hl], a
    add a
    ld l, b
    add [hl]
    add a
    adc b
    add [hl]
    add a
    adc b
    ld e, d
    add [hl]
    sub [hl]
    and a
    ld l, d
    ld e, c
    ld [hl], h
    cp b
    ld l, b
    ld a, b
    sub [hl]
    sub l
    sub a
    ld l, b
    add [hl]
    ld a, b
    adc d
    ld e, c
    ld a, b
    sub a
    ld [hl], a
    sub a
    add [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    adc c
    db $76
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    add [hl]
    adc b
    adc b
    ld a, b
    sub a
    sub a
    ld a, c
    ld e, c
    sub l
    adc b
    adc c
    ld [hl], a
    ld l, b
    add a
    adc b
    ld h, a
    add a
    add [hl]
    add a
    sbc b
    ld [hl], a
    adc b
    adc b
    ld l, b
    add a
    add a
    add a
    adc b
    add [hl]
    ld a, c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    sub [hl]
    add a
    ld a, c
    ld l, b
    ld [hl], a
    and a
    adc c
    ld l, c
    ld d, a
    sub [hl]
    add [hl]
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    ld a, c
    add a
    add l
    add [hl]
    ld a, b
    ld [hl], a
    add [hl]
    sbc c
    ld e, d
    ld h, a
    sub a
    ld a, b
    ld [hl], a
    adc c
    add a
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, c
    ld a, b
    sub [hl]
    adc c
    ld a, c
    db $76
    add a
    sbc b
    ld e, c
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    sub a
    adc b
    ld a, b
    db $76
    add a
    adc b
    add a
    ld l, c
    add a
    sub [hl]
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld [hl], a
    add a
    ld h, a
    sub [hl]
    ld a, c
    adc b
    add [hl]
    and a
    ld l, b
    adc b
    ld l, c
    ld [hl], a
    adc b
    adc b
    ld l, c
    ld l, c
    ld [hl], l
    adc b
    sbc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld a, b
    add [hl]
    add l
    add [hl]
    add a
    ld e, c
    add [hl]
    add a
    ld a, d
    ld l, c
    ld a, b
    ld h, a
    add a
    db $76
    adc b
    sub a
    xor b
    adc b
    ld a, b
    and [hl]
    db $76
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    and a
    ld a, d
    ld l, b
    db $76
    sub l
    adc b
    ld l, d
    ld e, b
    adc b
    ld [hl], h
    ld a, c
    ld a, c
    ld h, a
    adc b
    sbc b
    ld a, c
    ld e, c
    db $76
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    sub a
    sub [hl]
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc c
    add [hl]
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld l, b
    add a
    add [hl]
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld h, a
    sub [hl]
    ld a, b
    ld l, b
    adc b
    sbc c
    sub [hl]
    adc b
    ld l, b
    ld [hl], a
    sub a
    ld a, b
    adc c
    ld a, b
    add a
    add a
    add [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    sub a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sbc b
    add [hl]
    adc c
    ld a, b
    add [hl]
    sub [hl]
    adc c
    ld a, b
    ld e, c
    db $76
    db $76
    sbc b
    ld a, c
    ld a, b
    add [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld a, c
    adc b
    add a
    add a
    add a
    ld l, d
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld l, d
    db $76
    and l
    adc b
    ld e, c
    add a
    add [hl]
    adc b
    ld a, c
    ld h, a
    add a
    sub a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld l, b
    add a
    ld [hl], a
    adc b
    add a
    add a
    add [hl]
    adc b
    add [hl]
    sbc b
    ld a, b
    ld l, c
    ld a, c
    ld [hl], a
    sub a
    ld a, c
    ld h, a
    and [hl]
    sub a
    add [hl]
    adc b
    add a
    db $76
    add a
    add [hl]
    sbc b
    ld a, b
    add a
    add a
    sub a
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    add a
    ld a, c
    ld h, a
    sub a
    adc c
    ld a, c
    adc b
    ld l, b
    sub [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    add l
    sbc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    sub a
    add a
    sbc b
    adc b
    add a
    add [hl]
    add [hl]
    add a
    ld l, d
    add a
    sub [hl]
    add a
    adc b
    ld a, b
    ld c, b
    add [hl]
    add a
    ld a, d
    ld l, b
    adc b
    sub [hl]
    adc b
    ld l, b
    db $76
    and a
    add a
    sub a
    add a
    adc b
    ld h, a
    ld a, c
    add a
    ld a, b
    add a
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    sub a
    ld l, d
    ld l, c
    sub l
    xor b
    ld a, d
    ld h, a
    adc b
    db $76
    sub a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    db $76
    sub a
    ld a, b
    ld [hl], a
    and a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    adc b
    ld [hl], a
    sub [hl]
    sub a
    ld a, c
    db $76
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld [hl], a
    add l
    sub a
    ld h, a
    add a
    add a
    sub a
    adc c
    ld l, b
    add [hl]
    add a
    ld a, b
    add a
    adc c
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld h, [hl]
    add a
    sbc b
    ld e, c
    add a
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    sbc c
    adc b
    ld [hl], a
    add a
    add [hl]
    sub a
    adc c
    ld a, b
    add a
    adc c
    add a
    ld a, b
    ld l, b
    ld h, a
    sub [hl]
    ld [hl], a
    add a
    ld a, b
    sub a
    ld a, b
    adc d
    ld e, c
    sub [hl]
    adc b
    ld e, b
    add a
    adc b
    add a
    sbc b
    adc b
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, c
    ld h, a
    add [hl]
    sub a
    ld [hl], a
    add [hl]
    sub a
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    sub a
    sub a
    ld l, d
    add [hl]
    add a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld [hl], a
    sbc b
    ld e, b
    add a
    sub a
    ld a, c
    ld h, a
    ld a, b
    add a
    ld l, c
    sub a
    add a
    add [hl]
    add a
    adc b
    ld [hl], a
    and [hl]
    adc b
    adc b
    ld a, c
    ld [hl], a
    and [hl]
    sbc c
    ld e, c
    db $76
    sub [hl]
    sub a
    ld l, b
    adc b
    ld h, a
    sub [hl]
    sbc b
    ld a, c
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sbc b
    sub [hl]
    adc b
    add [hl]
    ld a, b
    ld a, b
    ld h, a
    sub [hl]
    ld a, b
    ld l, b
    ld a, b
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    sub [hl]
    ld a, c
    ld a, b
    add a
    add a
    add a
    ld a, d
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    adc c
    ld a, b
    add a
    ld a, b
    add a
    ld l, c
    ld h, a
    sub l
    adc c
    ld e, c
    ld [hl], a
    db $76
    and a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld l, c
    add l
    adc c
    ld l, b
    ld [hl], a
    add a
    db $76
    sub a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub l
    adc c
    ld l, b
    ld a, b
    adc c
    ld e, b
    add a
    ld a, b
    sub a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, d
    db $76
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld l, b
    sub a
    add [hl]
    sub a
    ld a, b
    sub [hl]
    and a
    adc b
    ld l, b
    add [hl]
    add a
    ld a, b
    ld a, c
    add a
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    add [hl]
    ld a, b
    add [hl]
    sbc b
    adc b
    adc c
    add a
    sbc b
    ld l, b
    ld [hl], a
    db $76
    sbc b
    adc b
    ld e, c
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]

Call_016_64b9:
    adc b
    add a
    sub a
    adc b
    ld a, b
    ld a, c
    ld l, b
    and a
    ld l, c
    ld a, b
    db $76
    adc b
    ld a, b
    ld a, b
    add a
    ld l, c
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    ld h, a
    sub a
    add a
    adc c
    ld a, b
    adc b
    add [hl]
    adc b
    ld h, a
    add a
    add [hl]
    sbc b
    ld a, b
    adc b
    sbc c
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add [hl]
    ld l, c
    ld [hl], a
    adc b
    add a
    sub a
    adc b
    ld h, a
    ld [hl], a
    ld h, a
    sub [hl]
    sub [hl]
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    add a
    ld a, b
    add [hl]
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    sbc b
    ld l, b
    adc b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    ld [hl], a
    sub a
    add [hl]
    adc b
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld l, b
    add a
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    sbc b
    add a
    add a
    ld l, b
    add a
    add a
    ld a, d
    ld a, c
    adc b
    add a
    adc c
    ld h, a
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    ld l, b
    ld a, c
    ld [hl], a
    ld [hl], a
    db $76
    sub a
    ld l, b
    sub a
    add a
    sbc b
    adc b
    ld l, b
    sub a
    ld a, b
    ld a, d
    ld l, c
    xor b
    adc b
    ld l, b
    sub [hl]
    ld [hl], a
    db $76
    add a
    adc b
    ld a, b
    adc d
    db $76
    add [hl]
    ld a, b
    ld h, a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    ld l, c
    add a
    adc c
    add a
    add a
    ld l, c
    ld a, b
    ld l, b
    add a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld e, b
    sub a
    sbc b
    ld a, b
    add [hl]
    adc b
    db $76
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    sbc b
    adc b
    add a
    db $76
    add [hl]
    ld a, b
    ld h, a
    sub [hl]
    ld a, b
    adc b
    ld a, b
    adc b
    add [hl]
    ld a, c
    db $76
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    sub [hl]
    sbc c
    ld e, b
    adc b
    ld h, [hl]
    sub [hl]
    adc b
    ld h, a
    adc b
    adc b
    adc c
    ld e, c
    add [hl]
    sub l
    ld a, b
    add [hl]
    ld a, b
    sub a
    adc b
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    sub [hl]
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub a
    sbc c
    ld l, c
    add [hl]
    ld a, b
    db $76
    ld [hl], a
    ld l, c
    ld h, a
    sbc b
    add a
    add a
    ld l, b
    adc b
    ld [hl], a
    adc c
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    sbc b
    add a
    sub a
    add [hl]
    add [hl]
    ld [hl], a
    ld h, a
    ld a, b
    ld a, d
    adc b
    adc c
    add a
    ld h, a
    add [hl]
    ld [hl], a
    adc b
    ld h, a
    adc c
    ld a, b
    adc b
    ld a, b
    add a
    ld h, [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    adc b
    ld [hl], a
    sbc b
    ld a, b
    add a
    add a
    adc b
    add [hl]
    add a
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    add l
    ld a, b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    xor b
    ld l, c
    ld [hl], a
    and l
    adc b
    ld e, b
    adc b
    add a
    sub a
    adc b
    ld a, b
    sub a
    sub [hl]
    ld a, c
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add [hl]
    ld a, b
    db $76
    add a
    adc c
    ld a, b
    ld a, b
    add a
    sub a
    ld l, b
    sub [hl]
    ld a, b
    add [hl]
    adc c
    ld l, b
    add [hl]
    sbc b
    ld l, b
    adc b
    ld [hl], a
    sub [hl]
    add [hl]
    ld [hl], a
    add l
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    sub a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    sbc b
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    add a
    add a
    sub a
    adc b
    ld a, b
    ld a, c
    ld h, [hl]
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    add a
    ld a, b
    adc b
    ld l, d
    ld a, b
    add a
    sbc b
    ld l, b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc c
    ld [hl], l
    sub a
    ld a, c
    adc b
    ld a, b
    adc b
    add a
    adc c
    add a
    ld l, b
    sub [hl]
    adc b
    ld l, b
    ld [hl], a
    adc c
    add [hl]
    sbc b
    add a
    db $76
    ld l, b
    ld l, b
    db $76
    add a
    sbc b
    ld [hl], a
    adc b
    adc b
    ld l, c
    ld [hl], a
    add a
    sub l
    adc c
    ld a, d
    add [hl]
    sbc b
    add a
    ld a, b
    ld e, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add [hl]
    add a
    add a
    ld [hl], a
    ld l, d
    add [hl]
    sbc b
    add a
    ld a, c
    ld l, c
    ld d, [hl]
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    ld a, b
    ld l, b
    db $76
    add a
    ld l, c
    ld [hl], a
    sbc b
    xor b
    sub [hl]
    adc b
    ld a, b
    db $76
    add a
    adc b
    ld a, c
    ld a, b
    adc b
    sub [hl]
    adc b
    adc b
    ld h, a
    ld l, c
    db $76
    db $76
    adc b
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    ld a, b
    add [hl]
    sub [hl]
    sbc c
    ld d, a
    add a
    ld l, b
    sub a
    add a
    add a
    ld l, b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    adc c
    ld h, [hl]
    add [hl]
    ld a, c
    ld h, a
    adc b
    add a
    sub l
    adc b
    ld l, b
    adc b
    ld a, c
    adc b
    add [hl]
    and [hl]
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld h, a
    add a
    ld a, c
    ld a, b
    sub [hl]
    ld [hl], a
    sub [hl]
    adc b
    sbc b
    ld a, c
    adc b
    ld a, c
    ld [hl], a
    sub [hl]
    adc b
    db $76
    add a
    adc b
    ld a, c
    ld a, b
    adc c
    db $76
    ld [hl], a
    adc c
    ld h, a
    sub a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub a
    adc c
    ld [hl], a
    adc b
    sbc b
    ld a, b
    ld a, b
    add a
    sub a
    add a
    ld a, b
    ld h, a
    add a
    ld h, a
    add a
    add a
    ld l, c
    add a
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, c
    ld h, a
    and [hl]
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sub a
    adc b
    add [hl]
    xor b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    sub a
    ld l, c
    add a
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    add a
    adc c
    db $76
    ld a, c
    db $76
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    sbc b
    adc b
    ld a, b
    add [hl]
    sub a
    add [hl]
    add a
    add a
    ld a, b
    add [hl]
    sbc c
    ld a, b
    add l
    sbc c
    ld e, b
    ld a, b
    ld l, b
    ld [hl], a
    sub a
    ld a, c
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, c
    add [hl]
    add a
    ld a, c
    ld h, a
    sub a
    ld a, b
    add a
    ld a, b
    ld l, b
    sub a
    ld l, c
    add a
    add a
    ld [hl], a
    ld l, c
    add [hl]
    add a
    sub a
    ld a, c
    ld a, c
    ld [hl], a
    add [hl]
    sub [hl]
    ld a, b
    db $76
    sbc b
    ld [hl], a
    adc c
    ld a, b
    ld [hl], a
    sub a
    ld l, b
    ld l, b
    ld h, a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    ld a, c
    ld h, [hl]
    sub [hl]
    adc b
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld l, c
    add [hl]
    sub a
    ld a, b
    add a
    ld [hl], a
    ld l, b
    ld h, [hl]
    adc c
    ld l, b
    adc b
    ld a, d
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    sub a
    ld a, c
    ld l, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    sbc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    sbc b
    ld e, b
    sub a
    add a
    adc b
    adc b
    ld a, c
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    add a
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    sub [hl]
    adc c
    ld l, b
    ld l, b
    sub a
    add a
    adc b
    add [hl]
    adc b
    db $76
    ld l, c
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    db $76
    add a
    add a
    add a
    ld a, c
    ld h, a
    add [hl]
    adc b
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    sbc b
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld l, b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    db $76
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld l, b
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sbc b
    ld l, c
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sbc c
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    ld l, b
    ld [hl], a
    add a
    ld a, c
    add [hl]
    adc c
    add a
    ld a, b
    ld l, b
    ld h, [hl]
    adc b
    ld a, b
    adc b
    ld a, c
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld a, c
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    sub a
    add a
    ld a, b
    add [hl]
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    add [hl]
    adc b
    ld a, b
    db $76
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    add a
    add a
    ld a, b
    db $76
    ld l, c
    ld [hl], a
    add a
    sbc b
    add a
    ld a, c
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    add a
    sub [hl]

Call_016_68b6:
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc c
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    sub a
    ld a, b
    adc b
    db $76
    add a
    add a
    ld l, b
    ld l, b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    add a
    ld a, b
    adc b
    adc b
    add a
    add a
    ld h, a
    db $76
    ld l, b
    ld a, b
    adc b
    adc b
    sub a
    adc b
    ld a, b
    db $76
    add a
    ld a, b
    ld a, b
    ld a, c
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add l
    add a
    adc b
    adc b
    ld a, c
    adc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sub a
    adc c
    ld [hl], a
    sub a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    sub a
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    db $76
    sub a
    add a
    add a
    ld a, b
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, b
    adc b
    ld l, b
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    db $76
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    sub a
    adc b
    ld l, b
    ld a, b
    db $76
    ld a, b
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    ld l, b
    add a
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    sub a
    add a
    ld a, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    add a
    sbc b
    ld a, b
    adc b
    adc b

Call_016_6998:
    db $76
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld l, b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    ld h, a
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    db $76
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    add a
    adc b
    adc b
    adc b
    ld l, b
    db $76
    add a
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    sub a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld a, c
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld h, a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add l
    sbc b
    ld a, b
    adc b
    adc b
    db $76
    add a
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, c
    db $76
    sbc b
    ld a, b
    add a
    sub a
    ld [hl], a
    ld a, b
    db $76
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    ld h, a
    sub [hl]
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub a
    ld [hl], a
    add a
    add a
    add a
    adc c
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    sub a
    adc b
    ld l, b
    add a
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    sub a
    ld a, b
    add a
    ld a, b
    sub a
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld l, b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    add [hl]
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    add a
    ld h, a
    adc c
    add a
    adc b
    adc b
    ld l, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    add a
    add a
    adc c
    ld l, b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, c
    add a
    add [hl]
    add [hl]
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sub a
    sub a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    sbc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    adc b
    adc c
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, c
    add a
    adc b
    add a
    adc b
    add a
    sub [hl]
    sub [hl]
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    add a
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc c
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    ld a, c
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    ld a, c
    ld a, b
    add a
    adc b
    ld a, b
    sub a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    sub [hl]
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld l, c
    add [hl]
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    adc b
    ld l, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld l, c
    add [hl]
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc c
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    adc b
    adc b
    adc b
    adc b
    ld h, a
    add a
    adc b
    add a
    ld a, c
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    ld h, a
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    sbc b
    ld l, c
    ld l, c
    ld a, b
    add a
    adc c
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add [hl]
    adc b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    add a
    add a
    sub a
    ld a, c
    ld [hl], a
    sub a
    add a
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    add a
    sub [hl]
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld l, c
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    adc b
    sub a
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    adc b
    add a
    db $76
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    ld h, a
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a

Jump_016_6cbd:
    ld a, b
    ld l, c
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    sub a
    adc c
    ld [hl], a
    add [hl]
    adc b
    db $76
    add a
    add a
    ld [hl], a
    ld a, c
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add [hl]
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    ld a, c
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    sbc b
    ld a, b
    add [hl]
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    adc b
    ld l, c
    ld l, b
    add [hl]
    sub a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    add [hl]
    sub a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld l, b
    add a
    ld a, c
    ld a, b
    ld a, b
    add a
    sub [hl]
    adc b
    adc b
    ld l, b
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    add [hl]
    sub a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    add a
    adc b
    add a
    ld a, c
    db $76
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    sbc b
    ld l, b
    add a
    ld a, b
    add a
    adc c
    ld l, b
    add a
    add a
    sub [hl]
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    add [hl]
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    ld l, b
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, c
    ld a, b
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
    ld a, b
    ld l, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    sub a
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
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    ld l, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    add [hl]
    adc b
    add a
    adc b
    db $76
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    db $76
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc c
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    sub a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    add a
    sbc b
    add a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    sbc b
    sbc b
    and a
    ld d, [hl]
    ld [hl], $76
    adc b
    adc d
    sbc d
    add [hl]
    ld a, b
    ld h, [hl]
    adc b
    add a
    sbc b
    ld a, d
    ld a, [hl+]
    sbc e
    ld a, c
    ld h, $97
    ld b, l
    ld d, b
    inc de
    ld [hl], a
    adc a
    rst $38
    ld [$3742], a
    cp d
    and [hl]
    ld h, b
    ld e, c
    xor h
    and a
    ld h, [hl]
    adc d
    ld l, c
    xor b
    cp c
    ld h, h
    inc [hl]
    cp h

Call_016_6fbc:
    xor $b6
    ld b, [hl]
    ld h, a
    ld d, $78
    ld d, l
    ld b, l
    sbc c
    xor e
    sbc c
    adc b
    adc b
    ld l, b
    adc c
    and a
    ld [hl], l
    ld d, [hl]
    add [hl]
    db $76
    ld h, l
    sbc b
    xor c
    xor d
    sbc c
    sbc d
    sbc b
    ld d, a
    ld h, [hl]
    ld d, [hl]
    ld d, e
    ld h, h
    sbc b
    ld a, c
    ld [hl], a
    ld [hl], a
    sub a
    ld l, l
    xor e
    ret z

    jp z, Jump_016_51bd

    db $10
    dec d
    sbc l
    db $ec
    ld b, b
    ld a, l
    sub e
    dec d
    sbc d
    ld l, b
    db $db
    ld a, d
    ld l, b
    ld b, d
    ld e, c
    sbc d
    call c, Call_016_5674
    sbc b
    ld h, a
    sbc c
    ld h, h
    ld d, [hl]
    sub a
    rlca
    ld b, a
    ld e, c
    call $b9ba
    ld [hl], h
    ld d, a
    xor c
    ld [hl], h
    ld a, d
    db $76
    ld c, b
    xor c
    xor d
    add a
    add [hl]
    rst $20
    jr nz, jr_016_704e

    sbc d
    call z, Call_016_4a83
    ld [$5921], a
    cp l
    add sp, $44
    ld c, d
    cp e
    add [hl]
    ld h, [hl]
    ld l, b
    or a
    ld h, h
    ld d, e
    ld b, a
    xor e
    sbc b
    ld h, a
    sbc [hl]
    or [hl]
    ld a, c
    ld [hl], e
    ld d, [hl]
    ld a, b
    ld l, c
    ld h, e
    ld b, a
    xor h
    bit 6, [hl]
    ld b, h
    ld l, b
    db $76
    ld a, d
    sbc h
    or [hl]
    ld c, b
    sbc e
    sub a
    ld [hl], h
    ld h, a
    ld h, [hl]
    ld a, d
    xor b
    xor e
    ld h, d
    ld bc, $c87c
    call c, $8a86
    add h
    daa

jr_016_704e:
    cp d
    ld h, h
    ld [hl], a
    ld a, d
    rst $00
    ld h, h
    dec [hl]
    cp d
    ret z

    inc [hl]
    sbc h
    cp c
    db $76
    ld d, d
    ld e, b
    xor e
    and a
    ld h, [hl]
    ld h, h
    ld d, [hl]
    sbc h
    ret z

    ld d, l
    add a
    adc b
    ld [hl], h
    ld d, [hl]
    sbc e
    ret


    db $76
    ld h, h
    inc sp
    ld e, e
    call z, Call_016_5985
    xor h
    ret c

    ld b, e
    dec [hl]
    adc d
    sub [hl]
    ld b, [hl]
    sbc e
    xor c
    adc b
    add [hl]
    ld [hl], a
    ld d, a
    adc d
    and a
    ld a, b
    cp b
    add a
    ld [hl], a
    adc c
    add l
    ld d, l
    sbc [hl]
    and a
    ld b, l
    adc d
    sbc b
    adc b
    ld h, h
    ld c, b
    xor c
    ld d, h
    xor l
    jp z, Jump_000_3476

    adc b
    ld h, l
    adc e
    and [hl]
    ld l, c
    sub l
    ld [hl], $cc
    ld [hl], h
    ld a, e
    add $55
    cp l
    rst $00
    inc [hl]
    adc b
    add [hl]
    ld b, h
    ld e, d
    sbc b
    ld d, a
    sbc c
    ld h, h
    ld d, a
    ld a, c
    rst $08
    sbc c
    ld b, l
    ld h, [hl]
    ld a, b
    xor c
    add a
    ld [hl], l
    dec [hl]
    ld a, c
    ld h, [hl]
    adc d
    and a
    adc d
    sub [hl]
    ld d, l
    ld l, b
    sub a
    ld a, c
    cp c
    adc b
    adc b
    add a
    ld d, [hl]
    and [hl]
    ld h, l
    adc c
    ld [hl], a
    ld l, c
    sbc b
    ld h, l
    ld a, c
    cp b
    add [hl]
    ld b, a
    xor e
    sub a
    ld d, l
    ld d, [hl]
    ld a, c
    xor c
    xor d
    add l
    ld d, [hl]
    ld [hl], a
    adc c
    xor d
    ld d, h
    ld l, b
    add a
    adc c
    or a
    ld h, [hl]
    sbc c
    ld [hl], e
    ld l, d
    cp d
    ld h, [hl]
    adc b
    adc b
    ld h, [hl]
    sbc d
    db $76
    ld l, b
    cp c
    add [hl]
    ld h, [hl]
    ld d, a
    adc b
    ld l, c
    xor b
    ld h, [hl]
    ld l, b
    db $76
    adc c
    or a
    ld h, [hl]
    sbc b
    adc b
    add [hl]
    ld h, [hl]
    adc d
    sub a
    ld h, a
    adc c
    ld a, b
    sbc c
    add a
    ld d, a
    adc c
    adc b
    ld [hl], h
    ld d, [hl]
    sbc c
    add [hl]
    adc b
    adc b
    sbc d
    sbc c
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld a, d
    and a
    ld a, c
    adc c
    ld d, [hl]
    ld h, a
    adc b
    sbc b
    ld h, a
    adc b
    ld [hl], a
    and a
    ld [hl], a
    sbc b
    add [hl]
    ld a, b
    sub [hl]
    ld h, a
    adc d
    add a
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld [hl], a
    add a
    ld h, [hl]
    ld a, d
    adc b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld a, c
    ld h, a
    ld [hl], a
    adc c
    sbc b
    ld l, b
    ld l, b
    adc c
    sub a
    ld h, a
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    sbc c
    add a
    ld d, l
    ld l, b
    adc c
    sbc b
    adc b
    add [hl]
    db $76
    adc b
    add a
    adc b
    db $76
    add a
    db $76
    ld [hl], a
    xor c
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc c
    ld h, [hl]
    ld h, a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    sbc c
    ld [hl], l
    adc c
    ld [hl], a
    ld h, a
    adc b
    add a
    ld [hl], a
    ld l, b
    sub a
    db $76
    adc c
    sbc b
    db $76
    sub l
    ld l, c
    sbc b
    ld h, [hl]
    adc b
    add a
    adc c
    add a
    ld a, b
    adc b
    ld d, [hl]
    ld a, b
    add a
    adc b
    adc b
    ld h, [hl]
    adc b
    sub a
    ld l, b
    ld a, b
    ld a, b
    sbc c
    add a
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    sbc b
    ld l, b
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld l, c
    xor d
    db $76
    ld l, b
    add a
    ld a, b
    db $76
    ld a, c
    sbc c
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld a, c
    adc b
    ld l, b
    adc b
    add a
    ld d, a
    db $76
    ld l, b
    adc b
    ld h, a
    adc c
    add a
    ld h, a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    sub a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, a
    ld a, c
    ld a, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_016_7977:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_016_7b8b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
