; disasSembly of "lsdj.gb"
SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld h, b
    ld b, b
    db $10
    ld b, c
    ret nc

    ld b, d
    ld b, b
    ld b, h
    or b
    ld b, l
    and b
    ld c, c
    db $10
    ld c, a
    and b
    ld d, c
    ldh a, [rHDMA4]
    jr nc, jr_021_406f

    ret nz

    ld h, b
    ret nc

    ld h, d
    or b
    ld h, l
    ld d, b
    ld h, a
    ld [hl], b
    ld l, c
    nop
    nop
    nop
    nop
    ld d, h
    ld d, h
    ld sp, $5454
    ld [hl-], a
    ld d, l
    ld c, b
    dec l
    ld d, l
    ld d, a
    ld sp, $5755
    ld [hl-], a
    ld d, [hl]
    ld d, [hl]
    dec l
    ld d, a
    ld c, b
    dec l
    ld d, a
    ld d, a
    dec l
    ld e, b
    ld d, d
    dec l
    ld e, c
    ld d, d
    dec l
    ld e, c
    ld e, c
    ld sp, $5959
    ld [hl-], a
    ld e, d
    ld c, b
    dec l
    ld e, d
    ld e, d
    dec l
    nop
    dec l
    dec l
    nop
    dec l
    dec l
    ld d, h
    ld d, h
    dec l
    ld e, d
    ld e, d
    jr nz, jr_021_4059

jr_021_4059:
    nop
    nop
    nop
    inc b
    nop
    rst $38
    ld bc, $8788
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b

jr_021_406f:
    ld a, b
    rst $10
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], e
    nop
    nop
    nop
    ld de, $5812
    xor e
    cp h
    sbc $ff
    rst $38
    sbc h
    cp e
    xor c
    add a
    ld h, l
    ld b, l
    ld d, [hl]
    ld h, l
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    xor d
    xor d
    xor c
    adc b
    sbc c
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    ret z

    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, b
    nop
    nop
    ld bc, $2422
    ld a, d
    sbc h
    call $ffee
    cp $db
    cp e
    xor c
    add a
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    sbc c
    adc c
    sbc c
    xor d
    xor c
    sbc c
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [$9988], sp
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
    db $76
    jr nz, jr_021_40e0

jr_021_40e0:
    ld h, b
    ld de, $3622
    adc e
    call z, $eede
    rst $38
    db $fd
    res 7, d
    sbc b
    add a
    ld h, l
    ld d, [hl]
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc d
    xor c
    xor c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
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
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
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
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
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
    add a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld h, a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    sbc c
    adc c
    sbc c
    sbc c
    add a
    sbc c
    ld a, b
    sbc b
    ld a, c
    xor b
    adc d
    add a
    ld a, c
    add [hl]
    adc c
    db $76
    add a
    ld a, b
    add a
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc c
    db $76
    sbc c
    ld a, b
    ld a, b
    adc b
    ld h, a
    ld [hl], a
    ld l, b
    add [hl]
    ld a, c
    add a
    db $76
    ld a, b
    ld a, b
    adc b
    sub a
    ld l, b
    sub a
    adc c
    ld [hl], a
    sub a
    ld l, b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld l, b
    add a
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    add a
    ld a, b
    sub a
    ld l, b
    add l
    adc b
    ld l, b
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, c
    db $76
    adc b
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    ld a, c
    sbc b
    ld a, b
    sbc c
    sbc c
    sbc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    add a
    add a
    adc c
    ld a, b
    sbc c
    adc b
    sbc c
    ld [hl], a
    sbc b
    db $76
    ld h, [hl]
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    sbc b
    ld [hl], a
    adc b
    add a
    add a
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
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add [hl]
    ld l, b
    sbc b
    db $76
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    db $76
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    sbc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, h
    inc sp
    inc [hl]
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d
    cp e
    call z, $bacb
    xor d
    xor d
    sbc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
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
    adc c
    sbc c
    sbc c
    adc b
    adc b
    rst $00
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, e
    inc sp
    inc [hl]
    ld d, l
    ld a, b
    adc b
    adc c
    xor d
    cp h
    call z, $aa8b
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], l
    ld b, e
    inc sp
    ld b, h
    ld d, [hl]
    ld [hl], a
    add a
    adc c
    sbc e
    cp h
    call z, $aaba
    xor c
    sbc c
    add a
    db $76
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld c, b
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
    ld h, h
    ld b, e
    inc sp
    ld b, l
    ld d, a
    ld [hl], a
    ld a, b
    sbc d
    cp h
    call z, $bbcd
    xor d
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld h, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
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
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    and a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, e
    ld [hl-], a
    inc hl
    ld b, l
    ld l, b
    add a
    ld a, b
    sbc d
    cp h
    call z, $bacc
    adc d
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    add a
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
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld b, e
    inc sp
    inc [hl]
    ld b, l
    ld h, a
    ld h, a
    ld a, b
    adc e
    cp h
    call z, $bbdc
    cp d
    xor d
    sbc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld c, b
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
    ld h, h
    inc sp
    inc sp
    ld h, h
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc d
    cp e
    call z, $bbcc
    xor d
    xor c
    sbc c
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    db $76
    db $76
    ld h, a
    adc b
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    adc c
    adc c
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
    ld hl, sp-$78
    add h
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, [hl]
    ld a, c
    adc b
    xor l
    rst $38
    rst $38
    rst $28
    adc a
    rst $38
    rst $38
    call c, $bbbb
    xor b
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    adc c
    sbc c
    sbc c
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], c
    nop
    ld bc, $0022
    ld de, $6614
    adc c
    ld c, b
    adc $ff
    cp $ef
    rst $38
    rst $38
    cp $dc
    cp e
    jp z, Jump_021_7687

    ld h, [hl]
    ld d, l
    ld d, l
    add h
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    adc c
    sbc c
    sbc d
    xor d
    xor c
    adc c
    sbc c
    sbc b
    adc b
    rlca
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld b, b
    nop
    ld de, $7020
    ld de, $6735
    sbc b
    ld a, d
    sbc $ff
    xor $ff
    rst $38
    rst $38
    db $ed
    cp e
    cp e
    xor c
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    xor d
    ld a, c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
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
    ld b, [hl]
    nop
    nop
    ld [bc], a
    ld b, e
    ld d, a
    ld h, [hl]
    xor h
    rst $18
    rst $38
    xor $dc
    call c, $86aa
    ld b, h
    ld h, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, a
    sbc d
    cp e
    cp d
    xor d
    xor e
    xor d
    sbc b
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc b
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    rst $00
    adc b
    adc b
    adc b
    adc b
    sub h
    nop
    nop
    inc de
    inc sp
    ld d, [hl]
    ld d, a
    xor h
    rst $38
    cp $ee
    sbc h
    res 5, c
    ld [hl], l
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld l, b
    sbc e
    cp e
    xor d
    xor d
    xor d
    xor c
    ld a, b
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], d
    nop
    nop
    ld [bc], a
    ld [hl], $98
    xor d
    cp h
    rst $38
    rst $38
    rst $38
    db $db
    sbc b
    adc b
    db $76
    ld d, h
    inc sp
    inc sp
    ld b, [hl]
    adc b
    adc c
    sbc c
    sbc d
    xor e
    cp e
    xor d
    sbc b
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    add hl, bc
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld b, b
    jr nc, jr_021_4582

