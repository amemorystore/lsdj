; disasSembly of "lsdj.gb"
SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    ld h, b
    ld b, b
    ret nc

    ld b, c
    or b
    ld b, e
    jr nz, jr_019_404d

    and b
    ld c, c
    ld [hl], b
    ld c, a
    add b
    ld d, e
    ld h, b
    ld d, a
    sub b
    ld d, a
    or b
    ld e, b
    nop
    ld e, h
    nop
    ld e, l
    nop
    ld e, [hl]
    ret nz

    ld h, d
    ret nz

    ld h, [hl]
    nop
    ld l, b
    nop
    nop
    ld b, c
    ld b, c
    dec l
    ld b, c
    ld b, l
    dec l
    ld b, c
    ld c, a
    dec l
    ld b, c
    ld d, d
    dec l
    ld b, c
    ld d, a
    dec l
    ld b, c
    ld e, b
    dec l
    ld b, c
    ld e, c
    dec l
    ld b, d
    ld b, d
    ld sp, $4242
    ld [hl-], a
    ld b, e
    ld c, b
    dec l
    ld b, h
    ld b, h
    ld sp, $4444
    ld [hl-], a
    ld b, h
    ld c, b
    ld sp, $4844
    ld [hl-], a
    ld b, l

jr_019_404d:
    ld c, b
    dec l
    nop
    dec l
    dec l
    ld b, c
    ld b, c
    dec l
    ld b, l
    ld c, b
    jr nz, jr_019_4059

jr_019_4059:
    nop
    nop
    nop
    rlca
    ld b, b
    rst $38
    ld bc, $7757
    ld [hl], e
    nop
    inc bc
    adc [hl]
    rst $38
    cp $72
    nop
    inc bc
    adc l
    rst $38
    db $db
    add a
    ld d, h
    sub [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc d
    cp e
    and a
    ld d, h
    ld b, l
    ld l, b
    xor e
    res 5, b
    ld h, [hl]
    ld d, [hl]
    ld a, b
    adc c
    sbc c
    adc b
    adc b
    ld a, b
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    ret z

    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld b, b
    nop
    scf
    rst $08
    rst $38
    ld sp, hl
    jr nc, jr_019_409f

jr_019_409f:
    daa
    cp a
    db $fd
    cp c
    db $76
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    xor e
    cp d
    add [hl]
    ld b, h
    ld b, l
    ld a, c
    cp e
    ld a, c
    add [hl]
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    adc b
    or $67
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add [hl]
    db $10
    ld [bc], a
    ld l, e
    rst $38
    ld l, a
    and h
    db $10
    ld bc, $ef5b
    db $db
    xor b
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor e
    xor c
    ld h, h
    ld b, h
    ld d, a
    sbc d
    cp e
    sbc b
    db $76
    ld d, l
    ld h, a
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    ld a, b
    adc c
    sbc c
    add a
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], d
    nop
    dec h
    xor [hl]
    rst $38
    db $fc
    ld h, c
    nop
    dec b
    xor [hl]
    cp $ca
    add [hl]
    ld d, l

jr_019_410e:
    ld h, a
    ld [hl], a
    add a
    adc c
    sbc d
    cp d
    sub a
    ld d, h
    ld b, l
    ld l, b
    xor e
    cp d
    sub a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc c
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    adc b
    ld a, b
    or a
    ld a, b
    ld a, b
    adc b
    add a
    jr nc, jr_019_4138

    ld c, b

jr_019_4138:
    rst $28
    rst $38
    rst $10
    jr nz, jr_019_413d

jr_019_413d:
    jr z, jr_019_410e

    db $fd
    ld e, c
    ld [hl], l
    ld d, l
    ld [hl], a
    db $76
    ld a, b
    sbc d
    xor e
    cp d
    ld [hl], l
    ld b, h
    ld b, l
    adc c
    cp e
    xor c
    add [hl]
    ld [hl], l
    ld d, a
    adc c
    sbc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc c
    sbc c
    add a
    db $76
    ld [hl], a
    ld [$8888], sp
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add h
    nop
    inc bc
    ld a, h
    rst $38
    rst $38
    add e
    ld d, b
    ld [bc], a
    ld a, h
    rst $38
    db $db
    sub a
    ld d, h
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    sbc d
    xor e
    xor b
    ld h, h
    ld b, h
    sub a
    xor e
    res 3, b
    ld [hl], l
    ld d, l
    ld l, b
    sbc c
    sbc b
    adc b
    adc b
    adc b
    add a
    db $76
    ld h, a
    ld a, b
    add hl, sp
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld d, b
    nop
    and [hl]
    cp a

jr_019_41a2:
    rst $38
    ld a, [$0041]
    dec d
    cp [hl]
    cp $ba
    add [hl]
    ld d, l
    ld h, a
    ld [hl], a
    ld h, a
    sbc c
    ld a, e
    cp d
    sub [hl]
    ld b, h
    ld b, l
    ld l, c
    xor e
    cp c
    add a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    xor c
    ld h, c
    nop
    jr z, jr_019_41a2

    call c, $cbcc
    xor b
    ld d, d
    ld [de], a
    ld b, [hl]
    adc d
    cp e
    call z, $98cb
    ld h, h
    ld b, h
    ld d, [hl]
    ld a, b
    sbc d
    xor d
    xor d
    sbc b
    db $76
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc b
    ld c, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    add h
    nop
    inc b
    xor l
    call c, $bbcc
    cp d
    add l
    ld [hl-], a
    ld h, l
    ld a, c
    xor e
    cp e
    cp d
    xor c
    db $76
    ld b, h
    ld d, l
    ld h, a
    sbc c
    sbc d
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a

jr_019_422a:
    ld [hl], a
    adc b
    sbc b
    sbc b
    add a
    ld [hl], a
    add $67
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    db $76
    jr nz, jr_019_423e

jr_019_423e:
    ld l, e
    db $ed
    sbc h
    res 7, d
    sub a
    ld b, d
    inc h
    ld l, b
    sbc e
    cp e
    cp e
    cp d
    add [hl]
    ld d, l
    ld b, l
    ld d, a
    adc c
    adc d
    xor d
    xor c
    sub a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    and a
    ld d, c
    nop
    jr z, @-$31

    call c, $bbcc
    xor b
    ld h, e
    ld [hl+], a
    ld d, a
    adc d
    cp e
    cp e
    cp e
    sbc b
    ld h, l
    ld d, h
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    cp d
    sbc c
    db $76
    ld h, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc b
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc b
    sbc c
    jr c, jr_019_422a

    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], h
    nop
    inc bc
    sbc l
    call c, $cbcc
    cp c
    add l
    ld sp, $7955
    xor e
    cp e
    cp e
    xor c
    db $76
    ld d, h
    ld d, l
    ld h, a
    adc c
    xor d
    xor d
    xor c
    add a
    ld h, l
    ld [hl], l
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a

