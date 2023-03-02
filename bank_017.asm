; disasSembly of "lsdj.gb"
SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld h, b
    ld b, b
    add b
    ld b, e
    ld b, b
    ld b, [hl]
    nop
    ld c, l
    ld b, b
    ld d, c
    sub b
    ld d, l
    nop
    ld e, e
    ldh [$5c], a
    nop
    ld h, b
    db $10
    ld h, h
    nop
    ld h, a
    ld b, b
    ld l, a
    ld h, b
    halt
    ld a, e
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    ld b, d
    ld d, d
    ld c, e
    ld b, [hl]
    ld b, l
    ld c, l
    ld c, b
    ld c, c
    ld d, h
    ld b, e
    ld c, b
    ld c, e
    ld b, h
    ld c, c
    ld e, d
    ld c, a
    ld d, l
    ld d, h
    ld c, c
    dec l
    dec l
    ld b, e
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld c, a
    dec l
    ld c, [hl]
    ld c, a
    ld [hl-], a
    ld c, a
    ld c, b
    dec l
    ld b, c
    ld c, b
    dec l
    ld d, a
    ld b, l
    dec l
    ld c, h
    ld c, c
    ld c, e
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    ld b, c
    ld b, e
    ld c, c
    ld b, l
    ld b, l
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $9899
    sbc b
    ld [hl], a
    db $76
    db $76
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld d, [hl]
    db $76
    ld a, b
    sbc b
    sbc d
    ld l, d
    xor d
    xor d
    xor e
    xor d
    xor c
    xor c
    xor b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld [hl], a
    sbc b
    sbc d
    sbc c
    sub a
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    add a
    ld h, l
    ld h, a
    ld h, l
    ld h, a
    ld h, h
    ld d, l
    ld b, [hl]
    ld h, a

Call_017_4099:
    ld a, b
    sbc c
    sbc c
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    or a
    ld d, a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld l, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    sbc d
    xor e
    call z, $b96b
    sbc b
    xor c
    adc c
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld d, [hl]
    ld h, [hl]
    sbc d
    xor c
    cp e
    call c, $a9ab
    sbc e
    sbc b
    db $76
    ld h, l
    ld d, h
    ld b, h
    ld b, l
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, l
    ld b, e
    ld b, h
    ld a, b
    adc c
    adc d
    db $dd
    db $db
    xor d
    cp d
    xor b
    add [hl]
    ld h, [hl]
    ld d, [hl]
    add [hl]
    ld l, b
    adc c
    xor b
    ld [hl], a
    add a
    db $76
    ld b, h
    dec h
    adc b
    ld a, b
    adc d
    cp [hl]
    call c, $8999
    rst $10
    ld d, l
    ld [hl], $46
    ld d, a
    ld a, c
    xor d
    sub a
    ld h, a
    ld [hl], a
    ld [hl], l
    inc sp
    inc de
    ld a, b
    ld [hl], a
    sbc e
    dec c
    res 1, b
    ld a, b
    sbc b
    ld h, l
    ld b, h
    ld l, b
    ld l, c
    cp e
    xor c
    db $76
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld b, d
    ld h, h
    ld a, b
    ld a, b
    cp l
    cp d
    adc b
    ld a, b
    sbc c
    sbc b
    ld b, h
    ld b, [hl]
    adc c
    cp l
    cp b
    db $76
    ld h, [hl]
    adc c
    adc c
    ld [hl], l
    ld [hl-], a
    ld c, b
    sbc b
    xor l
    ret


    ld h, [hl]
    sbc c
    xor d
    xor b
    ld [hl], e
    dec [hl]
    adc d
    call z, Call_017_4576
    add a
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, e
    ld c, b
    cp e
    ret z

    ld [hl], a
    adc e
    ret


    ld a, b
    add [hl]
    sub l
    ld l, b
    cp e
    sub [hl]
    ld d, [hl]
    sbc c
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld d, c
    ld l, c
    xor l
    rst $10
    ld d, a
    ld a, e
    cp b
    sbc c
    ld h, l
    ld b, l
    adc h
    jp z, Jump_017_5853

    xor d
    sub l
    ld d, l
    ld h, a
    adc d
    and [hl]
    ld bc, $ce6b
    and e
    ld l, b
    cp h
    cp c
    adc b
    inc [hl]
    ld h, a
    call Call_000_24a5
    adc e
    cp b
    ld h, h
    ld d, [hl]
    jp z, Jump_017_51ca

    inc bc
    sbc l
    db $dd
    ld b, d
    ld e, d
    sbc $c8
    ld b, h
    dec [hl]
    cp l
    rst $10
    inc sp
    ld a, e
    call z, Call_017_4563
    ld a, d
    xor e
    add l
    inc [hl]
    dec [hl]
    sbc [hl]
    xor b
    ld b, e
    cp a
    reti


    ld [hl], l
    ld l, b
    ld l, c

jr_017_4190:
    cp b
    ld h, l
    ld a, c
    ret z

    ld h, [hl]
    ld d, l
    adc b

Jump_017_4197:
    ld a, c
    ld d, [hl]
    ld a, b
    db $76
    ld [de], a
    adc e
    jp z, $ac73

    sbc c
    and a
    ld d, [hl]
    ld a, b
    ret c

    ld b, a
    ld l, d
    or a
    ld d, [hl]
    add [hl]
    ld [hl], a
    ld l, c
    ld h, a
    xor d
    add h
    ld [de], a
    adc [hl]
    sub $63
    cp [hl]

jr_017_41b4:
    cp c
    add l
    ld b, [hl]
    xor c
    or l
    daa
    xor d
    or l
    dec [hl]
    add a
    adc b
    ld [hl], $27
    cp d
    ld d, l
    inc sp
    ld a, l
    push hl
    ld d, [hl]
    xor a
    jp hl


    ld h, h
    ld h, a
    jp z, Jump_000_1675

    db $ed
    add d
    ld b, a
    cp d
    ld h, [hl]
    ld [hl], $a8
    cp b
    dec [hl]
    ld [hl], a
    scf
    jp hl


    ld c, b
    xor l
    rst $30
    ld d, a
    cp b
    sbc d
    rst $10
    ld b, h
    db $db
    add h
    jr c, jr_017_4190

    ld b, e
    ld h, l
    xor c
    ld h, a
    ld b, a
    and [hl]
    ld [hl+], a
    sbc [hl]
    and e
    ld a, c
    ld c, l
    ld h, a
    xor b
    ld a, h
    add h
    ld [hl], h

jr_017_41f6:
    adc a
    add a
    ld d, l
    xor e
    add d
    ld d, l
    ld a, h
    ld h, l
    ld d, [hl]
    sbc b
    add b
    ld c, h
    push hl
    jr z, jr_017_41b4

jr_017_4205:
    and l
    adc b
    adc c
    or l
    ld b, l
    ld a, [hl]
    sub l
    ld h, l
    adc l
    add h
    ld d, [hl]
    ld c, c
    ld [hl], e
    ld l, b
    cp b
    inc [hl]
    jr c, jr_017_4205

    ld sp, $f5be
    ld c, d
    adc d
    add $35
    sbc d
    and l
    cp b
    adc e
    add h
    ld d, a
    sbc c
    ld d, e
    ld a, c
    sbc b
    ld b, h
    ld h, h
    adc [hl]
    or c
    ld c, e
    db $fd
    jr z, jr_017_41f6

    add hl, sp
    scf
    adc b
    add [hl]
    ld c, b
    xor b
    ld [hl], e
    ld a, d
    ld l, b
    ld h, h
    ld a, b
    ld h, [hl]
    ld l, b
    add l
    ld [hl], $de
    ld h, e
    cp [hl]
    or d
    sbc h
    ld a, h
    sub e
    ld l, b
    sub a
    ld [hl], l
    adc e
    ld [hl], l
    ld e, d
    or h
    db $76
    ld e, c
    ld h, l
    cp b
    sub l
    ld d, d
    ld c, l
    or $1a
    db $ec
    ld b, [hl]
    ret z

    reti


    daa
    xor c
    add l
    ld c, c
    sub $37
    adc e
    ld d, [hl]
    ld h, a
    or l
    scf
    ld a, d
    ld [hl], d
    ld b, l
    sbc l
    and b
    ld a, a
    jp $b94d


    sub c
    ld a, h
    add [hl]
    dec h
    xor e
    ld d, d
    ld a, e
    or l
    ld c, c
    sbc d
    ld b, h
    sbc c
    add [hl]
    scf
    ld [hl], l
    xor l
    ld b, e
    adc $83
    adc $6a
    ld d, l
    rst $20
    ld b, l
    ld e, b
    sub a
    ld h, $b8
    ld [hl], h
    adc e
    add a
    ld c, c
    sub [hl]
    ld [hl], h
    sub a
    dec [hl]
    xor h
    ld b, e
    call z, $cb76
    sbc e
    ld b, a
    sub $65
    ld e, c
    add [hl]
    ld h, $b8
    ld h, l
    ld l, d
    sub a
    ld c, d
    sub l
    db $76
    add [hl]
    ld b, e
    sbc a
    ld h, b

Call_017_42a9:
    cp l
    add h
    xor [hl]
    adc e
    ld d, [hl]
    and $75
    xor c
    ld h, h
    ld c, b
    and l
    ld h, a
    cp c
    ld a, b
    ld a, e
    add [hl]
    add a
    add a
    inc sp
    adc [hl]
    ld h, c
    sbc l
    ld [hl], e
    ld a, [hl]
    cp c
    ld [hl], a
    ld sp, hl
    ld b, [hl]
    ld a, d
    ld h, e
    ld c, c
    sub e
    ld l, b
    and a
    ld l, d
    sbc e
    add [hl]
    cp b
    db $76
    db $76
    ld c, c
    and d
    ld c, l
    sub e
    ld a, l
    rst $00
    adc c
    jp c, $9958

    ld d, e
    ld h, a
    ld [hl], d
    ld e, b
    ld [hl], a
    ld l, b
    xor b
    ld a, b
    ret z

    ld e, c
    sub a
    ld e, d
    and d
    ld c, l
    ld [hl], h
    ld a, l
    sub [hl]
    sbc c
    ret z

    ld l, c
    xor c
    db $76
    adc b
    ld d, h
    ld h, l
    ld d, a
    ld c, b
    db $76
    ld l, b
    and [hl]
    ld a, b
    sbc d
    add e
    xor h
    ld [hl], h
    adc h
    add l
    dec sp
    and [hl]
    ld a, e
    sbc b
    ld l, c
    and a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld d, [hl]
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    sbc e
    ld [hl], a
    ld hl, sp+$38
    ret


    ld e, d
    sbc d
    ld a, b
    xor c
    db $76
    sbc b
    ld h, [hl]
    adc b
    ld d, [hl]
    adc b
    ld d, l
    ld a, d
    sub [hl]
    ld a, b
    db $76
    add a
    and a
    ld c, d
    push bc
    ld c, d
    call nz, $b67a
    ld l, e
    or a
    ld l, c
    xor b
    ld d, a
    or a
    ld e, b
    add [hl]
    ld c, b
    sub a
    ld d, a
    adc b
    ld h, [hl]
    adc c
    add l
    sbc d
    ld h, l
    xor e
    ld h, [hl]
    cp d
    ld h, l
    ld a, e
    db $76
    sbc e
    ld h, l
    sbc d
    ld d, [hl]
    add a
    db $76
    adc c
    db $76
    ld [hl], a
    add l
    ld a, c
    ld l, c
    add [hl]
    ld a, d
    ld h, [hl]
    sbc c
    db $76
    sbc c
    ld [hl], a
    xor b
    db $76
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sbc b
    db $76
    adc c
    ld [hl], a
    sub a
    db $76
    adc b
    ld a, b
    adc b
    ld l, b
    sbc c
    ld l, b
    adc b
    ld a, b
    adc b
    ld l, c
    add a
    ld l, b
    add a
    adc b
    adc b
    ld l, b
    add a
    ld a, b

Jump_017_4375:
    ld [hl], a
    db $76
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    add a
    add a

Call_017_4386:
    ld h, [hl]
    sbc d
    add [hl]
    ld a, b
    ld a, b
    adc b
    sub a
    ld d, [hl]
    adc d
    add [hl]
    ld a, b
    ld h, [hl]
    sbc c
    add a
    ld d, l
    adc c
    sbc b
    ld [hl], a
    ld d, l
    adc d
    sub a
    ld h, l
    adc b
    xor d
    add [hl]
    ld d, h
    ld a, d
    xor b
    ld h, l
    ld h, a
    xor h
    sub l
    ld b, h
    ld l, c
    cp b
    ld [hl], l
    ld d, [hl]
    xor l
    and l
    ld d, l
    ld c, b
    ret


    add l
    dec [hl]
    xor l
    rst $10
    ld b, e
    ld b, a
    xor e
    add [hl]
    ld b, h
    sbc l
    reti


    ld b, e
    dec h
    xor h
    or a
    ld d, h
    xor d
    jp c, Jump_000_3551

    sbc e
    reti


    ld h, h
    ld h, a
    cp h
    ld [hl], c
    ld [hl], $7a
    ld [$4564], a
    xor h
    ld b, h
    ld b, l
    ld l, e
    cp d
    db $76
    ld b, h
    sbc h
    rst $00
    ld d, l
    ld d, [hl]
    sbc d
    cp b
    ld d, h
    ld a, d
    ret


    ld h, e
    push de
    adc h
    db $db
    ld [hl], d
    ld c, b
    xor e
    sub l
    ld b, l
    ld l, d
    db $ed
    ld [hl], d
    ld h, $8d
    ret z

    inc [hl]
    add hl, sp
    cpl
    and e
    inc d
    ld a, e
    ei
    ld b, c
    scf
    rst $08
    push bc
    ld [hl+], a
    ld c, e
    cp $61
    dec d
    rst $08
    rst $10
    pop bc
    ld c, c
    rst $38
    sub d
    inc b
    xor a
    jp c, Jump_000_1851

    sbc $c6
    ld [bc], a
    adc l
    bit 4, d
    dec b
    ld l, l
    ret c

    ld de, $cb7b
    sub l
    inc d
    sbc h
    jp c, Jump_017_5a41

    xor e
    and a
    inc hl
    adc d
    res 0, d
    ld e, c
    sbc c
    xor c
    ld b, e
    ld a, c
    cp d
    sub l
    ld d, a
    adc b
    xor d
    ld [hl], h
    ld h, a
    sbc d
    sbc b
    db $76
    and [hl]
    adc e
    sub [hl]
    ld h, [hl]
    adc c
    sbc c
    sub [hl]
    ld h, [hl]
    ld a, d
    xor b
    ld [hl], l
    ld e, b
    sbc d

jr_017_443d:
    xor c
    ld h, h
    ld e, c
    ld c, d
    sub [hl]
    ld b, [hl]
    adc d
    call z, $3673
    xor d
    cp b
    ld b, l
    ld l, b
    sbc $92
    dec h
    adc e
    jp c, Jump_017_47a3

    rst $18
    jp Jump_017_7a13


    call c, $2562
    cp a
    rst $20
    ld [bc], a
    ld l, b
    rst $28
    sub d
    inc d
    ld l, a
    ld sp, hl
    ld de, $cf47
    call nz, $7e02
    ei
    ld b, b
    ld [hl], $af
    and $10
    ld l, h
    rst $38
    ld h, b
    inc h
    sbc a

Jump_017_4473:
    ld sp, hl
    jr nz, jr_017_44a1

    rst $38
    sub d
    inc bc
    ld a, h
    db $fc
    ld b, b
    daa
    rst $28
    jp $bb02


    db $fd
    ld h, b
    dec d
    rst $18
    rst $10
    nop

Jump_017_4487:
    ld c, c
    cp $93
    inc bc
    cp a
    jp hl


    jr nz, jr_017_44d7

    rst $08
    ld d, h
    ld bc, $fb9e
    ld d, b
    ld d, $cf

Call_017_4497:
    add $00
    ld a, l
    ei
    ld [hl], c
    ld b, $be
    rst $00
    jr nz, jr_017_443d

jr_017_44a1:
    db $fc
    add e
    inc b
    sbc l
    reti


    ld b, c
    ld a, [hl-]
    db $fc
    sub l
    ld [de], a
    sbc h
    bit 2, c
    add hl, sp
    db $ec
    ld d, a
    ld hl, $ca8b
    ld [hl], d
    scf
    call c, Call_017_4099
    ld l, e
    jp z, $3783

    cp e
    sbc c
    ld h, c
    xor d
    sbc d
    sub [hl]
    ld b, l
    xor d
    sbc b
    add d
    ld e, c
    sbc b
    and a
    ld d, a
    adc b
    sbc c
    sub l
    ld b, a
    adc b
    ld [hl], a
    ld l, b
    db $76
    sbc c
    sub a
    ld d, [hl]
    ld [hl], a

jr_017_44d7:
    sbc c
    adc b
    ld [hl], h
    ld a, c
    xor c
    ld [hl], l
    ld h, l
    adc d
    sbc d
    sub e
    ld l, b
    xor d
    and [hl]
    dec [hl]
    ld a, e
    cp h
    ld [hl], d
    add hl, sp
    sbc e
    push de
    inc [hl]
    ld e, d
    db $dd
    ld [hl], c
    scf
    inc e
    rst $30
    inc de
    ld e, c
    cp $62
    dec d
    sbc a
    rst $20
    ld [de], a
    ld c, d
    cp $71
    inc d
    xor [hl]
    add sp, -$5f
    ld e, d
    db $fc
    ld [hl], e
    inc de
    xor a
    jp z, Jump_017_5930

    db $ec
    add h
    inc hl
    sbc l
    ret


    ld d, b
    ld e, d
    ld l, e
    add [hl]
    inc h
    adc h
    sbc d
    ld h, e
    ld e, d
    adc b
    and [hl]
    scf
    ld a, b
    sbc c
    add [hl]
    ld [hl], a
    ld l, b
    sub a
    ld [hl], a
    ld h, [hl]
    sbc c
    xor b
    db $76
    scf
    xor b
    sbc b
    ld b, h
    adc c
    cp h
    add e
    ld [hl], $8b
    or a
    inc hl
    ld l, c
    db $dd
    add c
    dec [hl]
    adc l
    ret z

    ld [hl+], a
    ld e, d
    rst $38
    ld [hl], c
    dec h
    adc l
    add sp, $20
    ld e, d
    rst $38
    sub c
    inc d
    sbc [hl]
    rst $10
    jr nz, @+$5d

    db $fd
    ld [hl], d
    inc hl
    sbc [hl]
    rst $00
    ld hl, $ec5c
    ld [hl], d
    dec d
    ld c, l
    or a
    ld hl, $db6b
    ld [hl], e
    dec h
    sbc l
    sub a
    ld b, e
    ld l, e
    jp z, Jump_000_3773

    adc h
    sub a
    add h
    ld a, d
    xor d

Call_017_4563:
    ld [hl], h
    ld b, [hl]
    sbc c
    sbc b
    ld d, l
    ld a, e
    sbc c
    add h
    ld b, a
    adc b
    and a
    ld h, [hl]
    ld a, b
    ld l, c
    sub [hl]
    ld c, b
    ld l, b

Jump_017_4574:
    and a
    ld h, a

Call_017_4576:
    adc b
    ld a, d
    sub [hl]
    ld d, a
    ld l, b
    adc c
    ld a, b
    ld [hl], a
    ld l, c
    and [hl]
    add a
    ld d, a
    sbc c
    sbc b
    ld h, l
    ld l, c
    cp b
    db $76
    ld b, [hl]
    sbc d
    xor b
    ld d, h
    ld a, c
    cp c
    db $76
    ld b, [hl]
    ld a, [hl-]
    or a
    ld b, h
    ld l, d
    cp d
    ld h, h
    ld d, l
    xor e
    rst $00
    ld b, h
    ld l, c
    bit 4, h
    ld d, l
    xor h
    cp b
    call nz, $cb69
    ld [hl], d
    ld d, [hl]
    sbc h
    or a
    inc hl
    ld a, c
    call z, Call_017_4662
    xor h
    or l
    inc [hl]
    ld a, c
    ld c, e
    ld h, e
    ld b, [hl]
    xor l
    and [hl]
    inc sp
    ld a, d
    call z, Call_017_4753
    xor h
    and [hl]
    ld b, e
    ld a, d
    jp z, $8873

    xor e
    sub [hl]
    ld b, h
    ld a, d
    xor e
    ld [hl], e
    ld e, b
    xor d
    sub [hl]
    ld d, l
    ld a, d
    xor d
    ld [hl], l
    ld l, b
    adc d
    ld d, a
    ld h, [hl]
    ld a, c
    adc d
    add [hl]
    ld h, a
    ld l, b
    sbc b
    db $76
    ld [hl], a
    sbc d
    and a
    ld h, [hl]
    ld l, b
    xor b
    db $76
    rst $00
    adc e
    xor c
    ld d, h
    ld a, b
    xor d
    ld [hl], l
    ld d, [hl]
    sbc e
    cp b
    inc [hl]
    ld l, b
    cp e
    ld [hl], h
    ld b, [hl]
    sbc l
    add [hl]
    inc [hl]
    ld l, c
    jp z, Jump_017_4873

    cp h
    and [hl]
    inc [hl]
    ld l, e
    cp b
    ld h, l
    ld e, b
    res 2, h
    ld b, l
    adc d
    and a
    ld d, h
    adc c
    sbc d
    add l
    ld b, a
    adc c
    sub a
    ld h, [hl]
    adc c
    adc d
    ld [hl], l
    ld l, b
    adc b
    add a
    and a
    ld l, b
    adc c
    add [hl]
    ld [hl], a
    ld a, b
    sbc b
    add [hl]
    ld a, b
    adc d
    add [hl]
    db $76
    ld a, c
    xor b
    ld h, [hl]
    ld h, a
    adc d
    add l
    ld h, [hl]
    sbc e
    sub a
    ld d, l
    adc c
    cp c
    ld h, l
    ld l, b
    xor d
    db $76
    ld h, [hl]
    sbc d
    xor b
    ld b, l
    ld a, c
    sbc c
    ld [hl], l
    ld l, b
    sbc d
    sub [hl]
    ld d, a
    adc b
    sbc b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add a
    add a
    ld a, c
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, a
    xor b
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add [hl]
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    sub [hl]
    ld h, a
    sub a
    ld [hl], a
    ld a, b
    adc b
    ld h, [hl]
    add a

Call_017_4662:
    db $76

Call_017_4663:
    ld a, c
    add a
    ld [hl], a
    ld a, d
    add a
    ld a, b
    adc b
    add [hl]
    ld a, b
    adc b
    add a
    ld a, b
    sbc c
    ld d, [hl]
    adc b
    adc b
    db $76
    adc c
    add a
    ld a, c
    add a
    ld [hl], a
    sbc b
    db $76
    ld a, b
    adc b
    db $76
    ld a, c
    sub [hl]
    sub [hl]
    and a
    ld h, a
    sbc c
    db $76
    db $76
    sbc c
    ld h, a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc d
    add a
    add a
    ld a, c
    add a
    ld a, c
    ld a, b
    ld [hl], a
    db $76
    ld c, b
    jp c, Jump_017_4774

    cp e
    ld [hl], e
    ld e, b
    adc b
    sub l
    ld d, l
    ld e, e
    sbc c
    db $76
    sbc h
    ret z

    ld [hl], a
    adc e
    xor b
    ld d, [hl]
    adc c
    and [hl]
    ld e, d
    reti


    ld sp, $878e
    ld [hl-], a
    ld l, b
    sub [hl]
    ld d, a
    ld d, [hl]
    sbc c
    adc d
    sub a
    adc e
    xor b
    adc c
    sbc d
    add l
    ld b, a
    sbc l
    reti


    and b
    ld l, a
    rst $10
    ld d, e
    dec [hl]
    jp z, Jump_017_6723

    ld e, c
    xor b
    adc e
    adc b
    xor d
    xor d
    ld [hl], a
    ld [hl], h
    ld c, h
    cp d
    ld b, b
    ld c, l
    jp hl


    ld d, d
    ld d, $d9
    ld e, b
    ld d, d

jr_017_46da:
    ld c, c
    db $ed
    add d

jr_017_46dd:
    jr z, jr_017_46dd

    ld [hl], h
    add a
    rst $18
    cp b
    ld b, b
    ld l, a
    add sp, $53
    ld b, $b9
    sbc d
    ld d, b
    ld a, [hl-]
    db $dd
    sub e
    ld d, $ef
    ld [hl], e
    ld e, e
    db $eb
    ld h, b
    ld c, l
    add sp, $64
    dec h
    cp c
    ld l, b
    add l
    daa
    sbc h
    push bc
    dec h
    cp h
    ld [hl], e
    cp l
    ret z

    ld [hl-], a

jr_017_4704:
    adc a
    add $52
    add hl, hl
    rst $20
    daa
    add e
    ld c, c
    res 2, l
    jr c, jr_017_46da

    xor d
    db $ec
    ld [hl], c
    ld a, [hl+]
    db $fc
    ld h, d
    dec d
    cp [hl]
    ld h, e
    add a
    ld b, l
    xor [hl]
    and h
    inc [hl]
    adc e
    xor c
    ld l, h
    ld h, d
    ld c, e
    db $ec
    ld d, c
    ld d, $ce
    ld [hl], b
    ld e, b
    ld [hl], a
    sbc c
    or a
    ld d, e
    adc e

jr_017_472e:
    sbc d
    bit 2, c
    add hl, sp
    db $fd
    add d

Jump_017_4734:
    inc b
    adc $74
    ld d, l
    ld l, c
    xor d
    and [hl]
    dec [hl]
    xor c
    adc e
    jp c, $dd40

    ei
    ld d, c
    jr jr_017_472e

    ld h, [hl]
    inc hl
    adc e
    adc d
    add e
    jr z, jr_017_4704

    sbc h
    add $23
    xor a
    rlca
    jr nc, jr_017_47b1

