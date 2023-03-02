; disasSembly of "lsdj.gb"
SECTION "ROM Bank $008", ROMX[$4000], BANK[$8]

    ld h, b
    ld b, b
    nop
    ld b, e
    ld h, b
    ld b, h
    ld d, b
    ld b, l
    ld b, b
    ld e, l
    ld d, b
    ld e, a
    ld [hl], b
    ld h, d
    sub b
    ld [hl], h
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
    ld c, b
    ld d, h
    dec l
    ld c, h
    ld d, h
    dec l
    ld b, e
    ld e, c
    ld c, l
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
    nop
    nop
    ld d, h
    ld d, d
    dec l
    ld [hl], $30
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $bd68
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $db
    cp d
    sbc c
    ld [hl], a
    ld b, $44
    ld b, e
    ld [hl-], a
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_008_4082

jr_008_4082:
    nop
    nop
    nop
    ld de, $2210
    ld [de], a
    ld [de], a
    inc hl
    inc hl
    inc [hl]
    inc sp
    inc sp
    inc [hl]
    ld [hl], h
    ld b, h
    ld b, e
    ld b, h
    ld b, l
    ld b, l
    ld d, h
    ld b, [hl]
    ld b, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    db $76
    db $76
    ld [hl], a
    rst $30
    adc b
    ld a, c
    adc d
    adc d
    sbc e
    sbc e
    xor e
    cp h
    call z, $dece
    db $dd
    rst $28
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
    ld l, a
    rst $28
    db $ed
    db $ed
    db $ec
    call $cbcb
    xor e
    xor d
    xor c
    sbc c
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld h, $66
    ld h, l
    ld d, [hl]
    ld b, l
    ld b, l
    ld b, h
    ld b, e
    inc sp
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2231
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld hl, $2121
    ld [hl+], a
    ld hl, $2222
    ld [hl+], a
    inc hl
    ld h, d
    inc sp
    inc hl
    inc sp
    inc hl
    ld b, e
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ret z

    ld [hl], a
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    xor d
    xor d
    xor e
    xor e
    cp e
    cp e
    set 1, h
    set 1, h
    call $cddc
    call $dcdd
    db $dd
    call z, $dddc
    call c, $cddd
    call z, Call_008_7cdc
    res 7, e
    res 7, e
    cp e
    cp d
    xor d
    xor d
    xor d
    sbc c
    sbc d
    sbc b
    adc c
    adc b
    adc b
    ld b, a
    add a
    add [hl]
    add [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, h
    ld d, l
    ld b, l
    ld d, e
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc sp
    ld b, e
    ld b, e
    inc sp
    ld b, h
    ld b, e
    inc [hl]
    ld b, e
    ld b, h
    ld [hl], h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, l
    ld d, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    cp b
    ld l, b
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    xor b
    sbc c
    sbc d
    sbc d
    sbc d
    xor c
    xor e
    sbc d
    cp d
    xor d
    cp d
    xor e
    cp e
    xor e
    xor e
    cp e
    cp d
    cp e
    cp d
    cp d
    cp e
    xor e
    cp e
    xor e
    sbc d
    cp d
    xor d
    cp d
    xor d
    xor d
    xor d
    sbc c
    xor c
    xor c
    sbc d
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, a
    db $76
    db $76
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    ld a, c
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    xor c
    xor c
    sbc d
    xor d
    sbc d
    sbc d
    sbc c
    sbc d
    sbc c
    xor c
    xor d
    adc d
    sbc d
    sbc c
    sbc c
    sbc c
    xor c
    xor b
    xor b
    sbc c
    adc d
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add a
    ld h, l
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    sub a
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc c
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    adc c
    adc c
    adc c
    xor b
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    adc c
    adc b
    sbc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    adc c
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    sbc c
    adc b
    adc c
    adc b
    adc b
    sbc b
    sbc b
    adc c
    adc b
    adc c
    adc b
    adc b
    sub a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld l, b
    adc b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sub a
    add a
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    add a
    sbc b
    ld a, c
    adc b
    adc b
    add a
    ld sp, hl
    cp d
    jp z, $aaba

    sbc b
    add a
    ld hl, $0020
    nop
    ld de, $8943
    xor b
    cp $5f
    rst $28
    cp $ff
    sbc $cd
    ld a, d
    ld [hl], a
    ld [hl-], a
    inc sp
    nop
    jr nz, @+$22

    nop
    ld [hl+], a
    ld b, a
    inc bc
    cp h
    jp c, $feaf

    rst $28
    db $fd
    xor $cc
    sbc h
    add d
    ld a, c
    ld b, d
    ld [hl-], a
    ld hl, $7111
    ld b, b
    dec b
    ld b, [hl]
    ld h, [hl]
    adc c
    xor e
    cp h
    db $dd
    adc $ec
    db $ed
    call z, $a8ca
    sub a
    and l
    ld d, h
    ld h, d
    inc hl
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld b, l
    ld d, l
    adc b
    ld l, d
    sbc e
    cp c
    db $dd
    adc $6b
    db $ec
    res 7, e
    xor c
    sbc c
    ld a, b
    ld h, [hl]
    ld d, h
    ld d, l
    inc sp
    ld b, e
    ld b, h
    inc sp
    ld b, e
    ld d, l
    db $76
    ld l, b
    ld c, c
    adc b
    xor c
    cp d
    cp e
    xor h
    res 7, h
    xor e
    cp h
    sbc c
    sbc c
    sub a
    ld [hl], a
    or [hl]
    ld h, [hl]
    ld h, h
    dec [hl]
    ld d, h
    dec [hl]
    ld b, h
    ld d, e
    ld d, l
    ld d, a
    ld h, [hl]
    ld [hl], a
    add a
    sbc b
    sbc d
    sbc c
    ld l, d
    xor d
    cp e
    xor e
    cp c
    sbc c
    cp c
    sbc c
    adc b
    sub a
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, h
    ld b, l
    sub l
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    add a
    adc c
    sbc c
    sbc d
    sbc c
    cp c
    xor d
    xor d
    ld l, d
    xor c
    adc d
    sbc b
    sub a
    add a
    add [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, h
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    xor c
    adc c
    xor c
    adc b
    sbc b
    ld a, b
    ld [hl], a
    add a
    db $76
    db $76
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    sbc c
    sbc b
    sbc c
    xor c
    sbc b
    xor b
    sbc c
    adc c
    adc c
    adc b
    adc b
    add a
    add a
    ld [hl], a
    sub a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    adc b
    ld a, b
    adc b
    sub a
    sbc b
    ld a, c
    sbc b
    sbc b
    sbc b
    adc c
    sbc b
    adc b
    add a
    sbc b
    ld a, b
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    adc b
    add a
    sbc b
    adc c
    adc c
    adc b
    sbc b
    sbc b
    ld [hl], a
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    ld l, b
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    sub a
    adc c
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add [hl]
    add a
    ld l, b
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc b
    ld a, b
    adc c
    add a
    adc b
    adc b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld c, b
    ld a, b
    ld e, d
    ld d, [hl]
    ld [hl], a
    add l
    sub [hl]
    ld h, e
    db $76
    add a
    and [hl]
    sub [hl]
    and l
    and a
    ld a, c
    ld a, $89
    add [hl]
    ld c, h
    rrca
    inc c
    ld e, b
    ld [hl], a
    adc b
    ld e, l
    ld a, [hl-]
    ld h, a
    ld l, d
    add hl, sp
    sub l
    or h
    or d
    adc c
    ld c, e
    ld h, [hl]
    and [hl]
    and [hl]
    ld a, d
    add [hl]
    or d
    or a
    sub a
    db $76
    call nz, Call_008_6798
    or [hl]
    adc b
    db $76
    and [hl]
    ld l, c
    ld a, e
    inc a
    ld l, b
    ld l, c
    ld l, b
    add a
    ld [hl], a
    add l
    adc c
    ld [hl], a
    ld a, d
    add h
    rst $00
    db $76
    sub l
    and [hl]
    and l
    sbc b
    ld l, b
    or d
    or l
    call nz, $8997
    ld e, c
    ld l, b
    ld a, d
    inc a
    ld c, c
    cp c
    ld l, d
    ld a, b
    and l
    and [hl]
    ld a, c
    ld l, c
    ld e, c
    sub h
    call nz, $88c5
    ld l, d
    ld [hl], a
    sub [hl]
    sub h
    ld d, h
    sub a
    sub [hl]
    add a
    add a
    sub [hl]
    and [hl]
    sbc b
    ld e, d
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld l, e
    ld l, c
    ld l, c
    adc c
    adc b
    add [hl]
    sub a
    ld a, b
    sub [hl]
    adc b
    add a
    sub [hl]
    and l
    sub [hl]
    sub a
    add a
    sub l
    sbc b
    add a
    ld h, a
    ld [hl], a
    add a
    sub [hl]
    ld a, c
    ld l, c
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    adc b
    adc c
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    sub a
    add a
    sub l
    sbc c
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    adc b
    ld l, b
    sub a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, c
    sub a
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    ld [hl], a
    adc b
    add e
    jp nz, Jump_008_76c4

    ld l, b
    ld l, b
    db $76
    ld [hl], l
    add [hl]
    ld l, b
    ld d, [hl]
    add [hl]
    add [hl]
    jr c, jr_008_45bb

    ld c, c
    ld c, b
    ld [hl], h
    sub l
    add e
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld h, e
    and h
    sub h
    or d
    sub h
    ld d, h
    sub h
    and h
    sub h
    ld l, c
    ld d, l
    sub l
    ld h, [hl]
    sub [hl]
    ld c, e
    ld b, a
    ld e, c
    ld c, b
    ld h, [hl]
    ld [hl], a
    add l
    xor d
    ld c, b
    ld l, b
    ld d, a
    db $76
    ld l, b
    ld d, a
    ld l, b
    ld [hl], h
    or h
    add l
    ret nz

    push bc
    db $76
    sub [hl]
    sub l
    ld b, l
    adc c
    ld e, b
    ld e, c
    ld d, a
    sub [hl]
    add [hl]
    sub [hl]
    add [hl]
    ld a, d
    ld a, [hl-]
    ld a, b
    ld l, c
    ld e, d
    ld e, b
    ld e, d
    xor d
    ld c, d
    ld h, a
    ld [hl], a
    add a
    or l
    add [hl]
    or e
    and [hl]
    ld l, b
    ld h, a
    add [hl]
    sub a
    ld a, c
    ld h, [hl]
    sub [hl]
    or [hl]
    adc c
    ld c, [hl]
    ld a, [hl+]
    ld e, b
    ld a, c
    ld e, d
    ld c, d
    ld h, a
    ld a, d
    ld c, e

jr_008_45bb:
    ld l, b
    add [hl]
    sub l
    sbc c
    add [hl]
    ld b, h
    pop de
    rst $00
    ld l, d
    ld l, b
    ld a, b
    sub [hl]
    sub l
    add a
    sub a
    add a
    sbc c
    ld l, e
    ld h, a
    add a
    ld a, e
    xor h
    ld e, e
    ld a, b
    ld e, h
    ld l, c
    ld e, [hl]
    ld a, [hl-]
    and [hl]
    and [hl]
    and a
    adc c
    adc b
    adc b
    ld a, b
    and l
    sbc b
    ld d, l
    and a
    sub [hl]
    or [hl]
    sbc b
    and a
    adc d
    ld e, h
    ld e, e
    ld l, c
    and [hl]
    ld l, e
    ld l, c
    adc d
    ld e, h
    ld c, h
    adc c
    adc b
    ld l, d
    ld e, e
    ld a, d
    ld l, d
    add a
    adc b
    sub a
    sbc b
    and a
    sub a
    sbc c
    ld a, b
    xor b
    adc b
    xor c
    adc b
    sub a
    adc b
    adc d
    ld l, c
    ld a, e
    ld l, c
    ld a, b
    adc c
    ld e, l
    dec a
    ld c, l
    ld e, e
    ld l, b
    push bc
    xor b
    ld a, c
    sub a
    sub a
    call nz, $b5b6
    push bc
    sbc b
    and a
    adc b
    or h
    xor b
    adc c
    ld a, d
    ld a, b
    sub l
    cp b
    ld a, c
    ld a, e
    inc a
    ld c, h
    ld l, $67
    or a
    sub a
    sbc b
    ld l, h
    ld l, b
    sbc b
    add [hl]
    push bc
    ld a, c
    sub l
    xor c
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    sub l
    and [hl]
    or l
    or a
    ld a, h
    ld c, c
    ld a, b
    sbc b
    ld a, d
    ld l, c
    ld a, d
    ld c, h
    ld e, c
    ld l, d
    ld l, d
    ld a, c
    and [hl]
    sub a
    sub a
    sub [hl]
    or a
    sub a
    adc b
    adc b
    rla
    and h
    or [hl]
    adc b
    and [hl]
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    sub [hl]
    and a
    add a
    adc d
    ld l, c
    ld a, b
    ld l, [hl]
    cp h
    ld [hl], a
    sub a
    sub a
    adc b
    sub [hl]
    adc d
    db $76
    sbc b
    add a
    or e
    add $89
    ld l, c
    sub h
    call nz, $a696
    adc c
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld e, h
    ld c, h
    dec sp
    ld e, d
    ld a, c
    ld l, b
    ld a, c
    ld l, d
    ld l, b
    ld [hl], l
    or h
    push bc
    and a
    sub a
    ld a, b
    sub [hl]
    sub l
    call nz, $a6a6
    adc c
    ld l, d
    ld [hl], a
    sbc b
    ld l, c
    xor b
    ld e, d
    ld a, b
    ld a, d
    ld e, c
    ld c, l
    inc e
    ld l, c
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    adc e
    ld e, d
    ld e, c
    ld b, e
    db $d3
    and [hl]
    sub h
    or l
    sub [hl]
    adc b
    ld l, c
    sub [hl]
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    adc c
    ld l, d
    ld c, e
    ld a, h
    ld e, b
    sub a
    ld a, b
    ld l, c
    ld e, c
    ld e, e
    ld l, c
    ld [hl], a
    sub l
    or l
    sub [hl]
    sub [hl]
    sub a
    add a
    adc b
    add a
    add a
    and a
    sub l
    sub [hl]
    adc b
    sub [hl]
    sbc c
    ld e, b
    sub [hl]
    ld a, b
    ld a, b
    ld e, d
    ld e, c
    ld l, d
    ld c, d
    db $76
    add a
    sub [hl]
    ld a, d
    ld [hl], l
    and a
    add a
    sub [hl]
    adc b
    db $76
    add a
    sub [hl]
    and [hl]
    ld a, c
    sub h
    and a
    adc c
    ld [hl], a
    add a
    sub [hl]
    ld e, e
    ld c, d
    ld c, e
    ld a, [hl-]
    ld l, c
    ld e, e
    ld e, d
    ld e, d
    ld l, b
    ld [hl], a
    add a
    sub [hl]
    xor c
    ld e, b
    ld a, b
    db $76
    and l
    sub [hl]
    ld [hl], a
    add a
    add a
    add [hl]
    and h
    or l
    sbc b
    ld a, b
    ld e, c
    sub l
    ld h, [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld e, d
    ld e, c
    ld e, c
    ld l, d
    ld e, b
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld e, c
    ld b, a
    sub l
    sub l
    sub [hl]
    add l
    or h
    sub [hl]
    sub [hl]
    add [hl]
    sub h
    or h
    sub a
    ld l, c
    ld l, b
    adc b
    ld e, d
    ld a, d
    ld e, e
    ld c, e
    ld l, b
    add a
    add [hl]
    sub l
    sub a
    ld a, b
    ld e, d
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld h, [hl]
    sub [hl]
    adc b
    ld [hl], a
    sub [hl]
    sub [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    ld e, c
    ld l, b
    ld e, d
    ld e, b
    ld [hl], a
    ld a, c
    ld l, c
    adc c
    ld e, b
    add a
    ld l, b
    add [hl]
    add a
    db $76
    sub [hl]
    ld a, b
    ld [hl], a
    sub a
    add [hl]
    sub [hl]
    sub l
    and l
    sub a
    add a
    ld l, d
    ld e, b
    sub l
    sub [hl]
    add a
    ld l, c
    ld l, c
    ld e, c
    ld e, d
    ld h, a
    ld a, c
    ld l, c
    ld l, c
    ld e, c
    ld l, b
    ld [hl], l
    sub a
    add [hl]
    sub a
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    add a
    add a
    sub l
    sub [hl]
    and l
    sub [hl]
    add a
    sub a
    and a
    ld a, c
    ld h, a
    ld [hl], a
    ld a, c
    inc a
    ld c, d
    dec l
    ld c, b
    ld a, c
    ld l, b
    sub l
    sub [hl]
    sbc b
    ld e, c
    add [hl]
    ld d, a
    ld l, c
    ld [hl], a
    ld a, b
    and e
    call nz, Call_008_7887
    ld a, b
    ld l, b
    ld [hl], a
    db $76
    sub a
    ld l, d
    ld l, b
    ld e, e
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld l, b
    sub h
    sbc b
    ld e, d
    ld c, e
    ld e, d
    ld e, c
    ld l, b
    ld [hl], a
    sub [hl]
    sub [hl]
    ld [hl], a
    adc b
    add l
    sub l
    and l
    sub a
    add [hl]
    add [hl]
    add a
    ld a, b
    ld l, b
    ld l, b
    ld l, d
    ld e, c
    ld [hl], a
    add [hl]
    sub a
    adc b
    ld l, c
    ld l, d
    ld l, b
    add [hl]
    sub a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub l
    and [hl]
    and h
    or [hl]
    ld [hl], a
    ld d, [hl]
    and l
    and h
    adc c
    ld a, b
    ld a, b
    ld a, b
    add a
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld l, c
    ld h, a
    and l
    adc b
    ld a, c
    ld e, d
    ld [hl], a
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    add [hl]
    sub [hl]
    and l
    sub l
    sub [hl]
    sub [hl]
    add [hl]
    sub l
    sbc b
    ld a, b
    ld e, h
    dec sp
    ld c, d
    ld l, b
    ld l, b
    add a
    add a
    ld a, b
    ld l, d
    ld e, b
    add [hl]
    add a
    ld [hl], a
    ld l, c
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sub h
    and [hl]
    and h
    and l
    sub [hl]
    sbc b
    ld c, e
    ld e, b
    add l
    or h
    and [hl]
    adc b
    or a
    adc b
    db $76
    adc b
    ld l, c
    ld l, b
    adc b
    ld a, b
    ld l, d
    ld l, b
    add a
    ld a, b
    ld l, b
    add l
    and l
    and h
    ld [hl], h
    sub a
    add a
    ld a, b
    add a
    add a
    sub l
    or l
    adc b
    add a
    adc b
    ld h, a
    sub a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, c
    ld l, c
    ld e, c
    ld h, [hl]
    sbc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    and h
    adc b
    ld l, b
    add a
    add a
    ld l, d
    ld c, e
    ld e, c
    ld l, b
    ld l, d
    ld l, b
    ld l, c
    ld a, c
    ld l, d
    ld c, d
    ld a, b
    add [hl]
    ld h, a
    adc b
    ld a, b
    ld l, c
    ld l, b
    sub h
    sub [hl]
    or e
    and a
    add a
    add a
    add [hl]
    sub l
    sub a
    ld a, c
    ld l, b
    adc b
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    sub l
    sub [hl]
    ld a, c
    ld l, c
    ld e, e
    ld c, d
    ld e, c
    ld [hl], a
    add a
    sub a
    adc b
    ld [hl], a
    add l
    sub [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    adc b
    ld l, b
    add [hl]
    sub a
    add [hl]
    adc b
    ld l, c
    ld e, b
    ld l, d
    ld l, b
    ld l, b
    ld a, b
    add a
    add [hl]
    adc c
    ld l, c
    ld l, b
    add a
    add [hl]
    ld h, [hl]
    adc b
    ld [hl], a
    adc c
    ld e, c
    add [hl]
    sub [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld a, c
    ld l, c
    sbc b
    ld l, c
    ld h, a
    adc b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    sub h
    or h
    sbc b
    ld [hl], a
    add a
    sub l
    or l
    db $76
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    ld a, c
    ld l, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    add a
    sub a
    ld l, c
    sbc b
    add [hl]
    sub l
    sub a
    ld l, b
    add a
    sub l
    and [hl]
    and l
    or l
    sub a
    ld a, b
    add a
    sub a
    add [hl]
    and l
    and a
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld e, e
    ld e, d
    ld l, c
    ld l, d
    ld l, c
    ld l, b
    add [hl]
    db $76
    sub [hl]
    add a
    sub [hl]
    sub a
    add [hl]
    ld a, d
    db $76
    and [hl]
    adc b
    adc b
    ld e, c
    add [hl]
    sbc b
    ld l, b
    add a
    xor b
    add [hl]
    ld a, c
    ld e, c
    ld e, d
    ld e, c
    ld a, b
    ld l, c
    ld l, b
    add a
    ld a, c
    ld a, b
    ld l, c
    add [hl]
    and l
    sub l
    add l
    sub a
    sub l
    sub [hl]
    add a
    sub a
    adc b
    ld a, b
    add a
    and l
    sub [hl]
    adc b
    ld l, d
    ld e, c
    ld [hl], a
    sub [hl]
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    and l
    and h
    or l
    and l
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, c
    ld e, d
    ld c, h
    ld c, b
    ld a, b
    adc b
    add a
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    add [hl]
    sub [hl]
    add a
    add a
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, c
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld l, d
    ld e, d
    ld e, c
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld l, b
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    sub a
    add a
    and l
    and [hl]
    sub [hl]
    sbc b
    ld a, b
    add [hl]
    sub [hl]
    and l
    sub a
    add a
    add a
    ld l, d
    ld l, b
    db $76
    add a
    sub a
    ld a, b
    add a
    adc b
    ld l, c
    ld a, b
    ld l, c
    ld l, b
    sub [hl]
    sub [hl]
    sub a
    sub h
    or h
    xor b
    ld l, b
    ld d, l
    or h
    and a
    ld a, c
    ld l, d
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, c
    ld a, c
    ld l, c
    ld l, c
    sbc d
    ld e, b
    adc b
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    add l
    and l
    sub a
    ld a, c
    ld e, d
    ld l, b
    add [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    sub a
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld e, d
    ld e, c
    ld l, c
    ld l, d
    ld e, c
    ld a, b
    adc c
    ld [hl], a
    sub a
    add a
    ld a, c
    ld e, b
    sub a
    add [hl]
    and h
    and [hl]
    add a
    add a
    ld a, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld h, a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld l, d
    ld e, c
    ld l, c
    ld [hl], a
    add a
    sub a
    ld a, d
    ld e, d
    ld l, c
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    add [hl]
    sub [hl]
    sbc b
    ld a, b
    ld e, c
    ld d, l
    adc c
    ld l, c
    ld l, d
    ld e, c
    ld l, c
    ld l, d
    ld l, c
    ld l, b
    add a
    sub l
    adc c
    ld l, b
    add a
    add a
    ld e, e
    ld a, b
    add [hl]
    add a
    sub [hl]
    sbc b
    ld h, a
    sub a
    ld l, c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, c
    ld l, c
    ld e, d
    ld e, c
    ld a, b
    xor c
    ld l, c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    add [hl]
    add l
    sub l
    and l
    sub [hl]
    adc b
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld a, c
    ld l, b
    add [hl]
    sub a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    add [hl]
    sub a
    ld [hl], a
    add a
    sub [hl]
    sub l
    and [hl]
    and l
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, c
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    ld a, c
    ld l, b
    sub [hl]
    and l
    adc b
    ld a, b
    adc b
    ld l, d
    ld [hl], a
    sub [hl]
    sub [hl]
    sub h
    sub a
    add a
    ld a, b
    ld a, b
    ld a, d
    ld e, c
    ld a, b
    add a
    add [hl]
    adc b
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    and [hl]
    ld l, c
    add a
    adc b
    ld [hl], a
    sub [hl]
    add [hl]
    sub [hl]
    sub [hl]
    sub l
    adc b
    add a
    add a
    ld a, c
    ld l, b
    add a
    add a
    ld a, b
    ld l, c
    ld l, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    and l
    sub [hl]
    and l
    and [hl]
    and h
    and a
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld a, c
    ld l, d
    ld e, c
    db $76
    add a
    ld a, b
    ld l, b
    ld l, c
    add [hl]
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    sub l
    sub [hl]
    sub a
    adc b
    ld [hl], a
    add a
    add a
    sbc b
    ld l, c
    ld l, c
    ld l, d
    ld e, d
    ld e, d
    ld l, c
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    sub a
    sub [hl]
    add [hl]
    add a
    add a
    add a
    add [hl]
    and [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, c
    adc c
    ld l, c
    ld l, c
    db $76
    and l
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld l, b
    ld d, [hl]
    sub [hl]
    and l
    sub a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, c
    ld e, d
    ld l, b
    ld a, b
    adc b
    ld a, c
    adc e
    ld e, c
    ld l, c
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    and l
    sbc b
    ld a, c
    ld l, c
    ld [hl], a
    ld e, b
    ld [hl], a
    adc b
    ld a, b
    ld l, c
    add a
    adc b
    ld e, d
    ld l, b
    ld l, d
    ld e, c
    ld l, c
    db $76
    and a
    ld l, c
    ld l, c
    adc d
    ld [hl], a
    sub [hl]
    add a
    sub [hl]
    adc b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    sub a
    sub [hl]
    sub a
    add [hl]
    and [hl]
    adc b
    ld [hl], a
    ld a, d
    ld l, c
    ld l, c
    ld [hl], a
    sbc b
    ld l, c
    ld [hl], a
    adc b
    ld l, d
    ld e, c
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    add a
    sub [hl]
    sub a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, c
    ld a, b
    ld l, b
    sub a
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    and l
    sbc b
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    add a
    ld a, b
    ld l, c
    ld a, c
    ld l, d
    ld l, b
    adc b
    ld a, b
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld l, c
    add a
    ld a, c
    ld [hl], a
    sub a
    sub l
    sbc b
    add [hl]
    add a
    add a
    sub [hl]
    adc b
    ld l, c
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld e, c
    ld l, c
    ld [hl], a
    adc b
    ld l, c
    db $76
    sub [hl]
    and l
    and a
    add [hl]
    and l
    and [hl]
    ld a, b
    ld l, d
    ld l, b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, b
    sub l
    and a
    add a
    add a
    add [hl]
    adc b
    ld a, b
    add a
    ld a, c
    ld a, c
    ld e, d
    ld l, b
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    sub [hl]
    adc b
    ld l, c
    ld l, c
    ld l, b
    add l
    and a
    add [hl]
    sub [hl]
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    adc b
    add [hl]
    adc b
    ld a, b
    adc c
    ld e, d
    ld a, b
    ld a, b
    ld a, b
    sbc b
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    sub l
    and [hl]
    sub [hl]
    ld h, [hl]
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld l, d
    ld l, b
    ld l, b
    ld a, c
    ld l, c
    ld l, c
    ld e, c
    ld a, c
    add a
    add a
    sub a
    add a
    ld [hl], a
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, b
    adc b
    db $76
    sub [hl]
    add a
    sub a
    xor c
    ld l, b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    ld l, d
    ld e, b
    add a
    adc b
    ld l, b
    ld a, b
    add [hl]
    db $76
    adc b
    add [hl]
    adc b
    add [hl]
    sub [hl]
    sub [hl]
    and l
    sub a
    add [hl]
    adc d
    ld e, c
    ld [hl], a
    add a
    adc b
    ld l, c
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld e, c
    ld [hl], a
    sub [hl]
    add [hl]
    add a
    add a
    adc b
    ld a, b
    db $76
    sbc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    sub l
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld a, b
    add [hl]
    ld h, a
    ld a, b
    ld l, c
    ld l, d
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    add a
    add [hl]
    add a
    sub [hl]
    sub a
    adc b
    adc c
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld l, d
    ld e, d
    ld e, c
    ld a, b
    add a
    sbc b
    ld a, c
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    add l
    and [hl]
    add [hl]
    sub l
    sbc b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add [hl]
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    add a
    add [hl]
    sub a
    ld l, c
    ld [hl], a
    add a
    add [hl]
    sub a
    sub l
    sub [hl]
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    and a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add [hl]
    ld [hl], l
    and [hl]
    sub [hl]
    sub a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    sub a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub l
    and l
    and a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    add [hl]
    sub a
    add a
    sub a
    ld a, c
    ld l, c
    ld [hl], a
    ld a, c
    ld l, b
    ld a, c
    ld l, c
    ld e, d
    ld l, b
    ld [hl], a
    sub [hl]
    sub a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    add a
    sub l
    sub [hl]
    and l
    and [hl]
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    adc b
    add a
    ld a, c
    ld l, b
    ld l, c
    ld l, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    sub [hl]
    sub [hl]
    add a
    sub [hl]
    sbc b
    add [hl]
    sub [hl]
    add a
    add a
    add a
    ld a, c
    adc b
    ld a, b
    adc b
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld l, d
    ld e, c
    ld a, b
    ld a, b
    sbc c
    ld a, c
    ld l, b
    add [hl]
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    db $76
    sub [hl]
    ld [hl], a
    and h
    sub a
    add [hl]
    sub a
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld e, c
    ld l, b
    add a
    sbc b
    ld l, b
    adc b
    ld [hl], a
    add a
    sub [hl]
    add a
    add [hl]
    sub a
    add a
    add a
    add [hl]
    and l
    and [hl]
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc c
    ld e, c
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld e, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    sub [hl]
    add [hl]
    and [hl]
    sub a
    add [hl]
    add a
    ld l, c
    ld l, c
    ld a, c
    ld l, b
    add a
    add [hl]
    adc b
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub l
    sub [hl]
    sub [hl]
    adc b
    ld l, c
    ld a, b
    add [hl]
    add [hl]
    sub a
    adc b
    ld l, c
    ld e, c
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    ld [hl], a
    ld a, b
    ld l, c
    ld l, b
    db $76
    adc b
    ld [hl], a
    add [hl]
    sub [hl]
    add [hl]
    sub a
    db $76
    sub [hl]
    add a
    add [hl]
    and a
    add [hl]
    sub [hl]
    adc c
    ld l, b
    ld [hl], a
    adc b
    ld l, d
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    ld l, b
    ld l, b
    add a
    ld a, b
    db $76
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, c
    ld h, a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld e, c
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub [hl]
    add a
    ld l, c
    ld a, b
    add a
    adc b
    add [hl]
    sub [hl]
    and [hl]
    add a
    ld a, c
    ld l, c
    sbc b
    ld a, b
    ld l, c
    ld l, c
    ld a, b
    ld l, b
    sub a
    ld a, b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld a, b
    ld d, [hl]
    sub [hl]
    sub a
    sub [hl]
    add a
    sub [hl]
    sub [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    sbc d
    ld l, b
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub l
    and a
    add [hl]
    sub a
    add a
    add a
    add a
    ld d, a
    add a
    add a
    adc c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld l, c
    ld e, d
    sbc c
    add [hl]
    sub a
    add a
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    sub [hl]
    add a
    adc b
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, b
    ld e, c
    add [hl]
    adc c
    ld e, d
    ld l, b
    ld [hl], a
    adc c
    ld a, b
    ld l, c
    ld l, b
    add a
    sub a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    add [hl]
    add [hl]
    and [hl]
    adc b
    add [hl]
    add a
    sub [hl]
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    add a
    sub l
    and a
    db $76
    add a
    sub [hl]
    sub l
    sub [hl]
    and [hl]
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, d
    ld l, b
    ld [hl], a
    adc c
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld h, a
    sub l
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, c
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub a
    add [hl]
    add [hl]
    sub a
    sub l
    and [hl]
    sub [hl]
    sub l
    sub a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    add a
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    add a
    sub [hl]
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld l, b
    add a
    ld [hl], a
    add [hl]
    sub [hl]
    ld h, [hl]
    add a
    add a
    adc b
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    add a
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    add a
    sub [hl]
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld [hl], a
    add [hl]
    and [hl]
    sub a
    add a
    adc b
    add [hl]
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld a, c
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add a
    add a
    sub a
    add a
    add a
    add a
    adc b
    add a
    add a
    add [hl]
    and [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld l, c
    ld e, c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    add [hl]
    sub l
    sub a
    adc b
    ld a, b
    add [hl]
    sub a
    add a
    sub [hl]
    sub a
    add [hl]
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld l, c
    ld [hl], a
    sub a
    add a
    sub [hl]
    sub a
    ld a, b
    add a
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld l, d
    ld c, d
    ld l, b
    ld a, b
    add a
    add a
    ld l, b
    adc b
    add [hl]
    sub a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, c
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    sub [hl]
    sub a
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld a, c
    ld l, c
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    and [hl]
    adc b
    add [hl]
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld l, c
    ld l, b
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add a
    sub [hl]
    add a
    sub a
    add a
    sub [hl]
    add a
    ld a, c
    ld a, c
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    ld l, c
    ld a, b
    adc b
    adc b
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add [hl]
    add a
    ld a, b
    sub a
    add a
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    sbc b
    ld a, c
    ld l, b
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    and a
    add a
    adc b
    ld l, c
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    ld h, a
    add [hl]
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    add [hl]
    sub [hl]
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld h, [hl]
    sub [hl]
    sub [hl]
    sbc b
    ld a, b
    add [hl]
    adc b
    add a
    sbc b
    ld a, b
    ld l, c
    ld l, b
    sub [hl]
    sub a
    ld a, b
    ld a, b
    adc c
    ld [hl], a
    adc b
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
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    sub a
    add a
    add a
    sub [hl]
    sub a
    add [hl]
    sbc b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, d
    ld l, c
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    sub a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    add a
    add [hl]
    sub [hl]
    add a
    sub [hl]
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, c
    ld a, b
    ld l, c
    ld l, b
    ld [hl], a
    sub [hl]
    add a
    sub a
    ld [hl], a
    add [hl]
    adc b
    add a
    add [hl]
    add a
    sub a
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    add [hl]
    sub [hl]
    add a
    add a
    sub a
    add a
    add a
    sub [hl]
    and l
    sub [hl]
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    sub a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add [hl]
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    sbc b
    ld a, b
    adc b
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    db $76
    sub a
    adc b
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    sub l
    sub [hl]
    sub [hl]
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, c
    ld e, c
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, c
    add a
    adc c
    ld [hl], a
    add a
    add a
    add a
    adc b
    add [hl]
    sub [hl]
    add a
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, c
    ld l, d
    ld l, d
    ld e, c
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    adc b
    ld l, c
    ld l, b
    ld a, c
    ld l, b
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld a, c
    ld h, a
    add a
    add [hl]
    sub [hl]
    add a
    sub a
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    ld h, a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    sbc b
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
    add a
    adc b
    add a
    add [hl]
    sub [hl]
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    add [hl]
    sub [hl]
    and [hl]
    sub a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    adc b
    ld a, b
    ld l, b
    adc c
    ld [hl], a
    add a
    adc c
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    ld [hl], a
    add a
    adc b
    ld l, c
    ld l, c
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    add a
    sub a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    sub a
    adc b
    adc b
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    add a
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld l, b
    add a
    ld a, c
    ld h, a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add [hl]
    sub [hl]
    add a
    adc b
    ld l, c
    ld [hl], a
    add a
    adc b
    sub a
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    db $76
    db $76
    sub [hl]
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    add a
    adc b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, c
    sub a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add [hl]
    and a
    ld l, c
    ld [hl], a
    add a
    add a
    sub a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld a, b
    add a
    add a
    add a
    ld a, c
    ld l, c
    ld e, c
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, d
    ld l, b
    adc b
    add a
    adc b
    ld l, b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    add [hl]
    sub a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    sub a
    adc b
    ld a, b
    adc b
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    add [hl]
    add a
    add a
    add a
    add [hl]
    adc c
    ld l, c
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    adc b
    ld l, b
    add a
    add a
    db $76
    add a
    add [hl]
    sub a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld l, b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    add [hl]
    ld l, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, c
    ld a, c
    ld [hl], a
    sub a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    add [hl]
    add a
    add a
    add a
    add a
    adc b
    add a
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    add a
    adc b
    add a
    add [hl]
    add a
    add a
    add a
    adc b
    adc b
    add a
    sub [hl]
    adc b
    ld l, c
    ld a, b
    ld l, c
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    sub a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, c
    ld l, b
    add a
    add a
    sub [hl]
    sub a
    add [hl]
    sub [hl]
    sub a
    add a
    adc b
    add a
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add [hl]
    and [hl]
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    add [hl]
    and [hl]
    add a
    add a
    sub a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    sub [hl]
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    adc b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    adc b
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
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, c
    ld a, b
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, c
    ld a, b
    add a
    sub [hl]
    add a
    add [hl]
    adc b
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    adc b
    sbc b
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    add a
    add a
    sub a
    adc b
    add [hl]
    add a
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    adc b
    ld a, c
    ld l, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    sub a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    sub [hl]
    sbc b
    ld l, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    add [hl]
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    add [hl]
    adc b
    add [hl]
    sub a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    adc c
    ld e, c
    ld [hl], a
    add a
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    sub [hl]
    sub [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
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
    add a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    add a
    adc c
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc c
    ld l, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    sub a
    ld a, b
    adc b
    ld l, b
    add a
    add a
    add a
    adc b
    ld a, b
    add [hl]
    sub a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add [hl]
    sub [hl]
    add a
    sub a
    add a
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    add [hl]
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
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    add [hl]
    sub a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld l, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add [hl]
    sub a
    add [hl]
    sub a
    add a
    adc b
    ld a, c
    adc b
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc c
    ld [hl], a
    add a
    ld a, b

Call_008_5644:
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    sub [hl]
    sub a
    add [hl]
    sub a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    add [hl]
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, c
    ld h, a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld l, c
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    add [hl]
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    sub a
    add a
    ld a, b
    ld a, b
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
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    add [hl]
    adc b
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    add [hl]
    add a
    sub a
    add a
    add a
    adc b
    ld [hl], a
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
    add a
    adc b
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    sub [hl]
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    add a
    adc b
    add a
    add a
    sub a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    sub a
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    sub a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add a
    add a
    add a
    add [hl]
    add a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    add a
    adc b
    adc b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    ld [hl], a
    sub a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    sub a
    add a
    sub a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld h, a
    sub a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    sub a
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld [hl], a
    add a
    sub a
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    sub a
    adc b
    ld l, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, c
    add a
    add [hl]
    sub a
    add [hl]
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add [hl]
    add [hl]
    add a
    add [hl]
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
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
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    sub a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
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
    ld a, b
    add a
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
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
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
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
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add [hl]
    adc b
    adc b
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    sub a
    add a
    add a
    sub a
    ld a, b
    ld l, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
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
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    ld l, c
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
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
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    sub [hl]
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
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
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    add a
    db $76
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
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    sub [hl]
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld e, d
    call $dcdd
    jp z, $88aa

    ld b, c
    nop
    nop
    nop
    nop
    nop
    ld de, $3423
    ld [hl], a
    ld a, c
    adc d
    cp e
    db $dd
    xor $ef
    rst $38
    rst $38
    rst $38
    cp $ee
    call z, $a9bb
    ld [hl], a
    or l
    ld d, h
    ld b, d
    ld de, $0110
    nop
    nop
    ld de, $2302
    ld b, h
    ld d, [hl]
    ld [hl], a
    adc d
    sbc e
    inc l
    call $eeee
    rst $28
    cp $ee
    db $ed
    call z, $a9cb
    and a
    ld [hl], a
    ld h, l
    ld d, h
    ld b, h
    db $d3
    ld [de], a
    ld de, $2212
    inc sp
    inc sp
    ld d, h
    ld h, [hl]
    ld [hl], a
    adc b
    xor c
    cp d
    cp h
    cp l
    call c, $ec3d
    db $dd
    call c, $aacc
    xor c
    sub a
    add a
    ld h, [hl]
    ld b, l
    ld d, h
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    inc sp
    or e
    inc sp
    ld b, l
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc d
    sbc d
    cp e
    cp e
    db $db
    db $db
    call c, $cbcc
    ld l, d
    cp c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld d, l
    ld d, h
    ld b, h
    inc sp
    ld b, e
    inc sp
    inc h
    inc sp
    ld d, h
    ld d, l
    add [hl]
    ld a, b
    adc b
    adc c
    sbc d
    cp e
    xor h
    call z, $ccdc
    call z, $cabb
    cp d
    sbc d
    adc b
    sub a
    ld [hl], a
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, e
    inc sp
    inc sp
    inc sp
    ld b, e
    ld b, h
    dec [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    ld l, c
    sbc d
    xor e
    cp e
    cp h
    call z, $cbcb
    res 7, d
    cp c
    sbc c
    sbc b
    ld a, b
    db $76
    ld h, [hl]
    or l
    ld d, h
    ld d, h
    ld b, h
    dec [hl]
    inc [hl]
    ld b, h
    ld b, [hl]
    ld b, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc b
    sbc d
    xor d
    ld c, d
    cp e
    xor e
    xor d
    cp d
    xor c
    sbc d
    sbc b
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    and l
    ld d, l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc d
    xor c
    xor d
    xor c
    xor d
    ld l, d
    sbc d
    sbc c
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld [hl], l
    ld h, l
    ld h, l
    ld h, h
    ld h, l
    ld b, l
    ld d, [hl]
    ld d, l
    add l
    db $76
    ld [hl], a
    adc b
    ld a, b
    adc c
    sbc c
    sbc d
    xor c
    xor c
    xor e
    xor c
    xor d
    xor c
    xor d
    sbc c
    ld a, b
    sbc b
    ld a, b
    db $76
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    sbc d
    sbc c
    xor c
    xor d
    xor d
    xor d
    xor c
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    sub [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    adc b
    add a
    sbc b
    ld l, c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    ld l, c
    sbc c
    adc c
    sbc b
    adc b
    adc b
    sbc b
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    ld a, c
    sbc b
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld d, a
    ld h, l
    db $76
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc c
    adc c
    ld a, c
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc b
    adc c
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    add a
    adc c
    add a
    adc b
    sbc c
    adc c
    ld a, c
    adc b
    adc c
    adc c
    adc b
    adc b
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    sub a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    add a
    adc b
    add a
    sub a
    adc c
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
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, c
    add a
    adc b
    adc b
    adc b
    add a
    sbc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    dec c
    rst $38
    rst $38
    cp $dd
    db $db
    cp d
    ld d, h
    ld [hl+], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rNR11]
    ld [de], a
    inc h
    ld b, l
    ld h, a
    ld a, c
    sbc d
    xor h
    adc $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    cp $ed
    db $db
    cp d
    xor c
    sub a
    add [hl]
    ld h, l
    ld d, e
    ld b, e
    ld [hl-], a
    ld de, $0111
    nop
    ldh a, [rP1]
    db $10
    ld [hl+], a
    inc hl
    inc [hl]
    ld b, l
    ld h, [hl]
    adc b
    adc d
    xor d
    cp h
    call $efed
    rst $38
    cpl
    rst $38
    cp $fe
    db $ed
    call c, $bbdc
    xor c
    adc c
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld d, h
    inc sp
    ld [hl-], a
    jp nz, Jump_000_1111

    ld bc, $1111
    ld hl, $3423
    ld d, h
    ld h, l
    ld [hl], a
    ld a, b
    xor d
    xor d
    cp e
    ld l, l
    call $eeed
    rst $28
    xor $ee
    db $dd
    db $dd
    set 1, e
    xor d
    sbc c
    adc b
    db $76
    ld h, [hl]
    ld [hl], l
    ld d, e
    ld b, e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $2221
    ld hl, $2323
    inc [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    sub a
    sbc c
    sbc e
    cp e
    call z, $ddcd
    db $dd
    db $ed
    db $dd
    db $dd
    db $dd
    call $cbbb
    xor d
    ld c, c
    sbc b
    add a
    ld h, a
    ld d, [hl]
    ld h, h
    ld b, h
    inc sp
    inc sp
    inc sp
    inc hl
    ld [hl+], a
    ld sp, $3332
    inc sp
    call nz, Call_008_5644
    ld d, a
    ld a, b
    adc c
    adc c
    xor d
    xor e
    cp e
    cp l
    call z, $dccd
    db $dd
    call $cb3c
    cp e
    xor e
    xor c
    xor b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld b, e
    ld b, e
    inc [hl]
    or e
    inc sp
    inc sp
    inc sp
    inc sp
    ld b, h
    ld d, l
    ld d, l
    ld h, l
    ld h, a
    ld l, b
    ld a, c
    adc c
    sbc d
    xor e
    xor h
    ld l, e
    call z, $bccc
    set 3, e
    db $db
    res 7, e
    cp d
    xor c
    xor c
    adc c
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, e
    dec [hl]
    dec [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    db $76
    and a
    adc b
    adc b
    sbc c
    sbc d
    xor d
    xor e
    cp e
    cp e
    cp e
    res 7, e
    jp z, $bbbb

    xor e
    ld e, d
    xor c
    adc c
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    inc [hl]
    ld b, h
    ld b, e
    ld b, h
    or h
    ld d, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc d
    sbc d
    xor d
    xor e
    xor e
    ld a, d
    cp e
    xor e
    cp d
    cp e
    xor d
    xor d
    sbc d
    xor c
    adc d
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], l
    ld [hl], l
    ld d, [hl]
    ld d, h
    ld h, h
    ld d, h
    ld d, h
    ld d, l
    ld b, h
    ld d, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sub a
    ld a, b
    adc c
    sbc b
    sbc c
    sbc d
    xor d
    sbc d
    cp d
    xor d
    cp d
    xor e
    xor d
    cp d
    xor d
    sbc d
    ld e, c
    sbc c
    sbc b
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld h, h
    ld d, l
    ld b, l
    and l
    ld b, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    sbc c
    xor d
    ld a, c
    xor d
    xor d
    xor d
    xor d
    xor c
    xor c
    xor d
    sbc c
    xor d
    sbc b
    adc c
    adc c
    add a
    add a
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    and a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    adc c
    sbc b
    sbc c
    sbc c
    xor c
    xor c
    sbc d
    xor d
    sbc d
    sbc c
    ld e, c
    sbc d
    sbc d
    sbc d
    adc c
    sbc b
    sbc b
    sbc b
    add a
    add a
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    sbc c
    adc d
    sbc b
    sbc c
    sbc c
    xor c
    sbc d
    sbc c
    xor c
    sbc d
    sbc b
    sbc c
    sbc c
    adc b
    ld l, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc c
    adc b
    sbc c
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    xor b
    xor b
    sbc d
    adc c
    adc c
    sbc c
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    sub a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    sbc b
    sbc b
    adc c
    adc c
    sbc b
    sbc c
    ld a, c
    sbc c
    sbc b
    xor c
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc c
    ld a, c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    adc b
    add a
    adc c
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc c
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    db $76
    add [hl]
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    sub a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    db $76
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    sbc b
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
    ld h, a
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
    db $76
    ld [hl], a
    add a
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, c
    adc c
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, c
    ld a, c
    adc b
    sbc b
    adc c
    ld a, b
    adc c
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
    ld a, b
    db $76
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    sub [hl]
    add a
    add [hl]
    sub l
    and a
    ld e, d
    dec l
    dec c
    ld c, $0a
    ld c, d
    add hl, hl
    ld b, h
    ld [hl], e
    add h
    ld d, l
    sub h
    and l
    ld d, [hl]
    and d
    and e
    pop bc
    and [hl]
    ld l, c
    ld a, [hl+]
    scf
    add h
    and d
    or c
    add h
    ld h, a
    ret c

    dec hl
    ld b, a
    ld c, c
    ld d, [hl]
    ld l, c
    jr z, jr_008_630d

    ld h, a
    ld h, l
    sub l
    add [hl]
    ld [hl], a
    ld [hl], e
    ret nz

    pop de
    add b
    add [hl]
    ld h, [hl]
    and d
    and l
    and h
    sub l
    db $76
    ld [hl], l
    ld l, c
    ld d, [hl]
    ld [hl], a
    ld d, a
    ld e, c
    ld c, d
    ld d, a
    ld [hl], h
    ld a, b
    dec sp
    ld c, c
    ld c, d
    ld c, b
    sub h
    sub [hl]
    add l
    and h
    sub [hl]
    ld [hl], a
    add h
    sub l
    sub a
    ld l, b
    ld h, [hl]
    sub [hl]
    sub h
    sub [hl]
    sub l
    add [hl]
    sub e
    or a
    db $76
    sub a
    ld e, d
    ld c, e
    ld c, d
    ld c, d
    ld e, e
    ld a, [hl-]
    sbc b
    ld l, d
    ld e, b
    sub l
    or e
    call nz, $a6a6
    sub [hl]
    sub h
    push de
    sub [hl]
    or e
    xor c
    ld a, b
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    ld l, d
    ld l, d
    db $76
    or l
    adc b
    ld l, e
    ld e, c
    adc b
    ld l, d
    ld [hl], a
    or l
    and l
    push bc
    sbc c
    ld a, b
    and h
    add $98
    ld a, b
    add a
    or h
    push de
    sbc b
    add a
    sbc b
    sub a
    and a
    ld a, e
    db $76
    sbc c
    ld a, d
    ld a, d
    ld e, h
    ld e, c
    add a
    sbc b
    sbc c
    ld l, b
    xor b
    ld l, e
    add a
    adc d

jr_008_630d:
    ld [hl], a
    and l
    or a
    ld [hl], a
    sbc b
    sub a
    sbc c
    ld l, d
    add a
    sbc b
    sub [hl]
    and a
    sbc b
    sbc b
    ld a, b
    sbc b
    ld a, e
    ld l, c
    ld a, c
    adc d
    ld a, d
    ld l, c
    adc b
    sbc c
    ld l, e
    ld a, c
    adc b
    and [hl]
    and a
    adc b
    adc b
    adc b
    sub a
    sub [hl]
    xor b
    sbc b
    and l
    xor b
    sub [hl]
    or [hl]
    xor b
    adc b
    adc d
    ld l, d
    ld l, d
    ld a, d
    ld l, h
    ld c, e
    ld l, e
    ld l, d
    ld a, b
    add a
    xor b
    adc b
    ld a, d
    ld a, b
    sbc b
    ld a, c
    sub a
    sbc b
    sub a
    adc c
    ld a, b
    add a
    and l
    or [hl]
    sbc c
    sbc b
    adc c
    adc c
    adc b
    ld l, d
    ld a, c
    ld l, d
    adc b
    ld a, c
    adc c
    ld a, d
    ld l, e
    ld l, d
    ld a, c
    ld a, b
    and [hl]
    adc b
    adc c
    ld l, d
    add a
    sub a
    sub a
    sub a
    sub a
    sbc b
    ld l, d
    ld [hl], a
    sbc c
    ld [hl], a
    xor b
    ld l, d
    ld a, b
    sbc b
    add a
    adc c
    ld a, c
    ld l, d
    ld l, d
    ld a, d
    ld l, c
    add [hl]
    and a
    adc b
    sub [hl]
    adc e
    ld [hl], a
    and [hl]
    adc b
    db $76
    adc c
    add a
    xor b
    ld a, c
    adc b
    add [hl]
    sub a
    sbc b
    add a
    adc b
    ld a, b
    adc b
    ld a, d
    ld l, d
    ld a, d
    adc b
    ld a, b
    ld l, d
    ld a, b
    adc b
    ld a, b
    ld a, c
    add a
    sbc b
    add a
    adc b
    ld a, b
    sub a
    adc b
    add [hl]
    sub a
    add [hl]
    and [hl]
    sub a
    ld a, b
    ld a, c
    ld a, b
    adc c
    ld l, c
    ld a, b
    ld a, d
    ld a, b
    ld a, c
    ld l, b
    adc c
    ld l, c
    add a
    adc c
    ld a, b
    adc b
    add a
    sub [hl]
    adc c
    add [hl]
    sub a
    add [hl]
    sub [hl]
    adc b
    add [hl]
    ld a, d
    ld h, a
    adc b
    ld a, b
    db $76
    sub a
    sub a
    ld a, d
    ld e, b
    and a
    ld a, c
    add a
    ld a, b
    ld l, d
    ld l, c
    ld e, c
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    add a
    sub [hl]
    adc b
    add [hl]
    adc c
    ld l, b
    add a
    add a
    and a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sbc b
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld l, d
    ld a, b
    ld [hl], a
    db $76
    sbc b
    add a
    sub a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld [hl], a
    sub l
    add a
    ld a, b
    sub a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    ld a, d
    ld l, b
    ld a, c
    ld e, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld d, [hl]
    and a
    ld [hl], a
    add a
    sub [hl]
    add a
    sub [hl]
    sub a
    ld l, b
    adc b
    db $76
    adc b
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld h, a
    sbc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld e, c
    ld l, b
    add a
    sub [hl]
    ld l, b
    adc b
    add a
    ld h, a
    sub [hl]
    adc b
    db $76
    and [hl]
    add a
    add a
    ld [hl], a
    add [hl]
    sub a
    add [hl]
    add a
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    sub l
    adc b
    ld [hl], a
    adc b
    ld a, b
    add l
    adc b
    ld h, [hl]
    add a
    add a
    add a
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add l
    adc c
    ld e, d
    ld h, a
    ld l, d
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld h, a
    adc b
    ld l, b
    ld [hl], a
    adc b
    add l
    sub a
    sbc c
    add [hl]
    adc b
    db $76
    sub [hl]
    ld l, b
    add a
    ld a, c
    ld h, a
    ld a, b
    ld h, a
    sub a
    ld l, c
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld e, c
    add [hl]
    adc b
    add [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    sub a
    ld a, b
    add a
    add l
    sbc b
    ld a, c
    ld h, a
    ld a, b
    ld h, a
    ld a, c
    ld l, b
    ld a, c
    ld [hl], a
    ld a, b
    ld e, b
    ld a, c
    add a
    ld l, b
    add a
    ld l, b
    add [hl]
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld l, c
    ld l, b
    ld [hl], a
    ld a, c
    db $76
    ld a, d
    ld h, a
    add a
    db $76
    sub a
    ld a, b
    db $76
    ld a, c
    ld a, b
    ld h, [hl]
    add a
    add [hl]
    add a
    add [hl]
    add a
    db $76
    sub a
    ld a, b
    ld h, a
    adc b
    ld e, b
    ld a, b
    ld h, a
    add a
    ld a, c
    ld l, b
    ld [hl], a
    db $76
    and [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    sbc b
    ld l, b
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    ld e, b
    sub a
    ld l, b
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld e, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, c
    add a
    adc d
    ld e, b
    add a
    ld a, b
    add [hl]
    ld a, c
    ld e, b
    adc b
    ld h, a
    ld a, c
    ld l, b
    sub l
    sub a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld l, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld l, c
    ld a, b
    add [hl]
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    ld a, c
    add a
    sbc b
    ld [hl], l
    sbc b
    db $76
    sub a
    ld a, b
    ld h, a
    ld a, b
    add a
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    db $76
    adc c
    ld l, b
    db $76
    ld a, c
    add [hl]
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    db $76
    sub a
    ld [hl], a
    sub l
    ld a, c
    db $76
    sbc b
    ld e, b
    add [hl]
    ld a, c
    add [hl]
    ld a, b
    ld l, b
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld a, b
    ld h, l
    sbc b
    ld l, c
    add [hl]
    ld a, c
    ld l, b
    add [hl]
    adc b
    add a
    add a
    ld [hl], a
    ld e, b
    ld l, b
    add a
    add [hl]
    adc b
    ld l, b
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld l, b
    add a
    ld l, c
    db $76
    ld a, c
    ld h, a
    add a
    adc c
    ld a, b
    ld l, c
    add [hl]
    sbc b
    ld h, a
    sub [hl]
    add a
    add a
    ld h, a
    sub a
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    sub [hl]
    adc b
    ld l, b
    add a
    add [hl]
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    db $76
    sbc b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    adc b
    ld h, a
    ld [hl], a
    ld l, b
    sub a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld h, a
    sub a
    adc b
    ld h, a
    add a
    ld [hl], a
    sub [hl]
    ld a, c
    ld [hl], a
    sub a
    sub [hl]
    ld [hl], a
    adc b
    ld l, b
    ld a, c
    ld e, b
    adc b
    ld l, b
    add [hl]
    adc b
    add [hl]
    adc c
    ld l, b
    sub [hl]
    adc b
    db $76
    adc c
    db $76
    sub a
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    sub a
    add [hl]
    sbc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld l, b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    and [hl]
    adc b
    add [hl]
    ld a, b
    add [hl]
    sub l
    adc b
    sub [hl]
    sub a
    ld l, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    adc c
    ld l, b
    adc b
    ld l, b
    ld h, [hl]
    sbc b
    db $76
    sub a
    ld a, b
    sub [hl]
    ld a, c
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    ld a, b
    ld [hl], a
    adc c
    ld h, a
    sbc b
    adc b
    ld a, b
    ld a, c
    db $76
    sbc b
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld l, c
    add a
    ld a, c
    ld e, b
    adc b
    ld e, c
    ld [hl], a
    add a
    and [hl]
    ld a, b
    ld [hl], a
    adc b
    db $76
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc c
    db $76
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld h, a
    adc b
    ld e, c
    add a
    ld a, c
    ld [hl], a
    sub [hl]
    add a
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    sbc b
    ld [hl], a
    add a
    ld l, c
    adc b
    ld a, c
    db $76
    sub a
    ld [hl], a
    adc b
    adc c
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc c
    ld [hl], a
    ld a, b
    add a
    and a
    add [hl]
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    ld a, c
    ld l, c
    add a
    adc b
    ld [hl], a
    adc c
    ld e, c
    ld a, b
    ld l, b
    add a
    ld a, b
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, c
    ld h, a
    add a
    add a
    ld h, a
    ld a, b
    ld l, b
    add a
    adc c
    ld l, b
    add a
    ld a, b
    add a
    ld l, c
    ld l, c
    adc b
    ld h, a
    ld a, b
    add a
    sbc b
    ld [hl], a
    adc b
    ld a, c
    db $76
    sub [hl]
    sub a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc c
    add [hl]
    adc b
    ld a, c
    ld l, b
    adc c
    add [hl]
    ld a, c
    ld a, b
    adc b
    ld e, b
    add a
    adc b
    ld l, b
    adc b
    ld h, a
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    db $76
    ld l, d
    add a
    adc b
    add l
    adc b
    ld l, b
    sub a
    ld a, d
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    ld a, c
    add [hl]
    adc c
    adc b
    ld [hl], a
    ld l, b
    add [hl]
    sub a
    ld [hl], a
    sub a
    ld a, c
    db $76
    adc b
    db $76
    sub a
    ld l, c
    add [hl]
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld h, a
    sbc b
    ld e, c
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    add [hl]
    ld [hl], a
    add [hl]
    sbc b
    db $76
    adc b
    ld [hl], a
    adc b
    adc b
    db $76
    and a
    ld a, b
    ld [hl], a
    adc c
    db $76
    adc c
    ld l, b
    sbc b
    ld a, b
    ld [hl], a
    ld a, d
    ld l, b
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    db $76
    adc b
    ld l, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    db $76
    sbc b
    ld a, b
    ld a, b
    add a
    db $76
    sub a
    adc d
    ld a, b
    ld l, b
    ld [hl], a
    sub a
    add a
    ld a, c
    ld a, b
    add a
    adc b
    add a
    sub a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, c
    add a
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    sbc b
    ld a, b
    add a
    add a
    ld l, b
    sub a
    adc b
    db $76
    sbc b
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    ld l, c
    ld a, b
    ld a, c
    ld a, b
    ld l, c
    sub a
    add a
    ld [hl], a
    sub a
    ld l, b
    sub [hl]
    sbc b
    add l
    sub a
    ld a, b
    add a
    sub a
    add [hl]
    ld a, b
    ld l, b
    sub a
    ld a, c
    add a
    adc c
    ld l, b
    sub a
    ld a, c
    add a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    ld h, a
    sub a
    ld l, b
    sub [hl]
    adc b
    ld h, [hl]
    adc c
    ld l, b
    sub a
    db $76
    and a
    ld [hl], a
    ld a, b
    adc c
    db $76
    sub a
    adc b
    ld [hl], a
    adc c
    ld l, b
    adc b
    ld l, b
    adc b
    ld l, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld a, b
    db $76
    adc c
    add [hl]
    adc c
    ld h, a
    sbc b
    sub a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    add a
    add [hl]
    ld a, c
    add [hl]
    sub a
    ld a, b
    sub [hl]
    adc b
    ld h, a
    sub a
    ld [hl], a
    adc c
    ld l, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    sub a
    sbc b
    ld h, a
    sub a
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld l, b
    adc b
    sbc b
    add a
    adc c
    ld h, a
    sub a
    ld l, b
    add [hl]
    sbc b

Call_008_6798:
    ld [hl], a
    add a
    ld a, b
    sub a
    ld l, c
    ld [hl], a
    adc c
    ld l, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld l, b
    adc b
    ld l, b
    add a
    add [hl]
    ld a, b
    add a
    adc c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add [hl]
    ld a, b
    add a
    adc c
    ld a, b
    ld l, b
    db $76
    sub a
    sub a
    ld h, [hl]
    adc c
    ld l, b
    add a
    adc b
    add a
    ld a, b
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    db $76
    adc b
    ld l, c
    add a
    adc c
    add a
    adc c
    ld l, b
    adc b
    ld l, b
    sub [hl]
    adc b
    add [hl]
    sub a
    ld a, b
    sub [hl]
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    sbc b
    ld l, c
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    add [hl]
    sbc b
    ld h, a
    add a
    adc c
    add a
    add a
    ld h, a
    ld a, b
    ld a, c
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld h, a
    adc b
    adc b
    ld a, b
    ld a, c
    db $76
    adc b
    ld l, b
    add a
    ld l, c
    add [hl]
    sbc b
    ld a, b
    sub a
    ld a, b
    sbc b
    adc b
    ld [hl], a
    and a
    add a
    db $76
    adc c
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, b
    add a
    ld l, c
    ld a, b
    adc b
    db $76
    sbc c
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    sub a
    ld h, a
    adc b
    sub a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    db $76
    sub a
    ld a, b
    ld l, b
    ld l, b
    adc b
    ld a, c
    add [hl]
    adc c
    ld l, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    ld a, c
    add [hl]
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    sub [hl]
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    ld l, c
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    sub a
    ld l, c
    add a
    ld a, c
    ld [hl], a
    ld l, b
    ld a, c
    ld a, b
    add a
    adc b
    sub [hl]
    add a
    db $76
    sbc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    ld a, b
    add [hl]
    add a
    ld a, c
    db $76
    ld a, b
    add [hl]
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sbc b
    sbc b
    add a
    ld a, b
    add a
    adc c
    db $76
    sub a
    ld l, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    sub [hl]
    ld a, b
    add [hl]
    sub a
    db $76
    and a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    adc b
    ld l, b
    add [hl]
    ld a, c
    ld h, [hl]
    adc c
    ld a, b
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    sbc b
    add a
    adc b
    ld l, b
    add a
    ld a, c
    ld a, b
    ld a, c
    add a
    ld l, b
    add [hl]
    adc c
    ld [hl], a
    add a
    add a
    add [hl]
    sbc b
    ld h, a
    add a
    adc b
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add [hl]
    adc b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    sub a
    ld a, b
    add a
    adc c
    ld a, b
    ld [hl], a
    ld l, b
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld e, b
    ld a, b
    ld a, c
    ld l, b
    adc c
    ld [hl], a
    db $76
    adc c
    add a
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
    adc b
    ld [hl], a
    add a
    adc b
    add a
    sbc b
    ld l, b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    adc c
    db $76
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    sub [hl]
    ld a, c
    ld [hl], a
    adc c
    ld [hl], a
    sub [hl]
    adc b
    add [hl]
    sbc b
    add a
    add [hl]
    ld l, c
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    sub a
    ld a, c
    add [hl]
    ld a, c
    ld l, b
    ld [hl], a
    ld a, c
    add [hl]
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    sub [hl]
    ld a, c
    db $76
    sub a
    add a
    sub a
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    add a
    adc b
    ld a, b
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
    ld a, b
    ld [hl], a
    add a
    ld a, c
    add [hl]
    adc b
    ld a, b
    adc b
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    add [hl]
    adc b
    ld l, b
    add [hl]
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld h, a
    adc b
    ld a, b
    add [hl]
    adc b
    sub a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    add a
    adc c
    ld [hl], a
    add a
    add a
    adc b
    add [hl]
    sub [hl]
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld h, a
    add a
    adc b
    db $76
    adc b
    ld [hl], a
    adc b
    ld l, b
    sub [hl]
    add a
    add a
    ld l, b
    adc b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    adc b
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld l, b
    add [hl]
    adc b
    db $76
    sbc b
    ld l, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    adc b
    db $76
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    add a
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    ld a, c
    add [hl]
    sbc b
    ld a, b
    db $76
    adc b
    ld a, b
    add a
    ld a, b
    ld a, c
    db $76
    adc c
    ld l, b
    sub a
    ld l, b
    add [hl]
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    add [hl]
    adc b
    add [hl]
    sbc b
    ld [hl], a
    add a
    ld a, c
    add [hl]
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    sub a
    ld [hl], a
    add a
    ld a, c
    ld a, b
    sub a
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld l, c
    adc b
    ld a, b
    ld h, a
    adc b
    add a
    ld a, c
    db $76
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    ld l, b
    add a
    ld l, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld a, b
    sub [hl]
    adc c
    add [hl]
    add a
    ld l, c
    adc b
    ld l, d
    ld e, b
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add [hl]
    adc b
    add a
    db $76
    adc b
    adc b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    adc b
    db $76
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    sub a
    ld [hl], a
    adc c
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    sub a
    adc b
    add a
    ld a, c
    ld [hl], a
    add a
    adc b
    add a
    add [hl]
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld h, a
    ld a, b
    ld l, c
    ld a, b
    ld a, c
    add [hl]
    ld a, c
    ld h, a
    adc b
    ld a, b
    add a
    sub a
    ld a, b
    adc b
    add [hl]
    sub a
    ld a, b
    db $76
    adc c
    add a
    ld l, c
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    sub [hl]
    ld a, d
    add a
    ld l, b
    ld a, c
    add [hl]
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    add a
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    sub a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    ld l, c
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld l, b
    sub [hl]
    add a
    add a
    add a
    add a
    adc b
    add [hl]
    sub a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld l, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    add a
    add a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld h, a
    sub a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    add a
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc c
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld l, b
    ld h, a
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
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add a
    adc b
    ld l, b
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    add a
    add a
    ld a, b
    add [hl]
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    adc b
    add a
    ld a, b
    db $76
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld l, b
    ld a, b
    sbc b
    db $76
    add a
    ld a, c
    add [hl]
    sub a
    add a
    ld a, c
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    adc b
    add [hl]
    sub a
    add a
    ld l, b
    add a
    sub a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc c
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld l, b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sub a
    add a
    add a
    ld a, c
    db $76
    adc b
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    db $76
    sub a
    adc b
    add a
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, c
    add [hl]
    add a
    adc b
    add a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld l, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld l, c
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld h, a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    add a
    add [hl]
    adc b
    db $76
    adc c
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    adc b
    add [hl]
    sbc b
    add a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sbc b
    ld [hl], a
    ld a, b
    ld l, b
    sub a
    ld a, b
    db $76
    sbc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    db $76
    sbc b
    ld [hl], a
    sub [hl]
    adc b
    add [hl]
    ld l, b
    adc b
    adc b
    add a
    add a
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    adc b
    ld l, c
    ld l, b
    add a
    ld a, b
    adc b
    ld l, b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    sbc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld h, a
    add a
    ld a, b
    ld l, b
    adc b
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld l, b
    ld a, c
    adc b
    ld h, a
    adc b
    ld l, b
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    ld l, c
    ld [hl], a
    adc b
    add [hl]
    adc b
    add a
    adc b
    ld l, b
    add a
    add a
    ld a, b
    add a
    ld l, c
    ld a, b
    adc c
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
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
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld l, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld h, a
    add a
    ld [hl], a
    add a
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    sub [hl]
    adc b
    add a
    add a
    ld [hl], a
    sub a
    ld l, b
    add a
    ld a, c
    ld [hl], a
    ld a, c
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld l, c
    add [hl]
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add [hl]
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    add [hl]
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    sub [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, c
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld l, c
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    add a
    add a
    add a
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    add a
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc c
    ld l, b
    add a
    adc b
    add [hl]
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
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
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    add [hl]
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld h, a
    ld a, b
    add a
    ld [hl], a
    add a
    sub a
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    add a
    add a
    sbc b
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
    sub a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    ld a, c
    adc b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    sbc b
    db $76
    sbc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld l, b
    add a
    ld a, b
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add [hl]
    sub a
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    db $76
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    adc b
    ld l, b
    sub a
    ld [hl], a
    add a
    add a
    add a
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    sbc b
    ld h, a
    sub a
    ld a, b
    add a
    sbc b
    add [hl]
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld h, a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld h, a
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    adc b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    sub a
    ld a, b
    ld l, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    db $76
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    ld l, b
    add a
    add a
    add a
    ld a, b
    db $76
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    adc b
    sub a
    add a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    ld l, b
    add [hl]
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld l, b
    add a
    ld a, c
    add a
    sbc b
    ld h, a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    db $76
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    add a
    ld a, c
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    ld a, c
    ld [hl], a
    adc c
    ld l, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
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
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    add a
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld a, b
    sub a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    db $76
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc c
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
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
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    db $76
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, c
    add [hl]
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld h, a
    adc b
    add a
    add a
    adc c
    ld l, b
    add a
    adc b
    adc b
    ld h, a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
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
    ld a, b
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    sbc b
    ld [hl], a
    ld a, b
    adc b
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
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
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    adc c
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
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
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_008_76c4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7887:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_008_7cdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
