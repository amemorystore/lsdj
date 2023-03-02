; disasSembly of "lsdj.gb"
SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

    ld h, b
    ld b, b
    and b
    ld b, e
    jr nz, jr_013_404c

    and b
    ld b, a
    ldh [$4c], a
    db $10
    ld d, b
    db $10
    ld d, l
    ret nc

    ld h, d
    nop
    ld h, e
    ld b, b
    ld h, e
    or b
    ld h, l
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
    ld b, e
    ld b, a
    ld b, c
    ld d, h
    ld c, a
    ld c, l
    ld b, e
    ld e, c
    ld c, l
    ld b, e
    ld c, h
    ld b, c
    ld d, d
    ld c, c
    ld c, l
    ld b, e
    ld c, a
    ld d, a
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

jr_013_404c:
    nop
    dec l
    dec l
    nop
    nop
    nop
    ld c, e
    ld d, d
    dec l
    dec [hl]
    dec [hl]
    jr nz, jr_013_4059

jr_013_4059:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ee2a
    rst $38
    rst $38
    rst $38
    rst $28
    db $ed
    call z, $9abb
    sbc b
    ld a, b
    ld h, [hl]
    ld h, l
    ld b, h
    inc hl
    ld [de], a
    ld hl, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $b111
    ld hl, $2222
    ld [hl-], a
    inc sp
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld h, a
    add a
    sbc b
    xor d
    xor e
    ei
    call z, $cdbd
    db $dd
    db $dd
    db $dd
    xor $ee
    rst $28
    xor $fe
    cp $fe
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $28
    xor $ee
    xor $de
    db $ed
    db $dd
    ld a, h
    call c, $cccc
    cp e
    cp e
    res 7, d
    xor d
    xor c
    xor c
    sbc b
    sbc b
    adc b
    add a
    ld [hl], a
    dec b
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, h
    ld b, e
    ld b, d
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld de, $1011
    ld [bc], a
    db $10
    ld de, $0001
    stop
    ld bc, $0000
    ld bc, $1110
    db $10
    ld de, $1212
    ld [hl], c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld b, e
    inc sp
    ld b, e
    ld b, h
    ld d, h
    ld d, l
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add $77
    add a
    adc b
    adc b
    sbc c
    sbc c
    sbc d
    xor c
    cp d
    cp e
    cp e
    cp h
    call z, $dccc
    db $dd
    db $dd
    db $dd
    db $dd
    db $ed
    sbc $de
    db $ed
    xor $de
    sbc $ed
    sbc $dd
    db $ec
    db $ed
    xor [hl]
    db $dd
    adc $cd
    call c, $cccc
    call z, $bbbc
    cp e
    cp e
    cp d
    cp d
    xor d
    sbc c
    ld c, c
    sbc c
    adc b
    sub a
    adc b
    add a
    add [hl]
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld d, l
    ld b, h
    ld d, h
    inc [hl]
    ld b, h
    inc [hl]
    inc sp
    inc [hl]
    inc sp
    ld b, d
    inc hl
    inc sp
    inc hl
    ld [hl+], a
    ld [hl-], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld d, d
    inc sp
    ld [hl-], a
    inc hl
    inc sp
    inc sp
    inc sp
    ld b, e
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    sub [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc c
    adc c
    adc c
    sbc c
    sbc d
    sbc d
    cp d
    xor e
    cp d
    xor e
    cp e
    xor e
    cp e
    cp e
    cp e
    call z, $bcbc
    call z, $bdcc
    call z, $cbac
    res 7, h
    set 1, h
    cp h
    cp e
    res 7, h
    cp h
    cp d
    cp e
    cp e
    xor e
    cp c
    ld l, d
    xor d
    sbc c
    xor c
    sbc c
    adc c
    xor b
    adc b
    adc c
    adc b
    add a
    adc b
    ld a, b
    ld l, b
    db $76
    db $76
    ld b, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, h
    ld d, [hl]
    ld b, l
    ld h, h
    ld d, l
    ld d, h
    ld b, h
    ld d, h
    ld b, l
    ld b, l
    ld b, h
    ld d, e
    ld b, h
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    inc [hl]
    ld b, h
    ld d, e
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    sub l
    ld d, h
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    sub a
    adc b
    sbc c
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    xor c
    xor c
    xor d
    xor c
    cp c
    cp c
    cp d
    cp d
    cp d
    xor e
    cp d
    cp d
    xor e
    cp d
    cp e
    cp e
    xor e
    xor e
    xor e
    cp d
    xor d
    cp d
    xor e
    xor d
    ld a, d
    sbc d
    xor d
    sbc d
    sbc d
    xor c
    sbc d
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    adc c
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    sbc b
    ld a, c
    adc b
    adc b
    adc c
    adc c
    adc c
    sbc c
    sbc c
    xor c
    xor c
    adc d
    sbc c
    sbc c
    xor c
    xor c
    xor c
    xor d
    xor d
    sbc d
    sbc d
    sbc d
    xor c
    sbc d
    xor c
    adc d
    sbc d
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    ld l, b
    adc c
    ld a, c
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    db $76
    ld h, l
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    add a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    sbc b
    sbc b
    adc b
    sbc c
    adc c
    adc b
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    xor c
    sbc c
    sbc b
    sbc c
    adc d
    sbc b
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    sbc c
    sbc b
    adc b
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    sub a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    add [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, c
    adc b
    sbc b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    sbc c
    adc b
    adc b
    sbc b
    adc b
    adc c
    sbc b
    sbc c
    sbc b
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    ld a, b
    adc c
    adc c
    adc c
    adc b
    sbc b
    sub a
    sbc b
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
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    ld l, b
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
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc b
    sub a
    adc c
    adc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    sub a
    adc b
    adc c
    adc c
    adc b
    adc b
    sub a
    adc b
    adc b
    adc b
    adc b
    adc b
    add a

jr_013_4382:
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld a, b
    db $76
    ld [hl], a
    or [hl]
    ld [hl], a
    ld [hl], l
    scf
    adc c
    ld l, b
    sbc d
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $ec
    bit 1, e
    sbc c
    add a
    ld h, h
    ld b, c
    nop
    ld bc, $3102
    db $10
    jr nc, jr_013_43ee

    inc b
    ld b, e
    dec h
    scf
    add hl, hl
    cp c
    xor c
    jp c, $efde

    rst $38
    rst $38
    xor $ec
    xor d
    add [hl]
    ld h, h
    inc hl
    ld b, h
    jr nz, jr_013_4382

    ld d, d
    ld [bc], a
    ld h, d
    ld b, h
    ld b, l
    ld d, [hl]
    ld d, [hl]
    sub a
    ret


    xor e
    xor [hl]
    sbc $df
    xor $dc
    ld l, e
    sbc b
    add [hl]
    ld d, e
    ld b, h
    inc h
    ld b, e
    jr nc, jr_013_43fd

    ld [hl-], a
    dec d
    ld b, a
    dec [hl]
    ld c, b

jr_013_43ee:
    add a
    ld a, d
    ld l, c
    call z, $dbbb
    call $ccdc
    xor d
    add a
    ld [hl], a
    ld d, h
    ld d, l
    inc [hl]

jr_013_43fd:
    ld h, e
    dec h
    inc sp
    ld [hl], e
    ld b, a
    ld h, [hl]
    ld d, l
    ld h, [hl]
    adc b
    ld l, e
    add a
    cp e
    xor h
    call $bbcc
    xor d
    sbc b
    ld a, b
    sub a
    inc [hl]
    ld [hl-], a
    ld b, e
    inc [hl]
    ld [hl+], a
    ld b, e
    ld h, l
    ld [hl], $44
    db $76
    ld h, [hl]
    ld a, c
    ld l, b
    adc d
    sbc d
    ld c, c
    xor e
    cp h

jr_013_4423:
    jp z, $88ba

    add a
    ld l, b
    ld h, a
    ld d, h
    ld h, e
    ld b, d
    ld h, e
    ld [hl+], a
    ld b, [hl]
    ld b, h
    ld b, h
    ld d, [hl]
    ld h, a
    ld a, b
    ld [hl], a
    ld a, c
    xor h
    xor d
    xor e
    cp d
    xor d
    xor d
    add a
    adc c
    db $76
    ld d, h
    sub l
    ld h, h
    db $76
    inc [hl]

Jump_013_4444:
    ld b, h
    ld [hl], e
    ld h, a
    ld [hl], h
    ld b, a
    add a
    ld [hl], a
    sub a
    ld l, d
    sbc c
    cp c
    xor e
    ld c, d
    cp d
    xor d
    add a
    add a
    ld a, b
    ld d, [hl]
    db $76
    ld h, [hl]
    ld e, b
    ld b, l
    ld [hl], c
    ld [hl], l
    ld b, [hl]
    ld h, l
    ld [hl], a
    ld h, [hl]
    ld e, c
    sbc d
    ld l, c
    call c, $8aab
    xor d
    cp c
    sbc d
    adc b
    sbc b
    sub [hl]
    ld d, a
    ld [hl], l
    ld b, a
    sub e
    add a
    ld b, [hl]
    ld [hl], l
    db $76
    db $76
    ld e, b
    adc b
    ld h, [hl]
    adc d
    ld a, d
    and a
    adc b
    sbc e
    xor c
    sbc d
    adc c
    adc c
    adc b
    ld [hl], a
    add [hl]
    xor b
    ld [hl], l
    ld l, b
    ld h, a
    ld b, a
    ld h, h
    sbc b
    jr c, jr_013_4423

    ld a, b
    add a
    ld [hl], a
    adc c
    sbc d
    add a
    cp d
    sbc c
    xor d
    sbc c
    add a
    and a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld e, b
    sub h
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld [hl], l
    ld b, a
    sub a
    adc d
    adc b
    adc b
    adc c
    xor c
    sbc d
    sbc c
    sbc b
    sub a
    sbc b
    add a
    ld d, a
    db $76
    ld a, b
    ld h, a
    ld h, e
    adc d
    ld d, a
    adc b
    ld h, a
    ld e, c
    ld [hl], a
    ld a, b
    adc c
    add a
    adc b
    ld a, b
    xor c
    sbc c
    adc c
    adc c
    sbc b
    adc c
    ld a, c
    add a
    add [hl]
    ld [hl], a
    ld d, a
    ld l, b
    ld [hl], l
    add a
    add l
    ld d, a
    add [hl]
    add a
    ld a, c
    sub a
    adc c
    ld l, d
    sbc b
    xor c
    ld a, b
    sbc c
    adc b
    sub a
    sbc b
    sbc c
    adc b
    ld a, b
    ld h, [hl]
    adc b
    ld h, a
    ld h, a
    add [hl]
    ld [hl], a
    sub l
    ld l, c
    db $76
    ld a, c
    adc b
    adc c
    xor c
    ld [hl], a
    sbc b
    sbc d
    adc b
    adc b
    adc c
    sbc b
    sbc b
    add a
    sub a
    adc b
    ld a, b
    ld [hl], l
    db $76
    ld a, c
    add [hl]
    ld [hl], l
    ld l, b
    adc b
    add [hl]
    ld a, b
    ld h, a
    sub a
    ld a, b
    add [hl]
    adc b
    adc d
    ld a, b
    add a
    sbc b
    adc c
    sbc b
    ld a, c
    db $76
    add a
    adc c
    ld a, b
    ld a, b
    ld e, b
    ld h, a
    add a
    db $76
    or a
    add l
    ld [hl], a
    sbc b
    ld a, b
    adc c
    adc b
    ld a, c
    sbc b
    add a
    sbc b
    adc c
    sbc b
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld h, a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc d
    add [hl]
    sbc d
    ld a, b
    sub a
    sbc c
    adc b
    sub a
    sub a
    adc c
    adc b
    add a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    add a
    ld h, a
    add a
    sub a
    ld c, b
    adc b
    sbc b
    db $76
    adc b
    adc b
    sbc b
    sbc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    add a
    ld l, b
    sbc b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    sub a
    adc b
    ld a, b
    adc c
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    db $76
    sub a
    add a
    add [hl]
    add a
    ld l, b
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    ld [hl], a
    adc b
    add a
    sbc b
    add a
    ld [hl], a
    add a

Call_013_458b:
    ld a, b

Call_013_458c:
    ld [hl], a
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    db $76
    adc b
    ld a, b
    ld l, c
    ld a, c
    adc b
    adc b
    adc c
    add a
    ld a, c
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld l, b
    add a
    adc b
    add a
    add a
    adc b
    adc b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    add a
    adc b
    db $76

jr_013_45c5:
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld h, [hl]

jr_013_45db:
    adc b
    add a
    ld a, b
    sub a
    add a
    ld [hl], a
    ld a, b
    add a
    adc c
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    sbc b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    adc c
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    db $76
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld l, c
    adc b
    ld c, c
    ld a, d
    sub e
    or a
    add l
    or l
    adc e
    ld h, [hl]
    ld a, l
    jr z, jr_013_45c5

    ld a, c
    ld e, d
    and a
    ld a, e
    ld [hl], d
    or [hl]
    ld l, b
    and [hl]
    and [hl]
    ld [hl], c
    pop af
    di
    ld a, h
    dec c
    ld l, d
    ld c, c
    and [hl]
    ld [hl], a
    ld h, l
    and a
    ld a, b
    ld a, e
    ld a, [de]
    adc e
    ld h, l
    sbc d
    ld c, c
    sub h
    xor c
    ld d, [hl]
    or [hl]
    ld e, e
    sub h
    sbc b
    jr c, jr_013_45db

    add [hl]
    ld [hl], a
    and a
    ld [hl], a
    sbc c
    ld l, b
    ld l, c
    add a
    sub l
    sbc b
    adc b
    add l
    and a
    ld e, e
    ld a, d
    ld a, b
    sub [hl]
    add a
    sbc b
    ld h, [hl]
    sub a
    ld a, b
    add [hl]
    sub a
    ld a, b
    sub [hl]
    add a
    and a
    ld a, c
    ld c, d
    db $76
    xor b
    ld c, c
    ld a, b
    ld a, c
    add [hl]
    or h
    add a
    and l
    ld a, b
    sub l
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    sub a
    ld l, d
    ld l, c
    ld a, b
    ld l, b
    add [hl]
    sub [hl]
    adc b
    add a
    adc c
    ld e, c
    add a
    ld l, c
    sub [hl]
    sub a
    ld l, b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    ld e, b
    add l
    sbc b
    db $76
    adc c
    ld e, c
    sub l
    adc b
    ld [hl], a
    ld a, b
    ld l, c
    db $76
    sbc b
    ld a, c
    ld h, a
    ld a, d
    ld e, c
    ld a, c
    db $76
    sub a
    add a
    sub [hl]
    add a
    ld a, c
    ld l, b
    ld l, d
    ld l, b
    ld l, b
    sub a
    add [hl]
    adc b
    add [hl]
    sbc b
    ld l, b
    add a
    adc b
    ld [hl], a
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld h, a
    add a
    sub [hl]
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld l, c
    add [hl]
    and l
    sub a
    add [hl]
    sub a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    adc c
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add l
    add a
    ld [hl], a
    adc b
    ld l, d
    ld h, a
    add a
    adc b
    ld a, b
    ld l, b
    ld l, b
    add a
    ld a, c
    ld l, c
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld h, a
    ld a, b
    add a
    add [hl]
    adc b
    ld h, a
    sbc b
    ld a, b
    add [hl]
    sub [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    sbc b
    ld l, b
    ld a, b
    ld a, b
    sub [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    sub a
    sub [hl]
    adc b
    add a
    ld a, c
    ld l, b
    ld a, b
    add [hl]
    add [hl]
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, b
    ld a, c
    ld l, b
    add a
    add a
    add a
    add [hl]
    sub a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add [hl]
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld l, c
    ld l, b
    ld a, e
    ld a, [hl+]
    add l
    sub a
    sub [hl]
    sub [hl]
    sub d
    call nz, Call_013_59b6
    sub a
    ld l, $54
    push bc
    ld d, [hl]
    jp Jump_000_388b


    sbc d
    ld a, [hl+]
    ld c, l
    ld h, l
    ld a, c
    add h
    and a
    sub [hl]
    sub l
    ld e, [hl]
    ld c, b
    ld e, h
    sub a
    sub a
    sub l
    sub [hl]
    add l
    sbc b
    ld a, c
    ld a, c
    ld e, e
    ld b, [hl]
    sbc c
    ld a, b
    sub l
    sub l
    sbc d
    ld e, b
    sub [hl]
    ld a, c
    ld h, a
    sbc b
    db $76
    and [hl]
    ld a, e
    dec l
    ld e, b
    ld e, e
    db $76
    and [hl]
    ld a, c
    add l
    adc c
    add a
    db $76
    ld l, d
    ld e, e
    ld c, d
    and d
    push bc
    and [hl]
    sub a
    ld l, c
    ld l, b
    ld [hl], a
    and l
    and a
    ld l, b
    sub [hl]
    jp $858a


    adc c
    ld e, d
    add a
    ld c, d
    sub d
    push bc
    or [hl]
    db $76
    cp b
    ld l, e
    ld d, a
    ld a, e
    ld b, a
    xor b
    sbc c
    db $76
    ld [hl], a
    xor b
    db $76
    adc c
    inc a
    ld l, b
    ld a, c
    sub e
    or l
    add [hl]
    and a
    adc b
    add [hl]
    adc c
    and h
    adc c
    ld e, b
    adc c
    ld l, c
    add [hl]
    ld l, d
    ld [hl], a
    adc d
    ld l, c
    ld h, l
    add $7b
    ld h, [hl]
    ld a, e
    add hl, sp
    ld d, [hl]
    ld a, c
    sub h
    or [hl]
    ld a, b
    ld e, d
    adc c
    ld c, e
    ld l, c
    add a
    ld h, [hl]
    or [hl]
    sub [hl]
    and a
    add a
    ld a, d
    xor h
    inc l
    add hl, sp
    and l
    and l
    push bc
    sub [hl]
    ld l, d
    add a
    ld a, b
    or h
    ld a, c
    ld [hl], a
    sbc c
    ld h, [hl]
    jp nz, Jump_013_689a

    adc d
    ld a, [hl+]
    ld l, d
    sub l
    add [hl]
    and [hl]
    ld a, e
    ld [hl], a
    add [hl]
    ld a, d
    db $76
    sbc b
    add [hl]
    or h
    and [hl]
    sbc d
    ld e, b
    ld l, c
    ld a, b
    ld a, b
    adc b
    add h
    adc d
    ld h, a
    adc d
    ld c, c
    ld a, h
    ld b, a
    xor b
    ld h, [hl]
    add [hl]
    xor b
    ld [hl], l
    xor b
    dec sp
    ld e, l
    ld e, b
    ld c, l
    ld d, [hl]
    push bc
    ld l, b
    or h
    adc c
    ld a, c
    ld [hl], a
    ld e, e
    add h
    sub a
    sub a
    sub e
    or [hl]
    adc b
    adc d
    ld e, $57
    ld l, d
    add a
    or e
    adc b
    adc b
    ld e, c
    sub h
    ld l, d
    ld l, c
    add a
    ld h, a
    and a
    ld [hl], a
    sub a
    db $76
    ld a, d
    ld l, b
    sub l
    adc b
    add l
    or [hl]
    adc b
    ld [hl], a
    ld a, e
    ld d, a
    add [hl]
    xor b
    ld [hl], a
    add a
    sbc d
    ld d, l
    and a
    ld a, b
    sub a
    ld a, d
    ld h, h
    and a
    jp nz, $b9b7

    ld l, c
    ld l, d
    ld [hl], a
    ld h, a
    adc b
    ld a, c
    ld l, e
    ld d, [hl]
    and l
    ld a, e
    db $76
    ld a, e
    ld a, [hl-]
    and l
    add a
    ld d, d
    call nz, Call_013_5899
    adc b
    ld c, c
    adc b
    add a
    ld h, [hl]
    or [hl]
    ld l, c
    ld l, b
    adc c
    ld c, d
    ld e, d
    add a
    ld e, d
    add l
    sub a
    and l
    and a
    ld e, d
    sbc b
    ld e, c
    and l
    ld a, b
    sub [hl]
    ld a, d
    ld h, [hl]
    adc d
    ld e, c
    adc b
    ld e, d
    ld h, l
    and [hl]
    adc c
    sub d
    push de
    ld e, l
    ld d, a
    adc c
    ld e, b
    and [hl]
    adc b
    add l
    sbc b
    ld l, b
    ld a, e
    ld a, d
    ld a, [hl-]
    ld [hl], a
    add a
    or e
    call nc, $8688
    adc d
    ld a, [hl-]
    ld l, c
    ld l, b
    sub [hl]
    db $76
    and [hl]
    sub a
    cp b
    ld a, c
    db $76
    ld l, c
    adc d
    ld c, c
    ld h, a
    and a
    ld h, a
    sub [hl]
    ld e, e
    ld c, d
    adc b
    ld d, a
    or l
    db $76
    add [hl]
    add a
    ld a, c
    ld a, b
    sbc b
    dec sp
    db $76
    sbc c
    ld h, [hl]
    or l
    ld e, c
    ld a, e
    ld c, d
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add [hl]
    adc b
    db $76
    sbc b
    ld l, c
    adc b
    db $76
    or [hl]
    db $76
    jp nz, Jump_013_7799

    ld a, e
    ld a, [hl-]
    ld h, a
    ld a, d
    ld e, d
    add h
    sbc b
    ld [hl], a
    sub l
    ld a, c
    add l
    sub [hl]
    ld a, d
    add l
    adc b
    ld l, b
    or e
    xor c
    ld e, b
    sbc c
    ld a, c
    ld [hl], l
    sbc b
    add l
    and [hl]
    sub [hl]
    adc b
    ld a, b
    add [hl]
    ld l, b
    sub [hl]
    sub a
    add [hl]
    sub l
    add a
    ld [hl], a
    ld [hl], a
    and a
    ld d, [hl]
    or l
    ld a, b
    sub [hl]
    adc c
    ld e, d
    ld a, d
    ld c, c
    ld [hl], a
    ld a, b
    and [hl]
    ld [hl], l
    and a
    add a
    adc d
    ld c, e
    ld b, a
    or a
    ld l, c
    sub h
    and a
    ld l, b
    sbc d
    ld l, b
    ld c, d
    ld a, c
    ld a, b
    ld [hl], a
    sub l
    add [hl]
    sub a
    sub a
    add [hl]
    ld c, l
    ld d, a
    adc d
    ld h, l
    or h
    sbc b
    add l
    sbc d
    ld d, a
    ld a, e
    ld a, b
    ld c, d
    add [hl]
    sbc b
    db $76
    and a
    ld l, b
    sub a
    ld c, l
    ld d, [hl]
    and e
    or [hl]
    add a
    add [hl]
    ld l, d
    add [hl]
    adc c
    add [hl]
    ld d, a
    ld l, c
    add l
    sbc b
    ld c, d
    ld l, e
    ld h, [hl]
    ld a, e
    ld a, [hl-]
    ld a, b
    ld [hl], a
    sub [hl]
    sub l
    sub l
    xor b
    add a
    ld l, d
    ld a, b
    adc b
    ld e, c
    sub [hl]
    ld l, b
    add [hl]
    xor c
    ld e, b
    ld a, c
    dec a
    ld a, [hl-]
    and h
    sub [hl]
    or h
    or l
    sbc d
    ld a, b
    ld l, c
    ld l, c
    add [hl]
    ld a, c
    add a
    db $76
    sbc d
    ld l, b
    ld a, c
    ld a, d
    ld c, d
    ld a, b
    sub h
    sub a
    add [hl]
    ld l, d
    ld e, b
    sub a
    ld e, d
    ld [hl], l
    sub a
    ld a, b
    add [hl]
    ld l, d
    add l
    and h
    adc c
    ld l, b
    sub a
    ld a, b
    add h
    sbc c
    add l
    add $6b
    ld h, [hl]
    ld l, d
    sub [hl]
    ld h, a
    sub a
    ld [hl], a
    sub [hl]
    sbc c
    ld b, [hl]
    and a
    ld e, c
    sbc d
    ld d, l
    push de
    ld l, c
    sub [hl]
    ld l, d
    ld e, b
    sbc c
    ld e, b
    and l
    ld [hl], a
    and [hl]
    or c
    cp b
    ld e, c
    add [hl]
    ld e, b
    ld h, a
    adc c
    ld [hl], l
    push bc
    ld a, e
    ld b, a
    adc d
    ld c, h
    add hl, hl
    ld a, c
    ld h, a
    sub [hl]
    adc b
    ld h, [hl]
    xor b
    adc b
    sub [hl]
    ld a, b
    sbc b
    ld [hl], a
    sub l
    adc b
    adc b
    ld [hl], a
    ld l, d
    ld e, d
    ld e, c
    ld l, d
    add h
    and [hl]
    sbc b
    sub [hl]
    adc b
    ld l, b
    ld a, c
    ld l, c
    db $76
    sub [hl]
    sub h
    call nc, Call_013_4a89
    ld l, b
    ld l, d
    ld h, l
    and [hl]
    ld l, b
    and [hl]
    ld a, d
    ld d, a
    sbc b
    add a
    ld a, b
    sub [hl]
    ld a, b
    sub [hl]
    or h
    sbc b
    ld a, c
    ld e, c
    ld l, b
    add a
    sub h
    ld b, a
    ld [hl], l
    and a
    ld l, c
    ld a, b
    ld a, d
    ld b, a
    xor b
    ld c, h
    add hl, sp
    sub l
    and a
    add [hl]
    and [hl]
    ld e, e
    ld a, b
    ld l, l
    ld d, [hl]
    or l
    ld [hl], a
    adc b
    sub h
    adc d
    ld e, b
    ld a, d
    ld l, c
    ld h, l
    sbc c
    add h
    and l
    or [hl]
    ld e, h
    ld [hl], a
    adc c
    ld e, c
    ld l, b
    adc b
    add a
    add a
    ld h, a
    ld a, d
    ld a, b
    ld a, c
    ld l, b
    adc c
    ld c, e
    ld [hl], h
    sub a
    and [hl]
    push bc
    ld l, d
    ld h, a
    ld [hl], a
    or e
    and l
    adc b
    ld a, b
    ld a, b
    adc c
    ld h, [hl]
    adc b
    add [hl]
    and [hl]
    add l
    sub a
    ld a, b
    sub [hl]
    ld l, c
    ld a, b
    add a
    ld h, a
    or e
    sub a
    sub a
    adc b
    ld a, b
    ld c, d
    ld [hl], a
    add a
    db $76
    sbc b
    ld a, c
    db $76
    adc c
    ld h, a
    ld a, e
    ld c, d
    ld l, c
    adc b
    ld l, b
    or d
    xor b
    ld h, [hl]
    sbc b
    ld e, h
    ld b, a
    ld h, [hl]
    sub a
    ld a, d
    ld d, [hl]
    sub a
    adc b
    add l
    adc c
    ld c, c

Call_013_4a89:
    ld a, b
    ld a, b
    add h
    or a
    ld l, d
    ld l, b
    ld a, b
    ld e, c
    ld a, b
    adc b
    ld [hl], a
    add a
    ld l, b
    add a
    and [hl]
    ld a, c
    ld [hl], a
    and a
    ld e, b
    sub [hl]
    adc b
    add a
    adc b
    xor c
    add a
    ld l, c
    ld a, b
    add [hl]
    add a
    sub [hl]
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, c
    add [hl]
    add [hl]
    and [hl]
    add [hl]
    and l
    adc d
    ld e, b
    ld a, d
    ld c, c
    ld [hl], a
    sub a
    add a
    add [hl]
    adc b
    add [hl]
    add [hl]
    ld a, c
    ld l, b
    ld l, e
    ld d, [hl]
    ld [hl], l
    sub [hl]
    and l
    sub [hl]
    adc c
    ld l, b
    ld a, c
    ld a, c
    ld [hl], l
    adc c
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld l, c
    ld a, c
    ld l, b
    add a
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    add l
    and [hl]
    adc b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    and l
    sbc b
    ld a, b
    adc c
    ld e, d
    ld [hl], a
    adc b
    add [hl]
    and l
    ld a, b
    ld a, b
    ld l, d
    adc b
    ld l, d
    ld l, c
    add [hl]
    ld l, c
    sub h
    sub a
    sub a
    sbc b
    ld e, d
    ld e, d
    db $76
    adc b
    add [hl]
    sub a
    add a
    sub a
    adc b
    ld l, b
    add [hl]
    adc c
    ld e, d
    ld [hl], a
    ld l, d
    add l
    and a
    ld [hl], a
    add a
    ld l, d
    ld e, b
    add a
    ld [hl], a
    add a
    sub [hl]
    add a
    ld a, b
    adc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    ld l, d
    ld h, [hl]
    adc c
    ld e, b
    and l
    ld e, b
    add [hl]
    sub a
    ld l, c
    add a
    ld [hl], a
    add a
    sbc b
    ld h, a
    db $76
    sub a
    db $76
    sub a
    ld a, b
    ld e, c
    ld a, c
    ld a, c
    ld l, c
    sub l
    and [hl]
    sub [hl]
    add a
    ld l, c
    ld a, b
    ld l, c
    ld [hl], a
    sub [hl]
    ld [hl], a
    sub a
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld a, b
    db $76
    adc b
    sub a
    add [hl]
    sub a
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    add [hl]
    adc b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    sub [hl]
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld e, c
    ld [hl], a
    ld [hl], a
    add [hl]
    sub a
    add [hl]
    add a
    sub [hl]
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, c
    ld e, c
    ld h, a
    adc c
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    ld a, c
    ld l, b
    ld l, c
    add a
    ld [hl], a
    add [hl]
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    adc c
    ld h, a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld l, b
    ld a, c
    ld l, b
    add a
    add a
    add [hl]
    sub a
    add [hl]
    add a
    adc b
    adc b
    ld a, c
    ld a, b
    db $76
    sub [hl]
    add a
    add a
    adc b
    ld h, a
    sbc b
    ld l, b
    ld a, b
    ld h, a
    sub [hl]
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    sub a
    ld a, b
    add a
    add a
    adc b
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    adc b
    db $76
    add a
    add a
    sub a
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sbc b
    ld a, b
    adc b
    ld l, c
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    sub [hl]
    sub [hl]
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    sub [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    sub [hl]
    adc b
    ld a, b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    db $76
    adc b
    ld a, b
    db $76
    adc b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld l, c
    ld l, b
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
    ld a, c
    ld [hl], a
    adc b
    add a
    adc b
    ld l, c
    ld [hl], a
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
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    sub [hl]
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    add [hl]
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    ld a, c
    ld a, b
    ld l, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    adc c
    ld l, b
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
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
    add a
    add a
    sub [hl]
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    or a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add a
    sbc c
    cp h
    cp l
    sbc $fe
    rst $28
    rst $28
    xor $ee
    call c, Call_013_5abb
    adc c
    add [hl]
    ld h, h
    ld b, h
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $2312
    dec [hl]
    ld [hl], l
    ld [hl], a
    adc c
    sbc d
    cp e
    call $dddd
    xor $ed
    sbc $cd
    call c, $9abb
    adc b
    and [hl]
    ld h, l
    ld b, h
    inc hl
    ld [hl+], a
    ld de, $0111
    ld bc, $1212
    inc sp
    ld b, h
    ld d, [hl]
    ld h, a
    ld a, b
    ld e, c
    xor e
    set 3, l
    sbc $ee
    xor $de
    db $ed
    call c, $cacb
    sbc c
    sbc b
    ld h, [hl]
    ld h, h
    or e
    inc sp
    ld [hl-], a
    ld [de], a
    ld hl, $1212
    ld hl, $4323
    ld b, l
    ld d, l
    ld [hl], a
    adc b
    sbc d
    xor d
    dec l
    call z, $dede
    db $dd
    sbc $dc
    call z, $aacb
    sbc c
    add a
    db $76
    ld h, l
    ld b, l
    ld b, e
    jp Jump_000_2232


    ld [hl-], a
    ld [hl+], a
    inc sp
    inc [hl]
    ld b, l
    ld d, [hl]
    ld d, a
    ld a, b
    adc d
    sbc d
    cp d
    set 1, h
    dec a
    call $ddcc
    call z, $babb
    xor b
    sbc b
    db $76
    ld h, l
    ld d, l
    ld b, h
    inc [hl]
    inc hl
    ld [hl+], a
    jp nz, Jump_000_3223

    inc sp
    ld b, h
    ld b, l
    ld h, [hl]
    ld [hl], a
    adc c
    adc c
    xor e
    xor e
    call z, $dccc
    call $cc4c
    call z, $abbb
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld b, l
    inc [hl]
    inc sp
    inc hl
    inc hl
    inc hl
    jp Jump_013_4444


    ld h, l
    ld h, [hl]
    ld l, b
    ld a, b
    sbc c
    sbc e
    cp d
    cp e
    cp h
    set 3, h
    cp h
    bit 3, d
    cp d
    xor c
    sbc b
    sub a
    ld a, b
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    ld d, e
    ld b, e
    ld b, h
    dec [hl]
    ld b, h
    and [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc d
    sbc d
    cp d
    cp e
    cp e
    call z, $bbbc
    xor e
    cp e
    xor c
    ld l, c
    adc b
    add a
    db $76
    db $76
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, l
    dec [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    add a
    ld a, b
    adc b
    xor c
    sbc d
    xor e
    cp h
    xor h
    cp e
    cp e
    jp z, $aaca

    xor d
    sbc c
    adc c
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    adc b
    ld l, b
    adc c
    xor c
    xor d
    xor d
    cp e
    cp d
    cp d
    cp e
    xor e
    xor d
    sbc c
    xor c
    add a
    adc b
    ld [hl], a
    sub [hl]
    ld h, l
    ld d, l
    ld h, h
    ld b, l
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, a
    ld h, a
    ld h, a
    add a
    sbc b
    adc d
    ld c, c
    xor d
    xor e
    xor d
    xor d
    cp d
    xor d
    xor c
    xor c
    sbc d
    adc c
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld d, [hl]
    sub [hl]
    ld d, h
    ld d, l
    ld b, h
    ld d, h
    ld d, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    sbc b
    sbc d
    sbc d
    ld e, e
    xor d
    cp d
    cp e
    xor d
    xor c
    xor c
    xor c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], l
    db $76
    ld d, l
    ld h, l
    and h
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    adc c
    sbc c
    sbc c
    xor d
    sbc d
    ld e, d
    xor d
    sbc c
    xor c
    xor b
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    sub l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    add [hl]
    ld [hl], a
    add a
    adc b
    adc c
    adc c
    sbc d
    sbc d
    sbc c
    xor d
    sbc d
    ld l, d
    sbc d
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    and [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    sbc d
    sbc d
    xor d
    sbc c
    sbc d
    sbc c
    ld l, c
    sbc c
    sbc b
    sub a
    adc b
    ld a, b
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, a
    sub [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
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
    sbc c
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc c
    adc c
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc b
    adc b
    adc b
    add a
    ld l, b
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc b
    sbc c
    sbc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld l, b
    adc b
    adc b
    sbc b
    sbc c
    adc b
    adc c
    sbc c
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    adc b
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, [hl]
    add [hl]
    db $76
    ld a, b
    ld [hl], a
    adc b
    sbc b
    adc b
    sbc b
    ld a, b
    sbc b
    sbc b
    adc c
    adc c
    adc c
    adc c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld h, a
    ld h, a
    add [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    sub a
    adc c
    adc b
    ld a, b
    sbc c
    adc c
    sbc b
    sbc b
    adc b
    adc c
    adc c
    ld a, c
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    adc b
    adc b
    ld a, c
    adc b
    adc b
    ld a, b
    sbc c
    ld a, c
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    sub [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    sbc b
    sbc b
    sbc b
    ld a, b
    adc c
    sbc b
    adc b
    adc c
    ld a, c
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    add a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    sbc b
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
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    adc b
    adc b
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    push de
    ld [hl+], a
    ld [hl+], a
    inc sp
    dec [hl]
    ld d, [hl]
    ld a, c
    adc e
    cp e
    adc $de
    rst $28
    rst $18
    rst $28
    xor $ef
    ld c, $ee
    sbc $dc
    call z, $a8bb
    sub a
    ld h, [hl]
    ld d, h
    ld [hl-], a
    ld [hl+], a
    ld bc, $0000
    nop
    ldh [rP1], a
    ld bc, $0100
    ld bc, $1312
    inc [hl]
    dec [hl]
    ld d, [hl]
    ld a, b
    adc c
    xor e
    call z, Call_013_5edd
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ee
    xor $ee
    db $ed
    db $dd
    res 7, e
    xor c
    sbc b
    ld h, a
    ld d, h
    ld b, e
    ld [hl+], a
    ld hl, $0101
    nop
    nop
    ld bc, $1100
    ld [bc], a
    ld [de], a
    ld [hl+], a
    inc sp
    ld b, h
    push de
    ld h, [hl]
    adc b
    adc d
    xor e
    cp h
    db $dd
    xor $ee
    rst $28
    xor $ff
    cp $ef
    xor $de
    dec c
    call $aacb
    xor c
    adc b
    db $76
    ld d, l
    inc [hl]
    ld [hl-], a
    ld hl, $1121
    ld bc, $1010
    pop hl
    ld de, $1222
    inc hl
    inc [hl]
    ld b, h
    ld d, l
    ld [hl], a
    ld a, b
    sbc d
    xor d
    set 3, l
    sbc $ee
    ld c, [hl]
    rst $28
    xor $ef
    xor $ee
    db $dd
    call c, $cadb

jr_013_509a:
    cp e
    sbc c
    add a
    db $76
    ld h, l
    ld b, h
    ld [hl], d
    ld [hl-], a
    ld [hl+], a
    ld de, $1101
    db $10
    ld hl, $1212
    ld [hl+], a
    inc sp
    inc sp
    ld b, h
    ld d, l
    ld h, a
    ret z

    xor c
    xor e
    xor h
    call c, $eecd
    sbc $ee
    xor $ee
    db $ed
    db $ed
    db $dd
    db $dd
    sra d
    cp d
    sbc c
    add a
    add [hl]
    ld d, l
    ld d, h
    inc sp
    ld [hl-], a
    ld sp, $2121
    ld hl, $2111
    ld [hl+], a
    ld [c], a
    inc hl
    inc h
    inc [hl]
    ld b, l
    ld d, l
    ld [hl], a
    ld a, b
    adc c
    xor e
    xor e
    call z, $ddcd
    sbc $ed
    dec a
    xor $dd
    db $dd
    call c, $ccdc
    cp d
    xor c
    xor b
    sub a
    ld [hl], a
    ld h, l
    ld d, h
    ld d, e
    inc sp
    sub d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $3221
    ld [hl+], a
    inc hl
    ld b, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, c
    sbc c
    xor d
    xor e
    cp h
    call z, $cedd
    db $dd
    db $ed
    call $dddd
    db $db
    call c, $babb
    xor c
    jr c, jr_013_509a

    ld [hl], a
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, e
    inc sp
    ld [hl+], a
    ld [hl-], a
    ld hl, $3232
    ld [hl+], a
    inc sp
    inc sp
    db $d3
    ld b, l
    ld d, l
    ld d, a
    ld h, a
    ld a, b
    adc b
    xor d
    sbc d
    cp e
    cp e
    call c, $ddcd
    call c, Call_000_2cdd
    call $dbcb
    cp e
    cp d
    xor d
    sbc c
    sbc b
    ld a, b
    ld h, [hl]
    ld h, l
    ld b, l
    ld b, h
    inc [hl]
    inc sp
    and e
    inc sp
    inc hl
    inc hl
    ld [hl-], a
    ld b, e
    inc [hl]
    inc [hl]
    ld b, l
    ld b, l
    ld d, [hl]
    ld h, a
    ld a, b
    ld a, b
    sbc d
    sbc e
    ld a, d
    cp h
    cp h
    call c, $cdcc
    call $cdcc
    cp h
    cp e
    cp e
    cp c
    xor c
    xor b
    adc b
    ld d, a
    db $76
    ld h, [hl]
    ld h, l
    ld b, l
    dec [hl]
    inc sp
    ld b, e
    ld [hl-], a
    inc sp
    inc sp
    ld [hl-], a
    inc [hl]
    inc sp
    ld b, l
    dec [hl]
    push bc
    ld h, l
    db $76
    ld [hl], a
    adc b
    sbc b
    sbc c
    cp c
    cp e
    set 1, h
    cp l
    cp h
    call z, $cccc
    ld c, e
    cp h
    cp e
    xor d
    xor d
    xor c
    sbc b
    adc b
    db $76
    db $76
    ld h, l
    ld d, l
    dec [hl]
    inc [hl]
    ld b, e
    ld b, e
    and d
    ld b, e
    ld b, h
    inc [hl]
    dec [hl]
    ld b, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc d
    sbc c
    xor d
    ld a, e
    cp e
    set 1, h
    cp h
    cp h
    res 7, e
    jp z, $aacb

    sbc d
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, l
    inc sp
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    and [hl]
    ld l, b
    ld [hl], a
    sbc b
    adc c
    sbc c
    xor c
    xor e
    xor e
    cp e
    cp e
    cp h
    cp e
    res 7, e
    cp e
    ld c, d
    cp d
    xor c
    xor c
    sbc b
    sbc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    ld b, l
    inc [hl]
    and e
    ld b, h
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld h, l
    ld h, a
    ld h, a
    ld [hl], a
    add a
    adc b
    adc c
    sbc c
    xor c
    xor e
    ld l, d
    cp d
    cp e
    xor e
    cp d
    cp e
    cp d
    cp d
    cp d
    xor d
    xor c
    sbc c
    adc c
    add a
    adc b
    db $76
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld b, l
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    or [hl]
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    xor d
    cp d
    xor d
    cp d
    cp e
    xor e
    cp d
    cp d
    cp c
    ld c, d
    sbc d
    sbc c
    adc c
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld b, h
    and l
    ld b, l
    ld h, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    adc b
    sbc c
    sbc d
    sbc d
    sbc d
    ld a, d
    xor e
    xor d
    xor e
    cp d
    xor d
    xor e
    sbc e
    sbc d
    sbc d
    sbc c
    adc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, h
    ld h, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    and a
    ld a, b
    ld a, b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc d
    sbc d
    cp d
    xor d
    xor c
    xor e
    sbc d
    xor d
    sbc d
    ld e, c
    xor b
    sbc c
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, l
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    sub h
    ld h, l
    ld d, l
    ld h, l
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc c
    sbc d
    sbc d
    ld l, c
    xor d
    xor d
    xor d
    xor d
    xor c
    xor c
    sbc d
    xor c
    sbc c
    sbc b
    adc b
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    and a
    add a
    ld a, b
    adc b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    xor d
    sbc d
    xor d
    sbc c
    xor c
    sbc c
    ld l, b
    xor b
    sbc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld h, a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    sub l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc c
    adc d
    ld a, c
    xor c
    sbc c
    xor c
    xor c
    sbc c
    xor c
    sbc d
    sbc b
    sbc c
    sbc b
    adc c
    add a
    add a
    add a
    add [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, a
    ld h, a
    ld h, a
    sub a
    add [hl]
    add a
    adc b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    adc c
    xor c
    xor c
    sbc c
    xor c
    adc c
    ld l, b
    sbc c
    adc c
    adc b
    ld a, c
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    adc b
    adc b
    sbc b
    adc c
    xor c
    sbc c
    sbc c
    sbc c
    xor b
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    adc c
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    sub a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    sbc d
    adc c
    ld l, c
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], l
    add a
    ld h, [hl]
    ld h, a
    ld h, a
    ld d, a
    ld d, a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    adc c
    sbc b
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    sub a
    db $76
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    adc c
    sbc b
    ld a, c
    sbc b
    adc c
    sbc c
    sbc c
    adc b
    sbc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    db $76
    add a
    db $76
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld a, b
    sbc b
    sbc b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc b
    adc b
    adc c
    ld a, c
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld l, b
    add [hl]
    add a
    db $76
    add [hl]
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    adc c
    sbc b
    sbc b
    adc b
    adc c
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    ld a, b
    ld a, c
    adc b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    sbc c
    adc b
    adc c
    adc b
    ld l, b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    db $76
    add a
    db $76
    add a
    ld [hl], a
    ld h, a
    add a
    ld h, a
    ld l, b
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    add a
    sub a
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc c
    adc b
    ld a, c
    adc b
    sbc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    db $76
    add a
    ld h, a
    ld a, b
    db $76
    add a
    ld [hl], a
    adc b
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    adc c
    adc b
    adc b
    sbc b
    add a
    ld l, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    sbc b
    ld a, c
    adc c
    adc b
    adc c
    adc b
    ld a, b
    add a
    sub a
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld l, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    ld a, b
    adc c
    adc b
    ld a, b
    adc b
    adc b
    add a
    sub a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    and a
    xor $0a
    ld h, [hl]
    ld c, c
    ld e, b
    ld c, e
    ld b, h
    sbc e
    jr z, jr_013_5584

    ld d, [hl]
    ld d, l
    or l
    sub l
    adc a
    ld sp, hl
    ld a, [hl-]
    sub [hl]
    sbc c
    ld e, $d7
    ld l, [hl]
    ld b, $d9
    ld c, d
    and e
    and h
    ld b, e
    ldh a, [$b0]
    ret nz

    adc l
    rrca
    ld e, c
    jr z, jr_013_557d

    sub a
    sub h
    adc b
    add h
    or $5a
    ld h, [hl]
    ld e, e
    ld c, b
    push bc
    and h
    ld a, [de]
    ret nc

    push af
    ld c, c
    ld a, b
    ld a, $56
    call nz, $d5b4
    adc [hl]
    inc c
    sub l
    ld a, h
    ld [hl], a
    adc d
    ld l, a
    add d
    rst $00
    and e
    xor b
    ld c, l
    ld a, c
    add a
    adc b
    add a
    and a
    add a
    adc c
    ld c, b
    ld [hl], a
    ld a, c
    ld a, b
    ld h, a
    sub d
    or a
    ld e, b
    sub a
    dec a
    ld c, b
    adc c
    add l
    or h
    and h
    xor b
    ld h, a
    ld a, e
    ld e, e
    adc b
    ld e, d
    add l
    ld a, c
    sub h
    cp b
    ld e, h
    ld a, c
    ld a, d
    ld a, $58
    sbc b
    sub l

jr_013_557d:
    or h
    sbc c
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld l, c

jr_013_5584:
    add [hl]
    ld l, b
    add [hl]
    or [hl]
    add a
    sub a
    ld c, e
    ld h, a
    add [hl]
    ld a, d
    ld h, [hl]
    or [hl]
    ld [hl], a
    add h
    or a
    ld c, d
    ld h, a
    adc c
    ld h, [hl]
    call nz, $a6c5
    cp c
    ld e, d
    ld a, d
    ld l, b
    add [hl]
    rst $00
    adc b
    sbc b
    ld e, e
    ld l, b
    ld c, d
    ld h, [hl]
    ld l, d
    db $76
    sub l
    add [hl]
    add h
    adc c
    ld l, b
    add [hl]
    ld e, e
    dec hl
    add h
    xor b
    ld h, [hl]
    sub a
    ld e, d
    db $76
    adc c
    ld l, b
    add [hl]
    sbc b
    add [hl]
    or a
    add [hl]
    and l
    sbc d
    add hl, sp
    ld c, d
    ld l, c
    add l
    and [hl]
    add [hl]
    sbc b
    ld a, c
    ld l, d
    ld l, c
    ld [hl], a
    ld a, b
    add h
    adc b
    ld a, b
    ld [hl], l
    sbc b
    ld l, e
    ld d, l
    sub [hl]
    ld l, c
    add [hl]
    sub [hl]
    add l
    sbc b
    ld e, c
    and [hl]
    adc b
    ld e, e
    ld [hl], a
    add [hl]
    sub [hl]
    and l
    adc e
    add [hl]
    add a
    ld c, l
    ld e, b
    and l
    or e
    push de
    sbc b
    ld a, c
    ld e, c
    ld l, b
    add l
    sub a
    sub a
    sub [hl]
    sub l
    adc c
    ld c, b
    ld a, b
    ld e, d
    ld d, a
    sbc b
    ld h, [hl]
    sub [hl]
    and [hl]
    sub l
    and [hl]
    ld l, e
    add hl, sp
    db $76
    ld l, c
    add h
    sbc b
    ld l, c
    add a
    ld e, e
    ld l, c
    ld l, b
    ld l, d
    sub [hl]
    and a
    sub [hl]
    and l
    ld a, e
    ld a, b
    ld a, b
    add a
    ld a, b
    ld d, a
    sub l
    adc b
    add a
    ld l, b
    ld a, b
    ld h, a
    ld e, d
    add [hl]
    ld a, b
    ld [hl], a
    ld h, a
    and a
    ld c, d
    db $76
    xor b
    ld a, b
    add a
    ld a, c
    add [hl]
    add [hl]
    and a
    adc b
    ld a, d
    ld l, b
    adc b
    ld l, b
    sub l
    or a
    add a
    sub l
    ld h, [hl]
    ld l, c
    ld a, c
    ld [hl], a
    sub [hl]
    or [hl]
    sub a
    add [hl]
    adc b
    ld l, b
    ld a, b
    add a
    add a
    sub l
    and l
    ld l, d
    add h
    and a
    ld e, c
    ld l, b
    ld l, c
    add l
    adc c
    ld a, b
    db $76
    or a
    ld l, b
    ld l, b
    ld a, d
    ld c, b
    sbc c
    ld l, c
    sub h
    push bc
    sbc c
    ld e, d
    ld a, d
    ld l, c
    adc b
    add a
    add [hl]
    sub a
    ld l, b
    ld a, b
    ld l, c
    inc l
    ld c, c
    add h
    and l
    ld a, b
    sub a
    add a
    ld [hl], l
    and [hl]
    adc c
    ld l, c
    ld l, c
    ld l, b
    sub l
    adc b
    ld c, c
    add a
    ld a, b
    add [hl]
    ld h, a
    ld l, b
    sbc b
    ld [hl], a
    add [hl]
    and a
    adc d
    ld l, d
    ld a, c
    ld l, c
    add [hl]
    sbc b
    add a
    add a
    add [hl]
    ld l, c
    add [hl]
    sub a
    adc b
    add [hl]
    sub a
    add h
    or [hl]
    add a
    add a
    ld [hl], a
    ld a, c
    ld h, [hl]
    add [hl]
    ld a, b
    ld [hl], l
    and [hl]
    and a
    sbc b
    ld e, d
    ld e, c
    add [hl]
    ld a, c
    add [hl]
    sbc c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld l, h
    dec sp
    ld h, [hl]
    and [hl]
    add a
    ld a, b
    adc c
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    add a
    sbc b
    ld c, b
    add [hl]
    ld e, b
    add [hl]
    adc b
    ld h, a
    add [hl]
    db $76
    and [hl]
    adc b
    ld l, e
    ld l, b
    add [hl]
    add a
    sub a
    ld a, b
    sub [hl]
    xor b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    sub l
    or [hl]
    sbc b
    adc b
    ld a, c
    ld h, [hl]
    adc b
    ld [hl], a
    and e
    and [hl]
    ld a, c
    ld e, d
    ld e, b
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    sub [hl]
    and [hl]
    sub l
    adc b
    ld l, b
    add [hl]
    ld [hl], a
    ld a, c
    ld l, d
    ld a, b
    add a
    adc b
    add a
    adc c
    ld e, d
    ld l, b
    and [hl]
    sbc b
    ld [hl], a
    add a
    add a
    sub a
    ld a, c
    ld e, d
    ld h, a
    and l
    ld l, d
    add a
    sbc b
    ld a, b
    adc b
    ld e, d
    ld l, c
    ld a, b
    add [hl]
    sub a
    db $76
    ld a, c
    ld h, a
    adc b
    ld e, c
    ld [hl], a
    sbc b
    sub h
    xor b
    ld a, c
    add l
    adc b
    ld a, b
    sbc b
    adc c
    ld e, b
    and a
    add a
    or h
    sub a
    ld e, b
    ld a, d
    ld d, a
    sub [hl]
    ld l, b
    sub a
    ld a, b
    ld [hl], a
    adc b
    adc c
    ld l, b
    ld a, c
    ld [hl], a
    add l
    add a
    ld h, a
    ld l, b
    add a
    add a
    adc b
    ld l, b
    ld l, b
    add a
    add a
    sub a
    adc b
    ld e, b
    adc b
    ld a, c
    add [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc d
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld l, b
    add a
    ld [hl], a
    sub a
    ld e, c
    add [hl]
    sbc b
    db $76
    sbc c
    ld e, d
    ld l, b
    adc c
    ld l, b
    ld h, a
    add [hl]
    add a
    add l
    and a
    adc b
    adc b
    ld e, c
    ld [hl], a
    ld l, d
    add a
    add [hl]
    xor b
    adc b
    sub [hl]
    ld a, d
    ld e, b
    ld a, c
    add a
    sub h
    or [hl]
    sbc b
    ld e, c
    ld l, b
    ld a, c
    add a
    add a
    ld [hl], l
    sub [hl]
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    db $76
    and l
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    sbc b
    adc c
    ld [hl], a
    adc b
    add a
    sub [hl]
    adc c
    ld a, c
    ld l, d
    ld l, b
    add [hl]
    add a
    sub [hl]
    and l
    sbc c
    ld a, b
    adc c
    ld a, b
    ld d, a
    sbc b
    sub a
    add a
    adc b
    ld e, b
    ld l, b
    add [hl]
    add a
    ld l, d
    ld h, a
    adc b
    add [hl]
    sub [hl]
    ld a, c
    adc b
    ld a, c
    ld a, b
    sub l
    ld a, c
    ld a, b
    sub a
    add a
    sub l
    sub a
    ld l, b
    ld a, b
    ld e, d
    ld a, b
    sub a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    adc b
    add [hl]
    adc c
    ld a, c
    db $76
    ld a, b
    add [hl]
    sub a
    adc b
    add a
    ld a, b
    ld l, d
    ld e, c
    ld [hl], a
    ld a, b
    sbc b
    add a
    add [hl]
    adc b
    ld h, a
    adc b
    ld a, c
    ld a, c
    adc b
    ld a, b
    add l
    and [hl]
    ld [hl], a
    sbc b
    ld a, c
    ld e, c
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add l
    add a
    ld [hl], a
    db $76
    add a
    add a
    ld a, b
    ld l, c
    ld l, b
    ld a, c
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    sub [hl]
    adc b
    adc b
    add a
    adc c
    ld a, b
    adc b
    add [hl]
    sub a
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    ld l, b
    db $76
    sub a
    db $76
    ld [hl], a
    add [hl]
    adc c
    ld h, a
    sub a
    ld e, b
    add a
    add a
    ld [hl], a
    sub [hl]
    adc b
    ld l, c
    adc b
    ld a, c
    adc b
    ld a, b
    ld e, b
    sub a
    ld a, b
    sub [hl]
    and a
    sbc b
    adc b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld h, a
    adc b
    db $76
    add [hl]
    add a
    add [hl]
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld l, b
    ld l, c
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    db $76
    add l
    adc b
    ld a, b
    adc c
    ld l, d
    ld [hl], a
    and a
    and a
    adc b
    ld a, c
    ld l, b
    add a
    sub a
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld h, a
    add [hl]
    ld l, b
    ld a, b
    sub [hl]
    add a
    add a
    xor c
    ld l, c
    ld h, a
    ld a, b
    db $76
    sub [hl]
    add a
    ld [hl], a
    sbc b
    ld h, a
    sub a
    adc c
    add [hl]
    xor b
    sub [hl]
    add [hl]
    ld a, b
    ld a, b
    adc c
    ld a, c
    ld l, b
    adc b
    adc b
    add a
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    add a
    ld [hl], a
    add a
    add a
    add a
    ld d, a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    ld l, b
    db $76
    sbc b
    ld [hl], a
    sbc b
    sbc b
    ld [hl], a
    adc b
    ld a, b
    sub a
    adc b
    ld a, c
    adc b
    sub [hl]
    sbc b
    ld l, b
    ld a, c
    ld a, b
    add a
    sbc b
    ld h, a
    ld [hl], a
    add a
    ld e, b
    add a
    add a
    ld h, [hl]
    add a
    ld l, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    and [hl]
    sbc b

Call_013_5899:
    ld a, c
    adc b
    adc b
    sbc b
    add [hl]
    sbc c
    adc b
    add a
    ld l, c
    db $76
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld h, a
    adc c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    sub a
    add [hl]
    ld a, c
    db $76
    add l
    ld a, b
    add [hl]
    adc c
    ld a, b
    sub a
    ld a, c
    adc c
    ld h, a
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    add [hl]
    ld l, b
    adc c
    ld l, b
    ld a, b
    add a
    ld l, b
    ld a, b
    sub [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld a, c
    ld h, [hl]
    add a
    ld a, d
    ld a, b
    ld a, c
    add [hl]
    sub a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc c
    ld a, b
    sub a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld a, c
    adc b
    ld l, b
    add a
    ld a, b
    add l
    add a
    db $76
    adc b
    ld l, c
    ld h, a
    ld a, b
    db $76
    ld a, c
    ld [hl], a
    ld l, b
    adc b
    ld l, b
    ld l, b
    adc b
    ld a, b
    sbc b
    adc b
    add a
    add a
    adc c
    adc c
    adc c
    ld l, c
    ld a, c
    ld [hl], a
    add a
    add a
    ld l, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    ld l, b
    sub [hl]
    add a
    ld h, [hl]
    sub a
    ld a, c
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    sub [hl]
    ld [hl], a
    add a
    sbc b
    adc b
    add a
    ld a, c
    ld a, c
    adc b
    adc b
    adc b
    sbc b
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    add l
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add l
    ld [hl], a
    ld h, a
    add [hl]
    ld a, b
    add [hl]
    sbc b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    ld a, c
    adc b
    adc b
    adc b
    ld a, b
    ld a, c
    ld a, c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    sub a
    adc b
    ld l, b
    add a
    ld a, b
    add a
    add a
    ld l, b
    ld [hl], a
    add a
    ld l, b
    ld h, a
    ld a, b
    add a
    add [hl]
    adc b
    ld [hl], a
    add a
    adc b
    ld h, a
    sub a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    db $76
    sub a
    ld a, b
    ld a, c
    add a
    adc b
    add a
    sub a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add [hl]
    add a
    db $76
    ld a, b
    db $76
    ld l, c
    ld l, b
    db $76
    ld a, b
    add a
    add a
    add a
    db $76
    sub a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    sub [hl]
    sbc b
    db $76
    adc b
    ld l, b
    adc b
    sub a
    adc c
    adc b
    sub [hl]
    db $76
    sub a
    ld [hl], a
    sub a
    ld a, b
    ld l, b
    add a
    add [hl]
    add a
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    adc b
    ld l, b
    ld h, [hl]
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b

Call_013_59b6:
    adc b
    ld l, b
    adc b
    ld a, b
    adc c
    ld a, c
    ld [hl], a
    ld a, b
    add a
    adc b
    sub a
    add [hl]
    adc b
    adc b
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    sub a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    sbc b
    ld h, a
    sub a
    ld a, b
    ld a, c
    adc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, d
    ld [hl], a
    ld l, b
    ld l, c
    ld [hl], a
    ld a, b
    sbc b
    add a
    sbc b
    adc b
    add a
    ld a, b
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld h, a
    add [hl]
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    ld a, c
    ld h, a
    ld a, b
    adc b
    add [hl]
    ld a, b
    add [hl]
    adc c
    adc b
    sub a
    adc b
    sub a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    add [hl]
    add a
    add a
    ld a, c
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    db $76
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    ld h, [hl]
    add a
    ld a, b
    add a
    adc b
    ld h, [hl]
    adc b
    ld h, a
    adc b
    sub a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    sbc b
    ld a, b
    ld a, b
    ld a, b
    sub [hl]
    sub a
    adc b
    adc b
    add a
    adc b
    ld h, a
    add [hl]
    add a
    adc b
    ld a, b
    ld h, a
    ld a, b
    ld h, [hl]
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld l, c
    ld h, a
    add a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    adc c
    add a
    adc b
    ld l, b
    ld a, b
    sbc b
    adc b
    adc b
    add a
    ld l, c
    adc b
    ld l, c
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld l, b
    add a
    ld [hl], a
    add [hl]
    sub a
    ld [hl], a
    add [hl]
    adc b
    ld l, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, c
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], l
    ld [hl], a
    add [hl]
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    db $76
    ld a, c
    ld [hl], a
    adc b
    sub a
    add [hl]
    adc c
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    sub a
    add a
    adc b
    adc b
    ld l, b
    ld a, c
    ld h, a
    ld [hl], a
    ld l, b
    add a
    adc b
    add a
    ld [hl], a
    ld l, c
    add a
    adc b
    add [hl]
    add a
    ld a, b
    ld h, [hl]
    adc b
    ld [hl], a

Call_013_5abb:
    add a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc c
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    add [hl]
    add a
    add a
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    sub [hl]
    db $76
    sub a
    ld a, c
    ld a, b
    add a
    ld a, c
    adc b
    ld a, b
    ld a, b
    sub a
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    db $76
    sub [hl]
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld l, b
    adc b
    add a
    ld [hl], a
    sub a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld l, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    sub a
    sub [hl]
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    db $76
    adc c
    ld [hl], a
    sub a
    db $76
    sub a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    sub a
    add [hl]
    adc c
    ld [hl], a
    ld a, c
    ld e, c
    adc b
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    adc b
    ld h, a
    sbc b
    ld h, a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld l, c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    db $76
    add [hl]
    add a
    sub [hl]
    ld a, c
    ld l, b
    adc b
    ld a, b
    adc b
    sub a
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    sub [hl]
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld h, a
    sub a
    add [hl]
    add a
    sub a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc c
    adc b
    adc b
    adc b
    add [hl]
    add a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc c
    add a
    ld a, b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    adc c
    ld a, b
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld l, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    db $76
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    add [hl]
    sbc b
    ld a, c
    ld [hl], a
    adc b
    db $76
    adc c
    adc b
    ld a, b
    adc b
    adc b
    ld h, a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    sub a
    ld [hl], a
    sub a
    ld a, c
    ld l, b
    add a
    adc b
    adc b
    add a
    adc b
    sub a
    add a
    ld a, c
    ld h, a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld a, b
    adc c
    ld [hl], a
    add a
    db $76
    ld [hl], a
    add [hl]
    ld a, c
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    sub a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    db $76
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    ld a, b
    ld h, a
    ld a, b
    ld l, b
    add a
    ld a, c
    ld [hl], a
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    ld l, b
    adc b
    ld a, b
    add a
    ld a, c
    add a
    ld a, b
    add a
    adc b
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    ld [hl], a
    add a
    add [hl]
    add a
    db $76
    adc b
    add a
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    add a
    add a
    adc c
    ld a, b
    adc b
    ld a, c
    add [hl]
    add a
    sbc b
    add a
    adc c
    ld a, b
    adc b
    add a
    db $76
    ld l, b
    ld [hl], a
    add a
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld h, a
    sub [hl]
    ld a, c
    add a
    adc b
    ld l, b
    adc b
    sub [hl]
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    db $76
    ld [hl], a
    add a
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    add a
    adc b
    add a
    add a
    ld a, b
    db $76
    add a
    ld l, c
    db $76
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    sub a
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld h, a
    add a
    add a
    add [hl]
    adc c
    ld l, b
    ld a, c
    add a
    add [hl]
    sub a
    add a
    adc c
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld h, a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    sub a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add [hl]
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, c
    adc b
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add [hl]
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    adc b
    add a
    sbc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, c
    add [hl]
    adc b
    ld a, c
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    add a
    sub [hl]
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    adc c
    ld l, b
    add a
    ld a, b
    add a
    add a
    ld a, c
    db $76
    and a
    add a
    adc b
    adc b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    add a
    adc b
    ld h, a
    adc b
    ld a, b
    adc b
    ld h, a
    sub a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld a, b
    add a
    sub a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    add [hl]
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc b
    sbc b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    add [hl]
    adc b
    add [hl]
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    db $76
    add a
    db $76
    add a
    adc b
    adc c
    ld a, b
    ld a, b
    add a
    sub a
    ld a, b
    adc b
    add a
    ld l, b
    add a
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
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    add [hl]
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    add a
    add [hl]
    adc b
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    adc b
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld l, b
    adc b
    add a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    ld l, b
    adc b
    adc c
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    add a
    ld a, b
    add a
    sub [hl]
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, c
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a

Call_013_5edd:
    add l
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    sub [hl]
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    add [hl]
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    db $76
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    add a
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
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld l, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc c
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    db $76
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, c
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    sub a
    add a
    adc b
    adc b
    ld l, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld l, b
    adc b
    ld a, b
    add a
    adc b
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
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    adc c
    ld h, a
    add a
    adc b
    add a
    add a
    adc b
    add a
    adc b
    adc c
    ld a, b
    ld a, c
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
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
    ld a, b
    ld a, b
    ld l, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc c
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    sbc b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    db $76
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    add [hl]
    ld a, b
    add a
    adc c
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    sub a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sbc b
    ld a, b
    add a
    add a
    add a
    sub a
    adc b
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    add a
    add [hl]
    sbc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    sbc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    sbc b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
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
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
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
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    add a
    add a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
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
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld h, a
    adc b
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
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld [hl], a
    adc b
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
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
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
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add [hl]
    add a
    adc b
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
    add a
    ld h, a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
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
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    add $8d
    and d
    ld a, [de]
    ld sp, hl
    ld [de], a
    rst $08
    ld h, b
    ld e, [hl]
    db $d3
    ld [$03fa], sp
    cp a
    ld h, b
    ld e, [hl]
    or h
    add hl, de
    jp hl


    inc hl
    call Call_013_6e61
    or h
    add hl, sp
    ret c

    dec [hl]
    cp h
    ld d, h
    ld a, e
    sub h
    ld c, d
    sbc b
    ld b, l
    cp d
    ld h, l
    adc d
    sub l
    ld e, c
    and a
    ld h, [hl]
    xor c
    ld h, l
    adc c
    add [hl]
    ld l, b
    sbc b
    ld h, a
    ld l, d
    sub a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, e
    db $10
    adc b
    xor b
    xor c
    sbc d
    xor l
    rst $38
    sub a
    db $76
    ld h, l
    add l

jr_013_6311:
    ld d, c
    ld bc, $9a78
    sbc d
    sbc e
    cp [hl]
    cp $86
    ld h, [hl]
    ld h, l
    ld h, h
    ld [hl-], a
    ld [hl+], a
    ld l, c
    xor d
    sbc d
    xor e
    call $98cc
    ld h, [hl]
    ld h, h
    ld d, l
    inc [hl]
    ld b, [hl]
    ld l, b
    adc c
    sbc d
    cp e
    xor e
    ld l, c
    sbc b
    add [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld h, a
    ld l, b
    adc c

jr_013_6339:
    sbc c
    sbc d
    adc c
    sbc b
    add a
    add [hl]
    db $76
    cp c
    or $6d
    ld b, l
    ld h, h
    ld h, [hl]
    add [hl]
    db $76
    xor a
    ld d, a
    db $e3
    ld l, l
    inc sp
    ld h, h
    db $76
    db $76
    xor b
    adc a
    ld b, a
    db $e4
    ld b, h
    ld d, a
    ld h, a
    ld a, b
    ld l, d
    db $f4
    ld a, [hl]
    daa
    ld [hl], h
    ld h, l
    ld [hl], a
    ld [hl], a
    ld a, a
    ld e, b
    ld [c], a
    ld a, l
    inc [hl]
    ld d, [hl]
    ld [hl], a
    db $76
    and a
    sbc a
    ld c, b
    db $d3
    ld b, l
    ld d, a
    ld [hl], a
    ld a, b
    adc d
    db $f4
    adc [hl]
    jr c, jr_013_63e9

    ld h, [hl]
    db $76
    add [hl]
    sbc a
    ld h, a
    di
    ld a, l
    dec [hl]
    ld d, l
    ld h, a
    ld [hl], a
    sbc b
    xor a
    ld c, c
    call nz, Call_013_6755
    ld h, a
    ld a, b
    ld a, d
    db $e4
    adc l
    jr c, jr_013_6311

    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, [hl]
    ld e, b
    call nc, Call_013_458c
    ld d, [hl]
    ld h, a
    ld [hl], a
    sbc b
    sbc [hl]
    ld e, c
    or l
    ld d, [hl]
    ld h, a
    ld a, b
    ld a, b
    adc d
    push de
    adc h
    jr c, jr_013_6339

    ld h, [hl]
    db $76
    add [hl]
    adc h
    ld l, c
    call nz, Call_013_458b
    ld d, a
    ld [hl], a
    add [hl]
    add a
    xor l
    ld e, c
    or l
    ld d, [hl]
    db $76
    add a
    ld a, b
    ld a, d
    push de
    adc e
    ld e, b
    sub h
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, e
    ld l, c
    or l
    adc d
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    sbc h
    ld e, b
    or l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc d
    or l
    adc e
    ld c, c
    sub h
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, d
    ld a, c
    and l
    sbc d
    ld d, a
    ld h, [hl]
    ld [hl], a
    add a
    add [hl]
    xor e
    ld e, d
    and l
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    adc d

jr_013_63e9:
    or l
    sbc d
    ld e, b
    sub [hl]
    ld h, a
    db $76
    add a
    ld a, d
    ld l, c
    or h
    xor c
    ld d, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    sbc e
    ld e, c
    and l
    db $76
    ld a, b
    ld l, b
    ld a, b
    adc c
    and [hl]
    sbc c
    ld e, c
    sub l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    ld l, d
    and l
    sbc c
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    xor d
    ld e, c
    sub l
    add [hl]
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    and l
    sbc c
    ld e, c
    sub [hl]
    ld h, [hl]
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    sub l
    xor b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    xor c
    ld l, c
    sub l
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, d
    sub [hl]
    sbc b
    ld l, c
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    and l
    xor b
    ld h, a
    ld h, a
    add a
    ld a, b
    add a
    xor c
    ld l, d
    db $76
    add [hl]
    ld h, a
    ld a, b
    ld a, b
    ld a, c
    sub l
    xor b
    ld e, c
    add [hl]
    db $76
    ld [hl], a
    ld a, b
    add a
    adc c
    sub l
    sbc c
    ld h, a
    ld h, a
    adc b
    ld a, b
    ld a, b
    sbc c
    ld l, c
    add [hl]
    add a
    ld h, a
    ld [hl], a
    add a
    ld a, c
    sub [hl]
    sbc c
    ld l, c
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, d
    add a
    sbc b
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    sbc b
    ld l, c
    add l
    sub a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    sbc b
    ld l, c
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, c
    add a
    adc b
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sbc c
    ld l, c
    add [hl]
    sbc b
    db $76
    ld a, b
    ld a, b
    ld a, c
    add a
    sbc b
    ld l, c
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    sub a
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    and a
    ld a, c
    db $76
    sub [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc c
    add a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sub a
    ld a, d
    ld [hl], a
    sbc b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    xor b
    ld l, c
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc d
    add [hl]
    sub a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    sub a
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    sub a
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, d
    add a
    adc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    db $76
    sbc b
    ld l, b
    ld l, b
    ld [hl], a
    ld l, b
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    add a
    sub a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    sbc b
    ld a, c
    ld h, a
    sub [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld [hl], a
    adc c
    add a
    sub a
    add a
    ld a, b
    ld l, b
    ld a, b
    add a
    sbc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    adc c
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    ld a, b
    sub a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add [hl]
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc c
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc c
    ld [hl], a
    add [hl]
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
    add a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
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

Call_013_6755:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_689a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_013_6e61:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_013_7799:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
