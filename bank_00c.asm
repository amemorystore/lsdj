; disasSembly of "lsdj.gb"
SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    ld h, b
    ld b, b
    ld h, b
    ld b, e
    and b
    ld b, [hl]
    ret nz

    ld b, a
    add b
    ld c, l
    and b
    ld d, c
    sub b
    ld d, l
    sub b
    ld e, e
    jr nz, jr_00c_407d

    and b
    ld a, d
    ld b, b
    ld a, e
    ldh [$7e], a
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
    nop
    nop
    ld d, h
    ld d, d
    dec l
    add hl, sp
    jr nc, @+$3b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7748
    ld l, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, e
    jr nz, jr_00c_406b

jr_00c_406b:
    nop
    nop
    nop
    ld [bc], a
    inc de
    ld h, l
    ld a, b
    sbc e
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed

jr_00c_407d:
    call c, $87aa
    push de
    ld [hl-], a
    jr nc, jr_00c_4084

jr_00c_4084:
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc sp
    dec [hl]
    ld h, [hl]
    ld a, c
    xor d
    call $ff4f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ed
    call z, $a9bb
    add a
    ld [hl], l
    ld d, h
    sub d
    ld hl, $0010
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld [de], a
    inc [hl]
    inc [hl]
    ld b, l
    ld h, a
    ld l, c
    cp d
    cp h
    call $eedf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    xor $ec
    db $dd
    cp e
    dec bc
    xor d
    sbc c
    sub a
    add [hl]
    ld h, l
    ld d, h
    ld b, e
    inc hl
    ld hl, $0011
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld de, $2213
    inc sp
    ld b, l
    ld b, l
    ld d, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    xor e
    cp e
    call $dfbd
    xor $ff
    rst $28
    rst $38
    rst $38
    rst $38
    cp $fe
    xor $dd
    call $cccc
    cp e
    ld a, [de]
    xor d
    sbc c
    xor b
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld b, h
    inc sp
    inc hl
    ld [hl+], a
    ld hl, $6121
    db $10
    stop
    nop
    ld bc, $1101
    ld [hl+], a
    ld [hl+], a
    inc h
    inc sp
    ld b, e
    dec [hl]
    ld d, l
    ld d, l
    push hl
    ld h, a
    ld h, a
    ld [hl], a
    adc c
    adc b
    sbc c
    xor d
    sbc e
    cp e
    call z, $dddc
    db $dd
    db $ed
    db $ed
    cp a
    xor $ee
    xor $ee
    sbc $ee
    db $ed
    db $dd
    db $ec
    call c, $bcdc
    cp h
    xor e
    xor d
    ld c, d
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld a, b
    add [hl]
    db $76
    db $76
    ld h, l
    ld h, l
    ld b, h
    ld b, l
    inc [hl]
    inc sp
    inc h
    ld [hl-], a
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld de, $1222
    ld de, $1222
    ld [hl+], a
    inc hl
    ld [hl], e
    inc sp
    ld b, h
    dec [hl]
    ld b, l
    ld b, l
    ld d, h
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    db $76
    ld a, b
    ld l, b
    adc b
    ret c

    adc b
    adc b
    adc c
    xor c
    sbc d
    xor d
    cp d
    set 1, e
    call $cdcc
    db $dd
    call c, $addd
    db $dd
    db $dd
    db $dd
    db $dd
    db $ed
    db $dd
    db $dd
    db $dd
    db $ec
    call $bccc
    cp e
    jp z, Jump_00c_6abb

    xor d
    xor d
    sbc c
    xor c
    sbc c
    sbc c
    adc b
    adc b
    ld a, c
    ld a, b
    ld a, b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    daa
    ld h, a
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    inc sp
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc sp
    ld d, d
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld b, e
    ld [hl-], a
    ld b, e
    ld b, e
    inc [hl]
    ld d, h
    ld b, h
    ld d, l
    add l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ret c

    adc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc d
    xor e
    xor e
    cp e
    set 1, e
    call z, $dccc
    call z, $ccbc
    call c, $cddc
    call $ccbc
    call c, $cccc
    cp h
    res 7, h
    cp e
    cp d
    ld a, d
    xor d
    xor e
    sbc d
    xor c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld d, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld d, l
    ld b, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld b, l
    ld b, l
    ld b, l
    ld h, h
    ld b, h
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    adc b
    db $76
    ld a, b
    db $76
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc b
    sbc b
    xor c
    adc b
    sbc c
    xor b
    xor d
    sbc d
    sbc d
    xor d
    xor c
    xor d
    xor d
    cp d
    cp d
    xor d
    xor d
    cp d
    sbc d
    cp d
    xor d
    xor e
    xor d
    xor d
    xor d
    xor d
    xor c
    xor d
    xor c
    xor d
    sbc c
    xor c
    sbc c
    sbc c
    ld a, c
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, [hl]
    add [hl]
    ld h, a
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld a, b
    ld h, a
    db $76
    db $76
    sub a
    db $76
    add a
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc c
    ld a, b
    xor b
    sbc b
    adc b
    adc c
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    adc c
    xor b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc c
    sbc c
    sbc c
    xor c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, c
    adc b
    ld a, b
    sub a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
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
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    sbc b
    add a
    sub a
    sub a
    adc b
    ld a, b
    adc b
    adc c
    adc b
    add a
    adc b
    ld a, c
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    dec b
    dec d
    and h
    scf
    add a
    add a
    sbc b
    ld [hl], a
    sbc c
    ld l, b
    sub a
    sub [hl]
    and c
    nop
    nop
    nop
    jr nz, jr_00c_4372

jr_00c_4372:
    ld [bc], a
    ld l, c
    rst $08
    rst $38
    rst $38
    rst $38
    db $fc
    sub h
    ld b, c
    stop
    nop
    db $10
    inc hl
    inc b
    ld [hl], l
    ld h, [hl]
    dec [hl]
    ld h, a
    ld a, d
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    bit 0, l
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    sbc d
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    add sp, -$7c
    ld h, d
    jr nz, jr_00c_43a6

jr_00c_43a6:
    nop
    nop
    nop
    ld [hl+], a
    ld b, [hl]
    ld h, [hl]
    ld a, d
    xor c
    ret


    call c, $ec5d
    sbc $ce
    db $fd
    rst $28
    xor $dc
    ret


    xor c
    ld d, [hl]
    ld l, b
    ld h, a
    ld b, h
    ld h, h
    ld b, e
    di
    ld b, d
    ld bc, $1211
    inc de
    inc sp
    dec [hl]
    add [hl]
    cp e
    call c, $dfdf
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    ret


    add h
    ld d, [hl]
    inc hl
    ld [bc], a
    nop
    ld bc, $0110
    ld sp, $5432
    ld h, a
    ld e, c
    ld a, e
    sbc d
    ld a, [$cddd]
    xor $dc
    db $eb
    cp l
    db $eb
    res 7, e
    ld l, h
    ld h, a
    ld b, [hl]
    call nz, Call_00c_4424
    inc [hl]
    ld e, b
    ld d, [hl]
    ld [hl], h
    ld b, a
    inc [hl]
    ld h, e
    ld d, h
    ld d, e
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    sbc e
    inc c
    xor l
    db $dd
    rst $18
    cp $fe
    rst $38
    rst $28
    cp l
    ret


    cp b
    ld h, [hl]
    ld b, d
    dec [hl]
    ld [hl+], a
    ld hl, $00a5
    ld d, b
    ld b, e
    ld b, e
    ld d, l
    db $76
    ld a, b
    ld l, e
    xor c
    xor d
    set 1, [hl]
    call $ebbc
    ld a, e
    xor d
    cp h
    sbc c