jr_021_4582:
    ld [de], a
    ld c, b
    sbc b
    sbc d
    cp [hl]
    rst $38
    rst $38
    cp $ca
    sbc b
    adc b
    ld h, [hl]
    ld d, h
    inc sp
    ld [hl], h
    ld d, a
    adc b
    sbc c
    sbc d
    xor e
    cp e
    res 5, c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    and a
    ld a, b
    adc b
    ld h, d
    ld bc, $4434
    inc sp
    ld b, [hl]
    ld a, b
    xor h
    cp h
    cp e
    adc $fe
    res 1, c
    sbc c
    add a
    db $76
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc c
    xor c
    sbc c
    sbc c
    xor d
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    rst $00
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], e
    ld bc, $4423
    ld b, e
    ld b, [hl]
    ld a, b
    xor e
    sbc e
    cp e
    call $bbed
    xor c
    sbc c
    sub a
    db $76
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    adc c
    sbc c
    sbc c
    xor d
    xor c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld c, b
    adc b
    adc b
    adc b
    sbc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    db $10
    inc hl
    ld h, h
    inc sp
    dec [hl]
    ld h, a
    xor e
    res 7, e
    cp l
    xor $cb
    xor c
    sbc c
    add a
    db $76
    ld h, l
    ld d, l
    db $76
    ld [hl], a
    ld h, [hl]
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], l
    jr nz, jr_021_4668

    ld b, h
    ld b, e
    dec [hl]
    ld h, a
    sbc e
    call z, $bdcb
    rst $28
    db $db
    cp d
    adc c
    sbc b
    db $76
    ld h, l
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]

jr_021_4668:
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    cp b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    jr nz, jr_021_469d

    inc [hl]
    ld b, e
    dec [hl]
    ld h, a
    adc e
    call z, $bc9c
    xor $db
    xor d
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_021_469d:
    ld a, b
    adc c
    sbc c
    adc c
    sbc c
    sbc d
    xor c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld c, b
    adc b
    adc b
    adc c
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, b
    ld [bc], a
    inc [hl]
    ld h, e
    inc [hl]
    ld h, a
    ld a, d
    call z, $bccc
    rst $28
    db $ec
    cp d
    sbc c
    sbc b
    ld [hl], a
    ld h, l
    ld d, l
    ld d, [hl]
    db $76
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
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
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld d, c
    ld [bc], a
    inc [hl]
    ld b, e
    inc [hl]
    ld h, a
    ld a, d
    call z, $bbbc
    sbc $ec
    cp d
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc b
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    or a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, d
    ld [bc], a
    inc [hl]
    ld b, h
    inc [hl]
    ld h, [hl]
    ld a, c
    cp h
    cp e
    sbc e
    adc $ec
    cp d
    xor c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    ld a, c
    sbc d
    xor d
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld e, b
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
    add a
    ld h, d
    ld [de], a
    inc [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    ld l, b
    xor e
    call z, $aaba
    cp d
    cp e
    xor c
    add a
    ld h, a
    ld a, b
    add a
    db $76
    db $76
    ld a, b
    sbc c
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], e
    ld [de], a
    inc sp
    ld b, [hl]
    ld d, l
    ld [hl], a
    ld h, a
    xor e
    call $abca
    cp d
    cp e
    xor c
    add [hl]
    add a
    adc b
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], h
    ld de, $4633
    ld h, l
    ld h, a
    ld h, a
    sbc e
    call $9bca
    xor d
    cp e
    xor c
    add a
    ld h, a
    ld a, b
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc b
    add a
    ld a, b
    adc c
    adc c
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add l
    ld hl, $4523
    ld h, l
    add a
    ld h, [hl]
    adc e
    call $aacb
    cp d
    xor e
    xor c
    add a
    ld h, [hl]
    ld a, b
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, c
    sbc c
    adc b
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
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
    adc b
    adc b
    ld [hl], a
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
    adc b
    ld [hl], a
    ld b, e
    inc sp
    inc [hl]
    ld d, l
    ld h, a
    ld [hl], a
    ld a, b
    sbc d
    cp h
    call z, $bacb
    xor d
    xor d
    sbc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    rst $00
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld b, e
    inc sp
    inc [hl]
    ld d, l
    ld l, b
    add a
    adc b
    sbc d
    cp h
    cp h
    adc e
    xor d
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld h, h
    ld b, e
    inc [hl]
    ld b, l
    ld h, a
    ld [hl], a
    ld a, b
    sbc d
    cp e
    cp h
    call z, $aaaa
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
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
    ld h, a
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
    adc b
    ld h, h
    inc sp
    inc sp
    ld b, l
    ld d, a
    ld [hl], a
    ld [hl], a
    sbc d
    cp h
    db $dd
    db $dd
    res 5, d
    xor c
    sbc b
    ld [hl], a
    ld h, l
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc c
    xor d
    xor d

