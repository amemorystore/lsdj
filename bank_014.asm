; disasSembly of "lsdj.gb"
SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    ld h, b
    ld b, b
    nop
    ld b, d
    ld [hl], b
    ld b, h
    nop
    ld b, [hl]
    ld b, b
    ld c, h
    ld [hl], b
    ld d, b
    db $10
    ld d, [hl]
    jr nc, jr_014_406e

    sub b
    ld l, c
    ld d, b
    halt
    ld a, b
    and b
    ld a, e
    add b
    ld a, h
    jr nc, jr_014_4099

    jr nz, jr_014_409c

    or b
    ld a, a
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
    ld c, b
    ld b, e
    dec l
    ld c, h
    ld b, e
    dec l
    ld d, d
    ld c, c
    ld c, l
    ld d, h
    ld b, c
    ld c, l
    ld b, e
    ld b, c
    ld b, d
    ld b, e
    ld c, h
    ld d, b
    nop
    nop
    nop
    ld c, h
    ld c, c
    ld c, [hl]
    ld c, [hl]
    ld b, h
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $67a7
    ld [hl], a
    add [hl]
    or [hl]
    add h
    add hl, bc
    or a
    ld b, a
    ld a, b
    ld c, b
    sub [hl]
    sbc b
    adc c

jr_014_406e:
    xor b
    adc l
    sbc c
    call c, $ddcb
    call $dded
    xor $dd
    call c, $cccd
    cp e
    cp e
    sbc d
    adc c
    daa
    ld d, e
    db $76
    ld h, l
    jr nz, jr_014_4098

    ld hl, $0020
    nop
    nop
    nop
    nop
    nop
    ld bc, $f220
    ld [hl+], a
    inc h
    inc [hl]
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, a

jr_014_4098:
    adc b

jr_014_4099:
    adc b
    sbc c
    xor d

jr_014_409c:
    cp e
    call z, $ddcd
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $4e
    cp $dd
    call $bbbd
    cp e
    sbc c
    sbc c
    adc c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, e
    ld b, h
    ld [bc], a
    inc hl
    ld hl, $1012
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
    ld bc, $22b1
    inc de
    ld [hl-], a
    ld b, h
    ld b, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc d
    sbc d
    xor c
    cp d
    ei
    cp h
    call $cecd
    db $dd
    xor $ef
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    cp $ff
    rst $28
    xor $ee
    db $dd
    db $dd
    call Call_014_6ccc
    cp e
    cp e
    xor d
    xor d
    sbc d
    sbc c
    sbc b
    sbc b
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld b, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    ld d, l
    ld b, l
    ld d, h
    ld b, l
    ld b, l
    ld d, l
    ld b, h
    ld d, h
    dec [hl]
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, e
    ld b, e
    ld b, e
    inc sp
    ld b, e
    inc sp
    inc [hl]
    ld [hl], d
    inc [hl]
    inc sp
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    rst $10
    ld [hl], a
    adc b
    adc c
    sbc c
    xor c
    sbc d
    xor e
    xor e
    cp e
    cp e
    cp h
    call z, $cdcd
    sbc $fe
    db $ed
    cp $ef
    xor $ff
    rst $28
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    cp $ee
    xor $ee
    call $ccdd
    cp e
    cp e
    cp d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld h, $76
    ld [hl], l
    ld h, l
    ld d, [hl]
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    inc h
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld d, d
    ld [hl+], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc hl
    ld [hl-], a
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld b, l
    sub l
    ld b, l
    ld d, l
    ld h, l
    db $76
    ld d, a
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    xor c
    xor b
    sbc d
    sbc d
    sbc d
    xor c
    sbc d
    xor d
    sbc d
    sbc e
    sbc d
    xor d
    sbc d
    sbc d
    sbc d
    xor d
    ld a, c
    xor c
    xor d
    sbc c
    sbc c
    sbc c
    xor b
    sbc c
    sbc c
    adc c
    adc b
    sbc b
    sbc b
    adc b
    add a
    adc b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld l, b
    ld l, b
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
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
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld h, a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    db $76
    add a
    ld [hl], a
    db $76
    add a
    add l
    ld b, l
    ld b, e
    ld b, l
    ld [hl], $67
    ld l, c
    rst $18
    cp $ff
    rst $38
    cp $dd
    set 1, e
    cp c
    ld b, a
    ld [hl], h
    ld b, h
    inc d
    db $10
    ld bc, $2012
    jr nc, jr_014_422a

    jr nz, jr_014_421c

jr_014_421c:
    nop
    ld sp, $4400
    push af
    ld d, [hl]
    ld h, a
    ld a, b
    sbc d
    cp e
    cp [hl]
    sbc $ff
    rst $38

jr_014_422a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    xor $ed
    call $a9bc
    adc c
    ld h, a
    ld h, [hl]
    ld b, h
    ld bc, $0000
    nop
    nop
    ldh a, [rP1]
    nop
    ld bc, $3513
    ld d, l
    ld l, b
    adc b
    sbc d
    cp d
    db $db
    sbc $ef
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ed
    cp l
    sbc c
    adc c
    sub h
    ld h, e
    ld d, l
    dec [hl]
    ld sp, $e010
    nop
    nop
    ld bc, $0000
    ld de, $5433
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    cp l
    cp l
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ef
    db $db
    call z, $88ca
    sub a
    db $76
    add l
    ld d, [hl]
    inc hl
    inc h
    ld d, c
    ld [hl-], a
    ld [hl], e
    ld b, h
    dec [hl]
    inc [hl]
    inc d
    ld d, l
    ld b, c
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    cp b
    ld a, c
    cp b
    xor e
    cp e
    call z, $bdef
    rst $38
    xor $ff
    db $dd
    db $fc
    sbc $eb
    jp c, $8a1a

    sbc d
    sbc c
    ld a, c
    ld [hl], a
    add [hl]
    ld h, h
    ld b, h
    ld d, l
    inc d
    ld b, c
    ld hl, $0021
    ld de, $43d1
    dec d
    ld b, [hl]
    ld h, l
    adc b
    sbc b
    sbc c
    xor e
    xor l
    call z, $fefb
    db $ed
    rst $28
    cp $4d
    xor $dd
    call z, $8bbc
    xor c
    ld l, b
    add l
    ld h, l
    ld d, [hl]
    ld d, h
    ld d, e
    ld d, l
    inc [hl]
    ld d, e
    and h
    ld b, l
    ld d, h
    ld h, $44
    ld h, l
    ld h, l
    ld h, a
    ld h, [hl]
    ld a, b
    add a
    adc c
    adc e
    adc b
    cp d
    cp c
    ld l, d
    res 5, l
    sbc d
    cp c
    ret


    xor e
    sbc d
    cp c
    sbc c
    and a
    or [hl]
    adc b
    ld a, c
    ld [hl], a
    ld e, b
    ld d, [hl]
    add l
    db $76
    ld [hl], a
    ld d, a
    ld [hl], a
    ld l, b
    ld h, [hl]
    ld h, l
    ld h, l
    ld b, [hl]
    ld d, l
    ld d, e
    ld d, e
    ld d, h
    ld h, e
    sub [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    xor c
    cp e
    sbc h
    jp z, $cdbc

    cp e
    set 1, e
    cp c
    dec sp
    sbc b
    sbc c
    ld a, c
    ld [hl], a
    add [hl]
    ld [hl], a
    ld d, [hl]
    ld h, a
    ld d, l
    ld d, h
    ld b, l
    ld d, d
    ld b, l
    inc [hl]
    ld b, l
    or h
    ld b, h
    ld d, [hl]
    ld b, a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc d
    adc c
    sbc d
    sbc e
    xor e
    cp e
    cp h
    cp e
    ld e, d
    jp c, $aaba

    sbc c
    sbc b
    sbc b
    ld l, b
    add [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, l
    ld d, a
    and l
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    adc b
    ld a, b
    adc b
    xor b
    adc d
    adc b
    xor c
    adc d
    sbc b
    sbc b
    adc d
    sub a
    sbc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    db $76
    ld l, b
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], l
    db $76
    ld d, a
    ld d, [hl]
    ld h, l
    ld h, l
    and [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    xor c
    adc c
    sbc d
    sbc c
    xor d
    xor c
    xor d
    ld e, c
    xor c
    xor c
    adc c
    adc c
    add a
    ld l, b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    sub l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld [hl], a
    ld h, a
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    adc c
    ld l, b
    sbc c
    adc d
    sbc b
    sbc c
    add a
    sub a
    adc b
    add a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld d, a
    ld [hl], a
    ld h, a
    ld d, a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    sub l
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    adc c
    sub a
    sbc b
    adc c
    adc c
    ld a, b
    sbc b
    sbc b
    adc b
    adc b
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], c
    ld l, e
    adc b
    sbc c
    ld l, e
    adc h
    ret z

    adc b
    sub l
    sbc c
    adc b
    ld c, e
    ld h, [hl]
    sbc b
    add h
    dec [hl]
    ld h, e
    ld h, a
    ld [hl], a
    sub [hl]
    ld l, d
    sbc e
    call z, $977c
    cp c
    or [hl]
    and a
    ld d, [hl]
    jr c, jr_014_44e7

    ld h, e
    ld h, h
    add h
    sbc b
    ld l, e
    ld l, d
    db $dd
    xor [hl]
    rst $18
    xor d
    ld e, c
    ld [hl], l
    ld h, [hl]
    ld [hl], l
    adc b
    and l
    and e
    xor d
    sbc l
    ld l, l
    ld l, h
    or a
    add a
    cp c
    and a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], h
    ld l, h
    adc d
    sub $a6
    xor c
    cp a
    ld e, c
    and [hl]
    scf
    sub h
    and $96
    cp [hl]
    dec a
    ld e, b
    ld l, b
    ld e, c
    or a
    xor b
    sub l
    ld l, d
    sbc e
    ld a, d
    ld l, c
    ld l, d
    ld a, b
    add a
    rst $10
    and a
    ld a, e
    ld l, c
    ld l, b
    or a
    sub [hl]
    sbc b
    ld l, c
    ld a, d
    sbc b
    sub a
    adc b
    db $76
    ld l, d
    adc c
    adc d
    ld a, c
    sbc c
    ld e, e
    xor b
    adc b
    sub h
    xor c
    add [hl]
    db $76
    and a
    ld a, c
    add a
    ld l, c
    sbc b
    adc l

jr_014_44e7:
    ld l, h
    xor b
    ld a, b
    or [hl]
    ret z

    ld e, b
    db $76
    adc b
    ld c, c
    ld l, c
    ld a, c
    xor b
    and [hl]
    or [hl]
    and l
    sbc h
    ld a, c
    add hl, sp
    ld [hl], e
    sbc b
    and [hl]
    sbc b
    sbc d
    adc d
    ld a, c
    ld l, c
    sbc c
    db $76
    and a
    ld [hl], l
    db $76
    sbc c
    ld l, e
    ld c, e
    ld l, e
    ld a, b
    sub [hl]
    rst $00
    and [hl]
    add a
    ld c, c
    add a
    ld e, c
    sub a
    xor c
    adc b
    sbc b
    ld a, c
    ld l, d
    ld e, e
    ld a, b
    ld h, l
    and a
    adc b
    ld a, b
    ld a, c
    sbc b
    ld a, c
    ld e, c
    and a
    ld l, c
    sub a
    db $76
    add a
    ld a, b
    adc b
    ld l, b
    ld l, c
    or [hl]
    sub a
    adc c
    ld a, c
    ld a, c
    ld [hl], a
    add h
    db $76

Jump_014_4533:
    adc b
    adc b
    ld l, d
    adc b
    sbc b
    ld [hl], a
    add a
    add a
    add a
    sub [hl]
    sbc b
    ld h, [hl]
    adc c
    ld l, b
    sbc b
    adc b
    add a
    ld l, c
    ld l, d
    adc c
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld h, a
    ld a, c
    ld [hl], a
    ld l, b
    add a
    adc b
    and [hl]
    adc b
    ld l, b
    ld a, b
    cp b
    ld a, b
    add a
    sub a
    add a
    ld h, a
    ld a, d
    ld a, b
    ld a, b
    sbc b
    sub a
    sub [hl]
    ld a, b
    add [hl]
    adc c
    ld [hl], l
    ld [hl], a
    ld l, b
    sbc b
    sub [hl]
    ld d, a
    sbc b
    adc b
    ld l, b
    ld d, a
    db $76
    add a
    sub [hl]
    ld a, c
    ld l, c
    add a
    ld h, a
    ld [hl], a
    adc b
    add a
    ld e, b
    add a
    ld a, b
    db $76
    ld a, b
    db $76
    ld a, b
    add a
    add a
    adc c
    sbc b
    sub a
    db $76
    adc b
    ld h, [hl]
    add a
    ld h, a
    ld l, b
    add a
    adc c
    add a
    adc c
    ld [hl], a
    db $76
    ld a, c
    add a
    sub [hl]
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    sub a
    ld a, b
    adc b
    sub a
    ld [hl], a
    ld [hl], l
    ld l, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, c
    add a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    db $76
    add a
    add a
    add a
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    add a
    db $76
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld h, a
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    ld l, b
    add [hl]
    ld a, c
    add a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld h, a
    ld a, b
    ld l, b
    adc b
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    add c
    adc c
    sbc b
    adc b
    ld l, e
    ld a, h
    or a
    sbc b
    sub l
    sbc b
    sub a
    ld e, e
    ld c, b
    add a
    add h
    ld b, l
    ld h, e
    ld e, b
    ld [hl], a
    add [hl]
    ld a, c
    sbc d
    db $db
    ld a, h
    sbc b
    cp b
    and a
    sub a
    ld h, [hl]
    jr c, jr_014_4687

    ld h, h
    ld h, l
    add h
    xor b
    ld l, d
    ld l, d
    call c, $debc
    sbc d
    ld l, b
    add l
    ld h, a
    ld h, l
    adc b
    and l
    sub h
    xor d
    sbc h
    ld a, l
    ld l, h
    xor b
    adc b
    cp c
    sub a
    ld [hl], a
    ld l, b
    ld a, b
    ld [hl], h
    ld l, e
    adc d
    add $a6
    cp c
    cp [hl]
    ld l, b
    and l
    jr c, @+$78

    sub $a5
    cp l
    dec a
    ld c, c
    ld e, b
    ld l, c
    or [hl]
    xor b
    sub l
    ld e, c
    xor e
    ld l, b
    ld a, c
    ld e, e
    adc b
    add [hl]
    sub $a7
    ld a, e
    ld l, c
    ld l, b
    and a
    sub [hl]
    and a
    ld a, b
    ld l, d
    sbc c
    sub a
    adc b
    db $76
    ld l, d
    adc d
    adc c
    ld a, c
    sbc c
    ld c, h
    xor c
    adc b
    and e
    xor c
    add a
    ld [hl], a
    and a
    adc c
    sub [hl]
    ld a, c
    sbc b
    sbc h
    ld l, l
    and a
    ld a, c
    and [hl]
    ret z

    ld d, a
    db $76
    add a
    ld c, c
    ld e, d
    ld a, d
    xor c
    and [hl]
    sub $a5
    xor h

jr_014_4687:
    ld a, d
    add hl, hl
    ld [hl], h
    and a
    or a
    xor c
    xor e
    adc c
    adc d
    ld l, c
    xor e
    ld h, l
    or a
    ld h, h
    ld [hl], a
    sbc b
    ld a, h
    dec l
    ld l, l
    ld l, b
    and [hl]
    sub $b6
    add l
    ld c, c
    add a
    ld c, d
    add [hl]
    ret


    sbc b
    sub a
    ld a, c
    ld l, c
    ld e, l
    ld l, c
    ld d, [hl]
    xor b
    adc b
    adc c
    ld a, d
    sbc c
    ld l, c
    ld l, c
    and a
    ld l, c
    xor b
    ld [hl], h
    sub a

jr_014_46b7:
    ld a, c
    adc c
    ld l, b
    ld l, e
    add $97
    sbc b
    adc c
    ld a, e
    adc b
    ld [hl], e
    ld h, a
    adc b
    and a
    ld a, h
    sbc c
    sbc c
    db $76
    sbc b
    add a
    add a
    sub l
    xor b
    ld h, l
    adc d
    ld e, c
    xor b
    adc b
    and [hl]
    ld l, c
    ld e, h
    adc d
    adc c
    or a
    ld [hl], l
    ld a, b
    ld a, b
    adc c
    db $76
    adc d
    add a
    ld a, c
    adc b
    adc b
    call nc, Call_014_6887
    ld l, e
    ret c

    ld l, b
    adc b
    and a
    sub a
    ld h, l
    adc h
    ld a, b
    ld a, b
    sbc c
    rst $00
    and a
    ld [hl], a
    ld [hl], l
    xor e
    ld h, e
    add [hl]
    ld a, e
    sbc c
    push bc
    jr c, jr_014_46b7

    sbc b
    ld a, b
    jr c, jr_014_4779

    add [hl]
    or h
    adc c
    ld a, l
    add l
    ld [hl], a
    add [hl]
    cp c
    and [hl]
    ld e, d
    ld a, b
    ld l, h
    ld [hl], l
    add a
    sub [hl]
    add a
    or a
    adc b
    xor d
    ret z

    or a
    ld [hl], e
    xor d
    ld b, a
    and l
    ld b, a
    ld a, d
    adc c
    ld a, l
    add a
    sbc d
    ld e, b
    db $76
    ld a, d
    ld a, b
    or [hl]
    db $76
    ld h, l
    adc b
    ld a, b
    ld [hl], a
    ld a, d
    ld l, d
    or l
    sbc b
    cp c
    and a
    adc b
    ld h, h
    ld c, b
    and [hl]
    add a
    add l
    adc d
    adc b
    adc d
    ld e, d
    sbc b
    sub [hl]
    ld [hl], l
    add [hl]
    sub a
    xor b
    add a
    ld a, c
    ld a, b
    xor c
    ld l, d
    or [hl]
    ld [hl], a
    add h
    ld l, b
    ld l, d
    ld l, c
    ld h, [hl]
    sbc b
    adc d
    sub a
    sbc c
    sbc b
    ld l, b
    ld d, [hl]
    ld l, b
    sub l
    or a
    sub h
    adc b
    ld a, c
    ld l, d
    ld l, c
    ld a, d
    sbc d
    ld h, [hl]
    ld a, d
    scf
    ld [hl], l
    ld d, a
    ld a, b
    xor b
    adc c
    add a
    xor d
    ld l, c
    ld e, c
    ld l, c
    ld c, b
    sub l
    db $76
    ld [hl], h
    ld l, c
    adc c
    ld a, b
    or a
    adc c
    and [hl]
    adc b
    ld a, c
    ld h, a
    ld [hl], a
    ld d, a

jr_014_4779:
    ld e, b
    add l
    ld l, b
    and [hl]
    xor d
    adc c
    ld l, d
    ld a, b
    add [hl]
    and d
    db $76
    sub [hl]
    ld l, b
    sbc d
    ld h, a
    sbc d
    add h
    sbc b
    ld h, [hl]
    adc h
    add a
    ld a, b
    ld e, b
    ld e, c
    ld h, a
    ld h, [hl]
    call nz, $a869
    ld l, e
    ld l, l
    scf
    or [hl]
    ld d, l
    add $77
    ld a, b
    sub [hl]
    ld a, h
    adc b
    ld a, d
    ld [hl], l
    ld a, b
    add [hl]
    adc b
    sub a
    adc b
    adc b
    ld h, h
    and [hl]
    ld h, [hl]
    ld a, c
    adc b
    adc d
    ld d, [hl]
    adc e
    ld [hl], l
    ld a, b
    add l
    ld h, [hl]
    add h
    xor d
    cp b
    ld l, b
    or [hl]
    ld e, b
    add h
    ld l, e
    ld l, b
    ld c, b
    or [hl]
    sub l
    and a
    adc b
    ld l, d
    ld d, [hl]
    adc e
    add h
    sub [hl]
    and h
    adc c
    ld d, [hl]
    ld a, d
    add a
    ld a, e
    ld l, d
    ld e, b
    sub [hl]
    sub [hl]
    db $76
    daa
    adc b
    ld b, a
    sub a
    cp b
    sub $97
    ld l, d
    jr c, jr_014_4835

    ld c, b
    ld c, c
    add l
    xor b
    and h
    adc c
    adc e
    ld c, c
    adc b
    ld e, d
    and h
    sub [hl]
    ld h, [hl]
    ld [hl], h
    ld a, c
    add l
    adc b
    ld l, b
    sbc e
    ld [hl], a
    ld [hl], a
    and a
    add a
    ld d, [hl]
    ld l, b
    sub e
    adc b
    add [hl]
    sub [hl]
    xor d
    ld l, b
    add a
    ld h, $98
    and l
    sbc c
    add l
    sbc c
    ld h, [hl]
    db $76
    add a
    sbc d
    adc b
    ld e, b
    add [hl]
    ld h, l
    and [hl]
    ld c, b
    sub a
    ld h, a
    sub a
    adc b
    sbc d
    ld a, c
    ld h, a
    ld h, l
    db $76
    ld [hl], l
    sbc b
    ld h, a
    ld a, e
    add a
    ld a, h
    db $76
    ld a, b
    add e
    ld h, [hl]
    ld l, b
    ld a, c
    sbc d
    ld d, a
    db $76
    ld h, l
    or [hl]
    ld a, b
    adc d
    ld l, b
    adc b
    ld d, [hl]
    or a
    db $76
    add a
    ld [hl], l
    adc d
    adc b
    adc d
    db $76
    ld e, c

jr_014_4835:
    add [hl]
    ld b, a
    or [hl]
    add a
    add a
    db $76
    ld l, d
    ld b, a
    sbc c
    ld h, l
    ld h, a
    add a
    ld e, c
    add a
    sbc h
    add a
    ld b, a
    ld h, [hl]
    ld h, [hl]
    or l
    ld e, b
    add [hl]
    ld l, b
    sub a
    ld a, b
    adc b
    ld h, a
    ld d, l
    ld h, a
    sbc b
    ld [hl], h
    cp b
    ld d, l
    ld c, c
    add l
    ld h, [hl]
    and [hl]
    ld a, d
    sub [hl]
    add a
    ld a, c
    ld h, [hl]
    adc b
    db $76
    ld [hl], a
    ld d, a
    and a
    add l
    ld l, h
    ld h, l
    ld l, d
    ld d, l
    ld [hl], a
    sbc b
    ld a, b