Call_017_4753:
    ret c

    ld d, l
    dec h
    call c, Call_017_7189
    ld c, c
    ret z

    call $1672
    xor $a4
    pop bc
    ld l, [hl]
    or l
    ld [hl], l

Call_017_4764:
    ld h, $da
    xor c
    ld b, c
    adc e
    sub [hl]
    db $dd
    ld d, b
    ld a, [hl-]
    db $fd
    ld [hl], d
    dec b
    ld l, h
    add a
    ld b, e
    ld l, e

Jump_017_4774:
    cp b
    db $76
    ld [hl], $b9
    ld e, b
    jp c, Jump_017_4c50

    ld [$2950], a
    and $29
    ld sp, $989e
    add e
    ld c, d
    push bc
    ld l, l
    rst $00
    inc de
    xor l
    rst $10
    jr nc, jr_017_47fa

    or [hl]
    add a
    call nc, $8aba
    ld [hl], e
    ld l, e
    sub l
    cp [hl]
    and e
    dec b
    rst $18
    or e
    inc bc
    xor l
    ld [hl], a
    ld [hl], e
    add hl, de
    sbc e
    sub l
    dec h

Jump_017_47a3:
    jp z, $cc56

    ld [hl], c
    add hl, hl
    db $fc
    ld [hl], c
    rla
    jp c, Jump_017_6359

    ld e, e
    cp d
    add e

jr_017_47b1:
    jr @-$36

    ld l, e
    ret c

    db $10
    ld a, [hl]
    jp hl


    jr nz, jr_017_4816

    or l
    add a
    inc h
    cp h
    xor d
    ld b, c
    ld a, h
    add e
    sbc [hl]
    call nz, $bf03
    push bc
    ld [bc], a
    xor h
    ld [hl], l
    sub [hl]
    ld [hl], $ac
    rst $00
    ld de, $b9ab
    db $db
    ld b, b
    ld c, e
    db $eb
    ld h, c
    add hl, bc
    jp hl


    ld d, [hl]
    ld h, e
    ld a, e
    xor e
    add e
    add hl, sp
    rst $00
    ld a, h
    ld [$8f12], sp
    ret z

    jr nz, @+$80

    or h
    ld c, b
    ld b, [hl]
    cp c
    sbc e
    ld h, c
    ld l, e
    db $76

jr_017_47ee:
    cp [hl]
    and d
    and $de
    sub h
    inc bc
    cp l
    ld [hl], h
    add [hl]
    jr c, @-$45

    xor b

jr_017_47fa:
    inc sp
    sbc c
    ld l, b
    db $fc
    ld b, b
    ld e, l
    ld a, [de]
    ld d, b
    ld a, [hl+]
    ret c

    ld c, b
    ld h, e
    sbc h
    xor c
    ld [hl], l
    ld c, d
    sub l
    sbc l
    sub $12
    xor l
    and a
    ld a, [c]
    adc [hl]
    add e
    ld l, d
    ld b, a
    xor b

jr_017_4816:
    sbc d
    ld d, d
    adc l
    ld [hl], a
    cp l
    sub d
    add hl, de
    db $ec
    add d
    ld b, $5a
    ld [hl], $93
    adc h
    adc b
    and [hl]
    daa
    rst $10
    ld e, d
    db $db
    ld sp, $db7c
    jr nc, @+$70

    or e
    ld e, c
    db $76
    xor c
    adc e
    ld [hl], h
    ld a, d
    add l
    xor h
    and h
    dec b
    adc $a4
    inc b

jr_017_483d:
    db $dd
    ld b, e
    adc b
    ld l, d
    sub a
    cp d
    ld [hl+], a
    xor e
    db $76
    db $db
    ld [hl], b
    inc a
    ei
    ld d, c
    dec hl
    and $27
    ld [hl], l
    xor h
    ld l, b
    and l
    add hl, sp
    and [hl]
    ld a, l
    and $03
    call $23b6
    cp [hl]
    ld h, c
    adc c
    ld e, c
    or [hl]
    adc h
    jp Jump_017_669b


    sbc $60
    ld c, h
    db $db
    ld d, d
    dec sp
    push de
    jr c, jr_017_47ee

    adc l
    adc c
    sub e
    ld c, d
    push de
    adc h
    push bc

Jump_017_4873:
    inc b
    rst $08
    or l
    ld [bc], a
    cp a
    ld h, c
    ld a, b
    ld e, c
    add $7a
    ld d, h
    xor e
    ld h, a
    dec e
    ld d, b
    ld c, [hl]
    reti


    ld h, c
    dec sp
    sub $28
    add l
    adc h
    adc c
    sub e
    ld c, c
    ret z

    sbc l
    and h
    or a
    db $ec
    add l
    dec d
    call $9653
    ld e, d
    rst $00
    add a
    ld b, a
    jp z, $db48

    jr nc, jr_017_483d

    jr @+$63

    ld a, e
    sub e
    ld e, d
    ld [hl], h
    sbc d
    adc d
    ld [hl], d
    ld l, l
    and l
    adc l
    or e
    add hl, bc
    db $ec
    sub h
    or a
    jp c, $a634

    ld e, e
    add a
    and [hl]
    ld [hl], $d8
    ld c, c
    ld a, [$8e31]
    ret z

    ld d, c
    ld l, l
    and e
    ld c, c
    db $76
    cp c
    ld l, d
    add d
    ld a, h
    sub h
    adc l
    or e
    ld d, $ed
    sub h
    ld h, $cc
    inc h
    and a
    ld l, e
    sub l
    xor c
    ld [hl], $ca
    ld b, a
    call c, Call_017_6c50
    add sp, $52
    ld e, h
    or e
    add hl, sp
    db $76
    xor d
    ld l, b
    sub d
    ld e, l
    or h
    ld l, h
    push de
    inc de
    adc $96
    inc sp
    cp l
    ld d, c
    adc e
    ld b, [hl]

jr_017_48ef:
    cp b
    ld a, [hl+]
    ld b, d
    xor h
    ld [hl], h
    xor [hl]
    add b
    ld a, [de]
    db $db
    ld [hl], d
    add hl, hl
    rst $20
    ld d, $95
    ld l, h
    adc b
    and l
    xor c
    ret c

    jr c, jr_017_48ef

    ld b, b
    ld a, [hl]
    ret z

    ld b, c
    ld a, l
    sub d
    ld c, d
    ld [hl], l
    xor d
    ld l, e
    add d
    ld l, h
    and h
    ld c, h
    rst $20
    inc b
    call Call_000_2586
    call $9833
    ld b, a
    or a

jr_017_491c:
    sbc d
    inc sp
    xor h
    ld h, h
    ld c, [hl]
    and b
    dec de
    ld [$2954], a
    add sp, $28
    sub l
    ld l, e
    adc b
    and l
    ld c, c
    rst $00
    jr c, jr_017_491c

    add b
    ld l, l
    sub $34
    ld e, h
    or e
    ld a, [hl-]
    add e
    adc e
    ld a, c
    add e
    ld e, h
    or d
    ld c, d
    db $fc
    nop
    ld l, l
    or l
    ld d, e
    adc [hl]
    sub c
    ld l, e
    ld h, e
    sbc c
    adc e
    ld [hl], c
    ld a, l
    add d
    ld a, h
    reti


    ld [de], a
    cp [hl]
    ld d, l
    ld h, [hl]
    sbc h
    ld h, d
    xor d
    inc h
    cp d
    adc b
    ld b, e
    xor [hl]
    ld h, b
    ld a, [hl]
    sub $03
    call $a674
    xor h
    ld b, h
    xor c
    ld h, $b9
    sbc c
    dec [hl]
    cp d
    ld b, e
    sbc h
    push bc
    dec b
    db $ed
    dec [hl]
    ld [hl], a
    add hl, sp
    dec h
    sla l
    xor b
    sbc c
    ld d, l
    cp e
    inc sp
    xor [hl]
    call nz, $eb06
    inc [hl]
    adc b
    xor d
    and h
    jp c, $a934

    ld a, c
    ld h, h
    jp z, $ae33

    call nz, $ec06
    inc [hl]
    ld [hl], a
    sbc e
    ld d, e
    ld c, h
    ld b, d
    sbc e
    ld a, b
    ld h, l
    cp d
    ld b, h
    sbc [hl]
    push bc
    inc d
    adc $72
    ld h, a
    adc h
    ld [hl], e
    sbc h
    ld b, c
    adc h
    ld a, b
    add h

Call_017_49a4:
    ld e, h
    and c
    ld a, e
    cp c
    ld d, e
    ld a, [hl]
    or d
    add hl, sp
    adc b
    or [hl]
    ld c, d
    sub d
    xor c
    rst $00
    ld h, l
    ld e, c
    or a
    ld b, a
    sbc b
    ret


    dec [hl]
    cp e
    ld h, h
    sbc c
    ld a, h
    ld [hl], e
    adc h
    ld h, e
    xor e
    ld d, [hl]
    sub l
    ld l, d
    add e
    adc d
    ld a, c
    add $25
    jp c, $a459

    ld l, h
    ld h, [hl]
    jp z, $bc32

    db $76
    db $76
    ld l, d
    sub h
    ld l, d
    sbc c
    or l
    rla
    db $dd
    ld b, l
    db $76
    sbc e
    ld h, h
    xor e
    inc sp
    sbc e
    ld d, [hl]
    db $76
    ld l, e
    sub h
    adc b
    ld e, b
    reti


    inc [hl]
    sbc h
    db $76
    sbc b
    ld c, c
    and h
    sbc h
    ld b, c
    dec a
    ld h, [hl]
    add h
    ld l, h
    sub e
    ld l, c
    ld l, b
    db $ec
    ld sp, $e75d
    ld [hl], $6b
    call nc, $a24a
    dec l
    or a
    ld h, h
    ld c, c
    rst $00
    ld l, c
    ld h, h
    sbc l
    rst $00
    ld [de], a
    cp a
    add l
    ld h, h
    adc e
    add h
    and a
    sub e
    call z, Call_017_5676
    bit 2, l
    sbc b
    ld e, d
    res 2, c
    dec de
    ld hl, sp+$26
    ld [hl], a

jr_017_4a1e:
    reti


    scf
    inc sp
    inc a
    jp hl


    ld b, e
    ld c, d
    add sp, $44
    adc b
    xor e
    adc e
    sub c
    dec de
    ld sp, hl
    inc h
    ld e, d

jr_017_4a2f:
    jp c, $b7b3

    jr z, jr_017_4a1e

    ld b, e
    ld c, e
    ld sp, hl
    ld [de], a
    adc h
    and [hl]
    ld l, e
    push bc
    rlca
    db $fd
    ld hl, $2c7b
    ld sp, $548c
    cp h
    ld h, e
    ld e, b
    call c, $8e22
    sub l
    ld h, l
    cp [hl]
    add d
    ld l, h
    or e
    ld c, d
    add $59
    ld h, a
    rst $00
    jr @-$16

    dec h
    sbc e
    and [hl]
    ld h, $cb
    ld h, a
    ld [hl], a
    adc e
    sub h

jr_017_4a60:
    ld e, d
    rst $10
    ld h, $97
    sbc c
    ld b, l
    xor b
    jr c, jr_017_4a2f

    ld c, b
    sub [hl]
    xor e
    ld d, e
    sbc d
    adc d
    add h
    adc c
    cp e
    ld [hl], b
    ld l, l
    or l
    ld e, b
    ld h, [hl]
    xor c
    ld d, a
    and l
    ld a, [hl+]
    add sp, $56
    ld c, b
    ei
    ld b, d
    ld a, e
    xor b
    ld [hl], h
    ld a, c
    cp e
    add d
    add hl, hl
    ld a, [$7624]
    xor l
    ld d, d
    adc e
    ld b, a
    jp hl


    inc [hl]
    adc b
    call z, Call_017_4764
    xor [hl]
    add e
    ld d, [hl]
    ld a, d
    cp d

jr_017_4a99:
    add e
    dec de
    ld sp, hl
    inc bc
    xor b
    xor l
    ld d, b
    db $ec
    ld d, [hl]
    ret c

    dec d
    sbc e
    ret c

    inc de
    xor h
    sbc c
    ld d, l
    adc b
    adc d
    ld [hl], h
    ld l, [hl]
    jp Jump_017_7629


    ld [$8ab7], sp
    inc sp
    swap h
    cp c
    ld e, b
    add a
    cp d
    ld b, l
    cp d
    ld a, b
    sub [hl]
    ld [hl], a
    reti


    and [hl]
    ld c, b
    jp c, Jump_017_7d32

    or h
    jr z, jr_017_4a60

    cp b
    dec [hl]
    rst $00
    ld a, [hl-]
    add $35
    sbc h
    or l
    dec h
    call z, Call_017_5795
    xor d
    ld [hl], a
    add [hl]
    ld h, a
    xor b
    adc d
    ld d, c
    ld a, l
    sub c
    dec sp
    add a
    sbc b
    dec d
    cp b
    ld e, e
    and e
    jr c, @-$52

    and h
    ld b, a
    xor d
    or [hl]
    ld b, l
    xor d
    xor b
    ld b, e
    adc h
    ld d, l
    ld [hl], $ad
    ld [hl], c
    inc a
    db $f4
    dec sp
    add [hl]
    xor d
    ld b, [hl]
    and l
    ld a, [hl-]
    rst $10
    ld b, [hl]
    ld a, d
    rst $00
    jr z, jr_017_4a99

    sbc e
    add [hl]
    ld h, a
    sbc d
    add l
    ld [hl], a
    ld a, c
    ld d, [hl]
    ld a, c
    ld h, [hl]
    xor h
    ld d, b
    ld l, a
    call nc, $6858
    ld [$8724], a
    ld a, h
    add h
    ld d, [hl]
    ld a, e
    push bc
    ld e, b
    adc d
    ret z

    ld b, a
    xor b
    add a
    sub l
    adc d
    ld [hl], l
    ld h, [hl]
    adc d
    add l
    ld h, a
    ld a, d
    jp hl


    inc de
    rst $08
    ld h, e
    add a
    ld c, d
    ld [c], a
    ld a, [hl+]
    add e
    adc e
    add l
    ld [hl], a
    sbc l
    ld [hl], h
    ld a, c
    xor e
    add l
    ld h, a
    adc c
    sub [hl]
    ld d, l
    ld e, d
    rst $00
    dec h
    sbc c
    xor d
    ld d, e
    adc d
    ld [hl], a
    cp e
    ld d, b
    ld a, [hl]
    jp $8936


    add $03
    cp e
    ld l, b
    ld [hl], l
    ld l, b
    ld a, h
    and l
    ld b, a
    sbc e
    push de
    inc d
    sbc d
    or a
    inc [hl]
    ld l, c
    ret z

    ld d, l
    ld a, b
    sbc b
    sub [hl]
    ld a, b
    adc b
    add [hl]
    ld d, a
    cp l
    ld h, b
    ld c, a
    push hl
    rla
    add l
    call c, $9a23
    ld e, d
    rst $00
    ld b, [hl]
    sbc e
    add $37
    sbc e
    sub [hl]
    ld d, a
    xor c
    add [hl]
    ld [hl], a
    ld a, c
    sbc b
    ld d, [hl]
    ld [hl], a
    sub a
    db $76
    ld h, [hl]
    sbc b
    add [hl]
    ld h, a
    adc b
    db $76
    ld h, a
    sla c
    cp a
    ld [hl], e
    adc b
    ld l, d
    and l
    ld e, c
    sub [hl]
    ld a, d
    db $76
    ld d, a
    cp d
    ld h, [hl]
    adc b
    xor d
    ld h, l
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld l, d
    add a
    ld h, a
    ld a, b
    xor c
    sub l
    ld a, d
    adc b
    ld [hl], a
    ld h, a
    sbc b
    db $76
    ld l, b
    adc b
    add [hl]
    ld a, e
    sub h
    ld l, l
    or e
    ld l, d
    sub a
    add a
    ld d, a
    and a
    ld [hl], a
    sub a
    ld [hl], a
    sbc c
    ld [hl], a
    add a
    adc c
    db $76
    ld [hl], a
    adc b
    add a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    sub a
    ld a, b
    adc c
    adc c
    add [hl]
    adc b
    adc b
    db $76
    ld l, b
    xor c
    ld d, l
    ld l, c
    xor c
    ld [hl], l
    adc c
    xor d
    add h
    ld e, e
    push bc
    ld d, a
    add [hl]
    sub a
    ld d, a
    adc b
    add a
    add a
    ld h, a
    sbc c
    ld [hl], a
    add a
    sbc d
    db $76
    ld l, b
    add a
    ld [hl], a
    ld h, a
    adc b
    ld h, [hl]
    adc b
    db $76
    sbc b
    ld [hl], a
    xor c
    adc b
    add [hl]
    ld c, d
    add a
    ld a, b
    db $76
    ld a, b
    sub a
    ld h, a
    adc d
    ld [hl], a
    ld a, b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    add a
    or a
    ld h, l
    sbc d
    ld [hl], l
    ld h, a
    adc c
    ld [hl], a
    adc c
    ld h, [hl]
    ld a, c
    sub a
    ld h, a
    adc c
    sub [hl]
    adc c
    add [hl]
    adc b
    ld a, b
    sub a
    ld l, b
    add a
    ld a, b
    adc b
    ld h, a
    ld [hl], a
    sbc c
    ld h, a
    sbc c
    ld [hl], a
    add a
    ld l, c
    sub [hl]
    ld a, b
    add [hl]
    sbc c
    ld d, [hl]
    sbc d
    ld [hl], a
    ld d, a
    ld a, c
    ld [hl], a
    ld h, a
    adc c
    ld a, b
    add [hl]
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    adc c
    add [hl]
    ld h, a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld h, a
    sub a
    ld a, b
    ld h, a
    adc b

Jump_017_4c50:
    ld h, [hl]
    add [hl]
    ld l, c
    sbc b
    ld l, b
    ld l, b
    sbc c
    ld h, a
    sub a
    ld a, b
    sub a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    db $76
    ld a, b
    sbc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    sbc b
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    db $76
    ld a, c
    add [hl]
    adc b
    add a
    add a
    ld a, c
    db $76
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    adc b
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    sub a
    add a
    ld a, b
    add [hl]
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    add [hl]
    ld l, c
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    sbc b
    ld h, a
    sub a
    adc b
    add a
    ld a, c
    adc c
    add a
    ld h, a
    adc c
    db $76
    adc c
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld d, [hl]
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    adc c
    db $76
    sbc b
    ld l, c
    add a
    ld a, c
    ld [hl], a
    sbc b
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    adc c
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld a, c
    ld a, b
    add a
    sub [hl]
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    ld h, a
    db $76
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld l, d
    add a
    adc c
    ld l, c
    ld a, c
    add a
    add a
    sbc b
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    ld l, b
    add [hl]
    adc b
    ld a, b
    db $76
    sub [hl]
    adc b
    ld [hl], l
    add a
    ld l, c
    ld l, c
    ld [hl], a
    sub [hl]
    sbc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, c
    ld e, c
    ld a, b
    adc c
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    sub a
    add a
    add a
    ld a, c
    ld a, b
    ld a, b
    sbc b
    sub a
    adc b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    ld a, c
    sub [hl]
    add a
    ld [hl], a
    sbc b
    ld h, a
    add [hl]
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld l, b
    ld [hl], a
    add a
    add [hl]
    sbc c
    ld a, b
    sbc b
    adc b
    ld [hl], a
    adc b
    add a
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    db $76
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc c
    ld a, b
    adc c
    adc b
    adc b
    adc b
    adc c
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    db $76
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, c
    sbc b
    db $76
    ld l, b
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld a, b
    add a
    ld a, b
    sbc e
    xor d
    xor c
    cp e
    res 5, d
    ld a, d
    adc b
    ld [hl], a

jr_017_4e03:
    ld d, l
    ld d, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld [hl], a
    ld a, b
    adc b
    adc d
    xor d
    and a
    ld d, l
    ld [hl], $76
    ld [hl-], a
    inc hl
    ld h, [hl]
    add a
    ld l, b
    sbc l
    sbc $dc
    db $ed
    db $fd
    db $db
    xor b
    db $76
    db $76
    inc [hl]
    ld [hl+], a
    ld b, h
    ld b, l
    ld d, [hl]
    ld l, b
    ld a, c
    adc c
    adc b
    sbc d
    sub a
    ld d, d
    inc d
    ld h, h
    jr nz, jr_017_4e31

    or l

jr_017_4e31:
    ld a, b
    adc b
    adc h
    rst $28
    cp $de
    xor $db
    and a
    ld h, [hl]
    ld h, a
    ld d, [hl]

jr_017_4e3d:
    ld d, [hl]
    ld a, b
    sbc d
    ld a, [$ccab]
    cp c
    adc c
    xor e
    add e
    nop
    ld b, [hl]
    ld b, c
    nop
    inc de
    ld a, c
    add [hl]
    ld l, b
    adc $ba
    adc b
    adc b
    sub a
    ld h, e
    ld [hl+], a
    ld b, [hl]
    ld h, l
    ld d, l
    ld a, d
    xor d
    cp d
    sbc d
    xor d
    cp b
    ld a, c
    dec sp
    ld [hl], c
    ld d, $a8
    ld b, h
    ld b, l
    ld e, c
    cp h
    ret


    ld a, c
    rst $38
    jp hl


    adc c
    xor d
    sbc c
    ld h, l
    dec h
    ld l, c
    sub a
    ld d, [hl]
    sbc c
    cp d
    sub [hl]
    ld [hl], a
    ld a, c
    db $76
    ld d, a
    cp c
    db $10
    jr c, jr_017_4e03

    ld b, d
    or d
    ld h, [hl]
    sbc d
    sub l
    ld l, e
    xor $a7
    ld a, b
    xor c
    sub a
    ld b, e
    ld d, [hl]
    adc d
    add [hl]
    ld l, b
    cp h
    db $eb
    adc c
    adc b
    sbc c
    add l
    sbc e
    or d
    inc de
    sbc d
    ld h, h
    ld b, h
    ld c, b
    adc c
    db $db
    ld d, a
    rst $08
    bit 4, l
    sbc d
    sbc b
    ld [hl], h
    inc h
    ld a, d
    and a
    ld d, a
    xor e
    cp d
    sub a
    add a
    adc b
    add l
    ld l, b
    ld l, c
    nop
    ld l, c
    ld h, h
    ld d, d
    jr z, jr_017_4e3d

    xor l
    ld [hl], l
    sbc [hl]
    call c, $6b84
    and [hl]
    ld [hl], l
    inc sp
    add a
    xor d
    ld [hl], l
    sbc d
    res 5, b
    adc b
    ld a, b
    adc b
    ld h, [hl]
    adc e
    sub c
    rlca
    and [hl]
    ld d, l
    inc [hl]
    adc c
    ld l, e
    reti


    ld e, c
    db $fd
    ret c

    ld b, l
    cp c
    ld h, [hl]
    ld d, e
    ld [hl], $79
    xor c
    ld e, c
    xor d
    bit 6, a
    add [hl]
    ld h, a
    sub l
    ld l, c
    sub h
    inc b
    adc b
    ld d, l
    ld b, d
    ld e, b
    ld [hl], a
    cp e
    ld h, a
    cp h
    call c, Call_017_7923
    ld [hl], a
    ld [hl], l
    inc [hl]
    ld l, b
    sbc e
    add a
    adc c
    cp h
    xor c
    ld [hl], l
    ld h, a
    adc b
    db $76
    sbc c
    add e
    adc b
    ld [hl], l
    ld h, d
    scf
    sub l
    adc l
    sub l
    adc l
    call Call_017_49a4
    db $76
    ld [hl], a
    ld b, h
    ld b, a
    adc e
    and a
    sbc c
    cp e
    cp c
    ld [hl], a
    ld d, h
    adc c
    add a
    sbc c
    ld [hl-], a
    ld a, b
    add [hl]
    ld d, h
    dec [hl]
    sub [hl]
    ld a, l
    and a

jr_017_4f22:
    ld l, e
    adc $c6
    scf
    add [hl]
    add a
    ld b, e
    ld d, h
    adc h
    cp b
    ld a, d
    sbc e
    cp d
    ld [hl], a
    add h
    ld a, b
    ld l, b
    sbc e
    ld b, b
    ld a, [hl-]
    add [hl]
    ld [hl], e
    ld d, $96
    adc l
    and [hl]

jr_017_4f3c:
    ld a, e
    adc $d5
    add hl, sp
    sub l
    ld [hl], a
    ld b, e
    ld h, l
    ld l, e
    or a
    ld a, c
    sbc d
    sbc c
    ld [hl], a
    add l
    ld d, a
    adc b
    sbc e
    ld h, b
    add hl, hl
    add a
    ld h, h
    inc b
    sub a
    ld l, d
    or a
    ld a, d
    cp l
    ret z

    add hl, sp
    sbc b
    ld h, a
    ld b, h
    add a
    ld l, c
    cp b
    ld l, c
    cp c
    sbc c
    ld [hl], a
    sbc b
    ld d, [hl]
    sbc b
    xor e
    add b
    jr z, jr_017_4f22

    add e
    inc b
    sbc b
    ld l, d
    and [hl]
    ld l, e
    xor l
    rst $10
    ld c, b
    xor c
    db $76
    ld b, h
    ld [hl], a
    ld a, b
    add a
    adc c
    sbc c
    sbc b
    adc c
    adc b
    ld d, [hl]
    ld c, b
    sbc d
    and h
    inc b
    adc c
    add [hl]
    ld de, $775a
    sbc b
    ld l, d
    xor d
    db $db
    ld h, [hl]
    sbc d
    add a
    ld b, h
    ld e, c
    ld h, a
    ld [hl], a
    sbc c
    xor d
    sbc c
    ld a, c
    xor d
    add [hl]
    ld d, l
    sbc d
    cp c
    jr nc, jr_017_4fe9

    xor c
    sub b
    jr jr_017_4f3c

    adc b
    db $76
    sbc h
    call Call_017_6ab4
    ret


    add l
    ld [hl], $77
    ld l, b
    ld h, a
    sbc c
    ret


    sbc b
    ld a, d
    xor b
    ld [hl], l
    ld l, b
    sbc e
    sub h
    ld [de], a
    sbc e
    add l
    ld bc, $967b
    ld h, a
    ld a, d
    adc e
    reti


    ld e, b
    xor h
    cp b
    ld b, h
    ld l, d
    db $76
    ld [hl], l
    ld a, d
    add a
    sbc c
    sbc c
    cp b
    add a
    ld a, b
    ld l, c
    sub a
    ld [hl], h
    ld b, [hl]
    or a
    ld d, h
    ld h, $9a
    ld h, h
    ld h, a
    sbc e
    cp d
    sbc c
    adc c
    res 0, a
    ld d, [hl]
    adc c
    ld [hl], l
    ld h, [hl]
    add a
    ld a, b
    adc b
    adc c
    adc b