jr_021_48ea:
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
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
    add a
    add a
    ld [hl], a
    rst $00
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, h
    inc sp
    inc hl
    ld b, h
    ld d, [hl]
    adc b
    ld a, b
    sbc d
    cp e
    call z, $9adc
    xor d
    xor c
    sbc c
    add a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    adc b
    adc c
    adc c
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
    adc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], l
    ld b, h
    inc sp
    ld b, h
    ld b, l
    ld h, a
    ld h, a
    adc c
    xor e
    call z, $cbcc
    cp e
    cp d
    xor d
    sbc b
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
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
    add a
    adc b
    add a
    jr c, jr_021_48ea

    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld d, e
    inc sp
    ld b, l
    ld d, l
    ld [hl], a
    ld [hl], a
    adc c
    cp e
    call z, $cbcc
    xor d
    xor c
    sbc c
    add a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
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
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
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
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
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
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc b
    ld a, b
    adc b
    add a
    ld a, b
    sbc c
    db $76
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    db $76
    ld a, b
    adc b
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
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    adc b
    db $76
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld h, [hl]
    ld a, c
    sub a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
    sbc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc c
    sbc b
    ld [hl], a
    adc c
    add a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld h, a
    adc b
    add a
    ld a, b
    sbc b
    add a
    ld h, a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc c
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    add a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
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
    adc b
    adc b
    ld a, b
    add a
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
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    sbc b
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
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    db $76
    ld h, a
    db $76
    ld h, l
    ld h, a
    add a
    ld [hl], a
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
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
    adc c
    adc c
    adc c
    sbc b
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
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
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
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
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
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
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
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    add [hl]
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
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
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
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
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
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
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
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld l, b
    adc b
    adc b
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
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
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
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld a, b
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
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
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
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
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
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
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
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
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
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
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
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
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
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    add a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
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
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
    adc b
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
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld h, l
    ld h, [hl]
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld a, b
    adc c
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    sbc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    adc b
    db $76
    ld d, l
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    add a
    ld [hl], a
    adc b
    adc b
    adc b
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
    ld a, b
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
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
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
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc c
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
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
    adc b
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
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    sbc b
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
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
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
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
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
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
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
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
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
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    ld a, c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
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
    ld [hl], a
    ld [hl], a
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
    adc c
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
    sbc b
    adc b
    add a
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
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
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
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    ld l, b
    adc b
    ld [hl], l
    ld d, e
    ld hl, $1311
    ld b, l
    ld a, c
    xor h
    sbc $ee
    db $ed
    call z, $97a9
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    xor d
    xor c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    add sp, -$68
    adc b
    sbc b
    adc b
    add a
    db $76
    ld d, e
    ld [hl+], a
    db $10
    ld de, $6834
    xor e
    db $dd
    xor $8d
    call z, $87ba
    ld [hl], l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    cp e
    cp e
    xor d
    sbc c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    daa
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
    ld h, l
    ld sp, $0000
    nop
    ld [hl], l
    adc e
    rst $18
    rst $38
    rst $38
    call c, $99ba
    sbc c
    sbc c
    sbc c
    adc b
    db $76
    ld d, l
    ld d, l
    ld h, [hl]
    adc b
    sbc d
    xor e
    cp d
    sbc b
    add a
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld l, c
    adc c
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
    add a
    add a
    add h
    ld sp, $0000
    ld [bc], a
    ld d, a
    xor l
    rst $38
    rst $38
    cp $cb
    sbc b
    ld [hl], a
    ld a, b
    adc c
    adc b
    adc b
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    adc c
    xor e
    cp e
    cp d
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    xor b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    ld b, h
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    adc b
    db $76
    ld h, l
    ld d, h
    ld b, e
    ld b, e
    ld [hl], h
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc b
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
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    adc b
    ld l, b
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
    ld [hl], a
    add [hl]
    ld d, h
    ld b, e
    inc sp
    inc sp
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    xor d
    xor d
    xor c
    sbc c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    ld a, b
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
    sbc b
    adc b
    sbc b
    adc b
    adc c
    sbc b
    add a
    db $76
    ld d, l
    ld b, h
    ld b, e
    inc sp
    inc [hl]
    ld b, h
    ld d, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
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
    ld d, a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld d, h
    ld b, e
    inc sp
    inc sp
    ld b, h
    ld [hl], l
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc d
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    db $76
    ld h, l
    ld d, e
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    cp e
    res 7, e
    xor d
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld [hl], h
    ld d, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc d
    xor d
    xor c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, c
    adc b
    add a
    db $76
    ld d, h
    ld [hl-], a
    ld de, $2412
    ld d, a
    sbc e
    call $eeee
    call c, $26a9
    ld d, h
    ld b, e
    ld b, h
    ld d, [hl]
    ld a, b
    sbc d
    call $eeee
    db $dd
    res 5, c
    add [hl]
    ld d, h
    inc sp
    ld h, d
    ld [hl+], a
    inc sp
    ld b, l
    ld h, a
    sbc d
    xor e
    call $dcdd
    res 7, d
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    push bc
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld h, l
    ld b, e
    ld [hl-], a
    ld de, $2411
    ld d, a
    sbc d
    xor l
    rst $28
    cp $dc
    cp c
    add a
    ld h, l
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc c
    sbc d
    xor d
    xor d
    sbc c
    sbc b
    add a
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    sbc d
    xor d
    cp e
    cp e
    cp e
    cp d
    add hl, de
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld h, l
    ld b, e
    ld hl, $1170
    inc h
    ld d, a
    sbc e
    call $feef
    call c, $87b9
    ld h, l
    ld b, h
    ld b, h
    ld d, l
    ld h, a
    xor b
    sbc c
    xor d
    xor d
    xor d
    xor d
    sbc c
    adc b
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    sbc c
    adc d
    xor e
    cp e
    cp e
    xor d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld e, b
    db $76
    ld d, l
    ld b, d
    ld hl, $0101
    inc h
    ld d, a
    sbc e
    adc $ff
    rst $38
    db $ec
    cp d
    add a
    ld d, h
    ld b, e
    ld b, e
    ld b, l
    ld d, [hl]
    ld a, b
    adc c
    sbc d
    xor d
    xor d
    xor d
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld a, b
    adc d
    xor e
    cp e
    res 7, e
    cp d
    xor d
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $20
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld h, l
    ld b, e
    ld [hl+], a
    ld de, $3522
    ld h, a
    sbc e
    call $dd9e
    res 5, c
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    inc sp
    inc sp
    inc [hl]
    ld d, [hl]
    ld a, b
    xor e
    cp h
    db $dd
    db $dd
    call z, $97b9
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld [hl], a
    sbc c
    dec sp
    cp h
    call $dcdd
    cp d
    sbc b
    add [hl]
    ld d, l
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld de, $1211
    ld d, h
    ld h, a
    xor h
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $5386

    ld [hl-], a
    ld [de], a
    ld [hl+], a
    inc sp
    ld b, h
    dec [hl]
    ld h, [hl]
    ld a, b
    sbc d
    cp h
    db $dd
    xor $ee
    db $ed
    cp d
    sub a
    ld h, h
    inc sp
    ld hl, $1211
    ld d, e
    ld b, l
    ld h, a
    adc c
    xor d
    cp h
    call $ccdd
    cp e
    xor c
    adc b
    db $76
    ld h, l
    ld d, h
    ld d, l
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld d, [hl]
    ld a, b
    xor e
    call $ddee
    db $db
    xor c
    add a
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    sbc c
    xor d
    xor d
    xor d
    sbc c
    add a
    ld [hl], a
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor d
    xor d
    xor d
    xor c
    ld sp, hl
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, e
    ld hl, $1101
    inc hl
    ld d, a
    sbc e
    adc $ff
    rst $38
    db $ed
    jp z, Jump_021_7698

    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, a
    adc c
    xor e
    call $aeee
    db $db
    xor c
    db $76
    ld d, h
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    sbc d
    ld e, e
    cp e
    cp e
    xor d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld b, e
    ld [hl+], a
    ld [hl+], a
    inc hl
    db $76
    sbc d
    adc $ff
    rst $38
    db $fd
    cp d
    sub a
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld e, b
    sbc d
    cp h
    db $dd
    xor $ed
    res 5, c
    db $76
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld b, [hl]
    ld a, b
    sbc d
    cp h
    db $dd
    sbc $dc
    res 5, c
    add [hl]
    ld d, h
    ld b, e
    inc sp
    inc [hl]
    ld b, l
    ld b, h
    ld [hl], h
    ld b, e
    inc sp
    inc sp
    ld b, [hl]
    ld a, c
    cp h
    sbc $ee
    db $ed
    res 3, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    scf
    ld [hl], a
    db $76
    ld d, l
    ld d, l
    ld d, [hl]
    ld a, b
    adc d
    cp e
    call $cbdd
    xor b
    db $76
    ld d, h
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    xor e
    cp h
    db $dd
    db $dd
    call z, $98ba
    db $76
    ld d, h
    sub h
    ld b, l
    ld d, l
    ld d, [hl]
    ld b, c
    dec h
    ld [hl], l
    ld [hl+], a
    ld e, c
    sbc b
    ld l, b
    cp h
    cp e
    xor e
    cp e
    xor d
    ld a, b
    ld [hl], a
    adc b
    ld [hl], l
    ld d, [hl]
    add a
    ld h, [hl]
    ld a, b
    sbc b
    adc b
    adc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ret z

    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add [hl]
    inc sp
    ld d, a
    ld h, e
    inc h
    ld a, c
    add [hl]
    ld l, d
    sbc e
    xor d
    xor e
    cp d
    xor d
    sbc b
    ld a, b
    add a
    ld d, l
    ld d, a
    add a
    ld h, [hl]
    adc b
    sbc b
    adc b
    sbc c
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld e, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], l
    inc hl
    ld h, a
    ld d, d
    dec h
    adc c
    ld [hl], l
    adc e
    cp e
    xor d
    xor e
    xor d
    xor c
    add a
    ld a, b
    add [hl]
    ld d, l
    ld h, a
    db $76
    add a
    adc b
    add a
    adc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b