jr_019_42ca:
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    rst $00
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
    add a
    jr nc, jr_019_42de

jr_019_42de:
    ld e, e
    db $dd
    sbc h
    set 1, d
    sub a
    ld b, e
    inc h
    ld l, b
    sbc e
    cp e
    cp e
    cp d
    sub a
    ld h, l
    ld b, h
    ld h, [hl]
    adc c
    adc d
    xor d
    xor d
    sbc b
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc c
    sbc d
    xor c
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    and a
    ld h, c
    nop
    rla
    adc $cc
    call z, $a9bb
    ld h, h
    ld [hl+], a
    ld b, a
    adc d
    cp e
    cp e
    cp e
    adc b
    ld h, l
    ld b, h
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    sbc b
    db $76
    ld d, l
    ld d, [hl]
    ld h, a
    adc b
    adc c
    sbc c
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    sbc b
    add a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    sbc c
    jr z, jr_019_42ca

    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], h
    db $10
    inc bc
    adc l
    call c, $cbcc
    cp d
    add l
    ld [hl-], a
    ld d, l
    ld a, c
    xor e
    cp e
    cp e
    xor c
    add [hl]
    ld d, h
    ld b, l
    ld h, a
    adc c
    sbc d
    xor d
    xor c
    add a
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    rst $00
    db $76
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    jr nc, jr_019_437e

jr_019_437e:
    ld c, d
    db $dd
    sbc h
    res 7, e
    sub a
    ld b, d
    inc hl
    ld l, b
    sbc d
    cp e
    cp e
    cp d
    sub a
    ld d, h
    ld d, h
    ld d, [hl]
    ld a, b
    adc c
    xor d
    xor c
    sbc b
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, c
    nop
    nop
    scf
    rst $18
    rst $38
    cp $94
    nop
    ld bc, $be47
    cp $ca
    add a
    ld [hl], l
    ld h, a
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc d
    cp e
    cp d
    add a
    ld d, h
    ld b, l
    ld h, a
    sbc d
    cp e
    xor c
    add [hl]
    ld h, l
    ld h, [hl]
    ld a, b
    sbc b
    adc c
    sbc b
    add a
    ld [hl], a
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
    add [hl]
    stop
    inc bc
    adc l
    rst $38
    rst $38
    jp hl


    jr nc, jr_019_43ef

jr_019_43ef:
    dec d
    ld e, e
    rst $28
    db $ec
    sbc b
    db $76
    ld d, [hl]
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld a, b
    xor d
    cp e
    xor c
    db $76
    ld d, l
    db $76
    adc c
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    adc b
    or $66
    ld [hl], a
    adc b
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld d, b
    nop
    nop
    ld c, b
    rst $28
    rst $38
    xor [hl]
    sub e
    nop
    ld bc, $ce58
    cp $ca
    add a
    ld h, l
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    ld a, d
    xor c
    add a
    ld h, l
    ld d, l
    ld a, b
    sbc d
    xor d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc c
    sbc b
    adc b
    ld [hl], a
    rlca
    adc b
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add l
    db $10
    add b
    inc b
    sbc [hl]
    rst $38
    rst $38
    add sp, $30
    nop
    dec d
    adc h
    rst $38
    db $ec
    sbc b
    db $76
    ld d, [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld a, b
    xor e
    cp d
    sbc b
    ld h, l
    ld d, l
    ld h, a
    adc c
    xor e
    xor c
    add a
    ld h, [hl]
    ld d, [hl]
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    adc b
    rst $00
    ld [hl], a
    ld [hl], a
    ld d, b
    nop
    nop
    ld c, c
    rst $28
    rst $38
    db $fd
    add d
    nop
    ld [bc], a
    ld e, b
    adc $fe
    xor c
    add a
    ld h, l
    ld l, b
    adc b
    add a
    db $76
    ld h, a
    adc c
    xor d
    xor c
    add a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    adc d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld [$9889], sp
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add l
    nop
    nop
    inc d
    sbc [hl]
    rst $38
    rst $38
    rst $10
    jr nz, jr_019_4521

    ld h, $9c
    rst $38
    db $eb
    sbc b
    db $76
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    xor e
    cp d
    sbc b
    sub l
    ld b, l
    ld h, a
    adc d
    xor e
    xor c
    add a
    ld h, [hl]
    ld d, [hl]
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    sbc c
    ld hl, sp-$78
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld b, b
    nop
    ld bc, $7f5a
    rst $38
    db $fd
    ld [hl], d
    nop
    ld [bc], a
    ld l, c
    rst $08
    cp $c9
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc d
    xor e
    xor c
    add a
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    xor d
    sub a
    db $76
    ld h, [hl]
    ld a, b
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a

jr_019_4521:
    ld h, l
    ld sp, $2400
    ld l, d
    rst $18
    rst $38
    db $fc
    and [hl]
    ld b, d
    inc hl
    ld b, [hl]
    adc c
    xor d
    xor c
    ld a, b
    adc b
    adc b
    sbc c
    sbc b
    add [hl]
    ld h, [hl]
    ld d, [hl]
    ld a, b
    sbc d
    cp d
    xor c
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc b
    ld b, a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    db $76
    ld b, e
    ld de, $5712
    cp [hl]
    rst $38
    cp $c9
    ld [hl], h
    inc sp
    add l
    ld l, b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor d
    xor c
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    rst $30
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld h, e
    db $10
    ld bc, $ae36
    rst $38
    ld l, a
    jp c, Jump_000_1163

    inc h
    ld l, b
    xor e
    res 5, c
    add a
    ld [hl], a
    adc b
    sbc c
    sbc c
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld a, b
    adc c
    xor d
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [$8888], sp
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, h
    db $10
    add b
    inc bc
    adc e
    rst $38
    rst $38
    db $fc
    sub l
    ld hl, $5712
    xor e
    call z, $87ba
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    add a
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    db $76
    jr nc, jr_019_45f5

jr_019_45f5:
    ld [bc], a
    ld l, d
    rst $18
    rst $38
    db $fc
    sub [hl]
    ld b, e
    inc [hl]
    ld l, b
    sbc d
    xor d
    adc b
    adc b
    sbc c
    sbc d
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    adc c
    xor d
    xor d
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    ld a, c
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    daa
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, e
    nop
    nop
    scf
    cp [hl]
    rst $38
    rst $38
    ret z

    ld d, e
    add e
    ld b, [hl]
    adc c
    xor d
    sbc c
    adc b
    sbc c
    sbc d
    xor c
    add a
    ld h, l
    ld d, l
    ld h, a
    sbc c
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld hl, sp-$78
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    ld sp, $2512
    sbc h
    ld a, a
    cp $b7
    ld b, d
    ld [hl+], a
    ld d, a
    sbc h
    call z, $86a9
    ld h, [hl]
    ld a, b
    adc c
    sbc b
    add a
    db $76
    add a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld d, a
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add e
    db $10
    ld [de], a
    ld e, c
    rst $08
    rst $38
    ld [$3274], a
    dec h
    ld a, c
    call z, $98ca
    ld h, [hl]
    ld h, a
    ld a, c
    sbc c
    add a
    db $76
    ld h, a
    ld a, c
    sbc d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc b
    add a
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
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], h
    jr nz, jr_019_46c7