jr_017_4fe9:
    sbc b
    adc b
    add a
    add a
    adc c
    ld h, h
    ld h, a
    add l
    ld b, h
    adc b
    ld [hl], h
    ld l, b
    cp e
    adc b
    adc d
    cp e
    xor c
    xor d
    ld [hl], a
    sbc d
    ld [hl], l
    ld h, l
    ld a, b
    ld h, l
    ld a, c
    adc b
    sub a
    sbc d
    sbc b
    ld [hl], a
    ld a, c
    xor b
    ld h, a
    inc [hl]
    sbc c
    ld [hl], h
    ld b, l
    ld h, a
    add l
    ld l, b
    adc b
    sbc c
    sbc d
    sbc d
    adc d
    xor e
    sbc b
    adc b
    add a
    add [hl]
    add a
    db $76
    ld h, [hl]
    add a
    adc b
    ld [hl], a
    ld a, b
    sbc c
    ld [hl], a
    add [hl]
    ld a, b
    add a
    sub a
    ld d, l
    adc c
    ld [hl], a
    ld h, l
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add l
    ld [hl], a
    adc b
    add a
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add [hl]
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    add a
    adc c
    add a
    add [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    adc b
    sub [hl]
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    add a
    add [hl]
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    adc c
    ld [hl], a
    adc b
    sbc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    adc b
    ld a, c
    db $76
    ld a, b
    adc b
    sbc b
    ld h, a
    adc b
    sbc b
    ld [hl], a
    ld a, b
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld h, a
    add a
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    ld h, a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld h, a
    adc b
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    add [hl]
    ld [hl], a
    adc c
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    ld h, a
    ld [hl], a
    add a
    add l
    ld [hl], a
    adc b
    add a
    db $76
    adc b
    sbc b
    ld [hl], a
    ld l, c
    add a
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    sub a
    db $76
    ld [hl], a
    sub a
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    db $76
    ld l, b
    ld a, b
    add [hl]
    db $76
    adc c
    add a
    add a
    ld l, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld h, a
    adc b
    add a
    ld h, a
    adc b
    sbc b
    add a
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    adc b
    add a
    ld [hl], a
    adc b
    add [hl]
    db $76
    ld a, b
    add a
    add a
    ld h, a
    adc b
    add a
    ld h, a
    adc c
    sbc b
    adc b
    ld [hl], a
    adc c
    ld a, b
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    db $76
    ld a, c
    ld a, b
    add [hl]
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    adc c
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    sbc b
    ld l, b
    adc b
    ld a, b
    add [hl]
    add a
    ld h, a
    ld h, a
    add [hl]
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, a
    ld [hl], a
    add l
    ld d, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc c
    add a
    adc d
    cp h
    sbc d
    sbc c
    cp c
    sbc c
    sbc c
    xor b
    ld e, b
    db $76
    ld a, b
    add [hl]
    ld d, l
    ld [hl], a
    ld d, a
    ld h, [hl]
    add [hl]
    ld [hl], $57
    ld b, e
    ld d, h
    ld h, l
    ld d, h
    ld h, l
    ld b, l
    ld a, d
    sub a
    adc c
    xor h
    cp d
    call z, $bbdb
    xor d
    xor d
    sbc c
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    or l
    ld h, [hl]
    ld h, a
    ld d, e
    ld b, [hl]
    add [hl]
    inc [hl]
    dec [hl]
    ld h, l
    ld d, h
    ld d, [hl]
    ld l, c
    sbc b
    ld [hl], a
    xor e
    db $eb
    dec hl
    call $dcde
    cp e
    call z, $87b7
    sbc b
    ld h, l
    ld d, l
    ld h, a
    add a
    ld [hl-], a
    ld c, b
    ld [hl], h
    or d
    ld b, h
    ld h, e
    inc sp
    inc hl
    ld d, [hl]
    ld [hl], l
    ld d, l
    sbc h
    cp c
    adc c
    xor h
    call c, $9aaa
    cp h
    ld l, b
    ld l, b
    sbc d
    sbc b
    ld a, c
    xor e
    add a
    ld a, c
    cp c
    ld [hl], a
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld h, h
    ld b, a
    sbc b
    db $76
    ld a, c
    xor d
    add a
    sbc d
    cp e
    xor b
    ld a, b
    adc b
    sub a

Jump_017_51ca:
    ld d, l
    ld d, [hl]
    ld h, l
    ld e, b
    sbc b
    ld d, e
    ld a, e
    and a
    ld b, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, h
    ld a, c
    cp b
    ld a, b
    cp [hl]
    bit 7, c
    call z, $a9bc
    add a
    sbc d
    sub l
    ld d, l
    add a
    ld [hl], l
    ld a, e
    sub h
    ld c, b
    cp b
    ld h, l
    ld d, a
    ld h, h
    ld b, [hl]
    ld [hl], l
    ld b, [hl]
    ld a, [hl-]
    db $76
    adc d
    db $ed
    adc c
    cp d
    call z, $98a9
    ld l, c
    add a
    ld d, h
    ld d, l
    ld h, a
    ld l, b
    rst $00
    or [hl]
    cp h
    sub [hl]
    ld b, [hl]
    ld a, b
    ld d, h
    ld h, h
    inc [hl]
    adc d
    sub a
    ld h, a
    rst $28
    cp c
    xor e
    call z, Call_017_78ba
    ld h, a
    adc b
    ld h, h
    ld b, l
    ld a, b
    ld h, a
    sub a
    inc [hl]
    cp [hl]
    add h
    ld [hl], $88
    ld h, e
    ld d, [hl]
    inc [hl]
    ld c, d
    add l
    ld d, [hl]
    rst $18
    ret c

    adc e
    db $ec
    reti


    adc c
    add a
    and a
    ld d, d
    dec [hl]
    adc c
    db $76
    xor b
    and h
    call z, Call_000_3495
    adc b
    ld b, d
    ld b, [hl]
    ld [hl-], a
    ld l, b
    sbc b
    ld d, [hl]
    cp a
    ret


    adc e
    adc $ba
    ld a, b
    ld h, l
    adc d
    ld h, e
    inc [hl]
    ld a, b
    sbc b
    xor c
    dec [hl]

jr_017_5249:
    sbc $b6
    inc hl
    ld l, d
    ld h, d
    ld [hl+], a
    inc [hl]
    ld b, a
    add a
    ld d, [hl]
    rst $08
    ld a, [$de7a]
    ld [$6578], a
    adc b
    ld h, e
    inc de
    ld l, d
    cp d
    add h
    ld a, c
    cp $85
    inc [hl]
    ld a, d
    ld d, e
    jr nz, jr_017_527d

    adc d
    ld h, h
    ld d, a
    rst $08
    ld [$be9a], a
    jp z, Jump_017_66b5

    sub a
    ld d, c
    inc d
    ld l, d
    db $db
    ld d, c
    ld c, l
    db $fd
    ld d, e
    ld b, [hl]
    sbc b

jr_017_527d:
    ld d, h
    db $10
    jr z, jr_017_5249

    ld d, d
    ld c, e
    cp $c9
    adc d
    call Call_017_53c9
    ld e, b
    add l
    ld [hl+], a
    daa
    xor h
    ret z

    inc de
    ld l, $d7
    ld [hl-], a
    ld b, a
    ld h, a
    ld [hl], e
    ld [bc], a
    ld a, e

Jump_017_5298:
    or a
    ld b, [hl]
    cp l
    call c, Call_017_7ab9
    call z, $93b6
    ld [hl], a
    ld h, e
    inc hl
    ld e, b
    xor l
    and h
    ld b, a
    call c, Call_000_33a6
    ld d, l
    ld h, [hl]
    ld d, c
    inc d
    adc e
    or a
    ld a, b
    db $dd
    db $fd
    cp c
    cp d
    cp e
    sub l
    ld d, h
    ld h, [hl]
    ld h, e
    inc sp
    ld l, c
    jp c, Jump_017_7a54

    ld e, d
    add l
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    jr nz, jr_017_530e

    xor c
    add a
    ld a, d
    rst $08
    ld a, [$ac99]
    ret


    ld h, e
    ld [hl], h
    ld d, [hl]
    ld b, e
    inc [hl]
    adc e
    ret c

    ld b, [hl]
    sbc e
    xor c
    ld d, h
    inc sp
    ld h, [hl]
    ld h, e
    inc bc
    ld l, d
    xor c
    sbc d
    xor e
    rst $28
    call c, $bc9a
    and a
    ld d, l
    ld h, l
    ld [hl], l
    ld b, h
    ld b, a
    cp h
    and l
    ld e, b
    xor e
    ld h, [hl]
    ld b, h
    dec [hl]
    ld h, a
    ld d, d
    inc [hl]
    sbc d
    sbc c
    sbc b
    cp l
    db $ed
    cp c
    sbc e
    cp e
    add l
    ld d, [hl]
    sub [hl]
    ld h, l
    inc sp
    ld l, b
    jp z, Jump_017_5884

    xor d
    sub [hl]
    ld [hl-], a
    ld [hl], $76
    ld b, e
    ld b, [hl]

jr_017_530e:
    adc c
    cp d
    sbc c
    cp [hl]
    xor $b9
    sbc d
    xor c
    add [hl]
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld l, c
    xor e
    or a
    ld d, a
    sbc e
    ld h, a
    ld d, e
    dec [hl]
    ld h, [hl]
    ld h, h
    inc h
    ld a, d
    cp d
    adc c
    cp l
    sbc $cb
    sbc d
    xor d
    and [hl]
    ld h, h
    sub [hl]
    ld h, l
    ld b, h
    ld b, [hl]
    adc c
    and a
    add [hl]
    ld a, d
    sub a
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    ld l, c
    xor c
    ld e, b
    xor l
    db $ed
    cp h
    set 1, e
    xor d
    ld [hl], a
    ld [hl], a
    db $76
    ld d, h
    ld d, [hl]
    db $76
    ld d, a
    ld l, b
    sub a
    add a
    ld l, b
    db $76
    ld d, [hl]
    ld d, e
    ld d, a
    add a
    ld h, [hl]
    ld a, b
    sbc e
    jp z, $bdba

    db $db
    cp d
    xor c
    ld l, b
    add a
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld d, l
    ld d, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, h
    ld d, a
    ld [hl], a
    ld l, b
    ld b, a
    ld h, [hl]
    sbc d
    adc c
    sbc e
    cp e
    set 1, e
    cp e
    res 5, b
    sbc c
    ld a, b
    ld d, h
    ld d, l
    ld h, l
    call nz, Call_017_6634
    add l
    ld d, l
    ld d, [hl]
    ld [hl], a

Jump_017_5387:
    db $76
    ld d, l
    ld a, b
    add [hl]
    ld [hl], a
    ld a, c
    sbc c
    xor c
    xor e
    ld c, e
    cp d
    xor d
    xor d
    ret


    adc b
    ld [hl], a

Call_017_5397:
    sbc b
    ld h, [hl]
    ld d, a
    ld h, a
    ld h, [hl]
    ld b, h
    ld d, a
    ld h, l
    ld d, h
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    adc b
    adc c
    adc b
    adc c

Call_017_53a8:
    cp d
    xor d
    sbc d
    sbc d
    cp c
    xor b
    adc c
    xor c
    xor b
    adc c
    sbc b
    sbc c
    ld [hl], a
    add [hl]
    db $76
    ld d, h

Call_017_53b8:
    dec [hl]
    ld h, [hl]
    ld b, l
    dec [hl]
    ld b, [hl]
    ld [hl], a
    ld [hl], l
    ld a, b
    ld l, c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    xor c
    adc b

Call_017_53c9:
    adc d
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    db $76
    sub [hl]
    ld h, [hl]
    ld d, h
    inc sp
    ld d, [hl]
    ld d, [hl]
    ld b, h
    ld b, a
    ld [hl], a
    db $76
    ld d, a
    ld a, b
    add [hl]
    ld [hl], a
    adc b
    and a
    ld [hl], a
    sbc d
    cp d
    xor c
    sbc d
    sbc d
    xor d
    ld a, c
    adc b
    sbc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, l
    ld [hl], l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc d
    adc b
    adc b
    ld l, c
    adc c
    adc b
    ld l, c
    adc c
    adc b
    add a
    adc c
    add a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    db $76
    ld h, a
    ld [hl], a
    sub [hl]
    ld l, b
    adc b
    db $76
    add a
    adc b
    ld [hl], l
    ld h, l
    ld h, a
    ld [hl], a
    ld d, a
    ld d, a
    ld a, b
    ld l, b
    adc b
    ld a, d
    ld a, c
    sbc b
    adc c
    adc c
    ld [hl], a
    add a
    sbc b
    add a
    adc b
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    db $76
    ld h, a
    ld a, b
    db $76
    ld d, [hl]
    ld h, a
    ld a, b
    ld h, l
    ld [hl], a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld h, [hl]
    ld a, b
    db $76
    add a
    sbc b
    sbc c
    adc c
    sub a
    sbc c
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld h, a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    db $76
    add a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    add a
    adc b
    sbc b
    ld a, b
    ld a, b
    add a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    adc b
    sub [hl]
    sbc b
    sbc b
    add a
    adc b
    adc b
    ld l, b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    db $76
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    ld h, a
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    adc c
    add a
    ld a, b
    ld a, c
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, c
    sbc b
    ld [hl], a
    ld h, a
    ld a, c
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    add [hl]
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    sbc b
    add a
    ld a, b
    sbc c
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld l, c
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sub a
    add a
    add a
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    sub [hl]
    sub a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    adc b
    ld a, b
    sbc c
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, c
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a

Jump_017_5554:
    ld l, b
    ld a, b
    add a
    ld a, b
    sub a
    sub a
    sub [hl]
    adc b
    add a
    sub [hl]
    sub [hl]
    sbc b
    add a
    add [hl]
    add [hl]
    adc b
    ld a, b
    ld a, b
    adc c
    sbc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    db $76
    sbc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b

Jump_017_5576:
    add a
    add [hl]
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    add a
    sub a
    sub a
    add a

Jump_017_5585:
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc c
    ld a, c
    ld l, b
    ld l, c
    adc c
    ld [hl], a
    add a
    ld a, b
    sbc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, l
    db $76

Jump_017_5598:
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    sub a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    sbc b
    adc c
    adc d
    adc c
    cp d
    cp e
    cp d
    xor d
    cp c
    xor b
    db $76
    db $76
    ld h, l
    ld h, h
    ld b, l
    ld b, e
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld l, b
    adc c
    xor b
    ld h, a
    db $76
    ld [hl], a
    ld d, [hl]
    ld d, h
    ld b, [hl]
    ld a, b
    add a
    sbc c
    xor e
    sbc $ee
    call z, $ccdd
    cp d
    sub a
    ld d, [hl]
    ld [hl], l
    ld h, h
    inc [hl]
    ld b, e
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld l, b
    adc d
    cp b
    ld b, l
    ld d, [hl]
    ld d, l
    ld b, e
    db $10
    ld [de], a
    ld d, a
    or [hl]
    adc c
    xor e
    rst $18
    rst $38
    sbc $ed
    res 5, e
    add l
    ld d, l
    ld d, l
    ld b, l
    ld [hl], a
    ld [hl], a
    adc c
    reti


    xor e
    cp e
    bit 6, l
    ld d, e
    ld [hl-], a
    ld de, $0020
    inc d
    ld d, [hl]
    ld a, c
    xor h
    cp [hl]
    xor $4c
    xor d
    and [hl]
    db $76
    ld h, e
    inc sp
    ld d, [hl]
    ld d, [hl]
    adc b
    sbc e
    cp h
    call z, $bbbc
    cp d
    ld b, l
    ld b, h
    inc hl
    ld sp, $2522
    ld a, d
    adc d
    call z, $eddd
    db $db
    sub a
    db $76
    ld d, h
    ld d, h
    ld b, e
    or [hl]
    adc b
    xor d
    xor d
    cp e
    xor d
    sbc b
    add a
    ld [hl], a
    sub l
    ld [de], a
    dec h
    inc [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    adc l
    cp d
    xor e
    sbc d
    sbc e
    sbc b
    ld h, h
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, d
    res 7, d
    xor c
    sbc c
    xor b
    db $76
    ld d, a
    ld d, a
    ld a, c
    sub [hl]
    ld d, l
    add a
    ld [hl], a
    ld h, [hl]
    ld b, h
    ld d, a
    sbc c
    ld [hl], a
    sbc b
    xor e
    sbc e
    xor c
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    adc b
    xor d
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], l
    ld h, a
    ld h, a
    ld a, d
    ld h, e
    ld h, a
    db $76
    db $76
    ld b, l
    ld b, h
    ld a, d
    and a
    ld a, d
    sbc d
    xor e
    xor d
    add [hl]
    ld h, a
    add a
    ld h, a
    db $76
    ld a, b
    xor c
    cp c
    adc d

Call_017_5676:
    sbc c

Call_017_5677:
    adc b
    ld h, a
    ld h, l
    ld [hl], a
    ld a, c
    cp c
    ld d, l
    ld d, a
    db $76
    or l
    ld d, e
    inc [hl]
    ld a, d
    xor c
    xor c
    xor d
    xor d
    sbc d
    ld h, l
    ld h, l
    db $76
    ld [hl], a
    ld [hl], a
    ld a, c
    xor h
    ret


    adc b
    add a
    ld [hl], a
    ld [hl], l
    ld h, l
    db $76
    ld a, d
    cp h
    add h
    ld d, [hl]
    db $76
    ld h, l
    ld b, e
    inc hl
    ld e, c
    adc d
    sbc d
    xor d
    sbc d
    xor d
    sub h
    ld d, h
    db $76
    ld l, b
    adc b
    adc c
    sbc e
    cp d
    adc b
    add a
    ld h, a
    and [hl]
    ld d, [hl]
    ld d, a
    adc b
    xor e
    rst $10
    ld b, l
    ld h, l
    dec [hl]
    ld b, e
    inc h
    ld [hl], $9d
    cp c
    xor e
    sbc d
    sbc c
    sub [hl]
    ld b, e
    ld h, a
    ld [hl], a
    sbc d
    xor c
    adc c
    cp e
    sub a
    db $76
    ld h, l
    ld h, [hl]
    db $76
    db $76
    adc c
    ld l, d
    adc $a6
    inc sp
    dec [hl]
    dec [hl]
    inc sp
    inc hl
    ld e, b
    db $ed
    res 5, c
    sbc b
    sbc b
    sub l
    dec [hl]
    rla
    ld a, d
    xor d
    sbc c
    adc c
    sbc d
    db $76
    ld [hl], a
    ld h, [hl]
    ld a, c
    adc c
    add a
    ld a, b
    sbc c
    xor e
    and h
    and d
    dec h
    ld b, [hl]
    ld h, l
    ld d, l
    ld l, c
    rst $28
    res 5, b
    ld [hl], a
    ld [hl], a
    add a
    ld d, h
    ld h, a
    ld a, d
    bit 7, b
    ld a, b
    adc c
    add a
    db $76
    ld h, [hl]
    ld a, b
    adc c
    add [hl]
    db $76
    ld l, c
    sbc d
    cp d
    ld d, d
    ld b, l
    ld h, l
    add a
    ld h, [hl]
    ld h, l
    adc h
    db $db
    sbc c
    ld [hl], a
    ld [hl], a
    adc c
    sub l
    ld d, a
    sbc b
    xor e
    xor c
    add a
    ld h, a
    ld h, a
    db $76
    db $76
    ld l, b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld l, b
    sbc c
    xor e
    ld d, d
    ld d, h
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld a, e
    call z, $989b
    add [hl]
    sbc c
    sbc b
    ld h, [hl]
    ld h, a
    xor c
    xor d
    sub a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    or a
    ld h, a
    ld h, a
    ld a, b
    adc b
    ld h, [hl]
    ld h, a
    adc b
    sbc d
    or [hl]
    inc sp
    scf
    ld b, a
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    res 7, d
    adc b
    ld l, b
    sbc d
    ld [hl], a
    ld [hl], a
    ld a, b
    xor c
    sbc c
    ld [hl], l
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    or a
    adc b
    adc b
    sub a
    ld h, [hl]
    db $76
    adc b
    adc d
    add l
    dec [hl]
    ld d, a
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld l, c
    cp h
    adc e
    xor c
    ld [hl], a
    ld h, l
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, c
    sbc d
    xor c
    ld [hl], l
    ld [hl], a
    ld [hl], a
    sub a
    db $76
    db $76
    xor b
    ld a, b
    ld a, b
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld a, c
    cp e
    ld d, h
    ld d, l
    ld [hl], l
    add [hl]
    add a
    ld h, [hl]
    ld a, d
    cp h
    adc e
    adc b
    ld h, l
    ld l, c
    add a

Call_017_5795:
Jump_017_5795:
    ld [hl], a
    ld [hl], a
    sbc b
    xor c
    sbc b
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    db $76
    ld [hl], a
    xor c
    adc b
    ld h, [hl]
    ld h, l
    ld h, a

Call_017_57a5:
    adc b
    adc b
    xor h
    add h
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    add a
    add [hl]
    sbc e
    cp d
    sbc d
    sbc c
    ld [hl], l
    ld l, b
    add a
    adc c
    sbc c
    sbc c
    xor e
    sub a
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    sbc b
    cp c
    adc b
    ld h, a
    ld h, l
    db $76
    ld [hl], a
    ld [hl], a
    xor e
    ret z

    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld h, a
    sub a
    ld l, b
    res 3, d
    xor b
    sub [hl]
    ld [hl], $88
    adc b
    sbc c
    sbc b
    ld a, c
    sbc b
    ld h, a
    ld d, l
    ld h, [hl]
    db $76
    adc b
    adc b
    xor b
    sbc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc h
    ret z

    ld b, l
    inc sp
    ld [hl], $78
    xor c
    ld l, b
    adc c
    xor e
    xor c
    add [hl]
    dec [hl]
    ld h, a
    adc c
    sbc d
    sbc b
    ld l, b
    sbc b
    adc b
    db $76
    ld d, [hl]
    ld h, a
    sbc c
    sbc b
    adc b
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    cp h
    and h
    ld b, h
    inc sp
    ld h, a
    adc b
    add a
    ld a, c
    cp e
    cp d
    xor b
    sub l
    ld b, l
    adc c
    sbc e
    xor b
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld d, [hl]
    ld h, [hl]
    ld l, c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    sbc c
    xor e
    or [hl]
    ld d, h
    ld b, h
    ld h, [hl]
    ld a, b
    sbc c
    ld a, c
    sbc d
    xor d
    xor b
    add [hl]
    ld d, l
    adc b
    adc d
    xor c
    xor b
    adc b
    adc b
    ld [hl], a
    add l
    ld d, [hl]
    ld l, b
    adc b
    sbc c
    db $76
    db $76
    ld h, a
    add a
    adc b
    add a
    ld a, b
    adc b
    adc b
    sbc b
    sbc d
    ld [hl], e
    ld d, h
    ld d, l

Jump_017_5853:
    ld l, b
    adc d
    cp b
    sbc c
    sbc c
    sbc c
    xor b
    add l
    ld d, [hl]
    adc c
    sbc c
    sbc c
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76

Jump_017_5865:
    ld a, b
    adc c
    xor c
    ld [hl], a
    ld h, l
    ld e, b
    ld [hl], a
    ld a, b
    add a
    add a
    sub a
    add a
    sbc b
    adc c
    xor b
    ld b, a
    ld d, l
    ld l, b
    sbc c
    xor c
    ld h, a
    sbc b
    adc c
    xor c
    sbc b
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    adc b
    db $76

Jump_017_5884:
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    adc b
    add a
    ld h, a
    ld d, [hl]
    ld l, b
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    adc d
    and [hl]
    ld h, a
    ld d, [hl]
    ld l, b
    adc c
    xor b
    ld a, b
    sbc b
    xor d
    ld a, c
    sub a
    ld d, [hl]
    ld a, b
    adc c
    sbc b

Jump_017_58a6:
    adc b
    ld h, a
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld h, [hl]
    ld h, [hl]
    add a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld a, b
    adc c
    adc b
    adc d
    add l
    ld [hl], l
    ld d, [hl]
    ld [hl], a
    ld a, e
    sbc b
    adc d
    adc d
    adc c
    sbc c
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    add a
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    add a
    ld l, b
    ld [hl], a
    sbc b
    sbc b
    db $76
    ld d, [hl]
    ld l, b
    adc b
    sbc b
    add a
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    adc d
    add [hl]
    ld d, l
    ld d, a
    add a
    ld a, c
    sbc b
    ld a, c
    sbc b
    sbc c
    adc b
    add [hl]
    ld h, a
    ld a, b
    adc c
    adc c
    adc b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld d, [hl]
    ld l, b
    adc b
    adc b
    xor b
    add [hl]
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    sbc d
    ld [hl], a
    db $76
    ld h, [hl]
    add a
    adc d
    sbc b
    ld a, d
    adc b
    adc b
    add a
    sub l
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld a, b
    db $76
    ld l, b
    add a
    ld h, a
    adc b
    db $76
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    sbc c
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld a, c
    sbc d
    add a
    ld h, a
    ld [hl], a

Jump_017_5930:
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    adc c
    ld a, c
    adc c
    sbc b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc b
    adc b
    ld [hl], a
    add [hl]
    ld l, c
    adc c
    ld a, b
    ld l, c
    and a
    ld h, a
    ld [hl], l
    ld d, a
    ld [hl], a
    sbc d
    adc b
    xor c
    sbc c
    adc b
    add a
    ld h, [hl]
    ld h, a
    db $76
    adc c
    adc c
    add [hl]
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], l
    ld h, [hl]
    adc b
    sbc c
    adc c
    adc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    sbc c
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc d
    sbc b
    sbc c
    sub a
    sbc b
    adc b
    db $76
    db $76
    db $76
    ld l, b
    adc b
    adc b
    ld a, b
    add a
    ld d, [hl]
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    add a
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    sbc b
    sub a
    adc b
    add a
    adc c
    adc b
    adc b
    ld a, b
    add a
    adc b
    xor c
    db $76
    ld h, [hl]
    db $76
    ld a, b
    adc c
    add a
    adc b
    adc b
    adc b
    add a
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    sbc b
    add a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    sbc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    sbc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    add a
    sub a
    add a
    ld a, b
    adc c
    sbc b
    ld a, b
    ld h, l
    ld h, a
    adc c
    sbc b
    xor c
    add a
    adc b
    sbc b
    add a
    ld h, a
    ld [hl], l
    ld l, b
    ld [hl], a
    sbc b
    sbc b
    sub a
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld h, a
    add a
    add a
    add a
    sbc c
    adc c
    xor b
    adc c
    add a
    sbc b
    ld a, b
    adc b
    ld a, b
    sbc b
    sbc c
    ld l, b
    ld h, a
    ld h, a
    ld h, a
    add a
    ld a, b
    sbc b
    add a
    adc b
    ld a, b
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld l, b
    ld a, c
    sbc c
    sbc b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    add a
    sub a
    adc b
    sbc b
    adc b
    add a
    add a
    ld h, a
    ld a, b
    ld h, a
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sub a
    ld a, b
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    adc c
    sbc b
    adc b
    add a
    add a
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    sub a