Jump_021_5585:
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, e
    dec [hl]
    db $76
    ld [hl-], a
    ld b, a
    sbc b
    ld h, a
    xor h
    res 5, d
    cp e
    xor d
    sbc b
    ld [hl], a
    adc b
    db $76
    ld d, [hl]
    ld [hl], a
    db $76
    ld l, b
    sbc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
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
    adc b
    add a
    ld b, d
    ld b, [hl]
    ld [hl], h
    inc hl
    ld l, c
    sub a
    ld l, c
    cp e
    cp d
    adc e
    cp e
    xor d
    sbc b
    ld [hl], a
    add a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld h, l
    ld a, b
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    ld a, b
    adc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, a
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
    add [hl]
    ld b, e
    ld d, a
    ld [hl], l
    inc sp
    ld a, d
    xor b
    ld h, a
    xor l
    ret


    ld a, b
    call z, Call_021_67b8
    sbc c
    ld [hl], l
    ld d, [hl]
    ld a, b
    ld h, [hl]
    ld d, a
    adc b
    add a
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, b
    sbc c
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
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld d, l
    inc [hl]
    ld h, a
    ld h, e
    inc h
    adc d
    sub [hl]
    ld l, c
    call Call_021_7ab8
    call z, Call_021_6896
    xor b
    ld h, l
    ld h, a
    add a
    ld h, l
    ld h, a
    adc b
    adc b
    adc b
    sbc c
    sbc b
    adc b

jr_021_564a:
    adc b
    adc b
    ld [hl], a
    ld h, a
    add a
    ld h, [hl]
    add a
    adc b
    ld [hl], a
    adc b
    sbc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    cp b
    ld a, b
    adc b
    adc b
    adc b
    ld d, d
    ld [bc], a
    ld b, [hl]
    ld d, d
    ld [de], a
    ld a, d
    xor d
    sbc d
    cp l
    db $dd
    call z, $998a
    sbc c
    ld [hl], l
    ld b, l
    ld h, a
    ld h, l
    ld b, [hl]
    ld a, b
    adc b
    adc c
    sbc c
    sbc d
    sbc d
    sbc b
    adc b
    ld a, b
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc b
    adc b
    ld a, b
    add a
    db $76
    and a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add [hl]
    jr nc, @+$05

    ld d, [hl]
    ld sp, $9b15
    sbc c
    sbc e
    db $dd
    db $dd
    res 5, d
    xor d
    sbc b
    ld h, h
    ld d, [hl]
    ld [hl], a
    ld h, h
    ld d, [hl]
    adc c
    adc b
    adc c
    sbc d
    xor d
    xor d
    adc b
    adc b
    adc b
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc c
    jr z, jr_021_564a

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
    adc b
    add h
    nop
    add [hl]
    sbc b
    ld d, l
    ld a, h
    cp $c9
    adc c
    xor b
    db $76
    ld d, h
    ld b, h
    ld a, b
    sbc b
    ld [hl], a
    sbc e
    cp d
    add a
    ld a, b
    add a
    ld h, l
    ld h, [hl]
    ld [hl], a
    adc c
    sbc b
    adc b
    sbc c
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld h, [hl]
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld d, c
    nop
    ld e, b
    sub a
    ld b, [hl]
    xor [hl]
    db $fd
    xor c
    sbc c
    sbc b
    db $76
    ld d, h
    ld b, [hl]
    ld a, c
    sbc b
    ld a, c
    cp h
    cp c
    ld [hl], a
    ld a, b
    db $76
    ld h, l
    ld h, a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    add a
    add a
    adc b
    add a
    ld h, a
    adc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, b
    nop
    ld d, $ac
    sub a
    adc e
    rst $28
    db $fc
    sub a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    adc e
    call $88c9
    sbc c
    sub a
    ld d, h
    ld b, l
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    sbc c
    xor c
    sub a
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld h, a
    adc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    adc b
    rst $00
    db $76
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
    ld [hl], l
    stop
    ld c, d
    adc d
    add a
    xor l
    rst $38
    ld [$5586], a
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    sbc h
    call c, Call_021_78a8
    sbc c
    sub [hl]
    ld d, h
    ld d, [hl]
    ld [hl], a
    adc b
    sbc b
    sbc b
    sbc c
    sbc c
    db $76
    ld d, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld a, b
    sbc c
    ld a, c
    adc b
    adc b
    ld [hl], a
    adc b
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
    ld [hl], a
    xor b
    ld [hl], h
    db $10
    inc bc
    ld a, d
    xor c
    ld a, b
    cp [hl]
    cp $b9
    db $76
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, e
    cp d
    add a
    adc c
    sbc c
    db $76
    ld d, l
    ld h, a
    ld [hl], a