Call_00c_4424:
    sub a
    ld h, a
    ld h, [hl]
    ld h, h
    ld d, e
    ld b, [hl]
    ld b, h
    ld d, h
    ld d, a
    ld e, b
    ld d, l
    ld d, a
    cp b
    ld d, a
    ld b, [hl]
    ld d, a
    add a
    ld l, d
    adc b
    adc d
    xor e
    xor d
    cp e
    call z, $dbab
    call z, Call_00c_7bab
    xor d
    adc c
    db $76
    ld d, [hl]
    ld h, d
    ld b, e
    inc h
    inc h
    ld b, c
    ld d, h
    ld b, l
    ld h, h
    ld b, a
    ld d, l
    ld h, a
    ld e, b
    ld a, e
    sbc e
    sbc d
    db $db
    cp e
    cp c
    cp h
    cp d
    xor d
    sbc b
    or a
    sub [hl]
    ld h, [hl]
    ld a, b
    ld [hl], h
    or l
    ld d, l
    ld d, h
    ld c, b
    scf
    ld h, a
    ld h, l
    add [hl]
    ld l, d
    ld a, b
    ld [hl], a
    ld h, a
    sub a
    and a
    sbc d
    ld a, c
    ld c, d
    sbc d
    xor b
    cp h
    ld a, c
    sbc d
    xor c
    sbc d
    and a
    cp c
    ld a, d
    add [hl]
    ld a, c
    ld h, l
    ld d, h
    ld [hl], l
    push bc
    dec [hl]
    ld h, e
    ld h, h
    ld b, l
    ld h, a
    db $76
    ld d, [hl]
    add a
    ld l, b
    adc c
    sbc e
    adc d
    xor d
    ret


    xor b
    ld a, d
    jp z, $8998

    adc c
    db $76
    adc b
    ld d, [hl]
    ld [hl], h
    ld h, l
    ld h, l
    ld d, h
    ld h, a
    ld h, h
    ld [hl], l
    add l
    add a
    adc c
    ld [hl], a
    adc b
    sub a
    ld l, e
    xor b
    sbc b
    adc b
    sbc d
    adc c
    sub a
    xor b
    xor b
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld l, b
    ld e, b
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld h, a
    ld d, l
    db $76
    add a
    ld e, b
    ld [hl], a
    ld a, c
    adc b
    sbc c
    sbc b
    xor c
    xor b
    xor d
    cp c
    adc d
    xor b
    sbc c
    ld a, b
    adc b
    ld l, b
    ld h, [hl]
    db $76
    and l
    ld [hl], l
    db $76
    ld d, a
    ld b, a
    ld d, a
    db $76
    sub [hl]
    ld d, a
    sub [hl]
    sub a
    ld a, b
    adc b
    adc b
    add a
    xor b
    ld l, b
    adc e
    sub a
    xor c
    adc c
    ld [hl], a
    sbc b
    ld l, b
    add a
    ld l, b
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    add [hl]
    adc b
    sub [hl]
    ld [hl], l
    ld a, b
    ld l, b
    ld [hl], a
    ld e, c
    db $76
    add [hl]
    adc c
    add a
    adc d
    adc b
    adc c
    sbc b
    adc d
    sbc c
    ld a, d
    ld a, d
    add a
    adc b
    sub a
    ld [hl], a
    ld d, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld h, [hl]
    ld h, a
    db $76
    ld l, c
    ld h, [hl]
    ld a, b
    sub a
    db $76
    sbc b
    adc b
    add a
    sbc c
    ld a, b
    adc c
    sbc b
    adc c
    adc c
    sub a
    adc b
    sbc b
    ld [hl], a
    db $76
    adc b
    ld l, b
    ld d, a
    ld [hl], a
    db $76
    add [hl]
    ld l, c
    add a
    ld a, b
    ld l, b
    ld [hl], a
    add l
    adc b
    ld a, b
    ld l, d
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc b
    sub a
    ld a, c
    adc b
    sbc b
    sub a
    add a
    ld a, b
    ld l, d
    ld l, c
    ld l, b
    add a
    ld h, a
    ld h, [hl]
    add a
    ld l, b
    db $76
    adc b
    ld l, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, c
    ld a, d
    add a
    ld h, a
    adc c
    adc c
    ld l, c
    add a
    sub a
    ld l, b
    add a
    add a
    ld a, b
    db $76
    sub l
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    ld h, a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld h, a
    sbc b
    ld a, c
    ld a, b
    add a
    ld l, c
    adc b
    ld [hl], a
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    sub [hl]
    add a
    ld a, b
    add a
    sub [hl]
    adc b
    ld a, b
    ld h, l
    add [hl]
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    db $76
    add a
    ld a, b
    sub a
    adc b
    ld a, c
    adc b
    ld a, b
    sbc b
    ld a, b
    add a
    and [hl]
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc c
    ld a, c
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc c
    add a
    ld a, d
    db $76
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld h, a
    adc b
    ld a, b
    db $76
    adc b
    ld [hl], a
    adc b
    ld l, e
    ld l, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    add a
    db $76
    and a
    sbc b
    ld h, a
    add a
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    ld a, b
    add a
    ld [hl], a
    adc c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    add a
    sub [hl]
    sub a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld l, b
    add a
    ld l, b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    db $76
    adc b
    add a
    add a
    adc b
    add a
    adc b
    ld l, b
    sbc b
    ld a, b
    ld a, b
    sub a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    add a
    add a
    add [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    add [hl]
    add a
    adc b
    add a
    add a
    add a
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
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
    ld [hl], a
    sub a
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    cp b
    ld l, b
    ld e, c
    ld h, [hl]
    add a
    add [hl]
    or [hl]
    ld l, e
    ld e, e
    ld h, a
    ld c, c
    ld l, [hl]
    ld l, b
    xor c
    ret


    jp z, $b9ab

    add h
    and [hl]
    ld c, e
    and [hl]
    ld d, a
    dec bc
    ld c, b
    ld b, [hl]
    ld h, h
    jp nz, Jump_00c_56a7

    add a
    ld a, c
    or a
    add e
    ld h, l
    ld [hl], a
    xor h
    ld a, h
    cp b
    add $96
    add d
    add l
    ld d, a
    ld b, [hl]
    add a
    ld d, a
    ld h, a
    push bc
    sbc c
    ld a, e
    sub a
    adc h
    ld e, h
    add [hl]
    sub [hl]
    ld l, d
    add e
    add l
    ld c, b
    dec hl
    sub a
    adc b
    ld [hl], a
    adc b
    sbc c
    ld l, e
    ld [hl], l
    add a
    ld e, c
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, d
    ld l, b
    sub a
    xor c
    ld e, c
    ld d, a
    sub h
    sbc b
    sbc c
    adc c
    sub a
    and [hl]
    adc c
    ld a, c
    add [hl]
    add a
    adc b
    ld [hl], a
    add h
    sub a
    adc b
    and [hl]
    ld d, a
    adc b
    ld [hl], a
    ld l, b
    adc c
    add l
    sub l
    db $76
    add l
    ld [hl], l
    add a
    add a
    add [hl]
    sbc b
    ld a, c
    ld a, c
    ld a, d
    ld a, b
    adc c
    db $76
    sub [hl]
    adc b
    xor b
    sub a
    adc c
    ld h, a
    add l
    sub [hl]
    db $76
    db $76
    adc b
    db $76
    adc b
    ld l, c
    adc c
    ld [hl], a
    sub [hl]
    add [hl]
    add a
    ld [hl], a
    sub a
    ld h, a
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    sbc b
    sub a
    and [hl]
    adc c
    ld l, b
    ld [hl], a
    ld h, a
    adc c
    add [hl]
    sub [hl]
    add a
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    db $76
    sub a
    adc b
    sub a
    sub a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld h, a
    sbc b
    adc b
    ld a, c

jr_00c_4756:
    ld a, b
    add a
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld l, b
    add a
    sub a
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    adc b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc b
    db $76
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    ld [hl], l
    or l
    rst $00
    adc c
    add a
    sbc e
    ld a, b
    or a
    sbc c
    add a
    sbc b
    ld d, l
    jr c, jr_00c_4756

    ld d, [hl]
    ld h, l
    or e
    sub h
    adc c
    ld e, e
    adc e
    cp d
    call nz, Call_00c_6569
    or l
    ld h, a
    ld [hl], a
    ld a, e
    ld l, b
    ld [hl], h
    sub a
    ld a, a
    ld d, [hl]
    db $76
    add a
    sub h
    ld h, h
    xor e
    add h
    ld [hl], a
    ld b, h
    ld l, b
    cp h
    xor c
    ld e, c
    cp [hl]
    inc a
    ld [hl], b
    sub l
    ret z

    rst $00
    add h
    ld e, d
    ld d, h
    cp e
    ld l, h
    ld c, c
    ld e, c
    ld d, h
    ld l, b
    ld l, d
    adc b
    sub [hl]
    and d
    sub a
    sub a
    ld c, c
    adc b
    or [hl]
    ld d, [hl]
    add [hl]
    ld a, b
    ld a, c
    ld l, b
    and l
    cp b
    ld [hl], $67
    add sp, $68
    jp Jump_00c_7e73


    ld h, h
    or l
    ld a, e
    ld c, b
    sub $68
    ld l, a
    ld h, h
    cp b
    ld l, b
    ld [hl], d
    add h
    or [hl]
    ld h, a
    call nc, Call_00c_6a6a
    add l
    and a
    xor d
    ld h, a
    sub h
    ld e, b
    ld e, b
    and l
    ret z

    ld [hl], a

jr_00c_4831:
    sub l
    xor c
    ld c, e
    ld d, h
    add $58
    and $93
    sub [hl]
    add [hl]
    and a
    add [hl]
    add a
    ld c, e
    ld b, [hl]
    ld l, b
    ld l, h
    ld l, h
    ld d, [hl]
    ld e, c
    ld a, b
    push bc
    adc c
    ld a, b
    add a
    adc c
    ld b, [hl]
    ld [hl], l
    db $db
    and a
    ld h, a
    sbc d
    ld h, [hl]
    ld e, d
    add hl, de
    sbc b
    ld [hl], a
    ld h, a
    ld e, e
    ld a, d
    sbc e
    ld [hl], c
    jp z, $824a

    db $f4
    ld l, c
    ld a, c
    ld h, [hl]
    inc c
    ld l, c
    sub l
    ld c, l
    db $76
    cp c
    rst $00
    scf
    add $7a
    ld [hl], h
    ld b, [hl]
    ld [hl], a
    sub l
    ld [hl], h
    adc c
    rst $00
    and a
    sub [hl]
    and [hl]
    xor e
    ld d, l
    ld h, [hl]
    xor b
    inc l
    ld [hl], e
    add a
    ld e, b
    ld a, c
    sbc b
    sbc c
    and $d4
    ld a, l
    ld d, a
    add a
    ld a, b
    ld d, $88
    ld [hl], a
    ld [hl], h
    adc b

jr_00c_488c:
    ret z

    ld c, c
    ld a, b
    adc b
    adc l
    ld h, a
    daa
    adc c
    ld e, d
    ld b, [hl]
    xor c
    sbc d
    add hl, hl
    or d
    xor c
    xor e
    sub c
    ld a, d
    jr c, jr_00c_4831

    ld e, c
    ld e, h
    adc c
    and [hl]
    ld e, h
    ld e, b
    sbc d
    ld [$5894], sp
    ld a, c
    add [hl]
    xor d
    ret z

    ld [hl], h
    sub l
    adc b
    and a
    adc b
    scf
    adc c
    ld e, c
    ld e, h
    ld a, d
    and l
    ld d, a
    ld b, l
    sbc d
    adc c
    ld [hl], a
    sbc e
    db $76
    add [hl]
    add h
    adc b
    sbc c
    ld h, h
    ld d, l
    reti


    ld l, h
    add h
    and a
    adc c
    add l
    add h
    ld l, h
    ld l, c
    add e
    ld l, b
    add hl, sp
    reti


    ld h, a
    ld d, [hl]
    or [hl]
    or h
    ld h, h
    add a
    rst $00
    sbc b
    add l
    sbc b
    sbc b
    adc c
    ld h, l
    ret c

    sbc e
    dec [hl]
    sbc b
    adc d
    ld l, c
    and h
    ld a, b
    adc e
    add h
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld e, b
    ld a, b
    db $76
    ld h, [hl]
    ld c, b
    adc c
    ld l, d
    sub l
    ld a, d
    adc e
    ld e, b
    ld h, l
    ld a, c
    adc b
    add e
    ld [hl], a
    add a
    push bc
    ld a, c
    ld a, d
    ld e, c
    or a
    jr c, jr_00c_488c

    and a
    ld h, a
    db $76
    adc b
    xor c
    add [hl]
    ld a, b
    adc d
    ld [hl], l
    db $76
    adc b
    sbc c
    db $76
    ld [hl], a
    adc c
    sub [hl]
    sbc b
    ld [hl], a
    ld a, b
    sub l
    ld h, a
    ld a, c
    sub a
    adc b
    ld l, d
    ld l, b
    ld l, c
    ld h, a
    adc c
    sbc b
    ld h, a
    ld l, b
    xor b
    or [hl]
    add a
    ld h, l
    ld [hl], a
    sub a
    ld [hl], a
    ld l, d
    adc c
    ld l, c
    ld [hl], a
    add a
    cp b
    ld [hl], a
    ld b, [hl]
    adc b
    adc d
    ld e, c
    add a
    adc d
    db $76
    ld h, e
    sbc c
    ld a, c
    add a
    add l
    xor d
    sbc b
    or l
    ld a, b
    ld l, c
    add a
    ld h, l
    ld h, [hl]
    adc b
    and a
    add a
    add a
    sub a
    ld a, e
    ld d, a
    ld l, b
    sub a
    ld c, b
    add [hl]
    sbc b
    adc c
    add a
    add a
    sbc b
    ld e, b
    and [hl]
    adc d
    ld l, b
    sub [hl]
    sbc b
    ld l, d
    add l
    ld [hl], a
    ld l, c
    ld [hl], h
    or a
    ld e, b
    sbc b
    add [hl]
    ld a, c
    ld h, [hl]
    and l
    xor c
    ld h, a
    ld [hl], a
    sub a
    add [hl]
    ld l, b
    adc c
    ld a, b
    db $76
    ld e, c
    ld a, d
    adc b
    ld d, a
    and a
    adc c
    ld [hl], l
    add h
    adc c
    adc b
    ld h, a
    ld l, c
    ld l, d
    ld a, c
    ld a, b
    ld h, a
    sbc b
    add [hl]
    ld h, [hl]
    ld a, b
    ld a, e
    db $76
    db $76
    adc d
    sbc b
    add [hl]
    ld l, d
    ld h, [hl]
    add a
    ld l, c
    ld c, b
    or a
    ld a, c
    ld c, b
    ld [hl], a
    adc e
    ld e, c
    ld [hl], l
    adc c
    ld a, c
    add [hl]
    and [hl]
    adc b
    ld a, b
    add l
    or a
    ld [hl], a
    sub a
    ld d, a
    sub a
    adc b
    and a
    adc b
    ld l, c
    sub [hl]
    ld a, b
    ld l, c
    ld h, a
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld l, b
    add [hl]
    sub a
    ld e, b
    add a
    and [hl]
    ld a, c
    ld d, a
    add [hl]
    adc c
    ld d, [hl]
    and l
    add a
    ld a, c
    and [hl]
    sbc b
    ld a, d
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, c
    db $76
    add l
    add a
    adc c
    adc b
    xor b
    ld a, b
    adc b
    db $76
    ld c, c
    add l
    ld a, d
    ld l, b
    ld [hl], a
    sbc c
    ld a, b
    ld [hl], a
    add a
    ld h, a
    add [hl]
    ld l, c
    ld l, b
    xor b
    or [hl]
    add a
    add a
    ld a, b
    ld l, b
    ld d, [hl]
    ld l, b
    ld a, c
    ld a, b
    adc b
    sbc c
    adc b
    ld h, a
    ld [hl], a
    sub [hl]
    add [hl]
    db $76
    adc b
    add a
    adc e
    ld l, b
    add a
    adc b
    add [hl]
    add [hl]
    adc c
    adc c
    add a
    ld l, b
    ld l, b
    adc b
    ld h, a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, c
    ld a, c
    add a
    sub [hl]
    adc b
    ld h, a
    db $76
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    ld l, c
    add a
    ld a, c
    ld e, b
    add l
    xor b
    ld e, c
    add [hl]
    add a
    ld a, c
    ld h, a
    add a
    adc c
    ld [hl], a
    add a
    ld a, c
    adc c
    add [hl]
    sub [hl]
    ld a, d
    ld h, a
    add a
    adc c
    ld l, c
    sub a
    ld [hl], a
    ld l, d
    add a
    sbc b
    ld a, b
    ld d, a
    or a
    ld [hl], a
    ld e, b
    adc b
    adc b
    ld l, c
    ld h, a
    adc c
    adc c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    ld l, c
    ld a, b
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    add a
    adc b
    ld [hl], a
    ld a, b
    adc d
    ld a, b
    ld [hl], a
    ld a, c
    add a
    add [hl]
    add a
    add a
    ld a, b
    add a
    ld h, a
    adc b
    adc b
    add a
    add a
    sub [hl]
    ld [hl], a
    add a
    sbc c
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    sbc c
    ld l, b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    db $76
    ld a, d
    ld a, b
    add [hl]
    sub l
    adc b
    sub [hl]
    db $76
    ld a, b
    ld h, a
    sbc b
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    ld h, a
    db $76
    adc b
    ld a, b
    ld [hl], l
    sub a
    adc d
    add a
    ld [hl], a
    ld l, c
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    and [hl]
    sbc b

Call_00c_4a88:
Jump_00c_4a88:
    ld e, c
    ld a, d
    adc c
    add a
    ld h, [hl]
    sub a
    adc b
    db $76
    and a
    ld a, e
    ld l, b
    db $76
    ld a, b
    sbc b
    sub a
    ld [hl], a
    ld a, c
    ld a, b
    adc c
    ld a, b
    db $76
    and l
    add a
    db $76
    ld [hl], a
    ld a, d
    ld [hl], a
    ld [hl], a
    adc b
    ld l, c
    add [hl]
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    ld [hl], a
    add [hl]
    adc b
    ld l, b
    sub l
    xor b
    ld l, c
    ld h, a
    add a
    ld a, c
    ld a, c
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    sub a
    add a
    ld h, a
    ld [hl], a
    add a
    ld e, c
    ld a, b
    sub a
    ld a, b
    db $76
    sub [hl]
    ld a, c
    add [hl]
    and a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    sub [hl]
    adc b
    ld l, b
    sub [hl]
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld l, b
    sub a
    sub a
    ld a, b
    sub a
    add [hl]
    ld [hl], a
    ld l, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld l, c
    ld l, c
    ld a, b
    add a
    sub [hl]
    ld [hl], l
    sbc b
    ld a, d
    ld [hl], a
    ld a, b
    ld l, c
    db $76
    ld a, b
    add a
    sbc b
    adc b
    ld a, b
    ld l, c
    add a
    sub [hl]
    add a
    adc b
    ld [hl], a
    ld a, b
    ld e, c
    ld [hl], a
    adc b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, d
    ld l, b
    ld h, a
    db $76
    add [hl]
    sub [hl]
    adc b
    ld l, c
    ld a, b
    adc b
    ld l, c
    adc b
    sub a
    add a
    ld [hl], a
    add a
    adc c
    ld h, a
    add a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc b
    ld a, b
    sub a
    add l
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    sub a
    sbc c
    ld [hl], a
    adc b
    adc b
    ld l, b
    add a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld l, b
    adc b
    adc b
    ld h, a
    add a
    adc b
    ld a, c
    db $76
    sbc b
    adc c
    ld h, a
    adc b
    ld a, c
    ld l, b
    db $76
    adc b
    ld a, b
    add [hl]
    and [hl]
    ld a, c
    ld l, b
    sub a
    ld a, b
    ld l, b
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    db $76
    add [hl]
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    add [hl]
    sbc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld l, b
    ld a, b
    add a
    add a
    adc b
    add [hl]
    sub [hl]
    ld a, b
    ld l, d
    ld [hl], a
    adc b
    ld a, b
    sub a
    add a
    adc b
    ld l, b
    adc b
    ld a, c
    ld h, a
    add a
    sbc b
    adc b
    add a
    ld l, c
    ld e, d
    ld l, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    add a
    add a
    add a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    db $76
    sub [hl]
    sub a
    add a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    add a
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    sub a
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    adc b
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
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
    ld l, b
    adc b
    ld a, b
    ld l, b
    adc b
    adc b
    ld a, b
    add [hl]
    adc c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    sub l
    add [hl]
    add a
    adc b
    ld a, b
    ld a, c
    ld a, b
    add [hl]
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    sub a
    ld [hl], a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    ld l, c
    add a
    add a
    add a
    db $76
    sbc b
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    sub a
    adc b
    ld [hl], a
    ld a, b
    adc c
    ld l, c
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add [hl]
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add [hl]
    adc b
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    adc b
    ld a, b
    add a
    ld l, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add [hl]
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
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld a, b
    add [hl]
    sub a
    adc b
    add a
    add a
    ld a, b
    add a
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
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
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
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    sub a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld l, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld b, l
    ld [hl], $96
    jr c, jr_00c_4deb

    ld b, h
    ld b, e
    inc sp
    ld d, h
    ld d, h
    ld b, e
    jr nz, jr_00c_4d8d

jr_00c_4d8d:
    nop
    ld [de], a
    inc sp
    or l
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], l
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld d, l
    ld b, e
    inc sp
    inc [hl]
    ld b, a
    sbc d
    cp e
    ld c, h
    cp h
    cp e
    call $dedd
    db $dd
    xor $de
    call z, $cccc
    res 7, e
    xor d
    sub a
    and e
    nop
    nop
    nop
    db $10
    ld de, $3312
    dec [hl]
    ld b, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc d
    adc c
    xor d
    cp d
    xor e
    call $cccd
    jp z, $99a9

    adc b
    adc c
    ld a, b
    ld [hl], a
    add a
    adc b
    add hl, sp
    adc b
    sbc b
    sbc c
    xor c
    sbc c
    add a
    ld h, l
    ld d, h
    inc sp
    ld [hl+], a
    inc hl
    inc h
    ld [hl+], a
    ld sp, $e211
    inc sp
    dec [hl]
    ld b, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, c
    sbc d
    xor e
    cp l