Jump_017_5a41:
    add a
    add a
    adc b
    ld a, b
    adc b
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    add a
    add a
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    ld a, c
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    db $76
    ld [hl], a
    ld a, b
    sbc b
    sbc b
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    db $76
    db $76
    ld a, b

Jump_017_5a74:
    sbc b
    ld a, c
    ld a, b
    add a
    adc b
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    add a
    adc c
    ld a, c
    ld a, b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc c
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc c
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld d, a
    ld [hl], a
    add a
    adc b
    add a
    adc c
    add a
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sub a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    db $76
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], l
    ld d, l
    ld a, c
    sbc d
    sub a
    ld l, d
    ld [hl], l
    ld h, e
    adc c
    cp e
    ld h, l
    dec [hl]
    adc c
    sbc d
    db $76
    ld [hl], a
    ld e, b
    ld [hl], h
    ld b, [hl]
    xor a
    add $40
    add hl, sp
    cp a
    or h
    ld b, e
    ld l, c
    ld l, b
    adc b
    cp d
    db $76
    ld b, h
    ld h, a
    cp [hl]
    or $31
    add hl, de
    sbc l
    and $54
    add hl, sp
    ld [hl], a
    cp c
    sbc c
    ld [hl], h
    ld b, h
    ld a, l
    ei
    ld [c], a
    dec b
    sbc h
    ret c

    ld d, [hl]
    ld [hl], $a6
    sbc d
    ld a, d
    ld [hl], h

jr_017_5b3a:
    ld d, h
    ld l, h
    ld a, [$0753]
    sbc h
    sub [hl]
    ld [hl], $47
    or a
    xor c
    ld a, b
    ld h, l
    ld b, [hl]
    sbc a
    sub $30
    add hl, sp
    xor [hl]
    or l
    ld d, l
    ld e, c
    ld d, a
    sbc b
    adc c
    ld h, e
    ld a, c
    jp c, Jump_000_1863

    xor e
    push bc
    ld d, l
    ld c, c
    and a
    adc c
    adc b
    ld d, l
    ld d, a
    rst $18
    add e
    ld de, $de8b
    ld d, h
    ld b, h
    sbc d
    adc c
    sub a
    add [hl]
    dec [hl]
    xor l
    add $21
    ld e, d
    xor [hl]
    and h
    ld d, e
    ld l, c
    sbc c
    sbc c
    db $76
    ld d, l
    adc l
    rst $20
    ld b, d
    jr jr_017_5b3a

    sub $25
    ld l, b
    xor d
    sbc c
    db $76
    ld h, h
    ld a, e
    jp hl


    ld d, e
    dec h
    cp e
    jp z, Jump_017_4734

    sbc d
    sbc d
    add l
    ld h, $6a
    call c, Call_000_2454
    xor e
    cp e
    ld d, e
    ld d, [hl]
    adc d
    xor b
    add [hl]
    ld h, [hl]
    ld l, c
    call z, Call_000_3264
    adc e
    call z, Call_017_4663
    ld a, d
    xor c
    add a
    ld d, [hl]
    ld a, b
    cp l
    add h
    ld [hl-], a
    ld a, h
    cp e
    sub e
    ld h, l
    ld l, b
    cp c
    sbc c
    ld d, l
    db $76
    sbc l
    or h
    ld b, d
    ld c, e
    cp l
    or h
    inc [hl]
    ld l, b
    cp e
    adc b
    ld b, h
    ld h, [hl]
    sbc h
    sub $32
    jr z, @-$32

    rst $00
    inc h
    ld h, [hl]
    xor e
    sbc b
    sub l
    ld b, l
    ld a, d
    db $fc
    sub e
    inc d
    xor l
    bit 2, d
    ld b, [hl]
    ld a, e
    cp c
    add a
    ld d, l
    ld l, b
    sbc $83
    inc hl
    ld l, h
    res 2, e
    dec [hl]
    ld l, c
    cp c
    adc c
    ld d, l
    ld d, a
    adc [hl]
    add $23
    add hl, sp
    call z, Call_000_23b7
    ld l, b
    cp d
    reti


    ld h, l
    ld b, [hl]
    sbc e
    ret c

    inc sp
    ld h, $ad
    cp d
    ld b, d
    ld c, b
    sbc e
    cp b
    ld [hl], l
    ld b, [hl]
    sbc e
    call c, $2452
    adc l
    res 0, d
    ld h, $8a
    cp d
    add [hl]
    ld b, e
    ld a, d
    call Call_000_2294
    ld e, e
    xor e
    and l
    dec d
    ld a, b
    cp e
    add [hl]
    ld h, h
    ld l, c
    cp h
    or h
    ld [hl+], a
    ld e, d
    call c, Call_000_23a5
    ld l, b
    sbc e
    and a
    ld d, l
    ld c, b
    xor h
    rst $10
    ld [hl+], a
    ld b, a
    call z, Call_017_42a9
    ld h, a
    sbc d
    cp b
    ld h, l
    ld b, a
    adc d
    reti


    ld [hl-], a
    ld [hl], $bc
    cp c
    ld h, d
    scf
    sbc e
    cp c
    ld h, l
    ld d, l
    adc e
    jp c, Jump_000_3564

    ld a, e
    xor b
    ld [hl], l
    ld b, [hl]
    sbc c
    sbc c
    db $76
    ld h, [hl]
    adc b
    xor d
    add l
    ld b, l
    ld a, c
    xor c
    db $76
    ld d, l
    ld l, c
    xor c
    add [hl]
    ld h, [hl]
    ld l, c
    sbc d
    sub [hl]
    ld d, l
    ld l, c
    cp d
    add a
    ld h, h
    ld a, b
    sbc d
    add a
    ld h, [hl]
    ld e, b
    sbc d
    and a
    ld d, l
    ld e, b
    cp d
    sbc b
    ld h, l
    ld l, b
    sbc d
    and a
    ld h, [hl]
    ld h, a
    sbc e
    or a
    ld d, l
    ld h, a
    xor d
    sbc c
    ld h, l
    ld e, b
    ld a, d
    sbc b
    ld [hl], a
    ld h, a
    adc e
    xor b
    ld h, l
    ld d, a
    sbc d
    xor c
    ld [hl], l
    ld [hl], a
    adc b
    sbc b
    add a
    add a
    adc b
    xor c
    db $76
    ld [hl], a
    adc c
    sbc c
    db $76
    ld [hl], a
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld a, c
    sbc c
    db $76
    db $76
    sbc c
    sbc c
    add [hl]
    ld h, a
    ld a, c
    adc c
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    add a
    ld h, [hl]
    ld a, b
    sbc c
    add a
    db $76
    ld a, b
    adc c
    add a
    db $76
    adc b
    sbc c
    add a
    db $76
    adc b
    sbc c
    add a
    ld [hl], a
    add a
    adc c
    adc b
    ld [hl], a
    ld a, b
    adc d
    ld a, b
    ld h, a
    adc b
    adc b
    adc b
    db $76
    adc b
    adc c
    adc c
    ld h, a
    ld [hl], a
    adc c
    sub a
    ld [hl], a
    add a
    sbc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    adc c
    adc b
    ld [hl], a
    adc b
    adc c
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    add a
    ld l, b
    adc b
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    sub a
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    add [hl]
    add a
    sub a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld h, a
    ld [hl], a
    add a
    ld a, c
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld l, b
    add a
    ld a, b
    add [hl]
    ld l, b
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, c
    add a
    ld l, c
    add a

jr_017_5d1b:
    ld a, c
    ld [hl], a
    add a
    ld a, c
    adc b
    sbc b
    add a
    ld a, b
    adc b
    add a
    ld a, c
    sbc b
    adc c
    add a
    ld a, b
    add a
    ld h, l
    ld h, [hl]
    ld h, a
    add [hl]
    adc c
    sub a
    sbc c
    sbc d
    adc e
    and a
    ld e, b
    sbc b
    ld h, h
    ld d, a
    ld h, h
    ld l, b
    sub a
    ld a, b
    xor d
    sbc b
    xor d
    ld a, c
    xor b
    ld d, a
    add a
    ld d, d
    ld [hl], $76
    ld e, b
    xor b
    adc c
    cp d
    xor c
    sbc c
    adc c
    and a
    ld d, a
    ld h, l
    ld [hl-], a
    ld e, b
    ld [hl], l
    ld a, c
    sbc b
    sbc e
    ret


    adc c
    ld a, c
    xor c
    add l
    ld d, [hl]
    add l
    inc [hl]
    ld a, b
    sub h
    adc e
    and a
    sbc h
    cp b
    db $76
    sbc b
    xor d
    ld h, e
    ld e, c
    ld [hl], h
    dec [hl]
    sbc b
    ld d, [hl]
    sbc d
    sbc c
    cp e
    sub a
    add a
    adc d
    or a
    inc [hl]
    adc c
    ld d, e
    ld b, [hl]
    sub a
    ld h, a
    xor c
    xor d
    adc d
    add a
    ld [hl], a
    ld a, e
    add e
    jr c, jr_017_5d1b

    inc sp
    ld l, b
    add [hl]
    ld a, c
    xor d
    sbc d
    sub a
    add a
    adc b
    cp h
    ld d, e
    ld e, d
    ld h, l
    dec [hl]
    adc b
    ld h, [hl]
    sbc c
    sbc d
    sbc c
    add a
    ld l, b
    ld a, h
    add $36
    sub a
    ld b, h
    ld d, [hl]
    adc b
    add a
    sbc d
    sbc c
    sub a
    ld a, b
    adc d
    jp z, $8a43

    ld d, e
    ld b, l
    ld l, b
    db $76
    adc c
    xor c
    sbc c
    daa
    adc c
    xor h
    sub d
    ld c, d
    sub h
    ld h, $56
    add a
    ld a, b
    sbc d
    adc c
    add a
    ld a, c
    xor e
    or h
    ld l, b
    or [hl]
    inc h
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    xor b
    adc b
    ld a, b
    adc e
    ret c

    inc d
    cp c
    ld b, d
    ld h, [hl]
    ld l, b
    db $76
    sbc d
    sbc b
    ld [hl], a
    add a
    adc e
    ld a, [$b913]
    ld b, d
    ld d, [hl]
    ld l, b
    ld h, [hl]
    adc d
    xor b
    ld b, a
    adc b
    ld a, d
    db $ed
    ld [hl-], a
    sbc d
    ld d, d
    ld d, [hl]
    ld l, b
    ld [hl], l
    adc d
    xor c
    db $76
    adc b
    adc b
    db $ed
    ld [hl], c
    adc e
    ld d, e
    ld b, a
    ld l, b
    ld [hl], l
    adc c
    xor c
    ld h, [hl]
    ld [hl], a
    sbc c
    sbc $41
    sbc d
    ld d, e
    ld d, [hl]
    ld l, c
    ld h, l
    sbc c
    sbc c
    db $76
    ld [hl], a
    ld a, c
    rst $28
    ld sp, $6399
    ld b, a
    ld a, c
    ld h, h
    xor b
    adc d
    daa

jr_017_5e11:
    ld a, b
    ld a, b
    db $fd
    inc hl
    xor b
    ld d, e
    ld d, a
    ld a, c
    ld d, [hl]
    xor b
    adc d
    ld d, a
    adc b
    ld a, c
    db $fd
    add h
    sbc b
    ld h, e
    ld h, a
    adc c
    ld d, l
    or a
    sbc c
    ld l, b
    ld a, b
    adc c
    ei
    dec d
    xor b
    ld d, e
    ld e, c
    ld l, c
    scf
    cp b
    adc b
    ld l, b
    ld a, b
    ld a, e
    ld a, [$a716]
    ld d, d
    ld [hl], a
    xor b
    ld c, b
    and a
    sub a
    add hl, hl
    ld [hl], a
    adc e
    ld hl, sp+$16
    sbc b
    ld d, d
    ld [hl], a
    sbc b
    ld c, c
    and a
    sub a
    adc b
    db $76
    sbc h
    or $a8
    sub a
    inc [hl]
    ld a, c
    sub a
    ld c, d
    sbc b
    add [hl]
    adc c
    ld a, b

jr_017_5e5a:
    adc l
    push af
    add hl, de
    sub a
    inc [hl]
    ld a, c
    sub l
    ld c, c
    sbc b
    sub [hl]
    adc b
    ld [hl], a
    ld a, [hl]
    db $e4
    jr z, jr_017_5e11

    inc [hl]
    ld a, b
    or l
    ld e, c
    sbc c
    db $76
    jr c, jr_017_5ee9

    adc [hl]
    push de
    add hl, hl
    sub [hl]
    inc [hl]
    adc c
    sub h
    ld l, c
    adc d
    db $76
    sub a
    ld [hl], a
    sbc [hl]
    ld [c], a
    sbc c
    sub a
    inc [hl]
    adc d
    add [hl]
    ld l, d
    sub a
    add a
    sbc b
    ld h, a
    sbc a
    jp nz, $a52b

    ld b, h
    sbc c
    add l
    ld l, d
    sub a
    add l
    sbc b
    add [hl]
    adc [hl]
    db $e3
    add hl, de
    add a
    inc [hl]
    adc d
    sub l
    ld e, d
    sub a
    sub [hl]
    add hl, de
    add a
    sbc a
    db $e3
    add hl, de
    sub a
    ld b, h
    adc d
    add [hl]
    ld l, c
    sbc b
    sub [hl]
    adc c
    add a
    sbc l
    db $e3
    sbc c
    sub [hl]
    ld d, e
    adc c
    sub [hl]
    ld e, c
    sbc b
    sub [hl]
    ld a, c
    adc b
    ld a, l
    db $e4
    ld [$6496], sp
    ld a, c
    ld h, a
    ld e, c
    xor b
    sub [hl]
    ld a, c
    adc b
    adc h
    or $06
    sbc b
    ld [hl], h
    ld l, c
    adc c
    ld d, a
    xor b
    sbc b
    jr jr_017_5e5a

    adc d
    ld sp, hl
    dec b
    and a
    ld [hl], l
    ld e, b
    sbc c
    ld d, [hl]
    xor b
    sbc b
    ld e, b
    sbc b
    adc c
    ei
    ld [hl], e
    sbc b
    add l
    ld b, a
    adc c
    db $76
    xor c
    ld a, e
    ld h, [hl]

jr_017_5ee9:
    sbc b
    add a
    db $dd
    ld b, b
    add a
    ld [hl], a
    ld c, b
    xor c
    add l
    adc d
    ld a, d
    db $76
    adc b
    sub a
    xor a
    add b
    ld l, b
    ld a, c
    ld d, [hl]
    ld a, c
    sub h
    ld l, e
    adc c
    push hl
    ld a, b
    adc b
    adc [hl]
    or c
    add hl, sp
    ld a, b
    ld h, h
    ld a, b
    or [hl]
    ld c, c
    adc b
    and a
    ld [hl], a
    sbc b
    ld a, l
    ld d, h
    rlca
    adc b
    add h
    ld e, b
    xor c
    ld b, [hl]
    sbc c
    and a
    ld e, b
    sbc b
    adc c
    ld sp, hl
    inc b
    adc b
    add [hl]
    sub [hl]
    xor e
    ld h, h
    sbc c
    sbc c
    ld h, a
    ld a, b
    adc b
    sbc $10
    adc b
    adc b
    ld b, [hl]
    sbc d
    ld [hl], h
    adc c
    adc d
    db $76
    ld a, b
    adc b
    rst $08
    ld h, b
    ld c, c
    ld a, c
    ld h, h
    ld a, d
    sub l
    ld l, c
    adc c
    sub a
    ld [hl], a
    sub a
    ld a, [hl]
    pop de
    rla
    adc c
    add l
    ld c, c
    cp b
    scf
    sbc b
    and [hl]
    ld h, a
    adc c
    ld a, e
    rst $30
    dec b
    sbc b
    db $76
    ld d, [hl]
    cp d
    ld d, l
    sbc b
    sbc b
    db $76
    adc b
    ld a, b
    ei
    ld [de], a
    sbc b
    ld [hl], a
    ld d, l
    adc h
    ld [hl], h
    sbc b
    adc c
    ld [hl], a
    ld a, b
    add a
    sbc $40
    ld l, c
    ld [hl], a
    ld [hl], l
    ld l, d
    and l
    ld l, b
    adc c
    add a
    ld [hl], a
    adc b
    ld a, h
    sub e
    ld e, c
    ld [hl], a
    add a
    ld l, b
    sub a
    ld e, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, d
    push bc
    scf
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld h, [hl]
    sbc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ret


    inc [hl]
    sbc b
    ld a, b
    ld h, [hl]
    adc d
    ld [hl], l
    add a
    adc b
    add a
    ld [hl], a
    add a
    xor h
    ld [hl], d
    ld a, b
    ld [hl], a
    add a
    ld l, c
    sub [hl]
    ld l, b
    ld a, b
    sub a
    ld d, a
    add a
    adc h
    or h
    ld c, b
    add a
    adc b
    db $76
    sbc b
    ld h, a
    add a
    sbc b
    ld h, a
    add a
    ld a, b
    xor b
    ld [hl], a
    add a
    adc b
    add [hl]
    adc b
    add [hl]
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc d
    ld h, h
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, d
    add [hl]
    ld h, a
    adc b
    add a
    ld [hl], a
    adc b
    ld h, a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    sbc b
    ld h, [hl]
    add a
    add a
    add a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    db $76
    ld a, b
    add a
    add [hl]
    ld l, c
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    sub a
    db $76
    ld [hl], l
    ld d, a
    ld h, [hl]
    ld b, [hl]
    add [hl]
    ld [hl], a
    adc e
    and a
    adc e
    sbc c
    sbc c

jr_017_6010:
    daa
    adc c
    ld d, l
    ld d, [hl]
    db $76
    ld d, [hl]
    ld h, l
    adc b
    ld a, c
    cp a
    call nz, $998c
    ld [hl], l
    inc sp
    ld a, b
    jp nz, $9856

    adc b
    sbc c
    or a
    ld a, e
    db $fd
    ld h, l
    sub a
    ld d, [hl]
    ld sp, $9527
    ld h, $8a
    ld a, c
    xor b
    adc c
    add [hl]
    adc l
    push de
    jr c, jr_017_609e

    db $76
    ld [hl+], a
    ld l, e
    ld [hl], h
    ld [hl], a
    sbc h
    sbc c
    add [hl]
    xor b
    ld h, a
    jp c, $8844

    add [hl]
    ld d, d
    jr c, jr_017_6010

    ld b, a
    adc e
    ret


    add a
    ld d, a
    ld [hl], l
    sbc a
    sub h
    ld d, a
    ld [hl], a
    ld [hl], h
    ld b, l
    ld a, d
    ld h, [hl]
    add a
    cp e
    sub a
    ld h, l
    db $76
    ld e, h
    ld a, [$7646]
    or h
    ld d, h
    ld c, c
    and [hl]
    db $76
    sbc e
    and [hl]
    ld [hl], h
    ld e, b
    ld e, c
    db $dd
    ld h, [hl]
    db $76
    ld [hl], a
    ld b, h
    scf
    ret


    ld h, a
    ld l, e
    cp b
    ld [hl], a
    ld b, a
    ld h, a
    cp a
    or [hl]
    ld h, [hl]
    ld l, b
    ld d, l
    ld b, l
    xor h
    ld h, a
    ld h, a
    ld a, e
    ld h, [hl]
    ld d, l
    add [hl]
    adc a
    rst $10
    ld h, l
    ld e, b
    ld d, l
    ld h, e
    ld a, l
    sub l
    db $76
    sbc h
    ld d, [hl]
    ld d, e
    ld e, b
    adc a
    rst $30
    ld b, [hl]
    ld d, a
    ld [hl], l
    ld [hl], h
    ld l, l
    cp b
    ld [hl], l
    ld a, e
    db $76
    ld [hl], l
    ld a, c

jr_017_609e:
    adc e
    ld hl, sp+$74
    ld b, a
    add l
    ld h, [hl]
    ld l, h
    sub $66
    ld l, c
    ld [hl], a
    add [hl]
    ld l, b
    adc h
    ld a, [$3645]
    add a
    ld h, a
    ld l, d
    ret z

    ld h, l
    ld l, b
    sbc b
    sub [hl]
    ld e, c
    adc d
    ei
    ld d, e
    ld [hl], $87
    add a
    ld l, d
    ret z

    sub [hl]
    ld l, b
    xor b
    ld a, b
    ld e, b
    adc e
    ld a, [$4531]
    xor b
    sub [hl]
    ld e, c
    reti


    ld h, [hl]
    ld d, a
    sbc b
    cp b
    ld d, a
    sbc a
    ld hl, sp+$20
    scf
    cp c
    add a
    ld e, d
    or [hl]
    db $76
    ld h, a
    sbc b
    sbc b
    ld d, a
    cp a
    or a
    ld hl, $bb48
    add l
    ld a, d
    add [hl]
    add h
    ld l, b
    sbc b
    and a
    ld a, b
    sbc $94
    ld [hl+], a
    ld l, d
    ld l, e
    db $76
    ld a, c
    ld l, b
    ld [hl], l
    add [hl]
    sbc e
    sub [hl]
    ld a, h
    jp hl


    ld h, e
    inc hl
    adc d
    jp z, $8766

    sbc d
    ld [hl], a
    ld [hl], a
    adc d
    add a
    sbc a
    rst $00
    ld [hl-], a
    ld b, [hl]
    sbc e
    or a
    ld h, a
    add l
    adc d
    add [hl]
    ld a, b
    ld a, [hl-]
    ld l, d
    db $ed
    ld h, h
    ld b, h
    ld l, d
    sbc h
    sub l
    ld l, b
    ld h, [hl]
    xor b
    ld h, a
    adc c
    sub a
    adc [hl]
    and $b4
    ld [hl], $9b
    cp d
    ld h, [hl]
    db $76
    ld a, d
    sub [hl]
    ld l, b
    sbc c
    ld [hl], a
    rst $18
    ld [hl], e
    ld b, h
    ld c, c
    cp h
    and [hl]
    ld d, [hl]
    ld d, [hl]
    xor c
    add a
    ld a, b
    adc b
    ld a, l
    rst $30
    inc sp
    inc sp
    adc e
    call z, Call_017_7575
    ld e, b
    sbc b
    db $76
    sbc b
    ld h, a
    sbc $73
    inc sp
    ld c, c
    xor l
    rst $00
    ld d, a
    ld d, l
    sbc d
    sub a
    ld l, b
    sub a

jr_017_6150:
    ld l, a
    push bc
    ld [hl-], a
    dec h
    xor e
    db $db
    ld h, h
    ld [hl], h
    ld a, b
    xor b
    ld h, a
    adc b
    ld l, e
    ld [$3343], a
    ld c, c
    call Call_017_57a5
    ld d, a
    sbc c
    add [hl]
    ld l, b
    ld [hl], a
    adc $94
    ld sp, $ad38
    reti


    ld d, l
    ld h, l
    ld a, d
    sbc b
    ld d, a
    add a
    sbc l
    rst $00
    ld b, c
    inc h
    ld a, e
    db $ed
    add l
    ld d, h
    ld c, c
    xor c
    add [hl]
    ld c, b
    ld a, c
    jp c, Jump_000_2155

    ld e, c
    cp l
    ret z

    ld d, l
    dec [hl]
    sbc e
    sub a
    ld [hl], a
    ld a, b
    call z, $8285
    ld [hl], $ac
    jp z, Jump_000_3476

    ld e, c
    sbc c
    adc b
    ld h, [hl]
    sbc l
    and [hl]
    ld h, e

