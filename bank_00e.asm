; disasSembly of "lsdj.gb"
SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    ld h, b
    ld b, b
    ret nc

    ld b, d
    ldh a, [rSCX]
    and b
    ld b, l
    ld h, b
    ld c, h
    ld [hl], b
    ld c, a
    ldh a, [rHDMA3]
    sub b
    ld e, b
    ldh [$5d], a
    ret nc

    ld h, a
    ld h, b
    ld l, b
    ret nc

    ld l, b
    jr nc, jr_00e_4083

    sub b
    ld l, d
    db $10
    ld l, a
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
    ld c, l
    ld b, e
    ld c, a
    ld c, h
    ld b, e
    ld c, a
    ld c, b
    ld d, h
    ld c, l
    ld c, h
    ld d, h
    ld c, l
    ld b, e
    ld e, c
    ld c, l
    ld d, d
    ld c, c
    ld c, l
    ld d, d
    ld b, d
    dec l
    ld b, e
    ld c, h
    ld b, c
    ld b, e
    ld c, a
    ld d, a
    ld b, e
    ld c, h
    ld d, b
    nop
    dec l
    dec l
    nop
    nop
    nop
    ld b, e
    ld d, d
    jr c, jr_00e_4086

    jr nc, jr_00e_4088

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8aa9
    sbc d
    cp e
    call c, $efde
    rst $38
    rst $38
    rst $38
    cp $fe
    xor $dd
    call c, Call_000_0abb
    sbc b
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    inc [hl]
    ld b, e
    ld [hl+], a
    ld hl, $1001
    nop
    nop
    nop
    nop
    jr nz, jr_00e_4082

jr_00e_4082:
    nop

jr_00e_4083:
    nop
    nop
    nop

jr_00e_4086:
    nop
    nop