jr_019_46c7:
    scf
    cp [hl]
    rst $38
    db $ec
    add l
    ld b, h
    ld l, b
    sbc d
    sbc c
    ld [hl], a
    db $76
    ld a, b
    sbc d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld a, c
    sbc d
    sbc c
    db $76
    ld h, [hl]
    ld a, b
    adc b
    sbc b
    add a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc b
    ld d, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld d, c
    nop
    inc bc
    adc h
    rst $28
    cp $b8
    ld [hl], e
    ld b, [hl]
    adc c
    xor d
    sbc b
    ld [hl], a
    ld [hl], a
    sbc d
    cp e
    xor b
    db $76
    ld h, [hl]
    ld a, b
    sbc d
    cp d
    add a
    db $76
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
    ld [hl], a
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
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], h
    ld hl, $9b13
    xor $dc
    sub a
    ld d, l
    ld d, a
    sbc c
    sbc b
    db $76
    ld a, b
    sbc d
    xor d
    sbc b
    ld h, l
    ld d, l
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    db $76
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
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
    ld a, b
    adc b
    adc b
    and a
    db $76
    ld sp, $5802
    adc $ed
    cp b
    ld [hl], l
    ld d, l
    ld a, c
    sbc b
    add a
    ld h, a
    adc c
    xor d
    ld a, c
    db $76
    ld d, l
    ld d, [hl]
    adc c
    sbc c
    adc b
    ld [hl], a
    ld a, b
    adc b

jr_019_477a:
    adc b
    add a
    ld h, a
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld d, e
    db $10
    dec h
    sbc l
    xor $db
    sub a
    ld d, l
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor d
    sbc b
    ld h, l
    ld d, [hl]
    ld a, c
    sbc d
    sbc c
    sbc b
    ld a, b
    adc b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    xor b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    db $76
    ld sp, $5912
    call $88db
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor d
    add a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    jr jr_019_477a

    adc b
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
    ld [hl], a
    ld h, e
    ld [hl], c
    ld h, $ad
    db $ed
    jp z, Jump_019_6687

    ld h, a
    ld a, b
    add a
    ld [hl], a
    adc d
    xor d
    sbc b
    db $76
    ld h, [hl]
    add a
    adc b
    adc c
    adc b
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
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    and a
    ld [hl], a
    ld a, b
    db $76
    ld sp, $7a13
    sbc $db
    sbc b
    db $76
    ld h, [hl]
    ld a, b
    adc b
    add a
    ld a, b
    sbc d
    xor c
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
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
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld d, e
    inc hl
    ld e, b
    cp h
    cp d
    sbc b
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    xor d
    xor c
    add a
    ld [hl], a
    adc b
    add a
    db $76
    ld a, b
    adc c
    sbc c
    sbc b
    adc b
    add a
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
    add a
    adc b
    adc b
    ret z

    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], h
    ld hl, $9c25
    adc e
    xor c
    adc b
    sbc c
    add a
    ld h, [hl]
    ld h, l
    ld h, a
    adc c
    xor c
    sub a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
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
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld b, d
    inc de
    ld e, c
    cp h
    cp d
    adc b
    adc c
    add a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    xor d
    xor c
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], l
    inc sp
    ld b, [hl]
    adc d
    cp d
    xor c
    adc b
    adc b
    adc b
    add a
    ld h, [hl]
    add a
    adc c
    sbc d
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
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
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld b, e
    inc [hl]
    ld a, b
    xor e
    xor d
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    sbc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b

jr_019_495a:
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld d, a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld h, h
    inc sp
    add a
    sbc d
    cp d
    sbc c
    adc b
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
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
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    and a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    db $10
    ld bc, $ff6a
    rst $38
    sub l
    inc hl
    ld b, [hl]
    ld a, b
    sbc c
    sbc c
    ld a, h
    jp z, Jump_000_3385

    ld b, l
    sbc e
    call c, $87b9
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    sbc c
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    add a
    ld [hl], a
    ld h, a
    jr z, jr_019_495a

    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add h
    nop
    inc b
    adc l
    rst $38
    db $fc
    ld h, e
    ld [hl], e
    ld d, [hl]
    adc c
    sbc b
    sbc c
    cp h
    cp c
    ld [hl], h
    inc sp
    ld b, a
    sbc e
    res 3, b
    db $76
    ld h, [hl]
    ld [hl], a
    sub a
    ld a, b
    sbc d
    xor d
    sub a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add hl, de
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, d
    nop
    add $bf
    rst $38
    jp hl


    ld b, d
    inc h
    ld h, a
    adc c
    sbc c
    sbc d
    cp e
    xor b
    ld d, e
    inc [hl]
    ld e, b
    cp h
    ld a, d
    sub a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor c
    add [hl]
    ld h, l
    ld h, [hl]
    ld a, b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    sub a
    ld [hl], a
    add a
    ld b, b
    nop
    ld c, c
    rst $18
    rst $38
    add $32
    dec [hl]
    ld l, b
    sbc c
    sbc c
    xor e
    bit 4, [hl]
    ld b, e
    inc [hl]
    ld a, d
    cp h
    cp c
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    xor c
    add [hl]
    ld d, l
    add a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    db $10
    ld [bc], a
    ld a, e
    rst $38
    cp $84
    inc hl
    ld d, [hl]
    adc b
    sbc c
    sbc c
    xor e
    jp z, $3375

    ld b, [hl]
    sbc e
    call z, Call_019_76a9
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    sbc b
    db $76
    ld d, l
    ld [hl], a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    adc c
    sbc b
    rst $30
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], e
    nop
    inc b
    xor [hl]
    ld l, a
    ei
    ld d, e
    inc hl
    ld h, a
    adc b
    sbc c
    sbc d
    cp e
    cp c
    ld h, h
    inc sp
    ld d, a
    xor h
    res 2, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor d
    sub a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
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
    jr c, jr_019_4b33

    nop
    daa
    rst $08
    rst $38
    ret c

    ld b, d
    dec [hl]
    ld h, a
    adc c
    sbc c
    xor e
    res 2, a
    ld d, e
    sub h
    ld l, c
    cp h
    jp z, Jump_019_6687

    ld h, a
    ld [hl], a
    ld [hl], a
    adc c

jr_019_4afa:
    xor d
    xor c
    add [hl]
    ld d, l
    ld d, a
    adc c
    adc c
    sbc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    jr nz, jr_019_4b18