jr_021_57b9:
    adc b
    adc b
    adc b
    sbc c
    sbc b
    add [hl]
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a

jr_021_57c9:
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld d, d
    nop
    dec d
    xor e
    xor b
    ld a, d
    rst $18
    db $fc
    sub a
    db $76
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld a, c
    call z, $88b9
    sbc c
    sbc b
    ld h, l
    ld d, l
    ld h, a
    ld a, b
    adc b
    adc b
    ld a, c
    sbc d
    sbc b
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld b, b
    nop
    jr c, jr_021_57c9

    sub a
    ld e, e
    rst $28
    jp c, Jump_021_6686

    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    adc e
    call z, Call_021_78a8
    sbc c
    add a
    ld d, l
    add [hl]
    ld a, b
    adc b
    adc b
    adc b
    adc c
    sbc c
    add a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    sbc b
    adc b
    jr z, jr_021_57b9

    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    sub b
    ld [bc], a
    ld l, c
    cp c
    add a
    sbc h
    xor $b9
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    sbc e
    cp e
    ld a, b
    adc b
    sbc c
    add [hl]
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc c
    add a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    adc c
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld sp, $5812
    cp h
    cp c
    adc c
    xor h
    db $db
    sub a
    ld d, h
    ld d, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    xor d
    xor b
    db $76
    ld d, [hl]
    ld [hl], a
    add a
    db $76
    ld [hl], a
    adc c
    sbc c
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    xor b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld sp, $7b24
    call z, $89a8
    ld l, h
    jp z, Jump_021_5585

    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    sbc d
    xor d
    sub a
    ld h, l
    ld h, [hl]
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    sbc c
    sbc c
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    jr c, jr_021_5949

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
    ld h, e
    ld hl, $9b86
    res 3, b
    adc d
    call z, Call_021_64b8
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    xor d
    xor d
    add a
    ld h, l
    ld h, a
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    sbc d
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
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
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
    db $76
    ld d, h
    inc [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    adc d
    cp e
    cp d
    xor c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    adc b
    adc b
    adc b
    sbc b
    add a
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
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    db $76
    ld d, h

jr_021_5949:
    ld b, l
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add a
    ld h, l
    ld d, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    add a
    adc b
    adc b
    adc b
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld b, e
    ld b, a
    adc c
    ld a, c
    sbc c
    sbc c
    xor d
    sbc c
    add a
    ld h, l
    ld h, [hl]
    ld a, b
    add a
    ld a, b
    adc c
    sbc c
    sbc b
    add a
    db $76
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
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
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, [hl]
    ld d, l
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    db $76
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    sbc c
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc b
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
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
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
    ld [hl], a
    ld h, [hl]
    ld h, a
    adc b
    add a
    ld a, b
    ld a, c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld h, a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    db $76
    ld a, b
    adc b
    add a
    adc b
    sbc b
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
    ld a, b
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
    ld [hl], a
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
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
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
    adc b
    ld [hl], a
    ld a, b
    adc b
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
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
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
    ld a, b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
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
    add a
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
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    rst $20
    ld [hl], a
    ld h, e
    ld [hl], $53
    ld hl, $3224
    dec [hl]
    ld h, a
    ld [hl], a
    adc d
    cp h
    call z, $eede
    adc l
    db $dd
    call z, $aaba
    sub a
    db $76
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    ld l, c
    sbc d
    xor d
    xor d
    xor e
    cp e
    xor d
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc b
    ld d, l
    add a
    ld b, e
    inc [hl]
    ld h, h
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld e, c
    xor d
    xor e
    call $cccc
    call c, $aabb
    xor c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc b
    add a
    ld [hl], a
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], h
    ld c, b
    ld h, h
    inc sp
    ld b, [hl]
    ld h, e
    ld b, l
    ld h, a
    ld [hl], a
    adc c
    xor e
    cp e
    call $dcdd
    call z, $bbcb
    xor c
    sbc b
    ld [hl], a
    sub [hl]
    ld d, l
    ld d, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    sbc d
    xor d
    cp d
    xor d
    xor c
    add hl, sp
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add [hl]
    push bc
    add l
    ld de, $4135
    dec h
    ld h, [hl]
    ld d, [hl]
    adc d
    sbc c
    cp l
    db $dd
    call $dcee
    call z, $a9ab
    sbc c
    add [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc d
    xor d
    ld a, d
    xor e
    xor d
    xor d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    or a
    adc b
    adc c
    sbc c
    ld [hl], h
    ld e, c
    ld h, d
    inc [hl]
    ld d, l
    ld [hl+], a
    ld h, a
    ld d, l
    ld e, b
    xor c
    adc d
    call z, $cd6b
    call c, $ccbc
    cp d
    xor d
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc c
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    add l
    inc d
    ld [hl], e
    ld bc, $3024
    dec d
    ld h, l
    ld b, [hl]
    sbc e
    xor c
    cp [hl]
    xor $ee
    rst $38
    db $ed
    db $dd
    call c, $98a9
    db $76
    ld d, l
    ld d, h
    inc sp
    ld [hl], e
    inc sp
    inc [hl]
    ld d, l
    ld h, [hl]
    ld a, b
    adc c
    sbc d
    cp e
    cp e
    cp e
    cp e
    cp e
    xor d
    sbc c
    adc b
    ld h, $66
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    ld h, e
    ld l, c
    ld d, c
    sub h
    ld d, h
    ld [de], a
    ld h, [hl]
    ld b, h
    ld e, b
    xor c
    adc d
    call z, $decc
    db $fd
    db $dd
    db $dd
    jp z, $b8aa

    ld [hl], a
    db $76
    ld d, l
    ld b, l
    ld d, h
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld a, b
    adc c
    sbc d
    xor d
    xor e
    cp e
    adc d
    xor d
    xor c
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    ret c

    add l
    dec h
    add h
    ld [de], a
    dec [hl]
    ld b, b
    ld h, $65
    ld b, [hl]
    adc d
    sbc b
    cp l
    db $ed
    db $dd
    rst $38
    sbc l
    db $dd
    db $db
    xor d
    xor c
    add a
    ld h, [hl]
    ld h, l
    ld b, h
    ld b, h

jr_021_5cba:
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    ld l, d
    xor d
    xor e
    cp e
    xor d
    xor d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    and [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], l
    ld h, a
    ld d, h
    ld b, e
    ld d, l
    ld b, h
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc d
    ld e, e
    cp e
    call z, $cbcc
    res 7, d
    xor d
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    adc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add [hl]
    ld d, [hl]
    db $76
    ld b, h
    ld b, l
    ld h, h
    ld [hl], l
    ld h, a
    db $76
    ld a, b
    sbc d
    xor d
    xor e
    cp e
    cp e
    cp e
    cp e
    xor d
    xor c
    sbc c
    add a
    ld [hl], a
    sub [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    xor c
    sbc c
    sbc c
    jr c, jr_021_5cba

    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld h, e
    ld d, l
    ld d, l
    ld b, e
    ld d, [hl]
    ld a, b
    adc b
    sbc e
    call z, $cccc
    cp e
    xor c
    adc b
    db $76
    ld h, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    adc b
    sbc c
    sbc d
    xor d
    xor d
    xor c
    sbc c
    adc b
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    add a
    ld a, b
    adc b
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    xor b
    adc b
    adc b
    add [hl]
    ld b, h
    ld d, l
    ld d, h
    inc [hl]
    ld h, a
    ld [hl], a
    ld a, b
    xor e
    cp h
    cp h
    call z, Call_021_79bb
    adc b
    ld [hl], a
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    xor d
    xor c
    sbc c
    sbc c
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    or [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld h, h
    ld b, [hl]
    ld d, l
    ld b, e
    ld b, [hl]
    ld [hl], a
    ld [hl], a
    sbc d
    xor h
    res 7, e
    res 5, c
    adc b
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc c
    xor d
    sbc d
    xor d
    xor c
    adc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add [hl]
    ld d, h
    ld b, l
    ld [hl], a
    sub a
    ld a, b
    xor e
    cp e
    cp d
    xor d
    sbc c
    add a
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    sbc c
    xor c
    ld l, c
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    xor c
    sbc b
    adc b
    db $76
    ld h, [hl]
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    ld h, l
    ld b, h
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor d
    xor d
    xor d
    xor c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    ld a, c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    ld d, h
    ld d, [hl]
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc e
    cp d
    xor d
    xor d
    sbc c
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add a
    adc b
    adc c
    sbc b
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    xor b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld h, h
    ld b, l
    ld d, a
    db $76
    ld h, a
    adc d
    ld a, d
    xor d
    xor d
    xor c
    sbc b
    db $76
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    scf
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    ld b, e
    and e
    ld d, [hl]
    ld [hl], a
    adc b
    xor e
    call z, $bacc
    sbc b
    db $76
    ld h, l
    ld b, h
    ld b, l
    ld h, [hl]
    ld a, b
    sbc c
    ld a, d
    xor e
    cp d
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    adc b
    sbc c
    sbc d
    xor c
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld e, b
    adc b
    adc b
    ld h, h
    inc sp
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc c
    xor e
    call z, $b9cb
    sbc b
    add a
    ld h, l
    sub l
    ld d, [hl]
    ld h, a
    adc b
    adc c
    xor d
    xor d
    xor d
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    ld a, c
    sbc c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    or a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], l
    ld b, e
    inc [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    sbc d
    cp h
    bit 5, d
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    sbc c
    xor d
    xor d
    xor d
    sbc c
    add a
    ld [hl], a
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc c
    ld a, c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    add a
    ld h, e
    inc sp
    ld b, l
    ld h, [hl]
    and a
    adc c
    xor e
    call z, $a9cb
    sbc b
    ld [hl], a
    ld h, l
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    adc c
    sbc d
    xor d
    ld a, c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld [hl], l
    ld b, e
    inc [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc d
    cp h
    res 7, c
    sbc b
    add a
    db $76
    ld d, l
    ld d, l
    ld h, [hl]
    sbc b
    sbc c
    sbc d
    xor d
    xor d
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc c
    xor c
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld a, b
    adc b
    add a
    ld h, h
    ld b, h
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    xor e
    res 7, d
    sbc c
    adc b
    add [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc c
    sbc d
    xor d
    xor d
    xor c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    adc b
    sbc c
    sbc d
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    adc c
    sbc b
    adc c
    cp b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    db $76
    ld b, h
    ld b, h
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc d
    ld a, e
    cp e
    cp d
    sbc b
    add a
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, a
    ld a, b
    adc c
    sbc c
    xor d
    xor d
    xor c
    add a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld c, b
    adc b
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld d, h
    ld b, h
    and [hl]
    ld h, a
    ld [hl], a
    adc c
    xor e
    cp h
    cp d
    sbc c
    add a
    db $76
    ld h, l
    ld d, l
    ld d, [hl]
    ld a, b
    adc c
    sbc c
    ld a, d
    xor c
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    add a
    add a
    db $76
    db $76
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, a
    adc b
    db $76
    ld b, e
    ld b, l
    ld h, [hl]
    ld h, a
    adc b
    sbc d
    cp e
    cp e
    xor c
    sbc b
    add a
    ld h, [hl]
    ld d, l
    sub [hl]
    ld h, a
    ld a, b
    adc c
    sbc d
    xor d
    xor c
    sbc c
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc c
    ld a, c
    sbc c
    sbc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    adc c
    sbc c
    adc b
    adc b
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld d, h
    inc [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    xor e
    cp e
    cp d
    ld l, c
    adc b
    db $76
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc b
    sbc c
    xor d
    xor d
    sbc c
    sbc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    ld a, c
    sbc b
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
    ld [hl], a
    ld [hl], a
    ld [hl], a
    and [hl]
    ld d, a
    add l
    ld b, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld l, b
    add a
    ld a, b
    sbc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    ld l, c
    xor d
    xor c
    sbc c
    sbc c
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
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld l, b
    ld h, h
    ld d, a
    ld h, l
    ld h, a
    ld h, [hl]
    ld a, b
    db $76
    adc c
    adc b
    ld a, c
    sbc c
    sbc c
    sbc c
    xor d
    sbc b
    sbc c
    sbc b
    sbc b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld e, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld d, h
    ld h, [hl]
    ld d, l
    ld d, [hl]
    sub [hl]
    db $76
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc d
    xor d
    sbc d
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    sbc c
    adc c
    sbc c
    sbc b
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    sub [hl]
    ld b, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add a
    ld a, b
    add l
    ld l, b
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    add a
    adc c
    sbc c
    ld a, c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, h
    ld l, b
    ld h, e
    ld b, a
    ld [hl], l
    ld b, l
    add a
    ld h, [hl]
    ld l, b
    adc c
    sbc c
    sbc e
    cp e
    xor d
    cp e
    xor c
    sbc d
    xor c
    sbc b
    adc b
    add a
    db $76
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    sbc c
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
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld h, [hl]
    sbc c
    ld d, h
    adc b
    ld h, h
    ld d, a
    add a
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc c
    xor b
    sbc d
    xor d
    sbc c
    sbc c
    sbc b
    add a
    sub a
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc c
    sbc c
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
    adc b
    adc b
    adc b
    adc b
    adc b
    xor b
    add [hl]
    ld d, a
    sub [hl]
    dec [hl]
    ld [hl], a
    ld d, h
    ld l, b
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    sbc d
    sbc c
    sbc d
    adc c
    sbc c
    xor c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add l
    ld l, c
    add h
    ld b, [hl]
    ld [hl], l
    ld b, h
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    ld l, b
    adc c
    xor d
    sbc c
    xor d
    xor c
    sbc d
    xor c
    sbc b
    adc b
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    ld [hl], a
    adc b
    ld b, a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    ld h, e
    ld l, d
    ld d, b
    ld [hl], $54
    ld d, e
    ld e, b
    add a
    ld a, c
    xor d
    cp d
    xor h
    call z, $abbb
    cp d
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    adc b
    add a
    sub a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    adc c
    and a
    add [hl]
    ld l, b
    add l
    ld d, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add [hl]
    ld a, b
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    ld l, d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
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
    ld [hl], a
    ld [hl], a
    ld h, l
    ld l, b
    ld h, h
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    adc c
    ld a, b
    adc c
    sbc c
    sbc d
    sbc c
    xor d
    sbc c
    xor d
    xor c
    sbc c
    sbc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    ld l, c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld d, l
    ld [hl], a
    ld b, h
    ld h, [hl]
    ld d, l
    add [hl]
    ld h, [hl]
    add a
    ld [hl], a
    sbc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    xor c
    sbc c
    xor d
    sbc c
    sbc c
    adc c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld l, b
    adc b
    sbc b
    sbc b
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
    db $76
    sub a
    add [hl]
    ld b, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    adc c
    xor c
    sbc c
    sbc d
    xor d
    sbc c
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    ld a, b
    ld [hl], l
    ld h, a
    add [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    adc c
    ld a, c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
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
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld d, h
    ld l, b
    ld d, e
    ld b, a
    ld [hl], l
    ld b, [hl]
    add a
    ld h, [hl]
    adc b
    sbc c
    sbc c
    xor e
    cp d
    xor d
    cp e
    xor c
    xor d
    xor c
    sbc c
    adc b
    add a
    db $76
    ld h, a
    add [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    adc b
    adc b
    ld b, a
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
    sub a
    ld h, [hl]
    sbc b
    add h
    ld a, b
    ld h, h
    ld e, b
    add [hl]
    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    adc b
    adc c
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
    adc b
    adc b
    adc b
    sbc b
    adc b
    add [hl]
    ld d, a
    sub [hl]
    dec [hl]
    ld [hl], a
    ld b, h
    ld l, b
    ld [hl], l
    ld h, a
    ld a, b
    adc b
    adc b
    sbc d
    sbc c
    ld a, d
    xor c
    sbc c
    xor c
    sbc b
    adc b
    adc b
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    sbc c
    sbc b
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
    adc b
    adc b
    adc b
    ld [hl], l
    ld l, c
    add h
    ld b, [hl]
    ld [hl], l
    dec [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    sbc d
    xor c
    sbc b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, a
    add a
    ld h, a
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
    add a
    ld a, b
    ld e, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    ld d, e
    ld a, d
    jr nc, jr_021_64f6

    ld h, h
    ld b, e
    ld e, b
    add [hl]
    ld a, c
    sbc e
    cp d
    xor h

Call_021_64b8:
    call z, $abbb
    cp d
    sbc b
    adc b
    add a
    ld h, [hl]
    add l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc b
    adc b
    sub a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc c
    sbc c
    add [hl]
    ld [bc], a
    xor b
    inc d
    ld a, b
    sub [hl]
    ld h, $ca
    adc c
    sbc e
    xor $cc
    call z, $a8dc
    adc c
    add [hl]
    ld b, e
    ld b, l
    ld b, d
    inc hl
    ld d, l

jr_021_64f6:
    ld d, h
    ld h, a
    adc b
    adc c
    xor e
    cp d
    xor d
    xor d
    xor c
    adc b
    add a
    db $76
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    xor c
    xor c
    sbc c
    sbc b
    adc b
    ret z

    add a
    db $76
    ld [hl], a
    db $76
    ld h, c
    ld b, $a3
    ld d, $7a
    sub h
    ld c, e
    jp c, $beab

    db $fd
    cp l
    call $88db
    adc b
    ld h, h
    inc hl
    ld b, h
    ld [hl+], a
    inc h
    ld d, l
    ld b, l
    ld a, c
    sbc c
    sbc d
    cp e
    xor d
    xor d
    xor d
    sbc b
    adc b
    add a
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld b, b
    ld a, [hl+]
    ld [hl], c
    ld b, a
    sbc d
    ld h, e
    ld e, l
    cp c
    xor e
    rst $08
    db $ec
    call c, $c8cd
    ld a, b
    add a
    ld d, e
    inc [hl]
    ld b, e
    ld [hl+], a
    ld b, l
    ld h, l
    ld [hl], a
    adc c
    sbc c
    sbc d
    cp e
    xor c
    sbc d
    xor c
    add a
    ld a, b
    db $76
    ld d, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld h, a
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    db $10
    ld l, b
    db $10
    dec h
    db $76
    ld b, l
    cp h
    cp d
    cp h
    db $ed
    res 7, e
    cp d
    add a
    ld h, a
    db $76
    ld b, h
    ld h, [hl]
    db $76
    ld h, a
    adc c
    sbc b
    sbc d
    cp e
    xor c
    sbc d
    sbc c
    add a
    ld [hl], a
    db $76
    ld d, l
    ld h, [hl]
    ld h, [hl]
    add a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    db $76
    ld a, b
    sbc b
    ld h, a
    adc c
    add [hl]
    ld l, b
    xor b
    ld a, b
    sbc b
    adc b
    sbc b
    sbc b
    ld a, b
    add a
    ld [hl], a
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    adc b
    sub a
    ld a, b
    ld a, c
    db $76
    adc c
    sub a
    ld a, b
    sub a
    ld a, c
    add a
    adc c
    add a
    ld a, b
    adc c
    sbc b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    db $76
    ld l, b
    sbc b
    ld [hl], a
    sbc c
    ld h, [hl]
    adc c
    ld a, b
    adc c
    sbc b
    adc c
    sub [hl]
    ld a, b
    add a
    adc b
    ld l, b
    sbc b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    db $76
    ld a, b
    add [hl]
    adc c
    add a
    ld a, b
    add [hl]
    ld h, [hl]
    adc c
    add [hl]
    ld l, c
    sub a
    adc b
    db $76
    ld a, b
    adc b
    add a
    adc c
    sub a
    ld [hl], a
    ld a, b
    db $76
    adc c
    ld [hl], a
    sbc b
    ld h, a
    add a
    ld a, b
    add a
    ld h, a
    adc b
    add [hl]
    ld a, c
    add a
    adc c
    sbc b
    adc b
    adc c
    add a
    ld a, b
    sub a
    ld h, a
    adc b
    add a
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc c
    db $76
    adc c
    add a
    sbc c
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, c
    sub [hl]
    ld a, c
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    sbc b
    ld a, b
    ld a, b
    sbc c
    ld [hl], a
    xor c
    db $76
    adc c
    add [hl]
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    sbc c
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    db $76
    adc c
    ld [hl], a
    sbc b
    ld a, c
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld h, [hl]
    adc c
    db $76
    adc c
    add a
    adc b
    adc b
    add a
    ld a, c
    sub a
    sbc b
    ld a, b
    sub a
    ld h, a
    add a
    ld a, b
    ld a, b
    add [hl]
    ld h, a
    adc b
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    add a
    ld a, b
    db $76
    ld a, c
    add a

Jump_021_6686:
    adc c
    sub a
    adc c
    sub a
    ld a, c
    sbc b
    ld [hl], a
    adc b
    ld h, a
    adc b
    db $76
    adc b
    ld h, a
    sbc b
    add a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add [hl]
    ld l, b
    sub [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    adc b
    ld h, [hl]
    adc b
    adc b
    sbc b
    sbc c
    add a
    sbc d
    add [hl]
    ld a, c
    sub a
    ld l, b
    ld a, c
    adc b
    adc c
    adc b
    ld a, b
    adc b
    ld h, a
    adc b
    ld h, [hl]
    adc c
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld a, b
    db $76
    sub a
    adc c
    sub a
    adc d
    sbc b
    adc c
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc c
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc c
    db $76
    adc d
    add [hl]
    ld [hl], a
    adc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    sub a
    ld a, c
    add [hl]
    ld h, a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, [hl]
    adc b
    xor c
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    ld a, b
    db $76
    ld l, b
    sbc b
    ld [hl], a
    adc d
    sub a
    ld a, b
    sbc b
    ld h, a
    ld l, c
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld h, a
    add a
    add a
    adc b
    db $76
    ld h, a
    add [hl]
    ld h, a
    sbc b
    db $76
    adc d
    sub a
    ld a, b
    sbc d
    adc b
    sbc c
    add a
    adc b
    add a
    adc b
    ld a, b
    adc b
    sbc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld d, [hl]
    ld [hl], a
    adc b
    ld [hl], a
    sbc c
    adc b
    sbc c
    ld [hl], a
    adc c
    add a
    ld a, c
    sub a
    ld l, c
    xor b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    db $76
    adc b
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    sub a
    adc c
    ld l, c
    add [hl]
    sbc b
    ld a, c
    ld a, b
    sub a
    sbc c
    ld l, c
    ld [hl], a
    add a
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    add a
    ld a, c
    ld a, b
    sub [hl]
    adc b
    ld l, c
    db $76
    sub [hl]
    adc b
    sbc b
    add l
    sbc b
    ld l, c
    ld h, [hl]
    sub [hl]
    adc c
    ld e, b
    add [hl]
    add a
    ld l, b
    ld [hl], a
    and a
    ld a, b
    ld l, b
    db $76
    ld [hl], a
    ld a, c
    ld a, b
    sub [hl]
    adc b
    ld l, c
    add [hl]
    sub a
    ld a, b
    db $76
    sub a
    ld a, c
    ld h, a
    add [hl]
    adc b
    ld l, c
    add a
    add a
    adc b
    ld l, b
    add [hl]
    sub a
    ld l, b
    ld h, a
    sub a
    ld a, c
    ld a, c
    sub a
    adc b
    ld a, c
    ld a, b
    and a
    adc d
    ld a, b
    sub [hl]
    adc c
    ld l, d
    add a
    sub a
    ld a, c
    ld l, b
    add [hl]
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    adc c
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a

Call_021_67b8:
    add a
    adc b
    ld a, c
    ld [hl], a
    sub a
    adc c
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, d
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld d, a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld l, b
    add [hl]
    add [hl]
    ld l, b
    ld l, b
    add [hl]
    add a
    ld l, c
    ld [hl], a
    sub [hl]
    adc c
    ld a, b
    add [hl]
    add a
    ld a, c
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    add [hl]
    xor b
    ld a, c
    ld [hl], a
    sub [hl]
    sbc c
    ld l, c
    add a
    xor b
    ld a, c
    ld h, a
    sub [hl]
    ld a, b
    ld e, b
    db $76
    sub a
    ld l, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, c
    add [hl]
    add a
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    xor b
    ld [hl], a
    add [hl]
    adc b
    ld l, c
    add [hl]
    sbc b
    ld a, c
    add a
    sbc b
    adc c
    ld a, b
    add a
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    sub a
    ld a, b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, c
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    sub a
    sbc b
    ld l, c
    add a
    and a
    ld a, c
    ld a, b
    sub a
    adc b
    ld l, b
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    adc c
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld a, c
    add a
    sub a
    ld a, c
    ld l, b
    add [hl]
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    sub a
    adc c
    add a
    sub a
    ld a, c
    ld l, c
    sub [hl]
    sbc b
    ld l, d
    ld [hl], a
    add [hl]
    sbc b
    ld l, c
    ld [hl], a
    sub [hl]
    ld a, d
    ld h, a
    ld h, l
    add a
    ld l, b
    ld l, b
    add a
    adc b

Call_021_6896:
    ld a, c
    add [hl]
    sbc b
    ld a, c
    add a
    sub a
    adc b
    ld l, b
    add a
    add a
    adc c
    ld h, [hl]
    sub [hl]
    ld a, c
    ld h, [hl]
    ld h, l
    ld h, [hl]
    adc b
    ld h, a
    add [hl]
    adc b
    adc b
    add a
    adc b
    adc c
    adc c
    ld a, b
    adc b
    adc b
    sbc b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
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
    add a
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, $54
    db $76
    ld d, a
    ld d, [hl]
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sbc c
    ld a, c
    adc b
    adc c
    sbc c
    sbc c
    adc b
    adc c
    sbc c
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add e
    ld b, a
    ld b, [hl]
    ld [hl], l
    db $76
    ld d, a
    adc b
    add a
    adc b
    ld a, c
    sbc c
    sbc c
    adc b
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    sbc b
    ld a, b
    ld [hl], a
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
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld d, d
    add l
    ld d, a
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld a, c
    ld [hl], a
    add a
    adc c
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
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
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_021_7687:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_021_7698:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_021_78a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_021_79bb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_021_7ab8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
