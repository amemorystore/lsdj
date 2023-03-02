; disasSembly of "lsdj.gb"
SECTION "ROM Bank $00b", ROMX[$4000], BANK[$b]

    ld h, b
    ld b, b
    jr nz, jr_00b_4052

    ld b, b
    ld d, b
    ld b, b
    ld d, c
    and b
    ld e, b
    jr nz, @+$5d

    sub b
    ld e, [hl]
    or b
    ld h, e
    jr nc, jr_00b_4084

    jr nc, jr_00b_4088

    ld b, b
    ld a, b
    ret nc

    ld a, b
    nop
    ld a, c
    sub b
    ld a, c
    ld b, b
    ld a, l
    ret nz

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
    ld e, c
    ld c, l
    ld c, b
    ld b, e
    ld c, a
    ld c, h
    ld b, e
    ld c, a
    ld c, l
    ld b, c
    ld c, h
    ld d, d
    ld c, c
    ld c, l
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
    nop
    nop

jr_00b_4052:
    ld d, h
    ld d, d
    dec l
    jr c, jr_00b_4087

    jr c, jr_00b_4059

jr_00b_4059:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $21e5
    stop
    nop
    nop
    ld bc, $3412
    ld d, l
    ld h, a
    ld a, c
    sbc c
    cp e
    cp l
    call $ef9f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $dd
    res 7, d
    xor c
    add hl, hl
    adc b
    add a
    add a

jr_00b_4084:
    db $76
    ld h, l
    ld d, [hl]

jr_00b_4087:
    ld d, h

jr_00b_4088:
    ld d, l
    ld b, h
    inc sp
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1120
    jr nz, jr_00b_40a5

    ld bc, $1001
    nop
    db $10
    db $10
    stop
    nop
    db $10
    ld bc, $1192
    ld [de], a
    ld [hl+], a
    ld [de], a

jr_00b_40a5:
    inc hl
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, [$aba9]
    cp h
    call z, $dedd
    xor $ef
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_00b_40ca:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ee
    ld l, [hl]
    db $dd
    db $dd
    call z, $bbbd
    cp e
    xor e
    sbc d
    sbc c
    xor c
    adc c
    sub a
    add a
    ld h, a
    ld [hl], a
    ld b, $56
    ld d, l
    ld d, l
    ld b, h
    ld b, e
    ld b, h
    inc h
    inc hl
    ld [hl+], a
    ld [hl-], a
    ld hl, $2121
    ld de, $1101
    ld bc, $1000
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
    ld bc, $7001
    ld de, $2120
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc sp
    inc h
    ld b, e
    ld b, l
    ld b, [hl]
    ld b, l
    ld d, [hl]
    ld h, [hl]
    rst $30
    ld a, c
    adc b
    adc c
    sbc d
    xor d
    cp d
    set 1, h
    call z, $cede
    sbc $ef
    rst $38
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
    cp $ef
    adc [hl]
    xor $dd
    db $dd
    db $dd
    call c, $cccc
    cp h
    cp e
    xor e
    xor d
    xor d
    xor c
    sbc c
    adc c
    jr z, jr_00b_40ca

    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    inc [hl]
    ld [hl-], a
    inc sp
    inc hl
    ld [bc], a
    ld [hl+], a
    ld hl, $1222
    ld de, $1001
    ld de, $1001
    ld bc, $0101
    ld bc, $4101
    ld bc, $1110
    ld de, $1112
    ld [de], a
    ld [hl+], a
    ld [de], a
    inc hl
    ld [hl+], a
    inc sp
    inc h
    inc [hl]
    inc [hl]
    call nz, Call_00b_5445
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    sbc c
    xor d
    xor d
    xor e
    cp e
    db $eb
    call $cecd
    db $dd
    sbc $ee
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    cp $ff
    rst $28
    rst $28
    cp a
    rst $28
    cp $ef
    rst $28
    xor $ee
    xor $de
    db $dd
    db $dd
    sbc $cc
    call c, $ccdb
    ld l, h
    cp e
    cp d
    cp d
    xor c
    xor d
    xor c
    sbc c
    sbc b
    sub a
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, a
    dec d
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    inc sp
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld de, $1101
    ld de, $1211
    ld bc, $1112
    jr nz, @+$23

    ld hl, $6222
    ld [hl+], a
    inc sp
    ld [hl+], a
    inc hl
    inc [hl]
    inc sp
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    sub $77
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc c
    xor d
    cp d
    xor e
    res 7, l
    call z, $ddcc
    call $dded
    db $ed
    xor $de
    xor $ef
    sbc $fe
    xor $ee
    xor $ee
    sbc $ad
    db $ed
    sbc $dd
    db $ed
    db $dd
    call c, $cccd
    call z, $cbcc
    jp z, $bacb

    cp e
    ld e, d
    xor d
    sbc c
    sbc d
    sbc c
    adc c
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    inc h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    inc sp
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld hl, $1222
    ld hl, $2122
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    inc sp
    inc hl
    ld [hl], e
    inc sp
    inc sp
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    ld b, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    rst $00
    ld a, b
    ld a, b
    adc c
    adc c
    sbc c
    sbc c
    xor c
    xor d
    xor e
    xor e
    cp e
    xor h
    cp h
    call z, $ddcc
    call z, $dddc
    call $dede
    db $dd
    sbc $dd
    sbc $ec
    db $ed
    db $ed
    db $ed
    sbc $ad
    call c, $dddd
    call $ccdc
    call $cbcc
    res 7, e
    cp e
    xor e
    cp d
    xor c
    ld e, d
    xor c
    sbc d
    sbc c
    sbc c
    sbc c
    ld a, b
    sub a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, a
    ld d, [hl]
    ld h, $55
    ld d, l