jr_019_4b18:
    ld e, d
    rst $28
    rst $38
    or l
    ld [hl+], a
    ld [hl], $78
    adc c
    sbc c
    xor e
    cp e
    add [hl]
    ld b, e
    dec [hl]
    adc d
    call z, Call_019_77b9
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    ld a, c
    db $76
    ld d, l

jr_019_4b33:
    ld h, a
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    ld [hl], a
    rst $20
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    ld sp, $3601
    xor [hl]
    rst $38
    xor e
    add [hl]
    ld b, h
    ld b, l
    ld h, a
    ld [hl], a
    ld a, b
    sbc d
    cp e
    cp d
    add [hl]
    ld d, h
    ld b, l
    ld a, b
    sbc d
    cp d
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    jr jr_019_4afa

    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld h, h
    ld b, b
    ld [bc], a
    ld e, b
    rst $08
    rst $38
    ret


    ld [hl], l
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    cp e
    xor b
    db $76
    ld h, h
    ld d, [hl]
    adc c
    xor d
    xor d
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    sbc c
    sbc c
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, e
    db $10
    inc d
    ld a, d
    rst $28
    cp $b8
    ld h, h
    inc [hl]
    ld d, [hl]
    ld [hl], a
    adc b
    adc c
    xor e
    cp d
    sbc b
    ld h, l
    ld b, h
    ld d, a
    adc c
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc c
    sbc c
    add a
    db $76
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld e, b
    adc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld b, c
    ld bc, $9c26
    rst $38
    db $fc
    sub a
    ld [hl], h
    ld b, h
    ld d, a
    ld [hl], a
    ld a, b
    sbc d
    xor e
    cp d
    add [hl]
    ld d, h
    ld b, l
    ld h, a
    sbc d
    xor d
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc b
    ld [hl], a
    db $76

jr_019_4c0a:
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld c, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    jr nz, jr_019_4c21

    ld [hl], a

