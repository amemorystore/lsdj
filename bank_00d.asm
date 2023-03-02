; disasSembly of "lsdj.gb"
SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    ld h, b
    ld b, b
    jr nc, jr_00d_4047

    and b
    ld b, h
    nop
    ld b, l
    ld [hl], b
    ld c, h
    ld b, b
    ld c, l
    ret nz

    ld c, l
    db $10
    ld d, c
    jr nz, jr_00d_4063

    and b
    ld d, c
    ldh a, [rHDMA2]
    ld d, b
    ld d, h
    and b
    ld d, a
    and b
    ld e, l
    ldh a, [$6f]
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
    ld b, e
    ld e, c
    ld c, l
    ld c, b
    ld b, d
    ld c, a
    ld c, h
    ld b, d
    ld c, a
    ld b, e
    ld b, a
    ld b, c
    ld d, d
    ld c, c
    ld c, l
    ld b, e
    ld c, h
    ld b, c
    ld c, l
    ld b, l
    ld d, h
    ld b, e
    ld c, a
    ld d, a
    ld d, h
    ld b, c
    ld c, l
    ld b, a

jr_00d_4047:
    ld d, l
    ld c, c
    ld b, a
    ld d, l
    ld [hl-], a
    nop
    dec l
    dec l
    nop
    nop
    nop
    ld b, e
    ld d, d
    dec l
    scf
    jr c, jr_00d_4078

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $50da
    nop

jr_00d_4063:
    nop
    nop
    nop
    ld [de], a
    inc hl
    ld b, l
    ld b, [hl]
    ld [hl], a
    adc b
    adc c
    xor e
    xor h
    cp h
    db $ed
    sbc $de
    cp $ef
    cp $ff
    rst $38