Jump_00b_4293:
    ld b, h
    ld b, l
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    inc sp
    inc sp
    inc hl
    inc sp
    inc hl
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc hl
    ld [hl-], a
    ld [hl+], a
    ld sp, $2223
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc hl
    inc hl
    inc sp
    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], e
    inc [hl]
    ld b, e
    ld b, e
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    or a
    add a
    add a
    adc b
    adc b
    adc c
    sbc c
    sbc c
    xor c
    xor c
    cp d
    xor d
    cp e
    xor e
    cp e
    cp e
    db $db
    call z, $cccc
    call c, $ccdc
    db $dd
    call $ddcd
    call c, $dddc
    call $bcdd
    call c, $cddd
    call z, $cccc
    call z, $cccc
    cp e
    res 7, e
    xor e
    xor e
    xor d
    ld l, d
    sbc d
    sbc c
    xor c
    sbc c
    sbc d
    adc c
    sbc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, $65
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    inc [hl]
    ld b, e
    ld b, e
    inc [hl]
    inc sp
    ld b, e
    inc sp
    inc hl
    inc sp
    inc hl
    inc sp
    inc hl
    inc hl
    inc sp
    inc sp
    inc hl
    inc hl
    inc h
    inc sp
    inc sp
    inc [hl]
    ld h, h
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, l
    ld b, e
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    or a
    ld h, a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    adc d
    sbc c
    xor c
    xor d
    cp d
    xor e
    jp z, $bbbb

    cp e
    cp e
    set 1, e
    cp h
    call z, $cccc
    call z, $cccc
    call z, $bccc
    call z, $cccd
    cp h
    call z, $cbdc
    call z, $cccb
    cp e
    cp e
    jp z, $aacb

    ld a, d
    xor e
    xor d
    sbc d
    xor d
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    sub a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld b, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, l
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld d, h
    ld b, e
    ld b, h
    inc [hl]
    inc sp
    ld b, e
    ld b, e
    ld b, e
    inc sp
    ld b, e
    inc hl
    ld b, d
    inc [hl]
    inc sp
    inc sp
    inc sp
    inc sp
    ld b, e
    inc sp
    inc [hl]
    ld h, e
    ld b, e
    ld b, e
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    and [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    adc c
    add a
    adc c
    adc c
    adc c
    sbc d
    sbc d
    sbc c
    cp c
    cp d
    xor d
    xor e
    xor e
    xor e
    cp e
    res 7, e
    cp e
    cp h
    cp h
    cp h
    call z, $cbbc
    cp e
    call c, $cccc
    set 1, h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp e
    cp e
    xor e
    ld a, d
    cp e
    xor d
    cp d
    xor d
    xor c
    sbc d
    xor c
    sbc c
    xor c
    adc c
    sbc b
    sbc b
    sbc b
    adc b
    ld a, b
    ld e, b
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    inc sp
    ld b, e
    ld b, e
    ld b, e
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, h
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    dec [hl]
    dec [hl]
    ld b, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld b, [hl]
    ld h, l
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    sbc b
    adc c
    sbc b
    cp c
    sbc d
    sbc c
    sbc d
    xor c
    xor c
    xor d
    xor d
    cp d
    xor e
    xor e
    xor d
    cp e
    cp d
    cp h
    cp e
    call z, $cbbb
    cp e
    set 1, h
    cp e
    res 7, h
    cp e
    jp z, $cbbb

    res 7, e
    xor e
    adc e
    xor e
    cp d
    xor e
    xor d
    cp d
    xor d
    xor d
    xor c
    xor c
    xor c
    sbc d
    adc d
    sbc b
    sbc b
    sbc c
    ld l, c
    ld a, b
    sub a
    sub a
    add a
    ld [hl], a
    add [hl]
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, h
    ld b, l
    ld d, l
    ld d, h
    ld h, l
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld d, h
    ld b, e
    ld d, e
    ld d, h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    ld h, l
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
    ld [hl], a
    add a
    adc b
    adc b
    cp b
    sbc b
    ld a, c
    sbc c
    sbc c
    sbc c
    adc d
    sbc c
    sbc d
    sbc c
    xor d
    xor e
    sbc d
    xor d
    cp d
    cp d
    cp d
    cp d
    cp h
    xor e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    jp z, $babb

    cp e
    jp z, $9bbb

    xor e
    cp e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor d
    xor d
    xor c
    sbc d
    sbc d
    sbc c
    xor c
    sbc b
    ld e, c
    adc c
    sbc b
    adc c
    ld a, b
    adc b
    adc b
    ld [hl], a
    add [hl]
    add a
    add [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld b, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, [hl]
    add l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld l, b
    ld [hl], a
    db $76
    add a
    cp b
    add a
    add a
    sbc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    sbc c
    sbc c
    xor c
    xor d
    xor c
    xor d
    xor d
    cp d
    xor d
    xor d
    cp c
    cp d
    cp d
    xor e
    cp d
    cp e
    xor e
    cp e
    cp d
    cp e
    cp d
    cp d
    cp e
    xor d
    cp d
    xor e
    cp e
    xor d
    cp d
    xor e
    xor d
    cp d
    xor d
    xor d
    xor d
    xor d
    xor c
    xor d
    sbc c
    ld a, c
    sbc b
    xor c
    sbc c
    sbc b
    adc c
    adc b
    adc b
    sbc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, h
    ld h, l
    ld d, l
    ld d, h
    ld b, l
    ld d, l
    ld b, h
    ld d, l
    ld b, h
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld d, l
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld [hl], h
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    and a
    ld h, a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    adc c
    adc b
    adc b
    sbc c
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    cp c
    sbc d
    xor c
    xor d
    sbc d
    xor d
    xor d
    cp d
    cp d
    cp c
    cp d
    xor d
    cp d
    cp d
    cp d
    xor d
    xor e
    xor e
    xor e
    xor e
    xor d
    xor d
    cp d
    cp d
    xor d
    cp c
    xor d
    xor d
    xor d
    xor d
    xor d
    sbc c
    ld a, c
    xor c
    sbc d
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    sbc c
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld d, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, h
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    db $76
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    adc b
    sbc b
    xor b
    adc c
    sbc c
    xor c
    xor c
    xor d
    sbc c
    xor c
    sbc d
    sbc d
    xor d
    xor c
    xor d
    xor c
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    cp d
    sbc d
    xor d
    xor d
    xor d
    cp e
    sbc d
    cp d
    xor d
    xor d
    xor c
    xor c
    adc c
    sbc d
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, l
    ld b, l
    ld [hl], l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, h
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld [hl], l
    ld h, [hl]
    add l
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    sub a
    add a
    sbc c
    adc b
    adc b
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc d
    adc d
    xor c
    sbc d
    sbc c
    xor d
    sbc c
    sbc d
    sbc d
    xor d
    xor d
    sbc e
    sbc d
    xor d
    sbc d
    xor d
    xor d
    xor d
    xor d
    cp d
    xor c
    xor d
    sbc d
    sbc d
    adc d
    xor d
    xor d
    xor d
    sbc c
    xor c
    xor c
    sbc d
    sbc b
    xor b
    sbc c
    adc b
    sbc c
    adc c
    sbc b
    adc b
    ld l, b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    add a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld d, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld b, [hl]
    ld d, l
    ld b, [hl]
    ld d, h
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    add a
    ld a, b
    ld [hl], a
    adc b
    xor b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc d
    adc c
    xor c
    sbc c
    xor d
    xor c
    sbc c
    xor c
    xor d
    sbc d
    sbc d
    xor d
    xor d
    xor e
    sbc d
    sbc d
    xor d
    xor c
    sbc e
    xor c
    sbc c
    xor d
    xor d
    sbc c
    xor c
    xor d
    sbc d
    sbc c
    sbc c
    xor b
    sbc d
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    ld l, b
    adc b
    adc b
    adc b
    adc b
    sub a
    adc c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld [hl], l
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    sub a
    add a
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    sbc b
    sbc b
    adc c
    adc c
    adc c
    adc c
    adc c
    adc d
    adc c
    sbc c
    sbc d
    adc d
    sbc c
    xor c
    sbc c
    sbc d
    sbc c
    xor d
    sbc d
    sbc c
    xor c
    sbc d
    sbc d
    sbc d
    xor d
    adc d
    sbc d
    sbc d
    xor c
    xor c
    xor c
    xor c
    sbc d
    sbc c
    sbc d
    adc c
    xor c
    xor c
    sbc c
    sbc d
    sbc c
    ld a, c
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld d, a
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, l
    db $76
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    sub a
    adc c
    ld a, c
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    sbc b
    sbc d
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    xor c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc d
    sbc c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc c
    sbc d
    sbc d
    sbc c
    sbc d
    sbc c
    xor c
    sbc b
    ld a, c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc b
    adc c
    adc c
    adc c
    add a
    sbc b
    adc b
    add a
    adc b
    adc b
    add a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, l
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    add [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    adc c
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc d
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    xor c
    sbc c
    sbc d
    sbc c
    xor c
    sbc c
    xor c
    xor c
    sbc d
    sbc d
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc b
    adc c
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, l
    ld h, a
    ld [hl], l
    db $76
    ld d, a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    add a
    sbc b
    sbc b
    adc c
    adc b
    sbc c
    adc b
    sbc c
    sbc b
    sbc b
    sbc c
    sbc d
    xor c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc b
    xor c
    sbc c
    sbc d
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    sub a
    sbc c
    adc c
    adc b
    adc b
    ld a, b
    adc b
    sbc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld d, a
    add a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    sbc b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    adc c
    adc c
    adc c
    sbc c
    sbc c
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    sbc c
    adc c
    adc c
    adc c
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add [hl]
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    adc b
    sbc b
    sbc b
    sbc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    adc c
    sbc b
    ld a, b
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    ld a, b
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc c
    adc c
    sbc b
    adc b
    adc c
    adc c
    adc c
    adc b
    sbc b
    sbc c
    sbc b
    adc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc b
    sbc d
    sbc b
    adc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld h, a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, c
    adc b
    adc b
    ld a, b
    sub a
    sbc b
    adc b
    adc c
    sbc b

Call_00b_4a7b:
    adc b
    sbc b
    sbc b
    sbc b
    sbc c
    sbc c
    adc b
    adc c
    sbc b
    sbc b
    sbc c
    adc d
    adc c
    adc c
    adc c

Jump_00b_4a8a:
    adc b
    sbc c
    adc c
    sbc b
    sbc c
    sbc b
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc b
    adc c
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    sbc b
    adc b
    add a
    adc b
    adc b
    add a
    sbc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    sbc c
    adc b
    sbc b
    adc c
    sbc c
    adc b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc b
    adc c
    sbc b
    adc c
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    sbc b
    adc b
    sbc c
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld h, a
    ld [hl], a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    db $76
    ld a, b
    ld [hl], a
    ld l, b
    db $76
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, c
    ld a, b
    sbc c
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc c
    sbc b
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    sbc c
    add a
    adc c
    adc b
    adc c
    add a
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a

Call_00b_4b99:
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld l, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    sub a
    adc b

Call_00b_4bcc:
    add a
    adc b
    ld a, c
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc b
    ld a, c
    adc b
    adc b
    adc c
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc b
    sbc b
    adc c
    sbc b
    sbc b
    adc c
    adc c
    adc b
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc c
    adc b
    ld a, b
    adc b
    sbc c
    ld a, b
    ld a, b
    sbc b
    ld a, c
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    db $76
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    add a
    db $76
    add a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, c
    ld a, c
    adc b
    sub a
    adc b
    sbc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc c
    adc b
    sbc b
    adc c
    adc c
    ld a, c
    sbc b
    adc b
    adc b
    ld a, c
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc c
    adc c
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    sub a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    add [hl]
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
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
    adc c
    ld a, b
    adc b
    ld a, c
    adc b
    adc c
    adc b
    sub a
    sbc b
    sbc b
    sbc b
    adc c
    adc c
    adc b
    adc c
    adc c
    adc b
    sbc b
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    sbc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    adc c
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
    sbc b
    adc c
    adc b
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    ld a, b
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, c
    add a
    adc b
    ld a, b
    adc c
    ld a, c
    ld a, b
    adc b
    sub a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld a, c
    adc c
    ld a, b
    sub a
    sbc b
    sbc b
    sbc b
    ld a, b
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
    sbc b
    adc b
    add a
    adc b
    ld a, c
    adc b
    adc b
    sub a
    adc b
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
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
    ld [hl], a
    add [hl]
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    add a
    sbc b
    adc b

jr_00b_4e1b:
    adc b
    add a

jr_00b_4e1d:
    sbc b
    sub a
    adc c
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$707a]
    inc bc

jr_00b_4e2a:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_00b_4e2a

    inc h
    ld a, [de]
    xor d
    ret


    ld c, a
    cp b
    db $d3
    sbc h
    ld [hl], b
    ld a, e
    inc sp
    add l
    add a
    ld a, h
    and [hl]
    add hl, bc
    rst $38
    rst $28
    db $fd
    rst $38
    db $ec
    rst $38
    ld hl, sp-$28
    ld [hl], l
    ld h, c
    ld b, $05
    inc bc
    nop
    jr nz, jr_00b_4eb1

    nop
    sub c
    ld h, d
    and a
    jr z, jr_00b_4e1d

    adc b
    xor c
    add a
    ld e, d
    cp d
    ld c, c
    and a
    dec sp
    reti


    ld a, [bc]
    ld sp, hl
    call z, $fedb
    rst $18
    ld sp, hl
    adc $dd
    ld [hl], a
    ret


    ld b, [hl]
    dec d
    ld h, [hl]
    db $10
    ld h, d
    ldh a, [rNR10]
    add hl, de
    ld [de], a
    inc [hl]
    ld b, l
    add hl, hl
    and l
    db $76
    sub l
    ld a, h
    ld e, l
    sub a
    ld a, c
    adc d
    ld l, c
    jr c, jr_00b_4e1b

    xor h
    sbc h
    ld a, [$fcb7]
    ld a, a
    cp c
    cp e
    adc c
    ld a, c
    or l
    add h
    ld [hl], $65
    or c
    ld [hl], $23
    inc h
    ld [de], a
    add e
    ld b, e
    ld c, b
    ld d, [hl]
    sub h
    sbc c
    ld h, h
    xor d
    add [hl]
    ld a, l
    ld l, c
    ld a, e
    ld l, d
    cp c
    xor e
    or [hl]
    cp h
    reti


    sbc l
    xor c
    adc [hl]
    sbc d
    sbc b
    adc d
    ld a, [hl-]
    and h
    ld h, l
    add h

jr_00b_4eb1:
    ld h, c
    ld h, a
    inc [hl]
    ld d, $64
    inc h
    ld e, b
    ld h, h
    ld d, h
    ld l, b
    ld [hl], l
    sbc c
    ld h, a
    ld a, b
    rst $00
    adc c
    sbc c
    sbc b
    sbc [hl]
    sbc c
    ld a, d
    res 5, d
    sbc d
    cp c
    xor b
    sbc h
    add a
    ld a, e
    add a
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld [hl], $56
    ld d, [hl]
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld c, c
    sub a
    db $76
    and [hl]
    ld a, e
    sbc b
    adc b
    adc h
    sbc b
    cp c
    adc d
    xor c
    adc e
    sbc d
    cp b
    sbc c
    sbc b
    sub a
    xor d
    ld l, c
    db $76
    ld l, c
    add l
    ld h, [hl]
    ld d, h
    add [hl]
    ld d, l
    ld b, l
    ld [hl], l
    ld d, h
    add l
    ld d, a
    db $76
    ld h, [hl]
    ld e, c
    ld a, b
    ld l, c
    ld a, c
    ld a, c
    sbc b
    sbc c
    sbc c
    xor b
    sbc e
    ld a, e
    sbc b
    adc d
    cp b
    sbc d
    add a
    xor c
    sub [hl]
    ld a, d
    add [hl]
    add [hl]
    sub [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, h
    sub l
    ld e, b
    ld d, h
    add a
    ld c, b
    ld h, a
    adc b
    add [hl]
    ld a, b
    adc b
    adc b
    adc b
    xor b
    sub a
    sbc c
    sbc c
    xor c
    sbc c
    adc c
    sbc d
    sbc c
    adc b
    ld a, d
    ld h, a
    adc c
    ld [hl], a
    ld l, b
    ld h, a
    add [hl]
    ld h, a
    ld h, l
    db $76
    ld [hl], l
    ld e, b
    ld d, a
    ld d, [hl]
    ld [hl], l
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, c
    xor b
    add a
    sbc c
    and a
    adc d
    add a
    xor b
    adc d
    ld a, c
    sbc c
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add a
    ld l, b
    ld [hl], a
    ld [hl], l
    add [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    adc b
    ld h, a
    add a
    add a
    adc b
    add a
    adc c
    adc c
    ld a, b
    adc c
    sbc b
    adc b
    sbc c
    sbc b
    adc c
    adc b
    ld a, b
    adc b
    adc b
    add a
    adc c
    ld l, b
    ld h, a
    sub a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, b
    ld d, [hl]
    ld [hl], a
    ld [hl], l
    add a
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    sbc c
    add a
    sbc b
    adc b
    adc c
    sbc b
    ld h, a
    adc c
    ld a, c
    adc b
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub [hl]
    add [hl]
    ld [hl], a
    ld a, b
    ld h, a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    sbc c
    add a
    ld a, c
    sbc b
    adc b
    adc b
    ld l, b
    adc b
    adc b
    adc b
    sbc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld a, b
    ld l, b
    sub a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    add a
    ld l, b
    adc b
    sbc b
    adc b
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    ld h, a
    ld a, b
    ld h, a
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    sbc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld h, a
    add [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    add a
    add a
    add a
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    sub a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld h, a
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
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
    add a
    sub a
    adc b
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    cp b
    ld l, b
    ld a, d
    ld e, h
    dec hl
    add [hl]
    ld e, e
    add h
    pop de
    ldh a, [$f4]
    sbc b
    ld a, c
    dec sp
    sub l
    add a
    ld d, e
    call nz, $c4b3
    adc c
    ld e, d
    ld c, d
    ld a, b
    ld e, d
    ld e, e
    ld h, a
    ld a, b
    ld l, e
    cpl
    inc l
    dec sp
    sbc c
    add [hl]
    sub [hl]
    and l
    or [hl]
    ld l, e
    ld a, [hl-]
    ld [hl], a
    sub h
    call nz, $a786
    add [hl]
    sub a
    ld [hl], a
    and l
    ld d, a
    ld a, c
    ld c, d
    ld l, c
    ld e, e
    ld c, d
    ld l, b
    adc b
    ld a, c
    ld e, b
    ld [hl], a
    sbc c
    ld c, e
    ld e, c
    db $76
    sub a
    ld e, e
    ld c, b
    and l
    and [hl]
    adc b
    ld l, c
    ld a, b
    ld l, c
    ld l, b
    add [hl]
    ld a, b
    add a
    add a
    adc b
    ld e, e
    ld l, c
    ld e, c
    ld a, b
    ld [hl], l
    and a
    add a
    ld a, b
    ld a, b
    ld l, d
    ld e, e
    ld c, c
    ld a, b
    sub l
    and [hl]
    adc b
    ld a, b
    ld a, b
    adc d
    ld e, b
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld l, d
    ld e, c
    ld [hl], a
    add a
    add a
    ld h, a
    and l
    sub [hl]
    sub a
    add a
    add a
    add [hl]
    ld a, d
    ld e, c
    ld a, b
    add [hl]
    sub [hl]
    sub [hl]
    and [hl]
    ld a, b
    add a
    add a
    add a
    add a
    sub l
    and l
    ld [hl], a
    sub a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, c
    ld l, b
    add a
    add [hl]
    sub [hl]
    sub a
    add a
    add a
    ld a, c
    ld [hl], a
    sub a
    add a
    add a
    sub [hl]
    sub [hl]
    adc b
    ld a, c
    ld a, b
    add a
    add [hl]
    ld [hl], a
    adc b
    add [hl]
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
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    sub [hl]
    adc b
    add [hl]
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    sub [hl]
    adc b
    ld a, c
    ld l, b
    add [hl]
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
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
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    db $76
    add a
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    add h
    add $95
    and [hl]
    ld a, b
    sub h
    sbc l
    rrca
    dec hl
    ld [hl], a
    ld l, b
    and l
    sub h
    db $e3
    or a
    adc d
    dec e
    add hl, sp
    ld a, b
    ld l, b
    sub l
    adc d
    db $76
    and l
    ld a, d
    ld h, a
    adc b
    ld [hl], a
    sub [hl]
    and h
    sub h
    sub a
    and l
    ld l, d
    db $76
    and [hl]
    add h
    pop af
    and [hl]
    ld l, h
    ld c, b
    sub [hl]
    sub [hl]
    add a
    and h
    sub [hl]
    ld e, c
    dec sp
    ld e, d
    ld e, b
    ld l, e
    ld [hl], e
    ld [c], a
    sbc l
    rrca
    ld a, [hl+]
    ld a, b
    ld a, d
    ld d, a
    add a
    adc c
    ld e, b
    ld a, a
    inc c
    ld e, c
    add [hl]
    ld l, h
    ld c, b
    ld e, l
    ld e, b
    ld a, c
    ld a, b
    add a
    ld l, c
    add a
    ld a, c
    add d
    cp b
    ld h, a
    sub [hl]
    ld a, e
    ld c, c
    ld e, h
    ld h, [hl]
    sub a
    sub l
    and h
    push bc
    ld l, e
    dec l
    ld c, d
    ld l, b
    ld a, c
    ld c, h
    sub $a5
    adc d
    ld c, h
    rrca
    ld e, $0e
    ld b, [hl]
    ldh [$e4], a
    and [hl]
    sub a
    ld a, c
    ld c, h
    ld [hl], h
    jp nz, $9545

    or l
    ld a, c
    db $76
    adc b
    add [hl]
    sub [hl]
    sub a
    ld l, e
    dec sp
    add l
    sub a
    sub l
    adc e
    inc e
    sbc c
    add a
    sub l
    and [hl]
    and [hl]
    ld a, c
    ld e, c
    add [hl]
    sbc b
    db $76
    sub a
    add a
    sub [hl]
    ld a, c
    ld l, b
    sub l
    and a
    and a
    ld l, b
    and l
    add [hl]
    adc c
    ld h, a
    add l
    call nz, Call_00b_737a
    add $87
    sub a
    ld l, b
    add a
    ld h, h
    pop bc
    db $e3
    pop de
    cp b
    ld e, c
    ld l, c
    add l
    and a
    db $76
    and l
    sbc d
    inc l
    ld a, $19
    sub a
    ld a, d
    inc a
    ld h, [hl]
    sub l
    sbc d
    ld a, [hl-]
    ld l, c
    add a
    ld a, b
    adc b
    ld a, [hl-]
    sub h
    or l
    and h
    call nz, $9779
    add [hl]
    or h
    and a
    sub e
    ldh [$c7], a
    ld a, d
    inc l
    ld c, e
    ld h, a
    adc c
    ld [hl], l
    or l
    or l
    add [hl]
    adc d
    ld b, a
    or a
    ld c, c
    sub a
    ld [hl], l
    call nz, Call_00b_5899
    sub [hl]
    adc b
    sub h
    or h
    sub a
    ld a, b
    ld a, b
    ld h, [hl]
    adc b
    add a
    add a
    ld a, b
    sub h
    adc c
    ld [hl], a
    ld a, d
    ld d, [hl]
    call nz, $8788
    add [hl]
    sbc b
    ld a, b
    or [hl]
    or a
    ld l, c
    ld a, b
    ld l, b
    sub l
    adc c
    dec a
    ld e, b
    ld a, c
    ld c, e
    ld e, c
    db $76
    adc d
    ld a, [hl-]
    add [hl]
    sub h
    xor b
    ld c, l
    inc a
    ld c, d
    dec a
    ld h, h
    pop hl
    or a
    ld l, c
    ld e, e
    ld c, c
    ld l, b
    and e
    pop de
    ld [c], a
    ld a, b
    ld l, d
    dec l
    ld c, d
    ld e, b
    sub a
    add [hl]
    sub a
    ld a, b
    ld a, c
    ccf
    dec de
    ld a, d
    dec l
    ld a, $29
    ld l, b
    sbc c
    inc a
    ld e, d
    ld c, e
    ld e, h
    dec e
    ld e, b
    add a
    ld a, b
    sub [hl]
    adc b
    ld e, e
    ld c, c
    ld [hl], a
    sub [hl]
    sbc d
    db $76
    or e
    or [hl]
    ld a, c
    ld l, b
    add a
    ld a, c
    ld e, b
    add l
    or h
    db $d3
    adc d
    ld e, c
    ld a, b
    add a
    push bc
    ld a, e
    add l
    and a
    ld c, l
    dec sp
    ld e, d
    ld [hl], l
    call nz, $96a6
    sub a
    ld e, e
    ld d, [hl]
    jp nz, Jump_00b_74c2

    or h
    add $69
    ld [hl], a
    sub [hl]
    sub h
    and [hl]
    sub [hl]
    or h
    and [hl]
    sbc b
    ld l, b
    add [hl]
    sbc b
    ld c, d
    ld d, a
    sub l
    and l
    and a
    add [hl]
    ld a, d
    ld c, d
    ld l, e
    ld d, a
    sbc b
    add a
    ld l, b
    ld a, b
    add a
    ld a, d
    inc l
    xor c
    ld a, b
    ld [hl], a
    ld a, c
    ld h, [hl]
    and l
    and [hl]
    ld a, d
    ld e, d
    ld h, a
    sub l
    and e
    or l
    and a
    ld l, b
    and l
    ld [hl], h
    call nz, $a6a6
    ld l, c
    ld l, d
    ld e, c
    ld [hl], a
    add [hl]
    and h
    sbc d
    inc l
    ld h, a
    ld a, c
    ld e, d
    ld l, b
    add a
    jp Jump_000_3b8b


    ld c, d
    ld e, d
    ld h, a
    ld a, c
    add l
    sub a
    add a
    add a
    sub [hl]
    adc b
    add [hl]
    sub [hl]
    ld a, c
    ld e, d
    ld h, [hl]
    ld [c], a
    and l
    sbc b
    ld l, b
    adc b
    ld l, e
    ld e, $49
    ld [hl], l
    pop de
    push bc
    sub a
    ld a, b
    ld a, c
    ld h, a
    adc c
    ld h, a
    or e
    sub a
    adc b
    ld l, d
    ld d, a
    ld a, e
    dec hl
    ld [hl], l
    ld a, h
    ld d, [hl]
    or [hl]
    ld a, b
    adc d
    dec l
    dec sp
    ld e, b
    ld a, c
    ld l, b
    db $76
    or l
    ld a, e
    ld c, d
    ld l, b
    adc b
    ld [hl], a
    sub a
    db $76
    sub [hl]
    ld d, [hl]
    sub a
    adc b
    ld e, d
    ld e, e
    ld e, b
    ld a, d
    ld e, b
    ld a, d
    ld e, c
    ld a, b
    ld a, d
    dec sp
    ld c, h
    ld e, b
    adc b
    cp c
    ld a, c
    db $76
    sbc b
    ld e, e

jr_00b_5325:
    ld c, e
    ld [hl], l
    or h
    adc b
    ld a, b
    add [hl]
    sub [hl]
    and d
    call nc, $86a6
    add h
    and [hl]
    sub [hl]
    ld [hl], a
    or d
    call nz, Call_00b_79c5
    ld [hl], a
    sub l
    adc d
    ld c, c
    ld a, c
    add [hl]
    adc c
    ld h, a
    ld [hl], a
    add a
    ld a, d
    ld c, c
    ld a, c
    ld h, a
    add e
    ld [c], a
    or [hl]
    adc b
    ld a, b
    add a
    add a
    adc b
    db $76
    sub [hl]
    sbc b
    sub l
    or l
    sub [hl]
    and [hl]
    adc b
    ld e, e
    ld c, e
    ld h, l
    call nz, $a496
    xor c
    ld c, d
    ld e, d
    ld e, d
    add e
    or h
    call nz, Call_00b_69a7
    ld l, c
    ld e, d
    sub d
    or a
    ld a, c
    ld a, b
    ld l, c
    ld l, c
    ld e, d
    ld l, b
    ld e, c
    or a
    ld l, c
    ld e, c
    sub [hl]
    adc b
    add a
    adc b
    add l
    and [hl]
    sub [hl]
    ld a, b
    add [hl]
    sub a
    ld l, h
    jr c, jr_00b_5325

    ld h, e
    or a
    db $76
    and [hl]
    add a
    ld l, e
    ld h, [hl]
    sbc b
    ld [hl], a
    ld a, d
    ld e, c
    ld a, b
    ld e, e
    ld h, a
    adc c
    ld l, b
    ld c, c
    ld l, d
    ld h, a
    add l
    push de
    ld e, d
    ld l, d
    dec a
    dec hl
    ld h, a
    sub h
    or h
    sbc b
    sub l
    adc b
    ld l, e
    ld l, c
    db $76
    or e
    or l
    sub [hl]
    sub [hl]
    adc c
    ld e, d
    ld e, c
    sub l
    and l
    and a
    ld e, d
    ld [hl], a
    sub [hl]
    adc c
    ld a, d
    ld e, d
    ld e, c
    ld a, c
    ld e, d
    ld e, d
    ld l, b
    adc b
    ld a, c
    ld e, e
    ld e, d
    ld e, b
    ld a, b
    ld a, c
    ld l, b
    ld e, d
    ld h, a
    ld a, c
    ld e, c
    ld e, h
    ld a, [hl+]
    add [hl]
    sbc b
    ld l, c
    ld l, d
    ld e, c
    ld a, b
    ld l, d
    ld h, a
    sub [hl]
    sbc c
    ld l, c
    ld d, a
    sub l
    sbc b
    ld l, b
    and e
    xor b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, d
    ld e, c
    ld a, c
    db $76
    sub a
    adc b
    ld e, d
    sbc d
    ld c, e
    ld c, e
    ld h, a
    sub a
    add [hl]
    sub l
    sbc b
    ld c, h
    ld e, b
    add [hl]
    and [hl]
    sub [hl]
    sub h
    or l
    and [hl]
    push de
    sub [hl]
    sub [hl]
    sub l
    or l
    ld a, d
    ld l, b
    sub l
    and a
    adc c
    ld e, d
    ld a, b
    ld [hl], a
    ld a, d
    ld h, a
    sub h
    and h
    ld a, d
    ld e, b
    ld a, e
    dec l
    add hl, sp
    and e
    or l
    sub [hl]
    sub [hl]
    and [hl]
    ld a, b
    ld l, b
    add [hl]
    or h
    or h
    add [hl]
    and l
    and h
    and a
    ld [hl], a
    sub [hl]
    add a
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    add h
    push bc
    add [hl]
    sbc b
    add [hl]
    ld d, [hl]
    adc d
    ld e, c
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub [hl]
    adc b
    adc b
    ld e, d
    ld e, h
    ld c, d
    ld e, d
    add [hl]
    ld a, c
    ld a, b
    sbc d
    ld [hl], a
    adc b
    ld l, c
    ld l, b
    ld a, c
    ld l, d
    dec sp
    ld h, a
    sub [hl]
    sub [hl]
    and a
    ld l, c
    ld [hl], a
    ld a, b
    add [hl]
    ld b, l
    call nz, Call_00b_79b5
    ld e, e

Call_00b_5445:
    ld l, b
    ld [hl], a
    add a
    add a
    add [hl]
    add a
    ld a, e
    dec sp
    ld e, c
    ld a, c
    ld l, e
    adc d
    add h
    or a
    ld [hl], a
    adc b
    add a
    ld a, d
    ld e, c
    ld a, b
    db $76
    sub [hl]
    sub a
    sub [hl]
    adc b
    add [hl]
    adc b
    add h
    or [hl]
    ld a, e
    ld a, [hl-]
    add [hl]
    and [hl]
    ld a, c
    ld a, b
    ld a, b
    ld l, e
    ld e, e
    dec sp
    ld [hl], l
    sub a
    and l
    ld a, b
    ld a, b
    ld c, e
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld l, d
    ld e, e
    dec sp
    ld d, a
    sub a
    add [hl]
    sub [hl]
    ld l, h
    dec hl
    ld e, c
    ld a, c
    ld h, a
    sub [hl]
    and l
    sbc b
    ld l, d
    ld e, d
    ld e, c
    db $76
    and l
    add [hl]
    and [hl]
    adc b
    adc b
    ld e, e
    ld l, b
    ld d, a
    adc b
    ld a, c
    db $76
    add a
    sbc c
    ld c, d
    ld e, d
    ld c, d
    ld l, b
    ld [hl], a
    sub a
    ld l, d
    ld e, c
    ld l, b
    adc b
    sbc e
    ld e, c
    add [hl]
    and [hl]
    add l
    and a
    add [hl]
    sub [hl]
    adc c
    ld l, c
    ld l, c
    ld h, [hl]
    call nz, $e4b2
    sub [hl]
    add a
    ld a, b
    ld h, a
    push bc
    sub [hl]
    sub l
    or h
    or l
    adc b
    ld [hl], a
    sbc b
    ld e, b
    sub a
    add [hl]
    and l
    and l
    sbc c
    ld e, b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    add a
    ld a, e
    ld e, b
    sub l
    and l
    sub [hl]
    sub l
    or h
    and a
    ld a, b
    add l
    or e
    sbc c
    ld l, b
    add [hl]
    sub a
    ld a, b
    ld a, b
    sub l
    and l
    adc b
    ld l, c
    ld l, b
    ld e, d
    ld h, a
    sub [hl]
    sbc c
    ld h, a
    sbc b
    ld l, c
    ld a, b
    ld [hl], l
    or [hl]
    adc b
    ld e, d
    ld l, d
    ld e, c
    ld l, b
    add a
    adc b
    ld l, b
    ld [hl], a
    or l
    sbc b
    ld c, h
    ld c, e
    ld h, a
    sub [hl]
    add a
    sub [hl]
    sub [hl]
    adc d
    inc a
    ld e, c
    ld l, b
    ld a, b
    add [hl]
    or h
    ld h, [hl]
    ld a, b
    sub [hl]
    adc c
    ld l, b
    db $76
    sub [hl]
    or h
    and [hl]
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    ld l, d
    ld l, c
    ld l, d
    sbc b
    ld e, d
    ld [hl], a
    add [hl]
    adc b
    ld l, e
    inc l
    ld e, c
    ld a, b
    ld l, c
    add [hl]
    and [hl]
    ld a, b
    add [hl]
    add a
    add [hl]
    ld d, [hl]
    sub [hl]
    ld l, d
    ld [hl], a
    ld a, b
    ld h, a
    and h
    or [hl]
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld e, h
    inc a
    ld e, e
    ld c, d
    sbc c
    sub h
    sbc b
    ld a, b
    ld a, b
    ld l, d
    ld c, e
    ld h, a
    ld a, b
    add a
    sub a
    ld l, b
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    add [hl]
    sub a
    ld l, d
    ld e, c
    add a
    ld e, e
    ld c, e
    ld c, c
    ld [hl], a
    add a
    sub [hl]
    sub a
    add a
    add a
    ld e, d
    ld c, d
    db $76
    sub [hl]
    sub l
    sub a
    ld e, e
    ld c, e
    ld c, d
    ld l, b
    ld a, c
    ld [hl], a
    add a
    sub a
    ld a, c
    ld e, e
    sbc c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld a, c
    ld e, d
    ld e, b
    add [hl]
    sub [hl]
    sub [hl]
    add [hl]
    and l
    add a
    sub [hl]
    ld [hl], l
    adc b
    and l
    adc c
    ld [hl], a
    add [hl]
    adc b
    add l
    and l
    sub [hl]
    ld [hl], a
    and a
    ld l, c
    ld a, b
    ld h, a
    or [hl]
    xor b
    add [hl]
    adc c
    ld l, c
    add [hl]
    ld a, b
    sub a
    add a
    add a
    sub [hl]
    adc b
    db $76
    sub [hl]
    sub a
    sub [hl]
    add [hl]
    ld h, h
    sbc b
    ld l, b
    sub l
    or [hl]
    add a
    sub [hl]
    sub [hl]
    sbc c
    ld e, d
    ld c, d
    sub l
    sbc b
    ld [hl], a
    add [hl]
    adc b
    cp c
    ld l, c
    ld l, c
    ld l, b
    sub [hl]
    and l
    add a
    ld a, c
    ld a, c
    ld a, b
    add a
    adc b
    ld [hl], a
    sub [hl]
    add a
    sub h
    sub a
    ld e, b
    sub [hl]
    sub [hl]
    adc d
    ld c, e
    ld d, a
    and l
    sbc b
    add a
    add [hl]
    sub a
    adc b
    ld a, b
    add l
    or l
    ld d, a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld l, c
    ld l, b
    ld [hl], a
    adc b
    ld l, d
    ld c, d
    ld l, b
    ld a, c
    ld e, d
    sbc c
    sub l
    add a
    adc b
    ld e, c
    ld a, b
    add [hl]
    sub l
    add a
    adc b
    ld l, c
    ld l, c
    ld l, c
    ld [hl], a
    sub h
    call nc, $9647
    sub a
    ld a, c
    db $76
    and [hl]
    sub [hl]
    ld a, b
    add [hl]
    and [hl]
    ld a, d
    ld e, c
    ld l, d
    ld e, c
    ld l, d
    dec a
    ld a, b
    ld l, d
    ld l, b
    ld l, c
    ld l, d
    ld c, e
    ld c, h
    ld e, b
    ld a, c
    add h
    or a
    ld a, b
    ld l, c
    ld a, b
    ld e, e
    ld c, c
    ld h, [hl]
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld l, e
    ld c, c
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    ld a, c
    ld l, c
    ld l, c
    ld l, c
    or a
    or h
    add a
    adc c
    ld l, c
    ld l, b
    adc b
    add [hl]
    sub [hl]
    add a
    add a
    ld a, d
    ld [hl], a
    adc b
    ld h, a
    and h
    sub l
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    and h
    xor b
    ld l, c
    db $76
    or h
    and [hl]
    sub [hl]
    sub [hl]
    ld d, [hl]
    sub a
    sub l
    or [hl]
    add [hl]
    and a
    ld a, c
    ld l, c
    ld l, d
    ld l, b
    ld [hl], a
    add a
    sub a
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld l, b
    add l
    and [hl]
    sub a
    sub a
    ld [hl], a
    add a
    db $76
    adc c
    ld e, b
    add l
    and l
    sub l
    or h
    adc b
    ld e, b
    db $76
    and [hl]
    sub [hl]
    sub [hl]
    and l
    ld a, b
    sub [hl]
    adc b
    ld a, b
    add a
    ld a, c
    ld e, d
    ld l, b
    adc b
    ld a, b
    adc h
    ld e, b
    ld l, d
    ld e, c

Jump_00b_5664:
    ld l, b
    add a
    sub [hl]
    sub a
    sub [hl]
    sub [hl]
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    scf
    ld a, b
    ld l, c
    ld [hl], a
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    ld e, c
    ld a, b
    ld a, b
    ld a, b
    sub l
    sub a
    adc d
    sbc e
    ld l, b
    ld l, c
    ld [hl], a
    add [hl]
    add a
    ld a, b
    ld a, c
    ld e, d
    ld e, d
    ld e, e
    ld e, c
    ld [hl], a
    sbc b
    ld a, c
    ld e, b
    sub a
    ld l, d
    ld l, c
    ld l, b
    add [hl]
    and [hl]
    add a
    add a
    sub [hl]
    add [hl]
    ld a, b
    add a
    add a
    add [hl]
    sub [hl]
    sub [hl]
    or [hl]
    and l
    sbc b
    ld l, d
    ld l, c
    ld l, c
    add a
    ld [hl], a
    add a
    sub a
    adc b
    adc c
    ld e, d
    inc a
    ld c, c
    db $76
    ld [hl], l
    ld a, d
    ld e, d
    ld a, c
    ld l, c
    ld l, b
    ld [hl], a
    and l
    sub [hl]
    adc c
    ld l, b
    add a
    add [hl]
    sbc b
    ld [hl], a
    sub a
    sub a
    ld [hl], a
    sub a
    add [hl]
    and [hl]
    add a
    add [hl]
    adc b
    ld l, c
    ld a, c
    ld h, a
    and [hl]
    add a
    ld a, b
    add a
    ld [hl], a
    ld h, l
    ld a, d
    ld l, c
    ld [hl], a
    ld a, d
    ld e, c
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, d
    ld e, b
    add [hl]
    sub [hl]
    sub a
    adc e
    ld h, a
    sub [hl]
    adc b
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    ld l, c
    add l
    and l
    or l
    ld a, b
    ld a, c
    ld e, c
    ld l, c
    ld h, [hl]
    sub l
    and l
    and l
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    sub l
    and [hl]
    add a
    adc b
    add [hl]
    adc b
    ld a, c
    adc c
    ld [hl], a
    add a
    adc b
    ld a, b
    add [hl]
    sub [hl]
    adc b
    add a
    adc b
    sub [hl]
    add a
    sub [hl]
    and l
    sub [hl]
    sub [hl]
    ld d, a
    adc b
    ld [hl], a
    sub l
    sub [hl]
    adc b
    add a
    adc b
    adc b
    ld l, d
    ld l, c
    ld e, d
    ld a, b
    ld a, b
    ld l, d
    ld l, c
    ld a, d
    ld l, c
    ld e, c
    ld a, b
    add a
    adc c
    ld e, d
    ld c, d
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld l, b
    ld a, b
    add [hl]
    and l
    sub [hl]
    adc b
    ld l, b
    ld a, b
    ld a, c
    ld l, b
    add [hl]
    ld a, c
    ld l, b
    add a
    ld [hl], a
    adc b
    adc c
    ld l, b
    adc b
    ld l, b
    add [hl]
    add a
    sub [hl]
    sub a
    ld a, b
    adc c
    ld c, d
    ld [hl], a
    adc b
    ld l, b
    sub l
    sub a
    ld a, b
    ld e, e
    ld c, c
    add a
    add a
    add [hl]
    sub l
    and h
    sbc c
    ld e, c
    ld a, b
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub [hl]
    adc b
    ld h, a
    sub a
    adc b
    ld l, b
    adc b
    db $76
    sub a
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    ld l, c
    ld l, b
    adc b
    ld a, b
    ld a, b
    adc c
    ld h, a
    add a
    and a
    ld l, d
    ld h, a
    sub [hl]
    sub a
    ld a, b
    ld [hl], a
    add a
    sub l

Call_00b_577c:
    and [hl]
    and l
    sub a
    adc b
    sub a
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add l
    or [hl]
    adc c
    ld e, c
    ld l, d
    ld e, b
    sub a
    sub [hl]
    add l
    sbc b
    ld a, b
    ld e, d
    ld c, d
    ld e, c
    ld [hl], a
    add a
    sub a
    ld l, c
    ld [hl], a
    ld a, c
    ld e, c
    add a
    ld [hl], a
    add a
    sub l
    and a
    add a
    add a
    add a
    ld a, c
    ld l, c
    ld l, c
    db $76
    and l
    sub l
    and a
    sub [hl]
    sub a
    sub [hl]
    sub [hl]
    add l
    and [hl]
    adc b
    add a
    add a
    add a
    add [hl]
    adc b
    ld a, c
    ld a, c
    ld l, c
    add a
    add a
    add [hl]
    add a
    adc b
    and a
    ld a, b
    ld a, b
    db $76
    sub [hl]
    sbc b
    ld l, c
    ld [hl], a
    ld [hl], a
    add [hl]
    sub [hl]
    and [hl]
    add a
    add a
    add a
    sub l
    add l
    and [hl]
    ld a, b
    ld a, c
    ld l, e
    ld e, b
    ld [hl], a
    add [hl]
    add a
    add a
    sub a
    ld a, c
    ld e, d
    ld e, d
    ld l, c
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    ld a, c
    ld a, b
    ld l, c
    ld l, c
    ld l, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    add a
    add a
    ld [hl], a
    adc b
    ld e, b
    ld l, c
    ld [hl], a
    add a
    adc b
    add [hl]
    sub [hl]
    adc b
    ld a, c
    ld a, b
    add a
    ld a, b
    db $76
    sub a
    add [hl]
    adc c
    ld a, d
    ld e, c
    ld l, b
    ld [hl], a
    sub [hl]
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld e, d
    sbc b
    ld [hl], a
    adc b
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    db $76
    and [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    add [hl]
    sub a
    add a
    add a
    add a
    ld [hl], a
    add a
    sub [hl]
    sub a
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    sbc b
    ld l, b
    ld a, b
    ld l, c
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    db $76
    sub [hl]
    and [hl]
    sub l
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add [hl]
    sub [hl]
    adc c
    ld e, d
    ld l, b
    adc b
    ld l, c
    ld h, a
    adc b
    adc b
    ld a, c
    ld e, c
    add a
    add a
    ld a, c
    ld a, b
    ld l, b
    add a
    sub l
    and l
    adc b
    add [hl]
    sub a
    adc b
    ld [hl], a
    add a
    sub a
    sub l
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    add [hl]
    sub a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    add a
    sub a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld h, [hl]
    sub [hl]
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b

Call_00b_5899:
    ld a, b

Call_00b_589a:
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, c
    sub $10
    nop
    ld de, $3423
    ld h, a
    sbc d
    cp e
    db $dd
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    db $ec
    res 7, c
    adc b
    db $76
    ld d, h
    ld b, e
    ld hl, $0011
    ld bc, $0000
    ld bc, $a212
    ld b, h
    ld d, [hl]
    ld a, b
    adc c
    sbc e
    cp h
    call c, $feed
    cp $ff
    xor $ee
    db $ec
    call c, $aa4b
    add a
    ld [hl], a
    ld h, h
    ld d, e
    ld [hl-], a
    ld [hl+], a
    ld de, $1110
    db $10
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld b, l
    add [hl]
    ld h, a
    adc b
    sbc d
    xor e
    cp h
    db $dd
    db $dd
    db $ed
    xor $de
    db $dd
    call c, $aabc
    xor c
    ld a, b
    ld h, a
    ld h, l
    ld d, h
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc hl
    inc [hl]
    ld b, l
    ld h, [hl]
    ld l, b
    ld a, c
    adc c
    xor e
    cp e
    call $eddc
    db $dd
    db $ed
    call $cbcc
    cp e
    xor c
    sbc b
    add [hl]
    sub [hl]
    ld h, l
    inc [hl]
    ld b, e
    ld [hl-], a
    inc sp
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    ld d, l
    ld d, [hl]
    ld [hl], a
    add a
    adc c
    ld c, d
    xor e
    cp e
    db $db
    call z, $cddd
    call z, $bbcc
    cp d
    xor c
    sbc b
    add a
    ld [hl], l
    ld h, l
    and l
    ld b, e
    inc sp
    ld b, d
    inc sp
    inc hl
    ld b, e
    ld b, e
    ld d, e
    ld d, h
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc c
    sbc c
    xor e
    ld e, e
    cp h
    cp h
    set 1, e
    set 1, e
    res 5, e
    xor d
    sbc b
    sub a
    add [hl]
    db $76
    ld d, l
    ld b, l
    or h
    ld b, h
    ld b, e
    ld b, e
    ld d, e
    ld b, h
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    add a
    adc c
    sbc c
    xor d
    cp e
    ld c, e
    cp e
    cp h
    cp e
    cp h
    xor d
    xor d
    sbc d
    sbc b
    adc c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    or h
    ld d, h
    ld b, h
    ld b, h
    ld d, l
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    adc d
    sbc d
    xor d
    cp d
    cp e
    ld c, e
    cp e
    cp e
    cp d
    xor c
    xor d
    adc c
    adc b
    ld a, b
    db $76

Call_00b_598a:
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, h
    or h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    adc d
    xor c
    xor d
    cp c
    cp d
    cp d
    ld e, e
    xor d
    xor e
    xor c
    sbc c
    sbc c
    adc b
    add a
    ld [hl], a
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    and [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    adc b
    sbc d
    sbc c
    xor c
    xor d
    sbc d
    xor d
    xor d
    ld e, c
    xor d
    sbc c
    sbc b
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    sub [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    add a
    adc c
    adc c
    adc c
    xor c
    xor d
    sbc d
    xor d
    sbc d
    xor c
    xor c
    ld l, d
    sbc c
    adc b
    adc b
    ld [hl], a
    add a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    sub a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    adc b
    sbc b
    sbc b
    xor c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc c
    sbc c
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    xor b
    sbc c
    sbc c
    adc c
    sbc d
    sbc c
    adc d
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    add a
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    db $76
    ld d, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc c
    adc c
    sbc c
    sbc c
    xor b
    sbc c
    sbc c
    xor c
    adc c
    adc b
    adc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc c
    ld a, c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    add a
    add a
    ld [hl], a
    sub [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    db $76
    ld h, a
    ld h, [hl]
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc c
    sbc c
    sbc c
    sbc d
    adc c
    adc c
    adc c
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    add a
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc c
    adc b
    ld a, b
    adc b
    sbc c
    adc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, c
    ld a, b
    adc b
    db $76
    add a
    db $76
    add a
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    sbc b
    adc c
    ld a, c
    adc b
    adc b
    sbc b
    adc c
    add a
    sbc b
    adc c
    ld a, b
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    sub a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    adc b
    ld l, b
    sbc b
    adc b
    sbc b
    adc b
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    ld a, b
    adc c
    adc b
    ld a, c
    ld a, c
    adc b
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    db $76
    add a
    ld h, a
    add a
    ld [hl], a
    add a
    sub a
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    sbc b
    ld [hl], a
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    db $e4
    nop
    nop
    ld bc, $2303
    ld b, [hl]
    ld h, [hl]
    adc b
    sbc c
    xor d
    set 1, l
    db $dd
    sbc $de
    ld c, [hl]
    cp $fe
    xor $ed
    db $ed
    call c, $bacc
    xor d
    sbc c
    adc b
    add [hl]
    db $76
    ld d, l
    ld b, e
    ld [hl], e
    ld [hl-], a
    ld [hl+], a
    ld de, $0111
    db $10
    ld bc, $2211
    ld [de], a
    inc sp
    inc sp
    ld b, h
    ld b, [hl]
    ld h, [hl]
    rst $00
    ld a, c
    adc d
    sbc e
    xor e
    call z, $ddcd
    adc $de
    db $ed
    xor $dd
    db $ed
    db $dd
    call c, $cb2c
    cp e
    sbc d
    sbc b
    add a
    db $76
    ld h, [hl]
    ld h, l
    ld b, l
    inc sp
    ld b, d
    ld hl, $2122
    ld hl, $11d1
    inc de
    inc hl
    inc hl
    inc [hl]
    ld b, h
    ld b, l
    ld h, l
    db $76
    ld a, b
    adc b
    sbc c
    xor d
    xor e
    cp h
    ld a, h
    call $dedc
    db $dd
    db $ed
    call $cdcd
    cp h
    cp e
    cp d
    cp d
    xor c
    sbc b
    sub a
    ld d, a
    ld h, [hl]
    ld [hl], l
    ld h, h
    ld b, l
    ld b, e
    inc sp
    inc h
    inc hl
    inc sp
    ld [hl+], a
    inc hl
    inc hl
    inc sp
    inc sp
    ld d, e
    push bc
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc b
    xor c
    xor e
    xor e
    cp e
    call z, $cccc
    db $dd
    db $dd
    inc a
    call c, $bbcc
    cp e
    xor d
    xor c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld d, a
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    add e
    ld b, d
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    inc sp
    ld b, e
    ld b, h
    ld d, h
    ld d, [hl]
    ld d, l
    ld h, a
    ld h, a
    ld a, b
    adc b
    xor c
    xor c
    sbc d
    xor d
    cp d
    jp z, $cbbc

    call z, $cbcb
    res 7, h
    cp d
    cp d
    cp c
    ld c, d
    adc c
    adc c
    adc b
    add [hl]
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld b, h
    ld b, e
    ld b, h
    inc [hl]
    inc sp
    ld b, e
    inc sp
    and e
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    add a
    sbc b
    sbc c
    xor c
    xor c
    xor e
    cp d
    ld a, e
    cp h
    cp e
    res 7, e
    cp e
    cp d
    xor e
    xor d
    xor d
    sbc d
    sbc c
    adc c
    ld a, b
    add a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld d, h
    ld b, l
    ld b, h
    ld b, l
    ld b, e
    ld d, h
    ld d, h
    ld b, l
    ld b, l
    ld b, l
    ld d, l
    ld d, [hl]
    and a
    ld h, a
    add a
    adc b
    sbc b
    sbc c
    sbc c
    xor e
    xor d
    xor d
    cp d
    cp e
    cp e
    cp d
    cp e
    cp e
    ld e, e
    xor c
    xor d
    xor c
    xor c
    sbc c
    sbc b
    adc b
    ld a, b
    db $76
    ld h, a
    ld h, [hl]
    ld d, l
    ld b, l
    ld b, l
    ld b, h
    sub h
    ld d, h
    ld b, h
    ld d, h
    ld d, h
    ld b, l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    adc b
    adc b
    adc c
    adc c
    sbc c
    xor c
    cp d
    sbc e
    xor e
    xor e
    cp d
    cp d
    cp c
    xor d
    xor d
    xor c
    xor c
    xor c
    sbc b
    ld e, c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, a
    ld h, l
    ld d, [hl]
    ld d, l
    ld b, l
    ld b, l
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    and l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    db $76
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, c
    adc c
    sbc c
    xor c
    xor c
    sbc d
    xor d
    ld l, d
    sbc d
    xor e
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    add a
    add a
    db $76
    db $76
    ld h, a
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    xor b
    ld [hl], a
    add a
    adc b
    adc c
    adc c
    sbc b
    xor c
    sbc d
    sbc d
    sbc c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    ld l, c
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    add a
    add a
    add [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    sub l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    db $76
    db $76
    add a
    ld h, a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc c
    sbc d
    sbc c
    sbc d
    sbc d
    xor c
    xor c
    xor c
    sbc c
    sbc d
    sbc c
    sbc c
    adc b
    sbc b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    sub a
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    ld l, c
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    add a
    adc c
    adc b
    adc c
    adc c
    adc c
    adc d
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    ld l, b
    sbc c
    sbc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    adc c
    adc b
    ld a, c
    adc c
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    adc b
    ld a, c
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    sub a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    add a
    sbc b
    sbc b
    adc c
    sbc b
    sbc b
    sbc c
    ld a, c
    adc c
    adc c
    adc c
    sbc b
    sbc b
    adc c
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    add a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    sub a
    adc c
    add a
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    sbc c
    adc b
    adc b
    adc c
    ld l, b
    adc b
    add a
    sbc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    adc b
    ld a, c
    ld a, c
    adc c
    adc b
    sbc b
    sbc c
    adc b
    adc c
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    add a
    adc b
    adc b
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld h, a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc b
    adc c
    ld a, c
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    add a
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    adc b
    ld a, c
    ld a, b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    sbc b
    add a
    sub a
    sub a
    sub a
    sub a
    ld a, b
    adc b
    ld a, c
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
    ld [hl], a
    db $76
    add a
    ld a, b
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, c
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld a, b
    ld h, a
    add a
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    add a
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    sbc b
    add a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    or [hl]
    ld sp, $0000
    ld bc, $2201
    inc [hl]
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, a
    adc b
    adc b
    xor c
    sbc d
    db $db
    cp e
    call $cdcd
    db $dd
    db $ed
    db $ed
    xor $ee
    rst $28
    xor $ee
    xor $ed
    db $ec
    dec a
    call $bbbc
    xor e
    cp d
    xor d
    xor b
    sbc b
    adc c
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld b, l
    ld b, h
    inc hl
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld hl, $1112
    ld de, $0100
    ld bc, $1100
    ld de, $1102
    or d
    ld [hl+], a
    inc [hl]
    inc sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc c
    sbc d
    sbc e
    xor e
    set 1, h
    call z, $dddd
    db $ed
    db $ed
    rst $28
    sbc $ee
    xor $ed
    rst $28
    sbc $ed
    db $dd
    ld c, l
    call z, $cacc
    jp z, $9aba

    sbc c
    adc b
    sub a
    add [hl]
    ld [hl], a
    ld d, [hl]
    ld h, l
    ld b, l
    ld b, h
    inc [hl]
    inc sp
    ld b, d
    inc sp
    ld [hl+], a
    ld [hl-], a
    ld hl, $2132
    ld sp, $2212
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    or e
    ld b, h
    ld b, e
    ld b, l
    ld d, l
    ld d, [hl]
    db $76
    ld h, a
    add a
    add a
    sbc b
    adc c
    sbc c
    sbc d
    xor d
    xor d
    cp e
    cp h
    cp h
    call z, $cdcd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    call $dddc
    call z, Call_00b_4bcc
    cp h
    cp d
    cp e
    xor e
    xor c
    sbc c
    sbc b
    sbc b
    ld a, b
    db $76
    add [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    inc sp
    ld b, e
    ld b, e
    ld [hl-], a
    inc sp
    inc hl
    inc hl
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc hl
    inc sp
    inc sp
    inc sp
    and e
    ld b, h
    inc [hl]
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    sub a
    sbc b
    sbc c
    sbc c
    xor e
    xor e
    cp d
    xor e
    res 7, h
    cp e
    call $dcbc
    call c, $ccdc
    db $dd
    call $ccbc
    bit 1, e
    cp d
    xor e
    xor c
    xor d
    xor c
    sbc c
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    inc sp
    inc sp
    ld b, e
    inc hl
    inc [hl]
    inc sp
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    and h
    ld b, h
    ld b, h
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, a
    db $76
    ld a, b
    ld [hl], a
    ld a, c
    adc c
    adc c
    sbc c
    xor c
    xor d
    xor d
    cp e
    xor e
    cp e
    cp e
    cp h
    xor h
    cp h
    cp e
    cp h
    res 7, h
    cp h
    cp h
    cp h
    cp e
    ld e, e
    xor d
    xor e
    xor d
    xor c
    sbc d
    sbc b
    sbc b
    sbc b
    add a
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    inc [hl]
    ld b, h
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    sub h
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    xor e
    cp d
    cp d
    res 5, e
    cp h
    xor h
    cp e
    cp e
    cp d
    cp e
    xor d
    ld l, d
    cp d
    xor d
    xor d
    xor c
    sbc c
    sbc c
    adc b
    adc c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    ld b, l
    ld d, h
    ld d, l
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    and h
    ld d, h
    ld d, l
    ld d, h
    ld h, l
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    xor c
    sbc c
    xor c
    sbc d
    xor d
    xor d
    xor e
    xor d
    cp d
    cp e
    cp d
    cp d
    xor e
    xor e
    xor d
    xor e
    xor d
    xor d
    ld l, d
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    ld [hl], a
    add a
    db $76
    db $76
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    add l
    ld d, l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, b
    add a
    adc b
    ld a, c
    adc b
    sbc c
    sbc c
    sbc d
    adc d
    sbc c
    sbc e
    sbc d
    xor d
    xor d
    cp c
    cp e
    xor d
    xor d
    cp d
    xor e
    xor e
    xor d
    xor d
    ld a, e
    sbc d
    sbc d
    xor c
    sbc c
    sbc b
    sbc c
    adc c
    adc b
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld b, l
    ld h, l
    ld d, l
    sub l
    ld b, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    xor b
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    xor d
    xor d
    xor c
    xor e
    sbc e
    sbc d
    xor d
    sbc d
    xor c
    xor d
    ld l, c
    sbc d
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    adc b
    sub a
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, l
    ld h, h
    ld h, [hl]
    add [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    adc c
    sbc c
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    xor c
    xor c
    xor d
    xor c
    xor d
    xor c
    xor d
    xor c
    xor d
    ld a, c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, l
    add [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, l
    db $76
    ld [hl], a
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc b
    xor c
    sbc c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc d
    xor c
    sbc d
    adc c
    sbc c
    adc c
    xor c
    adc c
    sbc c
    adc c
    sbc b
    adc c
    adc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld d, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    add [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    adc b
    ld a, b
    xor b
    adc c
    adc b
    adc b
    adc c
    adc b
    adc c
    adc c
    adc c
    sbc d
    adc c
    xor c
    sbc c
    xor c
    xor c
    sbc d
    ld a, c
    sbc c
    xor c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    sbc c
    adc b
    adc b
    adc c
    adc b
    adc b
    add a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sbc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    ld a, c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    db $76
    db $76
    add [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    sub a
    sub a
    adc b
    adc b
    sbc b
    adc b
    sbc c
    adc c
    adc b
    sbc c
    sbc c
    adc b
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    adc b
    sbc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    xor b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    adc b
    adc b
    ld l, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    sbc b
    sbc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    adc c
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc c
    adc b
    sbc c
    sbc b
    adc b
    sbc b
    sbc b
    adc c
    add a
    sbc b
    adc b
    add a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld h, a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld l, b
    ld l, b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    sbc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    sub a
    adc c
    adc b
    adc b
    sbc b
    adc b
    add a
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    ld a, c
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    sub a
    sbc b
    adc c
    adc c
    add a
    sub a
    adc b
    adc b
    adc b
    sbc b
    ld a, b
    sbc b
    ld a, b
    adc b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    ld a, b
    adc c
    adc b
    add a
    sbc b
    ld a, b
    ld l, b
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc b

jr_00b_6379:
    sbc b
    adc b
    adc b
    adc b
    adc c
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    sub a
    adc b
    sbc b
    ld h, a
    sub l
    or h
    and [hl]
    sub [hl]
    and l
    adc b
    ld l, e
    ld e, b
    and h
    and l
    jp $78a6


    ld [hl], a
    db $76
    adc b
    add a
    add a
    ld a, c
    ld e, d
    ld a, b
    add [hl]
    sub [hl]
    sbc b
    ld l, c
    ld a, [hl-]
    adc b
    ld h, a
    or [hl]
    ld a, c
    sub a
    add a
    ld e, d
    ld a, b
    ld h, a
    call nz, Call_00b_4b99
    add h
    jp nz, Jump_00b_79d5

    ld l, c
    adc b
    ld c, h
    ld h, l
    jr z, jr_00b_6379

    ld l, d
    ld e, h
    ld a, [hl-]
    ld c, a
    add hl, de
    ld l, e
    ld h, h
    cp d
    dec e
    ld e, c
    ld a, b
    ld h, a
    sub [hl]
    ld a, e
    ld a, h
    ld e, b
    ld l, e
    ld h, [hl]
    or e
    call nz, Call_00b_589a
    ld l, d
    ld e, e
    ld b, [hl]
    pop de
    call nz, $5bd6
    ld h, a
    ld e, e
    ld c, e
    ld d, a
    or d
    push de
    ld e, l
    ld a, [hl+]
    sub l
    adc c
    ld c, h
    ld a, [hl+]
    sub a
    ld e, d
    ld c, c
    adc b
    ld e, e
    sbc b
    adc c
    inc a
    ld c, d
    ld [hl], a
    sub a
    ld l, c
    add [hl]
    cp b
    ld h, [hl]
    or h
    or h
    sub [hl]
    ld a, e
    ld e, b
    sub [hl]
    sub [hl]
    sub [hl]
    sub l
    pop bc
    xor e
    ld c, $47
    jp $8597


    and [hl]
    and l
    sub [hl]
    sub [hl]
    and h
    sub a
    ld d, [hl]
    ld a, d
    ld l, b
    ld l, b
    sub a
    sub l
    and a
    ld a, $58
    adc c
    ld a, [hl-]
    ld l, e
    ld d, a
    or e
    ld a, d
    ld l, d
    ld l, h
    ld a, [de]
    sub a
    add a
    sub l
    or l
    or e
    push bc
    ld a, c
    add [hl]
    sbc b
    ld l, b
    ld [hl], a
    add [hl]
    or c
    push bc
    xor d
    ld [hl], a
    sbc b
    ld a, d
    ld a, [hl-]
    ld [hl], l
    xor b
    dec l
    ld [hl], l
    sbc c
    ld c, h
    ld c, e
    ld c, c
    ld e, e
    dec sp
    ld [hl], l
    sub [hl]
    and l
    sub a
    add [hl]
    or l
    add [hl]
    adc c
    add e
    call nc, $b5a5
    and l
    and l
    adc c
    ld h, a
    add a
    and h
    or [hl]
    ld l, d
    ld [hl], a
    sub [hl]
    add a
    adc c
    ld l, b
    sub l
    adc b
    ld l, h
    dec de
    ld [hl], a
    sub [hl]
    add [hl]
    or l
    sub l
    add l
    ld a, l
    ld a, [hl-]
    ld l, c
    ld c, d
    add l
    call nz, Call_00b_4a7b
    ld l, c
    ld l, b
    ld l, d
    ld l, b
    sub [hl]
    sub l
    xor b
    ld l, c
    ld e, c
    add a
    ld l, c
    ld l, d
    ld l, c
    ld h, a
    sub h
    or l
    sub a
    or e
    adc b
    add a
    ld a, d
    ld e, b
    ld b, h
    add a
    and h
    ld l, e
    ld e, c
    ld l, d
    ld c, d
    adc b
    ld l, b
    ld l, b
    ld a, b
    add a
    ld a, c
    dec a
    ld d, a
    sbc c
    adc e
    ld e, c
    ld [hl], a
    and e
    xor b
    ld c, c
    sub a
    ld l, d
    add [hl]
    sub [hl]
    add l
    or a
    ld l, b
    adc c
    ld h, a
    add [hl]
    ld e, c
    ld h, [hl]
    sbc b
    ld e, h
    dec e
    ld l, b
    ld e, c
    add l
    and a
    ld l, b
    adc b
    ld c, e
    ld l, e
    ld b, h
    call nc, Call_00b_7a99
    db $76
    adc d
    ld [hl], l
    or h
    xor b
    add a
    ld e, b
    sbc b
    ld [hl], l
    and [hl]
    sub h
    or l
    or l
    ld a, e
    dec sp
    ld b, a
    adc b
    sub h
    and a
    ld [hl], a
    sub l
    and [hl]
    adc b
    ld c, e
    ld h, [hl]
    or l
    and l
    sbc b
    sub h
    xor b
    ld l, d
    cp d
    ld l, d
    ld h, a
    add a
    and e
    or a
    ld h, a
    adc b
    adc b
    ld e, d
    ld c, e
    ld c, c
    and h
    sub a
    ld l, h
    ld d, [hl]
    ld [hl], d
    cp b
    ld e, b
    sub [hl]
    ld a, b
    sub a
    sub l
    ld a, b
    sub l
    sbc b
    sub [hl]
    ld e, d
    db $76
    adc b
    add l
    push bc
    sub a
    and l
    ld l, e
    ld e, b
    adc b
    db $76
    or [hl]
    ld a, b
    and h
    sbc d
    inc l
    db $76
    add a
    and [hl]
    ld a, d
    ld d, a
    ld a, c
    dec sp
    ld [hl], a
    add a
    ld a, c
    sub [hl]
    ld l, b
    sub [hl]
    ld a, c
    ld a, b
    ld l, b
    ld l, b
    and [hl]
    ld l, c
    sub d
    rst $10
    xor b
    ld h, a
    and [hl]
    add [hl]
    ld l, d
    add a
    ld a, b
    sub [hl]
    ld l, c
    adc c
    ld c, d
    add l
    adc c
    ld h, [hl]
    xor b
    ld h, a
    add [hl]
    ld l, b
    adc b
    ld e, d
    ld e, e
    ld d, [hl]
    ld a, b
    or l
    ld a, b
    add a
    or e
    xor c
    ld a, [hl-]
    ld a, c
    add h
    sbc b
    ld h, a
    and d
    db $d3
    sbc c
    ld l, d
    ld c, b
    adc d
    ld e, b
    sub [hl]
    add [hl]
    sub a
    sub [hl]
    add [hl]
    adc d
    ld e, c
    ld a, b
    ld [hl], $a6
    ld l, e
    ld b, a
    sub [hl]
    ld e, h
    ld l, c
    ld c, d
    ld l, d
    ld l, b
    and l
    ld e, h
    ld l, b
    add a
    ld e, e
    ld c, h
    xor b
    and a
    ld a, b
    ld a, b
    ld h, a
    ld a, d
    sub l
    ld a, c
    ld [hl], l
    or l
    ld a, c
    sub [hl]
    ld a, b
    sub l
    xor b
    db $76
    ld d, l
    sbc b
    ld [hl], a
    ld a, c
    add l
    adc d
    ld c, c
    sub a
    ld e, d
    add l
    sbc b
    ld e, b
    and h
    adc c
    ld l, c
    ld c, e
    xor b
    sub l
    add a
    or [hl]
    add [hl]
    adc d
    ld l, c
    ld c, e
    ld [hl], l
    or a
    add l
    pop bc
    or [hl]
    sbc c
    inc l
    ld h, a
    ld d, a
    ld l, b
    sbc b
    db $76
    sbc b
    db $76
    adc c
    add e

Call_00b_65a8:
    or a
    ld l, c
    adc b
    ld l, c
    ld h, h
    push bc
    and e
    cp b
    sub a
    and [hl]
    adc c
    ld h, [hl]
    and a
    sub h
    and a
    add l
    xor c
    ld h, a
    ld l, c
    sub [hl]
    ld a, b
    ld l, l
    ld b, l
    call nz, $8895
    sub [hl]
    add l
    xor c
    ld h, a
    and [hl]
    add e
    cp b
    and l
    ld l, c
    sub [hl]
    add a
    and h
    xor b
    ld l, c
    ld [hl], a
    ld c, d
    sub [hl]
    ld a, b
    or d
    cp b
    ld e, e
    ld l, d
    dec e
    ld h, a
    adc c
    ld h, [hl]
    xor c
    ld e, c
    ld h, a
    ld l, e
    ld a, c
    ld c, h
    ld d, a
    sbc b
    ld c, c
    adc d
    ld h, l
    and a
    add a
    ld l, c
    and [hl]
    ld e, e
    ld h, [hl]
    ld a, c
    and e
    or [hl]
    sub [hl]
    push bc
    ld l, d
    ld e, c
    ld l, b
    sbc c
    ld [hl], l
    ld a, c
    db $76
    sub [hl]
    ld l, e
    ld e, d
    ld c, d
    sub a
    ld l, d
    ld h, l
    ld l, d
    ld h, a
    ld h, a
    sbc d
    dec sp
    ld e, b
    ld a, b
    ld l, c
    add a
    ld [hl], a
    sbc c
    ld c, b
    sbc b
    ld [hl], a
    sub l
    and a
    adc c
    and l
    ld a, d
    ld e, c
    sub a
    and l
    ld l, e
    ld h, [hl]
    adc d
    db $76
    ld l, c
    add [hl]
    adc c
    add [hl]
    ld a, d
    ld e, b
    sbc b
    ld a, d
    ld d, [hl]
    sub a
    add [hl]
    sbc b
    ld e, b
    sub a
    ld l, d
    db $76
    ld [hl], a
    or [hl]
    ld a, d
    db $76
    adc d
    ld h, a
    add [hl]
    add a
    ld a, c
    ld l, d
    ld [hl], l
    sbc c
    ld c, d
    add l
    or [hl]
    add h
    rst $00
    db $76
    ld a, c
    adc b
    ld [hl], h
    sbc c
    ld b, h
    or a
    ld a, b
    sub a
    adc b
    ld e, b
    add a
    adc b
    ld a, b
    ld l, c
    and l
    ld a, c
    ld h, a
    sbc c
    ld a, [hl-]
    adc c
    adc c
    ld a, d
    ld h, [hl]
    add a
    sbc b
    ld e, b
    and a
    ld d, a
    and a
    ld a, b
    ld h, a
    or a
    ld h, a
    add l
    or a
    and h
    ld [hl], a
    ld l, e
    ld h, [hl]
    sub a
    add a
    add a
    sub l
    xor c
    ld e, b
    add [hl]
    adc b
    adc b
    add h
    adc c
    add a
    db $76
    adc e
    ld h, [hl]
    add a
    and l
    ld l, b
    sub a
    ld h, a
    xor b
    ld h, [hl]
    xor b
    db $76
    sub l
    xor c
    ld c, b
    sbc c
    ld d, a
    ld a, d
    ld h, [hl]
    add $6a
    ld h, a
    or a
    ld h, [hl]
    xor c
    ld d, a
    sbc c
    ld [hl], l
    sub a
    sub [hl]
    add l
    sbc c
    ld h, a
    ld c, c
    ld l, d
    ld a, c
    ld h, a
    db $76
    push bc
    adc d
    ld b, a
    or a
    ld l, c
    add a
    ld c, e
    db $76
    ld a, d
    ld [hl], h
    sbc c
    sbc e
    add [hl]
    ld a, c
    db $76
    adc d
    ld [hl], l
    and a
    ld [hl], a
    adc c
    ld c, e
    db $76
    adc c
    ld e, b
    or h
    or [hl]
    db $76
    sub a
    ld a, c
    ld l, b
    ld a, b
    or h
    sbc b
    ld l, c
    sub [hl]
    ld l, d
    add [hl]
    ld l, e
    ld h, l
    xor b
    ld l, c
    ld e, e
    ld [hl], a
    ld h, a
    ld e, e
    ld [hl], l
    adc c
    ld h, [hl]
    adc c
    add l
    ld a, c
    ld a, c
    ld a, b
    ld l, b
    add [hl]
    ld a, d
    add l
    ld a, c
    adc c
    add [hl]
    sbc c
    ld [hl], a
    ld l, c
    sub l
    adc d
    db $76
    ld l, d
    and l
    ld h, a
    adc b
    add a
    adc b
    adc b
    ld e, b
    and h
    add a
    ld a, b
    add a
    ld a, d
    ld l, d
    ld c, b
    and [hl]
    add h
    sbc c
    ld h, a
    sbc b
    ld a, c
    ld e, c
    ld e, b
    or e
    sbc b
    adc c
    add l
    ld a, d
    db $76
    ld l, c
    sub [hl]
    ld a, d
    db $76
    ld a, c
    adc c
    ld [hl], l
    ld a, d
    add l
    xor b
    ld h, a
    adc b
    sub a
    add l
    add a
    sub a
    ld a, d
    db $76
    ld l, d
    adc b
    ld e, b
    ld a, b
    add h
    xor b
    ld e, e
    ld l, b
    adc b
    ld e, b
    ret z

    ld l, b
    and [hl]
    ld l, d
    ld h, a
    sbc b
    ld d, a
    or [hl]
    ld a, c
    add l
    sbc b
    add a
    and l
    add a
    add a
    ld [hl], a
    ld [hl], h
    adc b
    sub [hl]
    ld l, d
    add a
    ld h, a
    and [hl]
    ld a, d
    db $76
    or [hl]
    ld l, b
    adc c
    ld h, a
    add a
    ld a, c
    ld l, c
    ld h, [hl]
    add [hl]
    adc b
    adc c
    ld [hl], a
    ld e, c
    sub a
    ld h, a
    and [hl]
    add a
    add [hl]
    ld a, d
    add l
    sbc b
    ld h, a
    and a
    ld b, a
    ld a, c
    ld l, c
    add a
    sub [hl]
    sub l
    and l
    ld l, e
    ld l, c
    ld d, [hl]
    sbc c
    ld [hl], l
    and [hl]
    ld [hl], a
    and a
    ld a, b
    ld l, b
    sbc b
    ld d, [hl]
    add $85
    sub a
    ld l, d
    ld l, b
    sub l
    ld a, e
    ld h, a
    sub [hl]
    ld l, e
    ld h, a
    ld e, d
    sub [hl]
    xor d
    ld l, b
    ld a, c
    ld a, c
    db $76
    ld a, d
    add [hl]
    adc c
    ld h, [hl]
    and a
    ld l, d
    add [hl]
    ld l, d
    add l
    xor b
    ld d, a
    ld h, [hl]
    ld l, c
    sub l
    adc c
    db $76
    adc c
    ld c, c
    add [hl]
    adc d
    ld c, c
    ld h, a
    sbc b
    ld a, b
    ld c, e
    add h
    sbc c
    and a
    ld a, d
    add a
    db $76
    adc d
    ld d, a
    and a
    db $76
    adc d
    ld e, c
    add a
    adc c
    ld [hl], l
    or h
    and [hl]
    ld a, b
    db $76
    ld l, b
    sbc c
    ld [hl], l
    and a
    add l
    sbc b
    add [hl]
    ld [hl], a
    ld a, d
    sub [hl]
    ld l, c
    db $76
    sbc c
    ld h, l
    sbc b
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld e, c
    sub [hl]
    ld a, b
    ld l, c
    sub a
    adc b
    add a
    ld l, c
    sub l
    sbc c
    db $76
    adc d
    ld d, a
    sbc c
    ld e, b
    ld e, d
    sub l
    sub a
    db $76
    and a
    sub a
    add a
    ld e, c
    sub l
    sbc b
    ld [hl], l
    or l
    ld a, c
    db $76
    ld a, d
    db $76
    adc d
    add l
    sbc b
    ld a, c
    ld h, a
    adc b
    add [hl]
    adc c
    ld l, b
    ld l, b
    add a
    ld l, b
    ld a, b
    ld e, d
    sub l
    ld a, d
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld l, c
    and [hl]
    ld l, d
    ld l, b
    sub [hl]
    adc b
    adc b
    ld l, b
    and l
    ld a, d
    ld l, b
    ld a, c
    ld d, a
    and [hl]
    adc c
    db $76
    adc c
    sbc b
    ld h, a
    ld a, d
    ld [hl], a
    ld [hl], a
    add [hl]
    sbc c
    ld [hl], a
    add [hl]
    adc c
    ld l, b
    ld [hl], a
    adc c
    ld h, a
    sub [hl]
    ld [hl], a
    and l
    adc b
    add a
    ld a, b
    sbc c
    ld h, a
    add l
    sbc b
    sub [hl]
    ld e, c
    sub [hl]
    sbc b
    ld h, a
    add [hl]
    ld a, c
    sub a
    ld l, c
    ld l, b
    and [hl]
    ld l, c
    db $76
    ld a, b
    add a
    ld l, d
    ld [hl], a
    ld e, c
    adc c
    ld h, [hl]
    adc c
    ld l, c
    ld l, c
    adc c
    ld e, b
    ld a, b
    ld [hl], a
    sub a
    ld l, c
    ld e, d
    sub a
    ld e, b
    sbc b
    ld l, b
    sub [hl]
    adc b
    ld l, b
    sub [hl]
    ld a, c
    ld [hl], a
    sub [hl]
    ld l, c
    sub [hl]
    ld a, d
    ld d, [hl]
    and a
    ld [hl], a
    and [hl]
    ld a, b
    sub l
    ld a, c
    db $76
    adc c
    ld e, c
    sub l
    ld a, d
    ld h, [hl]
    sbc b
    ld [hl], a
    adc b
    cp d
    ld [hl], a
    ld l, d
    add a
    ld h, a
    xor b
    add l
    sbc b
    ld h, a
    sbc b
    ld e, d
    db $76
    adc b
    add l
    adc c
    ld h, [hl]
    or l
    add [hl]
    adc b
    sbc b
    ld [hl], l
    sbc d
    ld e, b
    sub a
    add l
    xor b
    ld a, b
    ld e, b
    adc c
    ld h, a
    adc b
    ld h, [hl]
    sub [hl]
    add l
    xor b
    ld h, [hl]
    adc c
    db $76
    add [hl]
    sbc c
    ld [hl], l
    xor b
    add a
    ld a, c
    db $76
    ld [hl], a
    or a
    ld [hl], l
    ld [hl], a
    ld e, c
    adc b
    db $76
    adc c
    add [hl]
    ld l, d
    sub [hl]
    sub a
    ld l, c
    add a
    ld [hl], a
    sub l
    sbc c
    ld h, a
    sub l
    ld l, d
    ld h, a
    ld l, c
    sub a
    ld a, b
    add a
    sub [hl]
    adc b
    ld e, c
    add [hl]
    adc c
    ld l, b
    add a
    adc b
    ld [hl], l
    adc d
    ld [hl], a
    ld a, d
    ld h, l
    xor b
    ld e, d
    add a
    ld l, d
    ld e, b
    sbc b
    ld h, a
    sub a
    and a
    ld [hl], a
    adc c
    ld h, [hl]
    and [hl]
    adc b
    sub a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    add a
    adc c
    ld l, b
    sub a
    ld [hl], a
    sub a
    ld a, d
    db $76
    ld a, b
    ld e, d
    ld h, a
    ld l, b
    add a
    ld l, d
    add [hl]
    add a
    ld a, d
    ld h, [hl]
    add a
    adc b
    ld h, a
    sub a
    add a
    adc b
    ld h, [hl]
    sub a
    ld a, d
    add l
    ld l, d
    ld l, b
    adc b
    add h
    sbc b
    add [hl]
    adc b
    ld l, b
    sub l
    ld a, d
    db $76
    add a
    sub a
    ld a, c
    ld a, b
    sub [hl]
    ld l, d
    ld [hl], a
    ld l, c
    and [hl]
    ld l, c
    add a
    adc b
    ld h, a
    add [hl]
    ld a, c
    sub [hl]
    ld l, c
    ld a, c
    ld l, b
    adc b
    ld l, b
    adc c
    ld [hl], l
    sbc c
    add a
    ld e, d
    adc c
    ld d, a
    sub a
    adc b
    sub a
    sub [hl]
    adc b
    sub [hl]
    ld l, c
    sub a
    ld l, b
    ld a, c
    add [hl]
    sub a
    db $76
    adc c
    adc b
    db $76
    sbc b
    db $76
    ld a, d
    db $76
    sub a
    ld a, b
    add [hl]
    adc c
    ld h, a
    sbc b
    ld e, c
    add a
    ld l, c
    db $76
    adc c
    ld e, b
    sub a
    ld e, c
    add [hl]
    adc c
    ld h, a
    and [hl]
    ld a, b
    db $76
    sbc b
    ld h, a
    or [hl]
    ld a, c
    db $76
    adc b
    ld [hl], l
    xor b
    ld e, b
    sub [hl]
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    and a
    ld l, b
    add a
    ld h, a
    sub a
    ld [hl], a
    sub a
    sub a
    ld e, c
    adc b
    ld h, a
    sbc c
    ld h, a
    db $76
    or a
    db $76
    adc c
    add [hl]
    and a
    db $76
    xor b
    ld h, a
    adc c
    db $76
    add [hl]
    adc d
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld h, [hl]
    ld a, b
    sub [hl]
    sub [hl]
    adc b
    sub [hl]
    ld l, d
    ld h, a
    ld l, c
    sub [hl]
    ld a, b
    ld [hl], a
    and [hl]
    ld l, d
    db $76
    ld a, c
    db $76
    adc c
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    adc c
    ld l, b
    add [hl]
    ld a, c
    add a
    sbc b
    ld d, a
    sbc b
    ld a, b
    db $76
    adc b
    ld [hl], l
    sbc c
    ld l, b
    adc b
    ld [hl], a
    add a
    adc b
    ld e, b
    and [hl]
    ld l, d
    ld l, b
    sub a
    ld [hl], a
    sub [hl]
    ld a, d
    ld [hl], l
    adc c
    ld l, b
    add a
    ld [hl], a
    sub a
    ld l, c
    db $76
    and a
    ld e, d
    add [hl]
    add a
    add a
    ld a, d
    ld h, [hl]
    sub a
    sbc c
    sub [hl]
    ld a, b
    ld l, b
    and [hl]
    ld l, d
    ld d, a
    sbc b
    ld h, [hl]
    and a
    ld l, b
    adc b
    ld [hl], a
    add a
    add a
    ld h, a
    add l
    xor b
    db $76
    adc c
    add [hl]
    sbc b
    ld h, [hl]
    adc b
    sub a
    adc b
    ld h, a
    and [hl]
    ld a, c
    add [hl]
    ld a, d
    ld h, [hl]
    ld a, d
    ld d, a
    adc b
    sbc b
    ld h, [hl]
    adc d
    ld [hl], l

Call_00b_69a7:
    adc b
    ld a, b
    ld a, c
    add [hl]
    ld [hl], a
    sbc c
    add l
    ld a, c
    add [hl]
    ld l, c
    add [hl]
    ld l, d
    sub [hl]
    ld [hl], a
    adc c
    sub [hl]
    ld a, c
    add a
    ld l, b
    sub a
    db $76
    xor b
    ld [hl], l
    adc c
    add a
    sbc c
    adc b
    ld h, a
    sbc b
    ld e, c
    add a
    ld h, a
    sub a
    ld a, b
    db $76
    sbc b
    ld h, a
    sub a
    ld a, b
    add a
    ld l, c
    ld [hl], l
    sbc b
    ld [hl], a
    sub a
    ld l, c
    ld [hl], l
    sbc b
    ld l, b
    sub [hl]
    ld a, b
    add [hl]
    adc c
    db $76
    adc c
    ld h, a
    adc c
    sub a
    ld [hl], a
    sbc b
    ld l, b
    add a
    ld a, c
    add a
    adc c
    ld h, a
    sub a
    ld e, c
    add a
    ld a, b
    db $76
    xor b
    ld e, c
    ld h, [hl]
    ld l, c
    sbc b
    ld h, [hl]
    adc c
    add l
    adc c
    add [hl]
    add a
    add a
    ld l, b
    adc b
    ld l, b
    add a
    ld a, c
    add a
    ld a, b
    ld a, b
    sub a
    ld l, b
    add a
    sub [hl]
    ld l, c
    ld [hl], a
    db $76
    sbc c
    ld a, c
    ld [hl], a
    adc b
    adc c
    ld l, b
    ld a, b
    add a
    and a
    ld l, b
    add [hl]
    sbc b
    db $76
    adc d
    ld h, a
    ld l, b
    adc b
    add a
    ld a, b
    ld [hl], a
    adc c
    db $76
    ld a, c
    add a
    ld a, c
    ld h, a
    sbc b
    ld l, b
    sub [hl]
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    adc c
    ld l, b
    and a
    ld h, a
    xor b
    ld h, a
    add a
    add [hl]
    sbc c
    db $76
    ld a, d
    ld a, b
    db $76
    adc c
    add l
    adc c
    add [hl]
    ld a, b
    ld a, c
    add [hl]
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    sub a
    ld a, c
    add [hl]
    ld a, b
    add l
    adc c
    db $76
    sbc c
    ld l, c
    db $76
    sbc b
    db $76
    sub a
    ld a, b
    db $76
    sbc b
    ld h, a
    sub a
    ld l, b
    sub a
    ld a, c
    db $76
    sbc b
    ld [hl], a
    add [hl]
    adc c
    db $76
    adc c
    db $76
    adc c
    ld h, a
    add a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld l, d
    add a
    ld [hl], a
    sbc c
    ld [hl], l
    sbc b
    ld [hl], a
    ld a, d
    add a
    adc c
    add [hl]
    ld a, b
    sbc b
    ld l, b
    ld l, c
    add [hl]
    add a
    adc b
    ld a, b
    add a
    ld e, c
    sub a
    ld [hl], a
    ld a, c
    ld h, [hl]
    adc b
    ld [hl], a
    ld l, c
    sbc b
    ld h, [hl]
    adc c
    ld a, b
    ld a, c
    ld [hl], a
    adc c
    ld h, a
    sbc b
    add [hl]
    ld l, b
    sub a
    ld a, b
    ld l, b
    sbc b
    ld d, a
    sub a
    ld h, a
    and [hl]
    ld l, b
    sbc b
    add a
    ld e, c
    sub [hl]
    ld a, c
    add [hl]
    ld a, d
    add l
    sbc b
    ld a, b
    adc b
    ld h, a
    add a
    add a
    adc b
    add a
    adc c
    ld [hl], a
    ld l, c
    ld [hl], a
    sub l
    ld a, c
    ld [hl], a
    ld a, b
    add a
    adc b
    ld h, a
    and a
    ld l, b
    add a
    ld a, c
    db $76
    sub a
    ld a, b
    add [hl]
    ld a, b
    sub a
    ld l, b
    add [hl]
    ld a, b
    sbc b
    db $76
    adc b
    ld a, c
    db $76
    sbc c
    ld h, a
    adc b
    db $76
    adc c
    ld [hl], a
    ld [hl], a
    adc c
    ld d, a
    sbc b
    ld h, a
    ld l, c
    ld h, [hl]
    sbc b
    ld a, b
    ld a, c
    ld l, c
    db $76
    sbc b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld e, c
    add [hl]
    adc c
    add [hl]
    ld l, c
    sub l
    sbc b
    ld l, c
    add [hl]
    sub a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    ld a, b
    and [hl]
    ld a, b
    add a
    add a
    ld a, c
    add [hl]
    ld a, b
    ld a, c
    ld [hl], a
    ld l, c
    add a
    ld l, c
    add [hl]
    adc b
    ld a, c
    ld h, [hl]
    ld a, c
    db $76
    sbc c
    ld h, [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    db $76
    sbc b
    ld h, a
    sub a
    ld a, c
    ld h, a
    adc c
    db $76
    sbc b
    ld h, a
    sub a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, c
    sub [hl]
    sbc c
    ld [hl], a
    adc b
    ld l, b
    sub l
    adc b
    sub a
    ld a, c
    db $76
    adc c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld h, [hl]
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld h, a
    sub a
    ld a, b
    adc b
    db $76
    adc c
    ld [hl], a
    adc b
    ld h, a
    add a
    ld a, d
    db $76
    ld a, d
    db $76
    adc b
    add a
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    ld h, a
    adc c
    add [hl]
    ld a, c
    add a
    ld l, d
    add a
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    sub a
    ld h, a
    sub a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld l, c
    add a
    ld l, c
    add [hl]
    adc c
    add [hl]
    adc b
    ld l, b
    sub [hl]
    ld a, b
    add [hl]
    adc c
    ld a, b
    add a
    ld [hl], a
    sbc b
    ld a, b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld l, c
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    ld a, c
    add [hl]
    ld l, c
    add a
    ld a, c
    sub [hl]
    ld a, b
    sbc b
    add [hl]
    adc b
    add a
    ld l, c
    add a
    ld a, b
    ld l, d
    add [hl]
    ld l, b
    add a
    ld a, c
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    ld [hl], a
    adc c
    ld a, b
    ld e, c
    add a
    ld l, c
    adc b
    ld l, b
    add a
    adc c
    add [hl]
    sbc b
    ld l, b
    add a
    sub a
    add a
    adc b
    ld l, b
    sub a
    ld a, b
    ld a, b
    ld l, b
    sub a
    ld l, b
    sbc b
    ld a, b
    add a
    ld a, b
    add a
    adc b
    ld l, b
    sbc b
    ld l, b
    add [hl]
    ld a, c
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, c
    sub [hl]
    ld a, b
    adc b
    db $76
    adc b
    ld a, b
    ld l, b
    sub a
    ld a, b
    adc b
    ld h, a
    sub a
    ld [hl], a
    sbc b
    ld [hl], a
    db $76
    sbc b
    ld [hl], a
    adc b
    db $76
    sbc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b

Call_00b_6bdc:
    ld h, a
    sub a
    add [hl]
    ld [hl], a
    sub a
    ld h, a
    sub a
    ld [hl], a
    add a
    add [hl]
    ld a, b
    add a
    ld l, c
    add [hl]
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld h, [hl]
    adc b
    add [hl]
    add a
    ld a, b
    sub a
    ld a, b
    sub a
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    sbc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc c
    ld a, b
    ld l, b
    add a
    ld l, b
    adc b
    add [hl]
    adc b
    add [hl]
    adc c
    db $76
    ld l, b
    ld l, c
    add [hl]
    adc c
    db $76
    sbc b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    adc c
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    add [hl]
    adc c
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    add [hl]
    adc c
    ld h, a
    sub a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    ld a, c
    ld h, a
    sub [hl]
    adc b
    db $76
    adc c
    ld l, b
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    adc c
    add [hl]
    ld a, c
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, c
    add [hl]
    adc b
    db $76
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, c
    db $76
    ld a, c
    add [hl]
    adc b
    add a
    ld h, a
    sbc b
    db $76
    adc c
    db $76
    ld a, c
    ld [hl], a
    adc c
    add [hl]
    ld [hl], a
    sbc b
    add a
    ld a, b
    adc b
    add [hl]
    sbc b
    ld h, [hl]
    sbc b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld l, b
    sub [hl]
    ld l, b
    ld l, b
    adc b
    ld l, b
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    add a
    adc b
    sub a
    add a
    ld l, c
    add a
    add a
    ld a, b
    add a
    ld a, c
    add [hl]
    adc b
    sub [hl]
    ld [hl], a
    sbc b
    ld h, a
    adc b
    ld [hl], a
    add a
    ld h, a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld a, c
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    sbc b
    ld l, c
    db $76
    adc b
    ld h, a
    adc b
    ld l, b
    add a
    ld [hl], a
    adc b
    add a
    db $76
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add [hl]
    add a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    db $76
    adc c
    ld l, b
    adc b
    ld l, b
    add a
    ld a, b
    add [hl]
    adc c
    db $76
    adc c
    add [hl]
    adc b
    ld [hl], a
    sbc c
    ld l, b
    ld [hl], a
    adc c
    ld h, a
    sbc b
    ld [hl], a
    sbc b
    ld l, b
    sub [hl]
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld h, [hl]
    sub a
    add [hl]
    adc c
    db $76
    sub a
    ld l, c
    ld [hl], a
    ld a, c
    sub a
    sbc b
    ld h, a
    add a
    sub a
    add a
    adc b
    ld h, a
    sub [hl]
    add [hl]
    adc c
    add [hl]
    adc b
    ld [hl], a
    adc c
    db $76
    ld l, b
    ld a, b
    add [hl]
    ld a, c
    add a
    adc b
    ld l, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    db $76
    sub a
    ld a, b
    add a
    ld a, b
    ld a, c
    add a
    ld l, c
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    add [hl]
    adc c
    ld [hl], a
    adc b
    ld h, a
    adc c
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    add [hl]
    adc b
    add [hl]
    adc b
    add a
    db $76
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld l, c
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld h, a
    add a
    adc c
    adc b
    ld a, b
    ld l, b
    add a
    ld l, c
    sub [hl]
    adc b
    ld a, b
    adc c
    add a
    ld l, b
    add a
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    add [hl]
    adc b
    adc b
    add a
    ld a, c
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    ld l, c
    add a
    ld a, c
    add a
    add a
    ld l, c
    add [hl]
    adc c
    ld [hl], a
    ld a, c
    ld a, c
    ld h, a
    sbc b
    ld [hl], a
    adc b
    add [hl]
    sbc b
    add a
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld l, b
    add a
    ld a, b
    add a
    adc b
    ld a, c
    add a
    ld [hl], a
    add a
    ld a, c
    add [hl]
    sbc b
    ld l, b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    add a
    sub a
    adc b
    ld l, b
    ld a, c
    add a
    ld h, a
    adc b
    ld [hl], a
    add a
    add a
    ld a, c
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld l, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    sbc b
    sub a
    add a
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld l, b
    sub a
    ld a, b
    add [hl]
    add a
    add a
    ld a, b
    adc b
    ld h, a
    db $76
    ld a, c
    add a
    ld a, c
    ld [hl], a
    sbc b
    ld a, c
    ld [hl], a
    ld a, c
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld l, b
    db $76
    adc b
    ld l, b
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld l, b
    adc b
    ld h, a
    adc c
    db $76
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    ld [hl], a
    adc b
    ld l, b
    ld [hl], a
    sub a
    ld l, c
    add a
    ld l, c
    add a
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add a
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    sub a
    adc c
    ld [hl], a
    adc c
    sbc b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    sub [hl]
    ld a, c
    ld a, b
    adc b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld l, b
    add a
    ld a, c
    db $76
    sub [hl]
    adc b
    ld a, b
    adc b
    ld h, a
    sbc b
    ld a, b
    db $76
    adc b
    add a
    add a
    add a
    sub [hl]
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld l, b
    sub a
    ld l, b
    add [hl]
    adc b
    add a
    ld a, b
    sub a
    ld a, c
    db $76
    sub a
    ld a, b
    adc b
    ld a, c
    add a
    ld a, c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld h, a
    adc b
    add a
    adc b
    ld a, c
    ld h, a
    sub a
    ld a, b
    sub a
    db $76
    sbc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add [hl]
    sbc b
    add [hl]
    adc b
    add a
    ld a, b
    sub a
    ld l, b
    add a
    ld [hl], a
    adc b
    ld h, a
    sbc b
    ld [hl], a
    sub [hl]
    ld a, c
    add [hl]
    adc c
    add a
    ld l, b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    db $76
    sbc b
    ld [hl], a
    sub a
    ld a, b
    sub [hl]
    adc c
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld h, a
    sub a
    adc b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    sub a
    add a
    adc c
    db $76
    sbc b
    ld a, b
    ld l, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    adc c
    add a
    ld a, b
    ld a, b
    ld l, c
    add [hl]
    adc c
    ld l, b
    add a
    ld a, b
    add a
    adc b
    add [hl]
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld l, b
    add a
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    add [hl]
    add [hl]
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    sub a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    sub [hl]
    ld a, c
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    sub [hl]
    add a
    add a
    ld l, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    db $76
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    db $76
    sbc b
    ld h, a
    sub a
    ld [hl], a
    sbc b
    ld l, c
    add [hl]
    adc b
    ld a, b
    add [hl]
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, c
    ld l, b
    add a
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    sub [hl]
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    adc b
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, c
    ld l, b
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld h, a
    sub a
    add a
    ld [hl], a
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
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    ld a, c
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld l, b
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc c
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
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    sub a
    add a
    adc b
    db $76
    adc c
    db $76
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc c
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld l, b
    ld a, b
    add [hl]
    sbc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    db $76
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    db $76
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, c
    sub a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    db $76
    adc b
    add a
    add a
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    add a
    ld a, b
    ld [hl], a
    sub a
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, c
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add a
    ld a, b
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    db $76
    adc c
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    add a
    add a
    adc b
    adc b
    add a
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    add a
    add [hl]
    sub a
    adc b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add [hl]
    adc b
    ld [hl], a
    add a
    add [hl]
    sub a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, b
    add a
    ld [hl], a
    ld a, b
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
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld l, b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld h, a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    db $76
    adc b
    add a
    adc b
    add a
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    ld a, b
    add a
    sub a
    add a
    add a
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    add a
    ld a, c
    add [hl]
    adc b
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, c
    db $76
    ld a, b
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    sub a
    add [hl]
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    add [hl]
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld l, b
    ld a, b
    ld h, $42
    ld [de], a
    ld b, [hl]
    ld a, c
    xor h
    xor $ff
    rst $38
    call c, Call_00b_75b8
    ld [hl-], a
    stop
    ld bc, $4793
    adc d
    call $ffef
    db $fd
    call c, Call_00b_65a8
    ld [hl-], a
    ld de, $0201
    inc [hl]
    ld d, [hl]
    db $eb
    call $efef
    db $ed
    res 3, b
    ld d, h
    ld b, d
    ld de, $1211
    dec [hl]
    ld [hl], a
    sbc e
    call $eede
    call c, $88ca
    ld d, h
    ld [hl-], a
    jr nz, jr_00b_727a

    inc hl
    ld b, l
    ld a, c
    xor d
    call $eede
    adc h
    cp d
    ld [hl], a
    ld h, l
    inc sp
    ld [de], a
    inc de
    inc h
    ld b, l
    ld a, b

jr_00b_727a:
    xor e
    call $ddde
    db $db
    xor c
    ld [hl], $54
    inc sp
    ld [hl+], a
    inc de
    inc [hl]
    ld d, [hl]
    adc b
    xor e
    cp h
    db $dd
    db $ec
    res 5, c
    db $76
    ld h, h
    inc hl
    ld [hl+], a
    inc sp
    dec [hl]
    ld d, a
    adc c
    xor d
    call z, $cbcd
    res 3, b
    db $76
    ld d, h
    ld b, d
    inc sp
    ld h, e
    ld d, h
    ld l, b
    adc b
    xor h
    cp h
    call c, $badb
    sbc b
    db $76
    ld d, l
    ld b, e
    ld b, e
    inc sp
    ld b, l
    and a
    adc c
    xor e
    set 1, h
    jp z, $97b9

    db $76
    ld d, l
    inc [hl]
    inc sp
    ld b, h
    ld d, [hl]
    ld l, b
    adc c
    res 7, h
    res 7, e
    xor d
    adc b
    ld h, [hl]
    ld d, h
    ld b, e
    inc [hl]
    ld b, h
    ld h, l
    ld [hl], a
    sbc c
    xor e
    cp h
    sbc e
    cp e
    sbc c
    adc b
    ld h, a
    ld d, h
    ld b, l
    ld b, h
    ld d, h
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    res 5, e
    cp e
    ld a, c
    add a
    ld h, l
    ld d, l
    ld b, h
    ld b, h
    ld b, l
    ld h, a
    adc b
    adc d
    xor d
    cp d
    jp z, $99aa

    add [hl]
    ld b, [hl]
    ld d, l
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    sbc c
    xor d
    cp e
    cp d
    xor d
    adc c
    add a
    db $76
    ld b, l
    ld h, l
    ld d, l
    ld b, [hl]
    ld h, [hl]
    adc b
    adc d
    xor d
    xor d
    cp d
    xor c
    adc b
    ld [hl], a
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    add l
    ld [hl], a
    ld a, b
    sbc c
    xor d
    xor d
    xor c
    xor d
    adc c
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld b, [hl]
    ld d, h
    db $76
    ld [hl], a
    sbc b
    sbc c
    xor d
    xor d
    xor c
    sbc c
    adc b
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld h, l
    ld h, [hl]
    ld l, b
    adc b
    sbc d
    sbc c
    cp c
    xor c
    sbc b
    sbc b
    ld h, a
    ld h, a
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld l, b
    adc b
    sbc c
    sbc d
    xor d
    adc c
    adc c
    adc b
    add [hl]
    ld [hl], l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    adc b
    sbc c
    sbc d
    xor c
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld l, b
    adc b
    adc c
    sbc c
    xor c
    sbc c
    adc b
    add a
    add [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc b
    xor c
    xor c
    adc c
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc b
    xor c
    sbc c
    sbc c
    adc c

Call_00b_737a:
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, a
    add a
    ld a, b
    adc b
    adc c
    sbc c
    sbc b
    sbc b
    adc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    add a
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    add a
    adc b
    sbc b
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld l, b
    ld l, b
    ld a, b
    adc c
    adc c
    sbc c
    adc c
    ld a, b
    ld a, b
    add [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    add a
    adc c
    adc d
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc c
    adc c
    adc c
    sub a
    adc b
    ld a, b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    ld l, b
    adc b
    adc c
    adc b
    sbc b
    adc c
    adc b
    adc b
    add [hl]
    ld [hl], a
    db $76
    ld h, a
    add a
    ld h, a
    adc b
    adc b
    adc b
    sbc b
    adc b
    sbc b
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    sub a
    adc b
    sub a
    sbc b
    sbc b
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld l, b
    ld h, a
    ld l, b
    ld l, b
    adc b
    ld a, b
    add a
    sbc b
    adc b
    adc b
    add a
    adc b
    db $76
    add [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc c
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld l, b
    ld h, a
    add a
    ld a, b
    add a
    sub a
    sub a
    sbc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    adc b
    rst $20
    ld b, d
    jr nz, jr_00b_7445

    inc de
    inc sp
    ld d, [hl]
    ld a, c
    sbc e
    cp h
    sbc $ee
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $dd
    res 5, c
    sbc b

jr_00b_7445:
    db $76
    ld h, h
    inc sp
    ld [hl+], a
    stop
    nop
    nop
    nop
    ld de, $9312
    ld d, l
    ld d, a
    adc b
    xor d
    cp e
    db $dd
    sbc $fe
    rst $38
    rst $38
    rst $28
    cp $dd
    db $db
    cp e
    adc c
    ld [hl], a
    ld [hl], l
    ld d, e
    inc sp
    ld sp, $0011
    nop
    db $10
    ld de, $2321
    ld b, h
    ld d, l
    ld [hl], a
    ld c, d
    sbc d
    call z, $dece
    rst $28
    rst $28
    xor $ee
    db $ed
    call c, $a9bc
    sbc b
    add [hl]
    ld d, l
    call nz, $2222
    ld de, $2100
    ld bc, $3321
    inc [hl]
    ld b, l
    ld [hl], a
    ld a, b
    xor c
    cp e
    call z, $df2d
    xor $ee
    xor $ed
    call c, $abcc
    adc c
    add a
    ld h, l
    ld h, h
    inc sp
    ld [hl-], a
    ld hl, $11e1
    ld de, $3211
    inc sp
    ld d, h
    ld h, l
    ld a, b
    adc c
    sbc d
    cp e
    call z, $edcd
    db $ed
    ld l, $dd
    db $dd
    set 1, d
    xor d
    adc b
    add [hl]
    ld h, l
    ld d, h
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    or d
    inc sp

Jump_00b_74c2:
    dec [hl]
    ld d, [hl]
    ld h, [hl]
    adc b
    sbc c
    xor e
    xor h
    cp l
    db $dd
    db $dd
    xor $dd
    call Call_00b_6bdc
    cp d
    sbc c
    add a
    db $76
    ld d, l
    ld b, h
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc sp
    ld b, e
    ld d, l
    db $76
    ld h, a
    sbc b
    sbc d
    xor h
    cp h
    call z, $dddc
    db $ed
    call c, $bbcc
    cp d
    xor c
    sbc b
    sub a
    ld h, [hl]
    ld d, h
    ld b, h
    inc sp
    inc hl
    ld hl, $2332
    inc h
    inc [hl]
    dec [hl]
    ld h, l
    db $76
    ld a, c
    adc c
    ld c, d
    cp e
    cp h
    call z, $dcdd
    call c, $cccc
    cp e
    xor d
    xor b
    adc b
    db $76
    ld d, l
    ld d, l
    or h
    inc sp
    ld [hl+], a
    inc sp
    ld [hl-], a
    ld b, e
    inc [hl]
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    xor d
    cp e
    cp h
    inc a
    call $cccc
    call z, $bbbb
    xor c
    sub a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    ld b, h
    inc sp
    ld [hl-], a
    jp Jump_000_3333


    ld b, h
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld a, b
    ld a, c
    sbc d
    xor e
    cp e
    cp h
    call z, $cccc
    ld c, e
    cp e
    cp e
    xor d
    adc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, e
    ld b, d
    ld b, e
    inc sp
    inc [hl]
    inc [hl]
    sub h
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc c
    xor c
    cp e
    cp e
    cp h
    set 1, e
    res 7, e
    cp d
    xor e
    adc c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, h
    inc sp
    inc sp
    ld b, h
    dec [hl]
    ld b, l
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld l, b
    ld a, c
    sbc c
    xor d
    xor d
    xor e
    set 1, h
    cp e
    res 7, d
    cp e
    xor c
    sbc c
    adc b
    ld a, b
    and l
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    inc [hl]
    ld b, l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    ld a, b
    sbc c
    ld c, e
    xor d
    cp e
    cp e
    cp e
    cp e
    cp e
    cp d
    xor d
    sbc d
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, h
    or h

Call_00b_75a1:
    ld b, l
    inc [hl]
    ld b, h
    dec [hl]
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    sbc e
    cp d
    cp d
    ld c, e
    cp e
    cp e
    xor e
    xor d
    xor c
    sbc c
    adc b

Call_00b_75b8:
    add a
    ld h, a
    ld h, [hl]
    ld h, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    and h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld [hl], a
    ld a, b
    sbc b
    sbc b
    sbc d
    sbc e
    xor d
    cp e
    cp e
    xor e
    xor e
    ld e, d
    sbc d
    sbc c
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    add [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    xor c
    sbc c
    xor d
    cp e
    cp d
    cp d
    cp d
    cp d
    xor d
    sbc c
    sbc b
    adc c
    ld [hl], a
    add [hl]
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, h
    ld h, l
    ld d, l
    ld h, l
    ld h, a
    ld h, a
    ld a, b
    ld l, b
    sbc b
    sbc c
    sbc d
    xor d
    cp e
    xor d
    xor e
    xor d
    cp d
    sbc d
    sbc b
    sbc c
    adc b
    ld [hl], a
    ld h, a
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, l
    ld h, [hl]
    db $76
    ld l, b
    ld a, b
    adc b
    adc c
    sbc c
    ld l, d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sub a
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    and l
    ld b, l
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld h, a
    ld l, b
    adc b
    adc b
    sbc c
    sbc c
    xor d
    xor d
    xor d
    ld e, d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld h, l
    ld h, l
    ld d, l
    and l
    ld d, [hl]
    ld h, l
    ld h, a
    db $76
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    xor e
    sbc d
    sbc d
    cp c
    sbc c
    ld a, c
    adc c
    adc b
    adc b
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, a
    add [hl]
    add a
    add a
    sbc b
    adc c
    sbc c
    sbc d
    sbc c
    xor c
    xor c
    xor d
    xor d
    sbc d
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    sbc c
    sbc c
    xor c
    xor c
    xor c
    xor d
    sbc c
    xor c
    sbc b
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    sub [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, b
    adc b
    sbc c
    adc d
    adc c
    ld l, d
    sbc d
    xor c
    sbc d
    xor c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    sub l
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    adc c
    adc c
    sbc c
    xor c
    xor c
    xor c
    ld e, d
    sbc d
    sbc b
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    add a
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc d
    adc c
    ld a, c
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
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
    adc c
    adc c
    adc c
    sbc b
    xor c
    sbc c
    sbc d
    sbc c
    adc c
    adc c
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld l, c
    adc c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add a
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    sub [hl]
    db $76
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    adc b
    sbc b
    sbc b
    sbc b
    ld l, b
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    ld l, c
    sbc c
    adc b
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    ld l, b
    add a
    adc b
    adc c
    adc c
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    sbc b
    adc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    adc c
    adc b
    adc b
    sub a
    adc b
    ld a, b
    sub a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc c
    adc b
    adc b
    ld l, b
    adc b
    adc b
    sbc b
    sbc c
    adc c
    adc c
    adc c
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    db $76
    db $76
    add a
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc b
    sbc c
    ld l, b
    adc c
    sbc b
    sbc c
    adc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    add [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, c
    add a
    adc b
    adc b
    sbc c
    adc c
    adc b
    adc c
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    sbc b
    adc c
    adc c
    add a
    sbc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc b
    add a
    sbc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    add a
    add a
    ld h, a
    db $76
    ld l, b
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    sbc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc c
    ld h, a
    ld a, b

jr_00b_7848:
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    ld a, c
    ld l, c
    ld l, b
    db $76
    ld a, c
    sub a
    ld l, b
    add a
    add [hl]
    and l
    sub a
    ld l, d
    ld e, e
    ld c, b
    ld h, a
    ld a, b
    sub [hl]
    ld a, c
    ld l, c
    ld l, b
    and [hl]
    db $76
    add $68
    ld h, a
    and e
    ldh [$c7], a
    ld e, h
    ld c, b
    ld a, b
    and l
    sub [hl]
    and h
    and l
    or e
    db $d3
    ld a, c
    and d
    push de
    ld l, e
    add b
    ld a, [c]
    call nc, Call_00b_577c
    ld h, a
    and h
    sbc d
    jr c, jr_00b_7848

    jp Jump_00b_4a8a


    inc a
    ld h, l
    sbc c
    and e
    sub l
    ld a, a
    ld a, [de]
    ld a, b
    dec sp
    ld e, b
    sub a
    ld a, $57
    ld l, d
    ld c, [hl]
    ld a, [hl+]
    dec sp
    or d
    or [hl]
    add h
    di
    ld e, e
    ld c, h
    dec sp
    ld a, e
    or c
    pop hl
    pop hl
    or l
    call nz, $aa95
    ld d, a
    and [hl]
    ld [hl], h
    ld a, [c]
    jp $97b5


    add a
    xor e
    ld c, e
    add hl, sp
    and h
    adc d
    ld h, [hl]
    sub [hl]
    sbc c
    ld e, c
    ld l, c
    ld l, d
    inc a
    ld h, a
    adc b
    ld e, e
    ld h, [hl]
    add h
    call nz, Call_00b_598a
    ld a, b
    ld l, c
    ld l, b
    add a
    sub [hl]
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    sub [hl]
    sub a
    cp c
    add a
    ld l, e
    db $db
    ld [hl], c
    ld h, $ca
    and [hl]
    ld bc, $9abd
    inc de
    ld b, a
    db $fd
    ld h, h
    db $76
    ld l, [hl]
    add $34
    sbc e
    sbc b
    ld h, d
    add hl, sp
    sbc c
    ld h, e
    ld b, [hl]
    ld a, d
    xor d
    xor d
    xor e
    jp z, Jump_00b_5664

    db $76
    ld h, l
    ld b, [hl]
    ld [hl], a
    db $76
    ld a, b
    adc c
    cp d
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    sbc b
    ld b, h
    call Call_00b_7f50
    and e
    add hl, hl
    ld [$be23], a
    ld h, d
    ld e, l
    push bc
    rla
    ld [$3d33], a
    add d
    ld c, e
    sub $35
    call z, $8d52
    sub h
    add hl, sp
    ret z

    ld [hl], $bb
    ld h, e
    ld a, h
    and l
    ld a, c
    ret


    ld b, h
    sbc h
    add e
    ld e, e
    or [hl]
    ld b, a
    xor d
    ld b, l

jr_00b_792a:
    adc h
    add h
    ld e, d
    or a
    ld b, [hl]
    xor d
    and h
    ld a, e
    sub l
    ld e, b
    cp b
    ld d, [hl]
    sbc d
    ld [hl], l
    ld l, d
    sub a
    ld e, b
    xor c
    ld d, [hl]
    adc d
    add l
    ld l, c
    add [hl]
    ld h, a
    sbc c
    ld h, l
    adc d
    add l
    ld l, b
    sbc b
    ld d, a
    adc d
    ld [hl], l
    adc c
    sub [hl]
    ld l, b
    xor b
    ld h, [hl]
    ld e, d
    ld [hl], l
    ld a, c
    sub a
    ld d, a
    xor b
    ld h, [hl]
    ld a, c
    ld [hl], a
    ld l, c
    adc b
    ld h, a
    sbc c
    ld h, a
    adc b
    add a
    ld a, b
    sbc b
    ld h, a
    sbc c
    ld h, [hl]
    ld a, c
    add a
    ld l, b
    sub a
    ld h, a
    adc c
    db $76
    ld a, b
    sub a
    db $76
    sbc b
    add [hl]
    ld a, b
    add a
    ld a, b
    adc b
    ld h, a
    adc b
    add [hl]
    ld a, b
    add a
    ld a, b
    sbc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    sub a
    add a
    adc c
    ld l, b
    adc b
    ld a, b
    ld l, b
    sbc b
    ld [hl], a
    jr z, jr_00b_792a

    add [hl]
    ld b, h
    ld h, a
    sbc d
    sbc e
    cp h
    and [hl]
    ld d, c
    nop
    ld b, [hl]
    sbc l
    rst $38
    db $fd
    sub l
    ld [hl], b
    nop
    ld l, c
    adc $fe
    ret z

    jr nc, @+$14

    ld d, $ad
    rst $28
    call z, Call_000_3297
    ld de, $ba05
    rst $18
    cp $b9
    ld d, d

Call_00b_79b5:
    jr nz, jr_00b_79cc

    sbc e
    db $dd
    jp c, Jump_00b_4293

    ld b, h
    ld e, b
    cp h
    bit 1, d
    add l
    ld b, e
    inc hl
    ld b, [hl]

Call_00b_79c5:
    adc h
    adc $cc
    sub [hl]
    ld d, e
    ld [hl-], a
    scf

jr_00b_79cc:
    xor e
    res 7, d
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    xor e
    xor e

Jump_00b_79d5:
    xor c
    db $76
    ld b, h
    ld b, h
    ld b, [hl]
    sbc e
    cp h
    ret


    sub [hl]
    ld d, e
    ld b, h
    or a
    sbc d
    cp d
    and a
    db $76
    ld h, [hl]
    ld d, [hl]
    ld l, b
    sbc d
    sbc d
    adc c
    add [hl]
    ld h, l
    ld d, h
    ld h, a
    xor d
    ld a, e
    xor d
    ld [hl], a
    ld d, h
    ld d, l
    ld l, b
    sbc c
    xor d
    adc b
    db $76
    ld h, a
    ld h, l
    ld a, b
    adc c
    xor c
    sub a
    ld h, a
    ld d, [hl]
    ld d, l
    ld l, b
    xor d
    cp c
    xor b
    ld [hl], l
    ld d, [hl]
    ld h, l
    ld [hl], a
    sbc d
    sbc c
    adc b
    ld [hl], a
    ld h, a
    sub [hl]
    add a
    sbc b
    xor b
    sbc b
    add [hl]
    ld h, [hl]
    ld d, [hl]
    ld a, c
    sbc e
    xor c
    adc b
    ld h, a
    ld h, l
    ld h, [hl]
    ld a, c
    adc c
    xor b
    sbc b
    ld a, b
    ld h, a
    ld h, a
    ld [hl], a
    sbc c
    adc c
    adc b
    db $76
    db $76
    ld d, a
    adc b
    xor c
    sbc c
    ld l, b
    db $76
    db $76
    ld h, [hl]
    add a
    sbc c
    adc c
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld l, c
    adc c
    adc c
    add a
    db $76
    add [hl]
    ld l, b
    ld a, c
    sbc c
    sbc b
    ld a, b
    db $76
    db $76
    ld h, a
    ld a, b
    adc b
    sbc c
    sbc b
    add [hl]
    ld [hl], a
    ld d, a
    sbc b
    sbc c
    adc c
    add a
    db $76
    ld h, [hl]
    ld [hl], a
    adc c
    sbc c
    adc b
    ld [hl], a
    add [hl]
    ld [hl], l
    ld h, a
    adc b
    adc c
    ld a, c
    adc b
    add [hl]
    db $76
    ld h, [hl]
    adc c
    adc b
    adc c
    ld a, b
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc c
    sbc b
    sbc b
    ld a, b
    add [hl]
    ld [hl], a
    ld l, b
    ld a, b
    adc c
    sbc b
    sub a
    db $76
    db $76
    db $76
    adc c
    adc c
    adc b
    add a
    db $76
    db $76
    add a
    adc c
    adc b
    adc b
    adc b
    ld h, a
    db $76
    ld [hl], a
    adc c
    adc d
    adc c
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    adc c
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    adc b
    adc c
    add a

Call_00b_7a99:
    add a
    db $76
    db $76
    ld [hl], a
    sbc b
    sbc c
    sbc b
    ld h, a
    db $76
    ld h, a
    ld h, a
    sbc b
    sbc c
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    adc b
    add a
    add a
    ld h, a
    db $76
    ld l, b
    adc c
    sbc c
    sbc b
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    sbc c
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld a, b
    sbc b
    sbc b
    adc b
    db $76
    add a
    ld h, [hl]
    adc b
    sbc b
    sbc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sbc b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld a, b
    sbc b
    sbc b
    add a
    db $76
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    ld l, b
    ld a, c
    sbc c
    adc c
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    ld l, b
    db $76
    db $76
    add a
    adc b
    sub a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    adc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    adc b
    adc b
    sbc b
    ld [hl], a
    ld h, a
    ld h, a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    add a
    sbc b
    sbc b
    add a
    add [hl]
    ld [hl], a
    ld h, a
    adc b
    ld a, c
    adc b
    ld l, b
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    sbc b
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld a, b
    ld a, b
    sbc b
    sbc b
    add a
    add a
    ld [hl], a
    ld l, b
    adc b
    adc b
    adc b
    add [hl]
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    sbc c
    add a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc b
    add a
    add a
    ld h, a
    add a
    ld h, a
    adc c
    adc c
    adc b
    ld [hl], a
    ld h, a
    db $76
    ld a, b
    adc b
    sub a
    add a
    ld [hl], a
    db $76
    add a
    adc b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    ld l, b
    adc b
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    db $76
    db $76
    ld a, b
    ld [hl], a
    adc c
    add a
    add a
    ld a, b
    add a
    ld h, a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    adc b
    adc b
    sbc b
    adc b
    ld h, a
    db $76
    ld [hl], a
    add a
    sbc b
    adc b
    ld a, b
    add a
    add [hl]
    sub a
    add a
    sub a
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld l, b
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld a, b
    ld [hl], a
    ld [hl], a
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
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    add [hl]
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    ld [hl], a
    db $76
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    adc c
    adc c
    add a
    add a
    db $76
    ld [hl], a
    ld a, b
    adc b
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    db $76
    db $76
    add a
    ld a, b
    adc b
    adc b
    add a
    db $76
    add a
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld h, a
    ld [hl], a
    ld a, c
    adc b
    add a
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    db $76
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    sbc b
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    adc b
    adc b
    ld l, b
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    adc b
    add a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld h, a
    ld h, a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld [hl], a
    add [hl]
    add a
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    db $76
    ld [hl], a
    ld l, b
    adc b
    adc b
    add a
    add a
    add a
    db $76
    add a
    ld a, b
    adc b
    adc b
    add a
    add a
    add [hl]
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    ld a, c
    add a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
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
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    add [hl]
    add a
    ld a, b
    add a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add [hl]
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    sub a
    adc b
    add a
    db $76
    add a
    add a
    ld [hl], l
    dec sp
    xor b
    or h
    adc d
    ld h, d
    ld h, $ba
    and a
    sbc c
    add l
    inc h
    adc h
    ret c

    ld h, a
    ld [hl], a
    add [hl]
    ld l, b
    xor e
    xor b
    ld [hl], l
    db $76
    ld a, c
    add a
    ld a, d
    adc b
    ld a, b
    ld l, b
    add a
    ld [hl], a
    ld a, c
    sub [hl]
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    adc b
    ld [hl], a
    ld b, a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    sub a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add h
    sbc e
    ld a, e
    ret


    dec h
    ld b, e
    ld c, e
    rst $28
    push bc
    dec [hl]
    ld d, d
    ld d, [hl]
    xor e
    cp c
    sbc d
    ld h, e
    ld d, a
    adc d
    sbc e
    ld h, a
    ld h, l
    ld h, l
    ld l, b
    res 2, a
    db $76
    ld l, b
    add a
    sbc c
    ld l, c
    db $76
    ld h, a
    sbc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    rst $20
    add a
    add a
    add a
    add a
    adc d
    ld b, h
    jp z, $a38c

    ld hl, $c85a
    ld a, d
    ld [hl], e
    adc e
    ld l, d
    ld hl, $bd37
    and l
    ld l, b
    add [hl]
    add a
    ld a, c
    sub l
    ld b, a
    sbc d
    ld a, b
    ld a, b
    xor c
    add l
    ld [hl], a
    ld h, a
    sbc c
    adc b
    add a
    ld [hl], a
    ld l, b
    ld h, a
    sbc c
    adc b
    add a
    ld [hl], a
    ld l, b
    ld a, c
    adc b
    ld [hl], a
    and [hl]
    ld [hl-], a
    cp a
    ld [hl], a
    sbc l
    ld d, h
    ld d, a
    ld b, l
    ret c

    ld [hl], $bc
    ld a, b
    ld e, c
    ld a, c
    or l
    ld h, l
    ret c

    add e
    ld l, e
    and [hl]
    ld a, c
    add e
    ld h, $ff
    sub a
    inc [hl]
    ld d, h
    xor e
    sbc b
    ld a, b
    ld b, l
    sbc a
    dec b
    ld h, b
    ld [bc], a
    adc a
    xor b
    jp z, Jump_000_18a4

    ld d, [hl]
    ld a, d
    cp d
    ld [hl], h
    daa
    xor d
    call Call_00b_75a1
    ld b, l
    adc d
    db $fc
    xor c
    ld h, l
    sub l
    ld [bc], a
    ld c, h
    rst $08
    sbc b
    ld b, e
    add hl, sp
    cp c
    adc b
    adc d
    or l
    xor b
    ld h, e
    ld c, e
    cp b
    ld h, h
    ld a, c
    ld h, a
    sub a
    cp b
    ld a, [hl-]
    sbc c
    add a
    ld h, h
    db $76
    add a
    ld e, e
    xor c
    ld d, h
    add a
    ld d, l
    ld h, a
    xor c
    xor b
    ld d, a
    ld a, b
    adc b
    ld l, b
    ld d, a
    xor d
    add $44
    xor e
    xor c
    ld a, b
    ld d, [hl]
    ld [hl], h
    ld e, c
    cp c
    ld a, b
    add [hl]
    sub a
    ld e, c
    ld a, b
    ld [hl], a
    sub a
    ld b, a
    adc c
    ld a, b
    ld [hl], l
    ld h, l
    ld l, c
    ld l, c
    cp h
    and a
    ld d, l
    ld b, l
    adc d
    sub [hl]
    adc d
    sbc b
    add a
    ld d, [hl]
    ld [hl], a
    ld b, [hl]
    sbc c
    sbc d
    add a
    ld d, h
    ld a, c
    sbc c
    sbc c
    sub l
    sbc b
    ld h, h
    ld d, a
    ld a, c
    xor d
    cp c
    add a
    db $76
    ld h, [hl]
    ld l, b
    sbc c
    and a
    ld h, a
    add a
    add a
    ld [hl], l
    adc d
    sub a
    ld h, [hl]
    ld h, a
    sub a
    adc c
    ld l, b
    sbc b
    add a
    ld [hl], a
    add a
    ld a, b
    sbc b
    add a
    ld [hl], l
    ld h, a
    adc b
    sbc c
    sbc b
    sub l
    ld h, a
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    xor c
    add l
    ld l, b
    add a
    adc b
    sbc b
    ld [hl], a
    add a
    sub a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc c
    sbc d
    add a
    db $76
    ld h, a
    ld a, c
    adc b
    adc b
    add a
    ld h, [hl]
    ld a, c
    adc c
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    db $76
    adc c
    ld a, b
    db $76
    ld [hl], a
    add a
    adc b
    adc c
    add a
    add [hl]
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld a, c
    sbc b
    sbc b
    db $76
    ld h, [hl]
    adc b
    sbc b
    adc b
    add a
    ld [hl], a
    ld a, c
    adc c
    ld [hl], a
    ld h, a
    ld l, c
    add a
    adc b
    ld [hl], a
    ld a, b
    sbc b
    adc b
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, c
    adc c
    sbc b
    ld l, b
    ld h, a
    ld [hl], a
    add a
    adc b
    adc b
    ld h, a
    ld a, b
    adc c
    add a
    add a
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    adc b
    sbc c
    add a
    ld h, [hl]
    adc c
    adc b
    sbc b
    db $76
    add a
    adc c
    add a
    add [hl]
    adc b
    adc b
    adc b
    ld a, b
    sub a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld h, a
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld h, a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld [hl], a
    ld a, b
    adc b
    adc c
    add a
    db $76
    db $76
    adc c
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    sub a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    add a

Call_00b_7f50:
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    sub a
    add [hl]
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    db $76
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    sub a
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
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