jr_019_4c21:
    cp [hl]
    rst $38
    ld [$4375], a
    ld b, l
    ld h, a
    ld [hl], a
    adc c
    sbc d
    cp e
    xor c
    db $76
    ld d, h
    ld d, [hl]
    adc c
    sbc d
    xor c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    add a
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
    ld [hl], a
    ld [hl], a
    ld a, b
    sub a
    add a
    ld h, h
    ld hl, $4612
    xor [hl]
    rst $38
    cp $b7
    ld [hl-], a
    ld bc, $8b46
    db $dd
    db $db
    xor b
    ld h, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc c
    xor c
    sbc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    sbc c
    xor d
    ld a, c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    jr jr_019_4c0a

    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, h
    ld [hl-], a
    inc hl
    ld e, b
    cp a
    rst $38
    db $fc
    sub l
    ld hl, $5762
    xor h
    db $dd
    cp d
    add [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    add a
    adc b
    sbc c
    sbc c
    sbc b
    db $76
    ld [hl], l
    ld h, [hl]
    ld a, b
    sbc d
    xor d
    sbc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    rst $10
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
    ld d, e
    ld [hl+], a
    inc h
    ld l, d
    adc a
    rst $38
    jp c, Jump_000_2174

    inc h
    ld l, c
    cp l
    call c, Call_019_76b9
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    db $76
    ld h, l
    ld h, a
    adc c
    sbc d
    xor d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld d, [hl]
    ld d, e
    ld [hl+], a
    dec [hl]
    adc h
    rst $38
    cp $c8
    ld d, d
    ld de, $8a35
    call $a8cb
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sub a
    db $76
    ld h, l
    ld h, a
    adc c
    xor d
    xor c
    add a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], l
    ld b, e
    inc sp
    dec [hl]
    ld a, d
    cp h
    db $dd
    res 3, b
    ld h, [hl]
    ld d, [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc b
    adc b
    ld a, c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $10
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld h, l
    ld b, e
    inc sp
    ld d, a
    sbc e
    call $ca7d
    add a
    ld h, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    xor d
    xor d
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    add a
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    adc b
    scf
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    db $76
    ld d, h
    and e
    inc [hl]
    ld l, b
    xor h
    db $dd
    call c, Call_019_76b9
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    xor d
    adc d
    add a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
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
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, h
    inc sp
    dec [hl]
    ld a, c
    cp h
    db $dd
    res 5, b
    db $76
    ld d, l
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc d
    xor d
    xor c
    add a
    ld h, [hl]
    ld d, l
    ld h, a
    ld a, b
    adc c
    sbc c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    and a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    xor d
    sbc e
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld c, b
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
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, h
    ld [hl], l
    ld d, [hl]
    ld [hl], a
    sbc c
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    ld [hl], a
    db $76
    ld h, a
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
    adc b
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
    db $76
    ld h, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld a, b
    sbc c
    xor d
    xor d
    xor c
    sbc c
    sbc c
    sbc c
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
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    adc b
    add a
    add a
    ld h, [hl]
    ld d, l
    ld b, h
    ld d, l
    ld h, a
    ld a, b
    sbc d
    xor d
    xor d
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
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
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    add a
    adc c
    xor d
    xor d
    xor d
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
    ld a, b
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld a, b
    adc c
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
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

jr_019_4f1a:
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
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
    add a
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, b
    sbc d
    xor d
    xor d
    xor d
    sbc c
    adc c
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
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
    sbc c
    sbc c
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
    jr c, jr_019_4f1a

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
    ld [hl], l
    add d
    inc hl
    ld b, e
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b

jr_019_4fba:
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
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
    ld h, h
    ld [hl+], a
    inc hl
    ld b, h
    ld b, l
    ld h, a
    ld [hl], a
    ld a, b
    sbc c
    adc c
    adc c
    sbc c
    adc c
    sbc c
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
    adc b
    adc b
    adc b
    add a
    ld d, e
    ld [hl+], a
    inc sp
    inc [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    sbc b
    adc c
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
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    jr c, jr_019_4fba

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
    db $76
    ld b, d
    inc hl
    add h
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc b
    adc b
    sbc c
    sbc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    sub a
    ld [hl], a
    ld h, l
    ld [hl-], a
    inc hl
    inc [hl]
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    adc c
    sbc c
    adc c
    sbc b
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
    adc b
    ld [hl], a
    ld a, b
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
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld d, e
    ld de, $3323
    ld b, l
    ld h, a
    ld a, b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc c
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
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld e, b
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
    db $76
    ld b, d
    ld [de], a
    inc hl
    inc [hl]
    add [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
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
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
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
    adc b
    adc b
    add a
    sub l
    ld sp, $3322
    inc [hl]
    ld d, a
    ld [hl], a
    adc b
    sbc c
    sbc c
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
    adc b
    adc b
    adc b
    ld a, b
    adc b

jr_019_512a:
    add a
    adc b
    adc b
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
    add a
    ld h, h
    ld [hl+], a
    inc hl
    inc sp
    ld b, l
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    adc b
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
    ld d, e
    ld [hl+], a
    inc hl
    inc sp
    ld b, [hl]
    ld h, a
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
    adc c
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
    adc b
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
    jr z, jr_019_512a

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
    ld [hl], l
    ld [hl-], a
    sub e
    ld b, h
    ld b, e
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc c
    sbc c
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
    adc b
    adc b
    ld h, h
    ld [hl+], a
    inc [hl]
    ld d, h
    inc sp
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
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
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld d, e
    inc hl
    dec [hl]
    ld b, h
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sbc c
    sbc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
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
    ld c, b
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
    db $76
    ld b, d
    inc hl
    ld b, h
    sub e
    ld b, l
    ld d, [hl]
    ld d, l
    ld h, a
    ld [hl], a
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
    adc c
    sbc b
    sbc c
    adc c
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
    ld [hl], l
    ld [hl-], a
    inc [hl]
    ld d, h
    inc sp
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    adc b

jr_019_529a:
    sbc b
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
    add a
    ld d, c
    nop
    inc de
    ld [hl-], a
    ld [de], a
    dec [hl]
    ld d, h
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc d
    sbc d
    sbc d
    xor d
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld e, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add [hl]
    jr nc, jr_019_52ee

    inc sp

jr_019_52ee:
    ld [hl-], a
    inc hl
    sub l
    ld d, l
    ld d, a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    sbc c
    sbc d
    sbc c
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    jr jr_019_529a

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
    ld [hl], l
    and b
    ld bc, $2233
    inc h
    ld d, l
    ld d, l
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc d
    sbc c
    sbc d
    xor d
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
    sbc b
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
    sbc b
    adc b
    adc b
    adc b
    ld h, e
    nop
    inc de
    inc sp
    ld [hl+], a
    inc [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    sbc c
    xor c
    sbc c
    xor d
    xor d
    sbc c
    sbc d
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
    dec h
    stop
    rlca
    rst $38
    rst $38
    ei
    ld b, b
    nop
    inc b
    adc e
    res 7, h
    call $96cb
    stop
    ld c, c
    rst $18
    rst $38
    ret c

    ld b, d
    ld [hl+], a
    ld b, [hl]
    ld a, b
    sbc c
    sbc d
    cp h
    cp d
    add l
    ld hl, $7a73
    adc $ec
    and a
    ld d, h
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc d
    cp e
    cp c
    ld [hl], l
    inc sp
    dec [hl]
    cp c
    cp e
    cp d
    add a
    ld h, [hl]
    ld d, d
    nop
    nop
    ld c, e
    rst $38
    rst $38
    ret c

    jr nz, jr_019_53be

jr_019_53be:
    ld b, a
    xor e
    xor e
    cp e
    call z, Call_019_75ba
    db $10
    inc bc
    ld a, e
    rst $28
    db $fd
    and [hl]
    inc sp
    inc h
    ld d, a
    adc b
    sbc c
    xor d
    cp e
    xor c
    ld [hl], h
    ld [hl-], a
    dec [hl]
    adc d
    call $86ca
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    xor d
    sbc b
    ld h, l
    inc sp
    ld d, a
    adc d
    cp e
    xor c
    add a
    db $76
    ld b, b
    nop
    ld bc, $ff7f
    rst $38
    inc h
    nop
    ld bc, $bc59
    cp e
    call $b9dc
    ld h, d
    nop
    dec d
    xor [hl]
    rst $38
    db $fc
    add h
    ld d, c
    inc h
    ld l, b
    sbc c
    sbc c
    xor e
    res 5, b
    ld d, d
    ld bc, $ac37
    xor $ca
    ld [hl], l
    ld b, h
    ld b, $67
    ld [hl], a
    adc c
    xor e
    cp e
    sub a
    ld d, e
    inc sp
    ld h, a
    sbc e
    res 5, b
    db $76
    ld h, l
    db $10
    db $10
    inc b
    rst $08
    rst $38
    rst $38
    add b
    nop
    ld bc, $de6a
    db $dd
    call c, $97cb
    jr nc, jr_019_5430

jr_019_5430:
    rst $00
    rst $18
    rst $38
    ei
    ld d, d
    nop
    inc d
    ld a, c
    xor d
    xor e
    cp h
    res 0, [hl]
    jr nc, jr_019_5440

    ld c, b

jr_019_5440:
    sbc $ff
    ret


    ld d, h
    inc sp
    ld d, [hl]
    ld [hl], a
    adc b
    sbc d
    cp h
    cp d
    add [hl]
    ld [hl-], a
    inc h
    ld l, c
    cp l
    cp h
    and a
    ld h, l
    ld d, e
    nop
    nop
    jr z, @+$01

    rst $38
    ld sp, hl
    ld b, b
    nop
    ld h, $9b
    cp e
    cp e
    cp h
    cp e
    sub [hl]
    jr nc, jr_019_5467

    ld e, d
    rst $18

jr_019_5467:
    cp $b8
    ld b, e
    inc sp
    ld d, [hl]
    adc c
    sbc b
    sbc d
    cp e
    ld a, c
    ld [hl], l
    ld [hl-], a
    inc h
    ld a, d
    call $97db
    ld h, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    sbc d
    cp e
    xor c
    ld b, $44
    ld b, [hl]
    adc c
    xor e
    xor c
    add a
    ld h, [hl]
    ld d, d
    nop
    nop
    ld e, h
    rst $38
    rst $38
    rst $10
    db $10
    ld d, b
    scf
    cp h
    call c, $cbcc
    cp c
    ld h, e
    nop
    inc bc
    ld a, h
    rst $38
    cp $a6
    ld hl, $7713
    sbc c
    xor d
    xor e
    cp e
    xor b
    ld h, e
    ld de, $8b25
    sbc $db
    add l
    ld b, e
    ld b, l
    ld h, a
    xor b
    adc b
    sbc d
    cp e
    sbc b
    ld h, h
    inc sp
    ld d, [hl]
    sbc e
    cp h
    xor c
    db $76
    ld h, l
    jr nc, jr_019_54bf

jr_019_54bf:
    ld h, $cf
    rst $38
    jp hl


    ld b, c
    ld [bc], a
    ld b, a
    cp l
    db $ec
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    ld d, [hl]
    ld a, c
    cp h
    ld a, e
    add [hl]
    inc sp
    ld b, [hl]
    adc d
    call z, Call_019_66a8
    ld h, [hl]
    ld a, b
    sbc c
    add a
    ld h, a
    adc c
    sbc c
    sbc b
    ld h, [hl]
    ld d, [hl]
    ld a, b
    xor d
    xor c
    db $76
    ld h, [hl]
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    adc c
    sbc c
    add a
    db $76
    sub a
    add a
    ld b, c
    ld [de], a
    ld b, a
    cp a
    rst $38
    rst $00
    ld sp, $4911
    sbc $da
    add a
    ld h, [hl]
    ld l, b
    ld a, c
    db $76
    ld d, [hl]
    ld a, c
    cp h
    jp z, $3375

    ld d, [hl]
    sbc e
    res 2, a
    ld h, l
    ld h, a
    ld a, b
    sbc c
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    sbc b
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    xor b
    db $76
    ld h, [hl]
    ld a, b
    adc b
    sbc b
    db $76
    ld d, a
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, a
    add l
    db $10
    inc d
    adc h
    rst $38
    db $fc
    add [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    or l
    ld a, d
    rst $18
    db $ec
    add l
    ld [hl-], a
    dec [hl]
    ld a, b
    sbc c
    sbc c
    xor e
    cp d
    sub [hl]
    ld b, d
    inc [hl]
    ld a, c
    sbc e
    cp d
    sbc b
    adc b
    ld [hl], a
    ld d, h
    ld d, l
    ld a, b
    xor e
    cp d
    sub a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, [$97aa]
    ld h, l
    ld d, [hl]
    ld a, b
    sbc c
    sbc b
    adc c
    adc b
    add a
    ld d, b
    nop
    ld d, $bf
    rst $38
    cp d
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    ld d, [hl]
    xor [hl]
    rst $38
    ld [$1263], a
    ld [hl], $89
    sbc c
    sbc e
    call z, Call_019_645a
    ld [hl+], a
    ld [hl], $8b
    cp e
    xor c
    adc b
    add a
    ld [hl], l
    ld b, e
    ld b, l
    adc d
    cp h
    cp c
    add [hl]
    ld d, $66
    ld [hl], a

jr_019_5583:
    ld [hl], a
    adc c
    cp e
    cp d
    add [hl]
    ld d, h
    ld d, [hl]
    ld a, b
    sbc c
    adc b
    sbc c
    sbc c
    add [hl]
    ld d, b
    inc b
    adc d
    sbc c
    xor h
    res 3, b
    ld h, e
    inc hl
    ld a, c
    sbc b
    sbc d
    call c, Call_019_75a8
    ld b, h
    ld [hl], a
    adc b
    ld a, c
    cp l
    ret


    db $76
    ld h, l
    ld d, l
    ld h, a
    ld a, b
    sbc e
    cp d
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    add a
    adc c
    xor e
    xor b
    ld a, b
    ld [hl], a
    ld h, l
    ld h, a
    adc b
    adc c
    xor c
    add a
    add a
    ld h, [hl]
    ld h, a
    adc b
    cp b
    sbc c
    sbc b
    ld a, b
    ld [hl], h
    nop
    jr jr_019_5583

    xor e
    sbc $ca
    sub a
    ld b, c
    inc d
    sbc d
    sbc c
    cp l
    db $ec
    sub a
    ld h, h
    inc sp
    ld d, a
    add a
    adc d
    call c, Call_019_66a7
    ld d, h
    ld b, l
    ld [hl], a
    ld a, b
    xor h
    ld a, c
    add a
    db $76
    ld d, l
    ld h, [hl]
    ld a, b
    adc d
    cp d
    add a
    ld [hl], a
    db $76
    ld d, l
    ld a, b
    adc c
    xor d
    sbc b
    add a
    ld [hl], a
    ld h, l
    ld h, a
    ld a, b
    adc c
    xor c
    add a
    add a
    ld h, b
    nop
    ld e, d
    cp e
    cp h
    db $ed
    cp c
    ld b, l
    db $10
    daa
    xor d
    sbc d
    adc $da
    add [hl]
    ld b, e
    inc h
    ld a, b
    adc b
    sbc h
    call c, Call_019_6597
    ld d, h
    ld d, [hl]
    ld [hl], a
    adc d
    cp h
    xor b
    ld [hl], a
    db $76
    ld b, l
    ld h, a
    adc b
    xor e
    cp d
    add a
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld a, b
    adc c
    xor d
    sbc b
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, a
    adc b
    adc c
    sbc c
    add a
    ld [hl], a
    ld b, b
    ld bc, $7747
    ld a, d
    sbc $dc
    cp b
    ld h, [hl]
    ld [hl], a
    ld h, h
    inc [hl]
    ld a, d
    cp e
    xor d
    xor d
    xor c
    add [hl]
    sub e
    ld b, [hl]
    ld [hl], a
    ld [hl], a
    sbc e
    cp e
    xor c
    add a
    ld [hl], a
    db $76
    ld b, h
    ld d, a
    adc c
    sbc c
    sbc c
    xor c
    sbc b
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    db $76
    ld a, b
    sbc d
    xor c
    adc b
    ld a, b
    add a
    db $76
    ld d, [hl]
    ld a, b
    sbc c
    adc c
    ld e, c
    sbc b
    add [hl]
    ld hl, $4345
    ld [hl], $89
    sbc c
    xor e
    cp e
    call z, $8998
    add [hl]
    ld b, l
    and [hl]
    ld h, [hl]
    ld h, a
    adc c
    cp e
    xor c
    xor d
    cp d
    add a
    ld [hl], a
    db $76
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    ld a, d
    sbc b
    sbc c
    sbc b
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld a, b
    ld [hl], a
    adc c
    sbc c
    sbc b
    adc b
    adc b
    or a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add l
    inc [hl]
    db $76
    ld b, e
    ld b, a
    adc b
    adc c
    xor d
    cp h
    ld e, d
    adc b
    sbc d
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor c
    sbc c
    xor e
    xor c
    ld a, b
    adc b
    db $76
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld l, c
    sbc c
    adc b
    adc b
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld h, h
    ld [hl], $75
    inc [hl]
    xor b
    adc b
    sbc d
    xor e
    cp h
    cp c
    adc c
    sbc b
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    sbc c
    xor c
    sbc d
    ld l, d
    sbc b
    ld a, b
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc d
    sbc c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld h, a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    adc b
    adc b
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld h, [hl]
    ld a, b
    ld [hl], l
    ld h, a
    adc b
    ld [hl], a
    sbc c
    sbc b
    adc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    adc b
    ld [hl], a
    adc c
    sbc b
    adc b
    sbc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, l
    ld a, b
    add a
    ld h, a
    sbc c
    adc b
    adc c
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc c
    sbc b
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    sbc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld h, [hl]
    ld sp, $4334
    ld hl, $5645
    ld [hl], a
    ld a, b
    sbc e
    call z, $aba9
    jp z, Jump_019_7798

    ld h, l
    ld h, [hl]
    ld d, e
    dec [hl]
    ld [hl], a
    ld h, l
    ld l, b
    sbc c
    sbc c
    sbc c
    sbc c
    xor e
    xor b
    ld [hl], a
    adc b
    db $76
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld d, [hl]
    ld a, b
    sbc b
    ld a, b
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    adc b
    ld h, [hl]
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
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
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
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
    adc c
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
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [$8888], sp
    ld [hl], a
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
    adc b
    ld [hl], c
    ld d, c
    inc sp
    ld hl, $6603
    adc d
    cp e
    cp l
    rst $38
    cp $cc
    db $ed
    ret


    db $76
    ld h, l
    ld b, l
    ld d, e
    ld [hl+], a
    ld b, [hl]
    ld [hl], a
    ld h, a
    sbc d
    cp e
    call z, $abbb
    cp d
    add [hl]
    ld h, a
    db $76
    ld d, h
    ld b, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    xor d
    xor c
    sbc c
    xor d
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    db $76
    sub $77
    adc b
    sbc b
    ld d, b
    dec d
    ld h, l
    jr nc, jr_019_588e

    db $76
    sbc d
    sbc d
    cp l
    rst $38
    db $eb
    cp h
    ld a, h
    and a
    db $76
    ld h, l
    ld d, [hl]
    ld d, e
    inc h
    ld h, a
    add [hl]
    ld h, a
    xor e
    cp e
    cp e
    xor d

jr_019_588e:
    xor e
    cp c
    db $76
    ld a, b
    add [hl]
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    xor c
    sbc b
    sbc c
    xor c
    sbc c
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
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
    ld [hl], a
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
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
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
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
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
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
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
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld l, c
    and a
    ld a, b
    sbc b
    ld a, b
    adc b
    adc c
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld l, b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    sub a
    ld [hl], a
    sbc c
    db $76
    sbc d
    ld [hl], l
    ld a, b
    db $76
    adc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    adc c
    add l
    ld l, c
    add a
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    sbc b
    ld [hl], a
    adc c
    add [hl]
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    add a
    ld a, c
    sub a
    ld a, c
    sbc b
    ld [hl], a
    add a
    adc c
    add a
    ld l, b
    and a
    ld l, b
    sbc c
    db $76
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld h, [hl]
    adc b
    ld h, [hl]
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    sub a
    ld a, b
    sbc b
    ld [hl], a
    add a
    ld l, b
    add a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    add a
    ld a, c
    add [hl]
    ld l, b
    sub a
    ld a, b
    adc b
    adc b
    db $76
    ld a, c
    add [hl]
    ld l, c
    sub [hl]
    ld l, c
    sub [hl]
    ld a, c
    add [hl]
    adc d
    add [hl]
    ld a, c
    sub a
    ld l, c
    sub [hl]
    ld l, c
    add [hl]
    ld a, b
    add [hl]
    ld a, c
    add l
    adc c
    db $76
    adc c
    add [hl]
    ld a, d
    add [hl]
    adc c
    ld [hl], a
    add a
    ld [hl], a
    sbc c
    ld h, [hl]
    adc c
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld a, c
    add [hl]
    adc c
    add a
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    db $76
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    sbc c
    ld [hl], l
    adc d
    ld h, [hl]
    adc c
    ld h, [hl]
    sbc c
    ld h, a
    sbc b
    ld h, a
    adc b
    ld a, b
    add a
    ld l, c
    and [hl]
    ld l, c
    and a
    ld e, b
    xor b
    add a
    sub a
    ld l, b
    add [hl]
    adc b
    db $76
    adc c
    ld [hl], l
    adc c
    db $76
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    adc c
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    ld [hl], a
    sbc b
    ld h, a
    sbc c
    db $76
    sbc b
    ld [hl], a
    ld a, b
    db $76
    adc c
    ld h, [hl]
    sbc d
    add [hl]
    adc c
    add [hl]
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    sbc b
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    add [hl]
    ld l, c
    sub a
    ld l, b
    sub a
    ld l, b
    sub a
    ld l, b
    sub a
    ld h, a
    add a
    adc b
    add [hl]
    adc c
    add a
    ld a, c
    sub a
    ld l, b
    add a
    ld a, c
    db $76
    ld a, b
    db $76
    ld l, b
    add [hl]
    ld h, a
    add a
    ld a, b
    sub a
    ld a, c
    sub a
    adc c
    add a
    ld a, c
    sub [hl]
    ld a, d
    sub [hl]
    ld l, b
    and a
    ld l, b
    add a
    ld a, b
    db $76
    ld a, c
    add l
    ld a, c
    add l
    sbc c
    db $76
    ld a, c
    ld [hl], l
    ld a, d
    ld [hl], l
    adc c
    ld h, [hl]
    adc c
    ld h, [hl]
    sbc d
    db $76
    sbc c
    ld h, [hl]
    sbc c
    ld [hl], a
    xor b
    ld [hl], a
    adc c
    ld [hl], a
    sbc b
    ld a, b
    sbc b
    ld l, b
    sub a
    ld l, b
    sub a
    ld l, c
    sub [hl]
    ld l, b
    and a
    ld d, a
    add a
    ld l, b
    add a
    adc c
    sub [hl]
    ld l, d
    sub [hl]
    ld l, b
    sub a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc c
    db $76
    adc c
    add [hl]
    adc d
    add a
    ld a, b
    adc b
    db $76
    adc c
    add a
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    sub a
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    adc b
    adc b
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    sub [hl]
    ld l, d
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld h, [hl]
    sbc c
    ld h, [hl]
    adc b
    db $76
    adc b
    ld h, [hl]
    xor c
    ld h, [hl]
    sbc b
    ld h, a
    sbc b
    db $76
    adc c
    ld [hl], a
    add a
    adc b
    sbc b
    ld [hl], a
    adc b
    adc b
    ld h, [hl]
    ld a, b
    db $76
    adc c
    add a
    adc c
    add [hl]
    adc d
    db $76
    sbc c
    add a
    ld a, c
    add [hl]
    ld a, d
    add [hl]
    ld a, c
    ld [hl], a
    adc c
    db $76
    ld a, c
    add [hl]
    ld a, b
    db $76
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    sbc b
    ld h, a
    sbc c
    add a
    add $34
    ld d, l
    inc sp
    inc sp
    inc [hl]
    ld d, [hl]
    ld h, l
    ld h, a
    sbc d
    xor d
    cp e
    cp h
    db $dd
    call c, $9cbb
    cp d
    xor b
    adc b
    add a
    db $76
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    ld a, c
    xor d
    cp d
    xor c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    and a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    ld [hl], l
    ld b, a
    db $76
    ld b, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, l
    ld l, b
    sbc c
    sbc c
    ld l, d
    cp h
    call c, $bcbb
    res 5, d
    sbc c
    adc c
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld a, b
    adc c
    adc c
    sbc c
    sbc d
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    adc b
    ld d, h
    ld d, a
    ld h, h
    ld b, h
    inc [hl]
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld a, c
    sbc c
    sbc d
    xor e
    call $bbdc
    call z, $a9ca
    sbc b
    adc b
    db $76
    ld d, l
    add [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    db $76
    ld h, a
    adc b
    sbc c
    sbc c
    sbc d
    xor d
    xor c
    sbc c
    sbc d
    sbc c
    ld l, b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    adc c
    sbc c
    sbc d
    cp e
    cp e
    xor d
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    adc b
    adc b
    adc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    adc b
    adc b
    ld a, b
    sbc b
    sbc c
    sbc b
    adc c
    adc b
    add a
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
    add l
    ld d, [hl]
    db $76
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc b
    adc c
    cp d
    xor d
    xor c
    sbc c
    ld a, c
    add a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
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
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    adc b
    ld a, b
    add a
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
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    adc b
    adc c
    adc c
    adc b
    sbc c
    sbc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
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
    adc b
    adc b
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
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
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
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
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
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
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
    add a
    ld [hl], a
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
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
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
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc c
    sbc b
    add a
    adc b
    sbc c
    sbc c
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
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
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
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
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
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
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ld a, b
    adc b
    adc b
    adc c
    adc c
    sbc c
    adc c
    sbc c
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
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    adc b
    adc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld h, l
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
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
    adc c
    sbc b
    sbc c
    sbc c
    sbc b
    adc c
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
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
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
    ld a, b
    adc b
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    add a
    db $76
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
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
    adc b
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    db $76
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
    adc b
    adc b
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
    ld [hl], a
    ld [hl], a
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
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
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
    ld a, b
    adc b
    adc c
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
    ld l, b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, l
    add [hl]
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

jr_019_61fa:
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
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
    adc b
    adc c
    adc b
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
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    ret z

    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    jr nz, jr_019_623a

jr_019_623a:
    nop
    nop
    ld de, $8a25
    cp e
    sbc l
    xor $ff
    db $fd
    res 7, d
    sbc b
    db $76
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    adc d
    xor d
    xor d
    sbc c
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    jr jr_019_61fa

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
    ld [hl], h
    nop
    nop
    nop
    ld d, d
    ld [hl+], a
    ld b, a
    xor e
    call z, $fede
    rst $38
    db $ec
    cp e
    cp d
    sbc b
    db $76
    ld d, l
    ld d, [hl]
    ld h, l
    db $76
    ld h, a
    ld a, b
    sbc c
    sbc c
    sbc d
    xor d
    sbc c
    sbc b
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
    adc c
    sbc b
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
    ld h, d
    nop
    nop
    nop
    ld [de], a
    inc hl
    ld l, c
    cp h
    call $efee
    rst $38
    db $ec
    cp e
    xor c
    ld [hl], a
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc d
    xor c
    sbc c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc b
    adc b
    sbc c
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
    ld [hl], a
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
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    db $76
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sub a
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
    adc c
    sbc b
    adc b
    adc b
    sbc c
    adc c
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
    ld l, b
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld d, l
    add [hl]
    ld h, a
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
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc c
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
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    ld a, b
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
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    add a
    ld [hl], a
    add a
    adc b
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
    ld a, b
    adc b
    adc b
    adc c
    adc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc c
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
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
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
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    db $76
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sbc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
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
    ld a, b
    adc b

Call_019_645a:
    adc b
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    adc b
    adc c
    sbc b
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
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    ld h, [hl]
    ld d, [hl]
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
    adc b
    adc b
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
    add a
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
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
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
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    adc b
    sbc b
    sbc c
    sbc c
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
    ld l, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
    db $76
    ld h, l
    add [hl]
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
    ld a, b
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
    ld a, b
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
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
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
    adc b
    adc b
    sbc b
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
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
    ld a, b
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b

Call_019_6597:
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
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
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
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
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc c
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
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
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
    ld a, b
    rst $20
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], l
    stop
    nop
    ld de, $4711
    sbc e
    call z, $afde
    rst $38
    db $fd
    cp e
    cp d
    sbc b
    db $76
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    xor d
    sbc c
    xor d
    adc d
    xor d
    sbc c
    sbc b
    sbc b
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
    add hl, hl
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
    ld [hl], e
    nop
    nop
    ld bc, $6322
    ld e, b
    cp h
    call z, $ffde
    rst $38
    db $ec
    cp e
    cp d
    sbc b
    db $76
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    add a
    ld a, b
    sbc c
    sbc c
    sbc d
    xor d
    xor d

Jump_019_6687:
    sbc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    adc b
    adc b
    adc b
    adc c
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
    ld [hl], a
    ld [hl], d
    nop
    nop
    ld bc, $2322
    ld e, c

Call_019_66a7:
    cp h

Call_019_66a8:
    call $ffee
    rst $38
    call c, $a9bb
    sbc b
    db $76
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    cp b
    adc b
    ld h, b
    ld [bc], a
    ld d, a
    ld d, h
    ld l, h
    xor $ec
    cp d
    xor c
    add [hl]
    inc sp
    ld d, a
    ld [hl], a
    ld a, b
    ld a, h
    cp e
    xor c
    sbc c
    add a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    xor d
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add l
    nop
    ld [hl], $64
    scf
    adc $ed
    res 5, c
    sbc b
    ld d, e
    dec [hl]
    ld [hl], a
    ld [hl], a
    sbc e
    call z, $99ba
    sbc b
    ld [hl], l
    ld d, l
    ld h, a
    ld [hl], a
    adc c
    xor d
    adc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld c, b
    adc b
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld b, b
    inc bc
    ld d, [hl]
    ld h, e
    adc l
    db $ed
    db $db
    cp d
    xor c
    add l
    inc [hl]
    ld h, a
    ld [hl], a
    ld a, c
    cp h
    cp e
    xor c
    sbc c
    add a
    add l
    ld h, a
    ld [hl], a
    ld a, b
    sbc d
    xor c
    sbc c
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    xor b
    adc b
    ld [hl], d
    nop
    ld b, [hl]
    ld h, e
    ld c, c
    sbc $ed
    cp d
    xor d
    sub a
    ld b, e
    ld b, a
    ld [hl], a
    ld [hl], a
    ld l, h
    res 7, d
    sbc c
    add a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    xor d
    xor c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sub a
    db $10
    dec h
    ld h, l
    dec [hl]
    xor [hl]
    db $ed
    res 5, d
    sbc c
    ld h, h
    dec [hl]
    ld [hl], a
    ld [hl], a
    adc d
    call z, $a9bb
    sbc b
    db $76
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d
    ld a, c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld d, a
    adc b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld d, b
    ld [bc], a
    ld d, [hl]
    ld h, e
    ld l, e
    xor $dc
    cp d
    xor d
    add [hl]
    ld b, e
    ld d, a
    ld [hl], a
    ld a, b
    xor h
    res 7, c
    sbc c
    add a
    add l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    xor d
    sbc c
    add a
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_019_75a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_019_75ba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_019_76a9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_019_76b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_019_7798:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_019_77b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