Jump_014_486c:
    sub [hl]
    ld l, c
    ld l, c
    ld d, a
    ld a, b
    ld b, l
    and l
    scf
    sub a
    add a
    sbc d
    ld [hl], a
    ld l, d
    ld [hl], l
    sbc b
    ld h, [hl]
    ld a, b
    db $76
    ld d, a
    add h
    adc c
    sub [hl]
    add [hl]
    sub l
    ld a, b
    sbc b
    adc c
    ld a, c
    ld h, l
    add [hl]
    ld b, [hl]
    ld [hl], a
    ld h, a
    sub a
    add h
    adc c
    ld l, b
    adc c
    sub [hl]
    ld a, b
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    ld [hl], l
    and a
    ld a, b
    ld d, a
    adc b
    ld a, c
    ld h, [hl]
    ld h, [hl]
    ld b, a
    db $76
    adc c
    ld d, a
    sbc b
    add [hl]
    ld [hl], a
    ld l, c
    ld l, c
    add a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    ld l, d
    ld h, a
    adc b
    ld [hl], l
    ld [hl], l
    adc b
    add a
    sub a
    ld d, a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    sub a
    ld l, b
    ld a, b
    ld l, c
    xor c
    add a
    db $76
    ld h, l
    ld a, b
    db $76
    db $76
    ld h, a
    ld a, b
    sub l
    adc c
    add a
    ld [hl], a
    ld e, b
    ld d, a
    sub a
    ld a, b
    sub h
    db $76
    ld h, a
    ld h, [hl]
    adc c
    ld c, d
    and a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld h, a
    jr c, jr_014_495b

    adc c
    ld a, b
    and [hl]
    add a
    ld b, [hl]
    add a
    ld h, a
    ld h, a
    add [hl]
    ld c, d
    ld h, a
    sub a
    ld a, b
    add a
    ld a, b
    ld l, c
    sub a
    add a
    sub l
    ld h, l
    ld e, b
    ld c, b
    ld l, c
    ld e, b
    adc b
    adc c
    add a
    xor b
    ld [hl], a
    ld d, h
    add e
    db $76
    ld c, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc d
    ld h, a
    sub a
    ld a, b
    add h
    sbc b
    ld b, a
    add [hl]
    ld e, b
    sub h
    ld a, c
    ld a, b
    adc b
    adc c
    ld l, c
    adc b
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld [hl], a
    add [hl]
    ld a, c
    ld a, d
    ld a, h
    ld h, a
    sub [hl]
    and l
    and a
    ld h, l
    ld c, b
    ld a, [hl-]
    ld d, [hl]
    add a
    add [hl]
    and [hl]
    ld a, c
    adc c
    adc c
    ld a, c
    ld [hl], a
    ld l, b
    ld l, b
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    and a
    ld l, d
    ld a, c
    adc c
    sub l
    add [hl]
    sub l
    add [hl]
    ld a, b
    ld h, l
    add [hl]
    ld [hl], a
    adc c
    db $76
    sub a
    and a
    sbc b
    ld h, a
    ld [hl], a
    ld h, a
    ld l, b
    ld d, l
    ld [hl], l
    adc b
    ld l, b
    add [hl]
    adc d
    xor b
    adc c
    ld e, b
    ld [hl], a
    ld h, [hl]
    ld b, [hl]
    db $76
    sub a
    add a
    ld a, c

jr_014_495b:
    add a
    sub a
    xor b
    ld e, b
    ld l, c
    db $76
    ld [hl], l
    ld h, [hl]
    sub a
    ld e, c
    ld e, c
    ld a, b
    ld a, c
    add [hl]
    or [hl]
    ld [hl], a
    ld h, [hl]
    ld l, b
    ld l, d
    db $76
    ld a, b
    add a
    xor b
    or l
    sub e
    add a
    ld a, d
    jr z, jr_014_49d0

    ld a, b
    sub l
    sub h
    add [hl]
    xor c
    add a
    ld a, b
    ld e, b
    ld l, c
    ld d, [hl]
    add h
    sub a
    and [hl]
    ld h, a
    ld c, b
    ld a, c
    adc c
    ld h, a
    sub [hl]
    add a
    sbc b
    ld h, [hl]
    db $76
    ld [hl], a
    ld l, b
    ld d, a
    ld l, c
    adc b
    and [hl]
    ld a, c
    ld a, c
    sbc c
    ld b, a
    ld h, [hl]
    ld [hl], h
    and [hl]
    ld h, a
    ld h, a
    ld a, c
    adc b
    adc c
    ld a, b
    adc d
    sub a
    db $76
    add [hl]
    db $76
    add h
    ld h, [hl]
    ld d, a
    ld [hl], a
    sbc c
    ld l, b
    and a
    adc e
    ld [hl], a
    db $76
    add [hl]
    ld h, [hl]
    add h
    ld e, b
    ld h, a
    adc b
    sub a
    add a
    add a
    sbc b
    adc c
    ld d, [hl]
    sbc b
    ld h, a
    ld h, h
    ld [hl], l
    add [hl]
    and a
    adc c
    ld e, c
    ld l, l
    ld l, d
    add [hl]
    add h
    add [hl]
    db $76
    ld c, c
    ld a, b
    ld a, b
    add a
    ld a, b