jr_00e_4088:
    nop
    nop
    nop
    nop
    ld de, $2112
    ld [hl-], a
    sub e
    ld b, e
    inc [hl]
    ld b, l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc d
    cp d
    sbc d
    xor d
    xor d
    cp d
    cp e
    xor e
    cp d
    cp e
    cp e
    cp e
    cp e
    cp e
    cp h
    cp e
    set 1, e
    jp z, $bccc

    cp h
    cp e
    jp z, $bbcc

    cp e
    cp e
    cp e
    res 7, e
    cp e
    res 5, e
    cp e
    res 7, e
    cp h
    cp e
    res 5, e
    cp e
    cp d
    cp e
    cp e
    cp d
    cp d
    xor e
    cp c
    ld l, d
    xor c
    xor d
    sbc c
    sbc c
    xor c
    adc c
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld b, [hl]
    ld b, h
    ld b, l
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    ld b, h
    inc sp
    inc sp
    ld b, e
    ld d, e
    inc sp
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    inc sp
    ld b, h
    ld b, e
    ld b, l
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    or [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld a, c
    adc c
    adc c
    sbc c
    sbc c
    xor c
    cp d
    sbc d
    cp d
    cp d
    xor e
    cp d
    cp e
    cp e
    set 1, e
    res 7, h
    call z, $cbbc
    call z, $cbbb
    cp e
    adc e
    res 7, e
    cp e
    cp d
    cp d
    cp e
    xor d
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    ld l, b
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld a, b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    sbc c
    sbc d
    xor c
    sbc d
    sbc d
    xor c
    xor c
    xor d
    sbc d
    xor c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    xor c
    sbc d
    xor b
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc b
    ld l, b
    sbc b
    adc c
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    adc c
    adc b
    adc b
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc d
    adc d
    adc d
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc b
    sbc c
    adc c
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld a, c
    adc b
    add a
    sbc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc c
    add a
    sub a
    adc c
    add a
    sbc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    ld h, a
    ld l, b
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    adc c
    adc b
    adc c
    add a
    sub a
    sbc b
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
    adc c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, c
    ld a, b
    add a
    add a
    sub a
    add a
    sub a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    db $76
    ld [hl], a
    add hl, hl
    adc c
    xor e
    xor e
    sbc d
    sbc b
    ld [hl], l
    ld d, e
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    ld h, e
    dec [hl]
    ld a, b
    sbc e
    call $ffef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    db $db
    xor c
    db $76
    db $e4
    ld [hl-], a
    ld hl, $0010
    ld bc, $2101
    inc hl
    ld b, l
    ld h, [hl]
    adc c
    xor d
    cp e
    db $ed
    rst $18
    ccf
    rst $28
    rst $28
    db $ed
    call c, $9abc
    adc b
    ld [hl], l
    ld h, l
    ld d, e
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    inc [hl]
    add h
    ld b, l
    ld h, [hl]
    add a
    sbc c
    xor d
    cp e
    call $dcbd
    call z, $cbdb
    cp d
    xor c
    sbc b
    or a
    db $76
    ld d, l
    ld h, h
    ld d, l
    dec [hl]
    inc [hl]
    inc [hl]
    ld b, h
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc e
    xor d
    ld e, e
    cp e
    res 7, e
    xor d
    cp d
    xor c
    adc c
    adc b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld h, h
    ld d, l
    ld d, l
    ld d, h
    sub [hl]
    ld d, l
    ld h, [hl]
    db $76
    adc b
    adc b
    sbc d
    adc c
    xor d
    xor d
    cp d
    xor d
    cp c
    xor d
    sbc c
    sbc b
    sbc b
    ld [hl], a
    add a
    ld d, a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc b
    ld l, c
    xor c
    xor c
    xor c
    xor c
    xor c
    sbc c
    sbc b
    sub a
    add a
    ld [hl], a
    add a
    ld h, a
    ld h, l
    db $76
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    add [hl]
    db $76
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    add a
    adc b
    adc b
    ld a, b
    sbc c
    adc b
    sbc c
    sbc b
    adc b
    sbc b
    adc c
    ld a, b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    add [hl]
    db $76
    add [hl]
    ld h, a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    adc c
    adc c
    adc b
    sub a
    adc c
    ld a, c
    sbc b
    adc b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld l, b
    adc c
    adc b
    adc c
    adc b
    ld a, c
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    adc c
    ld a, c
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    adc b
    add a
    ld a, b
    ld e, c
    ld e, e
    ld a, [hl-]
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add [hl]
    or e
    or h
    or [hl]
    ld a, c
    ld a, b
    ld a, c
    ld a, d
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, b
    add a
    add [hl]
    sub [hl]
    pop bc
    ldh a, [$c4]
    or h
    and [hl]
    adc b
    add a
    sbc b
    add a
    ld a, c
    ld c, d
    add [hl]
    adc b
    ld l, e
    ld l, b
    add [hl]
    sub [hl]
    and [hl]
    add h
    call nz, $a5b5
    or h
    xor b
    ld l, e
    dec sp
    ld e, c
    ld [hl], a
    adc b
    ld e, c
    add l
    adc b
    ld [hl], a
    and l
    and a
    sub [hl]
    add a
    add [hl]
    and h
    ld [hl], l
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, d
    ld c, e
    ld e, c
    ld l, b
    add [hl]
    and e
    jp $a6c4


    adc b
    sbc b
    add a
    ld l, c
    add [hl]
    adc b
    ld a, c
    ld l, c
    ld l, b
    add a
    add [hl]
    sub h
    jp $a5a6


    adc b
    add a
    add l
    and [hl]
    add a
    adc b
    ld e, e
    dec sp
    ld l, c
    ld c, d
    ld l, d
    ld h, a
    add [hl]
    and h
    and [hl]
    sub [hl]
    add a
    adc b
    and [hl]
    and l
    adc c
    ld l, d
    ld e, e
    ld c, e
    ld e, e
    ld c, d
    ld l, c
    ld h, a
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub h
    or l
    adc b
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    ld e, c
    ld l, c
    ld l, c
    ld a, b
    add a
    ld [hl], a
    sub a
    add a
    sub [hl]
    add a
    add a
    add a
    adc b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld h, a
    sub a
    ld [hl], a
    sub a
    add a
    adc b
    ld a, d
    ld e, c
    ld l, c
    ld e, c
    ld l, c
    ld a, b
    add [hl]
    adc b
    ld l, b
    adc b
    sbc c
    add a
    ld l, c
    ld [hl], a
    adc b
    ld l, c
    ld l, d
    ld e, c
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld l, c
    ld l, c
    ld a, b
    db $76
    add [hl]
    and l
    and [hl]
    adc b
    ld a, c
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld l, b
    adc b
    add a
    add a
    ld a, b
    add [hl]
    or l
    and [hl]
    sub a
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    ld l, d
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld [hl], a
    sub a
    ld l, c
    ld [hl], a
    adc c
    ld [hl], a
    sub [hl]
    sub a
    add a
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    ld l, b
    ld l, b
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    add [hl]
    sub [hl]
    add a
    add a
    add [hl]
    sub a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld e, c
    ld a, b
    ld a, b
    adc b
    adc b
    add [hl]
    sub a
    add a
    add a
    add [hl]
    sub a
    sub a
    add a
    add a
    ld [hl], a
    ld a, c
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    sub [hl]
    add a
    add a
    ld a, b
    ld l, c
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, c
    ld a, c
    ld l, b
    ld [hl], a
    add a
    sub a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
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
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, c
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    adc b
    ld l, c
    ld l, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    ld [hl], a
    ld h, a
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    adc b
    ld l, b
    ld a, b
    adc b
    ld c, d
    ld a, b
    ld l, d
    ld a, b
    ld a, b
    add a
    adc b
    add a
    and e
    or l
    and [hl]
    ld l, d
    ld e, d
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld e, e
    ld e, c
    ld l, b
    ld a, c
    add [hl]
    add a
    add [hl]
    or e
    or a
    add [hl]
    sub [hl]
    ld a, b
    adc b
    add a
    ld a, b
    ld l, e
    dec e
    ld e, c
    add hl, sp
    ld l, d
    ld [hl], l
    and [hl]
    sbc b
    ld a, b
    ld [hl], a
    sub a
    ld a, d
    ld h, [hl]
    and l
    sub a
    adc c
    ld e, e
    inc a
    dec a
    ld a, e
    ld l, c
    ld l, b
    ld a, d
    ld a, [hl-]
    ld l, d
    ld e, c
    add h
    or h
    or h
    call nz, Call_00e_7988
    ld e, d
    ld l, c
    ld l, c
    ld e, b
    ld a, c
    ld l, d
    ld l, b
    ld a, c
    ld c, d
    ld h, [hl]
    or e
    or l
    sub [hl]
    sub a
    add a
    add a
    ld a, b
    add [hl]
    ld a, d
    ld a, [bc]
    ld l, d
    ld h, [hl]
    and a
    ld e, h
    ld d, a
    and d
    ldh [$d5], a
    and [hl]
    ld a, c
    ld l, b
    add a
    sub [hl]
    sub a
    ld c, a
    ld e, h
    ld l, d
    ld c, d
    ld l, b
    ld a, b
    add a
    sub [hl]
    add a
    sub a
    ld a, b
    ld l, c
    ld [hl], h
    or h
    sbc c
    dec a
    dec sp
    ld l, d
    ld e, h
    dec hl
    ld a, c
    ld c, h
    inc l
    ld l, b
    add h
    jp $c3d3


    db $d3
    or [hl]
    ld a, d
    ld l, c
    ld a, c
    xor b
    ld [hl], a
    add a
    sub [hl]
    ld l, d
    ld e, c
    ld l, c
    db $76
    and l
    and e
    db $d3
    call nz, $c5c2
    and [hl]
    add a
    sub h
    sbc b
    ld a, b
    add a
    ld l, d
    ld e, b
    ld a, d
    ld h, l
    call nz, $87a7
    adc b
    ld l, b
    ld a, b
    add h
    db $e3
    ld l, b
    ld l, d
    ld c, d
    ld e, c
    ld l, d
    ld e, c
    ld a, c
    db $76
    sub a
    add a
    add l
    sbc b
    db $76
    and l
    sub [hl]
    and [hl]
    ld c, d
    ld e, d
    ld d, a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub l
    or l
    sub [hl]
    adc b
    sub e
    db $d3
    jp Jump_00e_79b7


    adc c
    ld e, c
    ld [hl], a
    ld a, c
    db $76
    ld a, d
    ld h, a
    sub l
    and l
    sub [hl]
    and h
    jp nc, $96c5

    sub a
    sub a
    adc b
    ld l, b
    ld [hl], a
    adc c
    ld c, h
    ld c, h
    dec sp
    db $76
    sub [hl]
    sub a
    db $76
    add [hl]
    and l
    and h
    call nz, $97d5
    adc b
    ld e, c
    ld a, d
    ld c, d
    ld e, e
    dec sp
    ld a, b
    ld e, d
    ld l, b
    ld [hl], a
    and l
    and l
    sub [hl]
    and h
    jp nz, Jump_00e_79a6

    ld l, c
    ld l, b
    adc b
    add a
    ld a, b
    adc b
    ld c, e
    ld e, c
    ld l, b
    db $76
    adc b
    sub e
    pop de
    ld h, a
    ld e, c
    ld a, b
    ld a, c
    ld l, d
    db $76
    ld a, d
    ld c, e
    ld c, e
    ld c, h
    ld e, b
    sbc b
    ld l, b
    sub [hl]
    sub a
    ld a, b
    xor e
    ld c, d
    ld e, e
    ld e, b
    sub a
    add a
    ld a, e
    dec l
    inc a
    ld c, d
    ld c, e
    ld e, e
    ld d, a
    or [hl]
    ld [hl], a
    and h
    sub [hl]
    adc b
    ld l, c
    ld l, b
    add a
    ld a, b
    ld l, e
    inc a
    ld c, e
    ld e, c
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    ld e, b
    add [hl]
    sub [hl]
    and h
    and [hl]
    sub [hl]
    sub a
    ld l, c
    ld l, d
    dec sp
    ld c, c
    ld a, c
    ld e, e
    dec l
    ld c, b
    add a
    sub [hl]
    and [hl]
    ld [hl], a
    ld [hl], a
    ld a, d
    ld h, [hl]
    sub a
    adc b
    ld l, d
    ld c, d
    ld h, a
    ld a, e
    inc l
    ld c, d
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, d
    ld l, c
    ld l, b
    sub [hl]
    ld a, b
    sub l
    sbc b
    ld e, e
    ld e, e
    add hl, sp
    adc b
    ld l, b
    ld [hl], a
    sub l
    sub a
    ld h, a
    and h
    or h
    and a
    add l
    or e
    or [hl]
    ld l, d
    ld e, d
    ld l, c
    ld h, a
    add [hl]
    sub l
    or [hl]
    adc c
    ld l, c
    and a
    and h
    and [hl]
    and h
    jp $a8b5


    ld l, b
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    ld a, d
    ld c, e
    ld h, [hl]
    adc b
    add h
    push bc
    add a
    add a
    sub [hl]
    sub a
    ld a, c
    ld e, b
    add a
    sub [hl]
    adc d
    inc a
    inc l
    ld c, e
    ld c, d
    and [hl]
    and e
    add $77
    and e
    jp $87a8


    add [hl]
    sub [hl]
    sub a
    ld l, d
    ld e, c
    ld l, c
    ld l, c
    add [hl]
    ld h, l
    sub a
    ld a, c
    ld h, [hl]
    or l
    and l
    jp nz, $c4c3

    sbc b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld e, d
    ld h, [hl]
    sub [hl]
    sub [hl]
    and [hl]
    sub [hl]
    sub l
    xor b
    ld e, c
    adc b
    ld l, b
    ld a, c
    ld e, d
    ld a, b
    ld l, e
    dec sp
    ld l, d
    db $76
    add a

Jump_00e_4773:
    add [hl]
    and l
    or h
    and [hl]
    ld a, c
    db $76
    and [hl]
    ld a, b
    sub [hl]
    adc b
    ld l, c
    ld e, h
    dec sp
    ld a, b
    add h
    or [hl]
    and h
    add a
    ld [hl], a
    sub l
    and l
    sub [hl]
    and l
    and h
    and a
    ld e, d
    ld e, d
    ld e, e
    ld c, c
    ld l, b
    db $76
    sbc b
    ld l, d
    ld e, c
    add a
    and e
    or [hl]
    and h
    and [hl]
    add [hl]
    adc b
    ld e, d
    ld e, e
    ld c, h
    ld a, [hl-]
    adc c
    ld l, c
    ld l, d
    ld e, d
    ld e, b
    ld a, c
    ld d, a
    sub [hl]
    and l
    sub [hl]
    sub [hl]
    sbc b
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld h, a
    ld l, d
    ld c, e
    ld e, e
    ld c, c
    add a
    sub h
    jp $96a6


    sub l
    and a
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld c, d
    ld h, [hl]
    sub a
    adc b
    ld [hl], a
    sbc b
    ld l, b
    ld a, b
    add a
    add a
    sub h
    or l
    sub [hl]
    add a
    adc c
    ld c, e
    ld c, e
    dec sp
    ld c, e
    ld e, c
    ld a, b
    ld l, d
    ld h, [hl]
    and [hl]
    add [hl]
    and [hl]
    adc b
    ld [hl], a
    ld a, d
    ld e, c
    ld l, c
    ld e, e
    ld a, h
    ld c, c
    ld a, b
    ld a, c
    ld e, e
    dec sp
    ld l, b
    add a
    sub [hl]
    and e
    or l
    and h
    sbc b
    db $76
    or [hl]
    ld l, b
    and a
    add a
    ld l, d
    ld c, e
    ld c, d
    ld l, b
    ld [hl], a
    sub [hl]
    sub [hl]
    sub a
    add a
    add a
    sub h
    or h
    or l
    and h
    add a
    ld a, b
    ld a, b
    ld l, c
    ld a, c
    ld l, c
    ld h, a
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    sub [hl]
    sub a
    add l
    or [hl]
    sub a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, d
    ld e, c
    adc b
    ld [hl], a
    adc b
    ld e, d
    ld l, b
    ld l, c
    ld h, a
    add a
    sub [hl]
    adc b
    ld a, b
    sub a
    ld a, b
    add [hl]
    add a
    add a
    sub a
    ld e, d
    ld l, c
    ld [hl], a
    sub l
    and h
    jp $b4b6


    sub [hl]
    and h
    sub a
    ld l, d
    ld e, d
    ld h, a
    add a
    ld a, c
    ld d, a
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    and l
    or h
    and l
    sbc b
    ld a, b
    sub [hl]
    sbc b
    ld e, d
    ld l, d
    ld c, c
    ld a, b
    ld [hl], a
    sub [hl]
    adc c
    ld h, a
    sub a
    sub [hl]
    and h
    sub a
    sub [hl]
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld a, c
    ld e, c
    ld l, c
    ld l, e
    ld c, d
    ld e, d
    ld l, b
    add a
    add l
    and h
    or l
    ld d, a
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    adc b
    ld a, b
    ld l, c
    ld e, d
    ld e, b
    ld a, c
    add a
    add a
    add l
    and l
    adc c
    adc b
    add a
    add a
    add a
    sub [hl]
    adc b
    ld l, c
    ld e, d
    ld l, c
    ld l, c
    ld a, c
    ld h, a
    sub a
    add a
    adc b
    ld l, b
    and a
    ld a, b
    ld [hl], a
    sub a
    ld a, d
    ld l, d
    inc a
    ld c, e
    ld e, c
    ld l, c
    ld a, b
    add a
    ld a, c
    ld l, c
    ld a, b
    add l
    and a
    ld a, b
    add a
    add a
    ld a, c
    ld a, b
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld e, d
    ld l, b
    db $76
    and [hl]
    and l
    sub l
    sbc b
    ld a, b
    add a
    sub a
    adc c
    ld e, d
    ld e, d
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    adc b
    ld l, d
    ld l, b
    add [hl]
    ld h, [hl]
    adc b
    ld [hl], l
    and a
    add [hl]
    sub a
    add a
    ld a, b
    ld e, e
    ld c, e
    ld l, c
    ld e, d
    ld l, d
    ld e, d
    ld [hl], a
    adc b
    ld a, c
    ld l, b
    add a
    add a
    add a
    add a
    ld a, b
    ld e, d
    ld l, b
    add a
    ld a, b
    ld l, c
    ld l, c
    ld l, c
    ld e, d
    ld l, c
    sub [hl]
    and [hl]
    sub a
    sub h
    or [hl]
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    ld a, b
    adc b
    add a
    sub l
    sub [hl]
    and h
    and [hl]
    adc c
    ld l, b
    add a
    ld a, b
    sub a
    add [hl]
    sub a
    ld a, c
    ld a, c
    ld l, c
    ld l, b
    ld [hl], a
    sub l
    and [hl]
    add [hl]
    adc b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld l, c
    ld l, d
    ld c, d
    ld e, c
    ld l, d
    ld c, c
    ld a, b
    ld h, l
    sub a

Jump_00e_4902:
    ld [hl], a
    sub [hl]
    add a
    and l
    sub [hl]
    and [hl]
    sub [hl]
    adc b
    sub [hl]
    sub a
    ld a, d
    ld c, e
    ld e, c
    ld l, c
    ld h, a
    ld [hl], a
    add a
    add a
    sub [hl]
    sub h
    and l
    and [hl]
    adc b
    add l
    sub a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    db $76
    and [hl]
    sub a
    add [hl]
    add a
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    ld a, c
    ld e, d
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    sub a
    add [hl]
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    and l
    and [hl]
    sub a
    ld l, d
    ld l, c
    ld a, b
    ld l, c
    ld a, b
    ld b, l
    and a
    ld a, b
    add a
    adc b
    add [hl]
    and l
    or h
    call nz, Call_00e_7997
    ld l, b
    adc b
    add a
    ld a, b
    ld l, d
    ld e, c
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    db $76
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    add l
    and [hl]
    ld a, c
    ld a, b
    ld l, c
    ld e, d
    ld l, d
    ld e, c
    ld a, c
    ld l, c
    ld l, c
    db $76
    and a
    ld [hl], a
    add a
    sub a
    add a
    sub [hl]
    add a
    sub [hl]
    adc b
    ld a, c
    adc b
    ld l, b
    ld a, b
    ld l, d
    ld l, c
    ld h, a
    adc c
    ld h, a
    sub [hl]
    sub a
    sub l
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld h, a
    add a
    ld a, c
    ld e, d
    ld l, d
    ld c, c
    add a
    ld a, b
    ld a, c
    ld l, c
    ld l, b
    adc b
    ld [hl], a
    sub a
    adc b
    adc b
    ld a, c
    ld a, b
    ld l, d
    ld l, c
    ld [hl], a
    add [hl]
    sub a
    ld [hl], a
    add a
    add a
    ld a, c
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    ld l, b
    ld l, d
    ld e, d
    ld l, b
    adc b
    ld a, b
    db $76
    sub [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub l
    sub [hl]
    sub [hl]
    and l
    sbc b
    ld l, d
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    and l
    sub [hl]
    and l
    sub a
    ld a, c
    adc b
    ld a, b
    adc b
    ld l, b
    ld a, c
    ld e, c
    ld l, c
    ld l, c
    ld l, b
    ld a, c
    ld l, b
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld c, c
    ld l, c
    ld a, b
    add a
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    add l
    or [hl]
    add a
    add l
    and [hl]
    and l
    adc b
    ld a, b
    add a
    sub [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    add l
    and l
    sub a
    add a
    add a
    ld a, b
    ld l, c
    ld l, b
    add [hl]
    add a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    add a
    add a
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld l, d
    ld l, c
    ld l, c
    ld e, c
    ld a, b
    db $76
    sub [hl]
    sub [hl]
    add a
    sub [hl]
    add a
    sbc b
    ld a, b
    add a
    add a
    sub a
    ld a, b
    ld a, c
    ld l, c
    ld e, c
    ld [hl], a
    ld [hl], a
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    and l
    add a
    sub [hl]
    sub a
    add [hl]
    and a
    ld l, d
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    sub a
    add a
    adc b
    add a
    sub a
    adc b
    ld l, b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld l, d
    ld e, d
    ld c, d
    ld l, b
    adc b
    ld a, b
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    sub a
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    ld l, b
    adc b
    ld l, b
    ld h, a
    add a
    add a
    add a
    add a
    add a
    adc b
    adc b
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld e, d
    ld l, b
    ld a, b
    ld l, c
    ld l, b
    ld l, d
    ld l, b
    sub [hl]
    sub a
    add a
    add [hl]
    sub a
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld l, c
    ld l, d
    ld c, d
    ld l, c
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    sub [hl]
    adc b
    db $76
    sub a
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    add [hl]
    db $76
    add a
    add a
    add [hl]
    sub [hl]
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld e, c
    ld [hl], a
    adc b
    add a
    sub [hl]
    adc b
    adc b
    ld l, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    sub [hl]
    sub [hl]
    add a
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub l
    and [hl]
    sub [hl]
    adc b
    add [hl]
    sub [hl]
    and [hl]
    sub l
    sub [hl]
    sub a
    adc b
    add a
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    add a
    add a
    sub [hl]
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    add a
    ld a, b
    adc b
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    sub [hl]
    add [hl]
    add a
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    sbc b
    ld a, b
    ld l, c
    ld l, b
    add [hl]
    sub [hl]
    add a
    sub [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add [hl]
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    add [hl]
    sub a
    sub [hl]
    and [hl]
    add a
    sub a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld l, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    sub a
    ld a, b
    add a
    adc b
    ld a, b
    ld l, c
    ld a, c
    ld a, c
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    sub [hl]
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    sub [hl]
    sbc b
    ld l, b
    adc b
    add a
    add a
    add a
    adc b
    adc b
    ld a, c
    ld a, b
    ld l, c
    ld l, c
    ld e, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    ld a, b
    ld l, b
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    ld l, b
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld e, c
    ld a, b
    add l
    and l
    sub [hl]
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld l, b
    db $76
    sub [hl]
    add a
    add a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    ld a, c
    ld l, c
    ld a, c
    ld l, b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld l, b
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add [hl]
    sub [hl]
    sub [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, c
    ld h, a
    sub a
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    and [hl]
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    adc b
    add [hl]
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    adc b
    db $76
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
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
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    rst $00
    ld h, l
    ld b, e
    ld [hl-], a
    inc hl
    ld b, h
    ld h, [hl]
    ld h, a
    adc b
    sbc e
    xor l
    sbc $ef
    rst $38
    rst $38
    db $fd
    ei
    sbc b
    db $76
    ld b, h
    ld hl, $0010
    nop
    nop
    inc hl
    ld b, l
    ld l, b
    xor d
    cp l
    sbc $ff
    rst $08
    cp $dd
    cp d
    sbc c
    ld [hl], l
    ld b, e
    ld sp, $0120
    nop
    ld [hl+], a
    inc h
    ld b, a
    ld a, b
    xor d
    ld l, h
    db $dd
    xor $fe
    db $ed
    db $db
    jp z, Jump_00e_7588

    ld d, e
    ld b, d
    jr nz, jr_00e_4cae

    ld hl, $4313
    ld d, $88
    xor d
    cp h
    db $dd
    sbc $de
    call $aacb
    adc b
    ld h, [hl]
    ld b, h
    inc hl

jr_00e_4cae:
    ld [hl+], a
    ld [de], a
    inc sp
    inc hl
    ld b, l
    ld d, a
    adc c
    xor e
    cp h
    db $dd
    db $dd
    db $dd
    call c, $a9bb
    adc b
    ld h, l
    ld d, h
    add d
    ld [hl+], a
    ld [hl+], a
    inc sp
    inc sp
    ld b, [hl]
    ld [hl], a
    sbc c
    xor e
    cp h
    call c, $ccdd
    res 7, d
    sbc c
    or [hl]
    ld h, l
    ld b, h
    inc sp
    inc hl
    ld [hl-], a
    inc sp
    ld b, h
    ld d, l
    ld [hl], a
    adc d
    xor d
    cp h
    call z, $cbcd
    res 7, d
    sbc b
    ld [hl], a
    ld h, l
    ld d, e
    ld b, e
    inc sp
    inc hl
    inc [hl]
    ld d, l
    ld d, [hl]
    ld a, b
    adc d
    xor e
    cp e
    sbc h
    set 1, h
    cp e
    xor d
    adc b
    db $76
    ld h, l
    ld b, l
    ld b, e
    inc [hl]
    ld [hl-], a
    ld b, h
    ld d, h
    db $76
    ld a, b
    ld c, d
    xor d
    cp h
    cp e
    res 7, e
    cp d
    xor b
    sbc b
    add [hl]
    ld d, l
    ld d, h
    inc [hl]
    inc [hl]
    ld b, h
    dec [hl]
    ld [hl], $66
    add a
    xor c
    xor d
    cp e
    cp e
    res 7, d
    cp c
    xor c
    adc b
    db $76
    ld h, [hl]
    ld b, h
    ld b, l
    ld d, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, c
    adc d
    sbc d
    cp h
    cp h
    cp e
    cp d
    xor d
    sbc b
    sub a
    db $76
    sub l
    ld d, h
    dec [hl]
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld a, b
    adc c
    sbc d
    sbc e
    cp e
    cp e
    cp e
    xor d
    cp c
    cp b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, h
    dec [hl]
    ld b, l
    ld b, [hl]
    ld h, [hl]
    ld l, b
    adc b
    xor d
    sbc e
    cp d
    cp e
    sbc d
    cp c
    xor c
    adc c
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld d, h
    ld d, [hl]
    ld d, a
    add a
    sbc b
    sbc d
    ld a, e
    xor d
    cp d
    cp d
    sbc d
    adc c
    add a
    add a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld b, h
    ld d, l
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld l, b
    adc c
    sbc d
    sbc d
    xor d
    cp d
    xor d
    xor d
    adc c
    adc b
    ld h, a
    db $76
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor d
    xor d
    cp d
    sbc d
    sbc d
    adc b
    adc b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    sbc d
    xor d
    xor d
    xor d
    sbc d
    xor c
    adc b
    add a
    sub [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc d
    xor d
    xor d
    sbc d
    xor b
    adc b
    add a
    db $76
    ld [hl], l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc c
    sbc d
    xor c
    sbc d
    sbc d
    sbc d
    adc c
    sub a
    ld a, b
    db $76
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, a
    ld l, b
    ld [hl], a
    adc b
    ld l, c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    ld h, a
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    xor b
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    adc c
    xor c
    sbc c
    sbc d
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    adc c
    adc b
    sbc d
    sbc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    db $76
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    ld a, b
    add a
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc d
    adc b
    sbc c
    adc c
    sbc c
    adc b
    adc b
    add a
    ld h, a
    ld h, a
    db $76
    ld d, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld l, b
    adc c
    sbc c
    sbc b
    sbc c
    sbc d
    adc c
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    sub a
    sbc b
    adc c
    sbc c
    sbc d
    adc c
    adc b
    add a
    add a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], l
    ld h, a
    db $76
    db $76
    ld a, b
    ld [hl], a
    adc c
    adc b
    adc c
    sbc c
    adc c
    adc c
    adc b
    add a
    add a
    ld [hl], a
    sub [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    add a
    add a
    sbc b
    adc b
    sbc c
    adc d
    adc b
    sbc b
    sbc b
    adc b
    ld a, b
    add a
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc c
    sbc c
    adc c
    adc b
    sbc c
    add a
    adc b
    add a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    sbc b
    sbc c
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld l, b
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    adc c
    adc b
    ld a, b
    add a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    add a
    add a
    ld a, b
    adc b
    adc c
    adc b
    adc c
    sbc b
    adc c
    adc b
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sub a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    sub a
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc c
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld a, c
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sub a
    adc b
    ld a, c
    adc b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld a, b
    ld h, a
    db $76
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc c
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    ld a, c
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc b
    ld a, b
    add [hl]
    db $76
    ld d, h
    ld b, e
    inc hl
    ld [hl+], a
    ld [de], a
    ld de, $3422
    ld b, h
    db $76
    adc b
    ld c, c
    cp e
    call $ffdd
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $ed
    res 5, d
    xor b
    ld h, a
    ld h, l
    jp Jump_000_2132


    db $10
    ld de, $0001
    ld [de], a
    ld [de], a
    inc [hl]
    ld b, h
    ld h, [hl]
    ld [hl], a
    adc c
    xor d
    call z, $de3d
    xor $ee
    xor $ee
    db $dd
    call c, $babb
    sbc c
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, e
    inc sp
    pop de
    ld [hl+], a
    ld hl, $2222
    ld [hl-], a
    ld b, e
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    sbc d
    cp d
    cp l
    call z, $2edd
    sbc $de
    call $cacc
    xor d
    xor c
    adc b
    db $76
    ld d, l
    ld d, e
    ld b, e
    inc sp
    ld [hl+], a
    ld [hl-], a
    jp nc, Jump_000_2333

    ld b, e
    ld d, l
    ld d, l
    db $76
    adc b
    adc d
    sbc e
    xor e
    call z, $dccc
    db $dd
    call c, $cc3c
    jp z, $99ba

    adc b
    add a
    ld d, [hl]
    ld b, l
    ld d, h
    inc [hl]
    inc sp
    inc sp
    ld [hl-], a
    inc sp
    inc [hl]
    and h
    ld b, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc d
    xor d
    res 7, h
    call z, $cccd
    set 1, e
    cp h
    ld e, d
    xor c
    sbc b
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, e
    inc sp
    inc sp
    inc sp
    inc [hl]
    ld b, e
    ld d, l
    ld d, [hl]
    add a
    ld l, b
    ld a, c
    adc d
    xor c
    xor e
    cp e
    set 1, h
    call z, $cbcb
    res 7, d
    sbc d
    adc b
    add a
    db $76
    ld h, l
    ld d, l
    ld b, l
    inc [hl]
    inc [hl]
    ld [hl-], a
    inc sp
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld a, b
    ld e, b
    sbc d
    xor d
    xor e
    call z, $cbbc
    set 1, e
    xor e
    xor e
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld h, a
    or [hl]
    ld d, l
    ld b, h
    ld b, e
    inc sp
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    sbc b
    sbc c
    xor d
    ld c, d
    xor h
    cp d
    set 1, h
    cp e
    jp z, $aaaa

    sbc b
    sub a
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    and h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    sbc b
    sbc d
    xor d
    cp d
    cp h
    dec sp
    res 5, h
    xor e
    xor e
    xor d
    adc c
    adc b
    add a
    ld [hl], a
    ld h, l
    ld h, l
    ld d, h
    ld b, h
    ld d, e
    ld b, l
    and h
    ld d, h
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld l, b
    ld a, b
    adc c
    sbc c
    xor d
    xor e
    xor e
    cp d
    cp e
    cp e
    ld e, e
    xor d
    cp c
    sbc d
    adc c
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    ld b, l
    and h
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc c
    xor e
    xor d
    cp e
    cp d
    cp e
    xor d
    cp d
    xor c
    ld l, c
    sbc c
    adc b
    ld a, b
    ld h, a
    ld h, l
    ld h, l
    ld d, h
    ld h, h
    ld d, h
    ld d, h
    ld d, h
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    adc b
    ld [hl], a
    adc b
    adc c
    sbc b
    xor d
    xor c
    cp d
    cp d
    xor d
    cp d
    xor d
    xor d
    sbc c
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld b, l
    ld d, h
    ld h, l
    ld h, l
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    sbc c
    sbc d
    sbc d
    xor d
    cp d
    cp d
    xor d
    cp c
    xor d
    sbc c
    sbc c
    adc c
    adc b
    ld l, b
    ld h, [hl]
    sub l
    ld h, l
    ld h, l
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld a, b
    ld a, c
    adc c
    sbc c
    ld e, d
    sbc d
    xor e
    xor d
    xor d
    xor d
    xor c
    xor c
    sbc c
    adc b
    adc b
    ld a, b
    db $76
    db $76
    ld h, [hl]
    ld d, l
    and l
    ld d, l
    ld d, l
    ld d, h
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    sbc c
    xor c
    xor c
    xor d
    ld l, d
    sbc d
    sbc d
    xor c
    sbc d
    sbc b
    sbc b
    sub a
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, h
    sub l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld l, b
    ld h, a
    adc b
    adc c
    adc c
    xor c
    sbc c
    xor d
    xor d
    xor c
    xor d
    ld e, d
    xor c
    sbc b
    xor b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    add a
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    ld a, b
    adc c
    sbc b
    xor c
    xor c
    xor c
    xor d
    sbc d
    sbc d
    sbc c
    sbc c
    ld l, b
    sbc b
    ld a, b
    adc b
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    sbc c
    adc c
    xor c
    xor c
    xor c
    xor c
    xor c
    xor c
    sbc c
    sbc b
    adc c
    adc b
    add a
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    sbc b
    adc c
    sbc d
    sbc c
    xor d
    sbc c
    sbc c
    sbc c
    xor b
    sbc c
    sbc b
    add a
    add a
    ld a, b
    ld h, a
    sub [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, a
    ld h, l
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    ld l, c
    sbc d
    adc d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, l
    sub [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    xor b
    sbc c
    ld l, c
    sbc c
    sbc c
    xor c
    sbc b
    adc c
    adc b
    add a
    add [hl]
    add a
    db $76
    db $76
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    ld a, b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    ld a, c
    sbc b
    sbc b
    sub a
    adc b
    add a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc c
    adc b
    sbc b
    xor c
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    ld a, b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sbc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    adc b
    adc b
    add a
    add a
    ld a, b
    db $76
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    adc b
    ld a, b
    sbc b
    adc c
    adc c
    sbc c
    adc c
    xor c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    sub [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld l, c
    adc c
    adc c
    sbc c
    adc c
    sbc b
    sbc c
    ld a, c
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    sub [hl]
    db $76
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc c
    adc b
    sbc c
    adc b
    ld l, c
    adc c
    adc c
    adc b
    adc c
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld h, a
    ld a, b
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    add a
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc c
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    add [hl]
    add a
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sbc b
    adc c
    adc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, c
    adc b
    adc b
    sbc b
    adc c
    ld a, c
    sbc b
    adc b
    sbc b
    adc c
    ld a, b
    sub a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    add a
    add a
    add a
    add a
    add a
    sub a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld l, b
    adc c
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    sub a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    adc c
    adc b
    ld a, b
    sub a
    adc c
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, c
    adc b
    adc c
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    adc b
    sub a
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    ld [hl], a
    db $76
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
    add a
    adc b
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    adc c
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    add [hl]
    add a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    adc b
    sub a
    adc c
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc b
    ld a, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    add [hl]
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld h, a
    add a
    sbc b
    adc b
    adc b
    sbc b
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    adc c
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld a, b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    rlca
    sbc c
    sbc c
    xor c
    cp d
    cp e
    cp h
    res 7, e
    xor d
    sbc c
    db $76
    ld d, h
    ld [hl+], a
    nop
    nop
    add b
    nop
    nop
    stop
    db $10
    ld bc, $1101
    ld de, $2312
    ld [hl-], a
    ld b, h
    ld h, l
    ld d, a
    ret c

    sbc b
    xor e
    cp h
    call z, $eede
    xor $fe
    xor $ef
    rst $28
    xor $de
    sbc $dd
    ld l, h
    res 7, c
    xor b
    adc b
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, e
    ld b, l
    ld b, h
    ld h, l
    add $66
    ld [hl], a
    adc b
    adc b
    sbc c
    xor c
    cp d
    cp d
    cp e
    res 7, h
    call z, $cddc
    call $dc2c
    res 7, e
    cp e
    cp d
    xor d
    sbc c
    adc b
    ld a, b
    ld h, l
    ld d, l
    ld b, e
    inc sp
    ld [hl+], a
    ld hl, $11c1
    ld hl, $2111
    ld [hl+], a
    inc sp
    inc sp
    ld b, h
    ld d, l
    ld d, [hl]
    ld [hl], a
    adc b
    xor d
    xor d
    cp d
    sbc h
    call z, $dddc
    call c, $ccdd
    set 1, h
    cp e
    cp e
    xor d
    xor d
    sbc d
    xor b
    sbc c
    ld b, a
    add a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, e
    ld b, e
    ld b, e
    ld [hl-], a
    ld sp, $2221
    ld [hl+], a
    ld [hl-], a
    inc sp
    or e
    ld d, h
    ld h, l
    ld h, a
    adc b
    adc c
    sbc d
    xor d
    xor e
    cp e
    cp h
    cp h
    cp h
    cp h
    cp e
    cp e
    ld e, e
    cp e
    xor e
    sbc d
    xor b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    and h
    ld b, h
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    ld a, c
    sbc c
    sbc d
    ld a, e
    cp e
    cp e
    call z, $bbbb
    cp e
    cp e
    xor d
    xor d
    sbc d
    sbc c
    sbc b
    sub a
    sub a
    ld [hl], a
    db $76
    db $76
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld b, [hl]
    ld d, l
    ld d, a
    ld d, [hl]
    or a
    ld [hl], a
    add a
    sbc c
    adc c
    sbc c
    xor d
    cp e
    xor e
    cp e
    cp e
    xor e
    cp e
    xor d
    xor d
    cp d
    ld a, [hl-]
    cp d
    xor d
    xor e
    xor e
    sbc d
    xor c
    sbc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    inc [hl]
    and e
    ld [hl-], a
    ld b, h
    inc [hl]
    dec [hl]
    ld b, h
    ld b, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    add a
    adc b
    sbc d
    sbc d
    sbc e
    xor e
    cp e
    xor e
    cp d
    cp e
    cp d
    cp d
    xor d
    xor e
    xor d
    xor d
    xor d
    cp d
    cp d
    sbc d
    ld e, b
    sbc b
    sub a
    add a
    db $76
    ld h, l
    ld h, h
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    or l
    ld d, l
    ld d, l
    ld h, l
    ld [hl], a
    ld [hl], a
    adc c
    adc b
    sbc c
    sbc d
    xor c
    xor c
    cp d
    xor d
    xor d
    xor d
    ld e, e
    xor e
    cp d
    xor e
    sbc d
    xor c
    sbc c
    sbc b
    sub a
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, [hl]
    add l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    cp d
    cp d
    xor e
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    ld e, b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, [hl]
    ld b, l
    ld d, h
    ld b, l
    ld d, l
    ld b, l
    ld d, l
    ld h, l
    or l
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    sbc c
    sbc d
    xor d
    cp d
    xor e
    xor e
    ld l, e
    xor e
    xor e
    sbc d
    xor d
    xor c
    sbc c
    xor c
    adc c
    sbc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, a
    ld h, l
    ld h, a
    ld [hl], a
    ld h, a
    and a
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    sbc c
    xor c
    sbc c
    xor c
    xor c
    xor d
    xor d
    xor d
    cp d
    xor c
    ld l, d
    xor c
    sbc c
    sbc c
    adc b
    ld a, c
    ld [hl], a
    db $76
    db $76
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
    sub [hl]
    ld h, l
    ld h, l
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    sbc c
    sbc b
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    sbc c
    adc b
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld a, b
    sub a
    adc b
    adc b
    adc b
    sbc b
    sbc d
    adc d
    sbc d
    sbc d
    sbc d
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    ld e, b
    sbc b
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc c
    adc c
    ld a, c
    sbc c
    xor c
    adc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    sbc b
    adc c
    adc b
    adc c
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add [hl]
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc c
    sbc c
    ld a, d
    adc c
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    sbc b
    sbc b
    adc b
    adc b
    sbc b
    sbc b
    adc b
    adc c
    adc b
    sbc b
    adc c
    ld a, c
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    add [hl]
    add a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld h, a
    sub [hl]
    ld [hl], a
    ld h, a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, c
    adc c
    adc c
    sbc c
    adc c
    adc c
    sbc c
    ld a, c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    ld a, b
    adc b
    add a
    adc c
    adc b
    adc c
    adc b
    xor b
    sbc c
    adc c
    adc c
    sbc c
    adc b
    sbc c
    ld l, b
    adc c
    adc c
    adc b
    sbc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld a, b
    db $76
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    adc b
    add a
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    ld l, b
    add a
    sbc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    db $76
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld a, c
    add a
    ld a, b
    adc b
    sbc b
    sbc c
    sbc b
    sbc b
    sbc c
    adc c
    adc b
    sbc c
    adc b
    adc c
    sbc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    ld l, b
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    db $76
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
    sbc c
    adc b
    adc b
    sbc b
    add a
    sbc b
    ld a, c
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
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
    db $76
    add a
    ld h, a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    adc b
    add a
    ld a, c
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
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
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld a, c
    ld a, b
    adc b
    adc b
    adc b
    adc c
    ld a, c
    add a
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    add a
    sbc b
    adc b
    ld a, c
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc c
    adc b
    ld a, b
    sub a
    adc b
    adc b
    adc b
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld l, b
    ld h, a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    sub a
    adc b
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
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b

jr_00e_585a:
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    add a
    add a
    add a
    db $76
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    add hl, sp
    adc c
    sbc d
    xor c
    xor d
    xor e
    cp d
    cp e
    set 1, e
    cp d
    xor c
    sbc b
    add a
    ld d, [hl]
    ld d, h
    ld [hl-], a
    jr nz, jr_00e_58b3

    nop
    nop
    nop
    stop
    ld de, $2010
    ld hl, $2221
    inc hl
    ld [hl+], a
    db $f4
    ld b, e
    ld d, h

jr_00e_58b3:
    ld d, l
    ld h, [hl]
    ld d, a
    ld [hl], a
    adc b
    sbc d
    xor e
    cp h
    call $eedd
    sbc $ee
    adc [hl]
    rst $38
    cp $ff
    cp $fe
    xor $de
    db $ec
    db $dd
    db $db
    call z, $aabb
    xor c
    xor c
    jr c, jr_00e_585a

    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, e
    ld b, h
    ld b, h
    ld b, e
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    inc [hl]
    or e
    ld b, e
    ld b, h
    ld b, e
    ld b, l
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    add a
    sbc b
    sbc d
    sbc d
    xor d
    cp d
    cp e
    cp e
    set 1, h
    call z, $cbbb
    cp h
    cp e
    cp e
    xor e
    xor d
    cp d
    xor d
    ld c, c
    xor d
    sbc c
    sbc c
    adc b
    sbc c
    ld a, c
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    db $76
    ld d, [hl]
    ld h, h
    ld d, l
    ld b, l
    ld [hl], h
    ld b, h
    inc [hl]
    inc sp
    ld b, h
    inc [hl]
    ld b, l
    ld b, h
    ld b, l
    ld d, l
    ld h, h
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld l, b
    rst $00
    ld [hl], a
    add a
    add a
    add a
    adc c
    adc c
    sbc c
    sbc d
    xor d
    sbc d
    cp e
    cp e
    call z, $dccc
    ld l, h
    call z, $cbcc
    res 5, d
    cp d
    xor d
    sbc c
    sbc b
    sbc b
    sub a
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld b, l
    ld h, l
    ld d, h
    ld d, l
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, e
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    ld b, h
    or l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc b
    sbc d
    sbc d
    xor d
    xor d
    xor e
    xor e
    cp e
    adc h
    cp h
    cp h
    cp h
    call z, $cccc
    cp e
    res 7, h
    cp d
    xor e
    sbc d
    xor c
    adc c
    adc b
    ld d, a
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld d, h
    and h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, l
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    sbc c
    xor c
    sbc d
    xor d
    xor e
    sbc d
    xor d
    sbc d
    xor d
    xor d
    cp e
    xor e
    cp e
    cp d
    cp e
    cp d
    cp d
    ld l, d
    xor d
    sbc d
    sbc c
    sbc c
    adc c
    add a
    add a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, h
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    and [hl]
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    sbc d
    sbc c
    adc c
    xor d
    xor d
    xor d
    xor d
    xor c
    xor d
    xor c
    xor d
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    adc b
    ld e, b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld b, l
    ld b, e
    ld d, e
    ld d, h
    ld b, h
    ld d, h
    and h
    ld d, h
    ld d, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    adc b
    adc c
    sbc b
    xor c
    xor c
    xor c
    cp d
    xor e
    sbc e
    xor d
    xor e
    xor e
    xor d
    xor d
    xor e
    xor d
    xor d
    xor d
    xor d
    sbc c
    ld e, c
    adc d
    sbc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld d, l
    ld h, l
    ld b, l
    ld d, l
    ld [hl], l
    ld b, l
    ld b, l
    ld d, [hl]
    ld d, l
    ld h, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    xor b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    sbc d
    sbc c
    xor b
    xor c
    sbc c
    sbc d
    sbc d
    sbc c
    xor d
    ld l, c
    xor d
    xor c
    xor c
    sbc d
    sbc d
    xor c
    sbc c
    adc b
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    sub [hl]
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc d
    sbc c
    sbc d
    sbc c
    xor c
    xor c
    sbc d
    xor d
    sbc c
    xor d
    sbc c
    xor c
    sbc c
    xor b
    sbc c
    ld e, c
    sbc b
    sbc c
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    add l
    ld h, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld d, l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    sub a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    sbc c
    xor b
    sbc c
    xor c
    sbc d
    xor c
    sbc d
    xor d
    xor c
    xor c
    ld l, d
    sbc d
    sbc c
    xor c
    xor c
    sbc d
    adc d
    sbc b
    sbc b
    sbc c
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, l
    ld [hl], l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    db $76
    sub [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, c
    ld a, b
    adc b
    adc c
    sbc b
    sbc b
    adc b
    xor c
    sbc b
    sbc c
    xor d
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc c
    ld l, b
    adc b
    add a
    adc b
    add [hl]
    add a
    add [hl]
    add [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], l
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    xor b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    adc d
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    adc b
    ld a, c
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, a
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    sbc b
    adc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc d
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc b
    ld l, b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], l
    db $76
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld d, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    adc b
    ld a, c
    adc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc b
    sbc b
    sbc c
    adc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    adc b
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    add [hl]
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    sbc b
    adc c
    adc b
    sbc b
    adc c
    adc c
    adc c
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc b
    adc c
    sbc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    db $76
    add a
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    add a
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    adc c
    adc c
    ld a, b
    sbc b
    sbc c
    adc c
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld l, b
    ld h, a
    ld l, b
    ld l, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    adc c
    adc c
    adc c
    adc b
    ld l, c
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    sub a
    adc b
    adc b
    adc b
    ld a, c
    adc b
    sbc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    add a
    sbc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc c
    adc c
    adc b
    adc c
    adc c
    adc c
    adc b
    adc b
    sbc b
    adc b
    sbc b
    ld a, b
    sbc b
    adc b
    adc b
    add a
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    db $76
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    adc b
    sub a
    sbc b
    adc b
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
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
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc c
    ld [hl], a
    sbc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld a, c
    ld a, c
    ld a, b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    ld a, c
    adc b
    sbc b
    adc b
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    add [hl]
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
    add a
    ld h, a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, c
    adc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    sub a
    adc b
    adc b
    adc b
    adc b
    sbc b
    add a
    sub a
    adc c
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
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    add a
    sub a
    add a
    adc b
    adc b
    add a
    adc b
    add a
    ld a, b
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
    sbc b
    ld a, b
    add a
    adc c
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
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    or a
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld l, c
    ld l, c
    ld e, c
    ld l, d
    ld c, h
    ld c, h
    ld c, c
    ld l, d
    ld e, d
    ld c, d
    sub l
    sub e
    jp $96b5


    sub [hl]
    and l
    sbc b
    ld a, c
    ld e, d
    ld c, d
    ld e, d
    ld e, e
    ld h, a
    adc c
    ld e, b
    add a
    add h
    jp $a3a7


    jp nc, $d3e1

    and l
    or [hl]
    ld l, d
    ld c, h
    add l
    sub l
    sub [hl]
    ld a, b
    ld a, c
    ld b, a
    sub [hl]
    and l
    ret nz

    db $d3
    and a
    sub l
    sbc c
    ld l, c
    ld [hl], a
    add l
    ld a, [c]
    ld a, c
    ld l, c
    ld e, d
    ld l, e
    xor c
    sub h
    and l
    or [hl]
    add [hl]
    and h
    push de
    ld c, e
    ld h, a
    ld a, b
    adc b
    ld l, d
    ld c, d
    ld l, b
    ld [hl], a
    add [hl]
    and e
    ldh a, [$c3]
    jp nz, Jump_00e_69e5

    ld a, b
    ld a, b
    or h
    sub a
    adc b
    ld l, h
    add hl, sp
    ld l, c
    ld e, c
    db $76
    ld b, h
    ret nc

    pop af
    call nz, $b4b3
    pop de
    db $d3
    or h
    sbc c
    ld c, e
    ld c, l
    add hl, sp
    adc b
    ld e, e
    ld c, e
    ld c, d
    add h
    or l
    ld a, b
    or d
    jp nc, $c2d1

    call nc, Call_00e_7aa6
    ld c, h
    ld c, b
    ld a, h
    dec e
    dec sp
    inc a
    ld c, c
    ld l, b
    add [hl]
    or h
    and l
    pop bc
    ldh [$d5], a
    sub a
    add [hl]
    or h
    add a
    ld a, b
    ld e, d
    ld a, c
    ld l, l
    ld d, a
    and l
    sub [hl]
    sub [hl]
    ld [hl], a
    and e
    and [hl]
    db $76
    jp $b5c3


    ld a, d
    ld l, c
    ld e, l
    inc l
    ld e, b
    add a
    sub [hl]
    ld a, b
    sbc b
    ld l, b
    adc c
    ld c, b
    db $76
    or a
    ld e, e
    ld c, e
    ld l, $1c
    ld c, c
    ld l, d
    add hl, de
    ld e, e
    ld e, d
    ld e, c
    adc b
    ld c, d
    ld e, b
    sub h
    or h
    or l
    sbc b
    ld a, c
    ld c, e
    ld c, c
    ld e, d
    ld e, l
    dec sp
    ld c, e
    ld e, b
    ld e, c
    ld [hl], a
    add l
    jp $c2c3


    add $89
    ld l, b
    ld h, a
    or e
    sub a
    ld a, d
    ld c, [hl]
    rrca
    rrca
    inc e
    ld l, b
    adc b
    ld l, b
    add [hl]
    sub l
    sub a
    add a
    sub a
    ld a, b
    add [hl]
    ld a, c
    ld e, d
    ld e, l
    dec c
    inc a
    ld c, e
    ld c, h
    ld c, h
    dec hl
    ld l, b
    ld l, b
    ld a, b
    sub [hl]
    and a
    ld h, a
    sub [hl]
    ld a, b
    ld l, d
    xor e
    ld a, [hl-]
    adc c
    ld c, h
    ld c, e
    ld e, e
    ld c, c
    db $76
    and [hl]
    and h
    or l
    and [hl]
    ld [hl], a
    and a
    ld a, b
    ld l, b
    and l
    add a
    ld a, d
    ld a, [hl-]
    ld a, b
    ld a, c
    db $76
    sub [hl]
    and l
    and h
    sub a
    and [hl]
    ld [hl], a
    add [hl]
    and l
    and l
    ld l, b
    ld e, e
    ld c, e
    ld c, h
    ld c, d
    ld e, e
    ld h, a
    add [hl]
    add [hl]
    and [hl]
    add [hl]
    and a
    ld [hl], a
    add l
    add $79
    sbc b
    ld e, e
    ld c, e
    ld c, d
    ld l, c
    ld l, c
    ld l, b
    ld l, c
    ld c, e
    ld a, b
    ld e, b
    and h
    jp $b5c3


    sub l
    and a
    ld a, d
    dec sp
    ld h, a
    and [hl]
    sub [hl]
    adc c
    ld a, b
    ld e, c
    sub l
    sub l
    or l
    and [hl]
    add l
    or h
    or h
    sub [hl]
    ld a, b
    sub l
    and [hl]
    sbc b
    ld a, c
    ld e, d
    ld c, d
    ld e, d
    db $76
    or [hl]
    sub [hl]
    sub [hl]
    and h
    or [hl]
    sub [hl]
    or [hl]
    ld l, c
    add [hl]
    ld a, d
    ld h, a
    adc c
    ld c, e
    ld l, b
    ld e, c
    ld a, c
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    sub [hl]
    sub l
    and l
    sub [hl]
    sub [hl]
    adc c
    ld l, c
    ld a, d
    ld e, b
    add a
    ld l, c
    db $76
    and h
    and a
    add l
    or h
    and h
    call nz, $87a6
    sub [hl]
    ld a, d
    ld l, c
    add [hl]
    ld a, b
    ld a, d
    dec sp
    ld l, c
    ld l, c
    ld [hl], a
    sub [hl]
    sub [hl]
    and [hl]
    add a
    and l
    sub [hl]
    add a
    ld [hl], a
    sub [hl]
    sbc b
    ld e, d
    ld l, d
    ld c, e
    ld c, e
    ld e, e
    ld h, [hl]
    or a
    ld l, c
    ld a, b
    sub [hl]
    add l
    ld a, b
    add a
    add a
    sub a
    adc b
    ld a, b
    ld l, d
    inc a
    ld e, c
    add a
    add [hl]
    sbc c
    ld c, c
    add a
    ld a, b
    and l
    or h
    or l
    and [hl]
    add a
    add a
    ld l, c
    ld l, e
    ld a, [hl-]
    add a
    sub a
    ld l, b
    add [hl]
    ld a, c
    add a
    db $76
    sub l
    adc b
    add a
    sub l
    adc b
    add [hl]
    add a
    adc b
    ld a, c
    ld l, d
    ld e, d
    ld e, d
    ld l, d
    ld e, d
    ld l, c
    ld a, b
    add [hl]
    add a
    sub l
    adc c
    ld e, c
    add a
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    ld l, d
    ld c, h
    ld a, [hl-]
    ld a, b
    adc b
    ld a, b
    add a
    ld l, b
    add [hl]
    and a
    add l
    or h
    sub [hl]
    add a
    ld a, d
    ld c, e
    ld e, e
    ld e, c
    add [hl]
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    sub l
    and l
    sub l
    or h
    and [hl]
    sub l
    sbc c
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, d
    ld l, c
    ld l, c
    ld l, b
    add [hl]
    sub l
    and l
    adc b
    sub [hl]
    sub [hl]
    sub a
    ld l, c
    sub [hl]
    add a
    adc b
    ld a, b
    ld e, d
    ld l, d
    ld e, d
    sub [hl]
    and h
    and [hl]
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, c
    ld h, a
    sub [hl]
    ld e, d
    ld l, d
    ld l, b
    add h
    push bc
    add a
    sub [hl]
    add [hl]
    add [hl]
    and l
    sub [hl]
    sub [hl]
    sub a
    add a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld d, a
    sub [hl]
    ld l, b
    add a
    add [hl]
    and h
    and [hl]
    sub [hl]
    sub [hl]
    add a
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld a, d
    ld e, d
    ld e, d
    ld e, c
    ld l, c
    db $76
    sub [hl]
    and h
    sub a
    sub l
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    adc c
    ld l, d
    ld l, d
    ld e, d
    ld e, d
    db $76
    and a
    ld e, d
    db $76
    adc b
    add [hl]
    sub [hl]
    and l
    and l
    and [hl]
    sub [hl]
    add a
    adc b
    ld l, d
    ld l, c
    add a
    add [hl]
    add a
    add a
    adc b
    ld a, b
    add [hl]
    and l
    add a
    sub [hl]
    ld a, b
    add [hl]
    sub a
    ld a, c
    ld a, b
    ld e, c
    ld [hl], a
    ld a, b
    adc b
    ld l, d
    ld l, b
    ld [hl], a
    sub l
    and h
    sbc b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld a, c
    ld l, c
    ld a, c
    ld e, d
    ld a, b
    ld l, c
    ld a, b
    add l
    and [hl]
    and [hl]
    sub a
    ld a, b
    ld h, a
    add [hl]
    adc b
    ld a, c
    ld l, c
    ld l, c
    ld e, c
    ld c, h
    ld e, b
    ld a, b
    db $76
    sub a
    add a
    or h
    and l
    and a
    add l
    and l
    sub a
    ld [hl], a
    adc b
    ld a, d
    ld e, d
    ld c, e
    ld l, b
    adc b
    ld l, d
    ld e, b
    ld l, c
    ld a, b
    ld a, b
    sub [hl]
    and l
    sub a
    sub [hl]
    add a
    ld a, b
    adc b
    ld a, c
    ld l, c
    ld l, c
    ld e, d
    ld e, c
    ld e, d
    ld e, c
    ld [hl], a
    ld a, b
    sub [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld e, d
    ld e, b
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    sub [hl]
    sub [hl]
    and h
    ld l, b
    ld e, d
    ld e, b
    sbc b
    ld l, c
    ld l, b
    add [hl]
    add [hl]
    and l
    adc c
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    sub [hl]
    and [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, e
    ld e, c
    ld l, b
    ld l, c
    ld l, c
    ld a, c
    ld l, c
    ld [hl], a
    db $76
    and [hl]
    and h
    sbc c
    add a
    sbc d
    ld l, d
    ld c, d
    ld l, b
    adc b
    ld a, b
    ld l, d
    ld c, d
    ld l, c
    ld e, d
    db $76
    sub h
    or l
    add a
    sub l
    or l
    sub [hl]
    and l
    and a
    ld [hl], a
    sub a
    ld l, c
    ld a, b
    ld e, e
    ld e, c
    ld a, b
    add [hl]
    add a
    add a
    sub h
    and [hl]
    and l
    and [hl]
    sub l
    and [hl]
    add a
    sub a
    ld a, c
    ld a, b
    ld e, d
    ld h, a
    sub a
    add a
    add a
    ld l, b
    adc b
    ld [hl], a
    sub l
    and h
    and [hl]
    adc b
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld l, c
    add [hl]
    and [hl]
    sub l
    and [hl]
    sub a
    add a
    sub a
    add a
    add a
    sub a
    ld a, b
    sub [hl]
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    sub l
    sub [hl]
    sub h
    and [hl]
    and l
    sub [hl]
    sub a
    sub [hl]
    add a
    ld a, b
    ld e, c
    ld [hl], a
    ld a, b
    db $76
    and [hl]
    sub a
    sub l
    adc b
    add [hl]
    add [hl]
    ld a, b
    add [hl]
    sub l
    or l
    add a
    ld a, c
    ld l, c
    ld e, d
    ld e, c
    ld a, b
    ld l, b
    ld l, c
    ld a, b
    ld a, b
    add a
    sub l
    sub [hl]
    and l
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld l, c
    ld e, c
    ld h, a
    sub l
    and h
    and [hl]
    add a
    sub [hl]
    add a
    add [hl]
    sbc b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    ld a, d
    ld e, d
    ld e, b
    add a
    db $76
    sub l
    sbc b
    ld l, b
    add a
    add a
    and l
    sbc b
    ld l, d
    ld l, b
    ld l, b
    adc b
    ld e, d
    ld a, b
    ld a, c
    ld l, c
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    ld l, c
    ld l, d
    ld e, c
    ld e, d
    ld l, b
    ld l, c
    ld a, c
    ld l, c
    ld [hl], a
    ld h, [hl]
    sub a
    sub [hl]
    add a
    and l
    add a
    add a
    ld a, b
    ld l, d
    ld e, c
    ld h, a
    sub a
    ld l, d
    ld e, d
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    and l
    sub [hl]
    sub [hl]
    add a
    sub a
    add a
    sub [hl]
    add a
    ld [hl], a
    ld a, c
    ld e, e
    ld e, d
    ld e, d
    ld l, b
    ld a, c
    ld [hl], a
    sub [hl]
    ld a, c
    ld l, c
    ld a, c
    db $76
    sub [hl]
    and h
    xor b
    ld l, b
    ld a, c
    ld a, c
    ld l, d
    ld e, e
    ld e, c
    ld a, c
    ld l, c
    ld l, c
    ld l, d
    ld [hl], a
    ld [hl], a
    add [hl]
    or l
    sub a
    add a
    ld a, c
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld h, a
    ld a, c
    adc b
    ld e, d
    ld [hl], a
    add [hl]
    and l
    or l
    add a
    add [hl]
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld l, c
    adc b
    add a
    sub [hl]
    add a
    add a
    adc b
    add [hl]
    sub a
    add a
    ld a, b
    ld l, c
    ld h, a
    sbc b
    ld a, c
    ld l, c
    ld e, c
    ld l, b
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sub [hl]
    sub [hl]
    sub a
    sub l
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, d
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    db $76
    sub [hl]
    add [hl]
    and [hl]
    sub [hl]
    sub l
    and l
    sub [hl]
    adc b
    add a
    adc b
    ld e, c
    ld [hl], a
    ld a, c
    ld a, b
    ld e, d
    ld l, c
    ld l, b
    ld l, b
    sub l
    and [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    sub [hl]
    add a
    ld a, b
    ld a, b
    ld e, d
    ld e, c
    ld a, c
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    sub [hl]
    and [hl]
    ld a, c
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    add [hl]
    adc b
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld a, c
    ld e, c
    sub [hl]
    sub [hl]
    sub a
    adc b
    ld l, b
    sub [hl]
    add a
    add a
    add [hl]
    and h
    and [hl]
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld l, c
    db $76
    sub a
    ld a, b
    sub l
    sub a
    add a
    sub l
    adc c
    add [hl]
    ld a, c
    adc b
    ld a, b
    ld a, c
    ld l, c
    ld e, d
    ld e, d
    ld e, c
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    adc b
    sub [hl]
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    adc b
    ld e, d
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    sub [hl]
    sub [hl]
    sub a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    sub l
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld l, d
    ld l, b
    adc b
    ld a, b
    add a
    ld a, d
    ld l, b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld l, c
    db $76
    and a
    ld a, c
    ld l, c
    ld l, d
    ld e, d
    ld l, c
    ld [hl], a
    sub [hl]
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    and [hl]
    sub a
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    ld l, c
    ld a, b
    add a
    add a
    sub a
    ld l, c
    add [hl]
    add a
    sub [hl]
    add [hl]
    add l
    and [hl]
    sub a
    add [hl]
    add a
    adc b
    ld e, c
    adc b
    ld l, c
    adc b
    ld l, b
    ld a, b
    adc b
    ld a, b
    sub l
    and [hl]
    add a
    sub [hl]
    sub [hl]
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld a, b
    ld l, d
    ld h, a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    sub [hl]
    sub [hl]
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    adc b
    ld a, c
    ld l, b
    add a
    add a
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    add [hl]
    sub a
    add a
    sub [hl]
    add a
    sub [hl]
    adc b
    ld a, b
    adc b
    ld l, b
    add [hl]
    sub a
    ld a, c
    ld e, d
    ld [hl], a
    add a
    and [hl]
    sub a
    add a
    sub [hl]
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    ld a, b
    add [hl]
    adc c
    ld l, c
    ld l, c
    ld [hl], a
    add [hl]
    sub [hl]
    sub l
    sbc b
    ld a, b
    ld l, b
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    ld l, c
    ld l, c
    ld [hl], a
    sub [hl]
    db $76
    add a
    add a
    add [hl]
    sub [hl]
    sub l
    and a
    ld a, b
    add a
    ld a, c
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld e, c
    ld [hl], a
    add a
    sub [hl]
    add [hl]
    and l
    and [hl]
    adc b
    ld a, b
    ld l, b
    ld l, c
    ld a, c
    ld a, b
    ld l, d
    ld e, b
    ld a, c
    ld l, c
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld l, c
    ld l, c
    add a
    add a
    add a
    ld a, b
    ld h, a
    add a
    add a
    sub a
    ld a, c
    db $76
    adc c
    ld l, c
    ld l, b
    ld l, c
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    sub [hl]
    and a
    add [hl]
    ld a, c
    ld h, a
    ld a, d
    ld l, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld e, c
    ld l, c
    ld a, b
    add [hl]
    add a
    sub [hl]
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld l, c
    ld e, d
    ld l, b
    ld e, b
    ld l, c
    ld l, c
    ld [hl], a
    ld [hl], a
    sub [hl]
    add a
    adc b
    add a
    ld [hl], a
    sub [hl]
    add a
    add a
    add a
    ld a, c
    ld l, d
    ld a, c
    ld l, c
    ld l, c
    ld h, a
    adc b
    add a
    add a
    add a
    add [hl]
    ld a, b
    add [hl]
    add a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    add a
    sub [hl]
    ld [hl], a
    sub [hl]
    sub [hl]
    adc b
    add a
    ld a, b
    ld a, b
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld l, c
    db $76
    adc b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    adc d
    ld [hl], a
    ld l, d
    ld l, b
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    sub a
    add [hl]
    ld a, b
    add [hl]
    sub [hl]
    sub a
    ld a, b
    add [hl]
    ld l, c
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    add a
    sub a
    add a
    ld [hl], a
    add a
    add a
    sub [hl]
    adc b
    sub [hl]
    add a
    ld a, b
    ld a, c
    ld l, c
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add a
    add a
    add a
    sub a
    add [hl]
    sub [hl]
    adc b
    adc b
    sub a
    add a
    ld a, b
    ld a, b
    add a
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    sub a
    add [hl]
    sub [hl]
    sub a
    sub [hl]
    add a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add [hl]
    sub [hl]
    sub [hl]
    sbc b
    ld l, b
    sub [hl]
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld l, c
    ld a, c
    ld l, c
    ld l, b
    sub a
    ld l, c
    ld l, b
    ld a, b
    add [hl]
    sub a
    add a
    add a
    ld a, c
    ld l, c
    ld l, c
    ld a, b
    ld l, c
    ld l, c
    add a
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    add a
    add [hl]
    add a
    add a
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    adc b
    db $76
    add a
    sub [hl]
    add a
    sub a
    add a
    sub a
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld l, c
    ld l, b
    adc c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    sub [hl]
    add a
    sub [hl]
    adc b
    ld l, b
    ld a, c
    ld a, c
    ld l, c
    ld a, b
    ld h, a
    adc b
    sub a
    ld a, c
    add [hl]
    add a
    ld [hl], a
    and a
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld a, b
    add [hl]
    add a
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld l, c
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    sub a
    add a
    add [hl]
    adc b
    ld a, b
    ld a, c
    ld e, d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    add [hl]
    sub [hl]
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    sub a
    add a
    sub a
    add [hl]
    sub [hl]
    sub [hl]
    ld a, c
    add [hl]
    sub a
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    sub [hl]
    sub a
    add a
    ld l, b
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    add a
    adc b
    add [hl]
    add a
    sub [hl]
    sub a
    ld a, c
    ld l, b
    ld [hl], a
    add a
    adc c
    ld h, a
    sub a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    sub [hl]
    sub [hl]
    sub [hl]
    add a
    add a
    add a
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld l, c
    ld h, [hl]
    sbc b
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub [hl]
    sbc b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, d
    ld l, b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    add [hl]
    adc b
    ld a, c
    ld l, c
    ld l, b
    ld h, a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    sub [hl]
    add [hl]
    sub [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    adc c
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    add a
    add a
    add [hl]
    sub a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    add a
    ld a, d
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add [hl]
    sub a
    add [hl]
    sub [hl]
    and [hl]
    sub a
    ld a, b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld l, b
    ld a, c
    ld e, c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    adc b
    add a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld h, a
    sub [hl]

Jump_00e_6565:
    add a
    add a
    sub [hl]
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    ld l, d
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add [hl]
    sub a
    add [hl]
    adc c
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    sub [hl]
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld a, c
    ld l, b
    ld l, b
    ld [hl], a
    add a
    adc b
    db $76
    add a
    add a
    sub [hl]
    add [hl]
    sub a
    add [hl]
    sub [hl]
    add a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    adc b
    adc b
    add [hl]
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld h, a
    sub a
    adc b
    add a
    add a
    add a
    ld a, b
    ld l, b
    adc b
    ld l, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add [hl]
    sub [hl]
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    add a
    add a
    add a
    sub [hl]
    sub a
    add [hl]
    sub [hl]
    ld [hl], a
    add [hl]
    add a
    sub [hl]
    sub [hl]
    adc b
    ld l, c
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    add a
    add a
    adc b
    ld l, b
    ld l, b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    add a
    adc b
    ld a, b
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sub a
    add [hl]
    add a
    sub [hl]
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add [hl]
    sub a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    sub [hl]
    add a
    add a
    adc b
    add a
    ld a, c
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld l, c
    ld a, b
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
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    add [hl]
    sub a
    ld [hl], a
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc c
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    add a
    adc b
    add [hl]
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld a, c
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    adc b
    ld l, b
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    add a
    adc b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add [hl]
    sub a
    add [hl]
    add a
    add a
    add a
    ld [hl], a
    add a
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
    add a
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
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
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, [hl]
    add a
    sbc d
    sbc b
    db $76
    ld h, [hl]
    ld l, b
    sbc c
    sbc b
    add a
    ld [hl], l
    jp c, Jump_00e_4902

    call z, $b88d
    ld d, h
    ld [hl], $69
    xor d
    xor b
    ld [hl], a
    ld d, [hl]
    ld a, b
    adc b
    adc c
    ld [hl], a
    db $76
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor h
    inc sp
    ld d, a
    sbc d
    cp c
    ld h, a
    add a
    ld [hl], a
    ld l, b
    ld a, b
    sub a
    adc b
    add a
    add [hl]
    xor b
    ld d, l
    ld [hl], a
    sbc c
    sbc b
    add a
    ld h, [hl]
    ld a, b
    sbc b
    sub a
    ld a, b
    ld h, a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    and a
    ld h, l
    ld a, c
    sbc c
    add a
    ld [hl], a
    ld h, a
    add a
    sbc c
    db $76
    ld e, b
    adc c
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    and [hl]
    ld [hl], a
    ld a, b
    adc c
    adc b
    ld [hl], a
    add a
    ld l, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    add a
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
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
    adc b
    ld [hl], a
    ld a, b
    sub a
    ld [hl], a
    ld [hl], a
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld hl, sp-$77
    ld h, d
    adc b
    adc b
    sbc d
    sbc [hl]
    rst $38
    xor b
    adc c
    add a
    ld b, b
    dec d
    adc b
    sbc e
    rst $28
    db $db
    sub a
    ld [hl], a
    ld b, e
    inc de
    ld a, b
    xor e
    adc $ed
    sbc c
    ld [hl], a
    ld d, h
    inc sp
    ld l, b
    adc c
    cp l
    cp l
    cp c
    add a
    ld d, h
    ld b, h
    ld b, a
    adc d
    cp e
    call c, $98bb
    ld h, [hl]
    ld b, l
    ld d, a
    ld a, b
    xor e
    cp e
    res 3, c
    add [hl]
    ld h, l
    ld h, [hl]
    ld a, c
    sbc d
    xor e
    cp e
    sbc c
    add [hl]
    ld [hl], l
    ld [hl], a
    ld a, b
    sbc c
    adc d
    xor e
    sbc c
    ld a, b
    ld h, [hl]
    db $76
    adc b
    adc c
    sbc d
    sbc d
    sbc c
    adc b
    db $76
    db $76
    add a
    adc c
    sbc d
    xor c
    sbc c
    adc b
    ld a, b
    add a
    adc b
    sbc b
    sbc b
    xor d
    adc c
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    sbc b
    sbc d
    sbc b
    sbc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    sbc b
    sbc b
    sbc b
    adc c
    adc c
    ld a, b
    ld a, b
    add a
    add hl, sp
    db $76
    ld l, b
    cp b
    ld b, h
    sbc l
    add d
    inc a
    rst $20
    inc b
    rst $18
    ld d, b
    ld e, l
    db $f4
    dec b
    rst $28
    and b
    ld l, [hl]
    db $e3
    ld b, $ed
    ld de, $b27f
    add hl, hl
    db $eb
    inc hl
    adc [hl]
    and d
    add hl, sp
    ld [$6d23], a
    sub d
    ld c, c
    add sp, $35
    sbc l
    add e
    ld e, d
    rst $00
    dec [hl]
    xor h
    ld [hl], h
    ld e, d
    or a
    scf
    sbc e
    ld [hl], h
    ld a, d
    and a
    ld b, [hl]
    sbc d
    ld [hl], l
    ld l, d
    sub [hl]
    ld h, [hl]
    xor c
    ld [hl], l
    ld a, d
    sub [hl]
    ld h, a
    xor c
    ld [hl], l
    adc d
    add [hl]
    ld h, a
    sbc b
    db $76
    ld a, c
    add [hl]
    ld l, b
    adc b
    ld h, a
    ld a, d
    ld [hl], a
    ld l, b
    adc b
    db $76
    ld a, c
    ld h, a
    ld a, b
    sbc b
    ld [hl], a
    adc b
    add a
    ld l, c
    add a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    adc b
    add a
    adc b
    ld a, b
    sub a
    ld h, a
    sbc c
    sbc c
    xor c
    add l
    ld d, e
    ld [hl+], a
    ld c, b
    cp l
    cp $fc
    add [hl]
    ld b, b
    nop
    dec d
    db $ed
    xor $ed
    and [hl]
    ld [hl-], a
    db $10
    scf
    cp l
    db $dd
    jp z, Jump_000_2273

    ld [bc], a
    ld c, c
    cp [hl]
    db $fd
    ld e, d
    add [hl]
    jr nc, @+$13

    scf
    sbc h
    db $dd
    res 0, [hl]
    ld b, h
    inc [hl]
    ld c, b
    cp e
    cp e
    cp c
    ld [hl], l
    ld h, e
    inc [hl]
    ld e, b
    xor e
    call z, $96b9
    inc [hl]
    inc [hl]
    ld b, a
    sbc d
    cp d
    cp d
    sub a
    ld d, l
    ld b, h
    xor b
    sbc d
    sbc d
    sbc c
    ld [hl], a
    ld d, h
    ld d, l
    ld l, b
    sbc d
    cp d
    sbc d
    ld [hl], a
    ld h, h
    ld b, l
    ld d, a
    sbc c
    adc d
    xor d
    add a
    ld [hl], l
    ld d, l
    ld l, b
    sbc c
    adc c
    xor b
    add a
    ld h, l
    ld h, l
    ld l, b
    sbc c
    xor c
    sbc c
    db $76
    ld h, l
    ld h, l
    ld [hl], a
    adc c
    xor c
    sbc d
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    sbc b
    sbc c
    ld [hl], a
    db $76
    db $76
    ld l, b
    adc c
    adc c
    sbc c
    add a
    ld h, l
    ld h, [hl]
    ld h, a
    adc b
    adc c
    sbc c
    add a
    db $76
    ld h, a
    ld l, b
    adc b
    ld a, c
    adc c
    add a
    ld [hl], a
    ld h, a
    ld h, a
    sbc b
    adc c
    sbc b
    adc b
    ld h, [hl]
    ld h, a
    db $76
    adc b
    sbc c
    ld l, c
    adc b
    ld [hl], a
    db $76
    ld h, a
    adc b
    adc c
    adc b
    add a
    add [hl]
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    adc c
    add a
    ld h, a
    ld [hl], a
    ld h, a
    adc b
    adc c
    sbc b
    add a
    ld [hl], a
    ld h, a
    ld l, b
    ld a, b
    sub a
    sbc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc c
    add a

Jump_00e_69e5:
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld h, a
    db $76
    adc b
    adc c
    ld a, b
    adc b
    add a
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    ld l, b
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    sbc b
    adc b
    add a
    add a
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    add a
    adc b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc b
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    adc c
    ld a, b
    add a
    db $76
    ld a, b
    ld [hl], a
    sbc b
    adc b
    adc b
    ld a, b
    ld h, a
    ld h, a
    adc b
    ld a, c
    add a
    adc b
    add [hl]
    ld [hl], a
    add a
    ld a, b
    add a
    sbc b
    add a
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    sbc b
    adc b
    adc b
    add a
    ld a, b
    ld h, a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    sub a
    sub a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    sbc b
    ld a, b
    add a
    ld l, b
    ld h, a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    add [hl]
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    adc c
    adc c
    sub [hl]
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    sub [hl]
    ld a, d
    add a
    add [hl]
    ld a, b
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld d, [hl]
    adc d
    ld a, b
    ld a, c
    add [hl]
    ld h, a
    adc d
    sub a
    db $76
    ld [hl], a
    sub a
    xor d
    inc d
    db $76
    ld e, c
    adc c
    jp c, Jump_000_13c3

    ld c, c
    ret


    push de
    dec d
    adc h
    sbc d
    ld d, h
    ld a, b
    xor e
    ld [hl], c
    ld e, d
    sub [hl]
    xor c
    rst $00
    add a
    add a
    ld h, [hl]
    add a
    ld a, d
    sbc b
    ld [hl], a
    ld d, [hl]
    sbc d
    add a
    sub a
    ld d, l
    ld a, c
    ld l, d
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    ld h, [hl]
    adc c
    adc b
    ld h, a
    ld h, a
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    adc b
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    xor a
    ld [hl], c
    dec d
    ld c, e
    db $ec

jr_00e_6aeb:
    db $76
    adc b
    ld h, l
    ld b, a
    ret


    add l
    ld a, c
    sbc b
    ld l, d
    ld a, c
    db $76
    ld e, b
    and a
    ld [hl], a
    db $76
    ld e, c
    xor d
    cp c
    ld h, h
    ld h, $9b
    adc b
    sub a
    ld [hl], a
    ld h, [hl]
    adc d
    sub a
    db $76
    ld h, l
    xor b
    sbc b
    adc b
    ld l, b
    ld a, b
    add [hl]
    add a
    add a
    sbc b
    ld [hl], a
    add a
    adc b
    ld h, [hl]
    adc b
    xor c
    db $76
    ld l, b
    adc c
    adc b
    ld l, b
    add a
    sbc b
    add a
    ld a, b
    adc e
    ld b, h
    ld b, a
    db $ec
    ret


    inc [hl]
    ld b, a
    or [hl]
    ld l, b
    xor h
    ld [hl], e
    ld l, d
    jp c, Jump_00e_4773

    adc c
    adc d
    sub a
    db $76
    ld e, c
    xor b
    adc c
    add a
    add l
    ld a, c
    sbc b
    ld [hl], a
    ld l, b
    ld a, a
    ld [hl], h
    ld [hl], a
    ld h, l
    cp h
    ld a, b
    or l
    ld e, d
    add h
    add hl, sp
    sbc c
    db $db
    sub $02
    ld a, [hl+]
    sbc e
    xor $50
    ld [hl], a
    ld a, e
    db $76
    ld [de], a
    xor d
    ret z

    jr z, jr_00e_6aeb

    adc b
    xor e
    ld h, h
    ld c, d
    ld a, l
    rst $00
    ld b, e
    add l
    ld l, e
    ld l, b
    sbc e
    sub $16
    add [hl]
    and a
    ld h, a

jr_00e_6b66:
    sbc $33
    ld h, h
    ld l, c
    sub a
    sub a
    or e
    sub a
    sbc b
    ld a, c
    ld h, h
    ld b, a
    adc h
    cp d
    ld b, e
    ld d, l
    xor $43
    ld l, b
    and a
    or d
    adc d
    ld [hl], h
    ld a, b
    cp e
    ld [hl], l
    ld h, b
    ld a, a
    cp d
    ld h, l
    ld d, a
    sub l
    add l
    sbc e
    sbc b
    ld d, a
    dec [hl]
    cp d
    sub l
    ld [hl], a
    sbc b
    xor d
    db $76
    ld a, c
    ld d, [hl]
    ld l, c
    sbc e
    ld h, [hl]
    or l
    or [hl]
    inc d
    sbc h
    or a
    ld [hl], l
    adc b
    sbc c
    ld h, $78
    ld e, h
    sub l
    ld d, [hl]
    adc c
    adc d
    and h
    ld h, [hl]
    ld h, a
    adc e
    adc c
    ld h, [hl]
    ld h, [hl]
    adc b
    xor c
    add a
    ld [hl], l
    ld a, c
    xor c
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    add a
    ld [hl], l
    ld [hl], e
    db $76
    xor [hl]
    adc c
    sub a
    ld b, [hl]
    ld e, b
    sbc c
    cp b
    ld a, c
    inc [hl]
    sbc b
    jp c, Jump_00e_6565

    sbc b
    and a
    ld b, e
    adc e
    cp d
    ld h, l
    jr c, jr_00e_6b66

    ld a, c
    adc b
    ld h, a
    db $76
    ld a, d
    db $76
    ld h, l
    xor h
    and a
    ld d, e
    ld a, c
    add l
    ld a, c
    sub a
    adc d
    ld d, l
    ld a, c
    and a
    and [hl]
    sbc b
    add l
    ld h, [hl]
    ld a, e
    sbc b
    db $76
    ld d, l
    sbc d
    sbc c
    ld h, l
    ld l, c
    ld [hl], a
    sbc b
    ld h, a
    sbc b
    ld a, b
    adc c
    ld d, h
    ld l, c
    sbc b
    sbc c
    add a
    ld h, l
    ld d, a
    cp h
    add l
    add l
    ld e, d
    xor b
    ld [hl], l
    and a
    add a
    adc c
    ld [hl], l
    ld h, a
    adc d
    adc b
    and a
    sub [hl]
    ld b, l
    ld l, c
    adc d
    sub a
    ld l, b
    ld [hl], a
    ld [hl], h
    xor b
    ld a, b
    add [hl]
    db $76
    ld a, b
    xor d
    add [hl]
    ld h, e
    ld l, d
    xor e
    ld h, l
    ld a, d
    ld h, [hl]
    adc b
    ld h, a
    add a
    xor c
    sub [hl]
    ld h, a
    ld h, a
    add a
    ld l, b
    sbc c
    and a
    ld d, [hl]
    ld l, b
    add a
    sbc c
    ld h, a
    add a
    sub [hl]
    ld a, b
    adc c
    ld [hl], l
    adc b
    ld l, b
    adc b
    sub a
    add a
    ld h, [hl]
    sbc b
    adc b
    adc b
    ld a, b
    sub a
    db $76
    ld l, c
    add a
    ld h, a
    sbc c
    ld [hl], a
    ld h, a
    ld a, d
    ld a, b
    sub [hl]
    ld a, b
    sbc c
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, d
    xor b
    ld a, b
    sub a
    sub [hl]
    ld a, c
    xor b
    add l
    ld l, b
    adc c
    adc b
    ld [hl], a
    ld l, b
    sbc b
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld l, b
    sbc b
    adc b
    db $76
    adc b
    ld h, a
    ld a, c
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc c
    add [hl]
    sub l
    ld l, c
    ld [hl], a
    ld h, a
    ld a, b
    adc c
    adc b
    db $76
    ld h, a
    add a
    adc b
    add a
    ld [hl], a
    ld a, c
    and [hl]
    ld h, a
    adc b
    adc b
    db $76
    ld h, a
    xor b
    sub a
    ld l, c
    ld [hl], a
    adc b
    sub a
    ld l, b
    sub a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    sbc b
    ld [hl], l
    ld l, b
    adc b
    ld a, c
    add a
    ld h, a
    ld [hl], a
    ld a, c
    sub a
    ld l, b
    ld a, c
    adc b
    add a
    ld h, [hl]
    ld a, b
    add a
    sub a
    ld h, a
    adc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    add a
    adc b
    ld h, [hl]
    ld a, b
    adc b
    adc b
    add a
    adc c
    db $76
    adc c
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    db $76
    adc c
    adc b
    add [hl]
    adc b
    sub a
    adc b
    add a
    add [hl]
    ld a, b
    add a
    ld [hl], a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    db $76
    adc c
    sub a
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    add [hl]
    ld a, b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    sub a
    add a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    sbc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    add [hl]
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    db $76
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld a, b
    adc b
    add a
    ld a, c
    adc b
    add a
    add a
    ld a, b
    sub a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    add [hl]
    adc b
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
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add [hl]
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    adc b
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
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
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
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
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_7588:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00e_7988:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00e_7997:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_79a6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00e_79b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00e_7aa6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