jr_00d_4078:
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    xor $de
    db $ec
    ld c, h
    call $bccc
    xor e
    xor d
    xor c
    sbc c
    sbc c
    ld a, b
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, l
    inc de
    inc sp
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld hl, $1121
    ld de, $0101
    nop
    nop
    db $10
    db $10
    ld d, b
    db $10
    ld de, $1101
    ld de, $2121
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    push de
    ld h, l
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    adc b
    sbc b
    xor c
    sbc c
    xor d
    xor e
    cp h
    cp e
    call z, $fdbc
    db $dd
    sbc $de
    xor $ed
    rst $28
    xor $fe
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $28
    rst $38
    xor [hl]
    cp $ee
    rst $28
    db $ed
    cp $de
    db $dd
    call c, $cddc
    call z, $bbcc
    xor d
    cp e
    ld c, c
    xor d
    sbc c
    sbc b
    adc b
    adc b
    ld a, b
    ld h, a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    inc h
    ld b, e
    inc sp
    inc sp
    inc hl
    inc hl
    ld [hl+], a
    inc de
    ld hl, $1122
    ld hl, $2121
    ld [hl+], a
    ld [de], a
    ld d, d
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld sp, $3222
    ld [hl-], a
    inc sp
    ld b, e
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    and [hl]
    ld h, l
    db $76
    ld h, [hl]
    add a
    ld l, b
    ld [hl], a
    sub a
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    xor c
    xor d
    xor e
    res 5, h
    cp e
    cp h
    cp h
    cp h
    call z, $ccdc
    db $dd
    call z, $cdcd
    call c, $cdcd
    sbc l
    call z, $ccdc
    call z, $bcbc
    cp h
    cp e
    cp h
    xor e
    xor d
    cp d
    xor c
    xor d
    sbc d
    ld e, c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    ld b, h
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    inc [hl]
    ld b, e
    ld b, e
    ld b, h
    inc [hl]
    inc [hl]
    ld b, e
    inc sp
    ld b, d
    ld h, h
    inc [hl]
    inc [hl]
    ld b, e
    ld b, h
    ld b, h
    dec [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    sub [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    sbc e
    xor d
    xor d
    xor d
    cp e
    xor d
    cp e
    xor e
    cp d
    cp e
    res 7, d
    cp h
    cp d
    cp e
    sbc e
    cp e
    cp e
    xor d
    cp d
    cp d
    xor d
    cp c
    cp d
    xor d
    sbc d
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    ld l, c
    adc b
    sbc b
    adc b
    sub a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld b, l
    ld b, l
    ld d, h
    ld d, l
    ld [hl], h
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    sub [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    sbc b
    adc c
    adc b
    sbc c
    sbc c
    adc c
    xor c
    sbc c
    sbc c
    sbc d
    sbc d
    sbc c
    xor c
    sbc d
    xor d
    xor c
    xor d
    sbc d
    sbc e
    sbc c
    xor d
    sbc d
    sbc d
    sbc d
    xor c
    xor d
    xor c
    xor c
    xor c
    sbc c
    xor c
    sbc d
    adc c
    sbc c
    adc b
    sbc b
    adc c
    sbc b
    ld a, b
    adc c
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc c
    add a
    sbc b
    adc b
    adc c
    sbc b
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc d
    adc d
    sbc c
    xor b
    sbc c
    adc d
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    sub a
    sbc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    ld a, c
    adc b
    adc c
    adc c
    adc c
    adc b
    sbc c
    ld a, b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc c
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld l, b
    ld l, b
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld l, b
    ld h, a
    add [hl]
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    sub a
    adc b
    sub a
    adc b
    sbc b
    adc b
    sbc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc c
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    sub a
    adc b
    adc b
    sub a
    adc c
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], h
    jr nz, jr_00d_4333

jr_00d_4333:
    nop
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp h
    sbc h
    and [hl]
    sub l
    ld b, h
    ld sp, $0101
    db $10
    ld [hl+], a
    ld [hl+], a
    inc sp
    ld d, [hl]
    ld h, [hl]
    adc c
    adc e
    adc c
    ret z

    xor c
    and a
    add [hl]
    db $76
    ld b, l
    inc [hl]
    ld d, e
    inc h
    inc sp
    inc h
    ld h, l
    ld b, h
    sub l
    add a
    adc c
    adc c
    xor b
    ld a, c
    sbc c
    xor b
    ld l, d
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, h
    ld d, l
    ld d, l
    ld h, l
    ld b, [hl]
    db $76
    ld l, b
    adc d
    adc b
    adc d
    sbc d
    adc c
    xor d
    ld a, d
    adc b
    ld l, b
    add a
    db $76
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld [hl], l
    db $76
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc c
    adc c
    xor b
    ld a, d
    ld a, e
    add a
    sub a
    ld l, c
    add a
    ld d, [hl]
    ld a, c
    db $76
    ld h, a
    ld e, b
    ld a, c
    ld l, b
    adc b
    adc b
    add a
    sbc b
    adc b
    sbc c
    adc b
    and a
    ld a, b
    ld l, d
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    ld h, a
    add a
    add [hl]
    adc c
    ld a, c
    ld l, d
    sub [hl]
    and a
    adc b
    sbc b
    add [hl]
    sbc b
    adc b
    ld a, b
    adc c
    ld a, c
    ld a, b
    add [hl]
    ld a, b
    and a
    add [hl]
    adc c
    ld a, d
    ld c, c
    sbc b
    add a
    add [hl]
    and a
    sub a
    and a
    ld l, e
    sub a
    add a
    adc b
    ld a, c
    sub a
    ld a, b
    ld l, c
    ld a, b
    sub a
    adc d
    ld l, c
    add a
    ld l, c
    add a
    adc c
    add a
    add [hl]
    sbc b
    adc c
    ld [hl], a
    ld a, b
    ld e, c
    add a
    add a
    sub a
    add [hl]
    sub a
    ld a, b
    ld a, b
    add a
    adc c
    db $76
    xor c
    ld a, c
    ld l, c
    ld l, b
    adc d
    ld h, a
    and a
    ld a, b
    ld a, c
    adc b
    add a
    ld a, b
    add a
    ld a, c
    ld l, b
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    ld a, d
    ld a, b
    add a
    add [hl]
    and a
    ld e, d
    adc b
    ld a, b
    adc b
    ld a, b
    sub a
    ld [hl], a
    sub [hl]
    or a
    adc b
    adc b
    ld e, h
    ld d, a
    sbc b
    ld [hl], a
    adc c
    ld h, a
    and [hl]
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld [hl], l
    add [hl]
    and [hl]
    adc b
    sub [hl]
    adc c
    ld a, c
    ld l, b
    ld [hl], a
    add a
    sbc b
    ld l, c
    ld l, b
    adc b
    ld l, d
    db $76
    sub [hl]
    ld a, c
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add l
    and a
    and h
    adc c
    ld l, b
    add [hl]
    adc b
    add a
    ld l, c
    sub l
    xor b
    ld [hl], a
    sub a
    ld e, d
    ld [hl], l
    sub a
    sbc b
    db $76
    sbc b
    ld l, b
    ld a, b
    sub a
    ld l, b
    add a
    ld a, b
    sbc b
    ld l, b
    ld a, c
    add l
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, d
    ld a, b
    adc b
    sub h
    sub a
    adc c
    ld e, b
    ld [hl], a
    sub [hl]
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld l, c
    ld e, b
    ld a, b
    add l
    add a
    sbc b
    ld [hl], a
    ld a, c
    add a
    add [hl]
    ld a, c
    ld h, [hl]
    sub a
    adc b
    ld l, c
    sub a
    ld a, b
    sub l
    sub a
    ld a, b
    add a
    ld [hl], a
    and [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    db $76
    add a
    add a
    add a
    sub [hl]
    ld a, b
    add [hl]
    sbc b
    ld e, c
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld l, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld l, c
    ld l, b
    adc c
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sub a
    ld l, b
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    xor a
    jr nc, jr_00d_44da

    add a
    sbc b
    sub a
    and l
    or [hl]
    sub [hl]
    ld a, d
    ld d, a
    sub a
    ld l, c
    ld l, c
    add [hl]
    and [hl]
    add [hl]
    sub a
    ld a, c
    ld h, a
    sub l
    and l
    and l
    and a
    ld a, c
    ld e, d
    ld l, c
    ld [hl], a
    sub [hl]
    sub l
    and [hl]
    ld a, b
    adc b
    adc b
    ld a, c
    ld a, b
    add l
    and a
    add a
    sub a
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    db $76
    sub [hl]
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b

jr_00d_44da:
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, c
    add l
    and [hl]
    add a
    adc b
    ld l, c
    ld l, c
    ld l, d
    ld l, b
    ld a, b
    ld [hl], a
    and l
    sub a
    ld a, c
    ld a, b
    ld h, a
    add [hl]
    adc c
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    scf
    cp a
    nop
    ld [$d473], sp
    add $b8
    ld a, c
    and e
    push bc
    sbc c
    ld h, a
    and a
    add a
    xor b
    ld c, $2b
    add a
    sub a
    and b
    db $f4
    or a
    sbc c
    ld l, e
    ld e, d
    db $76
    or [hl]
    add a
    sbc b
    ld a, b
    ld l, l
    ld l, a
    inc c
    add [hl]
    or e
    add sp, $1f
    ld h, l
    pop af
    add $6d
    rrca
    scf
    or l
    sbc c
    ld a, b
    adc b
    ld l, c
    sub l
    or l
    or h
    or h
    or h
    or h
    push bc
    or d
    push hl
    adc c
    ld l, c
    sub l
    or [hl]
    ld a, d
    ld l, c
    xor b
    sub [hl]
    ld a, l
    dec e
    ld e, e
    ld h, a
    sub l
    and a
    ld e, e
    ld h, a
    sub [hl]
    and h
    or a
    ld a, d
    ld e, b
    and [hl]
    ld h, [hl]
    ld a, e
    ld e, d
    ld [hl], a
    and h
    adc e
    ld e, b
    add [hl]
    jp nc, $b6d3

    sub a
    ld l, d
    add a
    ld a, b
    adc b
    sbc b
    sub a
    ld a, c
    ld e, d
    add [hl]
    and h
    or [hl]
    adc c
    ld [hl], a
    adc b
    ld a, c
    ld l, d
    ld l, c
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    adc c
    ld l, c
    ld [hl], a
    ld a, b
    sub l
    sub a
    adc b
    ld l, e
    ld e, b
    sub l
    and h
    xor b
    ld a, b
    add a
    sub [hl]
    db $76
    sub a
    ld [hl], a
    ld a, c
    ld l, d
    ld l, c
    ld a, c
    ld e, c
    add [hl]
    ld a, c
    add [hl]
    and l
    sub [hl]
    sbc b
    ld e, d
    ld [hl], a
    and [hl]
    and [hl]
    ld l, h
    dec sp
    ld h, a
    sub [hl]
    add [hl]
    and [hl]
    ld a, c
    ld [hl], a
    ld l, c
    ld a, b
    ld l, c
    ld e, c
    ld a, c
    ld h, a
    sub [hl]
    adc b
    add [hl]
    and l
    sbc b
    ld e, d
    ld e, b
    ld a, b
    ld [hl], a
    and l
    sub [hl]
    adc b
    ld l, d
    ld a, [hl-]
    db $76
    and [hl]
    ld h, l
    sub a
    add a
    ld a, b
    ld l, c
    db $76
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld e, c
    db $76
    adc c
    ld a, b
    ld l, d
    ld e, c
    ld e, b
    ld a, b
    ld l, b
    ld a, b
    sub l
    add a
    sub [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld e, d
    ld c, d
    ld h, a
    sub [hl]
    adc c
    sbc e
    ld c, e
    ld c, d
    ld h, [hl]
    and a
    ld l, c
    ld l, b
    ld [hl], a
    ld l, d
    inc a
    dec sp
    ld e, c
    ld l, b
    add a
    ld [hl], a
    sub l
    ld d, [hl]
    add a
    add a
    sub [hl]
    adc b
    ld l, b
    add a
    ld l, c
    db $76
    add a
    add [hl]
    adc c
    ld e, b
    ld a, b
    ld e, d
    ld l, b
    ld a, d
    ld e, b
    adc b
    ld [hl], a
    sub l
    sub [hl]
    ld a, c
    db $76
    adc c
    ld e, d
    ld e, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld e, b
    ld [hl], a
    add a
    ld a, b
    ld l, d
    ld e, c
    db $76
    add a
    add a
    ld [hl], a
    sub [hl]
    ld a, c
    ld h, a
    add [hl]
    sub [hl]
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld a, b
    add l
    sub [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld l, b
    ld l, b
    db $76
    sub [hl]
    ld [hl], a
    ld h, a
    add a
    add [hl]
    add a
    ld [hl], a
    ld l, d
    ld a, [hl-]
    ld e, b
    ld l, b
    ld a, b
    ld h, a
    ld a, b
    ld l, c
    ld l, c
    ld e, d
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    add l
    sub l
    add a
    ld [hl], a
    add [hl]
    ld a, c
    ld e, e
    ld e, b
    ld [hl], a
    add l
    and l
    adc b
    db $76
    add a
    add [hl]
    sub [hl]
    ld [hl], a
    db $76
    add a
    ld a, b
    ld l, b
    ld [hl], a
    db $76
    sub [hl]
    add a
    ld l, b
    ld h, a
    add l
    and l
    sub h
    sub [hl]
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld e, c
    ld [hl], a
    ld a, b
    ld c, e
    add hl, sp
    ld e, c
    ld d, [hl]
    sub h
    sub a
    ld [hl], a
    db $76
    add [hl]
    add l
    and h
    sub a
    ld e, c
    db $76
    add [hl]
    add [hl]
    ld [hl], a
    add a
    ld l, c
    sbc c
    ld [hl], l
    and l
    ld [hl], a
    add l
    adc b
    db $76
    and l
    sub [hl]
    sub l
    adc c
    ld c, c
    ld l, b
    ld e, b
    add a
    add l
    add l
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    add [hl]
    add [hl]
    ld [hl], a
    sub h
    sub [hl]
    ld a, b
    ld [hl], a
    ld l, c
    ld h, a
    add l
    sub [hl]
    ld h, [hl]
    adc b
    ld h, a
    ld a, b
    ld d, a
    add [hl]
    sub [hl]
    ld a, b
    ld h, a
    add [hl]
    add [hl]
    add [hl]
    sub [hl]
    add [hl]
    add [hl]
    adc b
    sub a
    add a
    ld h, a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    sub l
    and l
    add a
    add a
    ld e, d
    ld c, e
    ld c, c
    db $76
    add l
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    sub l
    and l
    ld a, c
    ld h, a
    ld l, b
    add [hl]
    add a
    ld h, a
    sub l
    ld a, b
    ld [hl], a
    ld l, c
    ld h, a
    ld l, c
    ld h, l
    and l
    sub l
    add [hl]
    add [hl]
    add a
    ld [hl], a
    add a
    ld l, c
    ld l, b
    ld l, b
    ld l, b
    ld h, a
    add a
    ld a, c
    ld c, d
    ld c, d
    ld e, b
    ld h, [hl]
    and l
    add [hl]
    sub l
    add [hl]
    sub l
    and [hl]
    ld [hl], a
    db $76
    sub a
    ld l, c
    db $76
    ld l, c
    ld e, b
    ld e, d
    ld c, d
    ld c, b
    add [hl]
    add l
    sub [hl]
    ld l, c
    ld h, a
    add [hl]
    add l
    sub a
    ld h, a
    add a
    ld l, c
    ld l, b
    ld a, b
    ld l, b
    ld l, b
    ld e, c
    ld h, a
    add [hl]
    ld [hl], a
    add a
    ld e, d
    ld l, b
    ld l, c
    ld h, a
    ld a, b
    ld l, b
    ld l, b
    ld e, b
    ld l, b
    add l
    sub [hl]
    db $76
    add a
    db $76
    add a
    add [hl]
    add [hl]
    ld [hl], a
    add [hl]
    add l
    sub l
    adc b
    ld e, d
    ld d, a
    add l
    and h
    and h
    sub a
    ld [hl], a
    ld l, b
    db $76
    ld a, c
    ld e, c
    ld l, b
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    ld l, c
    sbc c
    add l
    sub [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, c
    ld h, a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    ld e, c
    ld e, b
    ld [hl], a
    add l
    db $76
    add [hl]
    add a
    ld l, c
    ld h, a
    ld [hl], a
    ld a, b
    ld e, c
    ld e, b
    db $76
    sub a
    ld [hl], a
    add a
    ld l, b
    ld a, c
    ld l, b
    db $76
    sub l
    sub l
    and [hl]
    ld e, d
    ld e, b
    add a
    ld [hl], a
    ld a, b
    ld e, d
    ld c, d
    ld d, a
    sub l
    sub a
    ld a, b
    ld l, b
    adc c
    ld c, d
    ld e, c
    ld l, b
    ld a, b
    db $76
    add a
    ld [hl], a
    add l
    and l
    sub a
    ld l, b
    ld l, b
    add [hl]
    sub [hl]
    ld [hl], a
    add [hl]
    ld a, b
    ld l, c
    ld e, d
    ld l, c
    ld e, b
    add a
    ld l, b
    ld l, c
    ld l, b
    add [hl]
    adc b
    ld e, c
    ld e, c
    ld h, a
    add [hl]
    ld h, [hl]
    adc b
    ld [hl], a
    ld l, b
    ld a, c
    ld l, b
    sub e
    or l
    sub [hl]
    add a
    ld a, b
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    ld a, b
    ld e, b
    add a
    db $76
    add [hl]
    adc b
    ld a, b
    ld l, c
    ld l, b
    sub l
    and l
    sub [hl]
    add [hl]
    add a
    ld [hl], a
    add $95
    sub [hl]
    sub [hl]
    add a
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld l, d
    ld e, c
    ld c, d
    ld h, a
    add a
    db $76
    and h
    ld [hl], e
    or [hl]
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add l
    and l
    add a
    ld l, c
    db $76
    and [hl]
    ld a, b
    ld e, e
    inc a
    add hl, sp
    sbc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    sub l
    and [hl]
    ld l, c
    ld [hl], a
    ld a, c
    ld e, c
    ld e, d
    ld h, a
    sub [hl]
    and l
    add [hl]
    add [hl]
    sub l
    sub [hl]
    sub a
    ld l, b
    ld a, b
    ld l, b
    ld l, b
    sub l
    sub a
    ld a, b
    ld l, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    and [hl]
    ld l, d
    ld e, c
    ld l, c
    db $76
    and l
    sub a
    add a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    adc b
    ld e, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld [hl], a
    sub l
    and [hl]
    add a
    add a
    ld a, b
    add a
    ld l, b
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    ld l, c
    ld e, c
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld l, b
    add [hl]
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    add a
    db $76
    sub [hl]
    add [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld a, b
    add [hl]
    sub [hl]
    sub [hl]
    sbc b
    ld [hl], a
    add [hl]
    sub a
    sub [hl]
    sub l
    or h
    and [hl]
    adc b
    ld l, c
    ld l, d
    ld c, e
    ld c, c
    ld [hl], a
    sub [hl]
    sub [hl]
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    sub a
    add a
    ld a, c
    ld c, e
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    add a
    sub [hl]
    add [hl]
    sub [hl]
    and [hl]
    adc b
    ld [hl], a
    add [hl]
    sub [hl]
    ld a, b
    ld a, b
    ld a, b
    ld e, d
    ld l, b
    add a
    add a
    sub [hl]
    adc b
    ld l, c
    ld l, b
    sub [hl]
    adc b
    add l
    and l
    and a
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld l, c
    ld l, d
    ld l, b
    ld [hl], l
    sub a
    add a
    sub a
    adc b
    ld l, c
    ld [hl], a
    sub l
    sub a
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    add a
    adc b
    ld l, c
    adc b
    ld l, c
    ld l, c
    ld a, b
    add a
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld e, e
    ld c, d
    ld l, b
    add [hl]
    sub [hl]
    sub a
    ld [hl], a
    ld l, b
    add [hl]
    adc b
    db $76
    and [hl]
    sub [hl]
    adc b
    ld a, b
    add [hl]
    add a
    sub a
    add a
    ld a, d
    ld e, d
    ld l, c
    ld a, c
    sbc c
    add a
    sub l
    and l
    and l
    or l
    and [hl]
    add a
    sub a
    adc b
    add [hl]
    and l
    sub a
    adc b
    ld l, c
    ld a, b
    and l
    or h
    and a
    add [hl]
    or [hl]
    ld a, c
    ld l, c
    db $76
    adc b
    ld a, c
    ld l, c
    ld a, c
    ld h, a
    and l
    and l
    sub [hl]
    ld [hl], h
    xor b
    ld a, c
    ld a, c
    ld e, c
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    and [hl]
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    sub l
    sub a
    sub a
    ld [hl], a
    ld a, c
    ld a, b
    ld l, c
    ld l, d
    ld [hl], a
    sbc b
    ld a, c
    ld a, b
    add a
    adc b
    add a
    add a
    sub l
    or l
    adc c
    ld l, b
    adc b
    ld a, b
    ld a, c
    add a
    add a
    add a
    adc b
    ld l, c
    ld l, b
    add [hl]
    sub a
    sub [hl]
    sub a
    add a
    adc b
    ld a, b
    adc b
    ld e, c
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    ld e, d
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld e, c
    add a
    sub a
    add a
    add a
    ld a, b
    add [hl]
    sub a
    adc b
    add a
    add [hl]
    sub a
    add [hl]
    or l
    sub a
    adc b
    ld e, d
    ld l, c
    add [hl]
    sub [hl]
    sub a
    xor c
    ld a, b
    ld a, c
    ld [hl], a
    add a
    sub [hl]
    add a
    adc b
    ld e, d
    ld l, b
    ld a, b
    ld e, e
    ld c, d
    ld l, c
    add a
    add [hl]
    db $76
    adc c
    ld l, d
    ld l, b
    ld a, b
    add a
    ld a, b
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, c
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, c
    ld a, b
    ld l, e
    dec sp
    ld l, c
    ld a, b
    add a
    ld a, b
    sub [hl]
    sub [hl]
    sub [hl]
    and l
    and [hl]
    sub a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc c
    ld c, e
    ld a, b
    db $76
    sbc b
    ld l, b
    adc b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld l, c
    ld l, c
    ld a, c
    ld a, b
    add l
    and [hl]
    sub a
    ld a, b
    sub a
    ld a, b
    ld a, c
    ld a, c
    ld l, b
    add [hl]
    and [hl]
    adc c
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    and [hl]
    sbc b
    ld a, c
    ld l, c
    ld [hl], a
    sub [hl]
    and l
    sub a
    adc b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    and a
    adc d
    ld e, c
    ld a, b
    ld l, b
    sub [hl]
    sbc b
    add a
    sub a
    adc b
    ld a, c
    add a
    adc c
    ld a, b
    adc b
    ld l, d
    ld l, b
    add a
    adc b
    ld a, c
    ld l, d
    ld e, b
    add a
    or l
    and [hl]
    adc b
    add a
    ld a, c
    ld l, d
    ld l, b
    adc c
    ld l, c
    add a
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld a, c
    add a
    sub a
    sub [hl]
    sub a
    ld a, c
    ld a, c
    ld l, c
    ld a, b
    add a
    ld a, b
    add a
    sub a
    ld a, c
    ld a, b
    sub [hl]
    and a
    ld a, b
    sub [hl]
    add a
    ld a, c
    ld a, b
    ld a, b
    add a
    adc b
    ld l, c
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    and [hl]
    sub a
    add a
    ld a, b
    add a
    sub a
    ld a, b
    ld a, b
    add a
    sub a
    sub [hl]
    and l
    sub [hl]
    adc b
    add a
    adc c
    ld a, b
    ld a, c
    ld l, c
    add a
    sbc b
    ld a, c
    ld a, b
    add a
    ld a, c
    ld l, b
    add a
    sub a
    ld a, c
    ld a, b
    adc b
    sub l
    or [hl]
    ld a, c
    ld l, d
    ld h, a
    adc c
    ld a, b
    sbc c
    ld a, c
    add a
    add a
    adc c
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld a, c
    ld l, b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, c
    ld a, b
    adc b
    add a
    sub a
    ld [hl], a
    add a
    sub [hl]
    sbc b
    adc b
    add a
    ld a, c
    ld a, b
    sub [hl]
    adc b
    ld a, b
    adc b
    ld l, d
    ld a, b
    add a
    ld a, c
    add a
    add a
    add a
    ld h, a
    ld a, c
    ld l, c
    add [hl]
    adc b
    add a
    adc c
    add a
    adc b
    ld a, b
    add [hl]
    and [hl]
    adc b
    adc b
    ld a, c
    ld l, d
    adc b
    add a
    sub a
    ld a, c
    ld a, b
    sub a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    add a
    sub a
    sub a
    sub [hl]
    and l
    sub a
    ld a, c
    ld l, c
    ld a, b
    adc b
    add a
    adc c
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    adc c
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add [hl]
    and [hl]
    and [hl]
    adc b
    ld a, b
    add a
    sub [hl]
    sub a
    adc b
    ld a, b
    add [hl]
    and a
    sub a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    sub a
    sub a
    ld a, c
    ld l, c
    ld a, c
    ld l, c
    adc b
    ld a, b
    adc b
    add a
    add a
    sub [hl]
    sub [hl]
    sbc b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add a
    and l
    and [hl]
    ld a, d
    ld l, d
    ld e, d
    ld l, c
    ld a, b
    adc b
    ld a, b
    add a
    sbc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b

Call_00d_4a89:
    adc b
    ld a, b
    adc b
    ld l, d
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    sub a
    add a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    sub a
    sub [hl]
    sub [hl]
    sub a
    sub a
    ld a, c
    ld e, c
    ld [hl], a
    ld a, b
    ld a, c
    ld e, d
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    adc b
    sub a
    add a
    adc b
    ld a, d
    ld l, c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    sub [hl]
    sbc b
    ld a, b
    adc c
    ld [hl], a
    ld a, b
    add a
    ld a, d
    ld l, c
    add a
    add a
    db $76
    sub a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    add a
    adc b
    add a
    sub [hl]
    sub a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, c
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    add a
    adc b
    ld [hl], a
    sub [hl]
    sub a
    add a
    add a
    adc b
    add [hl]
    sub a
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, c
    ld a, c
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    adc b
    add a
    adc b
    adc b
    ld h, a
    adc b
    ld l, c
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld l, c
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    adc b
    add a
    add [hl]
    and [hl]
    sub a
    adc b
    ld a, c
    adc c
    ld a, b
    adc b
    ld l, c
    ld a, b
    add a
    add a
    sub a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a

Call_00d_4b99:
Jump_00d_4b99:
    add [hl]
    adc c
    ld l, c
    ld [hl], a
    sub [hl]
    sub a
    ld a, b
    add a
    adc b
    add a
    adc b
    add a
    sub a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    db $76
    sub a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    sub l
    sub a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, c
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    sub a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    add [hl]
    sub a
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
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    add [hl]
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
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
    add $41
    ld [hl+], a
    ld e, b
    adc $ff
    cp $cc
    xor b
    ld h, l
    inc sp
    ld [hl+], a
    inc [hl]
    ld d, a
    sbc d
    cp e
    ld e, h
    cp c
    sub [hl]
    ld h, h
    inc sp
    inc sp
    ld b, [hl]
    ld a, b
    sbc e
    cp h
    res 5, b
    add [hl]
    ld b, h
    inc sp
    ld b, l
    ld h, [hl]
    adc d
    xor e
    res 7, e
    sbc b
    ld [hl], l
    ld d, h
    ld b, l
    ld b, [hl]
    ld h, a
    adc d
    xor e
    cp e
    cp c
    add a
    and l
    ld d, l
    dec [hl]
    ld d, [hl]
    ld a, b
    adc d
    xor e
    cp d
    xor b
    add [hl]
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, a
    adc c
    sbc e
    ld l, d
    xor d
    adc b
    db $76
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    sbc c
    xor d
    xor d
    sbc c
    sub a
    ld h, l
    ld h, l
    ld d, [hl]
    db $76
    add a
    sbc c
    sbc d
    xor d
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    adc b
    sbc c
    sbc d
    sbc c
    adc b
    sub a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    sbc d
    sbc c
    adc b
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    sbc b
    ld l, d
    adc c
    sbc b
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    add a
    sbc b
    sbc c
    sbc b
    sbc b
    add a
    db $76
    db $76
    add [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    ld a, b
    add a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, c
    adc c
    adc c
    adc c
    add a
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    sbc b
    sbc c
    sbc b
    adc b
    add a
    add [hl]
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld h, a
    adc b
    adc b
    adc c
    adc b
    adc c
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld c, c
    ld d, c
    ld c, c
    ld d, b
    add hl, sp
    cp b
    ld e, e
    xor $bb
    sbc $ba
    sbc e
    xor b
    ld d, a
    db $76
    inc sp
    ld d, [hl]
    ld [hl-], a
    ld d, [hl]
    ld h, l
    ld e, b
    sbc b
    ld a, c
    xor e
    sbc c
    sbc d
    sbc b
    ld a, b
    add [hl]
    ld d, [hl]
    ld h, l
    ld b, l
    ld h, [hl]
    ld h, h
    ld a, b
    add [hl]
    adc c
    xor c
    adc d
    xor c
    sbc b
    sbc b
    sub [hl]
    ld [hl], a
    ld [hl], l
    ld d, a
    ld h, a
    ld d, [hl]
    add a
    db $76
    adc c
    xor b
    adc c
    xor d
    adc c
    sbc c
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    adc b
    ld [hl], a
    sbc c
    adc b
    adc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc b
    adc c
    sbc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, c
    adc b
    adc b
    adc b
    add [hl]
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    or $42
    nop
    ld bc, $2201
    inc sp
    ld b, l
    ld d, a
    ld a, c
    xor e
    call $efef
    rst $28
    rst $38
    ld e, $ee
    db $ed
    db $dd
    res 7, d
    sbc c
    add a
    ld [hl], l
    ld h, h
    ld b, e
    ld [hl-], a
    ld hl, $1020
    ld hl, $13c1
    inc hl
    inc sp
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc b
    xor c
    cp e
    cp e
    db $dd
    call z, $dedd
    call $cc4c
    xor e
    xor c
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, e
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    sub h
    ld d, [hl]
    ld h, a
    ld a, b
    adc d
    xor c
    cp e
    cp h
    call z, $dccd
    sbc $dc
    call c, $bbbc
    ld a, d
    adc b
    add a
    ld [hl], a
    ld d, l
    ld d, h
    inc sp
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld b, e
    ld b, l
    ld b, l
    db $76
    ld a, b
    adc c
    sbc d
    xor e
    xor h
    call $cdbd
    db $dd
    call z, $bacc
    cp d
    xor c
    sbc b
    add [hl]
    and [hl]
    ld d, [hl]
    ld d, h
    ld b, e
    inc [hl]
    inc sp
    inc sp
    inc [hl]
    inc sp
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    sbc b
    sbc c
    ld c, d
    cp e
    set 1, h
    call c, $cccc
    call z, $aaac
    xor c
    sbc b
    add a
    db $76
    ld h, l
    ld d, [hl]
    or e
    ld b, h
    inc sp
    inc sp
    inc h
    inc [hl]
    ld b, h
    ld d, l
    ld b, [hl]
    ld h, [hl]
    ld a, b
    ld a, c
    sbc c
    sbc e
    sbc e
    srl h
    cp e
    call z, $cbbb
    jp z, $99ba

    sbc b
    adc b
    db $76
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, e
    ld b, h
    or e
    inc [hl]
    inc sp
    ld b, h
    ld d, h
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, b
    adc c
    xor d
    xor d
    xor e
    res 7, h
    srl h
    cp d
    cp e
    xor d
    xor c
    adc c
    adc b
    db $76
    ld h, l
    ld h, [hl]
    ld d, h
    ld b, l
    ld b, h
    ld b, e
    ld b, h
    inc [hl]
    or l
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc d
    sbc c
    xor d
    xor e
    cp e
    cp e
    cp e
    cp h
    cp e
    xor d
    ld l, c
    sbc c
    sbc b
    adc b
    add a
    ld h, a
    ld h, l
    ld d, l
    ld b, l
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, [hl]
    add [hl]
    ld [hl], a
    ld a, b
    adc c
    adc c
    xor c
    xor e
    xor d
    cp e
    cp e
    cp e
    cp e
    xor e
    xor c
    xor c
    sbc c
    adc b
    ld a, b
    db $76
    ld h, [hl]
    ld h, l
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    sbc d
    xor d
    xor e
    cp d
    xor e
    cp d
    cp d
    cp c
    xor d
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    sub l
    ld [hl], l
    ld h, l
    ld d, h
    ld d, h
    ld b, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc c
    sbc d
    ld e, d
    xor d
    xor d
    xor e
    xor d
    xor d
    xor d
    xor d
    sbc d
    adc b
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, l
    and l
    ld d, [hl]
    ld b, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    adc c
    sbc c
    xor d
    xor d
    ld e, d
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    or h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    add a
    add a
    adc b
    adc c
    sbc c
    xor c
    cp d
    xor d
    sbc d
    xor d
    ld l, c
    xor c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    sub [hl]
    ld h, a
    ld h, [hl]
    add [hl]
    adc b
    adc b
    adc c
    adc c
    sbc c
    sbc d
    sbc e
    sbc d
    xor d
    sbc d
    xor c
    xor b
    ld a, c
    adc c
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc c
    adc c
    xor b
    xor c
    sbc c
    sbc d
    xor c
    sbc d
    sbc c
    sbc c
    sbc b
    sbc b
    add a
    adc b
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    add a
    add a
    ld a, b
    sbc b
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sub a
    add a
    add a
    db $76
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    add a
    add a
    add a
    sbc b
    sbc b
    ld l, c
    sbc c
    xor b
    sbc d
    xor b
    sbc d
    adc b
    sbc c
    sbc b
    adc c
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    sub l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    ld e, c
    xor c
    sbc c
    sbc c
    adc c
    sbc b
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc b
    xor b
    sbc c
    ld l, c
    adc c
    adc b
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc c
    adc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    ld a, b
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    adc b
    sbc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc b
    sbc b
    ld a, b
    adc b
    add a
    add [hl]
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    adc c
    adc b
    adc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, c
    adc b
    ld a, b
    sbc c
    adc b
    sbc b
    sbc b
    sub a
    sub a
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    sub a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc b
    ld l, b
    adc c
    adc b
    sbc b
    add a
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    adc c
    adc c
    adc b
    sbc b
    ld a, b
    adc c
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    db $76
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc b
    sbc b
    adc b
    sbc c
    adc b
    adc b
    sbc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a

jr_00d_50c1:
    add a
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    sbc b
    adc c
    ld a, c
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc c
    add a
    sbc b
    sub a
    sbc b
    sbc b
    adc b
    add a
    adc c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    ld l, b
    ld a, c
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    adc a
    or $22
    jr c, jr_00d_50c1

    xor b
    ld h, l

jr_00d_5117:
    ld d, a
    sbc d
    sbc b
    ld [hl], a
    ld h, a
    adc c
    sub a
    ld [hl], a
    ld a, b
    sbc d
    ld a, c
    sbc b
    ld [hl], l
    db $fd
    ld b, c
    cp a
    sub d
    ld e, [hl]
    push hl
    add hl, hl
    ld a, [$ed17]
    ld d, d
    cp c
    ld h, h
    ld l, l
    push de
    ld e, c
    jp hl


    ld b, a
    call c, $ad54
    sub h
    adc [hl]
    and l
    ld e, e
    ret c

    jr c, jr_00d_5117

    ld h, l
    cp l
    add l
    ld a, l
    or [hl]
    ld l, e
    ret c

    ld c, c
    cp e
    ld h, l
    xor h
    ld h, l
    ld a, h
    and l
    ld l, e
    rst $00
    adc b
    cp c
    ld h, [hl]
    bit 4, a
    adc h
    sub [hl]
    adc e
    or [hl]
    ld e, d
    cp c
    ld l, b
    ret


    ld [hl], a
    cp e
    adc c
    cp h
    and a
    ld l, d
    or a
    adc b
    xor d
    add [hl]
    sbc e
    add [hl]
    xor d
    sub [hl]
    sbc d
    sub a
    adc b
    xor c
    ld a, b
    xor d
    add a
    sbc d
    sbc b
    adc c
    and a
    ld a, c
    xor c
    ld a, b
    xor d
    add [hl]
    sbc d
    ld a, b
    ld a, e
    and a
    adc c
    add a
    ld a, c
    xor c
    add a
    xor c
    sbc b
    adc d
    and a
    adc c
    sbc c
    ld a, d
    xor c
    sbc b
    sbc c
    sbc b
    sbc c
    sub a
    ld a, e
    sbc c
    adc b
    xor c
    ld a, c
    xor b
    sbc b
    xor c
    ld a, b
    adc c
    xor b
    sbc b
    sbc b
    ld a, c
    sbc b
    ld h, a
    ld a, b
    ld l, c
    ld [hl], a
    adc c
    ld l, b
    db $76
    and [hl]
    sub a
    and h
    or h
    and [hl]
    sub l
    and [hl]
    ld a, d
    ld e, d
    sbc d
    ld a, $0e
    dec sp
    ld c, h
    inc l
    ld h, a
    sub [hl]
    sub [hl]
    or c
    pop af
    db $d3
    pop de
    ld [c], a
    and a
    add a
    sub [hl]
    ld l, h
    inc a
    ld c, d
    ld c, h
    inc l
    ld h, a
    add a
    add a
    and e
    jp nc, $c2d4

    ld [c], a
    or [hl]
    sub l
    rst $00
    ld l, e
    inc l
    inc a
    ld l, $0f
    dec e
    inc a
    inc l
    ld c, b
    sub [hl]
    add a
    sub h
    jp nc, $b4c4

    db $d3
    and a
    ld a, b
    adc b
    ld l, e
    inc a
    ld c, d
    ld e, e
    ld c, e
    ld e, b
    sub [hl]
    sub a
    and e
    jp nz, $b3d3

    or d
    push bc
    sub [hl]
    and l
    sbc c
    inc a
    ld c, d
    ld c, l
    ld e, $2b
    ld e, d
    ld c, h
    ld d, a
    sub l
    and a
    add l
    db $d3
    push bc
    sub a
    sub l
    sub a
    ld l, d
    ld l, c
    ld l, e
    inc a
    dec sp
    ld e, c
    ld c, e
    ld e, b
    sub [hl]
    and [hl]
    sub l
    add c
    db $d3
    or h
    jp nz, $a7c4

    add a
    sbc b
    ld e, d
    ld c, d
    ld e, d
    ld c, h
    inc a
    ld l, c
    ld l, d
    ld e, c
    add l
    and l
    sub l
    or h
    or l
    adc b
    add [hl]
    sub a
    ld l, d
    ld l, d
    ld e, d
    ld c, h
    inc l
    ld e, d
    ld e, d
    ld e, c
    ld h, [hl]
    and [hl]
    add [hl]
    or e
    db $d3
    call nz, $b5b3
    sub a
    add [hl]
    sub a
    ld l, d
    ld c, d
    ld l, c
    ld e, e
    ld c, d
    ld c, b
    ld a, b
    ld [hl], a
    add [hl]
    and [hl]
    sub [hl]
    and h
    or [hl]
    sub a
    add a
    adc b
    ld a, d
    ld c, d
    ld e, d
    ld c, e
    dec sp
    ld l, d
    ld l, d
    ld e, c
    db $76
    sub [hl]
    sub a
    sub h
    or l
    and [hl]
    sub l
    and l
    sub a
    ld a, b
    add a
    ld a, c
    ld l, c
    ld l, b
    ld a, c
    ld e, c
    ld l, b
    add a
    add a
    add l
    and [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    adc b
    ld a, b
    ld l, d
    ld e, d
    ld l, c
    ld l, c
    ld c, e
    ld e, c
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    sub a
    add [hl]
    sub l
    sub [hl]
    sub a
    add [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    and l
    sub [hl]
    sub l
    sub [hl]
    add a
    adc b
    add a
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    ld e, d
    ld e, c
    ld l, c
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    sub [hl]
    sub a
    ld [hl], a
    add a
    sub a
    ld l, c
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    add a
    add a
    sub [hl]
    sub a
    add [hl]
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld e, c
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    sub [hl]
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    cp e
    db $dd
    db $db
    add a
    ld h, [hl]
    adc c
    xor e
    xor c
    db $76
    ld d, l
    ld [hl], a
    sbc e
    cp l
    cp h
    cp c
    ld d, l
    ld [hl-], a
    ld [hl+], a
    inc hl
    ld b, a
    sbc h
    rst $28
    db $eb
    sub [hl]
    ld b, d
    ld [hl+], a
    inc hl
    ld d, a
    adc d
    sbc b
    ld [hl], a
    daa
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    sbc c
    ld [hl], l
    ld b, d
    ld [de], a
    inc h
    ld l, b
    cp [hl]
    rst $28
    db $db
    ld [hl], h
    ld sp, $4381
    ld d, a
    sbc c
    cp e
    xor c
    sbc b
    add a
    ld h, l
    ld d, l
    ld l, b
    xor c
    add [hl]
    ld d, h
    inc hl
    ld d, l
    ld l, c
    call $c9ed
    ld h, l
    inc hl
    inc hl
    inc h
    ld d, [hl]
    sbc e
    db $ed
    db $ec
    xor b
    ld h, l
    ld b, e
    dec [hl]
    ld sp, hl
    xor c
    xor b
    ld h, l
    ld d, l
    ld a, b
    sbc d
    cp d
    cp d
    xor c
    add l
    ld b, e
    ld [hl-], a
    inc [hl]
    ld l, b
    xor l
    adc a
    db $ed
    add [hl]
    ld b, e
    inc hl
    ld b, l
    ld h, a
    xor d
    xor c
    sub a
    adc b
    adc b
    sub a
    add a
    sbc c
    sbc c
    and a
    ld d, e
    inc sp
    ld b, [hl]
    adc c
    adc $fe
    jp hl


    ld [hl], l
    ld [hl-], a
    ld [hl-], a
    dec [hl]
    ld h, a
    sbc e
    cp h
    jp z, $8629

    ld h, h
    ld d, [hl]
    ld a, c
    xor c
    and a
    ld h, h
    ld b, h
    ld [hl], a
    sbc d
    cp l
    call c, Call_00d_75b9
    inc [hl]
    sub h
    inc [hl]
    ld h, a
    xor e
    xor $dc
    and a
    ld h, e
    ld b, e
    ld b, l
    ld a, b
    sbc d
    sbc c
    db $76
    ld h, a
    ld a, c
    ld l, d
    sbc c
    sbc c
    xor c
    db $76
    ld b, h
    inc sp
    ld b, l
    ld a, b
    cp l
    rst $38
    db $db
    db $76
    ld b, e
    inc sp
    ld b, l
    ret c

    sbc d
    xor d
    sbc c
    adc b
    adc b
    add [hl]
    ld d, a
    adc b
    xor c
    add [hl]
    ld h, e
    dec [hl]
    ld d, a
    adc c
    call $b99e
    ld [hl], h
    ld b, e
    inc h
    ld b, l
    ld h, a
    xor d
    cp h
    jp z, Jump_00d_76a9

    ld d, h
    ld d, [hl]
    ld a, c
    sbc d
    sub a
    ld h, l
    ld d, [hl]
    ld a, b
    sbc d
    xor e
    xor d
    xor b
    ld [hl], l
    ld b, h
    ld b, e
    ld d, [hl]
    ld l, b
    xor e
    db $dd
    db $db
    scf
    ld d, h
    ld b, h
    ld b, l
    add a
    sbc c
    xor b
    ld a, b
    ld [hl], a
    adc b
    adc c
    adc b
    adc c
    xor c
    db $76
    ld h, h
    ld h, h
    ld d, a
    adc b
    cp e
    call c, $85cb
    ld b, h
    dec [hl]
    ld b, [hl]
    ld l, b
    sbc d
    sbc c
    xor b
    sbc c
    adc b
    db $76
    ld h, [hl]
    adc b
    sbc d
    add a
    ld d, l
    ld d, [hl]
    ld h, a
    adc c
    xor d
    cp e
    cp b
    ld [hl], l
    ld b, l
    ld b, l
    ld d, a
    sbc b
    sbc c
    xor d
    xor c
    sbc c
    db $76
    ld d, l
    ld b, [hl]
    ld a, b
    xor b
    sub a
    db $76
    ld [hl], a
    adc b
    adc c
    adc c
    sbc c
    sbc b
    add l
    ld d, l
    ld b, l
    ld h, a
    adc c
    sbc b
    sbc d
    xor c
    sub a
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld a, b
    adc c
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    add [hl]
    ld h, a
    ld d, a
    ld [hl], a
    sbc b
    adc b
    sbc c
    sbc c
    add a
    ld h, [hl]
    ld d, [hl]
    ld h, a
    adc b
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    adc b
    add a
    add a
    adc b
    sub a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    add [hl]
    sub a
    adc b
    ld e, d
    ld l, b
    sub l
    or h
    sbc c
    ld c, d
    ld e, c
    add [hl]
    sub l
    sbc b
    ld l, b
    ld [hl], a
    and l
    and l
    reti


    dec a
    dec hl
    ld [hl], l
    jp nz, Jump_00d_6cd5

    ld a, [hl-]
    db $76
    and l
    sbc b
    ld l, c
    ld l, d
    ld e, c
    db $76
    or d
    add l
    adc d
    inc a
    ld c, c
    and d
    call nc, $3b7c
    ld h, a
    and e
    call nz, Call_00d_4a89
    ld l, b
    ld a, b
    add [hl]
    xor b
    ld a, d
    dec sp
    ld [hl], a
    and h
    and l
    adc c
    ld c, h
    ld e, b
    add [hl]
    sub [hl]
    add [hl]
    adc b
    ld a, c
    ld l, c
    add l
    ld b, l
    and [hl]
    sub [hl]
    sub [hl]
    sub a
    ld a, d
    ld c, e
    ld e, c
    sub h
    or [hl]
    ld a, c
    ld l, c
    db $76
    and l
    and a
    ld l, d
    ld a, [hl+]
    ld [hl], a
    and h
    or [hl]
    ld a, c
    ld c, l
    add hl, hl
    sub e
    call nz, $3d99
    add hl, sp
    and e
    pop hl
    rst $00
    ld e, l
    inc l
    ld l, b
    sub e
    call nc, Call_00d_4b99
    ld e, b
    sub [hl]
    sub [hl]
    sbc b
    ld e, e
    ld c, b
    sub e
    db $d3
    adc d
    ld l, $8a
    sub h
    call nz, Call_00d_6a99
    ld e, c
    add a
    and h
    and a
    ld e, e
    ld e, c
    add e
    pop af
    rst $00
    ld a, $2b
    call nc, $a9d2
    ld a, $2a
    sub e
    jp nc, $3da9

    ld a, [hl+]
    sub d
    pop af
    sbc c
    ld a, $39
    sub e
    or e
    sbc c
    dec a
    dec sp
    ld [hl], h
    jp nc, Jump_00d_5bb8

    ld c, c
    add l
    or e
    sub a
    ld l, d
    ld c, d
    ld [hl], a
    or e
    add $79
    ld c, e
    ld e, b
    add [hl]
    sub [hl]
    sub a
    ld a, c
    ld e, d
    ld e, d
    db $76
    and h
    sbc b
    ld e, e
    add hl, sp
    sub h
    sub e
    sbc b
    ld e, h
    inc l
    ld d, a
    and h
    and [hl]
    adc c
    ld e, d
    ld l, c
    ld [hl], a
    sub h
    or [hl]
    adc c
    ld e, d
    ld l, b
    and l
    or h
    and a
    ld l, e
    dec sp
    ld c, c
    and d
    call nz, Call_000_3b8b
    ld h, a
    and [hl]
    sub a
    ld a, d
    ld c, e
    ld h, [hl]
    ld [hl], l
    and [hl]
    adc b
    ld l, d
    ld e, c
    db $76
    and l
    adc c
    ld l, c
    add l
    and l
    ld a, d
    ld e, c
    ld a, b
    add [hl]
    sub a
    ld c, b
    ld a, b
    ld [hl], a
    and l
    and a
    ld a, c
    ld c, d
    ld e, c
    add [hl]
    sub l
    sbc b
    ld l, c
    ld [hl], a
    sub l
    and [hl]
    ld a, d
    ld a, d
    ld c, d
    ld h, a
    and l
    and h
    or h
    adc c
    ld c, h
    ld c, b
    sub h
    or l
    ld a, d
    ld c, e
    ld h, a
    or d
    add $9a
    ld c, e
    ld h, a
    and h
    and [hl]
    adc b
    ld a, c
    ld e, d
    ld h, a
    and h
    and [hl]
    ld a, c
    ld e, d
    ld e, c
    db $76
    sub l
    add a
    adc b
    ld e, d
    ld l, b
    add [hl]
    adc c
    ld e, c
    ld [hl], a
    ld a, b
    add a
    add [hl]
    sub [hl]
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    ld h, [hl]
    sub a
    add a
    sub [hl]
    and [hl]
    sub a
    ld a, d
    ld c, c
    ld [hl], l
    or h
    sbc b
    ld l, e
    ld c, d
    ld h, a
    and h
    or [hl]
    ld l, d
    ld e, c
    db $76
    and l
    and a
    ld l, e
    ld c, e
    ld h, a
    sub e
    call nz, $3c9a
    ld c, d
    db $76
    and h
    and a
    xor c
    ld e, e
    ld e, c
    add [hl]
    sub a
    add a
    adc c
    ld e, c
    db $76
    sub a
    add a
    add a
    adc b
    ld e, d
    ld e, d
    db $76
    ld b, l
    and h
    xor b
    ld e, d
    ld c, e
    ld e, b
    sub l
    jp nz, Jump_00d_6bb7

    dec a
    ld c, b
    and d
    db $e4
    adc c
    dec a
    ld l, d
    ld [hl], l
    jp nz, $8ac5

    dec l
    ld c, b
    or e
    jp Jump_00d_4b99


    ld d, a
    and l
    and [hl]
    sbc b
    ld e, c
    ld l, d
    ld e, d
    ld h, [hl]
    or e
    and a
    ld l, d
    ld c, d
    db $76
    or h
    sub a
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    sub [hl]
    sub a
    adc d
    ld e, d
    ld l, b
    add a
    and l
    adc c
    ld e, e
    ld c, d
    db $76
    or e
    and a
    ld l, d
    ld l, c
    ld l, b
    ld [hl], a
    sub a
    db $76
    sub a
    ld a, c
    ld l, b
    ld [hl], a
    sub [hl]
    add [hl]
    sub [hl]
    adc b
    ld l, d
    ld e, c
    ld [hl], a
    sub l
    and [hl]
    ld a, c
    ld l, c
    ld h, a
    add [hl]
    sub [hl]
    sub [hl]
    sub a
    ld a, c
    ld l, d
    ld h, a
    sub [hl]
    sub a
    ld a, b
    ld l, d
    ld l, b
    sub l
    and [hl]
    adc b
    ld e, d
    ld c, d
    ld [hl], a
    add a
    add [hl]
    adc c
    ld c, e
    ld h, a
    and h
    call nz, $3d99
    ld c, c
    and e
    db $d3
    and a
    srl d
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    and h
    or h
    sbc b
    ld c, h
    ld c, c
    ld [hl], l
    jp nc, Jump_00d_7aa6

    inc a
    ld c, d
    db $76
    or e
    call nz, Call_00d_5b89
    ld c, c
    db $76
    or e
    push bc
    ld a, e
    inc a
    ld e, b
    add e
    push bc
    sbc b
    ld l, d
    ld c, d
    ld h, a
    and h
    or h
    and a
    ld l, d
    ld c, d
    db $76
    and l
    sub [hl]
    ld l, d
    ld e, d
    and [hl]
    and [hl]
    adc b
    ld a, c
    ld h, a
    add a
    ld a, b
    ld a, b
    ld l, b
    add [hl]
    sub [hl]
    adc c
    ld e, d
    ld [hl], a
    add [hl]
    and l
    and [hl]
    ld a, c
    ld e, e
    ld c, b
    add [hl]
    and h
    or [hl]
    ld a, c
    ld l, d
    ld e, c
    add a
    sub [hl]
    adc b
    ld a, c
    ld h, a
    sub l
    sub [hl]
    adc c
    ld e, e
    ld e, d
    add l
    and [hl]
    sub a
    ld a, d
    ld e, d
    ld e, b
    and h
    or l
    and a
    ld l, c
    ld e, c
    add [hl]
    and [hl]
    sbc b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld e, d
    ld l, b
    add l
    or h
    and [hl]
    ld a, d
    inc a
    ld e, b
    add e
    db $d3
    sbc b
    ld e, e
    ld e, d
    db $76
    and h
    and a
    ld a, d
    ld c, d
    ld l, b
    sub l
    and [hl]
    ld a, c
    ld e, e
    ld e, c
    ld h, [hl]
    and e
    or [hl]
    ld a, c
    ld e, d
    ld e, d
    ld [hl], l
    or h
    and a
    ld a, d
    ld c, e
    ld l, b
    sub l
    and [hl]
    adc b
    ld a, c
    ld l, b
    db $76
    sub [hl]
    sub a
    ld a, c
    ld e, d
    ld e, c
    ld [hl], a
    and l
    or [hl]
    adc c
    ld e, e
    ld e, b
    add [hl]
    and [hl]
    sbc b
    ld a, c
    ld l, b
    ld [hl], a
    add [hl]
    sub [hl]
    adc b
    ld l, d
    ld l, b
    add [hl]
    and [hl]
    sbc b
    ld l, c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld l, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    ld h, a
    sub [hl]
    sub a
    add a
    adc b
    ld a, c
    ld l, c
    ld a, b
    sub [hl]
    sub a
    ld a, c
    ld l, c
    ld a, b
    add a
    add a
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    add a
    sub [hl]
    ld a, c
    ld l, b
    ld [hl], a
    add a
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    sub [hl]
    add a
    adc b
    ld l, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld h, a
    add a
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    sub l
    and [hl]
    adc b
    ld l, d
    ld e, b
    add a
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld l, b
    add [hl]
    and [hl]
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    add a
    sub [hl]
    add a
    ld a, c
    ld a, c
    ld a, b
    add [hl]
    sub a
    adc b
    ld e, c
    ld [hl], a
    sub [hl]
    and l
    sbc b
    ld l, d
    ld e, b
    add a
    sub a
    add a
    add a
    sbc b
    ld [hl], a
    add a
    add [hl]
    sub a
    adc b
    ld l, c
    ld a, b
    sub l
    sub [hl]
    adc b
    ld l, d
    ld e, d
    ld h, a
    and h
    and l
    xor b
    ld e, e
    ld c, d
    ld h, a
    and l
    and [hl]
    ld a, c
    ld l, d
    ld e, b
    sub l
    and l
    sbc b
    ld l, d
    ld l, b
    ld [hl], a
    sub [hl]
    db $76
    adc b
    ld l, d
    ld e, c
    ld [hl], a
    sub l
    and [hl]
    ld a, c
    ld e, e
    ld e, c
    ld [hl], a
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    sub a
    ld a, b
    add a
    add a
    add a
    adc b
    ld l, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    add a
    ld a, c
    ld l, c
    ld h, a
    add a
    sub [hl]
    sub a
    ld l, c
    ld l, b
    ld a, b
    add [hl]
    sub [hl]
    sub a
    ld a, c
    ld l, c
    ld l, b
    sub l
    and [hl]
    sbc b
    adc d
    ld e, c
    add a
    add a
    add [hl]
    sub a
    ld a, c
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    sub [hl]
    sub l
    and [hl]
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    ld h, a
    sub [hl]
    add a
    sub a
    ld a, c
    ld e, d
    ld e, d
    ld e, e
    ld e, b
    adc b
    ld a, d
    ld l, b
    add [hl]
    ld a, e
    ld h, a
    sub a
    adc b
    and a
    ld l, b
    sub a
    ld a, c
    ld l, e
    dec sp
    ld e, c
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    or a
    add a
    add a
    adc b
    ld [hl], a
    sub l
    sub a
    ld l, d
    ld e, e
    dec sp
    db $76
    and h
    call nz, $a5b4
    or e
    add h
    or h
    or l
    adc c
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    add a
    ld h, [hl]
    add a
    sub a
    ld a, c
    ld e, e
    ld e, d
    ld e, c
    ld a, c
    ld l, b
    ld l, c
    ld e, e
    dec sp
    ld l, b
    ld l, d
    ld e, c
    ld a, b
    adc d
    ld e, c
    add a
    add [hl]
    sub [hl]
    sub [hl]
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    xor b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    adc c
    ld l, c
    ld a, b
    ld l, d
    ld [hl], a
    add [hl]
    sub [hl]
    ld a, c
    ld l, c
    ld h, a
    adc b
    ld c, h
    dec sp
    ld l, c
    ld [hl], a
    add a
    sub l
    and l
    or e
    call nc, $87a6
    db $76
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    sub a
    ld a, c
    add [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld a, c
    adc d
    ld l, b
    add [hl]
    sub a
    add a
    add [hl]
    or h
    and a
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
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
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, d
    ld l, c
    ld h, a
    sub [hl]
    add [hl]
    sub [hl]
    sub h
    and [hl]
    and e
    pop de
    db $d3
    and [hl]
    add a
    add [hl]
    sub a
    ld l, d
    ld e, d
    dec a
    ld c, d
    ld e, c
    ld l, b
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld a, b
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    sub [hl]
    sub l
    sub a
    add a
    ld a, d
    rra
    ld e, $1e
    ld e, $1d
    dec sp
    ld e, b
    add a
    adc b
    sub h
    and [hl]
    sub a
    db $76
    or l
    sub [hl]
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld e, b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld e, d
    adc c
    add [hl]
    and l
    and l
    sbc b
    ld e, e
    ld c, e
    ld c, e
    ld c, d
    ld e, h
    add hl, sp
    sub [hl]
    sub h
    db $d3
    or l
    sub a
    add a
    sub l
    and [hl]
    and [hl]
    sub [hl]
    sub a
    add [hl]
    sub l
    and [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add [hl]
    sub a
    add a
    add a
    add [hl]
    add a
    add a
    add a
    adc b
    ld l, d
    ld e, c
    add a
    and [hl]
    sub l
    jp $c4b4


    sbc b
    db $76
    and l
    sub a
    ld a, d
    ld c, e
    ld h, a
    sub l
    and l
    or e
    call nz, $a476
    or h
    or [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    add [hl]
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    and a
    adc b
    add a
    sub [hl]
    sub l
    and l
    and l
    and l
    and l
    and [hl]
    adc b
    ld l, d
    ld e, b
    ld a, d
    ld h, [hl]
    or e
    adc b
    ld e, c
    add l
    or l
    sub l
    jp nz, $98b5

    ld e, c
    ld a, b
    ld l, c
    add a
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    add a
    sub [hl]
    sub a
    add a
    add [hl]
    adc b
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
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
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
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    cp b
    ld l, c
    ld [hl], a
    ld a, c
    ld a, c
    ld l, b
    sub [hl]
    and l
    and l
    and a
    ld a, c
    ld c, h
    ld e, d
    ld h, a
    and l
    or h
    ld [hl], l
    adc b
    ld h, a
    add [hl]
    sbc b
    ld e, c
    ld l, d
    ld l, b
    ld [hl], a
    adc c
    ld e, d
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    adc b
    add [hl]
    sub a
    adc b
    rst $10
    sub [hl]
    add a
    adc b
    add [hl]
    adc b
    add [hl]
    and h
    sub a
    sub [hl]
    add [hl]
    or e
    jp Jump_00d_78a7


    add h
    add c
    or l
    add a
    adc b
    ld a, b
    ld l, d
    ld l, c
    ld e, d
    ld l, c
    ld a, b
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
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    add [hl]
    sub a
    ld a, b
    add a
    ld a, b
    ld e, b
    ld a, b
    ld a, c
    dec sp
    ld e, c
    ld [hl], a
    add a
    add [hl]
    and l

Call_00d_5b89:
    sub a
    ld l, b
    ld l, e
    ld d, a
    and l
    and l
    adc b
    ld a, e
    dec sp
    ld c, d
    ld c, d
    ld a, b
    add a
    adc b
    ld a, b
    add a

jr_00d_5b99:
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
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
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b

Jump_00d_5bb8:
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld h, a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld l, d
    ld l, c
    ld l, d
    ld e, c
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    ld [hl], a
    sub l
    or e
    jp nc, $d4f1

    or h
    sub a
    add a
    add l
    sbc b
    ld a, c
    ld e, c
    ld l, c
    adc c
    ld l, b
    add [hl]
    add a
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
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
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    jr z, jr_00d_5b99

    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    ld l, d
    ld e, c
    ld a, b
    ld l, e
    adc a
    inc e
    ld e, h
    inc a
    inc l
    ld c, c
    add [hl]
    sub a
    ld l, c
    ld [hl], a
    ld a, c
    ld e, c
    ld a, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
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
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
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
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld c, c
    ld l, b
    add [hl]
    sub l
    and l
    and h
    or h
    or l
    or h
    and [hl]
    sbc b
    ld e, h
    dec sp
    ld e, c
    ld a, b
    ld l, e
    adc d
    ld e, d
    ld a, $1c
    ld c, d
    ld c, c
    add [hl]
    sub l
    and l
    sub a
    adc b
    ld l, d
    ld e, c
    ld l, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
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
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, c
    ld [hl], a
    adc b
    ld [$7868], sp
    sub [hl]
    and h
    or l
    and a
    ld a, c
    ld e, c
    ld l, d
    ld e, b
    ld a, c
    ld l, e
    ld a, $2c
    rra
    adc [hl]
    ld e, $0f
    add hl, sp
    sub l
    and [hl]
    sub [hl]
    sub l
    or l
    and [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    add [hl]
    db $76
    and h
    and l
    sub a
    ld a, c
    ld e, c
    add a
    sub [hl]
    adc c
    ld [hl], a
    ld l, e
    inc a
    ld c, h
    ld c, b
    add [hl]
    adc b
    adc c
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld e, d
    ld e, c
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add [hl]
    and h
    call nz, $88a6
    ld l, c
    ld l, e
    ld d, a
    ld a, c
    add [hl]
    sub a
    add a
    ld [hl], a
    sub [hl]
    add [hl]
    sub [hl]
    sub a
    add [hl]
    sub a
    sub a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
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
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub l
    and [hl]
    add a
    sub a
    ld a, d
    ld c, e
    ld c, d
    ld h, a
    and h
    adc c
    ld e, c
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    add [hl]
    add a
    sub [hl]
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc c
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
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
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    sub [hl]
    sub l
    or l
    sub l
    sbc b
    ld l, c
    ld c, d
    ld l, d
    ld c, h
    dec sp
    dec a
    ld l, $1d
    dec sp
    db $76
    db $76
    adc b
    ld a, b
    ld l, d
    ld c, e
    ld e, c
    ld l, c
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld l, c
    ld l, b
    adc b
    ld l, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld a, b
    ld a, b
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
    add a
    ld [hl], a
    adc b
    ld [hl], a
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
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld l, b
    ld l, c
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    add [hl]
    sub [hl]
    adc b
    ld l, d
    dec a
    dec sp
    ld c, e
    ld c, d
    ld e, b
    add a
    adc b
    add a
    sub [hl]
    sub [hl]
    sub a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
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
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld d, a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    sub l
    and l
    and [hl]
    ld a, c
    ld l, c
    sbc c
    ld a, c
    ld l, c
    ld l, d
    ld c, d
    ld e, b
    add a
    add a
    ld a, c
    ld e, h
    dec sp
    ld e, d
    ld l, b
    ld e, h
    ld c, c
    db $76
    add [hl]
    and l
    sub a
    add a
    add a
    add a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
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
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    add [hl]
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add a
    sub a
    sub [hl]
    ld [hl], a
    add a
    sub l
    sub a
    sub l
    and [hl]
    adc b
    ld l, c
    ld e, d
    ld c, e
    ld c, e
    dec a
    dec hl
    ld e, c
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    add a
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
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld c, d
    ld e, d
    ld l, b
    ld a, b
    sub a
    ld l, c
    ld e, e
    ld c, d
    db $76
    and l
    ld [hl], a
    sub e
    pop de
    push de
    ld l, d
    ld c, h
    ld e, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    adc c
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
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
    add a
    adc b
    add a
    ld a, b
    and a
    adc b
    ld a, b
    ld [hl], a
    ld l, d
    ld e, c
    ld l, d
    ld h, a
    ld [hl], a
    sub [hl]
    add a
    sub [hl]
    sub l
    or l
    and l
    or h
    db $76
    sub [hl]
    add a
    add l
    or e
    and a
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
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
    add a
    add a
    ld [hl], a
    ld a, c
    ld l, c
    ld l, c
    ld h, a
    add a
    adc b
    ld l, c
    ld a, b
    add [hl]
    add a
    sub [hl]
    ld a, d
    ld c, h
    dec sp
    ld c, h
    dec sp
    ld c, d
    ld a, b
    ld l, c
    ld a, b
    sub l
    sub [hl]
    and [hl]
    add [hl]
    add [hl]
    sub [hl]
    add a
    ld a, b
    add [hl]
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    add a
    add a
    add l
    and [hl]
    sub [hl]
    adc b
    ld a, c
    ld l, b
    add [hl]
    and l
    and l
    and h
    or l
    or h
    or h
    or l
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld c, e
    ld e, b
    ld a, c
    adc b
    add a
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    cp b
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld l, c
    ld e, e
    ld e, d
    ld e, c
    add [hl]
    sub [hl]
    ld [hl], e
    and [hl]
    adc b
    ld l, d
    ld e, b
    add [hl]
    sub [hl]
    sub [hl]
    sub a
    sub [hl]
    ld a, c
    ld a, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld [hl], a
    adc b
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
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    sub [hl]
    adc b
    adc b
    add a
    sub a
    ld a, b
    ld l, d
    ld c, e
    ld e, c
    ld a, b
    ld l, c
    ld a, d
    dec a
    inc l
    ld c, d
    ld e, b
    sub l
    sub [hl]
    and a
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld a, b
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld b, a
    adc b
    ld [hl], a
    add a
    add [hl]
    adc b
    ld l, c
    ld l, c
    ld a, b
    ld c, h
    ld e, c
    ld [hl], a
    ld a, d
    ld c, e
    ld e, d
    ld e, d
    ld a, e
    ld c, e
    ld e, h
    ld a, [hl-]
    ld l, b
    adc b
    ld a, b
    sub [hl]
    sub [hl]
    sub l
    sub [hl]
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    add [hl]
    add a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld l, d
    ld [hl], a
    add a
    add a
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    and l
    and [hl]
    and l
    sub a
    add [hl]
    and h
    and a
    adc b
    ld l, c
    ld [hl], a
    sub [hl]
    sub [hl]
    add a
    add a
    sub [hl]
    sub a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    ld l, c
    ld a, b
    ld l, d
    ld l, b
    ld a, b
    add a
    sub [hl]
    adc b
    ld l, d
    ld e, b
    adc b
    ld a, c
    ld l, b
    add a
    add a
    add a
    sub [hl]
    add a
    add a
    sub a
    add a
    add [hl]
    sub [hl]
    add a
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
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
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld h, a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    ld e, d
    ld e, c
    ld l, d
    ld e, c
    ld a, b
    adc c
    ld e, h
    inc l
    dec a
    dec sp
    ld e, d
    ld a, c
    ld l, b
    add [hl]
    adc c
    ld e, d
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
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
    ld a, b
    adc b
    add a
    add a
    add a
    ld a, b
    ld d, a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld h, a
    sub a
    ld a, b
    ld l, d
    ld e, c
    ld e, d
    ld l, c
    ld l, c
    ld l, b
    ld l, c
    adc e
    inc a
    inc a
    ld c, e
    ld c, e
    ld e, d
    db $76
    add [hl]
    and [hl]
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
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
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, c
    ld e, d
    ld l, b
    ld a, b
    add [hl]
    and h
    jp $85b5


    and a
    ld a, c
    db $76
    and h
    or h
    and a
    add a
    add a
    ld a, b
    add a
    add a
    sub a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    sbc b
    add a
    adc b
    ld l, b
    sub [hl]
    add a
    ld l, d
    ld c, h
    ld c, c
    ld [hl], a
    sub [hl]
    adc b
    add [hl]
    or h
    and a
    ld [hl], a
    add l
    or l
    sub a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add [hl]
    and l
    sub a
    and a
    ld a, b
    ld a, b
    db $76
    and l
    sub a
    sub a
    adc b
    ld [hl], a
    ld l, d
    ld a, b
    ld l, b
    ld a, b
    db $76
    and [hl]
    sub l
    db $76
    add a
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    scf
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    sub a
    add [hl]
    sub a
    ld l, c
    ld a, c
    ld l, c
    ld l, d
    ld c, h
    dec l
    adc e
    dec a
    rra
    ld c, $49
    ld l, d
    ld e, c
    ld a, b
    add a
    sub [hl]
    add a
    adc b
    ld [hl], a
    add a
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld a, c
    ld l, b
    ld l, c
    ld l, d
    ld l, c
    db $76
    and h
    or h
    or h
    add a
    ld a, c
    ld c, h
    dec sp
    ld e, c
    ld [hl], a
    ld a, c
    ld c, h
    inc l
    ld c, d
    ld e, c
    ld l, c
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add [hl]
    ret z

    add a
    adc b
    ld a, b
    ld a, b
    db $76
    and [hl]
    sub l
    or h
    or d
    db $d3
    or [hl]
    add a
    add [hl]
    sub l
    or h
    ld [hl], e
    call nz, $b6b5
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
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
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
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld l, b
    adc b
    ld l, b
    ld [hl], a
    ld h, a
    add a
    adc b
    ld [hl], a
    add a
    sub l
    and [hl]
    and l
    and a
    ld a, b
    add a
    ld a, c
    ld e, d
    ld c, h
    inc a
    ld c, c
    adc d
    ld c, e
    ld e, c
    ld l, d
    ld e, d
    ld l, c
    ld l, c
    ld l, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
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
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, d
    ld c, e
    ld e, e
    ld e, c
    ld l, c
    ld l, c
    ld l, c
    ld h, a
    sub l
    sub a
    adc b
    ld a, b
    add a
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld e, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld l, c
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    ld c, e
    sbc c
    add [hl]
    and [hl]
    sub [hl]
    add a
    sub l
    or h
    sub a
    and h
    or l
    and h
    call nz, $a4b5
    or e
    or a
    db $76
    add a
    ld [hl], a
    sub [hl]
    sub a
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
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
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld l, b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld e, c
    ld e, e
    ld e, c
    ld a, b
    ld a, b
    ld a, e
    ld c, e
    ld e, c
    ld e, e
    ld c, e
    ld c, e
    dec a
    inc l
    ld l, c
    ld h, a
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sbc b
    ld l, c
    add [hl]
    sub [hl]
    add a
    sub l
    and [hl]
    and l
    and l
    sub [hl]
    ld a, c
    ld l, c
    ld e, d
    ld a, b
    ld l, c
    add a
    db $76
    add [hl]
    sub [hl]
    sub a
    adc b
    ld a, c
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld e, c
    ld l, c
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    sub a
    add a
    add a
    add a
    add [hl]
    ld h, a
    ld a, c
    ld l, c
    ld a, c
    ld l, b
    add [hl]
    and h
    and h
    or [hl]
    adc b
    ld [hl], a
    add [hl]
    sub a
    sub a
    add a
    adc b
    adc b
    ld l, c
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld e, c
    ld a, b
    ld l, b
    ld [hl], a
    add [hl]
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
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
    sub [hl]
    ld a, b
    adc b
    add [hl]
    adc b
    ld e, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    db $76
    or d
    add $85
    and [hl]
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld e, c
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
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
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
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
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld b, a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add [hl]
    sub [hl]
    sub l
    adc c
    ld l, b
    ld a, b
    ld a, b
    ld l, d
    sbc e
    ld c, e
    ld h, a
    add a
    add [hl]
    and l
    and l
    adc c
    add l
    or e
    ldh [$f2], a
    or l
    sub a
    sub a
    add a
    ld [hl], a
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
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
    adc b
    ld [hl], a
    adc b
    ld a, b
    or a
    ld a, b
    ld a, b
    ld l, b
    sub a
    add a
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld e, d
    ld l, b
    ld a, c
    db $76
    sub l
    and h
    sub l
    adc c
    ld e, d
    ld h, [hl]
    and h
    jp $a3c4


    call nc, $b4b4
    or h
    or l
    and l
    and [hl]
    sub [hl]
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
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
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, c
    ld l, b
    adc b
    ld a, b
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, c
    ld l, b
    adc c
    db $76
    sub l
    xor b
    dec sp
    ld [hl], a
    add a
    adc c
    ld l, c
    ld l, c
    ld l, c
    ld a, c
    ld l, c
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, d
    ld c, d
    ld l, b
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld a, c
    ld l, b
    sub [hl]
    adc b
    ld l, c
    ld l, c
    ld e, c
    ld a, e
    inc a
    ld e, b
    ld [hl], a
    sub [hl]
    sub a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
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
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
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
    add a
    adc b
    adc b
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
    ld [hl], a
    sub [hl]
    sub [hl]
    and h
    or [hl]
    sub [hl]
    ld a, d
    ld c, e
    dec sp
    ld e, b
    ld a, c
    ld c, h
    inc a
    dec l
    dec l
    inc l
    ld c, d
    ld e, d
    ld l, c
    ld e, e
    ld e, c
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld l, b
    add a
    adc b
    add a
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
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    add [hl]
    sub [hl]
    sub a
    add a
    ld [hl], l
    sub a
    adc b
    ld l, d
    ld c, h
    ld c, d
    ld h, a
    and e
    db $d3
    or l
    sub [hl]
    add [hl]
    sub h
    or [hl]
    add a
    ld a, b
    adc b
    add a
    ld a, b
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
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    cp b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    sub [hl]
    and e
    jp $b5c4


    sub a
    add a
    sub [hl]
    sub l
    sub l
    adc b
    db $76
    and l
    sbc c
    ld e, e
    ld c, c
    add l
    or h
    sbc b
    add [hl]
    sub [hl]
    add a
    sub l
    and l
    and l
    ld [hl], l
    and a
    add a
    sub a
    add [hl]
    sub a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    ld a, c
    ld e, c
    ld l, b
    sub [hl]
    sbc b
    sub l
    and [hl]
    ld a, b
    ld a, c
    ld a, c
    db $76
    or d
    call nz, $c5a4
    and l
    add a
    add a
    add a
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld [hl], a
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
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, c
    ld [hl], a
    ld e, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld e, e
    ld c, d
    ld c, e
    ld e, d
    ld l, c
    adc e
    ld c, e
    ld e, d
    ld a, b
    ld l, c
    ld l, b
    ld l, c
    ld a, b
    add [hl]
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
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
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld e, b
    ld l, c
    ld l, c
    ld c, e
    ld e, c
    ld c, e
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld e, b
    ld a, b
    ld l, d
    ld l, b
    ld e, e
    ld c, d
    adc c
    add a
    add [hl]
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
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
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, c
    ld l, d
    ld l, c
    ld l, b
    ld [hl], a
    ld a, b
    ld l, c
    add l
    and h
    ret nc

    pop af
    db $e4
    sub a
    db $76
    add a
    add a
    add a
    adc b
    ld a, b
    adc c
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
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
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    and a
    ld [hl], a
    ld a, b
    add a
    add a
    add [hl]
    sub l
    or e
    or l
    and [hl]
    add a
    ld a, c
    ld h, a
    and l
    and l
    and l
    ld h, h
    or l
    or h
    and a
    ld [hl], a
    sub l
    sub [hl]
    or e
    and a
    add [hl]
    sub [hl]
    add a
    sub a
    add a
    ld a, b
    ld a, c
    adc b
    ld a, b
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld l, c
    ld l, b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    ld l, d
    ld e, d
    ld l, c
    ld e, d
    ld [hl], a
    add a
    ld l, c
    ld e, d
    ld e, b
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    xor b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add [hl]
    sub [hl]
    and [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub l
    add a
    add a
    sub [hl]
    add a
    sub [hl]
    add a
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld l, b
    ld l, b
    ld a, b
    adc b
    ld l, b
    add a
    add [hl]
    sub a
    add [hl]
    and h
    and a
    ld a, b
    ld a, b
    db $76
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    sub a
    add [hl]
    adc b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld a, c

Call_00d_6a99:
    ld a, b
    add a
    add l
    and a
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld l, d
    ld e, d
    ld c, e
    ld c, d
    ld e, d
    ld e, d
    ld l, c
    ld l, d
    ld c, c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld e, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    sbc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    sub [hl]
    ld [hl], h
    or h
    and a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, c
    ld a, c
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    ld a, c
    ld l, c
    ld e, d
    ld [hl], a
    and l
    or h
    or [hl]
    sub [hl]
    adc b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub a
    ld l, b
    add [hl]
    and a
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    jr jr_00d_6be9

    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    sub a
    sub [hl]
    ld a, d
    ld e, e
    ld c, h
    rra
    ld a, [hl]
    dec e
    ld e, c
    ld l, c
    ld l, c
    ld e, d
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld l, d
    ld e, c
    ld l, c
    ld c, d
    adc b
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    add a

Jump_00d_6bb7:
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
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    ld l, c
    ld l, c
    ld [hl], a
    db $76
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    add a
    ld a, b
    ld a, b

jr_00d_6be9:
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    sbc b
    db $76
    sub [hl]
    sub [hl]
    sub l
    and [hl]
    sub [hl]
    add a
    ld l, h
    ld h, [hl]
    and a
    ld [hl], a
    sub [hl]
    and h
    and [hl]
    sub [hl]
    ld [hl], l
    and [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
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
    ld l, b
    sub a
    adc b
    ld a, c
    ld l, b
    add [hl]
    sub [hl]
    sub a
    ld a, c
    add l
    or l
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    add [hl]
    add a
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    add a
    add [hl]
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    adc c
    ld l, d
    ld e, d
    ld h, [hl]
    sub l
    or h
    or e
    call nz, $a6a5
    add [hl]
    add a
    add [hl]
    and l
    sub [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    adc b
    ld l, d
    ld e, d
    ld l, b
    adc b
    ld a, b
    ld a, b
    adc b
    add [hl]
    sub a
    ld a, b
    add l
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    add [hl]
    sub a
    adc b
    ld a, b
    add [hl]
    add a
    ld [hl], a
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
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    ld e, d
    ld l, c
    adc b
    add [hl]
    and e
    call nz, $a4a5
    and l
    and l
    sub [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub a
    add [hl]
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b

Jump_00d_6cd5:
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    rla
    adc b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld l, d
    ld e, h
    rra
    ld c, $2e
    ld a, e
    ld e, d
    ld l, c
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    ld a, b
    add a
    ld a, c
    ld l, d
    ld c, d
    ld c, e
    ld l, c
    ld e, d
    ld e, d
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, c
    ld l, d
    ld c, e
    ld c, e
    ld c, c
    ld l, c
    ld l, b
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    sub l
    and [hl]
    adc b
    ld l, c
    ld [hl], a
    and h
    sub a
    ld a, b
    ld l, c
    ld l, d
    ld l, c
    ld l, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, d
    ld l, c
    ld e, e
    ld h, a
    sub [hl]
    adc c
    ld l, b
    add a
    ld a, d
    ld e, c
    ld a, c
    ld l, c
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
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
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    sub a
    add a
    adc b
    add a
    add a
    and h
    and l
    and [hl]
    adc b
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
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
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub a
    ld a, c
    ld l, b
    adc b
    ld a, c
    ld l, d
    ld l, c
    add h
    and [hl]
    adc b
    add a
    add a
    add [hl]
    sub [hl]
    sub a
    add [hl]
    sub [hl]
    add a
    add [hl]
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld l, d
    ld l, c
    ld l, b
    ld a, c
    ld l, c
    ld h, a
    add a
    adc c
    ld h, a
    sub a
    ld [hl], a
    sub [hl]
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    add a
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
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    add a
    add [hl]
    sub [hl]
    sub a
    ld a, c
    ld e, d
    ld l, c
    ld c, h
    ld c, d
    ld e, c
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    ld a, c
    ld e, d
    ld e, c
    ld l, b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld l, b
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld a, b
    db $76
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld e, d
    ld e, c
    add a
    ld a, d
    ld c, d
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    sub [hl]
    adc b
    ld a, c
    add a
    add [hl]
    sub a
    ld a, b
    ld a, c
    ld c, l
    dec hl
    ld e, d
    ld e, c
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add [hl]
    sub [hl]
    adc b
    ld l, b
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    adc b
    ld l, c
    ld h, a
    and a
    ld l, b
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    adc b
    add a
    sub [hl]
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    sub [hl]
    and l
    and [hl]
    adc b
    ld [hl], l
    and h
    pop hl
    call nz, Call_00d_79b6
    ld l, b
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    adc b
    sbc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    sub l
    add a
    and [hl]
    sub l
    and [hl]
    and l
    and [hl]
    adc b
    ld l, d
    ld e, b
    add a
    add a
    ld [hl], a
    sub a
    add a
    sub a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add [hl]
    adc b
    ld l, b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    and l
    db $76
    adc b
    ld l, c
    ld l, b
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    ld [hl], a
    and l
    and h
    or l
    and h
    db $d3
    and l
    sub a
    ld a, c
    ld l, c
    ld a, b
    sub a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00d_75b9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00d_76a9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00d_78a7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00d_79b6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00d_7aa6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