jr_017_619d:
    inc d
    sbc e
    db $db
    sub a
    inc [hl]
    ld b, a
    xor c
    sbc c
    ld [hl], l
    ld a, e
    and a
    ld h, l
    inc hl
    ld l, c
    call z, Call_017_53a8
    ld b, [hl]
    adc d
    ld a, c
    add a
    ld l, c
    cp b
    ld h, [hl]
    ld [hl-], a
    ld e, b
    cp h
    cp d
    ld [hl], l
    inc [hl]
    ld l, c
    xor d
    sub a
    ld l, b
    cp b
    rst $00
    ld d, c
    jr c, jr_017_6150

    jp c, Jump_017_4375

    ld d, a
    sbc d
    xor b
    ld [hl], a
    sbc c
    ld h, a
    ld d, e
    scf
    adc c
    ld l, l
    add [hl]
    ld b, h
    ld b, [hl]
    ld a, c
    cp c
    ld [hl], a
    sbc c
    add [hl]
    ld [hl], l
    dec b
    sbc c
    xor l
    or a
    ld d, l
    ld b, l
    sbc b
    xor c
    sbc b
    ld a, c
    sub a
    ld d, a
    ld [hl-], a
    ld a, c
    sbc e
    ret


    ld h, l
    ld d, h
    ld e, b
    xor d
    xor b
    adc c
    sbc b
    ld h, a
    ld h, e
    jr c, jr_017_619d

    cp h
    sub l
    ld h, h
    ld b, [hl]
    adc c
    cp b
    add a
    xor c
    db $76
    ld [hl], l
    dec [hl]
    ld a, c
    sbc e
    cp c
    ld d, l
    ld d, h
    ld l, b
    xor d
    adc b
    adc d
    add a
    ld h, [hl]
    ld d, e
    ld a, d
    ld a, d
    cp d
    db $76
    ld [hl], l
    ld h, [hl]
    adc c
    adc b
    adc d
    and a
    ld [hl], a
    ld [hl], d
    ld e, c
    add a
    cp e
    add [hl]
    ld [hl], a
    ld b, l
    adc b
    sbc b
    add hl, sp
    xor c
    ld [hl], a
    add h
    ld [hl], $88
    sbc l
    sbc b
    ld [hl], a
    ld d, l
    ld l, b
    sbc c
    sbc b
    xor d
    add [hl]
    add [hl]
    db $76
    add a
    adc h
    ret z

    ld [hl], a
    ld h, h
    ld l, b
    adc c
    adc c
    sbc d
    adc b
    ld l, b
    ld d, e
    ld a, c
    ld a, c
    jp z, Jump_017_7498

    ld h, a
    ld a, c
    adc c
    sbc d
    sbc b
    ld h, a
    ld [hl], h
    ld e, b
    ld a, b
    cp e
    ld a, b
    sub [hl]
    ld d, [hl]
    ld [hl], a
    ld l, b
    adc d
    xor c
    ld l, b
    ld [hl], l
    ld b, a
    ld [hl], a
    xor e
    or a
    add a
    ld d, l
    ld [hl], a
    adc b
    sbc c
    sbc d
    add a
    and a
    ld d, e
    ld a, b
    ld a, c
    cp d
    ld a, b
    ld [hl], l
    ld d, a
    adc b
    sbc b
    adc c
    or a
    ld [hl], a
    ld [hl], h
    ld d, a
    ld [hl], a
    ld l, e
    sub [hl]
    add [hl]
    ld d, a
    adc b
    adc c
    ld a, c
    xor d
    ld [hl], a
    db $76
    dec h
    ld a, b
    ld a, d
    cp b
    ld [hl], a
    ld h, l
    sbc c
    sbc c
    ld a, b
    adc d
    add a
    add a
    ld d, h
    ld d, a
    ld l, b
    cp e
    ld [hl], a
    add a
    ld e, b
    adc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld [hl], h
    ld d, [hl]
    add [hl]
    adc h
    add a
    adc b
    ld d, a
    sbc c
    ld a, b
    ld a, b
    sbc c
    ld a, b
    add [hl]
    ld [hl], $86
    ld a, d
    xor b
    ld a, b
    db $76
    adc c
    adc b
    ld [hl], a
    sbc d
    add a
    add a
    ld b, l
    ld l, b
    ld l, b
    xor c
    add a
    db $76
    ld a, b
    sub a
    add a
    adc c
    xor b
    ld a, b
    ld h, h
    ld h, a
    ld [hl], a
    sbc d
    ld l, b
    add [hl]
    ld h, a
    adc b
    sub a
    ld c, b
    xor c
    ld a, b
    ld [hl], h
    ld d, a
    ld [hl], a
    sbc e
    add a
    add a
    ld d, a
    ld a, b
    ld a, b
    ld a, b
    sbc c
    add a
    add [hl]
    add l
    ld [hl], a
    adc c
    xor b
    ld a, b
    ld h, [hl]
    ld a, b
    add a
    ld a, b
    sbc d
    add a
    add [hl]
    ld h, l
    ld [hl], a
    ld a, d
    xor c
    adc b
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    xor b
    add a
    ld h, l
    ld [hl], a
    ld d, a
    sbc c
    adc b
    add [hl]
    ld h, a
    add [hl]
    add a
    ld a, b
    sbc c
    adc b
    db $76
    ld d, a
    add [hl]
    sbc c
    sub a
    adc b
    ld h, a
    ld a, b
    ld [hl], a
    add a
    sbc c
    adc b
    sub a
    ld d, [hl]
    db $76
    ld l, c
    xor b
    ld a, b
    db $76
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    adc b
    ld a, c
    ld h, h
    ld h, a
    ld l, b
    ld a, b
    adc b
    adc b
    db $76
    adc b
    add a
    adc c
    sbc b
    ld a, c
    db $76
    ld h, [hl]
    ld h, [hl]
    adc d
    adc c
    ld a, b
    ld h, a
    sbc b
    adc b
    adc b
    sbc b
    adc b
    add a
    ld d, [hl]
    db $76
    ld l, b
    sbc b
    adc c
    ld [hl], a
    add a
    sbc b
    add a
    adc b
    ld l, b
    adc b
    ld h, l
    ld h, a
    ld h, a
    adc c
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    add a
    adc c
    ld [hl], l
    ld h, [hl]
    add [hl]
    adc c
    adc b
    ld a, b
    ld [hl], a
    adc c
    sbc b
    ld l, b
    sbc c
    ld a, b
    add a
    ld h, l
    db $76
    ld l, c
    sub a
    ld [hl], a
    ld l, b
    ld a, b
    sbc b
    add [hl]
    adc c
    sub a
    adc c
    ld h, l
    ld h, a

Jump_017_6359:
    db $76
    sbc b
    add a
    db $76
    adc b
    sbc c
    sub a
    ld l, b
    sbc c
    ld a, b
    add a
    ld d, l
    ld h, a
    adc b
    sub a
    db $76
    adc b
    sbc b
    sbc b
    ld [hl], a
    adc c
    adc b
    adc b
    ld [hl], l
    ld h, l
    adc b
    add a
    add a
    ld h, [hl]
    sbc d
    adc b
    adc b
    ld a, b
    sbc c
    sub a
    add [hl]
    ld h, [hl]
    db $76
    sub a
    sbc b
    db $76
    ld a, b
    sbc b
    adc b
    ld [hl], a
    adc c
    sbc b
    add [hl]
    ld h, [hl]
    ld h, a
    adc b
    ld [hl], a
    db $76
    ld h, a
    sbc c
    add a
    db $76
    ld a, c
    sbc c
    adc b
    ld h, [hl]
    ld h, [hl]

Call_017_6397:
    adc b
    add a
    ld h, a
    ld [hl], a
    ld a, d
    adc b
    add a
    ld h, a
    xor d
    ld [hl], a
    db $76
    ld d, a
    ld a, b
    add a
    ld [hl], l
    ld [hl], a
    ld [hl], a
    sbc c
    ld [hl], a
    db $76
    sbc d
    xor b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    add [hl]
    ld d, [hl]
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    xor d
    adc b
    ld h, [hl]
    ld l, b
    adc b
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    adc b
    ld a, b
    add a
    sbc b
    sbc b
    add a

Call_017_63c7:
    ld [hl], a
    add a
    add a
    add l
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc c
    ld a, c
    sbc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    ld [hl], a
    add a
    sub a
    adc b
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, c
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    sbc b
    sbc b
    add a
    adc c
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, c
    sbc c
    add a
    ld a, b
    ld h, a
    ld l, b
    db $76
    add a
    ld h, [hl]
    ld l, b
    ld a, b
    add a
    adc b
    sbc c
    sub a
    ld l, c
    sbc b
    ld [hl], a
    db $76
    adc b
    db $76
    db $76
    ld a, b
    add a
    adc b
    sbc d
    sbc b
    ld l, b
    sbc b
    add a
    db $76
    ld a, b
    add [hl]
    ld h, a
    ld l, b
    add a
    sbc b
    sbc c
    sbc c
    ld h, a
    sbc c
    add a
    ld [hl], l
    ld a, b
    ld h, a
    ld h, [hl]
    ld l, b
    sub [hl]
    ld [hl], a
    adc c
    sbc d
    ld [hl], a
    xor b
    adc b
    db $76
    ld l, b
    ld a, b
    ld h, l
    ld l, c
    sub a
    db $76
    ld a, c
    cp e
    ld h, [hl]
    ld a, c
    xor d
    ld h, h
    ld e, b
    ld c, b
    ld b, e
    ld l, e
    ret c

    ld h, h
    ld a, e
    reti


    ld b, e
    ld a, d
    cp b
    ld d, d
    ld l, e
    and a
    inc h
    adc [hl]
    add sp, -$4c
    adc d
    cp b
    inc de
    adc e
    and [hl]
    inc [hl]
    sbc e
    and l
    dec [hl]
    cp a
    add $36
    sbc d
    sub l
    inc b
    ld a, e
    sub h
    dec [hl]
    call z, Call_000_27a3
    rst $18

Jump_017_6487:
    or e
    daa
    xor e
    add c
    ld b, $cc
    ld [hl], e
    add hl, sp

jr_017_648f:
    bit 4, d
    ld c, d
    rst $28
    ld [hl], c
    ld e, c
    cp d
    ld d, b

Jump_017_6497:
    ld a, [de]
    jp c, Jump_017_5a74

    jp z, Jump_017_6c31

    db $fc
    ld b, c
    xor d
    cp b
    jr nc, @+$5d

    bit 2, h
    ld l, e
    or a
    ld [hl-], a
    ld a, [hl]
    ld sp, hl
    inc sp
    ld a, d
    sub a
    ld [de], a
    adc h
    add hl, sp
    ld h, h
    sbc e
    sub l
    dec [hl]
    sbc a
    or $25
    adc c
    and [hl]
    inc hl
    xor e
    cp b
    ld d, l
    adc d
    ld [hl], h
    ld [hl], l
    cp a
    sub $35
    ld [hl], a
    sub l
    ld d, $bb
    xor b

Call_017_64c9:
    ld b, a
    sbc c
    ld [hl], h
    ld b, [hl]
    rst $08
    jp $9945


    sub h
    jr c, jr_017_648f

    and l
    ld d, [hl]
    adc b
    ld [hl], h
    ld c, b
    rst $18
    and e
    ld d, l
    ld l, b
    sub h
    ld e, c
    cp h
    sub [hl]
    ld d, l
    ld a, b
    ld [hl], l
    ld l, d
    xor $74
    ld b, h
    ld e, c
    add l
    ld a, d
    cp d
    sub l
    ld b, [hl]
    ld a, b
    db $76
    ld a, d
    db $fc
    ld d, e
    ld d, e
    ld a, d
    add [hl]
    adc d
    cp d
    add l
    ld b, l
    ld a, b
    add a
    sbc e
    ld a, [$5443]
    ld l, e
    sub a
    sbc d
    xor c
    ld h, l
    ld b, l
    ld a, b
    sbc c
    sbc h
    rst $20
    inc h
    ld b, h
    sbc h
    sub a
    sbc c
    and a
    or h
    ld d, l
    adc c
    adc b
    xor [hl]
    push hl
    inc h
    ld b, l
    xor h
    sub a
    sbc c
    sub a
    ld d, l
    ld h, a
    sbc b
    adc b
    sbc $b4
    inc [hl]
    scf
    cp e
    adc b
    sbc c
    db $76
    ld h, [hl]
    ld d, a
    sbc c
    adc c
    cp l
    add e
    dec [hl]
    ld b, a
    ld l, e
    ld a, b
    adc b
    add [hl]
    ld h, [hl]
    ld l, b
    sbc c
    adc b
    db $db
    ld h, d
    ld d, l
    ld l, d
    jp z, Jump_017_7888

    db $76
    rst $10
    ld a, c
    sbc c
    ld a, c
    bit 0, d
    ld h, l
    ld l, e
    ret


    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    sbc c
    ld a, d
    or a
    inc [hl]
    ld d, l
    ld a, h
    ret


    ld [hl], a
    db $76
    db $76
    add a
    ld [hl], a
    xor b
    adc e
    rst $00
    inc h
    ld h, l
    adc l
    ld a, b
    db $76
    ld [hl], a
    ld l, b
    add a
    ld a, b
    sbc c
    adc e
    or l
    ld h, $56
    sbc l
    cp b
    ld h, a
    ld h, a
    ld l, b
    sub a
    ld a, b
    adc b
    sbc h
    or h
    dec [hl]
    ld d, [hl]
    cp h
    and a
    ld h, [hl]
    ld h, a
    ld l, c
    ld [hl], a
    ld l, b
    sub a
    xor h
    sub h
    ld [hl], $58
    cp h
    sub a
    ld h, [hl]
    ld [hl], a

Jump_017_6587:
    adc b
    add [hl]
    ld a, b
    ld a, c
    xor e
    ld [hl], e
    ld b, [hl]
    ld c, b
    db $db
    db $76
    ld h, [hl]
    ld l, b
    adc c
    db $76
    ld [hl], a

Jump_017_6596:
    adc b
    cp e

Call_017_6598:
    ld h, d
    ld b, l
    ld l, b
    call c, Call_017_5677
    ld l, b
    sbc b
    ld b, [hl]
    adc b
    ld a, c
    cp e
    ld d, d
    ld b, h
    ld e, d
    db $db
    add [hl]
    ld h, l
    ld a, b
    sbc b
    ld h, a
    ld [hl], a
    adc c
    jp c, Jump_017_4473

    ld e, e
    db $db
    ld [hl], l
    ld h, l
    ld a, b
    sbc b
    ld h, a
    add a
    sbc d
    cp c
    ld b, e
    ld h, h
    ld a, h
    ret


    ld h, [hl]
    ld h, [hl]
    ld a, b
    sub a
    ld h, a
    adc b
    adc d
    ret z

    inc [hl]
    ld d, h
    adc h
    rst $00
    db $76
    ld [hl], l
    ld a, b
    sub a
    ld b, a
    sbc b
    adc e
    add $45
    ld d, l
    ld a, l
    cp b
    ld h, [hl]
    db $76
    ld a, c
    add [hl]
    ld [hl], a
    adc b
    adc e
    or [hl]
    ld [hl], l
    ld h, l
    adc l
    or a
    db $76
    ld l, b
    ld a, c
    add [hl]
    ld a, b
    add a
    adc e
    or [hl]
    ld b, [hl]
    ld d, l
    xor h
    and a
    add a
    ld h, a
    ld a, c
    add [hl]
    adc b
    adc b
    ld a, e
    and [hl]
    ld b, [hl]
    ld h, [hl]
    xor h
    sub a
    db $76
    add [hl]
    adc b
    db $76
    ld e, c
    add a
    adc e
    and l
    ld b, a
    ld b, [hl]
    cp h
    sub [hl]
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    adc c
    ld [hl], a
    adc e
    and l
    add [hl]
    ld b, [hl]
    cp h
    sub a
    ld [hl], a
    adc b
    ld l, b
    db $76
    sbc c
    add a
    adc h
    sub l
    ld h, [hl]
    ld b, [hl]
    xor e
    ld [hl], a
    sub a
    add a
    ld a, b
    db $76
    sbc b
    ld [hl], a
    adc e
    and [hl]
    ld b, a
    ld b, a
    xor e
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld c, c
    db $76
    ld a, e
    or a

Call_017_6634:
    ld d, [hl]
    ld b, [hl]
    xor e
    sub a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc c
    add a
    ld a, e
    cp b
    db $76
    ld d, l
    sbc d
    sbc b
    ld l, c
    adc b
    ld h, [hl]
    ld h, a
    sbc c
    ld a, b
    ld l, d
    ret z

    ld b, l
    ld h, l
    adc d
    sub [hl]
    adc b
    sub a
    ld h, a
    ld h, [hl]
    adc c
    add a
    ld a, d
    ret


    ld b, l
    ld d, l
    ld a, d
    xor b
    ld [hl], a
    sbc b
    db $76
    ld h, [hl]
    ld l, b
    ld a, b
    ld a, c
    jp z, Jump_017_5554

    ld a, d
    sub a
    ld a, b
    adc b
    ld [hl], a
    ld d, [hl]
    adc b
    ld a, b
    ld l, b
    cp e
    ld h, h
    ld h, [hl]
    ld l, c
    and a
    ld l, b
    sbc b
    add a
    ld d, [hl]
    ld a, b
    ld a, b
    add a
    cp e
    add h
    ld h, [hl]
    ld d, a
    sbc b
    ld [hl], a
    sbc c
    add a
    db $76
    ld [hl], a

Jump_017_6685:
    adc b
    ld a, b
    sbc e
    add l
    ld h, a
    ld h, a
    sbc b
    ld d, a
    adc c
    sub a
    db $76
    or a
    adc b
    add [hl]
    sbc e
    sub [hl]
    ld d, a
    ld [hl], a
    sbc c
    ld h, [hl]
    adc d
    adc b

Jump_017_669b:
    add [hl]
    ld h, a
    adc c
    ld [hl], a
    ld a, e
    ld [hl], a
    ld b, l
    ld [hl], a
    sbc b
    ld h, l
    ld a, d
    sbc b
    ld [hl], a

Call_017_66a8:
    ld l, b
    add a
    db $76
    ld l, d
    cp c
    ld h, [hl]
    ld h, [hl]
    adc d
    ld h, l
    ld l, b
    sbc c
    adc b
    ld d, a

Jump_017_66b5:
    adc b
    db $76
    ld [hl], a
    bit 6, l
    ld h, a
    ld l, c
    add l
    ld h, a
    adc c
    add a
    add a
    adc c
    db $76
    ld h, a
    xor e
    sub l
    ld h, [hl]
    ld [hl], a
    add a

Call_017_66c9:
    ld d, [hl]
    sbc c
    sub a
    ld h, [hl]
    adc c
    add a
    ld h, l
    adc e
    or a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld d, l
    ld a, d
    and a
    ld [hl], l
    ld a, c
    add a
    ld h, [hl]
    ld a, d
    cp b
    ld h, l
    ld l, b
    ld [hl], a
    ld h, h
    ld a, d
    sbc b
    ld h, a
    ld l, b
    sbc c
    ld [hl], l
    ld a, c
    xor c
    ld [hl], l
    ld [hl], a
    adc b
    ld h, l
    ld l, b
    xor b
    add a
    ld l, b
    adc c
    ld [hl], a
    ld a, c
    xor b
    db $76
    db $76
    sub a
    ld h, a
    ld d, a
    sbc c
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld d, l
    ld d, l
    ld [hl], a
    adc b
    xor d
    xor d
    xor d
    xor d
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    and [hl]
    ld a, b
    adc c
    sbc c
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    sbc d
    xor e
    ld l, e
    cp e
    xor e

Jump_017_6723:
    xor c
    sbc b
    add a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    ld l, b
    sbc c
    xor c
    sbc c
    add a
    ld h, l
    ld d, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, a
    adc c
    sbc b
    sbc c
    sbc d
    xor e
    cp e
    cp h
    xor e
    xor d
    add a
    sub [hl]
    ld d, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld a, b
    adc d
    adc c
    sub [hl]
    ld h, h
    ld b, e
    ld b, e
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc d
    call z, $dccc
    res 5, c
    db $76
    ld h, h
    ld d, h
    ld b, l
    ld b, a
    ld l, b
    adc c
    reti


    and a
    ld [hl], l
    ld d, h
    inc sp
    inc [hl]
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    sbc c
    cp h
    call z, Call_017_7cdd
    cp c
    add [hl]
    ld h, l
    ld b, e
    ld b, l
    ld h, l
    ld a, b
    adc d
    sbc d
    sub a
    ld h, l
    ld d, e
    inc sp
    ld b, l
    ld b, [hl]
    sub a
    ld h, a
    ld a, b
    ld h, a
    ld a, b
    sbc d
    call $eedd
    call c, Call_017_76ba
    ld d, l
    dec [hl]
    ld b, l
    ld h, [hl]
    ret c

    xor c
    adc c
    ld h, [hl]
    ld b, l
    inc sp
    ld b, h