jr_00c_4deb:
    db $dd
    xor $ef
    rst $18
    cp $4e
    sbc $dd
    db $dd
    res 7, d
    sbc c
    adc c
    adc b
    sbc b
    add a
    add a
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld b, l
    ld b, e
    inc hl
    ld [hl-], a
    inc hl
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    ld d, h
    ld b, l
    ld d, h
    ld d, l
    or l
    ld h, [hl]
    db $76
    adc b
    sbc c
    xor d
    cp d
    cp e
    call z, $dccc
    call c, $ccdc
    call z, Call_00c_5bbc
    cp e
    cp d
    cp d
    xor e
    xor c
    sbc c
    sbc b
    db $76
    ld [hl], l
    ld h, e
    ld b, h
    ld [hl+], a
    ld [hl-], a
    inc sp
    inc sp
    sub e
    ld d, h
    ld d, [hl]
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    sbc c
    adc c
    xor c
    xor c
    sbc d
    adc d
    xor c
    sbc d
    xor c
    xor c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    sbc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    ld e, b
    adc b
    ld a, b
    db $76
    ld h, l
    ld d, l
    ld b, h
    inc sp
    inc hl
    inc de
    inc hl
    inc h
    inc [hl]
    ld b, h
    ld b, l
    ld d, [hl]
    add $77
    ld [hl], a
    ld a, b
    adc c
    adc c
    sbc c
    xor d
    xor e
    cp e
    cp h
    call z, $cccd
    db $dd
    call z, $cc7d
    cp d
    cp d
    cp c
    sbc d
    adc c
    xor c
    sbc c
    adc c
    adc b
    adc b
    add a
    add a
    add a
    db $76
    ld h, l
    ld d, l
    ld b, h
    inc sp
    inc hl
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    or l
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc d
    sbc d
    sbc e
    cp e
    xor e
    set 1, h
    cp h
    cp e
    bit 1, e
    cp d
    jp z, $abab

    xor d
    xor d
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    add l
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld b, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    xor c
    sbc c
    sbc d
    adc d
    sbc c
    sbc c
    sbc d
    adc c
    sbc b
    ld c, c
    adc c
    adc c
    sbc b
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    sub h
    ld b, l
    ld b, l
    ld d, h
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc b
    sbc c
    xor d
    sbc d
    sbc e
    xor e
    cp d
    xor e
    cp e
    cp e
    xor e
    xor d
    xor d
    xor c
    xor c
    sbc c
    sbc c
    add hl, sp
    sbc b
    sub a
    sbc b
    add a
    add a
    add a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld d, e
    ld b, e
    inc [hl]
    sub l
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    sbc b
    sbc c
    sbc d
    xor d
    xor d
    cp e
    cp e
    xor e
    cp e
    xor e
    cp e
    xor d
    xor d
    xor d
    xor d
    xor d
    ld e, c
    sbc c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, l
    ld b, l
    ld d, l
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld a, b
    adc b
    adc c
    ld a, c
    sbc b
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    ld l, b
    sbc b
    adc c
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc c
    ld a, c
    sbc c
    xor c
    sbc d
    sbc c
    xor d
    sbc d
    sbc d
    xor c
    xor c
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    ld e, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    add l
    ld b, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc c
    sbc c
    sbc d
    adc d
    sbc d
    xor c
    xor d
    xor d
    sbc d
    cp d
    xor c
    xor c
    xor c
    adc c
    sbc d
    adc c
    adc c
    ld l, b
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    add [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    add [hl]
    add a
    sbc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    sub a
    sub a
    ld l, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    add a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc c
    adc b
    sbc c
    adc c
    sbc c
    sbc b
    xor c
    sbc b
    sbc c
    sbc c
    adc b
    sbc b
    adc b
    adc c
    add a
    add a
    ld l, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, l
    add [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld a, c
    adc c
    sbc b
    adc c
    adc c
    adc c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    sbc b
    ld a, c
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld l, b
    ld h, a
    db $76
    ld a, b
    db $76
    add [hl]
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc c
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    sub a
    ld l, b
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    add a
    db $76
    db $76
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    sub a
    sbc b
    sbc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc b
    adc b
    adc c
    adc b
    ld a, b
    adc c
    adc b
    add a
    adc b
    adc c
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld l, b
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc c
    adc b
    sbc b

Call_00c_510c:
    ld a, b
    sbc b
    adc c
    adc b
    add a
    sub a
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
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    sbc b
    adc b
    ld a, c
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    sub a
    adc b
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    add a
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
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc c
    adc b
    ld a, c
    ld a, c
    adc b
    adc b
    adc b
    adc c
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    dec b
    ld h, $95
    ld b, a
    ld h, e
    ld hl, $0100
    inc hl
    inc sp
    ld b, d
    ld b, e
    inc hl
    stop
    nop
    inc b
    inc [hl]
    ld d, [hl]
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc c
    ld [hl], a
    db $76
    ld d, h
    ld [hl+], a
    stop
    ret nc

    inc bc
    ld [hl], $7a
    sbc d
    cp e
    cp e
    call z, $eede
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld l, $ce
    call $abbb
    xor c
    ld [hl], a
    ld d, h
    jr nz, jr_00c_51da

jr_00c_51da:
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    inc h
    ld b, l
    ld [hl], a
    adc b
    xor d
    xor d
    cp d
    cp e
    cp h
    cp d
    xor e
    cp d
    cp e
    cp d
    cp d
    res 5, e
    xor c
    sbc c
    sbc c
    sbc e
    xor h
    xor d
    xor d
    xor d
    xor e
    xor d
    cp e
    cp e
    cp h
    call c, $dc0c
    call c, $a9b9
    adc b
    add a
    ld d, l
    ld b, d
    jr nz, jr_00c_520b

jr_00c_520b:
    nop
    nop
    nop
    nop
    nop
    pop bc
    nop
    nop
    nop
    ld bc, $2312
    ld b, h
    ld b, [hl]
    ld h, [hl]
    adc c
    adc c
    sbc e
    cp e
    set 1, h
    xor l
    db $dd
    db $ed
    db $ed
    xor $dd
    db $ec
    jp z, $a9ab

    sbc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc d
    ld c, d
    xor e
    xor e
    xor d
    cp d
    cp e
    cp d
    xor c
    sbc b
    add a
    ld [hl], l
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    and h
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    inc sp
    ld b, h
    inc [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, a
    db $76
    add a
    adc b
    sbc c
    ld a, d
    cp h
    call z, $eddd
    call $dcdd
    res 7, d
    cp d
    sbc d
    sbc b
    sub a
    adc b
    db $76
    ld [hl], $65
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld b, l
    ld d, l
    ld b, l
    inc sp
    inc hl
    inc hl
    ld [hl-], a
    ld [hl-], a
    add h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]

Call_00c_5275:
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    rst $10
    adc c
    sbc c
    xor e
    xor h
    call z, $dccd
    db $ed
    sbc $de
    xor $ee
    db $ed
    xor $dd
    dec a
    call z, $bbcb
    cp e
    xor e
    xor d
    xor c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld d, [hl]
    ld d, l
    inc [hl]
    ld d, d
    ld [hl-], a
    ld [hl+], a
    ld hl, $2222
    inc sp
    inc [hl]
    inc [hl]
    ld b, e
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    and [hl]
    ld h, [hl]
    ld d, l
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc d
    xor d
    xor d
    xor c
    xor c
    xor c
    xor d
    sbc d
    xor c
    xor c
    sbc d
    xor c
    xor c
    xor c
    sbc c
    sbc b
    ld e, c
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld b, l
    ld b, h
    inc [hl]
    ld b, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    or [hl]
    db $76
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    xor b
    sbc d
    sbc d
    sbc d
    sbc e
    xor d
    xor h
    adc d
    res 7, h
    cp h
    cp h
    cp h
    cp e
    cp e
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    daa
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, e
    ld b, e
    ld [hl-], a
    ld hl, $2162
    ld [hl-], a
    inc sp
    ld b, h
    inc [hl]
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    or a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    xor d
    xor d
    cp e
    cp h
    cp e
    set 1, e
    set 1, d
    res 1, e
    xor e
    xor d
    cp c
    cp c
    xor d
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    ld l, b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld l, b
    ld [hl], a
    add a
    adc c
    adc c
    sbc b
    xor b
    adc d
    sbc d
    sbc d
    xor c
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld d, a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, h
    ld d, l
    ld b, h
    add h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc c
    or a
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    xor d
    cp d
    res 7, d
    cp e
    xor e
    cp d
    cp d
    ld a, e
    xor d
    sbc c
    xor c
    sbc d
    sbc d
    adc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    adc b
    sub a
    add a
    sub a
    ld l, b
    ld [hl], a
    add [hl]
    db $76
    db $76
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    add [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    adc c
    adc c
    adc b
    xor c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc c
    adc b
    sbc c
    add a
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    adc b
    and a
    adc b
    ld a, b
    adc b
    ld a, b
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    sbc c
    sbc d
    xor c
    ld a, c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sbc b
    add a
    adc b
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld h, a
    db $76
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    sbc b
    adc c
    adc b
    sbc c
    sbc b
    sbc c
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    adc b
    sbc c
    ld a, c
    add a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc c
    adc c
    sbc b
    ld a, c
    adc b
    sbc b
    adc c
    adc b
    add a
    sbc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    db $76
    db $76
    ld [hl], a
    db $76
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    add a
    sub a
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    xor b
    xor c
    adc c
    adc c
    adc c
    sbc b
    sbc b
    adc b
    sbc b
    add a
    sbc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    add [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, c
    adc b
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc c
    add a
    adc b
    adc c
    ld a, b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc c
    adc c
    ld a, c
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    adc c
    adc b
    add a
    sub a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    add a
    adc b
    adc c
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    adc b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a

Jump_00c_5587:
    ld [hl], a
    ld l, b
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    rlca
    ld d, [hl]
    sub l
    ld l, b
    ld h, l
    jr nc, jr_00c_5597

jr_00c_5597:
    ld de, $2322
    inc sp
    inc sp
    ld b, h
    ld b, [hl]
    ld b, e
    inc sp
    ld h, b
    nop
    ld bc, $3321
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    ld l, b
    ld h, [hl]
    push af
    ld d, l
    inc sp
    db $10
    ld bc, $1111
    ld [hl-], a
    dec h
    ld b, l
    ld l, b
    cp e
    db $dd
    db $ed
    xor $ff
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $de
    call z, $bccc
    cp d
    xor c
    ld c, b
    add [hl]
    ld d, h
    ld d, e
    ld b, h
    ld b, h
    ld [hl-], a
    ld de, $0010
    nop
    nop
    nop
    ld de, $2523
    add l
    ld h, a
    add a
    adc b
    sbc c
    sbc c
    adc d
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    sbc b
    sbc b
    rst $00
    db $76
    ld d, [hl]
    ld b, h
    ld l, c
    sbc e
    cp e
    cp l
    call z, $cddd
    adc $cc
    set 1, h
    call z, $cb6c
    call z, $bbbc
    cp d
    xor d
    sbc b
    sbc c
    adc c
    adc b
    add a
    add a
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld [hl-], a
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    stop
    ld bc, $1301
    inc sp
    push de
    ld d, [hl]
    ld d, a
    ld [hl], a
    adc c
    adc b
    sbc c
    sbc d
    sbc c
    xor d
    xor d
    xor d
    jp z, $ccbb

    call $ddbe
    sbc $cd
    db $dd
    call $cdcd
    call $cccd
    call z, $cbcb
    cp d
    cp e
    ld l, e
    cp d
    cp e
    cp d
    cp e
    cp e
    cp d
    cp e
    xor d
    xor d
    xor d
    sbc d
    sbc b
    sbc b
    add a
    ld h, [hl]
    dec h
    ld d, h
    inc sp
    ld [hl+], a
    ld de, $0010
    nop
    nop
    nop
    ld bc, $1000
    ld de, $3322
    or e
    inc sp
    ld [hl-], a
    ld b, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc c
    sbc d
    xor d
    sbc d
    cp e
    call z, $ccbc
    db $dd
    call $ccdc
    cp e
    jp z, $a9aa

    xor d
    sbc c
    xor c
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc d
    sbc c
    xor d
    xor c
    xor c
    xor c
    sbc c
    ld e, b
    add a
    add [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    inc sp
    inc [hl]

jr_00c_5699:
    inc [hl]
    ld b, l
    ld b, l
    ld d, h
    ld d, h
    ld b, l
    ld d, h
    and l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a

Jump_00c_56a7:
    db $76
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc b
    adc c
    xor d
    xor d
    sbc e
    cp e
    set 1, h
    cp l
    call $dcdd
    adc $cd
    call z, $cbdb
    jp z, $aaba

    ld l, c
    sbc b
    add a
    add a
    db $76
    db $76
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, h
    inc sp
    inc [hl]
    ld [hl+], a
    ld [hl+], a
    ld sp, $3222
    inc hl
    inc sp
    ld b, h
    add h
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    jp hl


    sbc c
    xor c
    xor d
    jp z, $cdcc

    adc $de
    sbc $ee
    cp $ff
    rst $28
    cp $ed
    ld a, l
    db $dd
    call c, $cbcc
    res 7, e
    xor d
    xor d
    sbc d
    sbc d
    adc c
    sbc c
    sbc b
    adc b
    ld a, b
    jr c, jr_00c_5699

    ld l, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    ld d, e
    ld b, h
    inc [hl]
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld d, d
    inc sp
    inc sp
    ld b, e
    ld b, e
    ld b, h
    ld b, h
    dec [hl]
    inc [hl]
    ld d, h
    ld b, h
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    ld d, l
    or l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    add a
    adc b
    adc c
    sbc d
    sbc d
    cp d
    cp e
    cp d
    adc h
    cp h
    cp e
    set 1, e
    cp e
    res 7, e
    cp d
    cp d
    sbc e
    sbc d
    xor d
    sbc c
    xor c
    sbc d
    ld l, d
    adc c
    sbc b
    adc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, h
    ld d, l
    ld b, h
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld [hl], l
    db $76
    ld h, a
    ld h, a
    db $76
    sub a
    ld l, b
    db $76
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc c
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    xor d
    xor d
    xor d
    cp d
    cp d
    cp e
    cp e
    cp d
    cp d
    jp z, $9a9b

    sbc c
    xor c
    sbc c
    ld e, b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld b, a
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld d, e
    ld b, h
    ld b, h
    ld b, d
    ld b, e
    ld [hl-], a
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld b, l
    sub l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    sbc b
    ld a, c
    ret


    adc d
    sbc c
    sbc d
    sbc c
    cp d
    xor e
    cp e
    cp e
    cp h
    call z, $cccc
    call $cccd
    sbc h
    res 7, e
    res 7, e
    xor e
    xor d
    xor e
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    ld c, b
    sbc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld d, h
    ld b, e
    inc [hl]
    inc [hl]
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld h, l
    sub l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld h, [hl]
    add a
    ld a, b
    ld a, c
    ld a, b
    sbc b
    sbc c
    sbc d
    adc d
    xor c
    xor d
    xor d
    xor e
    xor d
    xor e
    cp d
    xor d
    xor d
    xor d
    xor c
    xor c
    sbc c
    xor c
    sbc c
    adc c
    sbc c
    adc b
    sbc c
    adc c
    adc c
    sbc b
    ld a, b
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc b
    ld a, c
    add a
    ld l, b
    adc b
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    add [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    adc c
    ld a, b
    sbc b
    sbc b
    xor c
    sbc c
    xor c
    xor d
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor d
    sbc d
    ld l, c
    sbc d
    sbc c
    adc c
    adc b
    adc b
    add a
    ld a, c
    ld [hl], a
    add a
    db $76
    add a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld b, a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld [hl], h
    ld d, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]

Call_00c_5887:
    ld h, l
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    and a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor d
    xor e
    sbc e
    sbc e
    xor e
    cp e
    cp e
    cp e
    cp e
    cp d
    cp e
    xor d
    xor d
    xor d
    sbc d
    sbc c
    xor c
    adc d
    adc c
    ld l, b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    add [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    and a
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc d
    sbc d
    sbc c
    sbc d
    sbc d
    xor c
    sbc c
    adc c
    sbc c
    sbc c
    xor b
    sbc c
    sbc d
    adc b
    sbc c
    sbc b
    adc c
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    add a
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    adc c
    adc d
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    add [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    db $76
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    adc c
    ld a, c
    ld a, b
    xor b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc d
    xor d
    xor d
    xor d
    sbc e
    sbc c
    adc d
    sbc c
    sbc d
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    adc b
    adc b
    sbc b
    add a
    sbc b
    ld a, b
    adc c
    ld d, a
    sub a
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    add [hl]
    ld h, a
    ld h, a
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    sub a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    adc c
    adc c
    adc b
    ld a, b
    adc b
    adc c
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
    add a
    add a
    sbc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, a
    db $76
    db $76
    ld h, a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
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
    ld a, b
    sbc b
    add a
    adc b
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    adc c
    adc b
    sbc c
    adc b
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    db $76
    add [hl]
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld d, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor c
    xor b
    sbc c
    adc d
    sbc b
    sbc b
    sbc c
    ld a, c
    sbc b
    adc c
    ld a, c
    ld a, c
    adc b
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
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a

Jump_00c_5a78:
    ld h, a
    db $76
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    add a
    ld a, b
    ld [hl], a

Call_00c_5a98:
    add a
    adc b
    adc b
    add a
    adc b
    adc c
    adc b
    adc c
    ld a, b
    sbc b
    adc c
    adc c
    adc c
    adc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc c
    ld a, b
    adc b
    add a
    adc b
    adc c
    add a
    adc b
    adc b
    ld a, c
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    sub a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc c
    sbc b
    sub a
    sbc b
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    sub a
    add a
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc b
    adc c
    adc c
    adc b
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b

Call_00c_5b79:
    adc b
    ld a, c
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
    sbc b

Jump_00c_5b87:
    adc c
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    adc c
    add a
    db $76
    adc d
    ld a, c
    sub a
    sub l
    add a
    adc b
    adc c
    ld l, b
    ld a, c
    ld e, b
    ld h, [hl]
    ld a, b
    sbc b
    sub a
    adc b
    sbc b
    ld l, b
    add [hl]
    add a
    sbc d
    ld [hl], a
    add [hl]
    or e
    ld h, [hl]
    adc c
    sub a
    ld d, [hl]
    adc h
    add [hl]
    ld [hl], l
    xor d
    ld a, [de]
    add a
    add d
    ld b, l
    ld a, [hl]
    cp e
    or a
    ld h, l
    ld hl, $ba45
    xor a

Call_00c_5bbc:
    cp e
    rst $10
    and [hl]
    ld d, [hl]
    add e
    ld b, d
    ld h, h
    dec [hl]
    ld a, d
    call $fcef
    cp c
    cp b
    dec h
    ld bc, $8756
    jr z, jr_00c_5c27

    push de
    rst $00
    adc h
    ld a, d
    or a
    xor b
    ld [hl], e
    ld l, c
    db $76
    ld e, d
    ld d, a
    db $76
    add l
    ld e, e
    adc b
    sbc c
    cp e
    ld d, l
    ld d, h
    ld b, l
    xor d
    ld l, h
    ld a, l
    or [hl]
    xor c
    ld [hl], h
    ld d, c
    ld [hl], $58
    ld c, h
    or l
    or $6d
    ld l, h
    ld a, [hl-]
    ld h, l
    ld l, c
    ld d, [hl]
    ld h, e
    and a
    sbc b
    rst $00
    sub l
    ld a, b
    ld e, b
    ld h, l
    ld a, [de]
    ld l, c
    add hl, hl
    reti


    ld hl, sp-$22
    ld c, h
    inc d
    ld b, b
    ld b, d
    ld c, c
    ld a, d
    cp e
    sub a
    sub [hl]
    cp d
    or a
    adc c
    add [hl]
    ld [hl], d
    sub d
    ld h, a
    ld e, b
    ld l, l
    ld c, e
    set 1, e
    push bc
    and b
    ld b, h
    ld a, c
    xor d
    ld [hl], $b7
    ret z

    ld c, b
    ld l, d
    ld l, a
    add [hl]
    rst $30
    ld [hl], e

jr_00c_5c27:
    ld l, b
    ld e, e
    ld d, $63

jr_00c_5c2b:
    cp c
    push af
    ld l, l
    inc l
    ld h, h
    sub h
    add l
    ld a, b
    adc b
    and h
    add [hl]
    ld l, e
    adc d
    add a
    ld c, e
    and [hl]
    adc d
    ld h, a
    ld [hl], l
    ld h, b
    and b
    or [hl]
    ld e, h
    sbc c
    res 6, a
    sbc l
    ld h, l
    ld d, [hl]
    and h
    ld [hl], h
    add l
    ld c, c
    add hl, sp
    ld l, d
    sub l
    ld a, e
    ld l, [hl]
    ld [hl], a
    or [hl]
    ld a, b
    ld b, a
    ld b, [hl]
    and b
    add h
    ld h, [hl]
    ld a, h
    call z, $e798
    or a
    ld e, d
    add hl, de
    ldh [$a0], a
    call nc, Call_000_3e4d
    cp e
    xor d
    adc c
    or l
    ld h, e
    db $76
    ld c, b
    ld b, [hl]
    adc b
    ld e, e
    ld d, a
    add a
    xor d
    add hl, sp
    ld d, a

jr_00c_5c74:
    and [hl]
    and h
    ld hl, sp+$36

Jump_00c_5c78:
    ld d, h
    ld h, l
    call nz, $8fe6
    ld a, [hl+]
    sbc d
    and b
    add e
    adc b
    jr jr_00c_5c2b

    cp d
    or a
    and a
    adc c
    add hl, sp
    add hl, bc
    ld [hl], d

jr_00c_5c8b:
    jp nz, $8d67

    cp b
    cp c
    ld b, [hl]
    ld c, b
    or [hl]
    ld e, c
    ld a, b
    and h
    adc e
    ld l, c
    ld [hl], l
    add d
    rst $00
    dec sp
    ld a, [hl+]
    sub d
    xor d
    sbc e
    rst $08
    ld c, b
    xor b
    add a
    ld b, l

jr_00c_5ca5:
    or h
    ld a, [hl+]
    ld h, [hl]
    sub a
    ld c, d
    inc a
    ld e, b
    add e
    ld sp, hl
    adc a
    add a
    add d
    add h
    ld [hl], $89
    ld d, [hl]
    sub l
    db $e4
    or h
    sbc l
    ld l, d
    jr jr_00c_5c74

    ret z

    ld [hl], l
    ld a, b
    ld h, h
    sub [hl]
    adc c
    dec sp
    reti


    ld c, e
    ld c, b
    sub e
    cp b
    ld [hl], h
    rst $10
    adc c
    ld a, d
    ld e, c
    dec [hl]
    sub e
    or [hl]
    ld d, a
    sbc e
    ld c, e
    ld h, [hl]
    xor b
    ld d, e
    ret


    ld a, c
    add hl, sp
    sbc b
    ld d, [hl]
    and h
    xor d
    db $76
    ld h, a
    xor b
    sub l
    call nz, Call_00c_5887
    ld c, e
    rst $10
    ld a, d
    ld a, e
    ld h, l
    ld d, a
    ld [hl], l
    sub [hl]
    ld a, b
    adc c
    ld l, d
    ld c, c
    db $76
    ret z

    db $76
    sub a
    add [hl]
    ld l, e
    ld e, h
    jr c, jr_00c_5c8b

    cp b
    ld c, c
    sbc b
    add a
    or [hl]
    sbc b
    ld e, d
    and a
    ld c, d
    ld d, l
    call nz, Call_00c_68b9
    ld h, l
    sub [hl]
    add a
    sbc b
    adc c
    ld a, c
    ld l, c
    dec sp
    jr c, jr_00c_5ca5

    and a
    adc b
    db $76
    ld a, e
    sbc b
    ld a, c
    sub e
    or [hl]
    inc l
    scf
    ld l, b
    ld a, b
    push hl
    sub $77
    or e
    ld b, h
    and [hl]
    xor c
    add hl, sp
    ld e, d
    ld h, a
    db $76
    and a
    sbc b
    push bc
    push bc
    and a
    ld d, a
    ld l, b
    ld h, a
    ld e, c
    adc h
    add l
    ld a, b
    or a
    or l
    and a
    add $87
    ld [hl], $a7
    ld l, d
    ld c, c
    ld e, c
    ld a, b
    sub [hl]
    sbc b
    add e
    add $5c
    ld b, a
    and l
    adc b
    ld l, c
    ld l, e
    ld d, a
    and l
    ld a, c
    add [hl]
    or l
    ld l, d
    ld [hl], h
    sub l
    ld a, b
    sbc c
    ld a, h
    dec sp
    sub h
    adc b
    add h
    or e
    add [hl]
    db $76
    or a
    ld l, c
    sbc c
    ld e, c
    ld e, e
    sub [hl]
    ld a, b
    add [hl]
    ld [hl], l
    and e
    sbc d
    ld e, h
    ld a, [hl-]
    sbc b
    add l
    adc b
    ld l, b
    adc b
    ld c, b
    add l
    and l
    ld a, d
    ld c, c
    ld a, b
    ld [hl], a
    or h
    ld l, e
    ld c, d
    sub l
    ld l, d
    ld d, h
    push bc
    adc d
    ld a, d
    ld a, d
    ld l, b
    and l
    ld e, c
    or a
    sub [hl]
    ld a, c
    db $76
    sub l
    ld [hl], a
    xor b
    ld l, h
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld h, [hl]
    ld a, b
    ld a, d
    ld e, c
    and h
    adc d
    ld c, d
    adc d
    ld h, l
    or a
    ld l, c
    ld b, a
    sub [hl]
    ld e, e
    ld d, a
    ld [hl], a
    sbc c
    sub a
    ld l, h
    add l
    or a
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    push bc
    adc h
    ld [hl], a
    xor b
    ld d, a
    sub h
    and a
    ld c, d
    add l
    ld a, b
    ld [hl], a
    add a
    ld e, e
    ld [hl], a
    or a
    ld [hl], a
    sub l
    and [hl]
    db $76
    sub [hl]
    adc c
    ld h, l
    ld e, b
    adc b
    ld a, d
    or [hl]
    add a
    add [hl]
    ld c, c
    and l
    ld d, [hl]
    sub a
    ld a, c
    add a
    xor b
    ld a, h
    ld h, l
    sbc c
    add a
    ld [hl], a
    sub l
    ld [hl], a
    add h
    sbc e
    ld l, c
    add a
    sbc c
    ld l, c
    and h
    adc b
    ld h, a
    or e
    add a
    ld a, b
    ld e, d
    ld e, e
    and h
    sbc d
    ld l, b
    add a
    ld [hl], a
    ld h, a
    sub l
    ld a, e
    ld d, [hl]
    xor b
    ld e, d
    ld [hl], a
    sbc c
    ld e, d
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    ld a, c
    add l
    xor c
    ld c, b
    add a
    ld a, d
    ld e, c
    ld a, b
    sub l
    add [hl]
    adc b
    ld e, b
    or [hl]
    sub a
    ld l, c
    db $76
    ld a, b
    and [hl]
    sbc c
    ld c, c
    sub [hl]
    ld e, c
    adc b
    sub [hl]
    adc d
    ld e, c
    ld l, c
    add a
    sub l
    ld l, h
    ld a, [hl-]
    ld a, c
    add a
    ld h, l
    ld a, b
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    sbc b
    ld l, d
    adc b
    ld l, c
    and l
    or h
    ld l, b
    ld [hl], h
    sbc c
    adc b
    sub [hl]
    xor e
    ld [hl], l
    sbc b
    ld l, c
    ld e, b
    sub [hl]
    ld a, c
    add h
    adc d
    ld e, b
    add l
    adc b
    ld a, d
    ld a, b
    ld l, e
    add l
    ld a, c
    ld l, b
    ld [hl], l
    ld [hl], a
    ld [hl], a
    sbc c
    ld [hl], a
    adc e
    ld h, l
    sbc b
    ld l, b
    ld h, a
    add h
    xor c
    or h
    xor c
    add l
    adc c
    adc c
    ld e, b
    and [hl]
    ld h, [hl]
    adc b
    ld c, c
    ld [hl], a
    add [hl]
    or a
    ld h, a
    sbc d
    ld e, d
    ld l, b
    ld [hl], l
    ld a, d
    ld l, b
    ld l, d
    ld h, [hl]
    sub h
    and [hl]
    sbc c
    ld l, c
    add a
    add [hl]
    ld a, c
    ld e, c
    db $76
    add a
    and [hl]
    ld [hl], l
    rst $00
    ld [hl], l
    and a
    sub a
    ld l, d
    ld e, d
    ld e, d
    ld h, a
    and l
    sbc c
    ld a, b
    ld h, a
    add a
    sub e
    ret z

    xor d
    ld c, d
    ld l, e
    ld d, a
    sub l
    sub a
    db $76
    adc b
    add [hl]
    add [hl]
    and l
    ld a, b
    sub a
    ld c, d
    sub a
    ld e, b
    sbc b
    ld l, e
    add l
    and e
    add $67
    adc c
    ld c, c
    or l
    sbc c
    ld c, h
    ld c, c
    ld l, b
    ld h, l
    jp nc, Jump_00c_67a7

    db $76
    and a
    add a
    ld e, l
    ld a, [hl+]
    ld [hl], a
    sub a
    ld a, c
    ld h, [hl]
    sub h
    and [hl]
    sub a
    ld l, b
    ld a, c
    adc b
    ld l, e
    ld h, a
    add l
    adc c
    ld l, c
    ld h, l
    or l
    sub l
    or h
    and l
    cp c
    ld c, l
    ld c, d
    add l
    adc b
    ld e, c
    ld h, [hl]
    and e
    db $e4
    adc b
    ld a, b
    and a
    db $76
    ld a, e
    ld c, e
    ld c, b
    sbc e
    ld a, [hl-]
    ld [hl], l
    jp nc, Jump_00c_68b7

    ld a, b
    adc b
    ld l, c
    ld c, d
    ld a, b
    sub [hl]
    ld a, l
    ld b, a
    sub e
    db $e4
    add a
    and l
    sub a
    and a
    ld l, d
    ld l, c
    ld [hl], a
    ld a, b
    ld l, b
    add h
    or [hl]
    adc b
    add e
    add $a8
    ld e, l
    ld a, [hl-]
    ld [hl], l
    or [hl]
    ld c, h
    ld d, [hl]
    and [hl]
    ld l, b
    add [hl]
    sub h
    cp b
    adc c
    ld l, b
    add l
    ld l, d
    ld e, d
    ld l, b
    or e
    and a
    ld l, d
    add e
    call nc, Call_00c_688a
    ld l, b
    sub l
    ld l, d
    ld a, $64
    ld [c], a
    and a
    ld l, b
    add [hl]
    and [hl]
    add a
    ld a, d
    ld [hl], l
    sbc d
    ld a, [hl-]
    add $b5
    adc b
    sub [hl]
    sub a
    sub e
    xor c
    inc l
    db $76
    sbc b
    ld e, d
    db $76
    ld l, c
    sub h
    sbc b
    ld h, a
    ld b, d
    ret z

    ld a, $76
    sub a
    add a
    ld e, c
    ld l, b
    and e
    add $67
    or l
    sub a
    ld e, [hl]
    ld h, [hl]
    cp b
    sbc b
    ld e, d
    ld d, a
    and l
    and l
    ld a, c
    sub e
    sub $6b
    dec sp
    add a
    adc b
    ld c, l
    ld e, b
    ld e, b
    pop bc
    add hl, hl
    ld l, b
    or e
    cp b
    ld c, h
    ld [hl], a
    ld a, d
    ld e, b
    ld a, [hl-]
    add [hl]
    sub [hl]
    adc c
    ld h, [hl]
    jp nz, Jump_00c_7ce5

    ld l, h
    db $76
    adc b
    ld l, b
    ld l, d
    ld b, a
    jp Jump_00c_7689


    and l
    ld a, e
    ld l, b
    adc b
    ld l, e
    ld c, c
    ld l, d
    ld [hl], l
    and l
    ld e, d
    sub h
    db $e3
    xor d
    ld e, b
    adc b
    ld l, d
    ld e, d
    inc a
    ld h, a
    or h
    adc b
    ld [hl], h
    db $e4
    ld c, c
    db $76
    add a
    adc c
    ld l, c
    ld e, h
    ld b, [hl]
    xor c
    ld e, d
    ld h, [hl]
    jp nz, Jump_00c_7ac5

    ld e, c
    ld h, a
    adc d
    ld a, h
    ld l, b
    add a
    ld l, b
    add l
    sub e
    add $79
    ld e, b
    and h
    xor b
    ld e, e
    ld c, b
    adc b
    sub a
    ld e, e
    or l
    or e
    ld a, b
    sub [hl]
    and [hl]
    ld a, h
    ld e, b
    ld c, e
    ld h, [hl]
    sbc c
    ld c, d
    ld [hl], l
    push de
    ld l, d
    ld h, [hl]
    or h
    scf
    ld e, e
    ld a, [hl+]
    ld [hl], a
    sub a
    ld a, d
    ld h, a
    sub l
    sub [hl]
    db $76
    and l
    xor c
    ld a, b
    ld l, b
    add [hl]
    ld a, b
    ld a, l
    ld b, a
    pop bc
    add $7a
    ld d, a
    or h
    or [hl]
    ld a, c
    ld c, d
    ld a, b
    ld l, b
    ld a, c
    sub l
    ld a, b
    ld a, b
    ld h, a
    ld [hl], h
    call nc, Call_00c_7898
    adc c
    ld c, e
    ld d, a
    and a
    add [hl]
    sbc b
    ld e, e
    ld d, l
    or h
    adc b
    ld a, c
    ld a, d
    add a
    ld e, c
    ld a, c
    ld l, b
    add a
    db $76
    adc b
    ld h, a
    add [hl]
    ld a, b
    sub [hl]
    sbc c
    ld l, b
    ld l, c
    ld e, c
    ld [hl], h
    push bc
    ld a, d
    db $76
    and [hl]
    ld [hl], a
    or l
    add a
    ld a, d
    ld e, c
    ld l, b
    db $76
    or [hl]
    ld l, c
    adc b
    and h
    ld l, e
    ld [hl], a
    and [hl]

jr_00c_5fe3:
    sbc b
    ld [hl], a
    ld l, d
    ld c, b
    sub l
    sbc b
    ld a, d
    add l
    and [hl]
    ld l, c
    and l
    ld a, c
    ld a, d
    xor c
    ld e, c
    sub [hl]
    ld l, c
    ld c, b
    jp nz, Jump_00c_6ac6

    ld l, c
    add [hl]
    and [hl]
    adc e
    ld c, c
    db $76
    add a
    ld h, a
    sub [hl]
    and l
    sub a
    ld a, c
    ld h, a
    adc b
    ld l, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld h, [hl]
    and l
    and a
    ld a, d
    ld h, [hl]
    add [hl]
    ld a, e
    ld a, [hl-]
    db $76
    xor b
    ld [hl], a
    sub l
    add a
    sub a
    ld [hl], a
    add [hl]
    and h
    adc d
    ld c, c
    ld [hl], a
    and l
    ld a, c
    db $76
    ld [hl], a
    sub [hl]
    and [hl]
    sub [hl]
    sub a
    sbc b
    ld c, l
    ld e, b
    add a
    ld a, c
    jr c, jr_00c_5fe3

    db $76
    or a
    sbc b
    sbc b
    sub l
    ld a, d
    ld c, b
    sub a
    ld l, b
    ld [hl], a
    and l
    cp b
    ld [hl], l
    sbc b
    ld h, a
    and a
    adc b
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    or h
    sub [hl]
    adc b
    ld h, a
    add [hl]
    and h
    sbc c
    ld e, d
    ld e, c
    adc b
    ld [hl], a
    sub a
    adc b
    add a
    add a
    and [hl]
    ld l, b
    ld a, c
    ld e, c
    add a
    ld l, c
    ld a, c
    ld e, c
    sbc b
    add [hl]
    add a
    ld l, c
    ld a, b
    ld h, a
    ld l, b
    adc b
    ld e, e
    ld [hl], a
    add a
    db $76
    add a
    add a
    add a
    sub a
    ld l, c
    db $76
    sub a
    adc b
    ld e, d
    adc c
    or a
    ld [hl], a
    ld [hl], a
    add a
    ld l, c
    ld a, b
    ld h, a
    adc d
    ld l, b
    ld l, d
    ld e, b
    and [hl]
    ld d, a
    adc b
    ld [hl], a
    ld l, c
    ld h, l
    ld a, c
    ld l, c
    ld [hl], a
    add [hl]
    add [hl]
    and a
    ld l, c
    and [hl]
    adc b
    ld [hl], a
    adc b
    adc d
    ld d, [hl]
    xor b
    ld h, a
    xor b
    sbc b
    ld h, a
    xor c
    ld a, c
    ld e, c
    ld [hl], a
    and [hl]
    sbc b
    ld c, h
    ld d, [hl]
    and l
    ld [hl], a
    adc b
    ld h, [hl]
    sbc b
    ld d, a
    ld c, d
    add [hl]
    ld a, b
    ld h, a
    sub [hl]
    add a
    ld l, d
    ld a, b
    add l
    or l
    ld l, h
    ld e, c
    ld [hl], a
    sub l
    add a
    adc b
    add a
    adc b
    ld l, d
    sub l
    sbc b
    ld l, b
    ld l, c
    ld [hl], a
    ld [hl], a
    ld a, d
    ld h, [hl]
    call nc, Call_00c_68a8
    ld [hl], a
    ld h, a
    add a
    adc b
    ld l, b
    ld l, b
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    and a
    ld e, b
    sub [hl]
    sub a
    ld a, e
    ld e, b
    add [hl]
    add [hl]
    xor d
    ld c, d
    add l
    and a
    ld a, c
    add a
    ld e, h
    ld h, l
    and l
    adc b
    ld h, a
    sbc d
    add [hl]
    or l
    adc c
    ld c, e
    ld [hl], l
    and [hl]
    sub [hl]
    ld l, c
    ld h, [hl]
    sub l
    and [hl]
    ld a, d
    ld l, b
    ld a, b
    add l
    add a
    and a
    ld a, c
    ld [hl], a
    db $76
    or [hl]
    ld a, b
    adc b
    ld a, b
    sub [hl]
    adc c
    ld e, d
    db $76
    add a
    adc b
    adc b
    ld e, b
    sub l
    add a
    adc b
    ld [hl], a
    adc b
    add [hl]
    add a
    ld a, b
    adc b
    ld h, a
    and l
    and [hl]
    ld a, c
    ld h, [hl]
    and a
    sub h
    ld a, d
    ld l, c
    ld h, [hl]
    add a
    ld [hl], a
    sub l
    adc c
    ld h, a
    add [hl]
    adc b
    ld a, d
    ld h, a
    ld a, c
    add [hl]
    ld a, b
    ld e, d
    add a
    and h
    or a
    ld a, b
    ld a, c
    add [hl]
    sub a
    add a
    ld a, c
    ld [hl], l
    add a
    ld a, c
    ld [hl], a
    and [hl]
    ld [hl], a
    sub l
    adc c
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc c
    dec sp
    add l
    or l
    sub a
    ld l, b
    ld h, a
    add [hl]
    xor b
    ld l, d
    ld [hl], a
    ld d, a
    add a
    ld l, b
    sub [hl]
    sub [hl]
    sbc b
    ld [hl], a
    add a
    ld l, c
    ld h, a
    ld l, b
    add [hl]
    xor b
    ld a, b
    and h
    and a
    ld l, d
    ld a, b
    ld e, b
    sub l
    sbc c
    ld l, b
    sub h
    cp b
    ld h, a
    add a
    ld l, c
    add [hl]
    sbc b
    ld a, b
    sub a
    ld e, h
    and l
    and l
    sbc b
    ld a, b
    ld a, b
    add h
    push bc
    ld l, e
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, c
    add a
    sub l
    adc c
    ld e, c
    add a
    add l
    sbc b
    ld l, b
    ld a, b
    sub [hl]
    adc c
    ld [hl], a
    sub a
    add a
    ld l, d
    ld l, c
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, c
    add a
    and [hl]
    ld l, b
    ld a, c
    ld l, b
    and l
    adc c
    ld e, d
    ld h, l
    call nz, Call_00c_7c88
    ld l, d
    sub a
    add [hl]
    sub a
    ld d, a
    ld a, c
    ld h, [hl]
    adc c
    sub [hl]
    sbc b
    add [hl]
    ld l, c
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    add [hl]
    or l
    add a
    sbc b
    db $76
    sbc b
    ld a, c
    ld l, b
    add a
    ld [hl], a
    ld a, b
    ld l, c
    ld h, a
    adc b
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    sub a
    adc c
    ld e, c
    add a
    add a
    adc b
    add [hl]
    sbc b
    ld d, a
    ld a, c
    db $76
    sub a
    ld a, c
    ld l, b
    add [hl]
    add a
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, c
    ld h, a
    xor b
    ld e, d
    ld a, b
    add a
    add a
    add [hl]
    adc c
    ld h, l
    and a
    adc b
    ld l, c
    add [hl]
    ld a, b
    add a
    ld a, b
    sub l
    sbc c
    ld e, c
    ld [hl], l
    and a
    ld a, d
    ld h, a
    ld a, d
    ld h, a
    ld a, b
    ld a, b
    db $76
    xor b
    ld l, e
    ld h, a
    add a
    and l
    ld a, b
    ld l, b
    add a
    adc c
    ld l, c
    add [hl]
    ld a, c
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub l
    ld a, c
    ld a, c
    ld l, c
    adc b
    db $76
    adc b
    add l
    sub a
    ld e, c
    ld a, c
    add h
    cp b
    sub a
    ld a, c
    ld a, b
    sub [hl]
    add h
    sub a
    db $76
    ld l, e
    ld a, b
    sub l
    sbc b
    ld e, e
    ld d, a
    adc b
    add [hl]
    ld a, c
    ld e, c
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    ld l, d
    ld a, b
    ld a, c
    ld a, b
    db $76
    adc c
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    sub a
    db $76
    adc c
    ld [hl], a
    add a
    sub a
    ld [hl], a
    ld a, b
    ld l, c
    add a
    adc c
    ld l, b
    add a
    add a
    ld [hl], a
    sub a
    ld e, d
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    adc c
    ld l, b
    add [hl]
    sub [hl]
    db $76
    ld a, c
    ld l, d
    db $76
    ld a, d
    db $76
    sub [hl]
    adc b
    db $76
    and l
    sbc b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    or a
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    and h
    sbc b
    ld a, b
    ld l, c
    ld [hl], a
    or [hl]
    add a
    ld e, d
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    sub [hl]
    ld a, c
    ld e, c
    ld l, b
    db $76
    adc b
    ld l, c
    ld l, b
    sub a
    sub l
    sbc b
    sbc b
    ld h, a
    add [hl]
    ld a, c
    sbc b
    ld a, c
    ld l, c
    ld l, b
    and h
    and [hl]
    and a
    ld l, b
    adc c
    ld h, [hl]
    and [hl]
    sbc c
    ld e, h
    ld c, d
    ld l, b
    db $76
    ld a, b
    ld l, d
    ld e, c
    sub l
    and [hl]
    add a
    ld e, e
    ld e, d
    ld d, a
    adc b
    ld a, b
    ld l, b
    adc b
    sub l
    and h
    and a
    adc d
    ld c, c
    ld h, a
    add [hl]
    sub a
    ld a, c
    adc b
    ld l, c
    add [hl]
    sub h
    sub a
    ld a, c
    ld e, b
    ld a, b
    sub a
    add [hl]
    ld l, d
    ld e, c
    ld [hl], a
    add a
    add [hl]
    adc b
    ld l, e
    ld d, [hl]
    add [hl]
    sub a
    ld l, e
    ld e, c
    ld l, c
    sub l
    add a
    ld a, b
    ld a, b
    add [hl]
    add a
    and [hl]
    ld l, d
    ld l, d
    ld h, a
    and a
    ld [hl], a
    ld a, b
    ld h, a
    sub [hl]
    sub a
    adc b
    sub a
    ld a, c
    ld c, b
    ld a, c
    ld l, b
    ld [hl], a
    sub [hl]
    ld [hl], a
    adc b
    ld [hl], a
    add [hl]
    and [hl]
    xor b
    ld l, b
    ld l, c
    ld [hl], l
    sub [hl]
    ld a, d
    ld a, d
    ld [hl], a
    sub a
    and [hl]
    ld a, c
    ld l, d
    db $76
    add a
    add a
    ld a, b
    ld l, d
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld d, a
    add a
    ld a, b
    ld l, b
    adc b
    ld l, b
    adc c
    ld a, b
    ld a, b
    and a
    ld a, c
    ld l, b
    ld a, b
    db $76
    sub a
    ld a, b
    ld l, b
    add a
    adc b
    sub [hl]
    ld a, c
    ld a, c
    add l
    and a
    sub [hl]
    adc b
    ld c, h
    ld h, [hl]
    and l
    add a
    sub [hl]
    sbc c
    ld a, b
    sub l
    sub [hl]
    adc b
    add a
    ld l, c
    ld h, [hl]
    and [hl]
    add a
    ld a, c
    ld l, c
    add a
    sub a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    sub [hl]
    add a
    sub a
    db $76
    adc b
    db $76
    sub a
    adc b
    ld a, b
    adc b
    sub a
    add a
    adc b
    ld a, b
    db $76
    add [hl]
    adc b
    adc b
    ld e, d
    add a
    and [hl]
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    add l
    db $76
    and a
    ld a, d
    add a
    db $76
    sub [hl]
    ld l, b
    ld a, d
    ld l, c
    add a
    ld [hl], a
    and [hl]
    add a
    adc c
    ld e, c
    add a
    db $76
    adc b
    ld l, b
    ld a, c
    ld h, a
    add a
    add [hl]
    adc b
    ld a, b
    add a
    sub [hl]
    add [hl]
    sub a
    ld a, c
    db $76
    sbc b
    adc b
    ld l, b
    add a
    ld l, b
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld l, c
    ld e, c
    ld [hl], a
    sub [hl]
    ld a, b
    add [hl]
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], l
    and [hl]
    adc b
    add a
    ld a, b
    add a
    sub h
    and a
    ld a, b
    ld h, a
    sub a
    ld [hl], a
    ld l, b
    ld l, d
    ld e, c
    ld h, a
    sub a
    ld l, c
    ld l, c
    add a
    add [hl]
    sub [hl]
    ld a, d
    ld c, e
    ld l, d
    add [hl]
    sub [hl]
    adc b
    ld a, c
    ld l, b
    add [hl]
    or l
    sub a
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    ld c, c
    ld [hl], a
    sub a
    and [hl]
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld l, d
    ld [hl], a
    and [hl]
    adc b
    ld h, a
    ld a, c
    ld h, a
    add [hl]
    and [hl]
    ld a, c
    ld l, c
    ld a, e
    ld h, a
    or h
    sbc b
    ld h, a
    ld a, b
    ld e, c
    db $76
    add a
    xor c
    ld l, c
    ld a, c
    ld a, b
    db $76
    add a
    ld l, c
    ld h, a
    add a
    add l
    add [hl]
    adc c
    ld l, d
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    ld l, c
    ld h, [hl]
    sub l
    sub a
    add a
    ld a, c
    adc c
    sub [hl]
    sbc b
    db $76
    add a
    ld l, c
    ld [hl], a
    add a
    adc c
    ld a, b
    adc b
    ld a, b
    add [hl]
    add a
    adc c
    ld h, a
    add a
    sub [hl]
    sub [hl]
    adc b
    ld l, c
    add a
    add a
    sub a
    sub a
    ld l, b
    ld a, c
    ld h, a
    add [hl]
    sub a
    ld e, d
    ld l, d
    sub a
    add [hl]
    add a
    adc b
    ld e, c
    ld [hl], a
    sub a
    add l
    ld a, c
    ld a, c
    ld l, b
    and [hl]
    sub a
    ld a, b
    ld a, b
    db $76
    ld h, [hl]
    sub [hl]
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    adc b
    adc c
    adc d
    ld h, a
    adc b
    ld a, b
    ld l, b
    ld l, b
    ld [hl], a
    sub [hl]
    ld a, c
    add a
    add [hl]
    sub a
    sub a
    ld a, b
    ld e, d
    ld [hl], a
    sub a
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    sub [hl]
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld l, c
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    ld l, b
    ld l, c
    ld a, b
    add a
    or l
    sub a
    ld l, b
    ld l, b
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld a, b
    add [hl]
    and [hl]
    sub a
    ld l, c
    ld l, b
    ld [hl], a
    sub [hl]
    sub a
    ld a, d
    ld l, c
    db $76
    ld a, b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    ld l, b
    ld l, c
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    xor c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    and [hl]
    sbc b

Call_00c_645c:
    ld l, d
    ld [hl], a
    ld a, b
    and [hl]
    ld h, [hl]
    ld e, d
    ld e, c
    db $76
    add [hl]
    and [hl]
    adc c
    ld c, d
    ld [hl], a
    sub [hl]
    ld a, c
    ld a, b
    ld e, d
    ld l, b
    and l
    ld a, b
    ld a, b
    sbc b
    ld l, b
    sub a
    adc c
    ld l, c
    ld [hl], a
    ld a, c
    ld d, a
    sub [hl]
    sub [hl]
    ld [hl], a
    adc c
    ld a, b
    add a
    and [hl]
    ld l, c
    ld l, b
    ld a, b
    db $76
    add [hl]
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    adc b
    ld l, b
    ld [hl], a
    sbc b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    and a
    ld [hl], a
    ld a, c
    ld a, b
    add l
    sub a
    ld [hl], a
    ld a, c
    add a
    sub [hl]
    add a
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld l, c
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    sub [hl]
    sub [hl]
    ld a, b
    adc b
    add a
    sub [hl]
    sub a
    add [hl]
    adc c
    ld a, b
    ld [hl], a
    sub [hl]
    sub [hl]
    adc b
    ld a, c
    ld e, b
    add [hl]
    sbc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld e, b
    adc c
    ld a, b
    add [hl]
    adc b
    ld l, d
    ld a, b
    sub [hl]
    sub [hl]
    ld a, b
    ld a, d
    sub a
    sub a
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    sub a
    ld [hl], a
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    ld h, a
    sbc b
    ld [hl], a
    ld a, b
    adc b
    ld e, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    add a
    ld a, b
    add [hl]
    sbc b
    ld h, a
    ld a, b
    ld l, b
    add [hl]
    xor b
    ld e, d
    ld l, b
    sub a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    sub a
    sbc c
    ld l, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    and [hl]
    ld a, c
    ld l, d
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    ld [hl], a
    add [hl]
    add [hl]
    adc c
    ld l, b
    adc b
    add a
    add a
    sub [hl]
    adc b
    ld [hl], a
    add [hl]
    sub a
    add a
    sub a
    adc b
    ld a, b
    ld a, b
    ld l, b
    sub l
    adc b
    ld l, d
    ld [hl], a
    add a
    sub a
    ld a, c
    ld e, d
    add [hl]
    db $76
    ld a, b
    ld l, b
    ld a, b
    ld h, a
    and [hl]
    add a
    ld a, c
    ld l, c
    ld a, b
    add [hl]
    sbc b
    ld l, c
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, b
    add [hl]
    adc c
    ld l, c
    add [hl]
    add [hl]
    sub a
    ld a, b
    add a
    add a
    sub a
    adc b
    adc c
    db $76
    add a
    add [hl]
    ld a, b
    ld l, d
    ld l, b
    add [hl]
    and a
    ld a, b
    ld e, d
    sub [hl]

Call_00c_6569:
    add a
    ld a, b
    ld e, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub a
    sub [hl]
    adc b
    ld l, d
    add [hl]
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    xor b
    adc b
    ld a, c
    ld [hl], a
    sub l
    add a
    ld l, d
    ld l, b
    adc b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, d
    ld a, b
    ld l, b
    ld h, a
    add a
    sub a
    adc c
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    sub l
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub a
    sbc b
    ld l, c
    ld h, a
    and l
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    adc c
    ld e, b
    sub [hl]
    sub a
    ld a, c
    ld l, b
    ld a, b
    db $76
    sub a
    ld l, b
    sbc b
    sub a
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld h, a
    sub a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], l
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    sub a
    ld a, d
    db $76
    add a
    adc c
    ld l, b
    ld [hl], a
    ld a, b
    sbc b
    ld l, c
    ld a, c
    ld [hl], a
    add a
    add [hl]
    sbc b
    ld e, d
    ld l, c
    add [hl]
    xor b
    ld a, b
    ld a, b
    add a
    add [hl]
    add a
    ld a, c
    ld h, [hl]
    and a
    ld l, b
    ld [hl], a
    sbc b
    add a
    sub a
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    adc c
    ld e, c
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    db $76
    sbc b
    ld l, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    sub a
    sub a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    sub a
    ld l, d
    ld l, c
    ld a, b
    ld e, b
    add a
    add a
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    sub [hl]
    ld a, c
    add a
    adc b
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, c
    ld l, c
    adc b
    ld a, b
    add a
    ld a, b
    ld a, c
    ld l, b
    sub a
    ld l, b
    ld a, b
    ld l, b
    ld l, c
    ld [hl], a
    adc c
    ld e, d
    ld [hl], a
    db $76
    sub [hl]
    ld a, c
    ld e, d
    ld h, a
    sub a
    ld a, b
    ld a, c
    ld a, b
    adc b
    sub a
    ld [hl], a
    sub a
    ld a, b
    ld h, a
    sbc b
    ld l, b
    add a
    sub a
    ld l, c
    ld a, b
    ld e, c
    ld h, a
    sub [hl]
    ld a, b
    ld l, c
    ld l, c
    ld [hl], a
    db $76
    ld a, c
    ld a, b
    add a
    ld [hl], a
    adc b
    adc c
    ld [hl], a
    sub a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    and a
    ld l, c
    ld l, c
    ld h, a
    add a
    sub [hl]
    ld l, d
    ld e, c
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    sbc b
    ld l, c
    adc b
    add [hl]
    and a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld h, a
    ld a, c
    ld [hl], a
    add a
    sub a
    adc c
    ld l, c
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, c
    add [hl]
    sub [hl]
    sub a
    adc b
    ld a, c
    add a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld d, [hl]
    add a
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    add a
    ld a, c
    ld h, a
    ld a, c
    ld e, c
    ld [hl], a
    ld a, b
    add a
    adc b
    ld l, d
    sbc b
    and h
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld l, c
    ld a, b
    add [hl]
    adc b
    ld a, c
    ld l, d
    ld h, [hl]
    add a
    sub a
    ld a, b
    ld l, b
    add a
    add [hl]
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    add a
    sub a
    ld [hl], a
    add a
    ld l, b
    add a
    sub a
    ld a, b
    ld a, c
    adc b
    sub l
    and a
    ld a, c
    ld a, b
    ld h, [hl]
    add [hl]
    ld a, b
    ld l, c
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld l, c
    add [hl]
    sub a
    adc b
    ld l, b
    add a
    add [hl]
    sub a
    add a
    adc c
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc c
    ld l, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    and a
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    sub [hl]
    ld a, c
    ld h, a
    add a
    add a
    add a
    adc b
    ld l, d
    add a
    add a
    add a
    ld a, b
    sbc b
    ld l, c
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    adc b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    ld l, c
    ld h, a
    and [hl]
    add a
    ld [hl], a
    ld a, b
    add [hl]
    and [hl]
    sub a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld h, a
    sub a
    adc b
    add a
    ld a, c
    ld h, a
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add a
    and [hl]
    add a
    ld a, c
    add [hl]
    adc b
    add a
    add [hl]
    sub a
    ld [hl], a
    adc b
    sbc c
    db $76
    sub a
    ld [hl], a
    add a
    ld a, c
    ld l, b
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld l, b
    sub l
    and [hl]
    ld a, c
    ld l, b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, c
    add a
    sub [hl]
    sbc b
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    ld a, c
    ld l, b
    add a
    ld [hl], a
    sbc b
    ld a, c
    ld a, b
    add a
    sbc b
    ld a, b
    ld a, b
    ld h, a
    add [hl]
    sub [hl]
    adc c
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    ld l, c
    add [hl]
    adc b
    ld h, a
    ld a, b
    sub a
    adc c
    add a
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, b

Jump_00c_67a7:
    sub [hl]
    adc b
    add a
    add [hl]
    sub a
    ld l, b
    adc b
    ld l, c
    db $76
    add a
    add a
    ld a, c
    ld a, c
    add a
    add a
    adc b
    add [hl]
    add [hl]
    add a
    ld l, b
    add a
    ld a, b
    add [hl]
    sbc b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, b
    ld h, a
    add a
    adc b
    ld [hl], a
    adc c
    ld a, b
    add a
    ld a, b
    ld l, c
    db $76
    adc b
    add a
    sbc b
    ld l, b
    ld l, c
    ld [hl], a
    adc b
    add [hl]
    ld a, c
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, c
    db $76
    ld a, b
    add [hl]
    add a
    adc c
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld l, c
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    db $76
    add [hl]
    sbc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    adc b
    db $76
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld [hl], a
    adc b
    add a
    sub a
    adc b
    sub l
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    sub a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    add [hl]
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld e, c
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    add [hl]
    sub a
    sub [hl]
    adc b
    ld [hl], a
    ld l, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    ld l, b
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld l, c
    add a
    add a
    ld [hl], a
    adc b
    ld l, b
    add a
    add [hl]
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld l, c
    add a
    ld a, b
    add a
    ld l, b
    add [hl]
    add a
    add a
    adc c
    ld l, b
    add a
    and [hl]
    add a
    ld a, c
    ld h, a
    add l
    sub [hl]
    add a
    ld a, b
    ld a, b

Call_00c_688a:
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, c
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b

Call_00c_68a8:
    add a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    ld h, a
    adc b
    ld l, b
    add [hl]
    add a
    add a
    adc c

Jump_00c_68b7:
    ld l, b
    ld [hl], a

Call_00c_68b9:
    sub [hl]
    ld [hl], a
    ld a, c
    ld a, b
    ld l, b
    add a
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add [hl]
    adc b
    ld a, b
    ld l, c
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    sbc c
    ld [hl], a
    and [hl]
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    sbc b
    ld l, c
    add [hl]
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    ld l, b
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    adc c
    add a
    sub [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    adc b
    add a
    ld [hl], a
    add a
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld h, a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld l, c
    add a
    add a
    sub a
    adc b
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    add a
    ld a, c
    ld l, b
    add a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    add a
    sbc b
    adc b
    ld h, a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    sub [hl]
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    sub a
    sub a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    add a
    add a
    adc b
    ld l, b
    adc b
    add a
    add a
    ld a, b

Jump_00c_69a7:
    add a
    adc b
    add [hl]
    sub [hl]
    sub a
    ld l, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc c
    ld l, c
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, c
    ld a, b
    add a
    ld [hl], a
    adc c
    ld a, b
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    adc b
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add [hl]
    sbc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld l, c
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    ld [hl], a
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    add [hl]
    sbc b
    ld l, b
    ld l, c
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    sub [hl]
    ld a, b
    ld l, c
    ld a, b
    add [hl]
    add a
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add [hl]
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld l, b
    add [hl]
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
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
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b

Call_00c_6a6a:
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    sbc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    ld l, c
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld l, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add [hl]
    ld a, c
    ld a, b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a

Jump_00c_6abb:
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a

Jump_00c_6ac6:
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, c
    adc b
    sub a
    adc b
    ld a, b
    ld l, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    sbc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld a, [hl-]
    ld [hl], $a6
    ld e, d
    or a
    ld c, d
    ld hl, sp+$4e
    inc sp
    sbc c
    call nz, Call_000_286e
    di
    ld a, b
    ld l, c
    ld a, d
    sub c
    adc a
    add hl, bc
    sub c
    adc c
    ld a, [hl]
    inc a
    jp nz, Jump_000_08da

    ld l, c
    rst $10
    call Call_00c_510c
    or [hl]
    scf
    ld a, h
    and l
    ret z

    jr jr_00c_6bae

    ld [hl], h
    adc b
    ld e, l
    ld l, b
    sub [hl]
    add [hl]
    add a
    ld h, [hl]
    sub [hl]
    ret


    ld l, d
    ld h, a
    ld l, c
    sub h
    ld d, a
    ld c, b
    ld a, d
    sbc c
    ld h, [hl]
    sbc b
    sub l
    ld h, [hl]
    ld b, l
    adc d
    and [hl]
    ld h, [hl]
    sbc h
    sub a
    inc [hl]
    inc b
    ld a, h
    add l
    add sp, $6d
    xor c
    ld b, b
    ld [hl], a
    ld a, [hl+]
    add l
    sub l
    sbc e
    sbc d
    add l
    and [hl]
    db $76
    or [hl]
    sbc c
    adc e
    ld c, c
    ld h, l
    ld b, [hl]
    ld c, b
    add [hl]
    cp d
    sbc h
    xor b
    sub l
    ld d, a
    ld l, c
    add [hl]
    add a
    ld l, e
    ld e, c
    add [hl]
    cp c
    ld l, l
    ld h, a
    and [hl]
    sub a
    ld l, c
    ld b, e
    sub l
    ld e, d
    xor c
    and h
    sub $8d
    ld d, h
    and e
    xor e
    ld e, e
    ld d, e
    and $9a
    inc e
    inc [hl]
    ret c

    ld a, d
    ld c, d
    jp nz, Jump_000_1bca

    dec h
    or l
    ret


    inc l
    ld [hl], l
    reti


    ld e, c
    dec sp
    ld d, b
    rst $00
    ld a, [hl-]

jr_00c_6bae:
    ld l, d
    ld a, b
    ld [hl], a
    add hl, sp
    add e
    call nz, Call_00c_5b79
    ld h, [hl]
    and h
    ld a, b
    ld h, a
    ld l, b
    sub [hl]
    sbc l
    ld e, e
    sub [hl]
    add [hl]
    ld e, c
    ld c, e
    ld d, h
    add [hl]
    adc c
    ld a, c
    ld d, h
    sbc c
    adc e
    ld d, a
    or d
    ld hl, sp-$58
    dec [hl]
    add h
    sbc d
    sub l
    sbc c
    sub [hl]
    cp d
    ld h, $87
    and a
    sbc c
    ld c, c
    sub a
    ld c, c
    ld c, c
    sbc d
    sub a
    sbc c
    ld b, a
    ld a, b
    ld l, b
    ld a, c
    ld [hl], l
    ld [hl], h
    or [hl]
    sbc d
    add a
    ld l, d
    sbc c
    ld d, l
    add d
    adc c
    ld e, c
    ld [hl], l
    and l
    add hl, de
    add [hl]
    or e
    db $db
    ld e, a
    dec sp
    add h
    add [hl]
    ld c, d
    inc sp
    pop hl
    sbc e
    ld l, l
    adc b
    di
    adc a
    ld a, d
    ld h, h
    ld h, a
    ld e, a
    ld a, [bc]
    or b
    cp c
    adc e
    ld a, [hl+]
    or d
    reti


    ld l, e
    ld h, e
    and d
    cp b
    inc l
    or e
    or h
    add $4b
    add l
    or $9c

jr_00c_6c17:
    inc l
    sub h
    pop de
    adc c
    add hl, hl
    ld e, b
    ld l, b
    ld l, [hl]
    ld [hl], a
    ld d, [hl]
    sbc b
    ld a, d
    ld l, c
    add l
    add l
    sbc b
    ld [hl], a
    daa
    ld l, h
    ld c, d
    ld l, b
    adc b
    cp c
    and l
    ld l, b
    and a
    db $76
    ld h, e
    ld [hl], a
    sub a
    and a
    adc e
    ld a, e
    add [hl]
    and d
    sbc b
    sub [hl]
    ld a, b
    ld h, [hl]
    add $76
    ld h, [hl]
    ld d, a
    add [hl]
    ld c, e
    ld e, b
    adc c
    add [hl]
    xor b
    ld [hl], a
    sub [hl]
    ld a, c
    ld a, c
    ld d, a
    ld [hl], l
    or a
    ld e, c
    ld l, c
    ld a, e
    cp b
    ld l, d
    db $76
    add $76
    jr c, jr_00c_6c90

    and d
    adc c
    adc b
    ld a, b
    push bc
    cp h
    ld e, d
    jp nz, $a8c3

    ld e, c
    dec [hl]
    ret z

jr_00c_6c66:
    dec sp
    scf
    xor d
    reti


    ld a, e
    add hl, hl
    or l
    add [hl]
    ld h, [hl]
    jr c, jr_00c_6ce3

    ld l, c
    inc l
    ld a, d
    or h
    and a
    inc a
    add [hl]
    and [hl]
    ld e, b
    ld l, d
    add e
    or h
    ld l, d
    ld e, c
    ld a, c
    ld [hl], a
    ld a, d
    ld h, [hl]
    or [hl]
    and a
    ld l, b
    ld h, h
    and l
    xor b
    ld a, b
    sub h
    rst $00
    sub a
    jr c, jr_00c_6c17

    add a

jr_00c_6c90:
    sbc c
    ld l, b
    xor d
    add h
    ld e, b
    add [hl]
    sub a
    ld h, [hl]
    adc d
    ld a, d
    adc c
    ld l, c
    add a
    adc b
    ld d, [hl]
    adc c
    or [hl]
    sub l
    ld h, a
    and [hl]
    db $76
    adc b
    adc d
    adc c
    ld e, b
    ld a, c
    db $76
    ld [hl], a
    ld a, b
    sub a
    add e
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc d
    adc d
    ld h, a
    ld e, b
    ld a, b
    ld l, b
    ld h, l
    adc c
    add a
    add a
    sub a
    adc b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    and h
    ld l, d
    ld h, a
    sbc c
    sub a
    ld a, c
    ld a, c
    sub [hl]
    db $76
    ld e, h
    ld e, e
    ld [hl], l
    ld l, c
    ld l, l
    ld [hl], a
    sub d
    sbc c
    ld l, e
    add c
    or d
    call z, Call_00c_645c
    and l
    ld e, e
    dec hl
    ld [hl], e
    add $8c
    jr jr_00c_6c66

jr_00c_6ce3:
    and $6c
    ld c, c
    add [hl]
    sub [hl]
    ld e, e
    ld h, l
    jp Jump_00c_5b87


    ld d, a
    jp nc, Jump_00c_4a88

    and l
    and h
    ld l, l
    ld c, d
    ld [hl], l
    add [hl]
    ld a, h
    ld e, d
    ld d, h
    sbc c
    cp d
    ld h, l
    sub l
    xor b
    sbc b
    adc b
    adc b
    ld [hl], l
    ld h, l
    ld l, b
    adc d
    adc d
    ld a, c
    xor c
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld b, [hl]
    ld [hl], a
    sbc b
    ld l, b
    adc c
    xor b
    sub [hl]
    add hl, sp
    adc b
    xor b
    add l
    ld a, c
    ld [hl], a
    ld [hl], h
    ld d, a
    adc e
    ld a, c
    add [hl]
    ld a, e
    ld a, [hl-]
    ld c, b
    add h
    and a
    ld l, c
    ld e, c
    xor b
    add a
    ld c, d
    ld h, [hl]
    or e
    sbc b
    ld a, l
    add a
    add h
    adc b
    inc l
    add e
    add [hl]
    xor d
    ld e, e
    ld h, c
    or [hl]
    sbc d
    ld e, d
    ld d, a
    cp b
    ld e, e
    ld l, b
    sub l
    add $5c
    ret c

    and h
    xor c
    ld c, h
    ld e, b
    jp nz, $3aaa

    add [hl]
    pop de
    xor b
    add hl, sp
    add e
    add [hl]
    ld a, h
    ld l, d
    add d
    rst $10
    ld e, c
    ld a, b
    ld h, l
    sbc d
    ld l, e
    ld h, [hl]
    sub h
    sbc c
    ld e, d
    add [hl]
    sbc c
    and a
    add a
    ld h, l
    ld l, b
    add l
    ld b, [hl]
    ld [hl], l
    jp z, Jump_00c_5c78

    ld e, c
    ld [hl], a
    ld h, h
    or a
    sbc d
    ld h, a
    ld [hl], l
    and [hl]
    ld [hl], a
    sub h
    sub $7a
    ld l, d
    add a
    or l
    ld l, b
    ld h, [hl]
    and l
    adc b
    ld e, e
    ld l, c
    call nz, Call_00c_7b79
    ld h, a
    and [hl]
    ld e, e
    ld h, a
    sub e
    add [hl]
    adc e
    sbc c
    add h
    sbc b
    ld a, b
    ld b, a
    ld h, [hl]
    ld a, c
    adc c
    adc b
    sbc b
    add h
    adc b
    ld l, c
    sub l
    add [hl]
    ld a, c
    adc c
    add l
    xor c
    ld l, e
    ld l, b
    add [hl]
    sbc b
    ld a, c
    ld h, a
    ld h, l
    add a
    ld a, b
    ld h, a
    xor b
    xor d
    ld a, d
    ld d, l
    and a
    sub a
    ld a, b
    add [hl]
    call nz, Call_00c_4a88
    ld h, h
    sbc b
    ld c, d
    ld c, d
    sub a
    or a
    ld l, d
    ld d, [hl]
    sub h
    add a
    ld e, d
    db $76
    add a
    adc c
    ld e, d
    add e
    sbc c
    ld l, d
    xor b
    ld h, h
    sbc b
    ld a, c
    db $76
    sub a
    adc d
    ld l, c
    ld d, l
    and a
    xor b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    and [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    ld a, c
    ld c, e
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld h, [hl]
    ld a, b
    adc d
    and [hl]
    adc b
    ld h, a
    adc b
    ld b, a
    sbc b
    ld a, b
    or e
    sbc b
    sbc c
    adc b
    ld h, [hl]
    ld a, d
    ld h, [hl]
    call nz, Call_00c_5a98
    ld a, c
    ld [hl], a
    adc c
    ld l, b
    ld h, [hl]
    and [hl]
    ld a, c
    ld [hl], a
    and h
    and l
    ld e, c
    ld a, d
    ld l, e
    ld l, c
    ld a, d
    add a
    ld [hl], a
    ld [hl], l
    ld a, c
    ld l, d
    sub l
    adc c
    ld a, c
    ld a, e
    ld [hl], l
    and a
    ld a, c
    db $76
    sub [hl]
    add [hl]
    ld a, c
    ld h, a
    sub l
    sbc b
    sbc d
    add a
    sub l
    adc e
    ld c, d
    ld h, a
    ld a, b
    adc b
    ld e, b
    sub h
    and [hl]
    adc c
    ld e, c
    ld [hl], l
    sub l
    ld l, d
    ld e, c
    add [hl]
    adc b
    ld l, e
    ld h, [hl]
    sub l
    xor c
    ld e, e
    ld h, [hl]
    sub h
    xor c
    ld l, c
    sub h
    or a
    sbc c
    ld b, a
    db $76
    and a
    ld l, c
    add l
    sub [hl]
    sub a
    ld e, c
    ld [hl], a
    and [hl]
    ld a, d
    ld e, c
    ld l, c
    ld [hl], a
    adc c
    add l
    sub [hl]
    ld h, [hl]
    xor c
    cp b
    db $76
    adc b
    adc b
    add a
    ld l, c
    sbc e
    db $76
    ld [hl], l
    ld l, b
    adc b
    ld [hl], l
    ld a, b
    adc d
    ld a, b
    sub h
    ld d, a
    adc c
    db $76
    add [hl]
    sub a
    ld e, c
    add [hl]
    and a
    adc c
    ld a, e
    ld h, [hl]
    add [hl]
    adc e
    ld l, b
    db $76
    sub a
    ld l, h
    ld d, [hl]
    sub h
    and a
    adc c
    ld h, a
    sub [hl]
    adc d
    ld l, b
    ld [hl], a
    ld h, a
    sbc b
    ld e, c
    ld [hl], a
    db $76
    or [hl]
    ld e, c
    ld a, b
    add [hl]
    xor c
    ld l, d
    ld l, b
    ld [hl], l
    sbc c
    ld l, b
    ld h, [hl]
    and [hl]
    sub a
    ld l, c
    ld h, e
    add $7a
    ld e, e
    ld d, a
    sbc b
    ld l, e
    ld c, c
    ld [hl], l
    sbc b
    adc c
    ld c, b
    sub [hl]
    rst $00
    ld a, b
    ld e, c
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    or l
    sub h
    ld e, e
    ld c, e
    sbc b
    sub [hl]
    adc d
    add a
    and h
    ld a, b
    ld c, e
    ld [hl], a
    add a
    add a
    ld l, b
    db $76
    add a
    add [hl]
    add l
    and [hl]
    or [hl]
    ld [hl], a
    ld a, b
    ld e, e
    ld [hl], l
    add a
    adc b
    sub a
    add l
    and [hl]
    ld l, e
    ld [hl], l
    sub [hl]
    and l
    ld e, h
    ld d, a
    sub [hl]
    sub l
    adc c
    add a
    or l
    adc d
    ld l, d
    ld h, [hl]
    add h
    or a
    ld a, c
    add [hl]
    adc b
    ld a, e
    ld e, c
    ld h, l
    and [hl]
    cp c
    ld d, a
    add [hl]
    add $88
    ld e, b
    db $76
    sbc b
    ld e, h
    ld c, d
    sub l
    or l
    ld a, c
    ld a, b
    ld h, a
    sbc c
    ld l, e
    ld e, b
    or l
    sub a
    adc b
    jr c, jr_00c_6f55

    sbc c
    ld l, b
    ld l, b
    and a
    add a
    ld e, c
    ld l, c
    sub [hl]
    add a
    ld l, c
    ld e, d
    db $76
    ld a, c
    ld c, c
    add a
    jp Jump_00c_69a7


    sub [hl]
    add [hl]
    ld e, b
    ld a, b
    ld [hl], l
    or [hl]
    ld e, e
    ld e, d
    add [hl]
    sub [hl]
    adc b
    ld e, c
    add a
    ld a, b
    ld a, d
    ld l, b
    sub l
    ld a, b
    ld e, c
    ld l, c
    add a
    sbc b
    ld a, b
    adc b
    sub a
    ld h, l
    ld l, b
    add a
    and a
    add a
    sbc c
    adc c
    ld d, [hl]
    cp b
    add [hl]
    or h
    add [hl]
    and [hl]
    adc c
    add a
    ld [hl], a
    add [hl]
    adc c
    ld e, d
    add a
    ld a, d
    adc c
    ld b, a
    ld [hl], h
    ld l, d
    ld l, e
    ld b, a
    ld a, b
    ret z

    ld e, c
    ld [hl], h
    or a
    sub a
    ld c, b
    ld h, a
    add $88
    ld h, a
    sbc b
    sub a
    ld a, b
    ld d, a
    sub l
    sub a
    ld h, a
    adc b
    and l
    and l
    ld a, c
    adc b
    db $76
    adc b
    ld e, e
    ld e, b
    sbc b
    add a
    ld h, [hl]
    ld d, l
    and a
    ld a, e
    ld a, c
    ld a, b
    sub [hl]
    ld [hl], a
    ld d, a
    ld a, b
    sbc b
    sub a
    ld l, b
    ld [hl], a
    sub a
    ld h, a
    ld [hl], a
    adc b
    sub [hl]
    add a
    adc b

jr_00c_6f55:
    adc b
    ld l, b
    ld e, b
    ld [hl], a
    and l
    and l
    adc b
    add a
    add [hl]
    ld [hl], a
    adc e
    ld [hl], a
    adc c
    ld e, d
    ld e, b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc c
    adc b
    ld a, b
    add [hl]
    and a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld h, a
    adc b
    ld l, c
    adc b
    ld [hl], a
    adc b
    add [hl]
    db $76
    ld h, a
    adc c
    adc b
    adc b
    ld [hl], a
    sbc c
    ld [hl], a
    ld h, [hl]
    add a
    adc b
    ld e, c
    ld [hl], a
    and [hl]
    ld a, b
    ld c, b
    and [hl]
    or [hl]
    adc d
    ld a, c
    sub l
    add a
    ld l, c
    ld h, [hl]
    or [hl]
    adc c
    ld a, c
    add [hl]
    and l
    ld a, d
    ld c, c
    ld [hl], a
    xor b
    ld a, c
    ld e, c
    ld [hl], h
    sbc c
    ld l, b
    ld [hl], a
    add a
    sbc c
    sbc c
    ld e, b
    ld l, b
    adc b
    ld e, b
    ld d, a
    and a
    ld h, a
    ld l, c
    ld e, b
    add a
    and a
    ld a, b
    add [hl]
    sub [hl]
    add [hl]
    ld e, d
    sub a
    and l
    sub a
    ld a, b
    adc b
    sub l
    adc c
    adc b
    add a
    ld a, b
    ld a, d
    ld e, c
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    add a
    or l
    ld [hl], a
    ld l, b
    ld h, l
    sub [hl]
    adc d
    ld l, c
    sub [hl]
    sub a
    ld a, b
    ld e, b
    add l
    ld a, d
    ld a, c
    ld a, b
    sub a
    ld a, b
    ld h, a
    ld h, a
    sub a
    add [hl]
    adc c
    adc c
    add a
    ld [hl], l
    add a
    adc b
    ld h, [hl]
    sbc b
    adc d
    ld h, a
    ld [hl], l
    sbc c
    ld a, d
    ld h, a
    ld [hl], a
    and a
    ld b, a
    ld d, [hl]
    xor b
    sbc b
    ld l, b
    ld e, c
    and l
    and [hl]
    ld a, c
    ld l, c
    add l
    add a
    ld c, d
    ld a, b
    sub [hl]
    sbc b
    ld l, h
    ld h, [hl]
    and e
    cp b
    ld l, c
    add [hl]
    sub [hl]
    adc e
    ld e, b
    sub h
    or l
    adc b
    ld e, c
    sub [hl]
    and a
    ld e, d
    ld h, a
    add [hl]
    and a
    ld e, c
    ld a, b
    sub a
    and l
    ld l, c
    ld a, b
    sbc b
    ld h, a
    ld e, d
    ld l, b
    and l
    add a
    adc c
    sbc b
    add a
    adc b
    ld l, c
    ld h, a
    add a
    ld a, d
    ld c, d
    db $76
    add a
    sub a
    ld a, b
    sub [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    add a
    sub l
    adc c
    ld l, c
    ld h, a
    add [hl]
    sbc c
    ld a, b
    db $76
    add a
    ld a, c
    ld l, b
    add a
    sbc b
    ld l, b
    ld [hl], a
    ld h, a
    ld l, d
    ld l, c
    ld a, c
    add a
    ld a, c
    adc b
    ld a, b
    ld d, a
    ld [hl], a
    and a
    add a
    adc c
    adc b
    sbc c
    ld b, a
    adc b
    or e
    xor b
    ld h, [hl]
    sub a
    and l
    ld [hl], a
    ld l, c
    sub [hl]
    sub a
    ld l, d
    ld e, d
    ld d, [hl]
    add a
    ld l, b
    adc b
    and a
    adc b
    ld l, d
    db $76
    sub h
    sub a
    ld a, c
    ld l, b
    sub [hl]
    sbc c
    ld l, d
    ld h, l
    and l
    adc d
    inc l
    db $76
    ld h, [hl]
    add a
    ld e, b
    sub [hl]
    xor b
    ld c, d
    ld e, b
    and [hl]
    sub l
    ld l, d
    ld h, a
    and a
    ld h, a
    ld a, d
    add a
    xor b
    ld l, c
    ld e, c
    ld [hl], a
    ld [hl], l
    adc c
    ld a, b
    sub a
    ld a, b
    adc d
    ld e, b
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    add l
    sub [hl]
    sbc d
    sub [hl]
    sub [hl]
    ld a, b
    ld l, d
    adc c
    add [hl]
    ld a, b
    add [hl]
    add a
    ld [hl], a
    adc c
    add [hl]
    sub [hl]
    ld a, b
    sub a
    add a
    ld [hl], a
    ld a, c
    db $76
    ld a, b
    ld l, b
    sbc b
    ld l, b
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld d, a
    sbc b
    ld h, a
    sub l
    ld a, c
    ld a, b
    add a
    ld e, b
    add a
    add [hl]
    and [hl]
    ld l, d
    db $76
    add a
    adc b
    ld e, e
    ld [hl], a
    sub [hl]
    ld e, b
    ld l, b
    sub a
    and [hl]
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld l, d
    ld [hl], a
    sub [hl]
    sbc b
    ld l, c
    add a
    add [hl]
    ld l, b
    adc c
    ld [hl], l
    and a
    adc d
    ld l, c
    db $76
    and l
    ld l, c
    ld c, b
    add a
    and a
    ld e, e
    ld l, d
    sub l
    and [hl]
    ld e, e
    adc d
    sub l
    ld l, b
    ld l, c
    db $76
    or l
    ld a, e
    ld l, c
    add [hl]
    and [hl]
    adc c
    ld [hl], a
    add l
    sbc b
    ld l, c
    ld [hl], a
    ld [hl], l
    sbc b
    add a
    ld e, d
    sub [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, h
    ld l, b
    add l
    sub [hl]
    add [hl]
    add [hl]
    adc c
    sbc d
    ld e, b
    add h
    ld a, c
    ld [hl], a
    adc d
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    adc d
    ld [hl], a
    ld l, c
    ld [hl], l
    and a
    ld [hl], a
    ld h, a
    ld a, c
    adc c
    ld a, b
    ld [hl], l
    or a
    ld a, b
    ld l, c
    ld a, c
    sub a
    ld h, a
    add [hl]
    adc c
    and a
    adc b
    ld l, b
    ld a, c
    add l
    or [hl]
    ld h, a
    ld l, d
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add h
    ld a, d
    ld e, h
    ld [hl], a
    add h
    adc b
    ld a, d
    sub h
    or a
    ld l, c
    ld e, b
    add d
    rst $10
    ld l, e
    ld l, b
    add [hl]
    adc b
    ld l, c
    ld h, [hl]
    add $77
    ld c, h
    ld c, c
    and h
    add [hl]
    ld a, b
    add a
    add [hl]
    ld a, e
    ld e, h
    add d
    or h
    adc c
    ld e, d
    db $76
    sbc b
    ld l, d
    ld b, a
    sub h
    sbc b
    ld e, h
    ld l, b
    or l
    sub a
    ld l, c
    add a
    add [hl]
    adc d
    ld e, d
    sub l
    sub h
    adc b
    adc d
    ld a, b
    ld l, b
    adc c
    add a
    ld h, a
    sbc b
    ld l, d
    ld a, b
    ld e, b
    sub [hl]
    adc b
    add [hl]
    add a
    ld [hl], a
    ld l, c
    ld e, b
    and [hl]
    sbc b
    adc c
    ld e, b
    ld h, [hl]
    adc b
    and a
    add a
    adc c
    ld a, c
    add [hl]
    ld l, b
    adc b
    add l
    sub a
    ld l, d
    adc d
    sub [hl]
    ld a, b
    ld e, b
    ld [hl], a
    and a
    ld l, e
    adc c
    ld h, [hl]
    add [hl]
    ld a, b
    ld l, b
    adc b
    adc c
    ld a, b
    ld l, b
    and l
    add [hl]
    sub [hl]
    ld a, d
    add a
    add [hl]
    ld a, b
    ld l, c
    ld [hl], l
    and [hl]
    ld l, e
    ld e, c
    ld h, [hl]
    and l
    ld l, h
    ld [hl], a
    sub h
    sbc c
    ld c, e
    db $76
    jp nc, Jump_00c_5a78

    ld l, b
    and [hl]
    ld a, d
    ld a, b
    add h
    ld [hl], l
    ld a, e
    ld a, c
    sub a
    add a
    ld a, d
    ld [hl], a
    db $76
    add [hl]
    ld l, c
    ld e, b
    add l
    cp b
    ld a, e
    ld l, c
    add l
    ld a, b
    ld a, c
    add [hl]
    ld [hl], a
    ld a, e
    ld l, c
    ld h, l
    sub a
    ld a, b
    adc b
    add l
    sbc c
    ld [hl], a
    db $76
    ld l, b
    add a
    adc b
    add a
    sbc c
    add [hl]
    sub [hl]
    ld [hl], a
    sub a
    ld l, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    sub [hl]
    add [hl]
    ld h, a
    xor b
    ld a, c
    db $76
    sbc b
    ld [hl], a
    ld h, a
    adc b
    sbc b
    ld h, a
    ld h, l
    sbc d
    ld a, b
    adc b
    sub [hl]
    ld a, c
    ld c, b
    db $76
    or [hl]
    adc b
    ld l, c
    db $76
    sub a
    ld e, c
    ld [hl], a
    sub l
    add [hl]
    ld a, e
    db $76
    sub l
    ld l, c
    ld [hl], a
    add [hl]
    sub [hl]
    ld a, e
    ld a, b
    ld h, [hl]
    sub [hl]
    cp b
    ld l, b
    add l
    add [hl]
    sbc c
    ld e, c
    sub h
    or a
    ld l, d
    ld c, c
    add [hl]
    xor b
    ld a, e
    ld h, l
    and [hl]
    ld l, c
    ld e, c
    ld d, h
    and [hl]
    sbc d
    ld e, c
    sub a
    and a
    ld a, b
    ld d, [hl]
    and l
    sbc b
    ld a, c
    ld d, a
    adc b
    ld a, b
    ld l, d
    ld a, b
    ld [hl], l
    adc b
    ld l, c
    sub [hl]
    add [hl]
    sbc b
    ld a, c
    ld h, h
    and l
    xor c
    ld e, b
    add a
    or [hl]
    ld a, c
    db $76
    and [hl]
    add a
    ld c, d
    ld a, c
    or l
    adc c
    ld l, b
    sub [hl]
    add [hl]
    ld a, d
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add [hl]
    sbc b
    adc c
    sub a
    adc b
    ld l, c
    adc d
    ld [hl], a
    ld d, [hl]
    ld a, b
    and a
    sub [hl]
    ld l, c
    sbc c
    ld h, [hl]
    ld [hl], a
    adc b
    ld d, [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld a, c
    db $76
    add a
    ld a, b
    add [hl]
    ld a, b
    ld a, e
    adc c
    add [hl]
    adc b
    adc c
    ld h, a
    add [hl]
    ld a, d
    ld a, d
    ld l, c
    add [hl]
    ld a, c
    ld e, b
    ld [hl], a
    sub a
    sbc b
    ld a, b
    and l
    add l
    adc c
    ld l, d
    db $76
    and [hl]
    adc b
    add [hl]
    add [hl]
    sbc b
    ld e, e
    ld e, c
    and [hl]
    or a
    ld c, d
    ld e, b
    and h
    adc d
    ld c, h
    ld [hl], a
    and h
    adc d
    ld e, d
    ld [hl], l
    sub h
    adc d
    ld l, b
    add l
    sub a
    ld l, h
    ld c, b
    db $76
    sbc b
    sbc b
    ld h, [hl]
    add [hl]
    ld a, b
    ld a, b
    ld l, b
    and [hl]
    sbc b
    ld h, a
    adc c
    sub [hl]
    sub a
    ld e, b
    sub l
    add a
    adc c
    ld c, e
    ld [hl], l
    sub a
    sbc b
    ld l, b
    ld [hl], a
    adc b
    ld d, a
    ld h, a
    sub a
    sub [hl]
    add a
    ld a, b
    adc b
    ld [hl], l
    ld h, [hl]
    sbc b
    ld a, b
    ld l, b
    adc c
    adc e
    ld h, a
    add [hl]
    add a
    ld a, b
    ld e, b
    adc b
    add a
    ld [hl], a
    sub a
    and a
    add a
    ld a, b
    sub a
    sub [hl]
    adc b
    add a
    ld l, b
    ld [hl], l
    adc c
    ld a, b
    sbc b
    sub h
    adc c
    ld c, e
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld [hl], l
    sub a
    sbc c
    ld l, b
    ld h, [hl]
    add [hl]
    sbc c
    ld l, c
    ld [hl], a
    sbc b
    ld a, b
    ld d, [hl]
    add a
    xor c
    ld e, c
    ld e, c
    ld a, b
    adc b
    ld [hl], a
    db $76
    and [hl]
    add a
    ld l, h
    ld a, c
    ld [hl], l
    sub a
    ld l, c
    ld h, [hl]
    add l
    xor d
    adc c
    add [hl]
    and a
    adc b
    dec sp
    ld h, a
    sub a
    ld a, b
    adc b
    sub [hl]
    adc b
    ld e, b
    adc c
    ld h, a
    sub a
    ld a, c
    add a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld e, b
    adc b
    sub a
    db $76
    sub a
    and a
    ld h, a
    ld e, b
    ld [hl], a
    sub [hl]
    sub a
    adc d
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld a, b
    sub a
    ld [hl], a
    db $76
    ld l, c
    ld [hl], a
    sub [hl]
    sub a
    adc d
    ld l, b
    add [hl]
    adc b
    ld a, b
    add [hl]
    sub [hl]
    adc d
    ld l, d
    ld h, a
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    sbc b
    ld a, b
    add l
    adc b
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    and a
    add a
    ld h, a
    add [hl]
    sbc c
    ld e, b
    ld l, c
    sub a
    adc c
    ld e, b
    sub [hl]
    add a
    ld a, b
    ld l, d
    add [hl]
    and a
    ld e, b
    ld a, b
    db $76
    sub a
    ld a, d
    ld [hl], a
    sub a
    ld l, b
    ld a, c
    ld d, a
    add a
    ld l, c
    ld a, b
    db $76
    and l
    adc c
    ld e, b
    add [hl]
    sub a
    adc b
    ld h, a
    db $76
    and a
    ld l, c
    ld l, b
    sub [hl]
    ld h, a
    ld l, e
    ld e, b
    ld [hl], a
    adc b
    ld l, c
    db $76
    cp b
    adc b
    ld e, b
    db $76
    and [hl]
    adc b
    ld h, a
    and a
    sbc b
    adc b
    ld [hl], a
    and [hl]
    ld [hl], a
    ld e, c
    ld a, c
    ld a, c
    add [hl]
    ld l, b
    and [hl]
    ld a, b
    ld h, a
    adc d
    add [hl]
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    ld l, b
    ld l, c
    ld a, b
    sub a
    ld a, b
    adc c
    ld a, b
    ld l, b
    ld h, a
    ld a, b
    adc b
    sub [hl]
    sub a
    adc b
    ld a, b
    ld h, [hl]
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    sub [hl]
    and [hl]
    ld a, c
    ld l, b
    adc b
    ld l, c
    ld a, b
    add a
    and [hl]
    sbc c
    ld a, b
    ld h, a
    add a
    adc b
    ld a, b
    db $76
    adc d
    add a
    ld a, b
    db $76
    and [hl]
    ld [hl], a
    ld l, c
    ld l, b
    or [hl]
    add a
    ld h, [hl]
    and [hl]
    and a
    adc d
    ld e, b
    add a
    add a
    ld e, c
    ld a, b
    add [hl]
    ld [hl], a
    ld l, c
    adc b
    sub [hl]
    adc b
    ld l, c
    ld l, b
    add [hl]
    sbc b
    ld a, b
    add [hl]
    and [hl]
    adc b
    ld e, b
    sbc b
    sub a
    add [hl]
    ld a, c
    add a
    sub a
    ld e, b
    adc d
    add [hl]
    add a
    ld l, d
    ld [hl], a
    adc b
    ld l, b
    add a
    add [hl]
    ld [hl], a
    ld l, e
    adc b
    ld e, b
    ld [hl], a
    ld l, b
    add [hl]
    ld a, c
    ld a, b
    sub a
    ld d, a
    adc b
    adc b
    sub l
    ld l, b
    adc c
    add [hl]
    sub l
    sbc c
    and a
    ld h, a
    adc c
    ld a, c
    ld [hl], a
    db $76
    sbc c
    adc b
    ld h, a
    ld a, b
    adc c
    sub a
    ld e, b
    add a
    sub a
    ld [hl], a
    ld l, b
    adc b
    sub a
    db $76
    ld [hl], a
    add a
    adc b
    ld l, d
    ld [hl], a
    sub [hl]
    sub [hl]
    ld a, b
    ld l, c
    add a
    ld [hl], a
    adc b
    adc b
    and l
    adc b
    ld [hl], a
    adc b
    add l
    adc c
    ld [hl], a
    add a
    sub a
    ld l, b
    ld a, b
    sub [hl]
    ld [hl], a
    adc b
    ld e, e
    ld h, a
    ld l, c
    ld a, b
    ld a, c
    add l
    sub a
    ld e, c
    ld l, c
    sub a
    sub a
    ld a, b
    db $76
    adc c
    sub a
    ld l, c
    add [hl]
    sbc b
    add [hl]
    ld a, b
    adc b
    add a
    ld h, a
    adc b
    or [hl]
    sub h
    ld a, b
    ld a, c
    adc b
    ld h, [hl]
    ld e, c
    add a
    db $76
    ld a, c
    ld a, c
    ld [hl], a
    db $76
    ld a, d
    ld a, b
    adc b
    ld a, b
    adc b
    db $76
    and a
    adc b
    adc b
    adc c
    ld l, b
    ld a, b
    add [hl]
    and a
    add [hl]
    ld l, b
    add [hl]
    xor c
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    add [hl]
    or a
    add [hl]
    add a
    sub a
    sub a
    ld h, a
    adc b
    add [hl]
    add a
    ld a, b
    ld a, b
    add a
    adc c
    ld e, c
    ld a, b
    sub a
    ld a, b
    ld e, c
    ld a, b
    add [hl]
    ld [hl], a
    adc b
    ld e, b
    and [hl]
    adc b
    ld a, b
    ld [hl], a
    sub a
    sub [hl]
    ld l, b
    sub [hl]
    ld l, c
    ld a, b
    sbc c
    sub l
    adc b
    ld [hl], a
    ld a, b
    add a
    sub a
    ld l, c
    ld [hl], a
    add a
    add [hl]
    ld e, d
    ld a, c
    add [hl]
    sbc b
    ld e, b
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    adc b
    sub l
    add a
    adc d
    ld [hl], a
    db $76
    ld l, b
    sbc b
    sub a
    sub l
    ld l, c
    ld a, b
    sub l
    add a
    sbc c
    add a
    db $76
    ld l, d
    adc b
    ld [hl], a
    ld h, l
    sbc c
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    db $76
    ld a, d
    add [hl]
    adc b
    ld h, a
    adc b
    db $76
    ld a, c
    ld a, b
    ld a, b
    add a
    adc b
    add [hl]
    add [hl]
    ld [hl], a
    adc b
    adc c
    sub a
    adc b
    add [hl]
    ld a, b
    add a
    adc b
    db $76
    ld e, b
    adc c
    sub a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    ld l, b
    sub a
    ld [hl], a
    add [hl]
    ld l, b
    adc c
    add [hl]
    ld a, b
    ld h, a
    add a
    sub a
    adc c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sub [hl]
    sub a
    ld [hl], a
    sbc c
    ld [hl], a
    add [hl]
    ld l, c
    add a
    add l
    adc b
    ld a, c
    add a
    add a
    ld [hl], a
    sbc b
    db $76
    sub a
    ld l, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    add l
    add a
    add a
    adc b
    add [hl]
    ld a, b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc d
    ld l, c
    add [hl]
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    and l
    adc c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc d
    sub [hl]
    ld a, b
    ld [hl], l
    ld l, b
    ld a, b
    adc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, e
    ld a, b
    ld [hl], a
    add a
    adc c
    ld a, b
    ld l, b
    ld h, a
    ld a, b
    sub a
    sub [hl]
    adc b
    sub a
    ld [hl], a
    add l
    add a
    add l
    sub a
    ld a, c
    sbc c
    add a
    ld h, a
    ld a, c
    adc b
    ld a, c
    ld a, c
    ld e, b
    add [hl]
    sub a
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld l, b
    add a
    add a
    db $76
    ld l, c
    add a
    sbc b
    ld a, b
    ld a, c
    db $76
    sub a
    ld l, c
    ld a, d
    sub a
    sub a
    adc b
    ld h, a
    ld [hl], a
    add a
    sbc c
    db $76
    or [hl]
    add a
    ld a, b
    ld e, c
    and a
    adc b
    ld l, c
    add a
    add [hl]
    add [hl]
    ld a, c
    adc b
    ld [hl], a
    add a
    ld l, c
    sub a
    ld l, b
    ld a, c
    ld l, c
    add [hl]
    add [hl]
    adc c
    adc b
    ld h, a
    ld h, [hl]
    adc b
    ld a, c
    ld [hl], a
    and [hl]
    ld a, b
    ld l, b
    ld [hl], a
    or a
    ld l, c
    db $76
    add [hl]
    sub a
    sbc c
    db $76
    sub [hl]
    sbc b
    adc c
    ld e, c
    adc b
    ld [hl], a
    db $76
    ld a, b
    adc b
    adc c
    ld [hl], a
    db $76
    ld a, b
    sub a
    ld a, c
    db $76
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    sub [hl]
    adc b
    ld e, b
    ld a, c
    sub a
    ld a, b
    ld [hl], a
    ld l, b
    sub a
    ld a, c
    ld l, c
    ld [hl], a
    add l
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    or a
    ld a, d
    ld [hl], a
    sub [hl]
    add [hl]
    ld e, e
    db $76
    xor b
    add [hl]
    ld l, d
    db $76
    adc b
    ld a, c
    ld [hl], a
    add [hl]
    sub l
    ld a, d
    ld l, b
    adc b
    add l
    add a
    ld a, b
    sbc b
    add a
    ld a, b
    ld l, c
    db $76
    add [hl]
    ld a, c
    ld a, d
    add l
    sub a
    ld a, c
    ld a, b
    sub l
    ld a, b
    ld a, c
    db $76
    adc b
    adc b
    adc b
    ld d, [hl]
    adc b
    ld [hl], a
    ld e, c
    ld [hl], a
    sub a
    adc b
    ld l, b
    ld h, a
    add a
    adc b
    ld [hl], a
    sub a
    add [hl]
    xor c
    ld l, b
    add a
    add [hl]
    adc d
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld l, b
    add [hl]
    sub a
    ld a, c
    ld a, c
    add a
    adc b
    db $76
    sub [hl]
    ld l, b
    sub a
    sub a
    ld a, b
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    sub a
    add a
    ld e, b
    ld [hl], a
    adc b
    add a
    ld a, b
    db $76
    add a
    add a
    ld a, c
    add a
    add a
    ld [hl], a
    add a
    ld a, c
    add a
    add a
    ld a, b
    adc b
    add [hl]
    add a
    adc b
    xor c
    and l
    adc b
    adc c
    ld h, [hl]
    add a
    ld a, d
    ld [hl], a
    sub l
    adc b
    ld a, b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld h, a
    db $76
    adc b
    ld [hl], a
    sbc d
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    db $76
    add a
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld l, b
    sub l
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    sub [hl]
    add [hl]
    ld a, c
    ld a, b
    add a
    ld [hl], a
    ld l, c
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    add [hl]
    sbc b
    adc b
    ld h, a
    add a
    ld a, b
    ld a, c
    db $76
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    sbc c
    ld a, b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    ld l, b
    sub a
    ld [hl], a
    ld a, b
    adc c
    sub a
    ld [hl], a
    ld h, a
    sub a
    adc b
    adc b
    add a
    sub [hl]
    ld [hl], a
    adc b
    adc b
    add a
    ld l, c
    ld l, c
    ld l, c
    add [hl]
    sub a
    adc b
    ld a, b
    db $76
    sub a
    ld l, b
    add a
    sub [hl]
    ld a, b
    ld e, d

Jump_00c_7689:
    add a
    sub [hl]
    ld a, b
    adc b
    add [hl]
    add [hl]
    ld e, e
    ld [hl], a
    add a
    add a
    adc c
    ld [hl], a
    ld a, b
    ld a, d
    adc b
    ld h, a
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, c
    db $76
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld l, c
    db $76
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add a
    sbc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    sub [hl]
    and a
    ld h, a
    ld [hl], a
    adc b
    sub a
    ld l, b
    add [hl]
    sbc b
    ld l, b
    ld a, d
    ld l, b
    adc b
    ld l, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    db $76
    adc b
    ld l, b
    adc b
    sub [hl]
    add a
    ld [hl], a
    sub a
    add [hl]
    ld a, d
    ld l, c
    adc b
    ld a, b
    add a
    sbc c
    db $76
    ld a, b
    ld [hl], a
    add a
    add l
    sbc b
    ld a, c
    add a
    ld [hl], a
    and [hl]
    adc b
    add [hl]
    add a
    ld [hl], a
    ld a, d
    ld h, a
    add [hl]
    sbc b
    adc b
    add a
    sub l
    adc c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc c
    ld h, a
    add [hl]
    sbc c
    adc b
    ld e, b
    ld a, b
    ld a, d
    ld l, b
    ld [hl], a
    sub a
    add a
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    ld [hl], a
    sub a
    sbc c
    ld e, b
    add [hl]
    adc b
    add a
    ld l, b
    sub a
    add a
    ld a, b
    ld a, b
    sub a
    add a
    ld [hl], a
    add a
    sub a
    adc b
    db $76
    adc b
    add a
    adc b
    ld e, c
    sub a
    ld a, b
    db $76
    ld a, c
    ld a, b
    add a
    ld l, b
    add a
    ld a, b
    db $76
    ld a, c
    ld a, b
    adc b
    add a
    adc b
    ld l, b
    sub a
    ld h, a
    adc b
    ld a, b
    sub a
    adc b
    ld a, b
    ld a, c
    add [hl]
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld h, a
    sbc b
    ld a, b
    ld a, b
    ld a, c
    add a
    ld l, b
    db $76
    sbc b
    add a
    ld a, c
    add a
    add [hl]
    ld l, b
    ld [hl], a
    adc b
    sub l
    adc c
    ld [hl], a
    sub [hl]
    ld a, b
    ld a, c
    ld h, a
    ld e, b
    adc c
    adc c
    adc b
    ld h, a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld l, b
    ld l, b
    and a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    sbc b
    adc b
    add a
    ld l, c
    sub a
    add a
    db $76
    sbc b
    add [hl]
    add a
    ld h, a
    adc c
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld e, c
    ld a, b
    sub a
    add a
    db $76
    sbc b
    add a
    ld [hl], a
    adc b
    ld a, b
    db $76
    ld a, b
    sbc c
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, c
    adc b
    add a
    db $76
    ld [hl], a
    sub a
    sbc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    sbc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc c
    ld [hl], a
    db $76
    add a
    sbc b
    add a
    ld [hl], a
    add a
    and a
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sub [hl]
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    add a
    sub [hl]
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, b
    adc b
    adc b
    ld l, b
    add a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    sub a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    ld h, [hl]
    adc b
    ld a, b
    add [hl]
    add a
    sbc b
    ld [hl], a
    add a
    sbc b
    ld a, b
    ld a, c
    ld l, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, d
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    sbc c
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    ld h, a
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    add a
    add a
    add a
    adc b
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    db $76
    ld a, c
    add a
    ld a, c
    ld l, b
    adc b
    add [hl]
    add a
    ld a, b
    add [hl]
    sub [hl]
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    ld h, a
    add a
    and a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    ld a, c
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    db $76
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    db $76
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    ld a, c
    add a
    ld a, c
    ld a, b
    add a
    db $76
    adc c
    ld l, b
    ld [hl], a
    add [hl]
    sbc b
    ld l, b
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    sub [hl]
    adc b
    adc c
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add [hl]
    add [hl]
    ld a, c
    ld a, b
    add [hl]
    add a
    ld a, b
    add a
    ld a, b

Call_00c_7898:
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld h, a
    add a
    ld [hl], a
    add a
    add a
    adc b
    sbc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    adc c
    ld h, a
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld h, a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    sub a
    sub [hl]
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    db $76
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    add a
    sub a
    sub a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    add [hl]
    add [hl]
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add [hl]
    add a
    adc b
    add [hl]
    sbc b
    ld a, b
    ld h, a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    ld a, b
    db $76
    sub a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld l, b
    adc b
    add a
    adc b
    ld a, c
    sub a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld h, a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc b
    sub a
    ld a, c
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, c
    add a
    ld a, b
    ld l, b
    ld a, b
    sub a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld l, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    sub a
    ld l, b
    adc b
    sub a
    db $76
    adc c
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld l, b
    adc c
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    db $76
    adc c
    ld a, b
    ld a, b
    ld h, a
    sub a
    adc b
    ld [hl], a
    ld l, b
    sub a
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld l, b
    add a
    add a
    adc b
    ld a, b
    adc c
    ld a, b
    ld h, a
    ld a, b
    add a
    adc b
    ld l, b
    add a
    add [hl]
    ld [hl], a
    adc b
    adc c
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    adc b
    adc b
    sub a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    sbc c
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld l, b
    ld a, b
    ld a, c
    ld [hl], a
    ld h, a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    db $76
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld l, b
    add a
    adc b
    ld l, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, c
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, c
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, c
    add [hl]
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld d, $45
    sub a
    ld c, c
    ld b, b
    db $10
    ld [de], a
    adc h
    res 7, d
    cp d
    cp e
    xor e
    xor d
    xor c
    ld b, b
    ld h, b
    db $10
    ld de, $2322
    inc [hl]
    ld d, l
    ld a, h
    xor $ed
    db $ec
    call z, $aabb
    sbc b
    add a
    ld h, a
    adc d
    sbc e
    xor d
    xor d

Jump_00c_7ac5:
    sbc d
    sbc c
    sub a
    ld h, e
    ld hl, $1211
    ld [hl+], a
    inc sp
    ld b, h
    ld d, [hl]
    sbc c
    sbc e
    cp e
    call $bacb
    xor c
    adc b
    sbc b
    sbc d
    xor d
    xor e
    xor e
    sbc d
    xor c
    xor c
    sbc b
    ld h, [hl]
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld b, e
    ld b, h
    ld d, [hl]
    ld h, a
    ld a, c
    sbc d
    sbc d
    sbc d
    sbc c
    xor c
    ld e, d
    adc d
    sbc d
    xor d
    cp c
    xor d
    xor d
    sbc d
    sbc b
    sbc b
    ld [hl], a
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    ld b, l
    sub l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    adc c
    adc b
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    sbc c
    adc c
    sbc b
    adc b
    adc b
    db $76
    db $76
    ld h, l
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    sub a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub a
    adc b
    adc b
    adc b
    adc c
    sub a
    add a
    sub [hl]
    inc b
    ei
    ld l, $98
    adc [hl]
    and h
    ld h, a
    ld h, [hl]
    ld [hl], h
    add l
    ld c, c
    res 0, a
    adc c
    ld [hl], a
    add l
    add [hl]
    ld h, a
    xor c
    ld h, a
    ld a, c
    sub a
    adc b
    ld h, [hl]
    ld h, a
    sbc c
    sbc b
    add a
    ld h, a
    db $76
    ld [hl], a
    adc c
    sbc b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc c
    sub a
    add a
    ld h, a
    ld a, b
    add a

Call_00c_7b79:
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld l, b
    sbc b
    adc b
    add a
    ld [hl], a
    xor l
    or b
    rlca
    rst $28
    add l
    ld e, d
    adc $68
    dec [hl]
    ld [hl], h
    ld d, $99
    ld l, [hl]
    ld sp, hl
    ld hl, $a837
    cp c
    cp c
    ld h, e
    ld b, l
    ld a, c
    cp d
    adc c
    add a
    ld h, [hl]
    ld l, b
    sub a
    ld [hl], l
    add a
    adc c
    xor c
    ld [hl], l
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    adc b

Call_00c_7bab:
    add a
    ld h, a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    adc b
    add a
    add [hl]
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld h, a
    sbc c
    ld a, b
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    or h
    or d
    ld l, e
    sbc d
    ld e, c
    ld [hl], d
    ld b, l
    ld h, l
    ld d, [hl]
    xor a
    ei
    ld h, b
    nop
    ld e, h
    xor c
    call c, Call_00c_5275
    sbc d
    xor b
    add l
    cp b
    ld d, [hl]
    sbc b
    adc c
    sub [hl]
    add a
    ld a, c
    add a
    ld [hl], h
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    ld a, c
    add a
    adc d
    add a
    ld h, a
    ld l, b
    add a
    adc c
    ld [hl], a
    ld h, [hl]
    adc c
    adc c
    ld a, c
    ld e, b
    dec b
    add sp, -$05
    ld a, c
    ld l, c
    ld b, e
    ld h, h
    db $eb
    add [hl]
    ld c, d
    ld h, a
    or d
    ld c, c
    ld l, [hl]
    and [hl]
    or [hl]
    and a
    ld d, [hl]
    inc [hl]
    ld d, a
    xor d
    ld [$81cd], a
    add b
    ld l, e
    adc d
    ld e, b
    jp z, $3450

    sbc h
    call Call_000_33a7
    jr c, jr_00c_7c8b

    adc c
    adc c
    ld [hl], l
    ld d, e
    adc l
    ld h, l
    and [hl]
    xor d
    db $76
    and a
    ld a, [hl-]
    and a
    ld h, [hl]
    sbc c
    adc b
    add e
    ld d, e
    ld a, c
    set 3, l
    xor b
    ld d, [hl]
    dec [hl]
    ld d, d
    ld a, h
    jp c, Jump_00c_5587

    ld d, [hl]
    adc c
    call z, $8367
    inc h
    ld a, e
    xor d
    add l
    ld [hl], $7a
    xor e
    or [hl]
    ld d, [hl]
    ld e, b
    adc c
    adc d
    and [hl]
    ld b, a
    or a
    ld l, d
    adc b
    db $76
    adc b
    add l
    sbc c
    sbc b
    ld [hl], l
    adc b
    and a
    ld h, [hl]
    ld h, [hl]
    ld l, c
    sbc c
    sbc c
    adc c
    ld l, b
    ld h, l
    db $76
    ld l, b
    sbc b
    adc d
    sub a
    ld [hl], h
    ld b, h
    ld l, c
    xor d
    xor c
    sub l
    ld d, [hl]
    add a
    adc c
    sbc d
    add a
    ld d, h
    ld [hl], a
    adc c
    sbc c
    ld d, h
    ld d, a
    sbc d
    sbc e
    add h
    ld h, [hl]
    adc c
    adc b
    ld a, d
    ld h, a
    ld h, a
    sub a
    ld [hl], a
    ld a, b
    ld l, c
    sbc b
    add a

Call_00c_7c88:
    ld h, [hl]
    ld [hl], a
    xor d

jr_00c_7c8b:
    sbc b
    sub a
    db $76
    ld [hl], a
    ld a, b
    ld l, b
    adc d
    sbc b
    ld a, b
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    adc c
    and a
    ld [hl], a
    ld l, c
    ld [hl], a
    add [hl]
    sbc b
    adc b
    add a
    ld [hl], a
    ld l, b
    sbc c
    sub a
    adc b
    ld h, [hl]
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    sub a
    ld h, [hl]
    ld a, b
    sbc b
    adc b
    ld a, b
    adc c
    add a
    ld [hl], a
    db $76
    ld h, a
    adc b
    adc c
    ld a, b
    adc c
    db $76
    ld a, b
    ld a, b
    ld l, b
    adc c
    add a
    ld h, a
    ld a, c
    add a
    adc b
    adc b
    adc b
    db $76
    ld d, a
    adc b
    adc b
    adc b
    db $76
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    add a
    sbc c
    adc c
    sbc c
    ld h, l
    ld h, [hl]
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    sub a
    ld a, b

Jump_00c_7ce5:
    db $76
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    add a
    add a
    ld [hl], a
    db $76
    ld h, a
    adc b
    sbc c
    ld [hl], a
    ld a, b
    ld l, b
    add a
    adc b
    ld [hl], a
    sub a
    ld h, a
    ld [hl], a
    adc c
    ld a, b
    add [hl]
    ld [hl], a
    ld [hl], a
    sbc b
    adc c
    add a
    add [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    adc b
    adc b
    add [hl]
    add [hl]
    add [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    adc b
    ld h, a
    ld h, a
    add a
    sbc b
    adc b
    ld a, b
    ld a, b
    ld h, a
    add a
    ld a, b
    adc b
    sbc c
    add a
    ld [hl], a
    db $76
    add a
    adc b
    ld a, b
    adc b
    adc b
    add [hl]
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    ld a, b
    sub a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    adc b
    ld a, b
    ld h, a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc c
    add a
    ld h, a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld h, a
    add a
    add a
    ld h, a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    adc c
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    db $76
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    sbc b
    adc b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sub a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    add a
    ld a, c
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, c
    adc b
    add [hl]
    add a
    ld l, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    adc b
    add a
    add [hl]
    ld h, a
    ld a, b
    adc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc c
    adc c
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
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
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a

Jump_00c_7e73:
    ld a, b
    adc b
    adc b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    sbc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