jr_014_49d0:
    sbc b
    xor b
    add a
    add l
    db $76
    ld a, b
    ld e, b
    ld a, b
    ld a, b
    add h
    ld h, a
    ld a, c
    adc d
    ld a, c
    ld l, b
    db $76
    ld [hl], a
    adc b
    ld [hl], l
    ld l, b
    db $76
    sub [hl]
    ld l, c
    adc c
    ld a, b
    ld [hl], h
    add l
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld e, b
    sbc b
    ld l, b
    sbc b
    add a
    sub h
    ld b, a
    add [hl]
    xor b
    add a
    ld [hl], a
    add a
    db $76
    ld a, b
    ld [hl], a
    ld e, c
    ld [hl], l
    ld l, b
    adc b
    adc d
    ld [hl], a
    ld l, b
    ld l, b
    add [hl]
    ld l, b
    ld [hl], a
    ld l, e
    scf
    sbc b
    ld [hl], a
    sub a
    add a
    adc b
    add a
    adc c
    ld a, c
    ld a, b
    add a
    ld h, [hl]
    add l
    add l
    and [hl]
    ld l, b
    adc d
    ld e, c
    add a
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    and a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld l, b
    add [hl]
    ld l, d
    add [hl]
    xor c
    adc b
    adc b
    db $76
    ld [hl], h
    ld [hl], a
    add a
    sbc b
    ld d, a
    ld l, b
    ld e, c
    adc c
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    sbc c
    ld a, b
    db $76
    ld a, b
    ld l, c
    db $76
    sub a
    sub [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    db $76
    ld l, b
    ld a, c
    adc c
    adc c
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    add a
    sub [hl]
    ld c, b
    ld [hl], l
    ld a, b
    xor c
    xor d
    ld h, a
    ld l, b
    db $76
    ld [hl], a
    and l
    add a
    add [hl]
    ld l, b
    ld a, c
    ld a, b
    adc c
    ld h, a
    add [hl]
    ld a, b
    and a
    add a
    sub l
    ld [hl], a
    ld c, c
    ld e, b
    sbc b
    add a
    add a
    ld [hl], a
    adc c
    add a
    adc b
    ld h, l
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    xor c
    db $76
    ld l, c
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    add l
    add a
    add a
    ld a, d
    adc c
    add a
    db $76
    ld l, b
    and l
    add a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    adc d
    ld l, b
    adc b
    ld [hl], l
    ld [hl], a
    add a
    ld a, c
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    sub a
    adc b
    ld a, b
    sub [hl]
    ld a, c
    ld [hl], l
    ld a, b
    db $76
    ld [hl], a
    add a
    sbc b
    adc c
    adc b
    ld [hl], a
    add a
    ld l, b
    sub a
    ld d, a
    ld l, b
    ld a, c
    ld l, c
    adc b
    ld a, b
    db $76
    add a
    ld a, b
    add a
    sub a
    db $76
    db $76
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    sub a
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld d, a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    add [hl]
    db $76
    add a
    adc b
    ld a, b
    ld l, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld a, b
    add [hl]
    sub a
    ld a, b
    adc c
    ld l, c
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    db $76
    add [hl]
    db $76
    add a
    adc d
    ld l, c
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, c
    ld d, a
    add [hl]
    ld l, b
    ld h, a
    and a
    ld a, c
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    ld a, b
    ld a, b
    ld e, c
    ld [hl], a
    add [hl]
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    sub a
    adc c
    ld h, [hl]
    adc b
    ld h, [hl]
    add a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    sub a
    sbc b
    add a
    ld l, b
    ld h, a
    db $76
    add a
    ld l, b
    ld a, c
    ld l, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, c
    ld h, a
    ld [hl], a
    add a
    sub a
    ld a, b
    ld a, b
    add l
    ld [hl], a
    db $76
    ld a, b
    add [hl]
    ld a, b
    xor b
    adc b
    and [hl]
    ld l, b
    ld l, b
    ld l, b
    add a
    add a
    add a
    db $76
    ld [hl], a
    sub [hl]
    sbc b
    add [hl]
    sub [hl]
    ld l, c
    ld l, b
    sbc b
    adc c
    ld [hl], a
    add a
    ld b, a
    ld h, a
    add a
    adc c
    sub [hl]
    adc b
    adc b
    add a
    sub a
    ld a, c
    ld h, a
    ld l, b
    ld h, a
    add a
    sub a
    sub [hl]
    ld l, b
    ld l, c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    and [hl]
    ld a, b
    ld h, a
    ld h, a
    ld a, b
    adc b
    sub a
    sub a
    add a
    ld a, c
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, a
    add a
    adc b
    add a
    sbc b
    ld [hl], a
    ld a, b
    ld l, c
    adc b
    add a
    sub [hl]
    add a
    ld h, a
    sub a
    ld [hl], a
    ld a, c
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    add [hl]
    sbc b
    ld [hl], a
    sub a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    and a
    add [hl]
    ld a, b
    ld a, c
    adc c
    ld [hl], a
    add [hl]
    add [hl]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    adc b
    add [hl]
    ld c, c
    db $76
    sub a
    sub l
    db $76
    adc b
    ld a, b
    adc b
    ld a, c
    sub a
    ld [hl], a
    ld a, b
    ld h, a
    adc c
    ld l, b
    ld a, b
    sub a
    add a
    add [hl]
    xor b
    add a
    adc b
    ld h, a
    adc c
    adc c
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc c
    adc b
    add a
    add [hl]
    sub h
    add l
    ld [hl], a
    ld a, c
    adc b
    adc b
    db $76
    sbc b
    ld a, b
    adc c
    ld l, c
    adc b
    ld h, a
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], l
    ld a, b
    ld l, b
    adc b
    ld a, c
    ld l, c
    ld [hl], a
    add a
    ld l, b
    adc b
    ld [hl], a
    db $76
    add [hl]
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    sub a
    add [hl]
    sbc b
    ld a, c
    ld a, b
    ld h, a
    ld a, b
    adc b
    ld l, b
    add a
    ld [hl], l
    ld a, b
    ld [hl], a
    ld a, c
    adc d
    ld [hl], a
    adc b
    add [hl]
    and a
    sub a
    add a
    ld a, b
    ld l, b
    ld l, b
    add a
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld e, b
    db $76
    ld a, c
    ld [hl], a
    sbc b
    sub a
    sbc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sbc b
    adc b
    sub a
    adc c
    ld [hl], a
    ld l, b
    add l
    add [hl]
    ld e, b
    ld a, b
    adc b
    sub a
    ld a, b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    and a
    ld a, c
    db $76
    add a
    adc b
    sub a
    adc c
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    db $76
    add [hl]
    add a
    and [hl]
    adc h
    cp e
    cp h
    xor e
    ld [hl], l
    ld h, [hl]
    add [hl]
    ld b, e
    ld h, $63
    ld h, [hl]
    ld b, [hl]
    adc c
    cp e
    cp h
    dec hl
    res 7, e
    cp d
    xor c
    sbc d
    adc d
    add [hl]
    ld a, b
    ld h, l
    ld d, [hl]
    inc hl
    ld b, b
    dec d
    ld [hl], d
    ld hl, $1490
    ld d, $37
    ld h, [hl]
    ld [hl], a
    xor c
    ld a, d
    call c, $eecd
    call z, $cdbd
    res 5, c
    xor d
    sbc c
    ld l, b
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld de, $2352
    ld h, l
    ld d, [hl]
    ld h, a
    sub a
    adc d
    sbc c
    dec hl
    sbc $cc
    rst $38
    sbc $de
    call c, $badc
    xor d
    xor c
    adc b
    add [hl]
    ld d, c
    ld b, l
    inc sp
    jp nz, Jump_014_4533

    ld b, l
    ld h, l
    db $76
    adc d
    adc c
    xor b
    adc e
    xor $dd
    xor $ed
    xor $dc
    ld a, e
    cp c
    sbc c
    sbc b
    add a
    ld h, l
    ld d, h
    ld b, l
    inc sp
    inc sp
    ld b, e
    ld b, e
    ld b, h
    ld d, h
    ld h, a
    ld h, a
    ld c, c
    sbc d
    xor l
    adc $dd
    sbc $dd
    db $dd
    call z, $aabb
    sbc d
    add a
    db $76
    ld h, l
    ld h, h
    db $e3
    ld de, $0111
    inc hl
    ld b, e
    ld b, h
    ld d, [hl]
    ld d, [hl]
    ld l, b
    adc d
    cp e
    cp h
    db $ed
    sbc $ed
    ld c, l
    call c, $abbc
    sbc d
    sbc c
    ld [hl], a
    ld [hl], a
    ld h, h
    ld d, h
    ld d, e
    ld [hl-], a
    ld hl, $3312
    ld b, h
    add h
    ld d, [hl]
    ld h, [hl]
    add a
    xor d
    xor e
    call $cecd
    db $ed
    db $dd
    db $dd
    cp h
    cp d
    xor d
    sbc c
    ret z

    ld [hl], a
    ld h, a
    ld d, l
    inc [hl]
    inc sp
    ld b, c
    inc hl
    inc sp
    inc [hl]
    ld b, l
    ld d, l
    ld h, a
    ld [hl], a
    sbc c
    xor d
    ld c, e
    call $edde
    db $dd
    call c, $bbdc
    cp d
    xor c
    sbc c
    ld [hl], a
    ld h, a
    ld h, l
    ld d, h
    ld b, h
    jp Jump_000_3233


    ld b, h
    inc [hl]
    ld b, l
    ld d, [hl]
    ld [hl], a
    adc b
    sbc d
    res 7, h
    call z, $cddd
    db $dd
    ld e, e
    call z, $99ab
    sbc c
    adc b
    add [hl]
    db $76
    ld b, l
    ld d, [hl]
    ld b, h
    ld b, e
    inc sp
    inc [hl]
    inc sp
    ld b, h
    add h
    ld h, [hl]
    db $76
    adc c
    sbc d
    xor d
    res 7, h
    db $dd
    call c, $ccdc
    jp z, $9aba

    sbc c
    sub a
    ld a, b
    ld h, a
    ld h, l
    ld d, h
    ld b, h
    ld b, e
    inc sp
    ld b, h
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    sbc b
    ld c, d
    xor e
    cp h
    call z, $dccd
    cp h
    jp z, $aabb

    xor c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    push de
    ld b, h
    ld b, e
    ld b, d
    inc [hl]
    ld b, h
    dec [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    add a
    adc d
    sbc d
    xor d
    res 7, h
    inc l
    db $db
    call c, $bacb
    xor d
    sbc b
    sub a
    ld a, b
    ld [hl], a
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    inc [hl]
    inc [hl]
    or h
    ld b, e
    ld d, h
    ld d, l
    ld d, l
    ld h, a
    ld l, b
    adc c
    sbc d
    sbc e
    cp e
    res 7, h
    call $cabc
    ld e, e
    sbc d
    sbc c
    sub a
    add a
    ld [hl], a
    ld d, [hl]
    ld h, l
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, l
    add l
    ld h, l
    ld l, b
    ld a, b
    sbc c
    sbc d
    xor d
    cp e
    set 1, e
    call z, $babb
    xor d
    sbc c
    sbc c
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld b, l
    ld d, e
    ld b, h
    dec [hl]
    inc [hl]
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    db $76
    ld [hl], a
    ld l, c
    sbc b
    xor c
    cp d
    xor e
    xor e
    cp e
    cp e
    jp z, $a9ba

    sbc d
    adc c
    add a
    ld a, b
    db $76
    and [hl]
    ld d, l
    ld b, l
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld a, c
    adc c
    sbc c
    ld e, e
    xor e
    xor d
    res 7, e
    cp e
    xor e
    xor c
    sbc d
    adc c
    sub a
    add a
    ld h, a
    ld h, l
    ld h, l
    ld h, l
    or h
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc d
    sbc d
    sbc d
    cp d
    ld c, e
    xor e
    cp h
    cp e
    xor d
    xor c
    xor c
    adc c
    ld a, b
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    or h
    ld b, l
    ld b, h
    ld b, l
    ld d, h
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld l, b
    adc b
    adc c
    xor d
    sbc e
    xor d
    xor d
    cp d
    ld e, e
    cp d
    xor d
    xor c
    sbc c
    sbc b
    adc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    or h
    ld d, l
    ld d, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, c
    adc b
    sbc c
    xor d
    xor d
    xor c
    cp d
    cp e
    xor d
    ld c, c
    cp c
    xor c
    adc c
    adc b
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, h
    ld h, h
    ld d, l
    ld d, l
    ld h, h
    ld d, l
    sub l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    add a
    adc b
    adc b
    sbc c
    sbc d
    xor c
    xor d
    xor e
    xor e
    xor c
    xor d
    ld c, d
    sbc c
    sbc b
    adc b
    ld [hl], a
    db $76
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld b, [hl]
    sub l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc c
    xor c
    sbc c
    sbc d
    xor d
    xor d
    cp d
    xor d
    cp c
    xor c
    ld l, c
    sub a
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    sub [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    xor c
    xor d
    xor c
    xor d
    xor d
    xor d
    sbc c
    xor c
    ld e, c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    sub [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    xor d
    sbc d
    xor d
    xor c
    xor d
    sbc d
    sbc b
    ld e, c
    adc b
    adc b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    sub a
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc b
    xor c
    xor c
    xor d
    sbc d
    sbc d
    sbc d
    sbc c
    sbc c
    ld l, b
    adc b
    adc b
    ld [hl], a
    add [hl]
    db $76
    ld [hl], l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    sub l
    ld h, a
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    adc c
    adc b
    xor c
    xor d
    sbc d
    sbc c
    xor d
    sbc c
    sbc d
    sbc c
    ld l, c
    add a
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    and [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    add [hl]
    add a
    adc b
    sbc c
    sbc b
    xor c
    adc d
    sbc c
    xor c
    sbc d
    sbc c
    sbc c
    ld e, c
    adc c
    adc b
    add a
    add a
    ld a, b
    ld h, a
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    sub l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    sbc b
    adc c
    sbc b
    sbc c
    sbc c
    xor c
    adc d
    ld l, c
    xor c
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    ld h, a
    db $76
    db $76
    ld h, l
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    sub [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    adc c
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    ld a, d
    adc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld a, b
    add [hl]
    add a
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    adc c
    sbc c
    ld l, d
    sbc c
    sbc d
    sbc b
    sbc c
    sbc b
    sbc b
    sub a
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, l
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    adc c
    ld l, c
    adc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
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
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc c
    adc c
    adc c
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    adc c
    adc b
    sbc b
    adc c
    sbc b
    sbc b
    adc d
    adc c
    ld a, c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc c
    ld a, b
    adc c
    adc c
    adc c
    sbc c
    ld l, b
    sbc b
    adc b
    sbc b
    adc c
    ld a, c
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    add [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc c
    ld a, c
    ld a, b
    sbc b
    adc c
    adc c
    sbc b
    sbc c
    adc b
    adc c
    adc b
    sub a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld d, [hl]
    ld [hl], a
    set 1, c
    xor l
    cp h
    sbc d
    ld [hl], l
    ld b, a
    ld h, a
    db $76
    ld h, d
    ld b, b
    ld b, [hl]
    ld [hl], d
    ld b, a
    add l
    ld b, l
    sbc c
    xor h
    xor e
    sbc h
    reti


    xor h
    call z, $bbba
    xor d
    xor c
    xor d
    sbc c
    adc c
    ld d, a
    ld h, a
    ld a, c
    ld d, l
    ld [hl], l
    ld d, e
    inc d
    ld b, b
    ld [de], a
    ld c, b
    ld h, d
    ld sp, $2113
    inc h
    inc sp
    add $47
    ld [hl], l
    add a
    ld a, c
    sbc d
    sbc b
    call $cdbe
    xor $ed
    db $dd
    cp h
    db $ec
    call z, $ba4b
    xor c
    xor d
    sbc c
    sub a
    ld [hl], a
    ld h, [hl]
    ld b, a
    ld d, h
    ld h, l
    ld d, h
    ld b, d
    inc bc
    ld b, e
    inc de
    push hl
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    ld l, c
    adc b
    ld a, c
    xor b
    xor c
    xor e
    adc $dd
    call $fdff
    db $fc
    ld l, $dc
    set 1, h
    cp c
    xor d
    xor c
    sbc b
    adc b
    adc c
    ld d, a
    ld h, c
    dec b
    ld b, l
    inc hl
    ld b, c
    db $e3
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    xor b
    sbc d
    sbc d
    adc b
    xor e
    db $ed
    db $ed
    db $dd
    ld c, l
    db $ed
    xor $dd
    call c, $abcb
    xor d
    sbc c
    sub a
    adc b
    ld [hl], a
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    call nc, Call_000_3313
    inc [hl]
    ld b, h
    ld b, e
    ld d, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld l, b
    sbc b
    sbc c
    xor e
    call c, $de4e
    call c, $eded
    sbc $cc
    call z, $babb
    sbc c
    sbc c
    sub a
    ld h, a
    db $76
    ld h, l
    sub l
    ld b, e
    ld b, d
    jr nz, jr_014_5128

    nop
    db $10
    inc sp

jr_014_5128:
    inc [hl]
    inc [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    add a
    adc c
    res 7, l
    call $eedd
    sbc $dd
    db $ed
    call c, $cbcc
    xor e
    xor d
    sbc d
    sbc b
    ld l, b
    db $76
    db $76
    ld h, h
    ld d, l
    ld b, h
    ld b, e
    inc sp
    ld [hl+], a
    ld de, $2322
    ld b, e
    ld b, h
    ld b, h
    ld d, l
    and [hl]
    ld h, a
    ld a, b
    adc b
    xor d
    cp d
    cp l
    call c, $dedd
    db $dd
    db $ed
    db $dd
    call c, $bccc
    dec sp
    xor d
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld h, l
    ld h, l
    ld d, e
    ld b, h
    inc [hl]
    inc sp
    ld sp, $3332
    db $d3
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    add [hl]
    adc b
    adc b
    xor e
    xor d
    set 1, l
    db $dd
    db $dd
    db $dd
    ld c, l
    call c, $cccd
    cp e
    cp d
    xor d
    sbc d
    adc c
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, e
    ld b, e
    and h
    inc [hl]
    ld [hl-], a
    ld b, d
    inc sp
    ld b, h
    inc [hl]
    ld b, l
    ld b, l
    ld d, l
    db $76
    ld a, b
    adc c
    adc d
    cp d
    cp e
    ld l, h
    cp h
    call c, $dddc
    db $dd
    call z, $cbcb
    cp d
    xor d
    xor d
    sbc b
    adc c
    adc b
    ld a, b
    db $76
    ld [hl], h
    ld h, h
    ld b, l
    ld d, h
    dec [hl]
    inc sp
    inc sp
    inc h
    inc [hl]
    inc sp
    ld b, e
    inc [hl]
    ld d, h
    ld d, l
    ld h, [hl]
    and [hl]
    ld a, b
    adc c
    sbc c
    xor d
    xor h
    res 7, h
    cp l
    call c, $dccd
    set 1, h
    cp e
    xor e
    ld c, d
    sbc c
    sbc b
    adc b
    add a
    db $76
    db $76
    ld h, l
    ld d, l
    ld d, h
    ld b, e
    ld b, h
    inc sp
    ld b, d
    ld [hl-], a
    inc [hl]
    jp Jump_000_3434


    ld b, l
    ld d, l
    ld h, a
    ld d, a
    ld l, b
    adc c
    sbc c
    sbc d
    xor d
    cp e
    res 7, l
    call z, $cc4d
    set 1, h
    cp d
    cp d
    xor d
    sbc b
    sbc c
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld b, l
    ld d, l
    and h
    ld b, e
    ld b, e
    inc sp
    ld b, d
    ld b, e
    ld b, e
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    sbc b
    adc c
    sbc d
    xor d
    cp e
    set 1, h
    cp h
    call z, $bcbd
    cp e
    cp e
    xor d
    xor b
    sbc c
    adc b
    ld b, a
    db $76
    db $76
    db $76
    ld d, l
    ld b, l
    ld d, l
    inc [hl]
    inc sp
    inc sp
    ld b, e
    inc sp
    inc sp
    ld b, e
    inc [hl]
    ld b, h
    call nz, Call_014_5655
    ld h, [hl]
    add [hl]
    ld a, c
    ld a, c
    sbc d
    xor c
    cp c
    cp h
    cp e
    call z, $bcbb
    cp h
    dec sp
    cp e
    cp c
    xor d
    xor c
    adc c
    sbc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    and h
    ld b, e
    ld b, e
    inc sp
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    db $76
    ld [hl], a
    add a
    sbc c
    xor c
    ld a, d
    xor d
    cp e
    cp e
    cp h
    cp e
    cp h
    cp h
    cp e
    cp e
    xor d
    xor c
    xor c
    sbc b
    adc b
    add a
    ld d, a
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    dec [hl]
    dec [hl]
    inc [hl]
    ld b, l
    ld b, l
    ld b, h
    or l
    ld d, [hl]
    ld h, [hl]
    ld l, b
    ld [hl], a
    ld a, c
    adc c
    sbc c
    sbc d
    sbc e
    cp d
    cp e
    xor h
    xor e
    cp e
    cp e
    dec sp
    cp d
    cp d
    xor c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld b, l
    ld d, h
    sub l
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, l
    dec [hl]
    ld b, l
    ld d, l
    ld d, l
    ld h, l
    db $76
    add [hl]
    ld a, b
    adc b
    sbc c
    ld a, c
    xor d
    cp d
    cp d
    xor e
    cp e
    cp d
    cp e
    cp d
    cp d
    xor e
    xor d
    sbc c
    xor b
    adc c
    ld a, c
    ld d, a
    add [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld b, h
    ld b, e
    ld d, h
    ld b, h
    ld b, e
    ld d, e
    ld b, l
    ld d, h
    or h
    ld b, [hl]
    ld d, l
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    ld a, b
    sbc b
    sbc d

Call_014_52da:
    sbc d
    sbc d
    xor d
    xor e
    cp d
    cp e
    ld c, e
    cp e
    xor e
    xor e
    sbc d
    xor c
    sbc c
    adc b
    adc c
    ld [hl], a
    ld h, a
    db $76
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    add [hl]
    ld b, l
    ld b, l
    ld b, h
    ld d, h
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    add a
    sbc b
    adc c
    adc b
    xor c
    xor c
    xor d
    xor d
    xor d
    cp e
    cp d
    xor e
    xor e
    xor d
    xor e
    sbc c
    sbc d
    ld c, c
    adc c
    add a
    add a
    add [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    or h
    ld b, l
    ld d, l
    ld d, l
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc c
    ld a, c
    sbc c
    xor d
    xor c
    ld a, d
    xor d
    xor d
    cp d
    cp d
    cp d
    cp d
    sbc d
    xor d
    sbc c
    sbc c
    adc b
    sub a
    adc b
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld [hl], l
    ld d, [hl]
    ld b, [hl]
    ld d, h
    ld h, h
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    ld l, b
    adc b
    add a
    sbc b
    sbc c
    sbc d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor e
    ld e, e
    xor c
    xor c
    xor c
    sbc c
    sbc b
    sub a
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    add l
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, l
    ld b, l
    ld d, h
    ld h, l
    ld b, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld a, b
    ld a, b
    sbc b
    adc c
    adc d
    sbc c
    sbc c
    xor d
    sbc d
    xor d
    sbc e
    sbc d
    xor c
    cp c
    xor d
    sbc d
    sbc c
    sbc c
    ld l, b
    sbc b
    adc b
    add a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, h
    ld d, l
    sub l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    ld a, d
    xor c
    sbc d
    xor d
    xor d
    sbc d
    sbc d
    xor d
    xor d
    xor c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    ld [hl], a
    ld e, b
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld h, l
    ld b, l
    ld d, l
    ld h, l
    ld d, l
    and [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    adc b
    sbc b
    sbc c
    sbc c
    xor c
    xor c
    xor c
    ld l, d
    xor d
    xor c
    sbc d
    xor d
    sbc c
    xor c
    sbc c
    adc c
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld d, a
    ld d, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    and a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    xor c
    xor c
    sbc d
    sbc c
    sbc d
    sbc d
    xor d
    sbc d
    ld l, c
    sbc c
    xor c
    sbc c
    sbc b
    adc b
    sbc b
    ld a, b
    adc b
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, a
    ld h, a
    ld [hl], a
    ld l, b
    sbc b
    ld a, b
    adc b
    adc c
    adc b
    sbc c
    sbc d
    sbc d
    sbc c
    xor c
    xor d
    xor c
    xor d
    sbc d
    sbc c
    xor c
    ld l, b
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    db $76
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, a
    ld h, a
    ld h, a
    db $76
    add a
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    xor c
    sbc d
    xor c
    xor b
    xor d
    adc d
    sbc c
    sbc b
    ld l, c
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, l
    sub l
    ld h, l
    ld h, l
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc c
    sbc b
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    ld d, a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld l, b
    db $76
    add a
    ld a, b
    ld a, b
    ld a, c
    adc c
    adc b
    sbc b
    ld a, c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    xor b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    sub [hl]
    ld [hl], l
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    sbc c
    adc b
    ld a, c
    sbc c
    adc d
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    xor b
    sbc c
    adc b
    adc b
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld d, a
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    sub a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    add a
    ld a, b
    add a
    sub a
    adc b
    adc b
    adc c
    sbc c
    sbc b
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor b
    sbc b

Call_014_5529:
    xor c
    sbc b
    adc c
    add a
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    sub a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc c
    sbc b
    sbc b
    ld a, b
    sbc c
    sbc c
    sbc c
    sbc b
    xor b
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    db $76
    sub a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    ld a, c
    adc c
    sbc c
    adc c
    adc c
    sbc d
    adc c
    adc c
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    db $76
    add [hl]
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    sbc b
    adc c
    adc c
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
    adc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    add a
    ld h, a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc c
    add a
    adc b
    sbc b
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc c
    sbc c
    adc b
    adc c
    sbc b
    sbc b
    adc b
    sbc b
    ld l, c
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    add a
    ld d, [hl]
    ld [hl], a
    ld e, c
    call z, $c9bc
    xor e
    cp e
    cp e
    xor b
    xor c
    ld h, l
    ld d, e
    sub a
    ld b, [hl]
    adc b
    and [hl]
    ld [hl], d
    inc [hl]
    ld [bc], a
    ld d, a
    ld e, b
    ld b, c
    ld e, b
    ld h, l
    ld [hl], h
    ld d, h
    ld l, c
    xor b
    cp e
    cp e
    sbc h
    sbc d
    db $db
    ret z

    sbc h
    set 1, h
    cp d
    sbc d
    cp e
    xor d
    xor d
    sbc c
    sbc d
    sbc b
    sbc b
    adc b
    ld a, b
    add a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld d, a
    ld h, e
    ld [hl], l
    ld b, e
    inc d
    ld d, l
    ld [bc], a
    ld [de], a
    ld b, h
    sub a
    sub e
    inc sp
    ld b, d
    ld [hl+], a
    inc [hl]

Call_014_5655:
    inc hl
    dec [hl]
    ld d, e
    ld b, h
    ld h, [hl]
    ld d, l
    ld e, c
    add [hl]
    ld h, a
    adc b
    add a
    ret


    xor e
    or a
    adc e
    adc $bc
    db $ed
    sbc [hl]
    db $dd

jr_014_5669:
    xor $dc
    call c, $abdc
    db $dd
    cp e
    ld e, h
    cp h
    xor d
    cp d
    xor c
    sbc b
    xor c
    sbc b
    xor b
    sub a
    ld h, [hl]
    add l
    ld h, [hl]
    ld d, l
    ld b, a
    ld h, h
    ld [hl], l
    ld d, [hl]
    ld h, h
    ld b, l
    ld [hl-], a
    ld hl, $4335
    ld b, d
    ld b, l
    ld b, [hl]
    ld [hl], a
    ld d, [hl]
    ld b, a
    ld [hl], a
    ld h, [hl]
    reti


    sbc b
    sub a
    ld a, c
    cp d
    ld a, d
    adc d
    cp c
    xor e
    cp l
    db $fd

Call_014_569b:
    call $efcb
    xor $ec
    ld a, [hl]
    call z, $dddc
    call z, $cbca
    cp d
    cp c
    sbc c
    xor c
    sbc b
    xor c
    add a
    ld [hl], a
    ld [hl], a
    ld e, b
    ld h, h
    ld h, [hl]
    ld b, d
    ld bc, $5443
    ld [hl-], a
    dec [hl]
    ld [hl+], a
    inc d
    inc h
    ld b, l
    dec [hl]
    ld d, l
    ld d, l
    push de
    ld h, l
    ld h, l
    ld h, a
    ld h, a
    ld [hl], a
    sbc d
    sbc b
    adc d
    xor c
    xor c
    adc b
    adc d
    cp h
    db $dd
    call c, $cc9e
    db $dd
    sbc $dd
    db $dd
    call c, $dccc
    cp h
    xor e
    cp e
    xor c
    xor b
    xor b
    adc c
    jr c, jr_014_5669

    ld [hl], a
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    dec [hl]
    ld b, h
    inc [hl]
    inc [hl]
    ld b, e
    ld b, d
    inc hl
    inc sp
    ld b, h
    and h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, c
    adc c
    adc c
    sbc c
    xor e
    xor h
    set 3, l
    xor $dc
    call c, $ddcd
    call $dccc
    res 7, e
    jp z, Jump_000_1aca

    sbc d
    sbc b
    adc b
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld d, h
    inc sp
    ld d, e
    ld b, d
    ld h, d
    ld bc, $2022
    ld hl, $3421
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld d, h
    ld h, l
    ld d, [hl]
    db $76
    ld d, a
    rst $00
    ld [hl], a
    adc c
    adc b
    sbc c
    cp h
    cp e
    call $cdcc
    adc $ec
    db $dd
    db $ed
    call Call_014_5ddd
    call z, $bccc
    cp e
    xor e
    xor d
    xor c
    sbc c
    adc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld h, l
    ld b, l
    ld d, l
    ld b, e
    ld b, h
    inc sp
    inc sp
    ld [hl-], a
    inc [hl]
    ld [hl+], a
    ld [de], a
    ld b, e
    inc sp
    ld b, e
    ld b, h
    push bc
    ld b, l
    ld d, h
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld l, b
    sbc b
    adc b
    xor c
    xor d
    xor d
    xor h
    cp e
    call z, $cc9c
    call c, $dddd
    db $dd
    call z, $bddc
    cp e
    res 7, e
    xor e
    cp c
    xor d
    sbc d
    ld c, c
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, l
    ld d, h
    ld d, e
    inc [hl]
    inc [hl]
    inc [hl]
    inc sp
    sub e
    inc hl
    inc h
    inc h
    inc sp
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    add a
    ld a, b
    rst $10
    adc b
    sbc c
    xor e
    xor d
    cp e
    cp h

Call_014_57a7:
    call z, $cdcc
    call c, $cddc
    call z, $ccdd
    ld e, e
    set 1, e
    cp d
    cp d
    xor d
    xor c
    sbc c
    sbc b
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld h, l
    ld h, [hl]
    ld [hl], $45
    ld d, h
    ld d, e
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc hl
    ld b, e
    ld b, e
    ld d, e
    ld b, h
    ld b, h
    push bc
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld l, b
    ld [hl], a
    ld a, c
    adc b
    adc c
    sbc c
    xor e
    xor e
    cp d
    cp e
    cp h
    adc h
    call z, $cbbd
    call $cccc
    set 1, h
    cp e
    cp e
    cp d
    xor d
    xor d
    xor c
    adc c
    ld c, c
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld b, l
    ld b, h
    ld d, h
    ld d, l
    ld b, l
    inc sp
    ld b, e
    ld [hl], e
    ld b, d
    inc h
    ld [hl-], a
    ld b, e
    inc [hl]
    ld b, e
    ld b, h
    ld b, h
    inc [hl]
    ld b, l
    ld d, h
    ld d, [hl]
    db $76
    db $76
    ld [hl], a
    ret z

    adc b
    sbc d
    adc d
    sbc d
    xor d
    xor e
    cp h
    cp e
    xor e
    cp e
    call z, $bcdc
    call z, Call_014_6ccb
    cp e
    cp d
    cp e
    xor e
    xor d
    sbc d
    sbc c
    adc c
    adc c
    sbc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld b, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, e
    ld b, e
    ld b, e
    inc hl
    ld b, e
    inc hl
    inc sp
    ld b, h
    inc [hl]
    sub h
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    add [hl]
    adc c
    adc c
    sbc c
    sbc c
    xor e
    sbc d
    xor e
    cp h
    cp e
    set 1, h
    set 1, e
    cp h
    cp e
    set 1, e
    cp d
    cp d
    xor e
    xor d
    ld c, c
    sbc c
    sbc c
    adc c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld h, e
    ld b, h
    inc [hl]
    inc [hl]
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    inc h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld d, h
    or [hl]
    ld h, l
    db $76
    ld h, [hl]
    add a
    adc b
    adc c
    sbc b
    xor c
    xor d
    sbc d
    xor d
    cp d
    cp e
    cp e
    xor e
    ld a, e
    res 7, h
    res 7, e
    jp z, $bbbb

    cp d
    cp d
    xor d
    sbc d
    sbc b
    sbc b
    sbc b
    adc b
    ld c, b
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld d, l
    ld b, e
    ld b, h
    ld b, h
    ld b, e
    inc [hl]
    add e
    inc [hl]
    inc [hl]
    inc sp
    ld d, e
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    and a
    adc b
    adc c
    sbc c
    xor c
    sbc d
    sbc d
    cp c
    cp d
    cp e
    cp e
    set 1, e
    cp e
    cp e
    cp h
    ld e, e
    cp e
    cp e
    xor d
    xor c
    xor c
    xor c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    db $76
    ld b, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld h, h
    ld h, l
    ld b, l
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    sub h
    ld b, e
    ld b, h
    ld b, l
    ld b, l
    ld d, h
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc c
    adc c
    adc c
    xor d
    sbc d
    xor c
    xor e
    xor e
    res 5, e
    cp e
    cp h
    cp d
    cp e
    res 7, d
    cp d
    cp d
    xor d
    ld e, d
    xor d
    xor c
    sbc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    add a
    ld a, b
    db $76
    ld d, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, l
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    and h
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    sbc c
    xor b
    xor c
    sbc d
    xor d
    xor d
    xor e
    xor d
    cp d
    cp d
    cp e
    cp d
    cp d
    res 5, e
    cp d
    cp e
    xor e
    sbc d
    xor c
    xor c
    ld e, b
    sbc b
    sbc b
    add a
    sub a
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld h, l
    ld d, h
    ld b, l
    ld d, h
    ld b, l
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld b, h
    ld h, h
    and [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    adc c
    adc d
    sbc d
    sbc d
    xor d
    xor d
    xor e
    sbc e
    xor d
    cp d
    xor e
    xor e
    cp e
    xor e
    cp e
    xor d
    xor d
    xor e
    sbc e
    sbc d
    sbc c
    sbc c
    sbc b
    ld e, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld b, l
    ld h, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld b, h
    ld d, h
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    and [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    sbc c
    xor c
    xor c
    xor e
    xor c
    xor e
    xor d
    sbc d
    xor e
    xor d
    cp e
    xor e
    xor e
    cp d
    xor e
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sbc d
    adc c
    sbc b
    ld e, b
    adc b
    ld [hl], a
    db $76
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    ld [hl], l
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    db $76
    or [hl]
    db $76
    ld [hl], a
    add a
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    xor d
    sbc c
    xor c
    xor c
    cp d
    cp c
    adc d
    xor d
    cp d
    xor d
    sbc e
    xor e
    xor d
    xor d
    xor c
    xor c
    xor c
    sbc c
    sbc c
    adc c
    adc b
    sbc b
    ld e, b
    ld a, b
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld b, l
    ld [hl], h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    and a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc c
    xor c
    xor d
    sbc d
    xor d
    xor d
    xor d
    adc d
    sbc e
    xor d
    xor d
    xor d
    cp c
    cp c
    xor d
    xor c
    xor d
    sbc d
    sbc c
    sbc b
    sbc c
    adc c
    add a
    ld e, b
    adc b
    ld [hl], a
    ld [hl], a
    db $76

Jump_014_5a55:
    db $76
    db $76
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, a
    sub [hl]
    db $76
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    sbc c
    sbc d
    sbc c
    sbc d
    xor c
    xor c
    xor e
    adc e
    xor d
    xor d
    sbc d
    cp c
    cp c
    cp d
    xor e
    sbc d
    xor d
    sbc c
    xor c
    sbc c
    adc c
    sbc b
    adc c
    ld l, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld d, h
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    and [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    adc d
    adc d
    sbc c
    xor c
    xor c
    xor c
    xor c
    sbc d
    xor d
    sbc d
    xor d
    sbc d
    xor c
    xor d
    sbc d
    xor d
    sbc d
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    ld e, b
    adc c
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    db $76
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    sub [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    xor d
    xor d
    xor c
    xor d
    xor d
    sbc c
    xor c
    xor c
    xor d
    xor d
    sbc d
    xor c
    sbc d
    sbc d
    sbc c
    ld a, b
    sbc b
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    db $76
    add a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    xor b
    sbc c
    xor c
    xor c
    xor c
    sbc d
    sbc d
    xor d
    sbc c
    xor c
    xor c
    sbc d
    xor c
    sbc d
    xor d
    ld l, c
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld d, [hl]
    db $76
    ld h, [hl]
    ld [hl], l
    db $76
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, l
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    xor c
    adc b
    adc c
    sbc c
    adc b
    sbc d
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    xor d
    sbc c
    sbc d
    sbc d
    sbc c
    ld a, d
    xor c
    sbc d
    xor b
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    adc b
    adc c
    ld a, c
    add a
    adc b
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    sub a
    add a
    add a
    adc b
    adc b
    adc b
    sbc b
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    xor c
    sbc d
    sbc c
    xor c
    xor c
    xor c
    xor c
    sbc c
    sbc c
    adc c
    sbc b
    sbc b
    adc b
    adc b
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld l, b
    add [hl]
    adc b
    ld a, b
    add a
    sbc b
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    xor c
    xor c
    xor c
    sbc d
    sbc c
    xor c
    xor c
    sbc c
    adc d
    sbc c
    sbc c
    ld l, b
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    ld a, c
    sbc c
    sbc c
    xor c
    adc d
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    sub a
    adc c
    ld a, c
    ld [hl], a
    ld a, b
    ld d, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    sub a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld l, b
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    sbc c
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    xor c
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    sub a
    sbc c
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld l, b
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    sbc b
    adc b
    sbc b
    adc c
    adc c
    adc b
    sbc b
    sbc c
    adc c
    adc b
    sbc b
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    ld l, b
    adc b
    adc b
    add a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    db $76
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc c
    sbc b
    sbc b
    sbc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    sbc b
    adc c
    sbc c
    xor c
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    adc c
    ld a, c
    adc b
    ld a, b
    ld a, c
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld l, b
    ld h, a
    sub a
    db $76
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc b
    adc c
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    sbc c
    sbc b
    adc c
    sbc b
    sbc b
    sbc b
    adc c
    ld a, b
    adc c
    sub a
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b

Call_014_5ddd:
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    add a
    adc b
    adc c
    adc b
    adc b
    sub a
    adc c
    adc c
    adc c
    adc b
    adc b
    sbc c
    adc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    adc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    ld a, c
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    ld h, a
    ld l, b
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    sbc b
    ld a, c
    add a
    sub [hl]
    ld a, b
    ld h, a
    sub [hl]
    add a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    ld h, [hl]
    add [hl]
    adc b
    add a
    ld e, b
    adc b
    ld [hl], a
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc c
    ld l, b
    sbc b
    sbc c
    adc b
    ld h, [hl]
    ld b, l
    ld l, c
    sbc c
    xor d
    xor b
    ld h, h
    ld [hl+], a
    ld [hl], $7b
    db $dd
    db $eb
    sbc c
    add a
    db $76
    ld d, l
    ld b, l
    ld h, [hl]
    ld b, l
    ld [hl], a
    adc d
    xor e
    cp e
    xor d
    xor b
    adc b
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, b
    adc b
    ld h, a
    ld l, b
    sub a
    adc b
    and a
    add [hl]
    ld a, b
    ld a, b
    db $76
    sbc b
    xor d
    ld a, c
    add l
    ld [hl], a
    ld c, b
    adc b
    cp b
    sbc c
    ld a, c
    sbc c
    db $76
    ld d, e
    inc h
    ld [hl], $88
    xor e
    db $ed
    db $db
    xor c
    db $76
    ld [hl], l
    ld d, h
    ld h, a
    ld d, a
    sub [hl]
    sbc b
    ld a, d
    cp d
    cp c
    sbc b
    ld [hl], e
    ld h, a
    adc c
    sbc b
    xor e
    ld [hl], a
    sub l
    ld l, b
    ld l, c
    xor b
    adc c
    xor b
    ld h, a
    ld d, [hl]
    ld [hl], l
    db $76
    ld d, l
    ld [hl], a
    xor b
    adc d
    ld a, b
    adc c
    sbc e
    xor d
    xor d
    xor b
    ld h, a
    ld [hl], h
    ld b, l
    ld b, [hl]
    ld e, b
    sbc c
    sub [hl]
    xor d
    adc b
    adc d
    add a
    ld [hl], a
    adc d
    ld [hl], a
    xor b
    ld a, c
    cp b
    ld a, b
    ld a, b
    add a
    add a
    db $76
    ld b, l
    adc b
    add a
    ld a, c
    cp d
    ret


    ld [hl], a
    ld l, b
    sbc c
    res 7, b
    ld h, a
    ld b, l
    ld d, d
    ld h, l
    ld l, c
    ld l, b
    sbc c
    xor c
    cp c
    sbc c
    ld d, a
    ld a, b
    adc b
    sbc c
    sbc c
    ld l, d
    xor d
    sub a
    add [hl]
    ld d, h
    ld b, [hl]
    ld b, e
    ld b, a
    adc b
    xor e
    cp [hl]
    set 1, c
    and a

Call_014_5eee:
    ld d, a
    jr nz, jr_014_5f56

    ld a, b
    sbc c
    cp e
    adc b
    adc b
    ld [hl], l
    ld [hl], a
    ld h, [hl]
    sub a
    xor d
    adc e
    ret z

    sbc b
    cp b
    sub [hl]
    sub a
    ld a, b
    ld [hl], a
    cp d
    ld l, b
    add [hl]
    ld h, a
    ld a, c
    ld a, c
    adc d
    xor b
    ld l, c
    sub a
    ld h, l
    ld d, a
    ld a, b
    sbc e
    ret


    ld l, e
    cp e
    adc d
    ld [hl], a
    add h
    ld a, b
    ld h, [hl]
    ld l, d
    xor b
    ld a, d
    ld h, [hl]
    ld [hl], a
    ld h, a
    add l
    adc d
    sbc e
    xor e
    sub a
    db $76
    ld h, l
    ld h, [hl]
    adc b
    sbc b
    xor e
    xor d
    and [hl]
    db $76
    ld b, [hl]
    scf
    ld h, a
    ld l, d
    sbc d
    cp h
    cp d
    sub a
    sbc c
    ld d, a
    ld d, e
    ld d, l
    ld c, b
    ld e, b
    xor b
    xor d
    ld c, b
    and a
    ld a, d
    sbc c
    sub a
    adc d
    adc c
    ld [hl], l
    sub a
    sbc d
    xor b
    sbc c
    ld d, a
    ld h, l
    ld c, b
    ld [hl], l
    sbc c
    ld l, c
    ld h, a
    ld [hl], a
    sub [hl]
    ld l, b
    ld e, b
    xor h
    sbc b

jr_014_5f56:
    xor c
    adc c
    sub a
    ld d, [hl]
    ld d, c
    sub [hl]
    add hl, sp
    xor b
    cp d
    cp c
    sbc d
    ld d, e
    and h
    ld l, d
    ld e, d
    cp c
    cp c
    ld a, e
    db $76
    sub l
    ld d, l
    ld d, c
    ld l, c
    adc b
    xor h
    xor d
    ret c

    adc d
    ld a, c
    ld c, b
    ld h, h
    add a
    adc c
    cp b
    jp c, $8779

    add e
    ld h, $46
    ld l, b
    sbc h
    cp e
    cp e
    adc b
    ld d, l
    add d
    ld b, [hl]
    ld a, b
    xor d
    xor e
    cp b
    sbc d
    ld a, b
    add a
    ld l, b
    ld c, c
    ld d, h
    add [hl]
    xor e
    sbc c
    cp b
    xor c
    ld c, e
    ld [hl], l
    ld h, [hl]
    ld a, c
    and [hl]
    and a
    ld a, c
    ld h, a
    sub h
    db $76
    add h
    sub a
    xor h
    cp d
    adc d
    add a
    sub a
    and a
    ld e, d
    add a
    ld h, a
    ld e, c
    ld h, e
    add [hl]
    sbc e
    xor c
    db $76
    adc b
    ld e, b
    ld d, [hl]
    adc e
    sbc d
    sbc c
    adc b
    and a
    ld h, a
    ld a, b
    and l
    adc c
    ld c, c
    ld d, [hl]
    adc b
    adc b
    ld e, b
    reti


    xor d
    and a
    ld b, a
    ld e, c
    add [hl]
    db $76
    ld [hl], h
    add a
    ld l, b
    adc e
    sbc e
    adc d
    ld h, a
    ld [hl], e
    sub l
    scf
    ld l, c
    xor c
    cp h
    db $ec
    xor b
    adc c
    daa
    ld d, d
    ld b, l
    ld l, c
    add h
    adc d
    sbc c
    add [hl]
    ld a, h
    adc d
    adc c
    add [hl]
    ld [hl], l
    ld h, e
    jr c, jr_014_6051

    db $76
    cp c
    xor e
    sbc b
    add a
    sbc b
    ld a, b
    sub h
    sbc b
    ld d, a
    ld l, b
    sbc c
    ld l, e
    adc b
    sbc b
    and l
    add l
    sub [hl]
    ld b, l
    ld d, l
    ld e, h
    ld a, c
    call z, Call_014_569b
    ld h, l
    ld a, c
    db $76
    add a
    add h
    ld e, c
    ld d, a
    ld l, c

jr_014_6009:
    adc h
    adc e
    ret


    cp d
    ld [hl], a
    add e
    ld [hl], a
    ld [hl], a
    ld [hl-], a
    ld h, h
    db $76
    and a
    sbc h
    cp c
    ld e, d
    ld a, d
    db $76
    ld a, e
    ld e, c
    and a
    sub h
    adc b
    ld d, e
    ld h, [hl]
    ld l, e
    and [hl]
    adc c
    ld l, b
    ld h, a
    ld a, b
    ld l, c
    adc c
    add l
    xor d
    adc b
    and [hl]
    adc b
    ld e, b
    ld [hl], d
    ld h, $57
    add [hl]
    xor e
    ld [hl], a
    add [hl]
    xor c
    ld a, d
    and [hl]
    ld a, b
    sbc d
    add h
    xor c
    ld c, e
    sub [hl]
    ld h, [hl]
    add hl, sp
    ld [hl], $83
    res 0, [hl]
    and l
    sub [hl]
    ld h, a
    and [hl]
    adc c
    and a
    xor b
    cp b
    db $76
    db $76
    add a
    adc c

jr_014_6051:
    ld [hl], c
    ld l, b
    ld d, a
    and a
    cp l
    ld a, c
    xor d
    add $69
    ld d, l
    ld [hl], a
    ld e, b
    dec [hl]
    sub a
    sub a
    ld e, c
    sub [hl]
    sbc d
    ld [hl], a
    add l
    sbc b
    ld [hl], $a7
    adc c
    ld a, e
    and a
    jp z, Jump_014_7586

    ld l, b
    jr c, jr_014_6009

    ld h, [hl]
    ld l, c
    ld h, [hl]
    sbc c
    sbc d
    ld a, e
    sbc d
    db $76
    ld h, l
    ld [hl], e
    ld [hl], a
    ld e, c
    adc c
    xor e
    xor c
    and l
    ld [hl], h
    ld d, a
    ld d, h
    xor d
    adc b
    sub a
    and [hl]
    adc c
    and a
    ld c, b
    ld a, d
    ld l, c
    ld h, h

jr_014_608e:
    db $76
    ld [hl], a
    sub a
    sub [hl]
    sub a
    ld a, b
    adc c
    adc b
    adc c
    or [hl]
    ld e, d
    ld h, [hl]
    add h
    db $76
    ld [hl], l
    and a
    xor l
    sub a
    sub l
    sbc b
    add a
    ld h, [hl]
    add a
    ld c, c
    ld c, e
    sub a
    ld a, d
    ld d, h
    ld [hl], a
    ld l, b
    add a
    add a
    adc c
    ld [hl], a
    sub l
    ld l, h
    ld e, c
    and [hl]
    ld a, b
    ld a, b
    and h
    db $76
    add [hl]
    ld a, c
    sbc d

jr_014_60bb:
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld l, c
    ld l, b
    ld e, c
    ld a, e
    adc d
    sub [hl]
    ld h, a
    sub l
    ld h, e
    ld l, b
    ld [hl], l
    ld a, b
    ld a, e
    ld a, b
    ret c

    adc d
    sub [hl]
    add l
    ld [hl], h
    ld b, e
    call nz, Call_014_7a7a
    or a
    sbc l
    ld e, d
    ld d, l
    ld h, h
    ld e, b
    ld d, h
    sub [hl]
    ld a, e
    xor c
    sbc c
    jr c, @-$74

    ld b, a
    sub a
    adc b
    add a
    ld a, b
    sub l
    sub [hl]
    jr jr_014_608e

    cp d
    sbc d
    sbc c
    and [hl]
    ld h, [hl]
    adc c
    ld d, [hl]
    ld c, c
    ld a, d
    sbc b
    xor c
    xor c
    sbc b
    ld e, c
    ld b, l
    ld h, $69
    adc c
    xor c
    adc d
    sbc b
    sbc b
    ld a, b
    sub a
    xor b
    add [hl]
    ld [hl], l
    and l
    ld e, b
    ld a, b
    sub [hl]
    adc c
    sbc b
    sbc c
    sub l
    ld e, e
    sub a
    ld [hl], h
    sbc e
    ld h, a
    add a
    ld d, [hl]
    adc c
    ld c, b
    ld a, b
    push bc
    adc b
    adc d
    add l
    and h
    ld d, a
    ld h, d
    sub a
    ld e, e
    ld a, c
    sbc b
    xor b
    and h
    sub e
    ld [hl], a
    jr z, jr_014_60bb

    adc d
    ld l, l
    ld [hl], a
    ld a, d
    sbc b
    ld l, c
    add a
    ld l, d
    add [hl]
    xor d
    ld a, d
    db $76
    sbc b
    ld [hl], l
    ld b, l
    ld h, [hl]
    ld l, b
    sub [hl]
    xor b
    xor l
    ld d, a
    add $86
    ld [hl], $73
    ld l, d
    adc c
    ld l, b
    xor e
    ld e, c
    ld [hl], l
    ld d, l
    scf
    ld h, [hl]
    xor h
    cp d
    xor c
    rst $00
    ld h, l
    ld a, c
    ld b, h
    sub l
    add a
    ld e, e
    db $76
    ld l, d
    sub a
    xor b
    xor c
    and l
    sub l
    sub e
    ld c, d
    ld l, c
    add a
    cp c
    sub [hl]
    ld a, c
    ld h, a
    ld a, h
    and [hl]
    adc d
    ld e, b
    add e
    sbc c
    ld h, l
    add [hl]
    ld a, c
    adc b
    add [hl]
    sub [hl]
    ld a, e
    add e
    add a
    dec b
    ld [hl], a
    ld a, d
    sbc c
    ret c

    and a
    xor b
    ld b, l
    ld b, [hl]
    ld e, b
    db $76
    and [hl]
    ld a, l
    ld [hl], l
    xor c
    add a
    db $76
    and l
    and [hl]
    ld a, c
    ld a, b
    adc e
    ld h, [hl]
    add a
    ld h, [hl]
    ld h, l
    ld l, b
    ld e, c
    sbc c
    ld l, b
    ret


    sub [hl]
    sub l
    ld d, [hl]
    ld a, [hl+]
    and a
    adc c
    sbc b
    adc d
    adc b
    ld l, b
    ld d, [hl]
    ld h, h
    ld l, b
    sub h
    ld c, b
    add a
    ld a, c
    adc h
    ld a, b
    xor c
    adc b
    add a
    sub a
    ld d, [hl]
    ld h, [hl]
    add [hl]
    adc d
    ld h, [hl]
    xor c
    adc b
    bit 6, a
    scf
    ld l, c
    add a
    sbc l
    sbc b
    adc b
    sub c
    ld h, [hl]
    add l
    ld h, l
    ld a, c
    ld h, h
    adc h
    ld e, b
    adc b
    add $66
    sub a
    dec [hl]
    sbc b
    ld l, b
    or a
    sub a
    ld [hl], l
    sub a
    ld [$7887], sp
    sbc b
    sbc b
    add a
    and a
    ld a, c
    add d
    ld h, a
    ld l, b
    add [hl]
    sbc d
    ld a, c
    ld a, e
    and a
    ld [hl], l
    add a
    ld l, b
    ld l, b
    and l
    sbc h
    add h
    sub l
    sub [hl]
    ld [hl], l
    ld l, b
    ld a, b
    adc c
    adc c
    ld e, d
    adc b
    ld [hl], a
    ld a, b
    ld [hl], $68
    db $76
    add a
    ld a, c
    ld a, c
    xor b
    adc b
    ld a, c
    ld d, a
    sub e
    sub [hl]
    adc c
    ld h, [hl]
    sub a
    ld l, c
    ld h, [hl]
    or [hl]
    ld a, b
    db $76
    and h
    ld l, c
    ld h, a
    ld [hl], l
    xor b
    adc b
    ld l, c
    ld l, b
    sub l
    and [hl]
    xor b
    sub [hl]
    ld h, a
    adc b
    ld a, [hl+]
    db $76
    or a
    ld e, c
    add l
    adc b
    ld a, d
    add hl, hl
    sub [hl]
    ld h, l
    ld [hl], e
    add $6d
    ld [hl], a
    xor b
    and a
    ld a, b
    cp b
    ld d, l
    ld l, d
    ld [hl], $5b
    ld c, b
    xor b
    cp c
    adc e
    xor c
    ld h, l
    ld h, a
    ld h, h
    add [hl]
    ld h, a
    xor b
    sbc e
    ld c, e
    add [hl]
    add h
    ld d, a
    and l
    add a
    ld a, d
    ld e, d
    adc c
    ld l, c
    sub a
    add l
    sbc b
    ld e, b
    ld e, b
    and a
    sub [hl]
    ld [hl], l
    sub l
    adc c
    ld l, c
    adc d
    sbc c
    add l
    ld [hl], a
    jr c, jr_014_62c3

    ld h, [hl]
    adc e
    adc c
    and a
    ld h, h
    add h
    ld l, c
    ld e, b
    ld a, d
    ld d, a
    cp c
    adc b
    dec sp
    ld d, l
    ld a, b
    ld l, c
    ld a, d
    sub [hl]
    adc c
    ld e, b
    ld a, b
    ld h, [hl]
    ld d, a
    ld a, b
    sub a
    adc b
    add l
    sbc b
    adc c
    ld h, [hl]
    or e
    add [hl]
    add [hl]
    ld [hl], l
    ld c, d
    ld c, c
    xor b
    adc b
    sub a
    cp b
    ld e, e
    ld [hl], a
    ld [hl], l
    ld h, l
    add e
    add [hl]
    sub [hl]
    sub a
    jp z, Jump_014_486c

    add d
    ld [hl], l
    ld a, c
    ld [hl], $86
    and a
    sbc b
    add $98
    and l
    ld h, l
    ld h, [hl]
    db $76
    ld a, h
    ld h, a
    adc c
    and a
    sbc b
    db $76
    sbc b
    sbc b
    db $76
    xor c
    ld c, b
    dec sp
    ld h, h
    add [hl]
    or a
    add a
    or a
    ld a, c
    adc b
    ld d, a
    adc b
    ld [hl], h
    add l
    ld a, d
    ld e, d
    adc d
    ld e, c
    adc d
    ld h, [hl]
    and a
    sub [hl]
    ld l, d
    ld e, e
    add hl, sp
    ld h, [hl]
    ld a, b
    ld c, c
    adc c
    and a
    adc b
    ld h, [hl]
    add l
    add a
    ld [hl], h
    ld [hl], a
    sbc c
    ld a, d
    ld a, d
    and a
    ld d, [hl]
    add h
    and l
    add a
    adc c
    add a

jr_014_62c3:
    and a
    sbc b
    db $76
    ld c, b
    ld l, c
    ld c, c
    ld e, b
    ld d, a
    xor b
    ld l, b
    add a
    sub l
    sbc b
    sub a
    sub e
    sub [hl]
    ld l, b
    adc b
    ld a, c
    ld c, h
    ld e, b
    or l
    or [hl]
    ld d, a
    db $76
    sub h
    sbc b
    ld h, a
    sbc e
    add hl, sp
    adc b
    ld h, a
    ld d, a
    ld c, b
    sub h
    or [hl]
    sub a
    ld l, c
    add [hl]
    adc b
    add [hl]
    db $76
    or [hl]
    ld l, c
    ld e, e
    adc c
    ld a, d
    adc c
    sub d
    sub e
    sub [hl]
    ld a, d
    ld l, d
    and [hl]
    add a
    ld b, [hl]
    ld [hl], e
    ld h, a
    ld l, e
    adc d
    cp c
    adc b
    ld [hl], l
    sub b
    adc b
    jr c, jr_014_635c

    sbc c
    sbc b
    xor d
    ld h, a
    ld e, h
    ld b, [hl]
    db $76
    ld h, l
    ld a, c
    sub a
    ld l, d
    adc b
    db $76
    adc b
    add l
    ld e, c
    ld [hl], l
    ld l, b
    adc c
    ld e, d
    sub [hl]
    and e
    xor d
    ld h, l
    ld e, c
    ld c, b
    ld a, e
    adc b
    sbc b
    sbc d
    ld b, l
    add a
    ld l, b
    ld d, a
    add [hl]
    ld [hl], a
    sbc b
    ld h, [hl]
    adc c
    ld e, c
    adc c
    ld c, b
    ld h, h
    sbc c
    ld l, c
    ld l, c
    sbc c
    ld a, d
    add b
    adc b
    ld d, a
    ld e, c
    sbc e
    ld l, d
    xor c
    add h
    adc b
    ld h, [hl]
    and [hl]
    ld a, b
    ld a, b
    and a
    sub l
    xor b
    ld h, h
    ld l, c
    ld e, c
    ld e, c
    and a
    ld d, a
    or h
    sbc b
    sbc c
    sub h
    add a
    ld e, d
    dec h
    sbc b
    ld l, c
    sbc c
    adc b
    adc c
    add h
    ld a, c
    ld d, e
    sub a

jr_014_635c:
    sub a
    adc c
    sub a
    ld a, b
    ld l, c
    ld h, a
    ld l, b
    ld a, b
    ld b, a
    ld a, b
    ld [hl], a
    ld e, b
    sub a
    xor d
    ld a, b
    and [hl]
    sub [hl]
    add hl, sp
    add [hl]
    ld e, d
    ld l, b
    adc b
    ld e, d
    ld h, [hl]
    add l
    or [hl]
    adc e
    adc c
    ld e, d
    ld [hl], h
    ld h, [hl]
    ld l, c
    ld l, b
    xor b
    adc b
    ld a, e
    add a
    or [hl]
    adc b
    ld [hl], h
    or l
    ld l, b
    ld l, b
    sub [hl]
    ld a, h
    ld e, e
    and a
    ld a, d
    ld [hl], $94
    add [hl]
    sbc b
    and [hl]
    sbc b
    ld e, b
    ld [hl], a
    adc b
    adc b
    adc b
    add [hl]
    adc c
    ld a, b
    sub h
    add [hl]
    ld e, b
    add h
    sbc c
    adc b
    adc b
    adc d
    ld a, b
    ld [hl], h
    sub a
    ld e, b
    ld a, b
    ld h, l
    and a
    sub a
    add a
    or l
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld h, [hl]
    or a
    ld e, b
    ld [hl], a
    sub a
    sbc e
    add [hl]
    and a
    adc d
    ld h, $7b
    daa
    ld l, c
    ld h, [hl]
    or [hl]
    add a
    adc e
    and l
    sbc b
    adc b
    add h
    ld a, b
    ld [hl], a
    ld a, d
    ld l, c
    ld c, e
    or a
    ld e, d
    add [hl]
    and l
    adc e
    ld d, a
    adc b
    ld e, b
    ld h, a
    ld a, b
    ld c, e
    ld a, e
    ld a, c
    add a
    adc b
    ld c, b
    sub e
    ld [hl], a
    sbc b
    ld h, [hl]
    sbc b
    add a
    ld l, c
    adc b
    ld l, d
    ld [hl], a
    ld l, b
    ld a, c
    add [hl]
    xor b
    add h
    ld a, d
    ld [hl], l
    sbc b
    and a
    ld e, b
    ld [hl], a
    ld l, d
    sbc d
    ld d, [hl]
    ld a, d
    ld [hl], h
    sub h
    or [hl]
    ld a, b
    xor c
    add a
    adc d
    ld h, [hl]
    ld a, e
    ld d, l
    ld e, c
    ld a, b
    ld c, d
    sub h
    push de
    cp c
    add h
    sub a
    ld c, c
    scf
    ld l, c
    ld c, b
    ld l, b
    add [hl]
    xor d
    ld d, a
    and a
    db $76
    ld [hl], l
    add [hl]
    sub l
    ld a, d
    ld h, a
    adc c
    ld a, c
    ld h, a
    sbc b
    ld c, c
    sub a
    add [hl]
    sub a
    ld h, l
    or e
    ld [hl], l
    ld h, [hl]
    ld a, c
    ld c, h
    ld a, c
    ld e, e
    ld [hl], a
    ld h, a
    ld [hl], a
    or l
    adc b
    or [hl]
    ld d, a
    and h
    ld a, b
    ld a, c
    ld l, c
    adc d
    add a
    ld e, e
    ld d, h
    and [hl]
    ld a, d
    ld h, [hl]
    or [hl]
    ld h, a
    and [hl]
    sub [hl]
    sbc d
    ld e, d
    ld e, b
    ld c, c
    scf
    add h
    adc b
    and l
    sbc c
    sbc c
    ld a, b
    adc c
    ld a, c
    ld l, c
    ld h, h
    add a
    ld h, a
    sub [hl]
    cp c
    sbc c
    ld a, d
    ld h, l
    ld h, a
    ld d, l
    and [hl]
    ld c, d
    ld e, c
    adc c
    adc b
    ld a, e
    ld [hl], a
    sub h
    ld l, b
    ld [hl], h
    xor c
    sbc b
    and a
    ld [hl], a
    db $76
    ld l, b
    ld l, b
    ld a, d
    ld l, c
    sub a
    add [hl]
    add l
    sbc b
    add [hl]
    or [hl]
    add hl, sp
    ld e, c
    ld a, [hl-]
    adc b
    adc c
    cp c
    ld [hl], a
    add l
    ld h, [hl]
    ld a, b
    sbc b
    sbc b
    adc b
    ld a, c
    ld c, d
    ld h, [hl]
    adc d
    ld c, b
    ld a, c
    sub l
    sub h
    and h
    sub a
    add l
    sub l
    ld l, b
    ld c, c
    ld a, d
    adc d
    ld e, d
    ld l, c
    ld d, a
    ld a, b
    ld h, a
    and [hl]
    adc c
    sub a
    sub l
    adc c
    ld c, b
    add [hl]
    sub a
    ld c, e
    db $76
    xor c
    ld c, c
    sub e
    and l
    ld e, c
    ld [hl], l
    or a
    ld a, c
    ld l, c
    sbc b
    ld l, e
    ld h, a
    sub a
    ld e, c
    sub h
    or l
    xor b
    ld [hl], a
    jp $2b8a


    ld [hl], h
    xor c
    inc a
    ld [hl], a
    db $76
    ld l, d
    ld [hl], e
    or e
    ld a, b
    ld [hl], h
    push de
    ld l, d
    ld [hl], a
    sub a
    ld a, e
    ld l, b
    ld d, a
    sub a
    ld e, b
    call nz, Call_014_67ab
    and [hl]
    adc c
    ld e, b
    ld h, a
    ld l, c
    ld l, d
    ld [hl], a
    cp b
    ld c, c
    add e
    xor b
    ld h, a
    add a
    add a
    ld d, a
    ld e, b
    add [hl]
    ld a, c
    ld l, c
    ld l, d
    ld l, d
    and l
    cp b
    ld l, b
    sub l
    add l
    ld a, c
    ld d, a
    sub a
    adc d
    sbc c
    sub a
    sbc b
    ld h, a
    ld d, a
    scf
    ld l, b
    db $76
    sub $a9
    adc b
    ld h, a
    ld h, a
    ld e, b
    ld l, c
    db $76
    adc b
    sub l
    sub a
    ld [hl], a
    sbc b
    sub a
    ld h, a
    db $76
    ld e, b
    ld e, c
    ld a, b
    adc e
    ld c, d
    ld [hl], a
    sub l
    ld l, d
    ld h, l
    add l
    add a
    ld c, d
    sub l
    add a
    sbc c
    ld [hl], a
    sub [hl]
    ld e, c
    ld d, a
    add a
    adc d
    sub [hl]
    add [hl]
    ld a, b
    add l
    sub a
    ld a, c
    ld a, d
    adc b
    ld c, e
    ld d, d
    sub h
    ld a, d
    db $76
    jp Jump_014_7799


    adc b
    sbc b
    ld l, b
    add h
    adc d
    ld c, c
    adc b
    ld a, d
    ld e, c
    add [hl]
    sub l
    sub h
    sub a
    and l
    xor b
    ld h, l
    and a
    add hl, sp
    ld h, [hl]
    sbc c
    adc c
    ld l, d
    sub [hl]
    and [hl]
    ld l, b
    add l
    ld e, d
    ld d, l
    adc b
    ld e, d
    sub a
    sbc e
    ld a, b
    add a
    and l
    sub a
    ld h, a
    ld [hl], l
    adc c
    ld h, l
    adc b
    ld l, b
    ld l, e
    ld l, c
    cp b
    ld l, c
    ld d, a
    ld [hl], l
    ld [hl], h
    and l
    sub [hl]
    ld b, a
    sub a
    xor c
    adc d
    ld l, c
    and [hl]
    ld l, b
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sub a
    adc c
    ld l, b
    adc b
    sbc b
    ld l, d
    ld h, l
    sub h
    add l
    ld h, [hl]
    add a
    sbc c
    and a
    or [hl]
    ld a, c
    adc b
    adc b
    ld e, c
    ld h, a
    ld [hl], a
    ld e, b
    cp c
    ld [hl], l
    cp b
    and a
    and l
    sub e

Jump_014_6576:
    ld [hl], a
    sub a
    ld e, b
    ld c, c
    ld c, c
    ld a, c
    sbc c
    ld l, c
    adc b
    add a
    ld [hl], l
    ld d, a
    add a
    ld l, c
    sub a
    ld a, b
    ld e, d
    ld e, b
    ld a, b
    or [hl]
    sbc c
    ld [hl], a
    or l
    add a
    ld [hl], l
    ld b, a
    ld b, l
    ld l, c
    adc b
    adc d
    ld a, e
    add [hl]
    adc d
    ld [hl], $57
    ld [hl], l
    sub a
    adc b
    and $7c
    ld h, a
    sub a
    ld a, b
    ld c, b
    ld a, b
    ld h, [hl]
    adc b
    add [hl]
    xor b
    ld l, d
    or c
    add a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld a, c
    ld [hl], a
    adc b
    add hl, sp
    ld [hl], l
    or h
    sbc d
    and [hl]
    ld a, c
    ld h, [hl]
    ld a, c
    db $76
    ld l, b
    ld e, b
    sub l
    sbc e
    ld e, c
    add l
    add a
    ld l, b
    ld [hl], l
    add h
    adc c
    ld l, b
    sbc e
    ld e, d
    ld d, a
    sub a
    ld h, a
    or e
    sub a
    ld a, c
    xor b
    ld e, c
    ld d, [hl]
    ld e, c
    sub [hl]
    adc c
    adc d
    ld [hl], a
    adc b
    ld h, a
    ld l, b
    ld a, b
    ld a, c
    ld [hl], l
    sub a
    ld a, c
    ld [hl], a
    ld a, d
    ld [hl], a
    ld a, b
    add a
    ld e, c
    ld a, c
    ld l, b
    and a
    ld [hl], a
    adc b
    add a
    adc c
    ld [hl], a
    add a
    ld a, b
    ld d, d
    and [hl]
    add a
    adc d
    sub h
    sbc b
    sub a
    ld a, b
    ld l, c
    ld b, a
    sbc b
    ld e, b
    ld [hl], a
    add [hl]
    sub a
    adc c
    ld [hl], a
    sbc c
    ld c, c
    adc c
    sub a
    ld a, b
    add e
    ld [hl], a
    ld l, c
    ld e, c
    add a
    ld l, e
    sub a
    or a
    ld h, [hl]
    ld [hl], l
    add a
    db $76
    ld [hl], a
    and a
    ld a, c
    adc c
    and l
    xor c
    ld [hl], a
    add l
    ld c, c
    ld a, d
    ld c, b
    adc c
    adc d
    add [hl]
    sub a
    ld a, d
    ld [hl], h
    xor b
    ld e, b
    add l
    ld a, b
    ld a, b
    ld [hl], a
    and [hl]
    adc e
    db $76
    sub a
    ld a, b
    ld [hl], a
    adc c
    ld h, [hl]
    adc c
    ld d, a
    ld d, l
    ld a, b
    add a
    or a
    adc b
    adc b
    ld l, b
    add l
    ld l, b
    ld l, b
    add a
    ld l, c
    sbc b
    ld e, c
    sub l
    ld l, b
    adc d
    adc b
    adc b
    db $76
    and l
    sub a
    sub a
    adc b
    ld a, b
    adc d
    sub l
    ld e, d
    ld h, h
    add a
    adc b
    ld a, b
    sub a
    adc c
    ld e, c
    db $76
    add [hl]
    adc b
    add a
    add a
    ld a, b
    ld c, d
    ld h, h
    sbc b
    ld e, c
    ld a, b
    adc b
    ld l, b
    ld a, b
    adc b
    adc c
    add [hl]
    and l
    add a
    add l
    adc b
    ld h, a
    ld a, c
    ld l, b
    sub a
    ld [hl], l
    add a
    ld [hl], a
    ld l, c
    ld e, b
    ld l, b
    add a
    and h
    adc b
    adc d
    ld c, d
    sbc c
    ld c, e
    ld h, [hl]
    add d
    and [hl]
    add [hl]
    and a
    push bc
    adc e
    sbc b
    add [hl]
    ld l, c
    db $76

jr_014_6684:
    ld a, c
    adc b
    ld e, d
    ld h, [hl]
    ld l, b
    add a
    sub [hl]
    sbc d
    ld d, l
    and l
    sbc c
    ld l, b
    ld a, b
    adc b
    ld a, b
    add [hl]
    sbc c
    ld c, c
    ld [hl], a
    push bc
    ld e, d
    ld d, a
    add h
    adc e
    db $76
    sub [hl]
    adc d
    ld c, c
    sub [hl]
    ld h, [hl]
    ld [hl], a
    add l
    and a
    sub a
    adc d
    ld a, e
    ld c, c
    ld h, a
    ld a, b
    ld [hl], a
    sub [hl]
    sbc b
    ld a, c
    adc b
    ld e, c
    db $76
    add l
    sub l
    ld e, b
    ld d, a
    ld a, c
    adc b
    xor c
    adc c
    ld h, [hl]
    ld [hl], h
    and e
    ld a, b
    add a
    sbc d
    ld e, e
    db $76
    sbc d
    ld c, c
    ld d, a
    or [hl]
    sbc b
    sub [hl]
    and [hl]
    ld e, h
    ld d, [hl]
    add [hl]
    ld c, d
    jr c, jr_014_6684

    sbc e
    adc d
    and l
    cp b
    ld d, a
    sub e
    sub [hl]
    ld e, d
    ld a, b
    cp b
    ld l, h
    add [hl]
    xor c
    ld l, c
    ld h, a
    add a
    ld c, b
    add [hl]
    and a
    ld a, c
    add a
    or [hl]
    ld a, d
    ld [hl], a
    and a
    ld l, b
    ld c, d
    add e
    sub a
    adc b
    and l
    and a
    ld a, c
    sub a
    adc b
    ld a, c
    sub a
    xor b
    adc b
    ld a, c
    ld a, c
    ld h, a
    ld a, c
    ld d, a
    add a
    add a
    sub a
    ld [hl], a
    add a
    sub a
    ld [hl], a
    add a
    add a
    adc c
    add a
    sub a
    ld a, b
    ld l, b
    and [hl]
    ld l, c
    ld e, d
    ld h, a
    or h
    ld a, c
    adc b
    ld h, a
    adc c
    ld a, d
    ld e, b
    sub [hl]
    ld a, d
    ld b, l
    add l
    ld l, c
    ld [hl], a
    ld l, c
    add a
    adc b
    sbc c
    adc b
    adc b
    sbc d
    ld e, b
    ld [hl], e
    sub [hl]
    ld a, c
    sub a
    cp b
    sbc b
    ld a, d
    ld [hl], l
    sub a
    ld e, b
    ld h, a
    sbc b
    ld l, c
    db $76
    add a
    sbc c
    ld a, c
    add [hl]
    add a
    ld b, a
    db $76
    sub a
    adc c
    ld a, c
    adc e
    ld l, b
    adc b
    add a
    ld a, b
    sub [hl]
    sub a
    ld l, b
    ld a, c
    ld [hl], a
    ld l, b
    ld h, [hl]
    sub a
    adc c
    ld a, c
    sub a
    sub a
    ld d, [hl]
    or e
    add h
    ld a, c
    ld a, d
    ld l, b
    ld a, e
    ld a, c
    sub [hl]
    sbc b
    add [hl]
    db $76
    adc b
    ld e, c
    add a
    and a
    sbc d
    ld a, b
    adc b
    ld h, [hl]
    ld l, b
    add a
    adc c
    sub a
    ld [hl], a
    add [hl]
    add [hl]
    add a
    ld a, b
    adc e
    ld a, b
    xor c
    ld a, c
    ld [hl], a
    ld l, b
    ld [hl], h
    sub l
    ld [hl], a
    adc d
    sub a
    ret z

    ld a, d
    scf
    ld [hl], h
    ld l, b
    ld c, c
    ld l, b
    xor b
    sbc c
    ld [hl], a
    or l
    ld a, b
    ld h, a
    ld a, b
    ld c, c
    ld d, a
    sbc b
    ld l, c
    ld a, c

Jump_014_6786:
    sub a
    ld a, c
    add [hl]

Jump_014_6789:
    or [hl]
    add a
    ld l, b
    and l
    adc b
    ld d, [hl]
    add a
    ld l, b
    ld l, d
    ld e, c
    ld a, b
    sbc b
    add [hl]
    add [hl]
    ld l, b
    ld b, l
    and a
    ld a, e
    adc c
    sbc b
    sbc b
    ld e, d
    db $76
    add a
    db $76
    add [hl]
    add a
    adc b
    adc c
    add a
    adc c
    ld l, c
    add a
    add [hl]

Call_014_67ab:
    ld l, c
    ld b, a
    add l
    ld a, b
    db $76
    adc b
    sub [hl]
    sub [hl]
    sbc e
    ld a, c
    db $76
    ld a, c
    ld h, a
    add [hl]
    add a
    ld l, e
    ld h, [hl]
    adc c
    sbc b
    sbc c
    sub a
    add a
    ld h, [hl]
    ld h, d
    ld h, a
    ld e, d
    adc b
    cp b
    sbc b
    sbc c
    ld [hl], a
    db $76
    ld h, l
    ld a, b
    ld l, b
    sbc b
    adc e
    ld a, b
    sub [hl]
    ld a, b
    db $76
    sub h
    and a
    ld a, b
    ld [hl], h
    or a
    ld l, c
    add a
    db $76
    ld l, c
    ld e, b
    sub a
    adc c
    sub a
    and a
    adc c
    ld [hl], $76
    ld a, c
    add [hl]
    or a
    xor c
    ld l, b
    xor b
    adc b
    jr c, jr_014_6842

    and a
    ld l, d
    ld [hl], a
    or a
    ld l, d
    ld e, d
    sub l
    add a
    db $76
    and e
    ld a, b
    ld a, [hl+]
    sub [hl]
    adc c
    sbc e
    add [hl]
    and a
    ld l, b
    add a
    ld a, b
    ld a, b
    sbc b
    ld h, l
    adc b
    ld e, b
    ld a, c
    add a
    sub a
    sub [hl]
    ld a, b
    db $76
    add [hl]
    adc c
    ld e, b
    ld [hl], l
    sub [hl]
    ld e, d
    add [hl]
    sbc d
    ld a, c
    add a
    add [hl]
    adc b
    ld e, b
    add a
    sub a
    adc b
    ld a, c
    add [hl]
    adc b
    xor c
    ld a, b
    adc b
    ld [hl], a
    db $76
    sub h
    add [hl]
    ld a, c
    ld d, a
    adc d
    ld a, d
    ld a, d
    add [hl]
    sbc b
    ld d, [hl]
    add l
    add a
    add [hl]
    adc b
    add a
    adc b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld b, a
    ld l, b
    ld a, b
    sub a
    sbc d
    add a
    add a
    ld e, b

jr_014_6842:
    ld h, [hl]
    ld [hl], a
    ld a, c
    ld l, c
    adc b
    adc c
    ld [hl], a
    and l
    add a
    sub [hl]
    and [hl]
    add [hl]
    ld e, d
    db $76
    sbc c
    ld e, c
    ld [hl], a
    sub l
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sub h
    add a
    ld a, b
    ld l, d
    ld c, d
    ld l, c
    add l
    sub a
    adc b
    sub [hl]
    cp b
    ld a, c
    ld h, [hl]
    add l
    adc b
    ld l, b
    adc b
    ld l, e
    ld c, c
    add a
    db $76
    ld h, l
    add [hl]
    adc b
    ld [hl], a
    sub a
    adc c
    ld l, c
    adc b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld a, c
    ld h, h
    push bc
    ld a, c
    ld l, b
    add [hl]
    ld a, e
    ld l, b
    sub [hl]
    and a
    ld l, b
    sub h
    add [hl]

Call_014_6887:
    ld c, c
    db $76
    sub a
    xor b
    ld a, d
    adc b
    ld h, a
    ld l, b
    ld h, [hl]
    ld a, c
    adc b
    adc b
    sbc b
    ld a, b
    and [hl]
    sub a
    ld l, c
    sub d
    adc c
    ld c, c
    ld a, b
    sub a
    ld a, d
    add [hl]
    sub h
    ld e, b
    ld h, a
    ld a, b
    adc c
    ld [hl], a
    add l
    adc b
    adc c
    ld e, b
    adc b
    sub l
    sub [hl]
    sbc b
    ld l, b
    add a
    ld a, b
    ld a, b
    ld h, [hl]
    adc b
    ld a, b
    adc b
    sbc b
    ld l, b
    ld [hl], l
    add [hl]
    add a
    ld h, h
    and a
    ld a, c
    ld l, c
    ld [hl], a
    sub a
    sbc b
    ld l, c
    sub a
    ld l, c
    ld l, c
    adc b
    ld [hl], a
    sbc b
    add a
    ld [hl], a
    ld a, c
    ld l, d
    ld d, a
    and l
    add a
    ld e, b
    add [hl]
    sub a
    ld l, c
    ld h, [hl]
    and [hl]
    adc b
    ld a, c
    add a
    adc b
    ld l, c
    ld h, a
    and [hl]
    ld a, c
    sub [hl]
    adc b
    ld l, c
    sbc c
    ld a, b
    ld l, c
    ld [hl], a
    add [hl]
    db $76
    sub a
    sbc b
    ld e, c
    sub h
    sub a
    ld l, c
    ld l, b
    add [hl]
    ld a, c
    add a
    add a
    adc e
    ld a, b
    and l
    add a
    ld e, b
    add l
    add a
    ld a, e
    ld l, d
    ld a, b
    add a
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], a
    xor b
    add a
    and [hl]
    sbc b
    ld a, b
    ld d, a
    add a
    adc c
    ld c, c
    add h
    sbc c
    ld [hl], a
    sub a
    add [hl]
    ld a, b
    ld h, a
    ld [hl], a
    ld a, d
    ld h, a
    ld a, b
    add [hl]
    adc b
    ld c, c
    ld [hl], a
    adc b
    add a
    add a
    ld h, a
    add [hl]
    add a
    ld l, b
    ld a, d
    sbc b
    ld a, c
    ld a, b
    add a
    sub l
    and h
    adc b
    ld l, c
    add a
    ld a, c
    ld a, c
    ld a, b
    add a
    ld a, b
    ld l, b
    ld a, b
    db $76
    add a
    ld h, [hl]
    add [hl]
    adc b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    ld l, c
    ld l, b
    sbc b
    adc d
    ld [hl], a
    sub [hl]
    add [hl]
    db $76
    sub [hl]
    add a
    ld a, c
    ld c, b
    ld a, b
    sub a
    sbc c
    add [hl]
    add [hl]
    ld d, a
    ld d, a
    sub [hl]
    ld a, c
    adc b
    add a
    ld a, c
    ld l, c
    ld d, [hl]
    add a
    sub [hl]
    sub a
    ld l, b
    sbc b
    add a
    adc b
    add a
    db $76
    add a
    ld l, d
    add a
    sbc c
    ld a, c
    ld h, [hl]
    ld [hl], l
    ld l, b
    ld [hl], a
    sub [hl]
    sbc d
    ld h, [hl]
    add l
    sbc b
    ld [hl], a
    sub a
    adc c
    ld l, b
    ld d, a
    and [hl]
    ld e, c
    add a
    sbc d
    ld l, e
    ld b, a
    sub [hl]
    ld [hl], a
    ld h, a
    and [hl]
    ld a, d
    scf
    and [hl]
    ld a, c
    ld h, [hl]
    and [hl]
    adc b
    ld a, b
    add a
    ld a, c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, c
    and [hl]
    ld a, d
    ld d, a
    sub e
    ld a, b
    ld l, e
    ret z

    ld d, [hl]
    add hl, bc
    ld b, a
    add c
    inc a
    call c, $c2c7
    ld h, [hl]
    ld c, c
    add [hl]
    db $76
    ld c, h
    dec sp
    rst $10
    and h
    ret


    ld a, h
    cp e
    ld c, b
    push bc
    adc e
    ld h, [hl]
    ld d, a
    ld b, [hl]
    ld [hl], h
    ld b, a
    ld h, a
    adc h

jr_014_69af:
    or [hl]
    res 7, b
    cp d
    ld h, a
    ld h, [hl]
    scf
    ld a, d
    adc d
    cp h
    ld a, b
    ld e, b
    ld h, h
    ld c, d
    db $76
    xor l
    call nz, Call_014_57a7
    ld a, h
    sbc c
    ld l, h
    adc h
    ld l, h
    add h
    ld l, b
    ld h, a
    ld b, a
    add [hl]
    ld b, a
    and h
    cp c
    sbc c
    cp d
    rst $00
    xor d
    xor e
    inc a
    or h
    ld l, b
    ld d, l
    jr jr_014_6a4f

    add a
    ret c

    xor b
    and a
    ld [hl], a
    or h
    or a
    and a
    ld l, c
    sub l
    ld [hl], a
    db $e3
    ld a, e
    db $76
    ld l, d
    or d
    ld [hl], l
    add [hl]
    ld e, b
    add h
    ld h, a
    rst $20
    adc a
    ld l, h
    ld e, b
    call nz, $8696
    ld l, e
    sub a
    xor b
    ld b, [hl]
    add hl, sp
    ld [hl], $87
    sub [hl]
    sbc $9b
    sbc h
    ld c, c
    or a
    ld [hl], a
    ld l, b
    jr c, jr_014_69af

    adc b
    sbc e
    ld e, h
    add a
    dec h
    and a
    adc d
    rr c
    rst $00
    ld h, a
    cp d
    ld e, l
    jp c, Jump_014_7578

    ld a, [hl+]
    ld a, d
    ld a, d
    sub l
    inc [hl]
    sub l
    ld a, l
    cp b
    xor c
    sbc d
    ld a, c
    add l
    sub a
    rst $20
    add a
    daa
    dec h
    ld a, c
    and a
    set 0, a
    sub [hl]
    ld [hl], c
    ld l, c
    and a
    ld e, l
    adc b
    xor d
    and l
    ld b, a
    ld c, b
    ld a, e
    sub l
    adc c
    sbc b
    sbc d
    add h
    ld e, b
    sub [hl]
    ld l, e
    sub e
    adc l
    ret z

    xor [hl]
    ret z

    ld e, h
    sub c
    ld c, b
    ld h, e
    ld e, c
    sub l
    adc e
    xor b
    adc l
    xor b
    sbc [hl]

jr_014_6a4f:
    add [hl]
    ld a, b
    add h
    adc h
    ld [hl], a
    xor d
    ld [hl], h
    adc e
    ld h, e
    and a
    sub [hl]
    cp e
    adc d
    adc d
    ld a, [hl-]
    adc b
    ld [hl], l
    sub a
    ld a, d
    cp d
    xor b
    ret


    ld a, c
    add a
    ld [hl], e
    sub [hl]
    add c
    sbc c
    ld l, c
    adc c
    add a
    xor e
    ret z

    ld c, d
    sub a
    push bc
    sub a
    ld [hl], a
    ld [hl], $65
    add [hl]
    xor b
    ld l, e
    sbc l
    ld a, l
    sbc c
    ld h, [hl]
    ld l, b
    ld l, b
    or [hl]
    add h
    sbc b
    xor l
    ld l, h
    xor c
    and a
    adc c
    ld [hl], $29
    jr z, jr_014_6b05

    add l
    sbc b
    cp d
    and a
    sub [hl]
    ret


    xor c
    ld d, a
    db $76
    ld [hl], l
    ld h, d
    ld c, c
    ld l, e
    adc d
    add a
    xor l
    ld [$728b], a
    add l
    and e
    dec [hl]
    db $76
    sbc e
    ld [$8688], a
    ld [hl], a
    sbc b
    ld l, b
    sbc c
    ld h, l
    add h
    ld h, l
    ld l, c
    xor c
    ld a, [hl-]
    xor b
    cp c
    add [hl]
    adc b
    sub e
    sub l
    ld hl, $261a
    xor e
    xor c
    sbc $c8
    sbc e
    ld d, d
    or a
    ld [hl-], a
    ld e, c
    ld b, h
    adc h
    push af
    cp [hl]
    ld b, a
    ld a, e
    sub [hl]
    adc b
    ld b, e
    adc e
    add e
    xor c
    add l
    adc d
    ld [hl], l
    ld l, c
    and h
    db $dd
    and a
    ld a, c
    ld h, b
    ld b, [hl]
    ld d, h
    ld a, c
    xor c
    res 7, b
    cp c
    sbc c
    ld [hl], a
    ld b, l
    ld [hl], h
    ld h, e
    ld e, c
    ld e, h
    cp h
    sbc c
    ld l, c
    ld a, b
    adc c
    add a
    ld l, d
    ld l, b
    ld h, l
    ld h, a
    ld l, b
    sbc b
    xor b
    sbc e
    db $76
    ld l, c
    sbc d
    ld l, d
    ld h, l
    ld b, l
    ld [hl], l
    ld e, b
    ld l, b
    xor l
    call z, $a69a
    add l
    db $76
    ld [hl], a
    ld d, [hl]

jr_014_6b05:
    ld e, b
    ld e, b
    sbc b
    sbc b
    xor e
    adc c
    sub l
    sub l
    ld l, c
    ld a, b
    add [hl]
    and [hl]
    ld h, a
    db $76
    adc d
    adc b
    sbc b
    or [hl]
    add $73
    add l
    add d
    or [hl]
    ld a, b
    adc e
    sub l
    cp b
    ld h, a
    adc b
    ld b, [hl]
    ld l, e
    sub a
    ld d, [hl]
    ld [hl], l
    sbc b
    add l
    add h
    xor e
    adc l
    adc d
    ld l, b
    add [hl]
    ld l, b
    sub a
    daa
    ld d, h
    ld e, c
    adc c
    adc d
    ret


    adc b
    or d
    ld d, h
    ld a, b
    ld e, c
    sbc c
    ld h, a
    add [hl]
    dec [hl]
    xor c
    or a
    adc b
    ld [hl], h
    sub [hl]
    add l
    sbc b
    add a
    adc c
    ld h, h
    ld c, c
    ld h, a
    xor e
    add a
    ld a, b
    ld d, c
    ld a, e
    ld h, l
    sbc b
    add c
    xor c
    ld d, e
    sbc b
    sbc b
    xor h
    db $76
    ld l, c
    ld h, a
    ld l, b
    ld h, l
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    adc d
    xor c
    adc b
    ld h, [hl]
    ld e, b
    ld h, [hl]
    ld c, c
    ld e, d
    ld b, [hl]
    sub l
    ld a, d
    ld a, e
    ld e, c
    xor c
    add [hl]
    ld b, [hl]
    dec [hl]
    adc d
    ld h, a
    ld a, b
    db $76
    ld a, d
    ld [hl], a
    sbc d
    sub l
    ret c

    ld h, a
    ld h, l
    and d
    xor d
    add [hl]
    and a
    ld [hl], a
    rst $00
    ld [hl], h
    ld l, b
    ld [hl], a
    sbc d
    add [hl]
    or [hl]
    and d
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    sbc d
    xor c
    xor b
    sub [hl]
    and h
    ld h, h
    ld b, [hl]
    inc [hl]
    ld l, b
    xor c
    db $dd
    xor d
    sbc b
    add l
    ld d, a
    ld b, l
    ld c, c
    sub a
    ld d, a
    ld h, l
    ld l, b
    cp e
    adc h
    sub [hl]
    sub [hl]
    ld l, c
    ld c, d
    ld b, a
    ld [hl], a
    ld e, c
    ld c, b
    db $76
    adc c
    xor d
    xor c
    ld [hl], a
    ld l, c
    ld d, [hl]
    ld b, l
    ld [hl], l
    ld e, c
    ld d, a
    ld a, b
    cp h
    cp e
    ld l, e
    ld a, b
    ld [hl], e
    ld [hl], c
    ld b, l
    add a
    ld h, [hl]
    ld a, b
    ld l, c
    xor b
    add a
    sub a
    adc b
    xor b
    ld a, b
    ld h, [hl]
    ld b, l
    ld h, d
    ld [hl], a
    ld h, a
    sbc d
    cp b
    adc h
    sub a
    adc b
    ld h, [hl]
    ld b, [hl]
    ld h, e
    ld b, l
    adc b
    sbc e
    rst $00
    and [hl]
    xor c
    sbc c
    ld b, d
    ld [hl], a
    scf
    ld d, [hl]
    ld d, [hl]
    adc d
    adc c
    cp d
    adc b
    cp d
    ld h, a
    sub l
    ld d, l
    dec h
    ld b, [hl]
    add l
    ld a, c
    ld a, c
    ld a, e
    ld a, d
    ld l, e
    or [hl]
    adc b
    ld d, e
    ld b, [hl]
    ld h, d
    db $76
    sbc b
    sbc h
    ld [hl], l
    add [hl]
    daa
    sbc e
    ld [hl], a
    ld l, b
    ld h, d
    add l
    ld b, h
    sbc c
    or a
    cp d
    sub e
    adc c
    ld l, b
    sbc h
    ld h, e
    ld a, b
    ld [hl], l
    scf
    ld d, [hl]
    set 1, d
    jp z, $a694

    dec [hl]
    add l
    ld h, [hl]
    ld a, e
    dec b
    sbc c
    ld a, c
    call $985b
    ld h, l
    ld h, l
    ld d, l
    or [hl]
    sbc c
    sub l
    ld d, l
    ld a, b
    ld a, e
    add [hl]
    ld a, d
    xor c
    ld [hl], a
    ld h, h
    ld l, d
    adc b
    ld d, [hl]
    ld [hl], l
    sbc c
    sbc c
    adc c
    add a
    adc b
    ld d, l
    ld d, a
    ld d, a
    adc c
    adc c
    ld a, c
    sub a
    ld l, c
    add [hl]
    ld a, b
    add [hl]
    ld [hl], a
    ld h, l
    ld c, b
    add a
    ld a, c
    ld a, b
    ld a, b
    sub a
    add [hl]
    db $76
    sbc b
    sub a
    ld a, c
    ld h, l
    and [hl]
    ld h, [hl]
    ld d, [hl]
    add l
    sbc b
    sbc e
    ld a, d
    adc c
    ld h, a
    ld a, b
    dec [hl]
    adc b
    ld a, c
    ld a, c
    add [hl]
    xor d
    add a
    db $76
    ld d, h
    ld h, l
    ld d, l
    adc c
    res 7, e
    ld [hl], a
    ld [hl], h
    ld [hl], d
    ld d, a
    ld a, b
    cp b
    ld d, e
    ld [hl], a
    ld d, l
    sbc c
    ld a, b
    sbc b
    add e
    add a
    add e
    adc b
    sbc b
    xor b
    add l
    ld l, b
    ld d, a
    add a
    ld h, [hl]
    sbc c
    ld h, a
    adc b
    ld d, a
    adc c
    ld b, l
    sbc c
    adc c
    or a
    ld d, l
    sbc c
    ld e, b
    ld d, [hl]
    ld [hl], $87
    adc b
    add a
    xor d
    ret


    ld a, b
    ld [hl], h
    scf
    adc c
    ld l, c
    or a
    ld e, c
    ld [hl], l
    ld b, h
    ld [hl], a
    ld e, d
    cp c
    adc c
    xor b
    ld e, b
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld c, c
    add a
    ld a, e
    sbc c
    ld l, d
    sub h
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    add h
    sbc c
    cp c
    sub a
    ld [hl], l
    ld l, c
    ld a, c
    add [hl]
    add [hl]
    adc d
    ld [hl], h
    ld d, h
    ld [hl], $a7
    and [hl]
    ld a, b
    sbc c
    sbc e
    ld h, a
    sbc c
    adc d
    ld d, [hl]
    dec d
    ld d, h
    ld l, b
    adc d
    xor e
    ret z

Call_014_6ccb:
    ld [hl], a

Call_014_6ccc:
    ld h, l
    ld d, a
    ld h, [hl]
    ld e, c
    cp c
    ld l, b
    sbc b
    ld l, c
    add a
    sub a
    ld l, b
    ld b, l
    ld h, [hl]
    or a
    cp b
    and a
    ld h, l
    ld [hl], e
    ld d, l
    ld a, b
    dec sp
    xor [hl]
    adc e
    add h
    ld h, h
    ld d, l
    ld h, a
    ld h, l
    ld h, [hl]
    or a
    ld l, d
    sub a
    sbc b
    xor b
    ld h, a
    add [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    xor c
    ld e, b
    add a
    add l
    and [hl]
    ld [hl], a
    xor b
    db $76
    add l
    ld [hl], $86
    ld h, a
    sbc d
    ld d, a
    and a
    ld e, c
    sbc d
    ld h, [hl]
    sub [hl]
    ld d, e
    ld l, b
    ld d, $88
    adc e
    sbc e
    ld l, b
    ld a, d
    ld e, c
    adc c
    db $76
    ld h, a
    ld h, [hl]
    xor b
    ld [hl], l
    ld [hl], a
    ld e, b
    adc d
    ld [hl], a
    cp e
    ld l, d
    ld [hl], a
    inc h
    ld [hl], a
    ld l, b
    adc c
    or a
    sub l
    add [hl]
    sbc b
    xor d
    add a
    add [hl]
    ld [hl], h
    add [hl]
    ld h, a
    ld a, d
    add l
    add a
    db $76
    xor b
    sbc d
    adc b
    add l
    ld d, e
    ld b, l
    ld l, b
    add a
    ret z

    adc d
    add a
    ld [hl], h
    sbc b
    add a
    xor b
    ld h, h
    ld [hl], e
    ld d, e
    adc b
    and a
    xor h
    adc c
    add a
    ld h, [hl]
    ld l, b
    ld a, b
    add a
    ld h, l
    add l
    ld l, b
    adc c
    sbc c
    sub a
    ld b, l
    add [hl]
    ld h, a
    sbc c
    xor d
    sbc d
    ld d, [hl]
    ld b, l
    ld b, a
    ld h, a
    adc c
    sbc c
    xor c
    ld h, [hl]
    ld [hl], a
    ld e, c
    ld a, b
    ld d, l
    xor b
    ld [hl], a
    ld [hl], h
    adc c
    xor d
    adc c
    ld h, [hl]
    ld l, b
    db $76
    ld b, [hl]
    ld [hl], l
    adc e
    adc c
    ld h, [hl]
    add a
    ld a, d
    and [hl]
    sub l
    sub a
    ld a, c
    ld [hl], a
    ld h, l
    ld [hl], a
    ld e, c
    db $76
    ld e, b
    ld l, b
    ld l, b
    xor b
    ld a, d
    sub a
    ld a, b
    ld [hl], l
    ld b, a
    add l
    adc b
    sbc b
    ld l, b
    db $76
    ld d, [hl]
    ld h, a
    adc c
    xor d
    add [hl]
    ld e, b
    adc b
    add [hl]
    add l
    ld a, c
    add a
    ld [hl], a
    ld h, a
    sbc e
    sbc c
    add a
    ld h, e
    db $76
    ld d, [hl]
    ld a, c
    add l
    xor c
    db $76
    adc c
    ld a, c
    xor d
    add l
    ld d, l
    ld d, h
    jr z, jr_014_6e0d

    sbc c
    sbc e
    ld a, d
    add l
    sub a
    sub [hl]
    ld [hl], a
    db $76
    sub a
    rst $00
    ld d, a
    ld h, a
    ld l, c
    ld a, c
    ld [hl], a
    xor b
    ld a, b
    ld [hl], a
    db $76
    xor c
    ld h, [hl]
    sub l
    ld b, e
    ld a, b
    add [hl]
    adc e
    sbc c
    sbc d
    ld d, l
    db $76
    ld d, [hl]
    ld a, c
    ld [hl], h
    and a
    ld h, a
    sbc c
    adc c
    jp z, $9886

    ld d, l
    and [hl]
    ld b, [hl]
    ld a, b
    adc b
    adc d
    add [hl]
    xor c
    sub a
    or a
    and a
    ld [hl], a
    ld d, [hl]
    ld h, l
    ld b, [hl]
    ld l, c
    adc e
    add hl, sp
    ld a, d
    ld [hl], a
    add a
    add a
    adc b
    sub [hl]
    ld h, l
    ld d, l
    ld l, b
    add a
    sbc e
    sbc d
    sbc c
    ld [hl], l
    ld l, d
    ld h, a
    adc d
    dec [hl]
    db $76
    ld [hl], l
    adc d
    adc b
    sbc h
    ld a, b
    xor b
    scf
    ld c, d
    sub a
    add a
    dec [hl]
    ld d, l
    sub [hl]
    sbc c
    sbc e
    cp e
    sbc b
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, l
    db $76
    ld [hl], l

jr_014_6e0d:
    adc d
    cp e
    cp b
    and l
    add [hl]
    ld [hl], l
    ld d, h
    ld b, a
    add a
    adc c
    add [hl]
    ld a, e
    cp b
    xor c
    db $76
    ld l, b
    ld b, l
    ld b, l
    ld b, [hl]
    ld a, d
    xor c
    add a
    sub l
    sbc c
    ld l, b
    sbc d
    ld a, b
    db $76
    ld [hl-], a
    ld d, [hl]
    ld l, c
    adc c
    sbc c
    sbc c
    ld l, b
    ld h, a
    adc b
    sub a
    adc c
    ld [hl], h
    ld d, [hl]
    ld d, [hl]
    ld l, b
    ld [hl], a
    ld l, b
    xor e
    xor d
    xor c
    db $76
    ld [hl], a
    dec h
    or h
    ld a, b
    adc c
    adc c
    sbc b
    sbc d
    cp c
    ld h, a
    ld h, h
    ld d, a
    sub l
    ld l, b
    xor b
    adc c
    sub h
    ld d, a
    ld c, c
    adc d
    rst $00
    adc c
    add l
    ld b, l
    ld h, h
    ld e, d
    sub [hl]
    adc c
    sbc b
    sbc e
    sbc d
    adc e
    and a
    ld d, a
    add e
    ld b, [hl]
    db $76
    adc c
    sbc e
    adc e
    and a
    adc b
    ld l, c
    ld l, b
    ld [hl], a
    ld h, a
    ld h, a
    adc b
    ld l, b
    ld a, d
    ld a, b
    sub [hl]
    ld h, [hl]
    ld a, c
    ld a, c
    xor c
    ld l, c
    ld h, a
    dec [hl]
    ld b, [hl]
    ld e, c
    xor d
    sbc e
    cp b
    add a
    add h
    add [hl]
    db $76
    ld d, a
    ld h, [hl]
    ld e, b
    ld [hl], a
    sbc c
    ret c

    xor c
    ld h, a
    ld [hl], l
    ld [hl], l
    ld h, a
    db $76
    add [hl]
    sub h
    cp b
    ld l, c
    xor c
    adc b
    sbc c
    db $76
    add l
    ld [hl], l
    add a
    add [hl]
    or [hl]
    ld [hl], a
    db $76
    add a
    sbc b
    ld [hl], a
    ld e, b
    ld l, c
    ld [hl], h
    ld b, a
    adc c
    ld l, b
    sbc c
    adc c
    and [hl]
    ld b, [hl]
    ld [hl], a
    ld l, c
    sbc b
    ld l, b
    ld [hl], a
    ld b, a
    db $76
    ld a, d
    sbc d
    ld a, e
    add [hl]
    ld h, a
    db $76
    ld a, e
    sub a
    ld h, a
    ld h, e
    ld d, l
    db $76
    ld a, e
    sbc d
    sbc c
    db $76
    ld l, b
    ld h, a
    xor b
    and [hl]
    ld a, b
    ld d, h
    ld a, b
    ld h, a
    adc e
    db $76
    ld a, b
    ld [hl], a
    ld a, d
    sub a
    sbc c
    sub a
    ld l, b
    ld d, h
    ld h, [hl]
    adc b
    xor c
    sbc b
    sbc c
    add [hl]
    add a
    ld d, a
    ld e, c
    add [hl]
    sbc c
    adc b
    sbc c
    db $76
    ld a, b
    add l
    ld [hl], a
    sub [hl]
    adc d
    or a
    adc c
    add [hl]
    ld d, l
    ld d, h
    ld c, b
    sbc b
    xor h
    ld a, h
    cp d
    add l
    ld [hl], l
    ld h, [hl]
    ld d, a
    ld h, h
    sub [hl]
    adc d
    adc c
    xor c
    sbc c
    sub a
    ld [hl], l
    ld h, l
    ld [hl], l
    ld l, c
    add [hl]
    ld a, d
    sbc c
    sub a
    add h
    db $76
    adc b
    ld a, b
    add a
    sbc c
    ld h, [hl]
    ld [hl], h
    ld h, a
    ld a, b
    and a
    xor d
    adc c
    xor b
    add a
    adc c
    ld h, l
    ld h, a
    ld d, e
    ld e, b
    ld l, c
    cp e
    jp z, Jump_014_6789

    ld h, l
    db $76
    ld a, c
    sbc c
    sub h
    ld b, l
    ld [hl], l
    ld l, b
    xor c
    adc d
    xor d
    ld h, a
    add h
    ld d, a
    sub a
    ld l, c
    ld h, [hl]
    ld l, b
    add a
    ld a, d
    ld h, a
    sbc d
    add [hl]
    ld h, a
    ld h, e
    ld e, b
    ld h, [hl]
    ld l, c
    db $76
    sbc d
    adc d
    ld a, d
    xor b
    ld a, b
    ld d, l
    ld h, h
    add l
    ld d, [hl]
    sbc b
    xor d
    sbc b
    ld [hl], a
    sub l
    xor b
    sbc b
    ld a, b
    add l
    ld d, [hl]
    ld d, l
    ld a, b
    sbc b
    xor c
    cp b
    sub [hl]
    ld e, c
    ld a, d
    ld a, c
    sub [hl]
    ld h, a
    ld [hl], l
    ld e, c
    xor b
    adc c
    db $76
    ld e, b
    and a
    ld l, b
    or a
    sbc c
    ld h, l
    ld b, [hl]
    ld e, b
    ld l, c
    adc b
    sbc c
    xor b
    xor c
    add a
    db $76
    ld d, l
    ld h, l
    sub [hl]
    ld [hl], a
    xor c
    ld [hl], a
    xor b
    adc c
    cp e
    add [hl]
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    db $76
    adc d
    xor c
    and a
    ld h, l
    ld a, d
    adc c
    sub a
    sbc b
    ld a, d
    ld h, l
    add l
    ld [hl], a
    adc c
    add l
    ld a, b
    ld l, d
    sbc c
    and [hl]
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld [hl], h
    ld c, d
    ld l, d
    adc d
    sbc b
    ld a, b
    sub a
    db $76
    ld l, b
    ld l, c
    add a
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    sbc c
    sbc d
    ld a, b
    ld e, b
    ld b, a
    ld a, b
    ld l, b
    sbc b
    ld h, [hl]
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    cp d
    sub [hl]
    adc b
    ld l, b
    sbc b
    ld d, l
    ld d, a
    ld l, b
    add a
    add a
    xor d
    sbc c
    add [hl]
    ld d, l
    db $76
    ld d, l
    sbc b
    sbc c
    ret


    ld a, c
    ld l, b
    ld [hl], a
    db $76
    ld h, [hl]
    sub a
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc e
    ld l, c
    add a
    ld [hl], l
    ld a, b
    ld d, [hl]
    adc b
    adc d
    sbc b
    sub [hl]
    ld h, l
    ld h, a
    adc b
    adc b
    sub a
    ld l, c
    ld a, b
    ld a, c
    adc b
    ld a, c
    ld [hl], a
    ld b, [hl]
    ld [hl], a
    adc b
    ret


    ld a, b
    ld h, a
    ld h, h
    ld h, l
    sbc c
    cp e
    ld a, c
    add [hl]
    sub [hl]
    ld [hl], l
    ld d, a
    xor c
    adc c
    add h
    ld e, b
    add a
    ld l, b
    sub a
    sbc c
    sub [hl]
    ld e, c
    add a
    add a
    add h
    adc b
    ld [hl], a
    ld l, b
    add a
    ld a, h
    sbc b
    ld a, c
    ld [hl], l
    sub [hl]
    ld [hl], a
    ld a, c
    adc b
    ld a, d
    and a
    add l
    ld l, b
    ld l, c
    cp c
    ld a, b
    ld a, b
    ld d, a
    ld h, [hl]
    ld h, a
    adc d
    xor c
    sbc c
    adc b
    ld a, b
    ld a, c
    sbc c
    ld h, a
    ld h, h
    add [hl]
    ld a, b
    ld l, d
    ld a, c
    sbc d
    add a
    adc b
    ld a, b
    add [hl]
    ld d, a
    ld [hl], a
    ld e, b
    adc d
    ld e, d
    cp b
    add a
    db $76
    ld c, b
    sub a
    ld a, b
    add [hl]
    add a
    sub a
    add [hl]
    sub [hl]
    ld a, b
    and a
    add a
    add a
    xor c
    xor b
    ld d, l
    ld h, l
    ld h, [hl]
    add [hl]
    ld d, a
    cp d
    adc c
    add a
    adc b
    ld a, c
    ld h, l
    add a
    ld h, l
    ld h, [hl]
    ld e, b
    adc d
    sbc d
    ld l, b
    add a
    sub a
    ld a, b
    ld h, [hl]
    and a
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    xor c
    adc d
    cp c
    db $76
    ld [hl], e
    ld e, c
    add a
    ld a, b
    add a
    ld [hl], a
    sub l
    ld h, a
    sbc b
    ld l, d
    xor b
    adc b
    ld l, b
    ld e, c
    adc b
    ld l, b
    ld h, l
    ld [hl], a
    ld [hl], l
    ld l, c
    sbc c
    xor e
    xor b
    adc b
    add c
    ld b, [hl]
    ld h, a
    adc d
    add [hl]
    adc c
    adc c
    sub a
    db $76
    sbc d
    add [hl]
    sub [hl]
    ld h, [hl]
    adc c
    ld [hl], l
    xor c
    ld h, [hl]
    add a
    ld d, a
    ld a, e
    sbc b
    sbc c
    db $76
    adc c
    ld h, h
    ld [hl], a
    ld e, d
    ld l, c
    sbc b
    sbc d
    sbc c
    xor b
    ld h, a
    ld h, a
    ld b, [hl]
    adc b
    add a
    ld a, b
    ld [hl], a
    jp z, Jump_014_78a9

    add l
    ld [hl], a
    ld h, l
    ld l, c
    sbc c
    sbc b
    sbc b
    ld d, a
    db $76
    ld l, b
    sbc c
    add l
    sub a
    ld a, c
    and a
    sub a
    add [hl]
    ld d, l
    ld [hl], l
    ld l, b
    sbc c
    sbc d
    xor c
    ld h, a
    ld d, l
    ld h, [hl]
    xor c
    adc c
    ld a, b
    ld [hl], a
    add [hl]
    add l
    adc b
    and a
    add a
    sub a
    adc b
    ld h, [hl]
    ld h, a
    add a
    ld [hl], l
    ld a, b
    sbc d
    adc c
    sub a
    adc c
    sbc b
    ld h, a
    ld d, a
    ld h, l
    sbc b
    ld a, c
    ld a, d
    ld l, b
    db $76
    ld a, b
    ld h, a
    ld l, b
    adc c
    adc c
    db $76
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    ld d, a
    ld l, c
    xor b
    adc c
    db $76
    xor b
    add h
    ld h, [hl]
    ld c, b
    adc c
    and [hl]
    adc d
    add a
    xor c
    ld h, [hl]
    ld d, a
    ld [hl], a
    ld a, e
    adc c
    ld a, b
    add h
    adc b
    ld h, l
    ld l, b
    sbc b
    adc e
    sub a
    ld a, d
    ld d, a
    db $76
    ld d, h
    ld l, b
    ld h, [hl]
    adc e
    adc d
    call c, $8667
    dec [hl]
    add l
    add l
    xor c
    adc c
    sbc b
    db $76
    add [hl]
    adc c
    sbc c
    db $76
    ld [hl], l
    sbc c
    or a
    ld l, b
    ld a, c
    add l
    add l
    ld b, a
    sbc d
    xor c
    xor c
    ld a, c
    add a
    ld [hl], l
    ld e, b
    ld d, [hl]
    ld [hl], a
    ld a, c
    xor c
    sbc d
    sub a
    adc c
    ld a, b
    ld h, [hl]
    ld h, e
    add a
    ld [hl], a
    adc c
    adc d
    sbc b
    sbc b
    ld l, b
    ld a, b
    sub a
    adc b
    and h
    ld d, [hl]
    ld h, [hl]
    sbc b
    sbc b
    ld a, c
    sbc c
    ld a, c
    sbc b
    adc b
    sbc b
    ld c, c
    ld d, [hl]
    ld h, [hl]
    db $76
    sbc e
    xor c
    sbc b
    add l
    adc c
    ld h, a
    ld a, b
    ld [hl], l
    ld l, b
    db $76
    ld a, c
    ld a, b
    adc c
    cp b
    sub a
    ld [hl], a
    adc d
    add a
    ld [hl], h
    db $76
    ld a, c
    ld h, a
    ld h, [hl]
    adc b
    xor d
    adc c
    sbc c
    sub [hl]
    add [hl]
    ld h, [hl]
    ld d, a
    ld h, l
    add a
    adc b
    ld a, b
    ld a, c
    ld e, c
    adc c
    xor b
    adc c
    ld h, [hl]
    ld b, l
    ld [hl], l
    ld d, [hl]
    ld l, c
    sbc d
    ret


    sub a
    ld [hl], a
    add a
    ld h, a
    ld h, l
    add [hl]
    ld [hl], a
    ld l, d
    adc b
    adc d
    sbc e
    and a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld l, b
    add [hl]
    adc b
    adc e
    adc b
    adc d
    add a
    ld a, b
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld [hl], a
    ld [hl], l
    adc b
    sbc c
    add a
    adc d
    adc d
    sub [hl]
    ld [hl], l
    ld d, l
    sub [hl]
    ld [hl], a
    add a
    adc c
    xor d
    sbc c
    sub [hl]
    adc b
    add [hl]
    ld h, a
    ld b, [hl]
    ld l, c
    sub a
    adc b
    adc b
    adc d
    or a
    sbc c
    and a
    ld [hl], l
    ld [hl], h
    ld b, a
    ld [hl], a
    ld a, b
    adc e
    adc c
    adc c
    add a
    adc d
    ld a, b
    add a
    add a
    ld h, [hl]
    db $76
    add a
    ld d, [hl]
    add a
    sbc e
    reti


    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld b, a
    ld a, c
    add a
    sub a
    ld a, b
    adc e
    cp b
    adc b
    ld h, h
    ld d, [hl]
    ld [hl], a
    adc c
    xor b
    adc b
    ld [hl], l
    ld d, a
    db $76
    sbc d
    sbc c
    ld c, e
    add [hl]
    ld d, a
    ld h, l
    ld a, d
    ld h, l
    ld c, b
    ld [hl], a
    adc c
    xor b
    adc d
    cp c
    add a
    ld [hl], h
    ld h, l
    ld d, a
    ld [hl], a
    and a
    sbc d
    sbc d
    ld a, b
    adc b
    ld h, [hl]
    ld h, a
    ld e, b
    sub a
    ld l, b
    ld a, b
    sub a
    and a
    ld b, [hl]
    add [hl]
    ld a, b
    xor c
    adc b
    add a
    add l
    add [hl]
    ld [hl], l
    ld h, a
    adc d
    ld a, d
    sub l
    adc b
    sub a
    sbc b
    ld [hl], l
    ld h, a
    sub a
    ld [hl], a
    db $76
    ld a, c
    and a
    ld a, b
    db $76
    ld a, d
    sbc b
    add a
    add [hl]
    ld e, c
    ld [hl], l
    ld d, a
    ld a, b
    ld a, b
    ld [hl], a
    ld l, b
    cp b
    ld a, c
    adc b
    add a
    sub [hl]
    ld b, [hl]
    ld [hl], a
    ld a, c
    or [hl]
    ld a, b
    ld a, b
    adc c
    sub a
    ld a, b
    add l
    ld a, b
    add [hl]
    ld a, d
    adc b
    sbc b
    add [hl]
    ld e, b
    ld h, a
    xor d
    xor c
    ld a, b
    ld h, l
    ld h, [hl]
    ld d, [hl]
    sbc c
    adc c
    cp d
    ld [hl], a
    adc b
    ld e, c
    ld a, c
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, b
    add a
    db $76
    add a
    adc c
    sbc c
    ld a, b
    sbc b
    adc d
    adc b
    ld d, l
    ld d, l
    ld l, b
    adc c
    ld l, d
    cp c
    sbc c
    add a
    ld d, a
    ld l, b
    adc c
    sub a
    add [hl]
    ld h, l
    adc c
    xor b
    xor e
    add a
    add a
    ld [hl], l
    ld d, a
    db $76
    sbc b
    adc b
    adc b
    add a
    ld a, c
    adc c
    ld a, b
    ld h, [hl]
    add a
    ld a, c
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    adc b
    ld l, b
    adc c
    sbc b
    cp b
    ld a, b
    ld e, b
    ld a, b
    sub a
    ld h, [hl]
    ld e, b
    adc b
    add l
    add a
    ld [hl], a
    xor d
    sbc b
    adc b
    add l
    add [hl]
    ld d, [hl]
    ld [hl], a
    ld h, a
    xor c
    adc b
    sbc b
    ld h, a
    adc b
    ld h, [hl]
    sub a
    ld h, l
    add a
    db $76
    xor c
    ld h, [hl]
    adc c
    ld h, a
    adc c
    add a
    sbc c
    sub a
    ld l, b
    ld b, e
    ld h, [hl]
    ld e, b
    adc e
    adc b
    xor d
    sbc b
    add a
    ld h, l
    ld [hl], a
    db $76
    add a
    ld d, l
    ld a, c
    sub a
    sbc e
    add a
    adc b
    add [hl]
    ld [hl], a
    db $76
    ld a, c
    sub a
    adc c
    ld l, b
    ld h, l
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    sbc c
    ld h, a
    ld [hl], l
    add a
    ld [hl], a
    ld h, a
    ld a, c
    adc e
    sbc e
    ld a, d
    ld [hl], a
    db $76
    ld h, l
    ld d, [hl]
    ld h, a
    sbc d
    cp c
    sbc d
    and a
    ld l, b
    add a
    ld l, b
    sub a
    ld e, b
    sbc b
    ld [hl], a
    ld h, l
    ld e, b
    adc d
    xor d
    adc b
    sbc c
    add [hl]
    ld l, c
    ld d, a
    add a
    ld e, c
    ld a, c
    ld [hl], a
    ld l, b
    sbc d
    cp e
    ld [hl], a
    ld h, h
    ld a, b
    ld a, b
    sbc b
    ret


    sbc c
    add l
    ld e, b
    add [hl]
    adc c
    sbc b
    ld a, b
    add [hl]
    ld e, b
    adc b
    add a
    db $76
    ld h, l
    adc b
    sbc d
    ld l, c
    xor b
    add a
    ld h, a
    ld d, e
    ld d, [hl]
    adc b
    sbc d
    ld [hl], a
    ld a, b
    adc c
    sbc c
    ld h, a
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld [hl], a
    adc c
    ld a, c
    and a
    ld d, [hl]
    db $76
    ld e, c
    sbc d
    ld a, b
    rst $00
    ld a, b
    ld h, a
    ld b, l
    add a
    ld a, c
    xor d
    ld a, c
    sbc b
    ld h, [hl]
    add [hl]
    ld e, c
    ld l, b
    ld b, a
    add a
    adc c
    xor b
    ld l, d
    cp b
    db $76
    ld h, h
    ld h, $79
    ld l, c
    ret


    adc c
    adc b
    ld h, l
    ld d, l
    ld b, [hl]
    adc c
    sbc d
    sbc b
    sbc b
    and [hl]
    add [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc b
    sbc b
    add a
    sub [hl]
    ld a, b
    ld h, l
    ld l, c
    adc c
    sbc c
    sub [hl]
    adc c
    add a
    ld h, a
    ld [hl], l
    ld l, b
    adc c
    sbc b
    adc b
    ld l, b
    ld a, c
    add a
    add a
    adc b
    ld a, d
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc b
    sbc c
    ld a, b
    db $76
    ld d, [hl]
    adc b
    sbc c
    ld [hl], a
    add a
    add a
    adc b
    add [hl]
    adc d
    sbc b
    adc b
    add a
    ld l, b
    adc b
    ld h, a
    db $76
    adc b
    adc d
    sbc b
    sbc b
    adc c
    or a
    ld h, [hl]
    ld h, e
    add a
    sub a
    add a
    adc c
    adc b
    ld [hl], l
    ld h, a
    xor d
    ld a, b
    adc b
    add a
    add [hl]
    ld d, [hl]
    adc b
    xor b
    sbc b
    ld h, [hl]
    ld a, b
    sub [hl]
    xor b
    ld a, b
    add [hl]
    db $76
    ld h, a
    add a
    xor d
    sbc d
    add [hl]
    ld d, l
    adc b
    adc d
    ld a, c
    ld [hl], a
    add a
    ld l, b
    ld d, a
    ld e, b
    ld a, c
    adc b
    sbc b
    ld e, b
    ld a, d
    add a
    db $76
    adc b
    ld a, b
    ld h, a
    ld d, [hl]
    ld h, a
    adc b
    adc d
    sbc e
    sbc c
    ld [hl], h
    ld d, l
    ld l, c
    ld a, b
    ld [hl], a
    sbc b
    sbc b
    ld a, b
    ld l, b
    sbc c
    sub [hl]
    ld d, a
    ld b, [hl]
    ld a, b
    sub [hl]
    adc c
    ld a, c
    ld a, b
    ld d, a
    db $76
    sbc b
    sbc b
    xor b
    ld [hl], l
    add h
    db $76
    sbc b
    ld l, b
    sbc b
    add a
    ld a, b
    ld a, b
    sbc b
    xor b
    adc b
    sub a
    ld d, l
    ld d, a
    sub a
    xor c
    add a
    ld a, c
    sub a
    adc c
    adc c
    adc b
    ld h, a
    ld d, [hl]
    ld a, b
    ld a, b
    adc c
    adc c
    ld [hl], a
    add [hl]
    adc d
    ld a, c
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld a, c
    sbc c
    adc c
    ld [hl], a
    or a
    add a
    ld d, [hl]
    add [hl]
    adc b
    ld a, b
    adc d
    adc b
    xor c
    sbc b
    add [hl]
    ld [hl], l
    ld h, [hl]
    ld h, a
    add a
    adc c
    sbc c
    sub a
    db $76
    sub a
    add a
    ld h, a
    sbc b
    sbc d
    db $76
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    add a
    ld a, c
    ld l, b
    cp c
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    cp d
    xor c
    sbc c
    ld b, a
    ld a, b
    ld h, a
    adc d
    add [hl]
    add [hl]
    add a
    ld a, c
    adc b
    sbc d
    sub [hl]
    adc c
    ld b, [hl]
    ld [hl], a
    adc d
    sbc b
    ld h, a
    ld h, a
    ld b, [hl]
    adc b
    ld a, c
    and a
    adc b
    sbc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    add a
    add [hl]
    adc b
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    db $76
    add a
    ld h, [hl]
    xor b
    sbc b
    adc c
    ld b, a
    ld h, [hl]
    db $76
    sbc b
    ld l, c
    cp c
    ld [hl], a
    add [hl]
    ld h, a
    add [hl]
    ld e, b
    sbc c
    ld [hl], l
    add a
    ld a, b
    xor c
    ld h, a
    sub a
    ld [hl], a
    ld a, c
    ld h, a
    sub a
    adc b
    db $76
    ld a, b
    ld a, b
    ld a, b
    xor b
    sbc c
    adc b
    ld h, a
    add [hl]
    ld h, a
    adc c
    ld a, c
    adc b
    add [hl]
    adc b
    add a
    adc c
    adc b
    ld [hl], a
    ld h, l
    ld a, b
    ld a, c
    ld a, c
    adc d
    add a
    sub a
    ld h, [hl]
    ld a, b
    sbc b
    adc d
    sub [hl]
    add a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    adc d
    adc d
    db $76
    adc d
    adc c
    sbc b
    ld h, [hl]
    ld [hl], a
    ld d, l
    ld l, c
    ld l, b
    jp z, $88a9

    add [hl]
    ld h, [hl]
    ld [hl], a
    ld a, c
    adc b
    ld h, a
    ld a, b
    ld a, c
    xor b
    sbc c
    add a
    adc b
    ld a, b
    ld a, b
    db $76
    adc b
    add a
    ld [hl], a
    ld [hl], a
    sbc c
    ld h, a
    ld a, b
    sbc d
    sbc b
    ld h, a
    ld [hl], l
    ld d, [hl]
    add a
    ld a, c
    sbc c
    adc b
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    add a
    sub [hl]
    ld h, l
    ld h, a
    adc c
    adc c
    adc b
    sub a
    ld a, b
    xor b
    add a
    sub [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld a, b
    ld a, c
    sub a
    ld [hl], a
    sbc c
    sub a
    add [hl]
    ld [hl], a
    ld l, b
    ld h, [hl]
    ld d, a
    add [hl]
    adc c
    xor d
    adc e
    adc b
    ld d, [hl]
    and l
    ld b, a
    ld [hl], a
    ld h, a
    sub a
    ld a, c
    cp b
    ld a, c
    xor b
    ld a, c
    add e
    inc [hl]
    ld l, b
    ld a, d
    and [hl]
    ld l, c
    xor b
    ld e, c
    ld [hl], l
    adc d
    cp b
    ld a, b
    ld [hl], h
    ld h, [hl]
    db $76
    ld a, c
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    ld a, c
    adc e
    ld l, d
    and [hl]
    ld h, l
    ld d, l
    ld b, [hl]
    ld l, c
    sbc d
    cp c
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld a, c
    xor c
    xor d
    adc b
    ld h, [hl]
    adc b
    ld a, c
    sbc b
    ld l, b
    add [hl]
    ld h, l
    ld d, l
    ld a, c
    call z, $a8ab
    ld [hl], a
    ld [hl], l
    ld e, b
    db $76
    sbc c
    ld a, c
    ld l, c
    sub a
    adc c
    ld l, b
    ld a, c
    sbc c
    db $76
    ld a, c
    sbc b
    sbc b
    add h
    ld h, a
    sub [hl]
    adc c
    sub a
    sbc d
    xor c
    add a
    ld [hl], l
    ld h, a
    ld l, b
    adc b
    db $76
    sbc c
    sbc d
    adc b
    add [hl]
    ld a, b
    ld l, b
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    ld h, a
    sub a
    ld l, b
    and [hl]
    adc b
    add a
    ld a, b
    xor b
    add a
    and [hl]
    ld h, h
    ld d, h
    ld e, c
    sbc b
    xor d
    sbc c
    sbc e
    sub l
    ld d, [hl]
    ld d, [hl]
    add [hl]
    ld [hl], l
    ld e, c
    sbc d
    sbc e
    ld a, b
    adc b
    ld d, l
    ld d, h
    db $76
    adc c
    sbc c
    xor c
    add a
    ld h, [hl]
    ld d, l
    ld a, b
    ld a, c
    adc d
    sub a
    ld l, c
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld h, a
    sub a
    ld h, a
    ld [hl], a
    adc d
    xor b
    xor b
    ld e, b
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    adc b
    adc d
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    sbc b
    adc d
    add a
    db $76
    ld [hl], a
    ld d, a
    adc b
    ld l, c
    sbc c
    ld h, a
    ld a, b
    ld h, a
    ld a, c
    sbc b
    sbc b
    ld d, l
    ld h, l
    add a
    adc d
    adc c

Jump_014_7578:
    sbc d
    sub a
    ld [hl], l
    ld d, [hl]
    adc e
    ld a, c
    adc b
    db $76
    adc c
    ld a, b
    adc b
    sbc b
    sbc c
    add a

Jump_014_7586:
    ld h, a
    ld [hl], a
    sbc c
    sub a
    add a
    ld a, b
    ld h, a
    add a
    adc c
    cp d
    add [hl]
    ld a, b
    add a
    ld a, b
    ld h, a
    xor b
    sub a
    ld [hl], l
    ld h, a
    adc c
    add a
    and a
    ld [hl], a
    sub a
    ld [hl], a
    sbc c
    ld h, [hl]
    sbc b
    db $76
    ld h, a
    ld h, l
    adc c
    xor c
    xor c
    db $76
    db $76
    ld [hl], h
    ld h, a
    ld a, b
    adc c
    and a
    ld a, c
    adc b
    adc b
    adc b
    add a
    ld h, [hl]
    db $76
    ld [hl], a
    adc b
    sbc b
    sbc b
    ld a, b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    sbc d
    sbc d
    adc c
    ld d, a
    ld [hl], a
    ld h, [hl]
    ld l, b
    ld l, b
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    sbc c
    ld a, b
    sbc b
    ld d, a
    ld d, l
    ld e, c
    ld a, b
    ld a, c
    adc c
    adc c
    add [hl]
    ld d, a
    ld [hl], a
    sbc b
    ld h, a
    ld [hl], a
    ld a, c
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    sbc c
    and a
    add [hl]
    ld h, [hl]
    ld h, a
    db $76
    adc c
    add [hl]
    sub a
    ld l, b
    ld l, d
    adc b
    sbc c
    add a
    ld h, a
    ld b, l
    db $76
    adc b
    sbc b
    ld h, [hl]
    add a
    add [hl]
    xor c
    ld a, c
    xor c
    ld h, [hl]
    ld d, l
    ld d, [hl]
    sbc b
    sbc c
    sbc b
    ld [hl], a
    add l
    ld c, b
    ld h, a
    sbc c
    sbc b
    adc b
    db $76
    ld a, c
    ld a, b
    sbc b
    ld [hl], a
    ld h, a
    ld a, b
    sbc d
    xor c
    xor b
    ld d, [hl]
    sub a
    ld b, a
    ld a, c
    sbc c
    res 3, b
    add a
    db $76
    adc c
    ld [hl], a
    ld a, b
    ld [hl], h
    ld a, b
    ld a, b
    xor c
    sbc b
    ld l, c
    adc b
    ld h, [hl]
    ld h, a
    adc b
    adc b
    sub a
    add a
    add a
    ld h, a
    sbc b
    adc b
    sbc b
    ld a, c
    sub [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    add a
    adc b
    add a
    adc c
    ld h, a
    adc c
    add a
    add a
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    adc c
    sbc d
    ld a, b
    db $76
    ld h, a
    ld d, [hl]
    ld a, b
    ld a, b
    xor c
    sub a
    ld a, c
    ld [hl], a
    adc b
    and a
    ld a, b
    add [hl]
    ld h, e
    ld hl, $5426
    ld h, [hl]
    ld h, [hl]
    ld a, c
    xor h
    db $ed
    db $dd
    db $dd
    db $dd
    db $db
    db $db
    sbc b
    sub a
    ld h, h
    ld b, h
    stop
    ld de, $4413
    ld a, b
    sbc c
    cp e
    db $ed
    xor $fe
    xor h
    cp e
    cp d
    sbc b
    db $76
    ld d, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld d, l
    ld h, l
    ld h, a
    ld a, b
    adc c
    sbc d
    xor d
    ld a, c
    xor d
    cp e
    xor e
    sbc c
    adc b
    adc c
    sbc c
    adc b

Call_014_7689:
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    ld h, [hl]
    ld l, b
    sbc b
    sbc d
    cp d
    cp h
    call c, $cadc
    xor c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, l
    ld b, h
    inc [hl]
    ld b, l
    ld d, l
    ld h, a
    ld l, c
    sbc h
    call z, $ccdd
    call z, $b9ba
    add a
    ld d, h
    ld b, e
    inc sp
    ld b, h
    ld d, h
    ld b, l
    ld h, [hl]
    add a
    sbc c
    xor e
    cp e
    res 7, h
    cp e
    cp d
    sub a
    db $76
    ld h, l
    ld h, l
    ld b, h
    ld b, l
    ld d, l
    ld h, a
    adc c
    adc b
    sbc c
    sbc c
    sbc c
    xor d
    sbc c
    adc c
    sbc c
    adc b
    add a
    adc b
    db $76
    db $76
    add [hl]
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    adc c
    xor d
    xor c
    sbc c
    adc b
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    sub a
    add a
    ld [hl], a
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, a
    ld [hl], a
    adc c
    sbc e
    cp e
    cp e
    xor c
    xor d
    sbc b
    sub a
    add a
    ld h, a
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld [hl], a
    adc c
    sbc d
    cp e
    res 5, e
    cp e
    sbc b
    and a
    db $76
    ld d, [hl]
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    add a
    ld a, c
    sbc c
    xor d
    xor d
    cp d
    sbc c
    sbc c
    ld [hl], a
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld h, [hl]
    db $76
    add a
    adc b
    adc c
    adc c
    sbc b
    adc b
    adc b
    sbc c
    adc d
    sbc c
    sbc c
    adc c
    ld [hl], a
    db $76
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc b
    sbc b
    adc b
    adc c
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    sbc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    db $76
    ld a, b
    adc c
    adc c
    xor d
    xor d
    sbc c
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld l, b
    ld l, b
    adc c
    xor c
    xor c
    xor d
    xor d
    sbc b
    add a
    db $76
    ld d, a
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    sbc d
    sbc c
    xor c
    sbc c
    adc c
    ld [hl], a
    add a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc c

Call_014_7779:
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc c
    adc c
    sbc b

jr_014_778a:
    adc c
    adc b
    adc c
    add a
    sub [hl]
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld a, b
    ld a, b
    adc c
    adc c
    adc c

Jump_014_7799:
    adc b
    sbc b
    sbc c
    adc b
    adc b
    add a
    ld h, a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld d, a
    ld [hl], a

Call_014_77a7:
    ld a, b
    ld a, c
    sbc c
    sbc d
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc c
    ld a, c
    adc c
    sbc b
    sbc c
    adc c
    adc b
    add a
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    adc c
    add a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    adc c
    ld a, c
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc c
    adc c
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    jr z, jr_014_778a

    xor c
    xor d
    xor b
    adc c
    db $76
    adc b
    ld [hl], a
    ld d, a
    adc b
    adc b
    ld [hl], a
    ld h, l
    ld d, l
    inc sp
    ldh [rNR43], a
    inc sp
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, l
    db $76
    ld h, [hl]
    db $76
    add [hl]
    adc d
    cp e
    cp h
    call z, Call_014_5eee
    db $dd
    sbc $ce
    call c, $dcec
    call c, $bbcb
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    add h
    ld b, e
    inc [hl]
    inc hl
    stop
    nop
    nop
    db $10
    ld [hl+], a
    inc sp
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, a
    ld l, b
    xor c
    xor d
    cp d
    cp h
    call $eeee
    rst $38
    rst $38
    cp $de
    xor $dc
    res 7, e
    cp d
    ld l, e
    sbc c
    sbc b
    add [hl]
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, h
    ld d, l
    ld b, h
    ld d, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, l
    or l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    add a
    adc b
    adc b
    sbc c
    sbc c
    xor d
    sbc d
    xor d
    xor e
    xor e
    xor e
    xor d
    adc d
    cp e
    cp e
    cp d
    cp d
    xor d
    sbc c
    sbc b
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    adc c
    adc c
    sub a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    xor b
    adc b
    sbc c
    sbc d
    xor c
    cp d
    xor e
    cp d
    set 1, e
    call z, $ccdc
    call z, $caca
    ld e, d
    sbc b
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, l

Jump_014_78a9:
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    push bc
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    xor d
    cp h
    call $dccd
    call z, $bcdc
    ld c, e
    jp z, $babb

    xor d
    sbc b
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld b, h
    inc sp
    ld [hl-], a
    inc hl
    inc sp
    ld b, h
    or h
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    adc c
    adc c
    sbc c
    sbc e
    xor d
    xor e
    cp d
    ld c, d
    cp d
    cp h
    xor d
    cp e
    cp e
    cp d
    xor d
    sbc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    sub h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld h, l
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc c
    adc c
    adc c
    ld a, c
    sbc b
    sbc d
    sbc d
    sbc d
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    ld a, b
    ld h, a
    ld a, b
    add a
    ld a, b
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    sub a
    ld [hl], a
    adc b
    sbc c
    sbc c
    xor c
    cp c
    xor c
    sbc d
    adc b
    adc b
    sbc b
    sbc b
    adc b
    sbc c
    sbc b
    ld e, b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    sub a
    sub a
    adc b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld d, l
    or l
    ld d, l
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc d
    sbc d
    cp d
    cp e
    ld l, e
    xor e
    cp d
    xor d
    sbc c
    sbc c
    sbc b
    adc c
    sbc b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld d, l
    add [hl]
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    adc b
    ld l, c
    sbc d
    sbc d
    sbc e
    cp e
    xor e
    cp e
    cp e
    cp d
    cp d
    xor c
    xor c
    sbc c
    adc b
    ld l, b
    db $76
    add [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    and a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc c
    sbc c
    xor d
    sbc d
    xor d
    xor d
    sbc d
    xor c
    sbc d
    ld a, c
    sbc c
    adc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    add a
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    sbc b
    sbc c
    sbc b
    adc b
    add a
    adc b
    ld l, b
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    add a
    add a
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    add [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    add a
    add a
    adc c
    ld a, b
    sub a
    adc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    adc b
    adc c
    adc b
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    ld l, b
    adc b
    add a
    ld a, b
    ld h, a
    ld h, a
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    adc c
    adc b
    sbc c
    sbc c
    sbc d
    xor c
    xor c
    xor d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    ld d, a
    add a
    add a
    db $76
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    and l
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld a, b
    ld a, b
    adc c
    adc c
    sbc c
    sbc c
    xor c
    xor d
    sbc d
    ld l, d
    xor c
    xor d
    sbc b
    sbc b
    sbc b
    adc b
    ld a, b
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    add a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    add a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    sbc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    add a
    add a
    ld a, b
    ld a, b
    add a
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    adc c

Call_014_7a7a:
    adc b
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    ld l, b
    sbc c
    adc c
    adc b
    sub a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, l
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    add a
    ld h, a
    db $76
    db $76
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    adc b
    add a
    adc b
    adc c
    ld a, b
    ld a, b
    sbc b
    sbc b
    adc b
    adc c
    ld a, b
    sbc b
    adc b
    adc c
    add a
    sub a
    add a
    ld a, b
    ld h, a
    db $76
    ld h, [hl]
    add l
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    db $76
    ld h, a
    db $76
    add a
    ld a, b
    adc b
    adc c
    adc c
    adc c
    ld a, b
    sbc c
    sbc b
    adc c
    sbc b
    sbc b
    adc c
    ld a, b
    adc b
    sbc b
    adc b
    add a
    adc c
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld d, a
    ld d, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    sbc b
    sbc c
    sbc d
    sbc c
    xor c
    sbc d
    sbc d
    sbc b
    sbc c
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    db $76
    db $76
    sub a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    adc c
    ld l, c
    adc c
    adc c
    adc c
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    db $76
    add a
    db $76
    add a
    ld h, a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    adc b
    sub a
    adc c
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add [hl]
    add [hl]
    db $76
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    sub a
    sbc b
    sbc b
    sbc b
    adc b
    sbc b
    adc c
    ld a, c
    adc b
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    add a
    ld a, b
    ld a, b
    adc c
    ld a, b
    adc c
    adc b
    sbc b
    adc c
    adc b
    ld l, c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    sub [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    ld a, c
    adc b
    cp b
    ld c, b
    ld [hl], e
    or h
    ld d, a
    ld e, d
    inc [hl]
    xor c
    sbc $86
    jr z, jr_014_7c0d

    ld a, h
    db $ed
    ld [$ac48], a
    ld h, b
    ld d, b
    ld [hl-], a
    ld e, e
    xor $c6
    add h
    ld b, a
    ld [hl], l
    ld l, d
    ld b, d
    ld d, [hl]
    ld l, b
    rst $18
    sbc $94
    ld l, e
    add e
    ld e, c
    rst $00
    xor h
    adc [hl]
    ret c

    ld c, c
    add c
    dec d
    sbc l
    sbc $a9
    inc [hl]
    ld b, h
    ld a, [hl-]
    jp z, Jump_000_1241

    ld c, e
    ld [$5a98], a
    adc d
    cp d
    jp z, Jump_014_5a55

    sbc d
    db $db
    adc d
    and e
    adc b
    adc e
    db $76
    ld h, a
    sbc b
    ld h, a
    sbc c
    ld a, d
    add h
    ld b, l
    ld h, a
    sbc c
    sbc d
    ld [hl], e
    dec h
    cp d
    sbc d
    ld e, e
    ld h, [hl]
    adc e
    and [hl]
    ld a, e
    sbc d
    xor h
    add l
    ld d, l
    ld d, a
    adc h
    cp h
    sbc c
    sub [hl]
    ld a, b
    ld b, e
    ld b, [hl]
    db $76
    adc d
    xor e
    ld [hl], h
    ld d, a
    ld [hl], a
    sub [hl]
    add a
    ld d, [hl]
    ld [hl], a

jr_014_7c0d:
    ld a, e
    cp c
    add a
    adc c
    sbc d
    sub l
    xor c
    ld [hl], a
    ld h, [hl]
    ld c, c
    ret


    sbc c
    ld h, [hl]
    ld h, l
    ld l, d
    jp c, Jump_014_6786

    ld e, b
    adc b
    xor b
    ld d, h
    ld e, c
    sbc d
    cp d
    sbc b
    ld h, [hl]
    ld l, c
    sbc b
    and a
    add [hl]
    ld d, l
    ld l, b
    ld a, d
    cp d
    add a
    ld l, b
    adc c
    sub a
    ld h, [hl]
    db $76
    adc d
    cp c
    sub a
    ld [hl], a
    add a
    adc d
    and a
    db $76
    ld [hl], l
    ld h, a
    ld l, c
    adc b
    ld [hl], a
    ld [hl], a
    sbc c
    adc c
    sbc b
    db $76
    adc b
    ld l, c
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    sbc c
    sbc b
    sbc b
    ld [hl], a
    add a
    adc c
    ld a, b
    ld h, a
    sub [hl]
    ld a, b
    add a
    add a
    ld a, b
    sbc c
    ld a, b
    ld a, b
    ld a, b
    ld h, [hl]
    ld [hl], a
    adc c
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    add a
    adc c
    ld a, b
    ld a, b
    sbc c
    ld a, b
    add a
    add a
    db $76
    add a
    ld [hl], a
    adc c
    ld a, b
    add a
    adc c
    ld [hl], a
    adc b
    add [hl]
    ld a, b
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld c, b
    ld a, d
    ld d, c
    rst $08
    daa
    ld a, e
    rst $10
    ld c, l
    or c
    cp d
    ld a, [de]
    and h
    adc e
    sbc e
    ld [hl], a
    ld h, [hl]
    ld a, b
    xor e
    ld a, e
    ld [hl], h
    or a
    ld l, c
    add a
    ld a, b
    xor b
    ld l, b
    ld a, d
    ld e, d
    add l
    sub [hl]
    add l
    ld [hl], a
    adc h
    ld b, a
    call nz, Call_014_7689
    ld a, b
    ld a, b
    db $76
    and [hl]
    ld a, c
    ld e, c
    sub [hl]
    adc c
    add hl, sp
    and [hl]
    ld l, d
    sub h
    cp b
    ld c, c
    add a
    ld l, b
    db $76
    sub a
    ld a, d
    adc c
    sub h
    sub a
    ld l, b
    ld a, c
    ld a, c
    ld l, c
    ld [hl], l
    ld l, b
    ld a, b
    adc b
    sbc b
    ld [hl], a
    ld a, b
    ld l, c
    add [hl]
    ld a, b
    ld a, b
    ld l, b
    ld h, [hl]
    and a
    ld l, c
    ld h, [hl]
    adc b
    adc b
    ld [hl], a
    ld a, c
    ld h, a
    sub a
    ld l, c
    ld [hl], l
    and a
    ld l, b
    adc b
    sub a
    sub [hl]
    add a
    adc b
    ld e, c
    ld a, c
    db $76
    add a
    add a
    adc b
    add a
    sub a
    ld a, c
    ld e, c
    add a
    adc b
    ld a, b
    ld h, a
    adc b
    ld l, b
    sub [hl]
    adc b
    ld [hl], a
    adc b
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
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    add a
    add a
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld a, b
    ld a, c
    add a
    adc b
    ld l, b
    add a
    ld [hl], a
    ld l, b
    add a
    adc b
    db $76
    sub a
    ld a, c
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld a, c
    ld l, b
    adc b
    add [hl]
    adc b
    ld h, a
    sub a
    ld l, c
    add a
    sub [hl]
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld l, b
    sub a
    ld a, c
    ld l, c
    add [hl]
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    sub l
    ld a, d
    or a
    adc b
    ld e, c
    add a
    add a
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld a, b
    sub l
    sub a
    ld l, b
    ld l, d
    ld a, b
    db $76
    and l
    add [hl]
    add a
    adc c
    ld h, [hl]
    adc b
    ld a, b
    sub l
    sub a
    ld [hl], a

jr_014_7d7a:
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add l
    sub [hl]
    ld a, c
    ld c, b
    add [hl]
    ld a, b
    ld l, c
    sub l
    adc e
    ld e, b
    ld a, b
    or e
    ld a, d
    ld [hl], a
    adc c
    ld l, b
    ld [hl], l
    adc e
    ld h, [hl]
    and a
    sbc b
    ld l, c
    add h
    ret c

    ld c, h
    db $76
    ld a, c
    ld l, b
    and l
    adc d
    ld c, e
    ld [hl], a
    sub h
    sbc b
    add [hl]
    ld l, e
    ld h, e
    rst $00
    add hl, sp
    add a
    ld l, e
    ld b, a
    add [hl]
    and [hl]
    ld e, e
    ld [hl], l
    and l
    ld e, e
    ld h, a
    and [hl]
    ld l, e
    jr z, jr_014_7d7a

    ld [hl], a
    ld [hl], l
    sub $68
    ld c, d
    db $76
    cp b
    ld c, b
    ld l, c
    ld c, h
    ld h, l
    ret nz

    ld l, c
    ld [hl], a
    cp b
    ld e, d
    ld l, c
    add l
    xor b
    ld h, a
    adc b
    ld l, e
    add h
    ld a, c
    sub [hl]
    db $76
    adc b
    adc b
    adc b
    sub h
    sbc b
    ld c, h
    ld [hl], h
    cp b
    ld c, c
    ld a, d
    ld h, a
    ld l, c
    add h
    sbc c
    ld h, l
    call nz, Call_014_7779
    ld a, b
    ld d, l
    and a
    ld h, a
    or [hl]
    adc b
    sbc b
    ld c, e
    ld h, [hl]
    add a
    adc b
    adc b
    sub a
    ld e, c
    add a
    ld a, b
    adc b
    adc c
    ld l, b
    and a
    ld a, d
    add l
    and l
    sub a
    ld a, c
    adc b
    ld e, c
    add [hl]
    ld a, d
    ld [hl], a
    sub a
    ld e, c
    ld h, l
    or l
    adc b
    ld a, b
    add a
    ld e, e
    ld a, b
    ld l, d
    ld h, [hl]
    adc b
    add [hl]
    sbc b
    ld e, b
    sub a
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    and h
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add [hl]
    scf
    ld l, b
    ld h, l
    ld [hl], a
    adc b
    cp h
    call c, $30a7
    inc de
    ld l, b
    call z, $8bca
    cp b
    ld b, b
    sub [hl]
    sbc c
    sbc e
    and a
    ld a, b
    xor b
    adc b
    ld [hl], a
    sbc d
    db $76
    ld [hl], a
    adc c
    adc b
    sbc b
    xor d
    ld a, c
    xor h
    res 3, b
    ld b, c
    dec d
    ld a, d
    sbc d
    xor d
    xor c
    xor e
    rst $00
    ld b, c
    ld c, c
    ret z

    ld d, [hl]
    ld a, b
    xor c
    add [hl]
    ld l, b
    db $76
    adc d
    xor b
    adc b
    adc h
    res 2, [hl]
    ld b, [hl]
    and a
    ld b, l
    ld l, c
    sbc h
    ret z

    ld l, h
    sub a
    ld [hl-], a
    ld l, c
    sbc c
    sbc h
    or [hl]
    ld e, b
    sbc h
    ret


    ld a, e
    db $ed
    sub h
    ld de, $b958
    cp c
    sub l
    ld e, e
    cp d
    cp d
    and a
    inc sp
    ld a, c
    sub [hl]
    xor a
    call c, Call_014_52da
    ld de, $bf39
    cp d
    xor e
    cp e
    ld h, c
    ld de, $ae69
    reti


    ld d, l
    ld l, h
    jp z, Jump_000_3495

    ld [hl], l
    ld a, e
    call c, Call_014_5529
    ld a, e
    db $db
    xor d
    xor b
    sbc e
    sub l
    dec h
    ld c, c
    cp b
    rst $08
    ret


    ld d, d
    dec h
    ld d, h
    ld b, [hl]
    cp d
    sbc e
    db $ed
    add [hl]
    ld b, l
    adc e
    xor e
    call Call_014_77a7
    ld h, h
    sbc e
    bit 4, l
    ld h, h
    add $79
    xor d
    sub [hl]
    sbc d
    cp h
    sbc b
    ld [hl], a
    ld d, a
    sbc e
    xor c
    cp c
    ld b, h
    ld h, [hl]
    ld [hl], a
    sbc h
    add hl, de
    ld d, d
    ld e, c
    xor d
    ld b, [hl]
    xor a
    call c, $13a4
    ld a, d
    xor b
    ld h, [hl]
    ld a, d
    jp z, $9587

    ld h, b
    ld c, c
    xor c
    xor [hl]
    cp d
    ld a, b
    ld a, b
    xor c
    add h
    ld b, a
    sbc b
    ld h, l
    dec h
    ld a, b
    adc d
    xor b
    adc b
    cp h
    db $db
    add e
    inc d
    ld l, c
    call c, $8b88
    add a
    add l
    ld d, a
    add l
    ld l, b
    add a
    cp d
    ld e, b
    ld h, a
    xor e
    sbc c
    cp d
    ld [hl], h
    ld [hl], $79
    cp h
    and a
    ld h, h
    ld b, h
    ld e, b
    cp l
    and a
    ld b, h
    ld e, b
    res 2, a
    add [hl]
    ld d, [hl]
    adc d
    sub a
    sbc c
    ld d, [hl]
    sbc b
    sbc d
    add l
    ld h, l
    ld d, a
    cp e
    xor b
    ld h, l
    ld l, b
    cp d
    db $76
    ld d, l
    ld l, d
    cp e
    ld h, h
    ld a, c
    adc b
    cp d
    db $76
    add [hl]
    ld d, a
    and a
    ld h, l
    ld [hl], a
    ld d, a
    ld [hl], a
    xor h
    res 2, h
    ld b, [hl]
    sbc b
    ld h, [hl]
    ld h, [hl]
    sub a
    adc c
    and a
    ld a, c
    xor d
    sbc b
    ld [hl], a
    ld a, c
    add h
    ld d, $7b
    jp z, Jump_014_6576

    ld b, [hl]
    adc c
    sbc d
    add a
    ld [hl], a
    db $76
    ld a, c
    add l
    adc c
    sbc c
    ld a, c
    sbc b
    ld [hl], l
    ld d, a
    add a
    adc c
    adc b
    ld [hl], a
    sbc b
    adc b
    ld [hl], a
    add a
    add a
    db $76
    sbc b
    adc b
    ld a, b
    ld d, l
    ld a, c
    cp d
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld d, a
    ld a, b
    add a
    ld [hl], a
    db $76
    ld l, b
    ld l, c
    sbc c
    add a
    adc c
    sbc d
    db $76
    ld d, h
    ld h, a
    sbc b
    ld a, b
    add a
    db $76
    ld a, b
    sbc b
    ld [hl], a
    add a
    add a
    adc d
    sbc b
    add l
    ld h, a
    ld a, b
    adc d
    and a
    db $76
    ld h, [hl]
    ld a, c
    sbc b
    adc c
    add l
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    ld a, c
    sbc b
    ld h, [hl]
    ld a, c
    sbc b
    ld [hl], a
    sbc b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    add a
    ld [hl], a
    adc b
    sbc c
    ld [hl], a
    add a
    ld h, a
    add a
    add a
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld a, c
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