Jump_017_6797:
    ld b, h
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld a, b
    adc d
    xor h
    adc $5f
    db $ed
    call c, Call_017_66a8
    ld b, h
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    db $76
    ld d, e
    inc sp
    inc sp
    ld b, l
    db $76
    ld l, b
    ld h, a
    ld [hl], a
    ld h, a
    ld l, c
    sbc d
    call $ffdf
    db $ed
    jp z, Jump_017_6685

    ld d, l
    db $76
    add sp, -$66
    adc b
    db $76
    ld b, e
    ld [de], a
    ld hl, $5623
    ld [hl], a
    ld h, a
    adc c
    db $76
    ld a, b
    xor d
    cp h
    ld c, [hl]
    rst $38
    db $fd
    ret


    add [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    adc b
    adc d
    sbc b
    db $76
    ld b, e
    ld de, $3320
    db $76
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    xor d
    call $ffee
    db $fd
    ret


    ld [hl], l
    ld d, l
    ld b, l
    ld h, a
    jp hl


    sbc e
    sbc c
    db $76
    inc sp
    ld de, $2410
    ld b, [hl]
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    adc e
    call $ff5e
    db $fd
    reti


    ld [hl], l
    ld b, e
    ld b, [hl]
    ld e, b
    adc b
    sbc d
    xor c
    add l
    ld [hl-], a
    ld de, $2300
    ld [hl], a
    ld [hl], a
    adc b
    add a
    db $76
    ld h, a
    adc d
    call $ffdf
    cp $ba
    ld h, l
    ld b, e
    ld b, l
    ld h, a
    add sp, -$56
    xor c
    add l
    ld b, e
    ld hl, $2401
    ld d, a
    adc b
    adc b
    adc b
    db $76
    ld h, a
    adc c
    xor h
    ld e, [hl]
    rst $38
    cp $ca
    ld [hl], l
    ld b, e
    dec [hl]
    ld d, [hl]
    ld a, b
    xor e
    xor c
    and [hl]
    ld d, e
    ld hl, $1301
    db $76
    ld a, b
    sbc b
    sbc c
    db $76
    db $76
    ld a, b
    cp e
    db $dd
    rst $38
    rst $38
    res 0, [hl]
    ld b, e
    inc sp
    ld b, h
    rst $00
    adc c
    cp d
    xor c
    ld [hl], h
    ld b, c
    ld hl, $4512
    ld l, b
    sbc c
    adc c
    adc b
    ld h, a
    ld a, b
    sbc d
    inc l
    rst $28
    rst $38
    db $ec
    cp c
    ld h, l
    inc sp
    dec [hl]
    ld d, l
    ld a, b
    sbc c
    xor d
    sub a
    ld d, h
    ld [hl-], a
    ld [hl+], a
    inc sp
    ld b, [hl]
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld h, [hl]
    adc b
    xor e
    adc $ff
    cp $ec
    and a
    ld d, h
    ld b, e
    add h
    ld d, l
    ld a, b
    xor c
    xor c
    adc b
    ld d, h
    inc sp
    ld [de], a
    inc [hl]
    ld d, l
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld h, a
    add hl, sp
    xor e
    db $dd
    rst $28
    cp $dc
    and a
    ld h, h
    inc [hl]
    inc [hl]
    ld d, [hl]
    adc b
    sbc d
    sbc d
    add a
    ld d, h
    ld h, d
    ld [hl-], a
    inc sp
    ld d, [hl]
    ld l, b
    ld a, c
    ld a, c
    add a
    ld l, b
    adc c
    xor e
    call $eeef
    db $eb
    and a
    sub h
    ld b, e
    inc [hl]
    ld b, [hl]
    ld a, b
    adc d
    sbc d
    sbc c
    ld h, h
    ld b, e
    inc sp
    inc h
    ld b, [hl]
    ld l, b
    adc b
    adc b
    sub a
    ld [hl], a
    adc c
    sbc d
    call z, $fede
    db $ec
    cp c
    ld h, [hl]
    ld b, e
    inc sp
    ld d, l
    ld h, a
    adc b
    sbc d
    ld a, [$3476]
    ld [hl-], a
    inc hl
    ld b, l
    ld h, [hl]
    adc c
    adc c
    ld a, b
    add a
    ld a, b
    adc d
    xor h
    db $dd
    xor $7c
    jp z, Jump_017_4487

    ld [hl-], a
    ld b, h
    ld d, a
    ld l, c
    adc d
    sbc d
    sub a
    ld h, h
    inc [hl]
    inc sp
    dec [hl]
    ld d, a
    ld l, b
    add a
    adc c
    ld a, b
    ld [hl], a
    sbc b
    xor e
    cp l
    sbc $ee
    db $db
    xor b
    add l
    ld b, e
    inc sp
    ld d, h
    and [hl]
    adc b
    sbc c
    sbc d
    ld h, a
    ld b, h
    ld b, e
    inc [hl]
    ld b, [hl]
    ld h, a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, d
    dec sp
    call z, $dddd
    cp e
    adc b
    ld d, e
    ld b, e
    ld b, h
    ld d, [hl]
    ld l, b
    adc c
    sbc c
    sub a
    ld h, l
    ld b, h
    ld d, e
    dec [hl]
    ld d, [hl]
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc c
    cp h
    db $dd
    sbc $dd
    cp b
    db $76
    add h
    inc sp
    ld d, l
    ld d, [hl]
    ld a, c
    adc d
    sbc c
    add [hl]
    ld d, l
    ld b, h
    inc [hl]
    ld b, l
    ld d, a
    adc b
    adc b
    ld a, b
    and a
    ld h, a
    ld a, b
    xor e
    cp l
    adc $dd
    db $db
    sbc b
    ld h, l
    ld b, h
    dec [hl]
    ld b, l
    ld [hl], a
    adc c
    sbc c
    jp hl


    db $76
    ld d, l
    inc [hl]
    inc [hl]
    ld d, l
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld h, a
    ld l, b
    ld a, c
    sbc h
    call z, Call_017_7ced
    res 1, b
    ld h, l
    ld d, h
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc b
    sbc b
    ld [hl], l
    ld h, h
    ld b, e
    dec [hl]
    ld d, l
    ld h, a
    add [hl]
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld l, b
    adc c
    call z, $eece
    db $dd
    jp z, Jump_017_6587

    ld d, h
    ld b, [hl]
    sub [hl]
    ld l, b
    sbc b
    and a
    sbc b
    ld h, l
    inc [hl]
    inc [hl]
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    db $76
    ld a, c
    ld c, d
    call z, $edde
    db $dd
    cp d
    ld [hl], a
    ld h, h
    ld d, h
    ld d, l
    ld d, a
    ld l, b
    adc b
    adc b
    sbc b
    ld h, l
    sub h
    inc sp
    ld b, h
    ld b, h
    ld h, l
    ld h, [hl]
    db $76
    ld l, b
    ld [hl], a
    adc c
    xor d
    call $efde
    db $dd
    jp c, Jump_017_7677

    ld b, l
    ld b, [hl]
    ld d, [hl]
    ld e, b
    adc b
    sbc c
    sub a
    ld [hl], l
    ld b, l
    inc sp
    inc h
    inc [hl]
    ld d, l
    ld h, [hl]
    sub a
    add a
    ld l, b
    sbc b
    xor e
    call $efde
    db $ed
    jp z, Jump_017_6587

    ld b, h
    ld b, h
    ld d, [hl]
    ld h, a
    add sp, -$68
    sub [hl]
    ld h, l
    ld d, e
    ld [hl+], a
    inc hl
    inc [hl]
    ld h, l
    ld h, [hl]
    ld a, b
    ld a, b
    ld a, b
    adc d
    xor h
    call $fe3e
    db $ed
    jp z, Jump_017_6487

    ld b, e
    ld b, l
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sub a
    ld h, h
    inc [hl]
    ld [hl-], a
    ld b, d
    inc [hl]
    ld d, [hl]
    db $76
    adc b
    adc b
    ld a, b
    sbc d
    cp d
    db $dd
    sbc $fe
    xor $ba
    add a
    ld d, l
    sub e
    ld d, l
    ld h, l
    ld a, b
    adc c
    adc d
    add [hl]
    ld b, h
    inc sp
    ld hl, $4534
    ld h, [hl]
    add a
    adc b
    add a
    ld e, b
    sbc c
    cp h
    sbc $ef
    cp $dc
    xor b
    ld [hl], l
    ld b, e
    inc [hl]
    ld b, l
    ld h, a
    adc b
    sbc b
    adc c
    call nz, Call_000_3133
    ld [hl+], a
    ld b, l
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc c
    xor d
    db $dd
    rst $28
    rst $38
    db $fd
    ld a, c
    ld [hl], a
    ld b, h
    inc [hl]
    ld b, l
    ld d, a
    adc b
    xor c
    sbc b
    ld h, h
    ld b, e
    ld [hl+], a
    inc de
    dec [hl]
    ld d, [hl]
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    sbc d
    call z, $efef
    rst $38
    db $db
    sub a
    ld h, l
    ld b, h
    ld b, l
    ld h, [hl]
    ld a, b
    ld hl, sp-$58
    ld [hl], l
    ld b, e
    ld [hl+], a
    ld hl, $6523
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc d
    cp l
    sbc $5f
    rst $38
    db $ec
    xor b
    ld [hl], l
    ld b, h
    ld b, l
    ld d, [hl]
    ld a, b
    sbc b
    xor b
    db $76
    ld b, e
    ld [hl-], a
    ld hl, $6643
    ld [hl], a
    add a
    sub a
    add a
    ld h, a
    adc c
    cp h
    sbc $ef
    rst $28
    db $ec
    xor b
    ld h, h
    ld b, h
    ld d, h
    or [hl]
    ld a, c
    sbc c
    adc b
    ld h, h
    inc sp
    ld [hl+], a
    ld de, $6733
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld a, b
    adc e
    dec c
    rst $18
    rst $28
    cp $eb
    sub [hl]
    ld h, h
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    add a
    ld b, h
    ld [hl+], a
    ld hl, $3543
    ld l, b
    adc c
    adc c
    ld [hl], a
    add a
    adc b
    xor d
    db $dd
    rst $28
    rst $38
    db $fd
    ret


    db $76
    ld b, l
    add l
    ld h, a
    ld a, c
    sbc b

Call_017_6ab4:
    xor b
    ld [hl], l
    ld [hl-], a
    ld hl, $3410
    ld h, a
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    ld a, [hl+]
    cp h
    sbc $ef
    cp $db
    add a
    ld d, l
    ld b, h
    ld h, [hl]
    ld [hl], a
    sbc c
    sbc d
    ld [hl], a
    ld b, e
    ld hl, $1340
    scf
    ld a, c
    adc c
    adc c
    add a
    ld [hl], a
    adc b
    sbc h
    cp [hl]
    rst $28
    rst $38
    db $db
    xor b
    ld d, h
    ld h, h
    ld d, l
    ld a, b
    adc d
    sbc c
    and a
    ld h, h
    ld sp, $0221
    dec [hl]
    ld [hl], a
    sbc c
    adc c
    sbc b
    ld [hl], a
    add hl, hl
    adc d
    call z, $fede
    db $fc
    cp c
    ld d, h
    ld b, e
    ld b, l
    ld e, b
    adc c
    sbc d
    cp b
    add l
    ld b, e
    ld sp, $1511
    ld l, b
    adc c
    sbc c
    adc c
    ld [hl], a
    ld l, b
    adc c
    cp h
    sbc $ef
    xor $b8
    ld h, l
    ld [hl], d
    inc [hl]
    ld d, [hl]
    adc b
    xor e
    cp d
    db $76
    ld d, e
    ld [hl+], a
    ld de, $5824
    sbc c
    sbc d
    adc b
    add a
    ld [hl], $99
    cp h
    sbc $ff
    cp $b9
    ld [hl], h
    ld [hl+], a
    inc hl
    ld d, [hl]
    ld a, c
    sbc e
    xor d
    add [hl]
    ld b, h
    ld hl, $2411
    ld l, b
    sbc d
    xor c
    sbc b
    add [hl]
    ld h, a
    adc d
    cp h
    xor $ff
    cp $b9
    ld d, h
    ld h, c
    inc de
    ld d, [hl]
    ld l, b
    sbc d
    cp d
    add l
    ld d, e
    ld sp, $2411
    ld l, c
    xor e
    sbc d
    adc b
    db $76
    ld d, $8a
    call z, $ffde
    cp $b8
    ld h, e
    ld hl, $4523
    add a
    xor d
    cp b
    ld [hl], h
    ld [hl-], a
    ld hl, $2601
    ld l, d
    xor e
    sbc d
    sbc c
    db $76
    ld h, [hl]
    adc c
    call z, $ffde
    cp $b9
    ld h, h
    ld h, d
    inc hl
    ld b, l
    ld a, b
    adc d
    xor c
    ld [hl], l
    ld [hl-], a
    stop
    inc d
    ld l, c
    sbc e
    cp d
    cp b
    adc b
    rla
    sbc c
    cp h
    sbc $ff
    rst $38
    ret


    ld h, h
    ld [hl-], a
    inc de
    ld b, [hl]
    ld a, b
    adc d
    cp b
    ld [hl], l
    ld b, d
    jr nc, jr_017_6b92

jr_017_6b92:
    inc de
    ld e, c
    xor e
    cp d
    xor c
    sub a
    ld a, b
    adc d
    cp h
    sbc $ff
    rst $38
    jp c, Jump_017_7184

    inc hl
    ld b, l
    ld [hl], a
    adc d
    xor d
    ld [hl], l
    ld b, e
    stop
    inc de
    ld b, a
    sbc d
    cp d
    cp c
    sbc c
    jr z, @-$74

    xor l
    db $dd
    rst $38
    rst $38
    call c, Call_017_4386
    inc de
    inc sp
    ld h, [hl]
    adc c
    sbc d
    sub [hl]
    ld h, e
    ld h, c
    jr nz, jr_017_6bd4

    ld b, l
    adc c
    xor d
    sbc d
    sbc c
    ld a, b
    ld a, c
    xor d
    db $dd
    rst $18
    rst $38
    db $fc
    and a
    sub e
    ld sp, $4633

jr_017_6bd4:
    ld a, b
    xor c
    sbc b
    ld h, h
    ld b, c
    jr nz, jr_017_6bdd

    dec h
    ld l, d

jr_017_6bdd:
    sbc e
    xor c
    xor b
    ld b, a
    ld [hl], a
    sbc c
    cp l
    rst $18
    rst $38
    db $fd
    ret


    ld [hl], l
    ld [hl+], a
    inc hl
    ld b, h
    ld h, a
    sbc d
    sbc d
    db $76
    add e
    ld [hl+], a
    nop
    ld [hl-], a
    ld h, a
    xor c
    cp c
    cp c
    sub a
    ld [hl], a
    ld a, c
    xor e
    adc $ef
    rst $38
    call c, Call_017_5397
    ld [hl+], a
    ld b, e
    ld d, [hl]
    adc b
    sbc c
    or a
    ld h, h
    ld b, d
    jr nz, jr_017_6c1e

    scf
    ld l, d
    sbc d
    sbc d
    adc b
    ld [hl], a
    ld [hl], a
    sbc d
    cp h
    sbc $ff
    db $fd
    ret c

    ld [hl], h
    ld b, d
    inc sp
    ld b, l
    ld d, a

jr_017_6c1e:
    sbc c
    sbc d
    rst $20
    ld d, e
    ld [hl+], a
    jr nz, jr_017_6c48

    ld c, b
    ld a, d
    sbc c
    sbc c
    adc b
    db $76
    adc b
    sbc d
    call $ffef
    sbc h

Jump_017_6c31:
    xor b
    ld d, l
    inc sp
    inc hl
    ld b, [hl]
    ld h, a
    adc d
    sbc c
    add [hl]
    ld d, h
    inc hl
    ld hl, $6743
    adc c
    adc d
    adc d
    adc b
    ld a, b
    ld l, b
    sbc d
    cp h
    rst $18

jr_017_6c48:
    xor $dc
    and a
    ld h, h
    ld d, e
    inc h
    ld b, l
    ld [hl], a

Call_017_6c50:
    reti


    xor b
    and a
    ld h, h
    ld b, d
    ld [hl-], a
    inc h
    ld b, a
    ld l, b
    adc d
    sbc c
    sbc b
    add a
    db $76
    sbc c
    xor e
    ld c, h
    db $ed
    db $ed
    cp c
    add [hl]
    ld b, l
    inc sp
    dec [hl]
    ld h, l
    add a
    sbc b
    sbc b
    sub [hl]
    ld h, l
    ld b, e
    inc [hl]
    inc [hl]
    ld e, b
    ld l, c
    adc b
    sbc b
    sub a
    adc b
    adc b
    adc d
    xor e
    cp h
    call $a8cb
    add [hl]
    ld d, h
    add e
    ld b, h
    ld d, [hl]
    ld a, b
    sbc c
    sbc d
    sub a
    ld [hl], l
    ld b, l
    inc [hl]
    dec [hl]
    ld d, l
    ld l, b
    adc c
    sbc c
    adc c
    sbc b
    add a
    adc d
    xor d
    cp e
    set 1, e
    cp c
    ld [hl], a
    ld d, l
    inc sp
    ld b, h
    ld d, l
    ld l, b
    sbc c
    xor d
    ret


    ld h, a
    ld d, h
    ld b, d
    ld b, e
    ld b, l
    ld a, b
    adc b
    sbc b
    adc b
    ld h, a
    ld h, a
    ld [hl], a
    sbc c
    cp h
    call $cb5c
    sub a
    ld h, l
    ld d, e
    ld b, e
    ld d, l
    ld h, [hl]
    sbc b
    xor c
    sbc c
    ld [hl], a
    ld h, h
    dec [hl]
    inc [hl]
    ld b, l
    ld h, [hl]
    adc b
    ld a, b
    add a
    add [hl]
    ld h, a
    ld [hl], a
    adc c
    xor e
    call z, $cbdd
    cp d
    sbc b
    db $76
    ld d, l
    add l
    ld d, l
    ld h, [hl]
    adc b
    sub a
    adc b
    sbc b
    ld h, [hl]
    ld b, [hl]
    dec [hl]
    dec [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    sub a
    adc b
    adc d
    sbc h
    cp h
    call z, $cbdd
    xor b
    sub a
    ld h, [hl]
    ld b, l
    ld h, l
    ld d, l
    ld [hl], a
    ld a, b
    reti


    sbc c
    add a
    ld d, [hl]
    ld b, h
    ld b, e
    inc [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    add a
    ld a, b
    add a
    sbc c
    xor d
    cp h
    ld c, l
    db $dd
    db $dd
    cp d
    xor b
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld [hl], a
    ld a, b
    adc c
    sbc b
    db $76
    ld d, l
    sub e
    ld b, e
    ld b, e
    ld b, l
    ld h, a
    ld a, b
    sbc c
    sbc c
    xor c
    xor d
    xor d
    cp h
    call z, $cccc
    jp z, $9679

    ld h, l
    ld h, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    add a
    ld h, a
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld b, a
    ld a, c
    sbc c
    sbc b
    sbc d
    sbc c
    xor d
    xor d
    xor e
    call z, $cbbc
    xor d
    adc b
    db $76
    ld h, l
    sub h
    ld b, h
    inc [hl]
    ld b, l
    ld d, l
    ld l, b
    ld a, b
    sbc d
    sbc d
    ld a, b
    ld a, c
    ld d, a

jr_017_6d4c:
    ld [hl], a
    ld h, a
    adc b
    adc c
    ld c, d
    adc c
    adc c
    adc c
    sbc c
    sbc d
    cp e
    cp h
    cp e
    cp d
    sbc c
    add a
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    add l
    ld d, l
    ld h, a
    ld a, b
    adc c
    sbc h
    xor e
    cp c
    sbc b
    add a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    ld d, a
    sbc b
    adc b
    sbc c
    sbc e
    cp e
    res 7, h
    cp d
    sbc c
    add a
    db $76
    ld d, l
    ld d, l
    ld b, l
    ld d, [hl]
    add [hl]
    ld h, a
    ld [hl], a
    sbc c
    xor c
    cp d
    xor d
    sbc b
    add [hl]
    ld h, [hl]
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld b, a
    adc c
    sbc d
    xor e
    call z, $cccd
    call z, $a8cb
    sub a
    ld [hl], l
    ld d, h
    ld b, e
    inc [hl]
    inc sp
    add l
    ld b, [hl]
    ld h, a
    adc c
    xor c
    xor e
    xor c
    sub [hl]
    db $76
    ld d, [hl]
    ld d, l
    ld h, l
    ld [hl], a
    db $76
    adc b
    adc b
    jr c, jr_017_6d4c

    xor e
    call z, $cdcc
    res 7, e
    xor c
    add a
    db $76
    ld d, l
    ld b, h
    inc sp
    inc sp
    inc hl
    ld h, e
    ld b, l
    ld h, a
    ld a, b
    sbc d
    xor e
    cp h
    call z, $88aa
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld h, $68
    adc b
    xor d
    cp h
    call z, $ccdc
    cp e
    xor c
    sbc b
    add [hl]
    ld h, h
    ld d, e
    inc sp
    inc hl
    ld [hl-], a
    inc sp
    ld d, h
    ld [hl], a
    ld a, c
    xor d
    xor d
    xor e
    cp e
    cp d
    jp z, $86a8

    ld d, h
    ld [hl-], a
    inc sp
    inc hl
    inc [hl]
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    set 1, h
    call $dcdc
    cp e
    xor c
    db $76
    ld d, h
    inc sp
    ld b, d
    ld hl, $2332
    ld b, l
    ld d, a
    ld a, b
    sbc c
    sbc e
    xor h
    cp h
    cp e
    jp z, $87aa

    ld h, l
    ld d, l
    inc sp
    ld b, h
    ld b, e
    ld d, l
    ld d, [hl]
    ld l, b
    adc c
    xor e
    cp h
    call $ddcd
    res 7, d
    adc b
    db $76
    ld b, e
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc hl
    inc [hl]
    ld h, [hl]
    adc c
    xor h
    cp l
    call z, $aacb
    xor c
    ret z

    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld b, h
    inc sp
    inc hl
    ld [de], a
    inc h
    ld b, [hl]
    adc c
    cp e
    sbc $de
    call c, $9ccd
    cp e
    cp e
    sub a
    ld [hl], l
    ld b, h
    ld [hl-], a
    ld [de], a
    inc hl
    inc hl
    ld d, l
    ld d, l
    ld [hl], a
    adc b
    sbc c
    xor d
    ld l, d
    xor c
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    ld h, a
    ld [hl], a
    ld a, c
    sbc c
    sbc d
    sbc d
    sbc c
    sbc c
    adc b
    sbc c
    sbc c
    ld a, c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    db $76
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, a
    ld h, a
    add a
    ld [hl], a
    sbc b
    add a
    adc b
    adc b
    add a
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    ld e, b
    sbc b
    adc c
    sbc d
    sbc c
    xor d
    xor b
    sbc b
    ld h, a
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld b, h
    add l
    ld d, a
    ld l, b
    adc b
    xor c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    adc b
    adc c
    adc c
    sbc d
    sbc d
    xor d
    adc b
    add [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld l, b
    ld [hl], a
    db $76
    ld h, l
    ld [hl], l
    ld h, a
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    sbc c
    ld a, b
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    adc b
    adc b
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld a, b
    add a
    add a
    ld a, c
    adc c
    sbc c
    xor d
    xor c
    sbc c
    adc c
    ld a, b
    adc c
    adc c
    adc b
    ld [hl], a
    sub a
    ld h, a
    ld a, b
    adc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    add [hl]
    add [hl]
    ld [hl], a
    ld l, b
    db $76
    add a
    adc b
    adc c
    ld a, c
    xor c
    adc c
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, a
    ld l, b
    ld a, b
    adc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld a, c
    adc b
    adc c
    adc c
    sbc c
    adc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc b
    adc b
    sbc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    adc b
    sbc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    db $76
    ld a, d
    sbc c
    sbc b
    ld [hl], h
    ld d, h
    ld b, [hl]
    adc d
    call z, $86c9
    ld h, h
    ld d, a
    sbc b
    xor d
    add l
    ld h, a
    ld a, b
    xor d
    adc b
    add [hl]
    ld b, [hl]
    ld h, a
    sbc c
    adc b
    db $76
    ld l, c
    xor c
    sbc c
    ld [hl], l
    ld [hl-], a
    inc hl
    sbc c
    call z, $a6fc
    ld h, h
    ld b, [hl]
    adc c
    cp d
    sub [hl]
    ld h, [hl]
    ld h, a
    xor d
    xor c
    db $76
    ld b, h
    ld e, b
    adc d
    sbc c
    db $76
    ld c, b
    cp c
    xor d
    sub [hl]
    ld b, d
    ld bc, $ac47
    db $ec
    or a
    ld h, h
    ld b, e
    ld a, c
    ld l, d
    xor b
    ld b, [hl]
    ld [hl], a
    sbc e
    jp c, Jump_017_5387

    ld d, l
    adc c
    cp c
    sub a
    ld h, l
    adc e
    xor d
    and a
    ld h, c
    ld de, $9b14
    sbc $da
    db $76
    ld b, h
    ld d, a
    sbc b
    xor c
    ld d, h
    ld h, a
    ld a, d
    cp e
    and [hl]
    ld d, h
    inc [hl]
    ld h, a
    xor d
    sbc c
    ld [hl], l
    ld a, d
    cp d
    xor c
    ld [hl], l
    ld hl, $5903
    cp l
    db $ec
    sub [hl]
    and h
    dec h
    adc b
    adc d
    add l
    ld b, a
    ld [hl], a
    xor h
    ret z

    db $76
    ld b, e
    ld d, a
    xor d
    cp c
    sub a
    ld d, [hl]
    adc e
    xor d
    sub [hl]
    ld b, c
    ld bc, $ac36
    db $dd
    cp b
    ld h, l
    ld b, h
    ld l, c
    sbc d
    sbc b
    ld b, l
    ld [hl], a
    db $db
    jp z, Jump_017_5387

    dec [hl]
    adc c
    xor d
    sbc b
    ld [hl], l
    ld a, c
    cp d
    cp c
    ld [hl], l
    ld bc, $6a13
    xor [hl]
    call z, Call_017_4386
    ld b, [hl]
    sbc c
    cp c
    add h
    ld d, [hl]
    ld a, b
    xor l
    or a
    ld [hl], h
    inc sp
    ld h, a
    xor e
    sbc d
    add a
    ld d, [hl]
    xor e
    jp z, Jump_017_4197

    nop
    ld [hl], $ac
    db $ed
    cp b
    ld h, h
    inc [hl]
    ld a, c
    xor d
    rla
    ld d, h
    ld h, a
    sbc d
    res 0, [hl]
    ld d, e
    dec [hl]
    ld a, d
    xor e
    xor b
    ld h, l
    ld l, e
    cp e
    cp b
    ld [hl], h
    jr nc, jr_017_7026

    ld l, d
    sbc $cb
    add l
    ld [hl-], a
    ld b, [hl]
    sbc d
    sbc b
    ld [hl], h
    ld [hl], $78
    cp h
    cp b
    ld h, l
    inc sp
    ld l, b
    xor d
    jp z, Jump_017_5795

jr_017_7026:
    xor e
    cp e
    adc b
    jr nc, @+$03

    ld [hl], $ad
    db $dd
    xor c
    ld b, h
    call nc, $bb7a
    sbc b
    ld d, h
    ld l, b
    adc d
    res 0, l
    ld b, e
    dec [hl]
    adc d
    cp e
    xor b
    ld h, l
    ld e, d
    xor d
    ret


    add h
    db $10
    ld [bc], a
    ld c, d
    call $95ca
    ld b, e
    ld b, a
    sbc e
    xor d
    sub a
    ld b, a
    ld a, c
    call c, Call_017_64c9
    inc sp
    ld c, b
    sbc e
    jp z, Jump_017_5576

    adc h
    cp e
    sbc b
    ld d, c
    ld bc, $9c24
    xor h
    cp d
    ld d, h
    inc [hl]
    ld l, c
    xor c
    sbc b
    ld h, h
    ld e, b
    sbc d
    cp l
    sub [hl]
    ld b, h
    dec [hl]
    ld a, d
    res 1, c
    ld h, h
    ld h, a
    res 7, d
    ld [hl], l
    jr nz, jr_017_7079

    ld c, b

jr_017_7079:
    cp l
    res 2, [hl]
    ld b, e
    ld b, [hl]
    sbc e
    xor d
    ld b, $46
    adc d
    xor h
    jp z, $3464

    ld b, a
    sbc e
    cp d
    sub [hl]
    ld d, [hl]
    ld a, h
    cp e
    sub a
    ld d, d
    ld b, b
    inc [hl]
    sbc h
    sbc $b9
    ld h, e
    inc [hl]
    ld l, b
    cp c
    xor c
    ld [hl], h
    ld e, b
    xor c
    call z, Call_017_4497
    ld b, l
    adc d
    cp h
    xor c
    ld [hl], l
    ld e, c
    cp e
    cp b
    ld [hl], l
    jr nz, jr_017_70be

    ld e, b
    db $dd
    jp z, Jump_000_3386

    and a
    sbc h
    xor e
    sbc b
    ld d, a
    sbc c
    xor h
    cp b
    ld h, h
    ld b, h
    ld b, a
    xor h
    cp d
    add a

jr_017_70be:
    ld d, h
    sbc h
    jp z, Jump_017_5298

    ld [bc], a
    ld [hl], $8d
    db $ec
    xor b
    ld h, d
    dec [hl]
    ld l, c
    cp d
    cp b
    ld h, l
    ld l, b
    xor d
    cp h
    sub [hl]
    ld d, h
    ld b, [hl]
    ld a, e
    cp e
    xor c
    ld h, h
    ld e, c
    cp d
    cp c
    add h
    db $10
    inc hl
    ld e, d
    call $849a
    inc [hl]
    ld h, a
    cp e
    cp d
    add [hl]
    ld b, [hl]
    sbc d
    cp h
    ret z

    ld h, l
    inc [hl]
    ld e, b
    xor e
    xor d
    ld d, [hl]
    ld d, l
    cp e
    cp e
    sbc b
    ld d, b
    ld [bc], a
    ld b, [hl]
    xor l
    call c, $44b8
    ld [hl], $7a
    jp z, $25a9

    ld a, c
    xor e
    db $db
    add [hl]
    inc [hl]
    ld d, l
    adc e
    xor e
    sbc b
    ld h, l
    ld a, h
    res 7, c
    ld [hl], e
    nop
    ld [hl], l
    ld a, h
    db $dd
    ret


    ld [hl], e
    inc [hl]
    ld l, b
    cp d
    xor c
    ld [hl], l
    ld d, a
    xor d
    cp h
    and a
    ld b, e
    ld d, l
    xor d
    call z, Call_017_76ba
    ld e, c
    jp z, $95c9

    jr nz, jr_017_713d

    ld e, d
    xor $eb
    sub l
    ld b, e
    ld d, [hl]
    xor h
    cp d
    add a
    ld d, a
    adc d
    call z, Call_017_53b8
    inc sp
    ld e, b
    cp h
    cp e
    add [hl]

jr_017_713d:
    ld d, a
    cp e
    xor d
    ld [hl], a
    ld hl, $6812
    rst $08
    db $eb
    and a
    ld b, d
    ld [hl], $8a
    res 3, b
    ld [hl], l
    sbc c
    xor e
    jp z, $3444

    ld d, [hl]
    xor e
    cp e
    and a
    ld d, l
    xor d
    sbc c
    sub a
    ld b, c
    ld [de], a
    scf
    cp [hl]
    db $ec
    xor c
    ld [hl], e
    dec [hl]
    ld l, c
    cp e
    cp b
    ld [hl], l
    ld a, b
    sbc d
    cp e
    sub l
    ld b, e
    ld b, l
    sbc d
    res 7, c
    ld h, l
    sbc e
    sbc d
    adc b
    ld d, d
    ld [de], a
    ld b, [hl]
    sbc l
    db $ed
    cp c
    ld h, h
    inc sp
    ld l, b
    cp e
    xor c
    add l
    ld h, a
    reti


    cp e
    sub a
    ld d, e

Jump_017_7184:
    ld b, l
    ld a, d
    cp e
    xor c
    add [hl]

Call_017_7189:
    ld a, e
    sbc c
    sbc b
    ld h, e
    ld [de], a
    dec [hl]
    ld a, h
    xor l
    jp z, Jump_000_3473

    ld d, [hl]
    sbc e
    cp c
    add [hl]
    ld l, b
    adc c
    cp d
    sub a
    ld d, h
    ld b, l
    ld l, c
    xor e
    sbc c
    add [hl]
    ld l, d
    xor c
    sbc b
    ld h, h
    ld bc, $6b34
    db $dd
    res 2, l
    ld b, h
    ld b, l
    sbc d
    xor d
    rla
    ld d, [hl]
    adc b
    adc d
    xor b
    ld h, h
    ld b, h
    ld e, b
    xor d
    xor d
    sbc b
    ld l, b
    cp c
    xor b
    add l
    ld hl, $5844
    cp l
    res 2, [hl]
    ld d, d
    ld b, [hl]
    ld a, b
    xor d
    sbc b
    ld h, l
    adc b
    adc c
    xor c
    ld [hl], l
    ld b, h
    ld h, a
    adc d
    xor d
    add a
    ld [hl], a
    xor e
    sbc c
    ld [hl], a
    ld sp, $5713
    xor l
    db $db
    sbc c
    ld d, h
    dec [hl]
    adc b
    xor c
    sbc b
    ld [hl], l
    ld h, a
    adc c
    sbc c
    add l
    inc [hl]
    ld d, l
    ld a, c
    xor d
    xor b
    add [hl]
    ld a, h
    xor c
    sub a
    ld d, d
    ld bc, $7c45
    call z, Call_017_74a9
    inc [hl]
    ld d, [hl]
    sbc c
    sbc d
    ld [hl], a
    ld e, b
    xor c
    sbc d
    db $76
    ld d, h
    ld d, h
    ld l, b
    sbc c
    sbc b
    ld [hl], a
    ld l, c
    cp c
    sub a
    ld [hl], e
    ld bc, $6a25
    call c, Call_017_66c9
    inc sp
    ld d, [hl]
    adc c
    sbc c
    db $76
    ld d, [hl]
    adc b
    sbc c
    sbc b
    ld b, h
    ld d, h
    ld h, a
    xor e
    xor d
    adc b
    ld [hl], a
    jp z, $8698

    jr nc, @+$05

    ld d, a
    cp h
    jp z, Jump_000_3387

    dec [hl]
    ld a, c
    xor c
    adc b
    ld h, [hl]
    adc c
    sbc c
    xor b
    add l
    ld d, h
    ld d, [hl]
    adc c
    xor d
    adc b
    ld h, a
    ld a, h
    cp d
    add a
    ld d, e
    ld bc, $ac55
    call c, $6499
    inc sp
    ld h, a
    sbc d
    sbc b
    add [hl]
    ld h, [hl]
    sbc c
    xor c
    sub a
    ld b, h
    ld b, [hl]
    ld l, b
    xor d
    xor b
    add [hl]
    ld h, a
    cp e
    sbc c
    add [hl]
    db $10
    inc hl
    ld e, c
    cp l
    jp z, $4496

    ld d, l
    ld a, c
    adc c
    sub a
    db $76
    ld a, b
    sbc d
    xor c
    ld [hl], l
    ld d, l
    ld d, [hl]
    adc d
    cp d
    adc b
    ld [hl], l
    ld a, d
    cp e
    and a
    ld h, e
    db $10
    inc h
    ld a, c
    db $dd
    cp c
    ld [hl], l
    inc [hl]
    ld h, a
    sbc c
    sbc b
    sub a
    ld [hl], a
    adc e
    sbc d
    xor b
    ld h, l
    ld b, l
    ld h, a
    sbc d
    xor d
    ld a, b
    ld h, a
    sbc l
    res 3, b
    ld h, e
    nop
    dec [hl]
    adc e
    db $eb
    xor c
    ld h, h
    inc [hl]
    ld l, b
    sbc c
    ld a, c
    ld [hl], a
    ld a, b
    cp e
    xor d
    sbc b
    ld d, h
    ld d, [hl]
    ld a, b
    xor d
    sbc c
    ld [hl], a
    ld a, b
    adc h
    ld a, [$6197]
    nop
    ld b, l
    ld a, e
    db $fd
    xor c
    ld [hl], h
    ld b, h
    ld l, b
    adc d
    adc b
    sbc b
    jr @-$53

    xor c
    adc b
    ld d, h
    ld h, [hl]
    ld a, c
    xor d
    xor c
    ld [hl], a
    ld h, a
    adc d
    sbc $a9
    ld [hl], l
    jr nz, jr_017_7334

    ld d, a
    cp a
    jp z, Jump_017_5598

    ld e, b
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    adc c
    cp e
    adc d
    db $76
    ld h, [hl]
    ld a, b
    adc d
    cp c
    adc b
    ld a, b
    ld l, b
    sbc e
    db $eb
    adc c
    ld h, h
    db $10
    inc h
    ld e, b
    call z, $99bb
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld a, b
    sbc d
    cp c
    xor c
    db $76
    ld h, a
    ld [hl], a
    adc c
    adc c
    adc b
    ld [hl], a
    ld l, b
    sbc d
    db $eb
    adc b
    ld [hl], h
    db $10
    inc [hl]
    ld e, c
    db $dd
    cp h
    xor b
    db $76
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld c, c
    xor e
    xor d
    xor b
    ld [hl], l
    ld h, [hl]
    add a
    xor d
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    adc c
    call Call_017_6598
    ld [hl], b
    inc h
    ld l, b
    sbc l
    call c, $87aa
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    sbc b
    sbc b
    sbc b
    ld a, b
    add a
    ret z

    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc d
    call c, Call_017_7598
    nop
    inc de
    ld l, c
    adc $8d
    and a
    ld h, [hl]
    ld h, l

jr_017_7334:
    ld h, a
    db $76
    add a
    ld a, b
    sbc e
    xor e
    xor c
    add l
    ld h, [hl]
    ld d, [hl]
    adc c
    sbc c
    ld b, [hl]
    ld [hl], l
    ld d, [hl]
    adc b
    xor c
    cp l
    and a
    db $76
    ld sp, $5614
    sbc e
    db $db
    jp z, Jump_017_6497

    add l
    ld d, [hl]
    ld l, b
    sbc c
    sbc h
    cp c
    sbc b
    add [hl]
    ld h, [hl]
    ld h, a
    adc c
    sbc b
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    xor l
    or a
    add l
    jr nc, jr_017_737a

    ld b, [hl]
    sbc h
    res 7, c
    add [hl]
    ld h, l
    ld [hl], $67
    ld l, b
    adc c
    sbc e
    cp d
    adc c
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld a, c
    xor c
    xor c

jr_017_737a:
    add a
    ld h, [hl]
    ld d, [hl]
    add a
    adc b
    adc c
    xor l
    cp c
    add l
    ld b, c
    ld bc, $8c35
    adc $ca
    db $76
    ld d, e
    ld b, a
    ld a, b
    adc d
    sbc b
    adc d
    cp c
    adc c
    add [hl]
    ld d, h
    ld b, [hl]
    ld l, b
    xor e
    xor b
    db $76
    ld b, h
    ld h, a
    ld a, c
    adc c
    sub a
    ld h, a
    adc e
    adc b
    sub l
    ld b, b
    ld [bc], a
    ld b, a
    sbc h
    db $ed
    cp b
    ld h, h
    ld b, e
    ld h, a
    sbc d
    xor d
    sub [hl]
    ld [hl], a
    ld a, b
    or a
    db $76
    ld d, l
    ld l, b
    sbc c
    xor d
    add [hl]
    ld d, e
    inc sp
    ld l, b
    xor d
    cp d
    sub a
    ld h, [hl]
    ld a, b
    sbc h
    xor c
    db $76
    ld b, b
    inc d
    ld e, b
    xor e
    jp z, Jump_017_6596

    ld d, l
    adc b
    add a
    ld [hl], a
    ld h, l
    adc b
    xor e
    cp c
    add a
    ld d, l
    ld h, a
    ld a, c
    sbc b
    add [hl]
    ld h, [hl]
    ld h, a
    ld a, c
    sbc c
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    sbc e
    sub a
    db $76
    ld sp, $6724
    xor h
    xor e
    add a
    ld h, l
    ld d, l
    ld a, c
    adc b
    sbc b
    sub a
    sbc c
    ld a, c
    sub [hl]
    ld [hl], a
    ld d, [hl]
    ld l, b
    sbc d
    cp d
    add a
    ld b, l
    ld b, h
    ld h, a
    adc c
    sbc c
    add a
    ld [hl], l
    ld h, a
    sbc c
    sbc e
    ret


    ld [hl], a
    ld h, d
    inc de
    ld b, [hl]
    adc d
    cp e
    cp c
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld e, c
    sbc c
    xor b
    add [hl]
    ld h, h
    ld d, [hl]
    ld l, b
    sbc d
    sbc c
    db $76
    ld b, l
    ld d, [hl]
    ld a, b
    xor d
    xor c
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc c
    cp h
    rst $00
    ld [hl], l
    ld b, b
    inc hl

jr_017_7428:
    ld h, a
    sbc d
    xor e
    sub a
    ld [hl], a
    add [hl]
    ld l, b
    add a
    adc c
    ld [hl], a
    sbc c
    xor d
    sbc b
    db $76
    ld h, [hl]
    ld h, a
    sbc b
    xor c
    sub a
    ld h, [hl]
    ld d, a
    ld a, b
    sbc c
    adc b
    ld h, a
    ld h, a
    ld l, b
    ld a, c
    adc b
    xor e
    sub a
    db $76
    ld d, c
    inc hl
    ld b, [hl]
    sbc d
    cp l
    cp b
    adc b
    ld h, l
    adc c
    add a
    sbc b
    adc b
    adc b
    adc c
    sub a
    adc c
    ld [hl], l
    ld h, [hl]
    ld l, b
    sbc b
    sbc b
    db $76
    ld d, l
    ld [hl], a
    sbc d
    sbc b
    add [hl]
    ld [hl], l
    ld h, [hl]
    ld a, b
    xor c
    xor h
    and a
    db $76
    ld b, d
    dec h
    ld d, a
    adc d
    xor l
    cp b
    ld d, a
    ld [hl], l
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc b
    add [hl]
    adc b
    ld [hl], l
    ld [hl], a
    ld a, b
    adc c
    sbc b
    add a
    and [hl]
    ld [hl], a
    ld a, c
    sbc d
    xor c
    add a
    ld h, [hl]
    ld d, [hl]
    ld a, c
    adc d
    res 0, a
    ld d, h
    inc bc
    ld b, l
    ld a, c
    adc e
    cp c
    ld a, b
    ld [hl], a
    ld h, a
    sub a
    ld a, c
    add a

Jump_017_7498:
    sbc c
    adc c
    xor c
    ld a, b
    add a
    ld h, a
    ld a, b
    adc b
    jr z, jr_017_7428

    ld h, [hl]
    ld [hl], a
    add a
    adc c
    adc b
    adc b
    db $76

Call_017_74a9:
    ld [hl], a
    ld [hl], a
    adc b
    adc d
    cp d
    ld [hl], a
    ld h, l
    ld h, e
    ld d, [hl]
    adc d
    xor e
    jp z, $8887

    ld d, a
    sbc b
    ld l, b
    db $76
    ld [hl], a
    adc c
    sbc d
    sbc b
    add a
    or [hl]
    ld h, [hl]
    ld a, c
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld a, b
    sbc b
    xor c
    sub a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc d
    sbc c
    add a
    ld [hl], l
    inc hl
    ld b, h
    ld [hl], a
    xor d
    cp h
    sub a
    add a
    ld d, [hl]
    sub a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, d
    xor c
    sbc b
    ld [hl], a
    db $76
    ld a, b
    adc c
    adc b
    db $76
    ld h, a
    ld [hl], a
    adc c
    adc c
    ld a, b
    db $76
    ld h, a
    adc b
    adc b
    adc b
    sbc e
    sub a
    add [hl]
    ld d, d
    inc [hl]
    ld d, l
    xor c
    cp h
    cp d
    adc b
    add l
    ld a, c
    add a
    adc b
    ld h, a
    ld h, a
    adc c
    cp c
    xor b
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    adc b
    adc b
    add a
    add [hl]
    add a
    ld a, b
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    sbc d
    cp b
    add a
    ld [hl], h
    inc h
    ld [hl], $6a
    xor e
    res 1, b
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    adc c
    xor d
    sbc c
    and a
    db $76
    ld h, l
    ld l, b
    adc c
    sbc b
    sub a
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    xor e
    sbc b
    add a
    ld b, e
    ld b, h
    ld b, [hl]
    adc c
    xor e
    cp b
    adc c
    add [hl]
    ld a, c
    add a
    ld [hl], a
    add [hl]
    sbc b
    adc c
    cp c
    sbc c
    sub a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    db $76
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    xor b
    adc b
    and [hl]
    dec h
    ld b, h
    ld l, b
    sbc c
    cp e
    add a
    sbc c
    ld h, [hl]
    sbc b
    ld a, b
    add a
    ld l, b
    ld [hl], a
    sbc d
    sbc c
    adc d
    add a
    ld [hl], l
    ld h, [hl]
    ld [hl], a

Call_017_7575:
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc d
    and a
    db $76
    ld [hl], e
    ld b, h
    ld b, l
    ld a, c
    sbc e
    jp z, $a798

    ld l, b
    adc b
    ld a, b
    add [hl]
    add a
    ld a, b
    sbc c
    xor c
    xor b
    db $76
    ld h, l
    ld b, a

Call_017_7598:
    ld [hl], a
    ld a, c
    add [hl]
    ld [hl], a
    db $76
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    db $76
    sbc d
    add a
    add a
    ld d, l
    ld b, e
    ld b, [hl]
    adc b
    sbc e
    cp c
    sbc c
    add [hl]
    ld [hl], a
    add a
    add [hl]
    db $76
    ld [hl], a
    ld l, b
    sbc c
    sbc d
    xor b
    ld [hl], a
    ld h, l
    ld h, a
    ld d, a
    ld a, b
    ld a, b
    adc b
    cp c
    ld a, c
    adc b
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, b
    ld a, b
    ld a, c
    sbc b
    ld [hl], a
    ld h, l
    ld d, e
    ld d, l
    ld h, a
    ld a, c
    ld l, e
    sbc b
    xor b
    add [hl]
    add a
    db $76
    add [hl]
    ld h, a
    db $76
    adc c
    adc c
    sbc c
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    sub a
    add a
    ld [hl], l
    add l
    ld b, l
    ld h, a
    ld a, b
    xor d
    sbc d
    xor b
    add a
    add a
    ld [hl], a
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    adc b
    adc c
    xor d
    adc b
    add a
    ld h, [hl]
    ld d, l
    ld h, a
    ld h, a
    ld a, b
    add a
    adc b
    ld [hl], a
    db $76
    db $76
    db $76
    ld a, b
    db $76
    add a
    ld l, c
    ld a, b
    ld a, b
    ld h, l
    ld b, h
    ld b, l
    ld h, a
    sbc d
    cp d
    sbc c
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc d
    sbc c
    sbc b
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]

Jump_017_7629:
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld h, a
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    add a
    add a
    ld h, [hl]
    ld d, h
    ld h, [hl]
    ld l, b
    adc d
    sbc d
    xor c
    sub a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc c
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    add [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld a, c
    ld a, c
    sbc c
    adc b
    ld [hl], a
    ld d, [hl]
    ld a, c
    ld h, l
    ld h, l
    ld d, a
    add [hl]
    db $76
    ld h, a
    adc c
    db $76
    ld a, b
    xor c
    db $76
    ld a, c
    xor b
    ld [hl], a
    adc b
    adc b
    xor c

Jump_017_7677:
    sub a
    ld [hl], a
    sbc e
    add l
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld l, b
    ld h, a
    ld d, [hl]
    ld d, a
    ld [hl], l
    ld a, b
    cp d
    db $76
    add a

Jump_017_7687:
    xor d
    sbc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], l
    ld h, a
    ld [hl], h
    ld b, e
    ld [hl], a
    ld [hl], l
    ld d, [hl]
    ld h, a
    sbc c
    db $76
    sbc d

jr_017_7697:
    cp e
    sub a
    sbc d
    cp d
    xor d
    sbc b
    ld [hl], a
    adc b
    ld h, [hl]
    ld [hl], l
    dec [hl]
    ld d, a
    ld h, l
    ld b, l
    ld d, [hl]
    sub a
    ld a, b
    adc d
    xor c
    ld a, c
    cp h
    xor d
    sbc b
    xor e
    sub [hl]
    sub a
    ld h, l
    ld h, l
    ld b, l
    ld b, e
    ld b, [hl]
    ld d, h
    ld h, a
    ld a, b
    ld [hl], a

Call_017_76ba:
    cp l
    cp c
    sbc e
    call $8a86
    ld l, b
    ld d, [hl]
    ld d, a
    ld d, c
    daa
    add l
    ld b, e
    ld e, b
    sub a
    adc b
    sbc b
    sbc h
    jp c, $ab88

    and [hl]
    adc c
    xor b
    ld h, [hl]
    adc e
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    sbc c
    add a
    ld [hl], l
    ld h, [hl]
    ld a, c
    ld [hl], c
    rla
    adc b
    ld h, h
    ld b, a
    adc b
    cp c
    ld e, c
    res 3, d
    ld [hl], a
    xor c
    ld l, b
    add l
    ld b, [hl]
    ld h, [hl]
    ld [hl], l
    jr c, jr_017_7697

    ld h, l
    adc d
    db $dd
    sbc b
    ld a, e
    cp [hl]
    ret


    sbc b
    ld e, d
    jp c, $8735

    add e
    ld d, $94
    ld [hl], $56
    ld b, e
    ld l, d
    add a
    inc hl
    cp [hl]
    add [hl]
    adc b
    cp h
    xor c
    add l
    xor [hl]
    and [hl]
    ld h, l
    adc c
    ld d, h
    ld h, l
    ld h, a
    ld [hl], a
    ld h, a
    adc c
    cp d
    ld h, a
    adc $c9
    ld a, c
    ret


    ld [hl], a
    adc b
    ld [hl], a
    ld c, b
    add [hl]
    or l
    ld a, b
    ld h, e
    ld l, c
    adc c
    ld [hl], h
    ld [hl], a
    ld a, d
    add a
    ld d, l
    adc e
    and a
    ld d, [hl]
    rst $08
    ld [hl], l
    adc h
    sub a
    ld e, d
    push bc
    ld e, b
    ld h, [hl]
    ld [hl], h
    ld h, a
    inc sp
    adc e
    ld [hl], l
    ld b, [hl]
    cp h
    and [hl]
    ld a, d
    res 5, b
    ld a, d
    adc b
    sbc b
    ld h, a
    db $76
    adc c
    ld [hl], l
    ld h, a
    adc d
    ld [hl], l
    sbc d
    sbc b
    add [hl]
    ld a, d
    add l
    ld a, e
    sub l
    ld a, c
    sbc d
    ld h, e
    ld a, e
    and l
    daa
    jp z, $3b42

    push bc
    dec h
    ld a, d
    or h
    ld c, c
    cp c
    ld [hl], $8c
    and a
    cp [hl]
    and l
    xor e
    xor c
    add a
    sbc c
    add l
    sub a
    ld d, a
    or a
    ld d, [hl]
    ld a, b
    and [hl]

jr_017_7770:
    sub [hl]
    sbc e
    ld d, c
    inc a
    push bc
    ld h, $ba

Jump_017_7777:
    ld [hl], l
    ld a, e
    add $46
    xor l
    sub d
    ld c, c
    jp z, $bb43

    ld [hl], a
    ld [hl], a
    sbc b
    ld a, e
    or a
    ld a, d
    or a
    xor h
    db $76
    xor b
    sbc b
    ld b, h
    adc h
    ld [hl], d
    ld a, [hl+]
    xor b
    ld d, h
    ld l, h
    and h
    jr c, jr_017_7770

    ld d, h
    adc d
    ld a, b
    ld [hl], l
    sbc h
    ld h, h
    adc e
    or a
    ld c, b
    and [hl]
    ld l, b
    ld a, c
    ld h, h
    sla [hl]
    cp b
    add a
    ld b, a
    and l
    ld a, e
    ld h, l
    add a
    ld l, c
    sub a
    ld a, b
    sbc c
    add a
    adc c
    sub a
    ld c, b
    xor b
    sub [hl]
    ld e, d
    rst $00
    ld d, a
    adc d
    sub l
    ld a, d
    db $76
    adc c
    add h
    ld a, c
    sub l
    adc b
    ld a, b
    ld [hl], h
    ld l, c
    add h
    ld c, d
    add l
    db $76
    add a
    add [hl]
    ld [hl], a
    ld h, a
    ld a, d
    sub l
    ld l, c
    ld a, b
    add a
    ld a, b
    ret


    ld d, a
    xor d
    ld a, b
    ld h, a
    xor b
    adc b
    ld a, c
    sub a
    ld a, c
    add l
    ld a, b
    ld a, c
    add e
    ld l, c
    ld [hl], h
    ld e, c
    ld [hl], e
    ld l, c
    ld h, h
    sub a
    ld d, [hl]
    ld a, c
    add l
    ld l, c
    sbc c
    add l
    adc d
    db $76
    and [hl]
    ld a, c
    sub [hl]
    ld e, b
    xor b
    ld h, [hl]
    sbc b
    sbc b
    ld [hl], a
    xor c
    ld [hl], a
    ld a, d
    add a
    ld l, c
    sub a
    ld b, [hl]
    ld c, b
    ld b, h
    ld a, b
    ld h, h
    ld h, a
    sbc b
    dec [hl]
    xor c
    ld d, l
    ld a, b
    and a
    daa
    rst $00
    ld d, [hl]
    ld a, e
    add l
    cp b
    cp e
    ld h, h
    sbc d
    and a
    dec [hl]
    call c, Call_017_7b52
    sub h
    ld [hl], $aa
    ld [hl+], a
    sbc d
    sub a
    ld b, [hl]
    ld c, d
    ld d, [hl]
    adc e
    add h
    ld e, e
    sub l
    ld [hl], $99
    ld [hl], e
    ld e, b
    xor b
    ld d, h
    cp c
    ld b, a
    xor b
    sub [hl]
    adc c
    add $36
    adc h
    sub e
    ld c, e
    and l
    ld l, b
    db $76
    ld h, h
    sbc h
    ld b, h
    add l
    ld a, d
    ld d, e
    ld [hl], a
    ld e, b
    ld h, [hl]
    xor c
    ld e, b
    ret z

    ld a, c
    ld a, d
    or a
    ld e, b
    xor b
    ld [hl], l
    ld e, b
    sbc b
    ld d, [hl]
    adc c
    ld [hl], l
    ld l, e
    or h
    add hl, de
    add sp, $54
    ld a, d
    ld [hl], c
    ld l, e
    ld [hl], e
    db $76
    ld a, d
    ld [hl], e
    adc d
    sbc b
    ld h, l
    call $8a74
    sub a
    ld d, [hl]
    and a
    ld h, a
    adc c
    add [hl]
    ld l, d
    cp d
    adc b
    ld a, l
    sub $48
    cp e
    ld b, e
    ld l, c
    add h
    ld c, b
    and e
    jr z, jr_017_78ec

    sub [hl]
    add hl, sp
    xor b
    ld h, [hl]
    ld l, d
    add h
    adc c
    ld [hl], l
    ld a, b
    sbc c
    rst $00
    sbc c
    add a
    ld a, d
    cp c
    ld a, b
    adc b
    sub a

Jump_017_7888:
    ld a, c
    ld [hl], h
    ld [hl], a
    adc e
    ld h, e
    sbc d
    ld a, b
    ld h, [hl]
    ld e, e
    ld [hl], $c9
    ld h, a
    ld e, c
    add [hl]
    ld d, a
    ld a, c
    add l
    ld e, b
    adc c
    ld h, h
    adc e
    add a
    ld a, b
    sbc c
    ld h, [hl]
    adc c
    add l
    ld e, d
    xor b
    ld a, b
    adc h
    add l
    ld l, d
    reti


    ld e, c
    sbc c
    db $76
    ld e, c
    ld [hl], e
    ld l, c
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    sbc b
    adc d
    adc b
    sbc b
    adc b

Call_017_78ba:
    add a
    ld a, b
    ld l, c
    add a
    db $76
    sbc c
    and l
    adc b
    adc c
    sbc b
    add l
    ld l, c
    add a
    ld [hl], l
    ld l, c
    sub a
    ld h, a
    adc b
    ld h, a
    sbc b
    add a
    adc d
    db $76
    ld e, c
    and a
    ld h, l
    ld a, b
    db $76
    ld l, c
    db $76
    ld a, c
    adc b
    ld [hl], a
    xor d
    adc b
    adc b
    sbc c
    sub a
    ld e, b
    adc c
    ld [hl], l
    ld a, b
    ld [hl], l
    ld a, b
    db $76
    ld h, a
    sub a
    ld h, l
    ld l, c
    add a

jr_017_78ec:
    ld h, [hl]
    ld a, b
    db $76
    ld a, b
    sub a
    sbc c
    adc b
    ld a, c
    cp c
    ld a, b
    adc d
    sub [hl]
    adc c
    add a
    adc c
    adc c
    ld d, [hl]
    adc c
    adc b
    ld h, l
    ld l, d
    ld [hl], l

jr_017_7902:
    ld e, h
    or [hl]
    ld e, b
    sbc d
    ld h, [hl]
    sub a
    ld a, b
    ld h, l
    adc d
    ld d, [hl]
    ld l, c
    and [hl]
    ld b, [hl]
    xor b
    and [hl]
    sbc c
    ld h, [hl]
    adc b
    cp b
    ld b, a
    cp c
    sbc b
    ld a, d
    cp b
    sbc b
    adc e
    sub a
    ld h, a
    xor b
    ld d, a
    ld a, c
    ld b, h
    ld l, c

Call_017_7923:
    and [hl]
    ld d, a
    adc e
    add l
    ld l, e
    or [hl]
    ld a, b
    sbc e
    db $76
    sbc c
    add a
    db $76
    adc b
    or a
    ld a, b
    sbc b
    ld l, c
    add [hl]
    ld a, b
    ret z

    jr c, jr_017_7902

    sub l
    ld e, c
    cp b
    ld h, [hl]
    xor e
    sub a
    adc b
    ld a, c
    ld b, a
    sbc c
    add [hl]
    ld h, a
    rst $00
    ld b, l
    ld l, d
    add l
    ld e, b
    xor b
    ld h, [hl]
    sbc d
    add [hl]
    adc b
    jp z, $ab96

    or [hl]
    ld c, b
    xor b
    ld h, [hl]
    ld l, d
    add l
    ld l, c
    add h
    ld e, c
    xor b
    ld b, a
    cp d
    ld h, [hl]
    ld a, c
    db $76
    sub a
    adc d
    sub [hl]
    ld a, c
    sbc b
    db $76
    sbc c
    add [hl]
    ld a, b
    sub a
    ld [hl], l
    adc c
    ld [hl], a
    ld l, b
    xor b
    sbc b
    sbc d
    add a
    adc c
    and a
    ld l, c
    ret z

    ld c, b
    add a
    add l
    ld c, d
    add h
    ld a, b
    ld c, c
    add h
    ld l, b
    db $76
    ld d, a
    xor b
    ld h, [hl]
    ld a, c
    add l
    adc c
    sbc d
    ld [hl], a
    sbc d
    sub a
    adc b
    sbc b
    ld l, b
    sbc b
    ld [hl], a
    ld h, [hl]
    db $76
    ld a, c
    add [hl]
    ld e, b
    adc b
    add [hl]
    ld a, c
    sub a
    ld l, b
    ld a, d
    and [hl]
    ld l, b
    adc b
    ld b, [hl]
    ld a, b
    add [hl]
    ld d, a
    adc b
    ld d, l
    ld l, d
    add l
    ld a, b
    sbc d
    add a
    sbc b
    ld a, c
    xor b
    sbc b
    ld a, c
    sub a
    add a
    ld [hl], a
    ld d, a
    add a
    ld e, b
    ld l, b
    and h
    ld e, b
    add a
    sub [hl]
    ld b, a
    sbc b
    add a
    ld l, b
    add [hl]
    ld l, c
    sub a
    adc b
    add a
    add l
    ld l, b
    sbc b
    ld h, l
    adc b
    and a
    ld d, [hl]
    cp c
    ld e, b
    ld [hl], a
    add a
    adc e
    ld d, e
    sbc e
    ld a, c
    ld h, h
    xor c
    ld l, c
    add [hl]
    add a
    ld d, a
    add [hl]
    ld h, [hl]
    adc c
    ld [hl], l
    ld c, b
    sbc d
    ld [hl], h
    ld l, c
    adc b
    ld d, [hl]
    adc b
    add a
    adc c
    ld l, b
    adc c
    and [hl]
    db $76
    sbc c
    ld h, l
    ld l, b
    db $76
    ld h, a
    ld l, c
    ld h, l
    ld a, c
    db $76
    db $76
    ret z

    daa
    xor b
    ld [hl], a
    ld e, b
    ld [hl], l
    ld a, b
    ld a, b
    ld [hl], $98
    ld h, [hl]
    ld d, [hl]
    cp e
    ld h, l
    ld l, c
    cp d
    ld [hl], l
    ld [hl], a
    xor c
    ld [hl], l
    ld b, [hl]
    sbc d
    ld d, e
    ld l, b
    sbc c
    ld d, h
    ld l, c
    db $76
    ld e, b
    add l
    sbc c
    add [hl]
    add l

Jump_017_7a13:
    ld a, c
    db $76
    add a
    ld e, d
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    sub a
    ld d, a
    sbc b
    sub [hl]
    ld l, b
    adc b
    add a
    ld e, c
    sub [hl]
    xor c
    add [hl]
    ld a, c
    sub a
    ld b, h
    sbc e
    ld d, e
    ld c, b
    add [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    and a
    ld a, c
    ld h, [hl]
    sub a
    ld a, b
    add a
    sbc d
    db $76
    adc d
    sub [hl]
    sbc b
    adc d
    add [hl]
    add a
    db $76
    ld h, a
    sbc b
    ld b, a
    ld h, a
    sub [hl]
    ld h, a
    sub l
    adc d
    add a
    adc c
    add a
    ld h, a
    add a
    ld d, [hl]
    ld [hl], a
    ld d, l
    ld h, a
    add [hl]
    add a

Jump_017_7a54:
    ld e, c
    adc c
    sbc b
    ld a, b
    adc b
    adc b
    ld a, b
    sub a
    and [hl]
    sbc b
    ld h, a
    sbc b
    ld h, a
    ld a, b
    ld a, c
    ld d, [hl]
    ld [hl], l
    ld a, d
    ld h, h
    ld a, c
    ld a, b
    ld [hl], l
    ld a, c
    add a
    add a
    ld a, e
    xor b
    add [hl]
    adc d
    adc b
    ld [hl], l
    add a
    ld l, b
    db $76
    adc b
    ld l, b
    ld a, b
    ld a, d
    adc c
    and a
    ld l, b
    cp b
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    sub a
    db $76
    ld h, [hl]
    ld a, b
    db $76
    add a
    ld a, b
    adc c
    ld [hl], a
    adc c
    ld a, b
    ld a, c
    xor d
    xor b
    add a
    adc d
    sub [hl]
    ld h, a
    add a
    db $76
    ld h, [hl]
    add a
    ld h, a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    and a
    ld [hl], a
    ld a, c
    adc b
    adc c
    ld [hl], a
    add l
    sbc d
    db $76
    and a
    ld a, c
    add a
    sub [hl]
    ld a, c
    adc b
    sub [hl]
    adc c
    sbc d
    sub a
    sbc b
    adc e
    sbc c
    ld [hl], a

Call_017_7ab9:
    ld a, c
    add a
    db $76
    add a
    ld h, a
    add a
    add a
    sub [hl]
    ld a, b
    adc e
    add [hl]
    ld a, b
    adc c
    add a
    add a
    ld a, c
    add a
    add a
    ld a, c
    sub l
    adc b
    adc e
    sub l
    sbc d
    ld e, e
    and l
    sbc b
    ld e, d
    and [hl]
    sub [hl]
    ld l, c
    sub [hl]
    ld a, c
    ld a, b
    sbc c
    ld a, b
    add a
    sbc b
    ld h, [hl]
    sbc c
    add [hl]
    ld a, c
    adc b
    xor b
    ld l, b
    add a
    xor c
    ld h, a
    ld l, b
    sbc b
    ld a, b
    ld h, a
    adc c
    sub a
    adc c
    adc c
    ld a, b
    sbc d
    sub a
    and a
    ld l, d
    sub a
    add a
    adc b
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    sbc c
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add l
    adc d
    ld l, b
    ld [hl], a
    ld [hl], a
    ld l, b
    add [hl]
    ld a, b
    ld h, a
    sub [hl]
    ld l, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, c
    add a
    sub [hl]
    ld l, c
    ld h, a
    add [hl]
    ld h, a
    add a
    add [hl]
    db $76
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sub a
    adc b
    sub a
    sbc b
    db $76
    ld l, b
    db $76
    ld a, b
    ld b, l
    db $76
    ld a, c
    ld h, a
    add [hl]
    sbc d
    sbc b
    add [hl]
    ld a, c
    sbc c
    sub l
    ld e, b
    ld l, b
    and [hl]
    ld h, [hl]
    ld d, a
    sub [hl]
    sub [hl]
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc c
    adc b
    sub [hl]
    ld d, a
    adc d
    add a
    db $76
    ld e, c
    rst $00
    ld h, [hl]
    ld d, a

jr_017_7b4d:
    xor b
    sub [hl]
    ld d, l
    ld l, b
    sbc c

Call_017_7b52:
    ld [hl], a
    ld [hl], a
    adc e
    add [hl]
    ld h, [hl]
    add a
    adc b
    db $76
    ld d, a
    sbc b
    sbc b
    ld h, a
    sbc b
    xor d
    ld d, a
    add a
    jp z, Jump_017_7687

    add l
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld b, a
    xor d
    xor b
    ld l, d
    sbc e
    ret z

    ld h, [hl]
    ld [hl], a
    sbc c
    ld h, l
    ld e, b
    adc c
    and a
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    db $76
    ld l, d
    cp c
    ld a, b
    sbc b
    xor d
    db $76
    ld b, l
    cp c
    inc [hl]
    adc d
    sbc c
    cp c
    ld h, l
    ld l, d
    add l
    adc d

jr_017_7b8b:
    add a
    ld d, [hl]
    adc d
    xor e
    add [hl]
    add a
    cp d
    ld b, l
    ld h, l
    ld l, h
    cp b
    ld a, b
    adc d
    or a
    ld [hl], a
    ld b, l
    adc b
    sbc h
    sub h
    ld l, c
    cp [hl]
    or b
    jr c, jr_017_7b4d

    and [hl]
    inc [hl]
    ld l, h
    ld a, [$984a]
    cp c
    ld h, d
    inc d
    xor c
    ld a, c
    xor c
    ld [hl], a
    sbc h
    ret


    ld h, l
    ld [hl], a
    sub a
    ld b, l
    ld d, l
    xor h
    xor d
    cp c
    sbc c
    adc b
    add [hl]
    ld d, d
    jr z, jr_017_7b8b

    sbc b
    ld d, a
    cp a
    rst $30
    ld [de], a
    ld a, h
    ret z

    ld h, e
    ld [hl], $cf
    reti


    ld b, h
    adc c
    sub a
    inc h
    ld h, [hl]
    ld l, h
    ret z

    ld [hl], l
    ld a, h
    ld sp, hl
    ld l, b
    add a
    adc c
    ld [hl], e
    ld c, b
    adc d
    ld h, l
    adc b
    adc c
    cp c
    ld h, [hl]
    sbc b
    xor h
    ret c

    ld h, l
    ld d, a
    cp e
    ld h, h
    add h
    ld e, h
    ret z

    sbc b
    ld [hl], $9d
    ret c

    ld d, l
    ld d, [hl]
    ld c, d
    sub e
    ld l, e
    call c, Call_017_63c7
    ld c, d
    and [hl]
    sbc d
    ld d, h
    ld a, c
    sbc e
    sub a
    ld a, c
    adc l
    or [hl]
    push bc
    ld e, b
    add a
    ld l, b
    cp [hl]
    ret z

    ld h, l
    ld l, c
    ld [hl], l
    adc d
    ld d, e
    ld e, b
    xor c
    ret


    ld l, b
    cp l
    add a
    ld b, e
    ld h, $86
    ld h, [hl]
    sbc [hl]
    jp c, Jump_017_5865

    sbc b
    adc b
    xor c
    adc d
    ld h, e
    ld l, c
    sbc b
    ld a, d
    xor b
    ld a, c
    ld [hl], l
    ld h, l
    ld [hl], $df
    and [hl]
    ld d, h
    ld e, b
    call z, $8a65
    xor b
    ld b, c
    ld c, b
    inc a
    cp b
    sbc b
    sbc e
    ld h, h
    inc d
    adc b
    rst $18
    sub [hl]
    ld [hl], l
    ld a, c
    adc b
    ld h, h
    cp h
    cp e
    add d
    db $76
    sbc b
    ld d, a
    adc b
    sbc c
    sub a
    ld h, [hl]
    ld a, d
    call Call_017_6397
    daa
    ld l, b
    cp b
    adc e
    xor b
    or a
    ld [hl+], a
    ld d, [hl]
    ld a, h
    jp c, Jump_017_58a6

    ld [hl], l
    sbc c
    adc d
    ld l, b
    ld [hl], h
    db $76
    ld [hl], $d8
    ld c, c
    ld a, b
    adc b
    ld b, [hl]
    ld h, l
    adc c
    sub a
    sub l
    ld h, a
    ld h, a
    adc e
    xor c
    adc c
    ld h, l
    ld d, l
    dec [hl]
    db $db
    push bc
    and a
    ld e, d
    ld [hl], l
    ld b, d
    ld a, [hl]
    db $db
    and h
    dec b
    ld b, a
    cp c
    ld h, [hl]
    ld c, d
    xor b
    add h
    dec b
    ld a, a
    or [hl]
    ld b, h

jr_017_7c83:
    ld c, c
    or [hl]
    ld b, l
    ld l, c
    ld [$1494], a
    ld a, c
    cp e
    ld a, b
    ld h, h
    ld l, b
    ld h, l
    ld d, l
    sbc [hl]
    cp d
    sub l
    ld h, $64
    ld b, l
    sbc b
    ld a, c
    adc d
    add l
    adc b
    ld d, a
    xor b
    ld h, h
    ld d, [hl]
    sub [hl]
    add a
    ld a, l
    jp z, Jump_017_4574

    ld h, a
    add a
    ld [hl], a
    ld a, c
    add l
    inc hl
    sbc b
    sbc h
    xor c
    ld d, a
    sub a
    ld b, [hl]
    ld b, h
    ld e, c
    db $fc
    ld d, e
    ld d, [hl]
    ld a, c
    db $76
    ld [hl], l
    adc c
    ld [hl], a
    ld [hl], l
    and a
    ld a, c
    ld d, [hl]
    ld a, c
    add l
    ld d, [hl]
    ld d, [hl]
    sbc d
    cp c
    ld h, [hl]
    ld [hl], h
    dec h
    and a
    sbc e
    ld a, b
    add h
    adc c
    ld h, [hl]
    ld b, h
    ld l, c
    cp c
    ld d, l
    ld h, [hl]
    adc d
    add a
    add [hl]
    adc d
    ld [hl], h
    ld h, $66
    xor c
    add a

Call_017_7cdd:
    db $76
    sbc e
    ld h, a
    inc [hl]
    ld l, d
    ld h, a
    add a
    db $76
    ld b, h
    adc b
    xor [hl]
    rst $10
    ld d, d
    jr c, jr_017_7c83

    ld h, l

Call_017_7ced:
    ld b, [hl]
    sbc b
    jp z, $8695

    ld a, e
    add a
    ld [hl], h
    ld h, a
    ld l, b
    db $76
    ld l, e
    cp b
    sub a
    ld b, h
    db $76
    ld [hl], a
    ld a, b
    sbc d
    ld [hl], l
    ld l, c
    ld h, e
    ld a, c
    xor b
    sbc c
    db $76
    ld [hl], $95
    ld e, d
    cp d
    inc [hl]
    ld [hl], l
    adc d
    ld [hl], a
    ld [hl], h
    inc a
    sub a
    ld d, e
    ld b, [hl]
    xor e
    adc c
    adc b
    ld a, b
    ld [hl], l
    ld h, [hl]
    ld l, c
    xor e
    sub a
    ld d, h
    ld l, c
    sub e
    cp b
    cp a
    jp hl


    ld sp, $da18
    db $76
    ld d, d
    ld l, h
    cp b
    ld h, l
    ld h, [hl]
    xor [hl]
    or l
    ld [de], a
    add hl, sp
    dec sp
    ld [hl], a

Jump_017_7d32:
    ld e, d
    jp c, Jump_000_3482

    sbc c
    sbc d
    sub [hl]
    ld [hl], a
    add [hl]
    ld h, a
    db $76
    ld c, e
    jp hl


    sub a
    ld [hl], a
    ld h, [hl]

jr_017_7d42:
    ld [hl], a
    xor d
    ld [hl], l
    sub l
    ld c, c
    cp b
    sbc b
    ld a, d
    ld h, a
    ld h, l
    ld e, b
    sbc b
    ld a, e
    res 6, h
    inc d
    adc d
    sbc d
    cp c
    ld [hl], a
    sub [hl]

jr_017_7d57:
    ld d, l
    ld a, b
    adc d
    ld [hl], a
    or a
    xor b
    ld b, a
    ld d, l
    adc h
    sub a
    ld l, b
    ld d, [hl]
    xor e
    db $76
    ld a, d
    sbc c
    sub [hl]
    inc sp
    ld e, d
    res 3, c
    sub l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    xor l
    or [hl]
    ld sp, $8c47
    call z, $8753
    sbc e
    db $76
    ld b, h
    xor l
    adc c
    add h
    ld d, a
    ld e, e
    sub l
    adc e
    sbc b
    ld [hl], a
    ld b, [hl]
    adc d
    jp z, Jump_017_7777

    ld a, c
    ld h, d
    ld a, d
    xor [hl]
    xor d
    ld [hl], d
    ld a, c
    add a
    ld h, a
    xor l
    add $65
    jr c, jr_017_7d42

    reti


    ld d, l
    add [hl]
    adc e
    sub [hl]
    ld b, [hl]
    sbc e
    cp b
    call nc, $9758
    and a
    ld l, d
    cp c
    db $76
    add a
    ld l, b
    sbc e
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    ld [hl], $8c
    dec a
    sub d
    rla
    sbc d
    xor c
    ld [hl], e
    ld c, l
    ld sp, hl
    ld [hl], e
    jr z, jr_017_7d57

    add sp, $52
    ld c, c
    jp z, $8794

    cp l
    and [hl]
    dec [hl]
    ld l, c
    cp d
    db $76
    ld a, h
    sbc b
    sbc b
    ld b, h
    sbc h
    sbc c
    db $76
    add [hl]
    ld l, e
    and e
    ld l, e
    adc c
    cp b
    sbc b
    ld l, b
    ld h, [hl]
    ld a, b
    sbc d
    xor b
    ld h, [hl]
    ld h, a
    xor d
    xor b
    ld h, [hl]
    ld e, b
    ld e, c
    sub [hl]
    ld [hl], a
    adc d
    sbc c
    ld h, l
    ld a, b
    adc b
    sbc b
    ld a, b
    sbc b
    cp d
    ld d, d
    ld a, h
    xor c
    ld [hl], a
    sub [hl]
    xor l
    and [hl]
    inc de
    adc c
    cp h
    db $76
    ld h, a
    adc c
    add a
    ld h, [hl]
    ld a, d
    xor c
    ld h, l
    ld a, b
    xor d
    sub l
    ld h, $ab
    xor b
    ld h, a
    ld a, b
    sbc c
    ld [hl], l
    adc b
    add h
    adc d
    ld d, [hl]
    xor d
    cp d
    add a
    ld h, [hl]
    ld a, b
    add l
    ld b, [hl]
    sbc d
    xor d
    ld h, l
    ld d, [hl]
    sbc b
    adc b
    adc d
    db $76
    ld a, b
    ld a, b
    ld l, b
    sbc c
    ld [hl], a
    cp c
    xor b
    ld [hl], a
    ld b, h
    sbc d
    cp c
    db $76
    ld b, [hl]
    ld e, c
    cp b
    adc c
    ld h, [hl]
    adc c
    sub [hl]
    ld [hl], $7a
    adc c
    add a
    ld a, b
    add a
    ld d, l
    ld l, b
    sbc d
    xor b
    ld [hl], e
    ld b, a
    sbc d
    xor b
    db $76
    ld a, b
    xor c
    ld d, l
    ld l, b
    sub [hl]
    adc c
    cp d
    ld sp, $ad36
    ret


    ld b, h
    ld l, e
    sub l
    ld d, e
    ld h, a
    sbc h
    sbc b
    ld h, [hl]
    sub [hl]
    adc c
    ld [hl], a
    ld l, c
    xor c
    ld h, l
    ld b, l
    ld a, c
    xor c
    add a
    sbc b
    ld d, l
    ld h, [hl]
    sbc d
    add [hl]
    ld h, a
    ld a, d
    ld b, c
    ld c, e
    xor d
    xor c
    sub l
    ld d, [hl]
    ld h, h
    ld [hl], l
    adc b
    ld a, c
    xor c
    ld [hl], l
    ld d, [hl]
    add a
    add a
    ret z

    adc c
    ld h, h
    ld l, c
    xor b
    sbc b
    sbc b
    add [hl]
    ld d, [hl]
    ld h, a
    adc c
    add a
    sbc b
    add l
    inc hl
    ld e, e
    ld c, d
    xor b
    ld h, l
    ld b, [hl]
    sbc b
    ld [hl], e
    ld e, c
    call z, $1396
    ld e, b
    cp c
    ld d, [hl]
    ld a, c
    sbc c
    ld [hl], e
    ld h, $89
    sbc b
    ld a, b
    ld h, l
    adc d
    and a
    ld e, c
    sbc b
    ld [hl], l
    ld d, l
    ld d, a
    ld h, a
    sbc d
    cp d
    ld [hl], l
    sub e
    ld l, e
    sbc b
    ld h, a
    sub [hl]
    ld h, a
    ld [hl], a
    add l
    ld l, e
    cp d
    add [hl]
    ld b, l
    ld a, b
    add a
    ld h, a
    sbc c
    ld a, b
    db $76
    ld h, a
    ld [hl], a
    adc c
    add a
    ld d, l
    sbc c
    sbc b
    ld h, l
    sbc h
    sbc b
    ld b, e
    ld h, a
    adc d
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], l
    ld b, l
    adc c
    jp z, Jump_017_5585

    adc c
    sub [hl]
    ld d, [hl]
    cp h
    xor b
    ld b, l
    ld a, b
    sub a
    add a
    ld l, b
    ld a, c
    db $76
    add [hl]
    ld h, [hl]
    sub [hl]
    adc d
    ld [hl], a
    add [hl]
    add a
    adc d
    xor c
    ld h, e
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld e, b
    sbc c
    sub a
    ld [hl], a
    ld [hl], h
    ld l, c
    xor d
    add [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    jp z, Jump_017_6797

    ld h, a
    ld [hl], a
    add a
    ld d, l
    ld a, e
    cp d
    add l
    ld d, l
    sbc e
    sub a
    ld d, l
    adc c
    sub a
    ld l, c
    cp h
    sub a
    ld [hl], l
    ld l, b
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    xor d
    add l
    ld c, b
    cp d
    add a
    db $76
    sbc d
    ld [hl], l
    ld c, b
    cp c
    ld h, [hl]
    sbc d
    cp c
    db $76
    ld d, [hl]
    adc b
    db $76
    ld e, b
    xor c
    sub [hl]
    ld [hl], a
    add a
    adc b
    adc c
    sbc b
    ld a, b
    ld a, b
    adc d
    and a
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    db $76
    sbc c
    sub a
    ld h, a
    xor d
    ld d, e
    ld b, a
    call z, $97a8
    ld h, [hl]
    adc b
    sbc d
    add a
    adc c
    sbc c
    ld d, e
    ld e, b
    sbc b
    ld [hl], a
    sbc c
    sbc b
    ld [hl], l
    ld h, a
    sbc d
    sbc b
    adc d
    sub a
    ld [hl], a
    ld a, c
    sbc c
    add a
    sbc c
    ld d, e
    ld h, a
    sbc b
    db $76
    adc c
    cp d
    add l
    ld b, a
    ld a, c
    db $76
    ld a, c
    sbc b
    ld [hl], a
    ld e, b
    xor d
    cp c
    ld [hl], a
    ld a, b
    add l
    ld d, [hl]
    sbc c
    adc b
    adc c
    ld [hl], a
    ld a, b
    sbc c
    adc b
    add a
    ld h, a
    sub a
    add a
    ld [hl], a
    adc c
    cp b
    sub a
    ld h, a
    add a
    add a
    ld h, a
    adc b
    sub [hl]
    ld l, b
    sub a
    add a
    xor b
    add a
    adc b
    ld h, [hl]
    ld a, c
    xor c
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld d, a
    adc c
    adc b
    ld d, l
    adc d
    cp d
    ld d, l
    ld a, d
    sbc b
    ld h, [hl]
    ld [hl], a
    ld l, d
    and [hl]
    ld h, [hl]
    adc c
    add a
    ld a, b
    ld h, a
    xor b
    adc b
    ld d, a
    sbc c
    add a
    ld [hl], a
    adc c
    ld a, b
    db $76
    ld a, b
    ld a, c
    adc c
    add a
    ld h, a
    adc c
    ld [hl], a
    ld a, d
    sub [hl]
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    sbc b
    adc b
    ld h, a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld h, a
    ld a, b
    adc c
    add a
    db $76
    adc b
    sbc b
    ld h, [hl]
    ld a, c
    sbc c
    ld [hl], a
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    and a
    add a
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
