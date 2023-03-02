; disasSembly of "lsdj.gb"
SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    ld h, b
    ld b, b
    ld h, b
    ld b, c
    nop
    ld b, h
    ld [hl], b
    ld b, [hl]
    db $10
    ld c, a
    ldh a, [rHDMA4]
    ldh a, [$5b]
    ld h, b
    ld h, h
    ld b, b
    ld [hl], h
    or b
    ld [hl], l
    ld b, b
    ld [hl], a
    ld d, b
    ld a, b
    ld [hl], b
    ld a, e
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
    ld e, c
    ld c, l
    ld d, d
    ld c, c
    ld c, l
    ld b, e
    ld c, a
    ld d, a
    ld b, e
    ld c, h
    ld b, c
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
    nop
    nop
    ld b, h
    ld d, d
    ld d, l
    ld c, l
    ld d, l
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9a39
    sbc c
    sbc d
    cp b
    xor e
    jp c, $aa8a

    xor b
    adc c
    adc b
    ld h, a
    ld h, h
    ld d, h
    ld b, l
    sub d
    inc d
    ld [hl-], a
    ld b, c
    inc b
    ld [hl+], a
    nop
    inc bc
    db $10
    db $10
    ld [hl+], a
    inc hl
    ld b, h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld sp, hl
    sbc d
    cp e
    call z, $dfdc
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $0e
    cp $dd
    call z, $89ba
    add a
    ld [hl], l
    ld h, h
    ld d, h
    inc sp
    ld [hl-], a
    ld de, $0001
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld de, $1212
    ld [hl+], a
    inc [hl]
    ld d, h
    rst $30
    ld a, b
    sbc c
    sbc d
    cp e
    call z, $eddc
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    xor $dd
    db $ed
    call $cbcc
    call z, $bbbc
    xor e
    xor e
    xor d
    xor d
    ld c, c
    cp d
    xor d
    xor c
    xor c
    sbc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld b, h
    ld d, e
    inc de
    ld [hl-], a
    ld [hl-], a
    ld sp, $1131
    ld hl, $0001
    stop
    ld bc, $0000
    nop
    nop
    sub b
    ld bc, $1101
    jr nz, jr_011_4118

    inc de
    inc sp
    inc sp
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld a, c
    xor c
    sbc d
    sbc d
    xor e
    xor e
    cp d
    cp e
    res 7, d
    jp z, $bbba

    xor e
    cp d
    xor d
    cp d
    cp d
    xor c
    sbc d
    xor c
    xor c
    sbc d
    xor c
    sbc c

jr_011_4118:
    xor c
    xor d
    sbc d
    xor d
    cp d
    cp e
    cp d
    cp e
    sbc e
    cp h
    cp e
    call z, $bcbb
    cp e
    res 7, d
    cp e
    xor d
    xor d
    xor d
    xor c
    sbc c
    sbc b
    ld a, b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld l, b
    ld l, b
    ld h, a
    ld h, a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    adc b
    ld a, b
    adc b
    adc b
    adc b
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    or $76
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld d, b
    ld bc, $3232
    ld sp, $2635
    ld e, d
    ld b, [hl]
    db $fd
    xor a
    dec e
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ec
    db $db
    xor d
    cp b
    sub a
    ld h, l
    ld h, h
    ld b, e
    ld [de], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2311
    inc d
    ld d, l
    ld l, b
    adc d
    sbc e
    cp e
    ld l, l
    xor $fe
    rst $38
    rst $38
    cp $ff
    xor $fd
    db $fd
    xor $ee
    call c, $a8b9
    sub a
    ld [hl], l
    ld b, e
    ld [hl-], a
    jr nz, @+$03

    ld bc, $1000
    db $10
    ld hl, $0011
    ld [hl+], a
    inc [hl]
    ld h, l
    ld h, a
    and a
    adc b
    xor c
    xor e
    call z, $edce
    xor $ee
    cp $fe
    rst $28
    rst $28
    xor $cd
    call z, $aa2b
    ld a, b
    ld h, [hl]
    ld d, l
    ld b, e
    inc sp
    ld sp, $1111
    ld de, $0111
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $e3
    inc [hl]
    ld b, l
    ld b, a
    ld h, [hl]
    ld a, b
    sbc c
    sbc d
    xor e
    cp e
    db $dd
    sbc $de
    rst $28
    rst $28
    rst $38
    cpl
    rst $38
    db $ed
    call c, $c9ec
    xor c
    sbc b
    db $76
    ld h, l
    ld d, e
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $21e0
    db $10
    ld hl, $2414
    ld b, h
    ld b, l
    ld h, [hl]
    add [hl]
    adc c
    xor d
    cp d
    call z, $ceed
    dec a
    db $ed
    sbc $de
    adc $cc
    call $b9c9
    sbc c
    adc b
    ld h, a
    ld [hl], l
    ld d, l
    ld b, h
    ld b, d
    or e
    ld [hl+], a
    ld sp, $3112
    ld [hl+], a
    inc de
    inc h
    inc sp
    ld b, h
    ld d, l
    ld h, a
    ld h, [hl]
    add a
    adc c
    sbc d
    ld a, e
    cp h
    call z, $ddec
    sbc $ed
    db $ed
    db $ec
    adc $bd
    cp l
    cp d
    cp b
    xor b
    add a
    ld h, l
    ld h, l
    ld b, h
    ld b, e
    inc hl
    ld hl, $3331
    ld [de], a
    inc hl
    inc h
    ld [hl-], a
    ld b, e
    dec [hl]
    ld d, l
    ld h, [hl]
    and a
    ld a, b
    adc c
    xor c
    xor d
    cp h
    cp h
    set 5, l
    call $dccc
    call z, $cabc
    cp d
    ld c, d
    and a
    sbc b
    ld a, b
    ld h, a
    ld h, [hl]
    ld d, h
    inc [hl]
    ld d, e
    inc [hl]
    inc sp
    inc [hl]
    ld b, d
    ld b, e
    inc h
    ld b, e
    or h
    ld d, h
    ld d, [hl]
    ld [hl], l
    ld [hl], a
    ld a, b
    ld a, c
    adc b
    xor c
    xor e
    xor e
    res 7, h
    call z, $cccd
    dec a
    cp h
    cp e
    res 3, e
    sbc c
    xor c
    ld a, c
    add [hl]
    ld [hl], l
    ld [hl], l
    ld d, h
    ld d, h
    ld b, h
    inc sp
    inc sp
    jp nz, Jump_011_4342

    inc [hl]
    ld b, e
    ld b, l
    ld b, l
    ld d, a
    ld h, [hl]
    ld [hl], a
    add a
    adc c
    sbc c
    xor d
    sbc e
    cp e
    ld e, e
    db $db
    call z, $dcbc
    xor h
    cp e
    cp e
    sbc d
    sbc d
    adc c
    sbc b
    add a
    add a
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    dec [hl]
    inc sp
    ld b, e
    ld b, e
    ld b, h
    ld b, [hl]
    ld b, [hl]
    ld d, a
    ld h, a
    ld [hl], a
    adc b
    ld a, c
    sbc d
    sbc d
    xor d
    jp z, $bbbb

    call z, $bdcc

Call_011_42ca:
    cp h
    xor e
    jp z, $a9aa

    ld a, c
    ld a, b
    db $76
    ld h, l
    ld h, l
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    ld b, l
    dec [hl]
    ld b, h
    ld b, l
    ld b, h
    ld d, h
    ld h, l
    ld h, l
    sub [hl]
    ld h, a
    ld [hl], a
    sbc b
    adc c
    sbc d
    sbc d
    xor e
    cp d
    cp d
    cp e
    xor h
    xor d
    cp d
    xor d
    xor e
    ld l, b
    xor c
    adc b
    adc b
    ld [hl], a
    add a
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld h, h
    ld d, h
    ld b, [hl]
    ld b, l
    sub h
    ld d, [hl]
    ld h, l
    db $76
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc b
    sbc b
    xor c
    cp c
    cp d
    sbc d
    xor e
    xor e
    ld c, e
    xor d
    xor c
    sbc d
    sbc c
    sbc b
    ld a, c
    add a
    add a
    ld [hl], a
    db $76
    ld d, a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    and [hl]
    ld b, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    sbc b
    sbc c
    sbc b
    sbc c
    ld l, c
    sbc d
    sbc c
    sbc d
    xor c
    sbc b
    sbc b
    sbc b
    adc b
    add a
    add a
    add [hl]
    ld [hl], a
    ld l, b
    ld h, a
    ld h, a
    add a
    ld h, [hl]

Jump_011_4342:
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sbc b
    adc c
    ld l, c
    sbc c
    sbc d
    sbc b
    sbc c
    sbc b
    sbc c
    sbc c
    sbc b
    adc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    sbc c
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc c
    adc b
    adc c
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    db $76
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    adc b
    adc b
    adc c
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    add [hl]
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    sub a
    adc b
    adc b
    ld a, b
    ld [hl], a
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
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    add a
    add a
    sub a
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld h, $88
    sub l
    adc c
    ld e, d
    dec l
    adc d
    ld h, [hl]
    ld h, [hl]
    and [hl]
    dec sp
    ld d, l
    adc d
    cp d
    and h
    adc d
    ld a, b
    ld c, e
    ld [hl], a
    ld l, c
    and [hl]
    ld [hl], l
    adc b
    ld l, d
    sbc c
    ld e, b
    and l
    call nc, $9476
    adc d
    ld a, b
    ld [hl], a
    ld h, h
    ld a, e
    dec hl
    ld h, [hl]
    and a
    adc e
    ld b, a
    and a
    xor d
    and a
    xor c
    ld l, d
    sub h
    sub [hl]
    inc [hl]
    ld [hl-], a
    ld h, a
    ld d, e
    or [hl]
    ld c, a
    ld a, e
    cp d
    xor e
    cp b
    or a
    ld l, h
    dec hl
    ld b, h
    ld d, l
    ld d, [hl]
    ld e, d
    sbc d
    ld l, b
    and [hl]
    and h
    sub h
    or l
    xor b
    ld a, [hl]
    ld e, h
    ld a, d
    sub h
    and l
    ld h, a
    ld c, e
    ld a, [hl-]
    ld [hl], l
    ld h, [hl]
    ld [hl], a
    add a
    ld l, d
    sbc b
    and a
    cp c
    sub [hl]
    ld [hl], a
    ld a, d
    jr c, jr_011_44b3

    ld e, b
    add h
    add l
    ld a, c
    and a
    sbc d
    ld a, d
    ld h, [hl]
    sbc b
    ld a, c
    sub a
    add a
    adc b
    sbc b
    adc b
    ld l, c
    ld e, b
    adc c
    ld b, [hl]
    sub e
    ld h, [hl]
    sub [hl]
    adc c
    ld a, c
    db $76
    ld a, b
    add a
    adc c
    ld a, d
    ld e, b
    add $86
    add [hl]
    ld l, b
    ld l, c
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    sub l
    add $86
    and [hl]
    ld a, c
    adc b
    ld [hl], a
    add [hl]
    sub [hl]
    ld l, c
    ld l, b
    db $76
    and l
    sub a
    ld l, c
    ld l, c
    ld l, b
    add a
    ld l, b
    ld [hl], a
    sub l
    and a
    add a
    sub a
    ld a, c
    sub a
    sub [hl]
    add a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], l
    add a
    ld l, d
    ld a, b
    ld a, d
    ld a, b
    sub a
    adc c
    ld a, b
    sub a
    add a
    sub [hl]
    ld a, b
    ld l, b
    ld e, b
    ld [hl], a
    ld l, b
    ld [hl], a

jr_011_44b3:
    add a
    adc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    db $76
    ld l, c
    sbc b
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld a, c
    ld h, a
    sub a
    add a
    xor b
    add [hl]
    add [hl]
    add a
    ld l, b
    adc b
    ld c, d
    add [hl]
    xor b
    ld l, d
    ld [hl], a
    add a
    ld h, l
    ld [hl], a
    db $76
    ld c, b
    ld a, c
    add a
    xor b
    and l
    rst $10
    ld a, e
    ld e, c
    ld l, b
    ld h, a
    ld a, c
    ld d, a
    and a
    adc c
    ld e, b
    ld h, [hl]
    sub a
    sub h
    adc c
    ld a, e
    ld l, c
    xor b
    sub [hl]
    or [hl]
    sub [hl]
    ld e, b
    ld d, a
    ld d, [hl]
    ld [hl], a
    add [hl]
    and a
    sub a
    sbc c
    adc b
    sub a
    sub h
    and [hl]
    adc c
    ld l, c
    ld a, c
    ld l, b
    sub l
    add [hl]
    ld [hl], a
    ld a, b
    and a
    ld l, c
    add a
    and a
    add [hl]
    sub l
    adc c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sbc d
    ld e, b
    sub [hl]
    ld a, b
    ld [hl], l
    add l
    and [hl]
    ld a, b
    ld e, d
    add a
    sub a
    ld l, b
    db $76
    and [hl]
    sub a
    ld h, a
    ld [hl], a
    ld l, d
    ld b, [hl]
    add [hl]
    adc c
    ld [hl], a
    xor b
    ld l, c
    or [hl]
    sbc b
    ld a, c
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    add a
    ld h, a
    ld l, c
    sub a
    sub a
    xor b
    adc b
    bit 4, [hl]
    and h
    ld [hl], l
    and a
    adc b
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld e, c
    ld a, b
    add a
    sbc b
    add [hl]
    and [hl]
    ld h, a
    ld [hl], a
    sub a
    ld e, b
    ld h, a
    add [hl]
    add a
    ld [hl], h
    adc d
    ld e, d
    ld h, a
    sub a
    ld a, c
    sbc c
    add [hl]
    adc c
    adc c
    add a
    add a
    add [hl]
    add a
    ld l, c
    db $76
    ld [hl], a
    ld e, c
    add [hl]
    or [hl]
    sbc c
    adc b
    adc c
    ld a, c
    add a
    ld h, [hl]
    ld l, b
    ld l, b
    ld h, a
    ld e, b
    ld e, b
    add [hl]
    sub a
    ld a, c
    ld a, c
    ld a, d
    ld l, d
    db $76
    and a
    or h
    add a
    ld a, c
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    ld h, [hl]
    sbc b
    ld e, d
    ld e, c
    ld l, d
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    ld a, b
    add a
    add [hl]
    sub [hl]
    sub a
    ld h, a
    sbc b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld a, b
    adc b
    ld a, c
    ld l, b
    ld a, c
    ld [hl], a
    ld l, b
    db $76
    sub a
    ld [hl], a
    db $76
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    adc c
    ld a, d
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld d, a
    adc b
    ld l, d
    ld a, b
    add a
    adc c
    add a
    adc d
    ld e, d
    ld d, a
    add a
    db $76
    sub [hl]
    adc b
    ld l, d
    ld [hl], a
    adc b
    sbc b
    add [hl]
    xor b
    ld [hl], a
    ld a, c
    ld l, d
    ld e, c
    add [hl]
    adc b
    ld a, b
    ld e, b
    ld e, c
    ld h, a
    adc b
    add [hl]
    sub a
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld l, c
    ld l, c
    add a
    adc b
    ld l, b
    sub [hl]
    adc b
    ld h, a
    sub a
    ld a, c
    sub [hl]
    and [hl]
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    ld a, b
    ld l, c
    ld a, c
    ld [hl], a
    add [hl]
    and [hl]
    adc b
    ld a, b
    ld a, c
    ld h, a
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    ld a, b
    ld l, c
    add [hl]
    and a
    sub [hl]
    sub a
    sbc b
    db $76
    sbc b
    ld h, a
    add [hl]
    add a
    ld l, b
    ld a, b
    ld l, b
    adc b
    add a
    sbc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    sub l
    add a
    ld [hl], a
    add a
    sub a
    add a
    ld a, c
    ld a, b
    add a
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    and a
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    sub [hl]
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    sub [hl]
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    adc b
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
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
    ld a, b
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    sbc b
    ld h, a
    sub a
    adc b
    add a
    sub h
    xor c
    add a
    ld l, c
    ld l, d
    ld [hl], l
    and [hl]
    ld a, b
    adc b
    adc c
    ld e, c
    add h
    add a
    add a
    ld a, c
    ld l, c
    db $76
    ld a, d
    db $76
    or [hl]
    add a
    ld a, d
    ld l, e
    add hl, sp
    add h
    and [hl]
    adc b
    sub [hl]
    ld a, d
    ld e, b
    ld a, c
    ld [hl], a
    add a
    ld a, d
    ld d, a
    ld l, b
    adc b
    and [hl]
    sbc c
    ld a, d
    adc c
    ld e, e
    ld [hl], $66
    ld h, [hl]
    ld [hl], c
    adc d
    ld c, h
    adc c
    db $ec
    sbc b
    sub [hl]
    ld a, c
    ld e, b
    add l
    ld h, [hl]
    ld [hl], e
    add a
    ld [hl], a
    ld d, l
    ld a, b
    ld a, c
    add [hl]
    and [hl]
    adc b
    rst $10
    sbc e
    ld a, e
    ld e, e
    ld a, c
    sub h
    db $76
    ld [hl], h
    ld [hl], e
    db $76
    cp b
    adc b
    ld a, c
    add a
    push de
    cp d
    ld l, e
    adc c
    ld l, b
    add h
    push bc
    ld e, d
    ld d, l
    ld c, c
    ld e, c
    ld d, [hl]
    ld h, h
    and [hl]
    ret z

    inc l
    ld e, d
    add [hl]
    and a
    sub l
    sub a
    ld a, c
    adc b
    adc l
    sub [hl]
    or h
    ld d, l
    ld e, b
    ld c, d
    ld a, [de]
    db $76
    sub [hl]
    ld a, c
    add l
    adc h
    ld l, c
    ld a, c
    sbc c
    ld h, a
    or l
    ld e, e
    ld l, b
    sub [hl]
    ld c, e
    xor b
    adc c
    ld [hl], l
    or a
    sbc c
    ld a, c
    ld a, b
    add l
    ld a, b
    ld l, c
    adc b
    ld [hl], a
    ld l, b
    ld e, b
    ld h, a
    sub l
    ld h, [hl]
    and [hl]
    ld l, e
    ld c, c
    ld d, a
    sbc b
    and [hl]
    xor b
    ld a, c
    sbc d
    ld h, a
    add a
    ld l, c
    add h
    sub [hl]
    ld c, b
    sub a
    ld c, e
    ld h, h
    and h
    cp b
    and [hl]
    xor e
    ld l, d
    ld a, d
    ld [hl], a
    and h
    or h
    db $76
    add a
    ld e, b
    ld e, c
    add h
    sub a
    add a
    and a
    sbc c
    ld l, c
    ld a, b
    ld d, a
    sub l
    ld a, c
    ld a, d
    ld e, b
    ld l, d
    ld e, b
    db $76
    and [hl]
    ld l, e
    sbc b
    ld a, h
    ld e, d
    ld b, a
    ld a, c
    ld h, a
    sub a
    sbc d
    ld e, e
    ld b, a
    ld e, b
    ld a, b
    ld [hl], h
    add $69
    xor d
    ld e, c
    ld h, h
    sub h
    xor b
    ld a, c
    ld a, l
    ld c, d
    ld a, c
    add $85
    or l
    ld h, a
    ld l, c
    add hl, hl
    ld a, d
    sub h
    and [hl]
    sub [hl]
    ld c, c
    ld e, d
    ld c, e
    sbc b
    ld a, b
    push bc
    rst $00
    sbc e
    adc e
    ld c, c
    db $76
    ld b, h
    add e
    ld h, l
    ld l, d

jr_011_4762:
    inc a
    ld e, e
    ld l, b
    sub l
    or a
    and a
    xor d
    sbc d
    ld h, [hl]
    sub l
    sub h
    add [hl]
    ld [hl], l
    ld d, a
    ld a, b
    ld a, b
    ld l, c
    and [hl]
    xor e
    ld e, e
    ld a, d
    ld l, b
    ld [hl], a
    adc b
    ld e, b
    add [hl]
    add [hl]
    ld a, c
    ld c, d
    ld e, d
    ld b, [hl]
    adc b
    add a
    ld a, d
    ld l, e
    ld l, d
    ld a, c
    ld [hl], a
    ld a, d
    ld [hl], l
    ld a, e
    add hl, sp
    ld a, b
    ld [hl], a
    ld a, b
    cp b
    ld l, [hl]
    cp c
    ld e, b
    ld l, b
    ld [hl], h
    and e
    ld l, c
    ld h, [hl]
    ld a, e
    ld e, d
    add h
    and e
    and a
    ld [hl], a
    sub a
    ld c, d
    and a
    add [hl]
    adc b
    db $76
    sbc b
    ld a, b
    ld a, c
    or a
    sub a
    or [hl]
    ld h, l
    and l
    adc b
    ld e, b
    add a
    ld l, c
    add e
    xor b
    adc c
    ld a, c
    sbc b
    add hl, sp
    add a
    ld a, b
    ld a, c
    and l
    sbc b
    ld h, a
    ld h, [hl]
    or a
    ld a, d
    or h
    ld a, c
    ld c, c
    adc c
    ld [hl], a
    sub [hl]
    ld [hl], h
    sub a
    ld b, a
    ld e, c
    adc c
    jr c, jr_011_4762

    add a
    sbc c
    ld a, b
    ld a, d
    ld l, c
    add h
    sub [hl]
    ld a, d
    ld a, b
    ld e, c
    ld e, c
    add h
    or l
    and a
    ld e, d
    ld e, c
    ld l, c
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    sbc d
    inc a
    ld l, e
    sbc e
    db $76
    or [hl]
    ld a, b
    ld l, d
    ld d, a
    add l
    ld [hl], a
    add h
    or l
    adc b
    adc c
    cp d
    ld d, a
    or l
    and [hl]
    adc b
    adc c
    ld c, d
    ld e, c
    ld h, a
    add l
    ret z

    add [hl]
    adc b
    ld l, c
    adc b
    ld h, [hl]
    ld [hl], a
    add [hl]
    add [hl]
    db $76
    ld a, c
    ld h, h
    adc b
    ld l, b
    ld a, c
    xor b
    ld a, d
    ld a, b
    add a
    add a
    ld [hl], h
    sub a
    ld h, l
    adc b
    ld e, h
    ld a, [hl-]
    ld [hl], a
    or l
    or [hl]
    cp [hl]
    ld l, c
    ld l, c
    ld [hl], a
    ld b, a
    ld e, b
    ld h, [hl]
    adc c
    ld h, a
    xor d
    ld h, a
    add [hl]
    sub a
    ld a, b
    ld l, [hl]
    inc a
    sub a
    and [hl]
    add a
    and h
    ld a, b
    ld e, b
    ld h, a
    add a
    ld [hl], l
    ld d, [hl]
    ld a, c
    ld a, d
    ld a, c
    ld e, d
    ld [hl], a
    ld a, e
    ld l, b
    ld l, c
    ld e, e
    ld e, d
    ld [hl], a
    sub l
    and h
    and a
    ld a, b
    sbc d
    ld h, a
    or a
    sub a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    db $76
    sub [hl]
    add h
    add a
    db $76
    sbc b
    adc c
    cp d
    adc b
    or [hl]
    cp b
    ld a, b
    ld h, a
    ld d, [hl]
    db $76
    sub l
    sub l
    ld [hl], l
    xor [hl]
    ld a, b
    ld l, b
    or l
    ret


    ld d, [hl]
    add a
    ld h, a
    ld b, a
    ld h, a
    ld b, l
    ld [hl], h
    ld h, [hl]
    ld h, l
    or a
    ld a, d
    adc d
    xor c
    adc d
    adc c
    sbc c
    ld l, b
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    sub a
    ld a, b
    add a
    add a
    adc d
    sbc b
    xor b
    ld l, c
    and l
    add [hl]
    ld [hl], a
    sub [hl]
    cp b
    ld h, l
    db $76
    sub [hl]
    ld a, b
    xor b
    ld l, d
    add [hl]
    and [hl]
    ld a, d
    ld d, a
    ld a, c
    ld e, c
    adc b
    adc b
    add l
    sbc b
    ld a, b
    ld h, a
    ld h, [hl]
    db $76
    or [hl]
    adc b
    adc c
    add a
    sub [hl]
    adc b

jr_011_489b:
    and [hl]
    ld d, a
    ld [hl], l
    add a
    ld d, a
    sub h
    xor c
    ld h, a
    and h
    sub a
    ld a, c
    adc d
    ld l, d
    ld a, b
    and [hl]
    and [hl]
    adc b
    add l
    ld [hl], a
    ld b, a
    ld [hl], l
    adc c
    ld [hl], a
    xor b
    add a
    sbc b
    sub a
    ld l, b
    db $76
    sub a
    sub a
    ld e, c
    ld l, d
    ld c, b
    add l
    sub l
    sub [hl]
    ld e, c
    ld l, d

jr_011_48c2:
    ld a, d
    dec sp
    adc b
    sub l
    and [hl]
    add [hl]
    ld e, d
    ld c, c
    ld c, c
    ld l, c
    sbc b
    and [hl]
    adc b
    ld l, d
    ld a, c
    ld a, b
    sbc b
    add l
    and [hl]
    ld l, d
    ld c, c
    ld e, d
    ld [hl], a
    ld h, a
    or [hl]
    adc c
    ld [hl], a
    ld a, b
    ld l, e
    ld e, b
    adc c
    add [hl]
    sub a
    ld a, b
    ld l, c
    sub a
    ld e, c
    ld a, b
    db $76
    sub a
    add a
    ld a, c
    sub a
    ld a, b
    add [hl]
    ld a, c
    ld h, [hl]
    ld l, c
    ld a, b
    ld a, c
    ld h, [hl]
    or h
    cp b
    ld a, b
    ld a, c
    ld d, a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    adc c
    ret


    ld [hl], a
    add [hl]
    adc c
    sub l
    ld l, e
    ld h, [hl]
    ld [hl], a
    add l
    sub l
    and a
    adc b
    ld l, e
    ld e, c
    ld a, d
    add [hl]
    ld l, b
    add a
    ld [hl], a
    ld l, b
    jr c, jr_011_489b

    ld a, b
    add [hl]
    sub a
    ld a, c
    adc b
    sbc c
    add [hl]
    sbc b
    adc c
    ld c, b
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld [hl], l
    sbc b
    add l
    xor d
    ld l, d
    adc b
    sbc b
    ld [hl], a
    sbc b
    ld l, b
    ld h, a
    add [hl]
    ld a, b
    sub a
    ld l, d
    ld a, b
    add [hl]
    add a
    ld e, c
    db $76
    and a
    sub [hl]
    or a
    sbc c
    sub a
    adc b
    jr c, jr_011_48c2

    sub h
    add [hl]
    ld [hl], a
    ld a, c
    sbc c
    ld a, d
    sub l
    xor b
    ld [hl], a
    ld [hl], l
    ld h, a
    ld d, l
    ld h, a
    add l
    adc c
    sbc c
    adc c
    adc c
    db $76
    and [hl]
    add [hl]
    sub [hl]
    sub l
    ld a, b
    ld l, c
    ld d, a
    add l
    sub a
    add a
    adc b
    ld a, c
    sbc b
    ld a, c
    ld h, a
    ld a, d
    ld h, a
    ld a, c
    ld d, a
    ld [hl], a
    add a
    ld [hl], h
    rst $00
    ld l, e
    ld a, d
    adc b
    and l
    sub [hl]
    ld a, b
    ld h, l
    ld l, c
    ld e, d
    ld e, b
    ld l, b
    ld a, b
    db $76
    sub a
    adc c
    sbc b
    ld a, e
    ld l, c
    and [hl]
    adc b
    ld h, a
    ld l, b
    ld l, b
    ld h, [hl]
    ld d, a
    ld [hl], a
    adc b
    ld l, d
    ld a, d
    ld a, e
    add a
    cp b
    and [hl]
    sub a
    db $76
    db $76
    ld d, a
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    ld l, d
    adc e
    sbc b
    cp b
    adc c
    ld a, b
    add a
    ld d, a
    db $76
    ld h, [hl]
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc h
    ld e, c
    ld a, b
    xor b
    add a
    or a
    adc b
    add a
    add e
    sub [hl]
    ld h, [hl]
    ld h, h
    ld [hl], a
    ld h, [hl]
    xor d
    ld l, h
    ld l, c
    sbc b
    adc b
    add a
    ld a, b
    ld h, [hl]
    add a
    db $76
    db $76
    db $76
    add [hl]
    sbc d
    ld l, c
    ld l, d
    ld a, b
    and a
    ld a, c
    ld a, b
    ld a, c
    ld e, b
    add l
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld e, c
    ld a, b
    adc b
    add a
    ld a, c
    ld a, e
    ld e, b
    add l
    or [hl]
    db $76
    and [hl]
    ld a, c
    ld e, b
    sub [hl]
    adc b
    add [hl]
    ld a, b
    add a
    ld l, c
    ld [hl], a
    adc b
    xor b
    add [hl]
    sbc b
    db $76
    adc b
    ld [hl], a
    sbc c
    add [hl]
    add [hl]
    adc c
    add [hl]
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], h
    add a
    adc b
    ld a, b
    db $76
    sbc b
    add [hl]
    sbc b
    add a
    ld l, b
    sub a
    db $76
    add l
    sub [hl]
    sbc b
    ld [hl], a
    add a
    ld l, c
    add a
    add $78
    sub a
    adc c
    ld l, b
    ld [hl], l
    sub [hl]
    add [hl]
    adc b
    ld e, b
    add [hl]
    sbc b
    add a
    ld a, c
    add [hl]
    adc b
    adc c
    ld l, d
    ld e, c
    sub h
    add $77
    ld l, c
    ld h, a
    add l
    ld [hl], a
    ld a, b
    add [hl]
    add a
    ld a, b
    ld l, d
    ld e, c
    ld a, b
    sub [hl]
    or [hl]
    sbc c
    ld h, a
    ld a, b
    ld h, a
    sub l
    add a
    db $76
    ld a, c
    ld h, a
    sub [hl]
    xor b
    add a
    adc d
    ld [hl], a
    sub a
    and a
    sbc b
    ld l, c
    ld h, [hl]
    db $76
    add e
    and l
    ld a, d
    ld c, c
    sbc b
    adc e
    ld b, l
    xor b
    sub l
    add a
    ld l, b
    ld h, [hl]
    ld h, a
    add h
    sub a
    adc c
    ld a, d
    ld a, b
    ld a, b
    add a
    sub [hl]
    adc b
    adc d
    ld l, c
    ld a, b
    add [hl]
    and l
    sub a
    sub a
    ld e, c
    ld l, b
    ld l, c
    add a
    sub [hl]
    add a
    add a
    ld e, e
    ld e, b
    sub [hl]
    sbc b
    ld a, b
    adc b
    ld l, b
    ld a, b
    sub a
    ld a, c
    db $76
    add a
    ld l, e
    ld c, c
    ld l, b
    ld h, a
    sub [hl]
    sub a
    sbc b
    ld a, d
    ld l, c
    add a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    add a
    ld l, b
    sub [hl]
    sub a
    sbc b
    ld l, c
    adc b
    and [hl]
    sub [hl]
    and l
    sub [hl]
    ld l, b
    add [hl]
    ld l, c
    ld a, b
    ld a, c
    ld d, a
    ld a, b
    sub l
    sub l
    adc b
    ld [hl], a
    sbc b
    ld a, c
    db $76
    or a
    add [hl]
    and [hl]
    ld l, b
    ld [hl], a
    add l
    and [hl]
    and [hl]
    adc b
    ld a, b
    ld l, b
    add [hl]
    sub a
    add a
    adc b
    sbc c
    ld a, c
    ld e, e
    ld l, b
    add a
    add [hl]
    add [hl]
    ld a, d
    ld d, a
    ld [hl], a
    add [hl]
    sub l
    sbc b
    ld a, e
    ld l, c
    add a
    add [hl]
    sub a
    add a
    ld e, c
    ld [hl], a
    ld l, b
    ld [hl], a
    ld l, b
    ld l, c
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    add a
    sub [hl]
    sub [hl]
    ld l, c
    ld h, a
    ld [hl], a
    db $76
    ld a, c
    sbc c
    ld a, d
    ld a, c
    sbc b
    sbc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld l, b
    ld h, l
    add [hl]
    adc b
    sub [hl]
    add a
    xor c
    ld e, b
    ld a, c
    ld [hl], a
    sub a
    add a
    adc d
    ld h, [hl]
    add [hl]
    adc b
    db $76
    adc b
    ld e, b
    ld h, a
    adc b
    add [hl]
    adc b
    add a
    xor b
    ld a, b
    ld a, c
    add [hl]
    add a
    sub l
    ld d, a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    adc d
    ld h, a
    ld a, b
    ld [hl], a
    ld l, c
    ld e, c
    adc b
    add a
    sub [hl]
    sbc c
    ld e, h
    sbc b
    sbc b
    sub a
    ld h, [hl]
    ld [hl], a
    ld e, b
    ld [hl], a
    add a
    ld a, d
    ld e, c
    add [hl]
    add a
    sub a
    adc c
    ld l, b
    adc b
    and [hl]
    adc b
    adc b
    adc c
    ld e, c
    ld [hl], a
    add a
    ld l, b
    ld a, c
    add a
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    and l
    ld h, l
    adc c
    ld e, c
    ld e, c
    ld [hl], a
    add a
    add a
    ld a, c
    ld e, c
    ld a, c
    adc c
    ld [hl], a
    add a
    add a
    adc b
    ld e, c
    ld d, a
    add [hl]
    sub [hl]
    add [hl]
    ld [hl], a
    ld a, b
    ld l, d
    ld l, c
    adc c
    ld [hl], a
    sbc c
    ld a, c
    add l
    sbc b
    ld e, b
    ld l, b
    or a
    add [hl]
    adc c
    ld a, b
    sbc b
    adc b
    sbc c
    ld a, b
    ld a, b
    ld h, a
    add [hl]
    add a
    ld l, b
    ld h, a
    adc b
    add l
    db $76
    ld a, e
    ld e, c
    adc b
    ld a, b
    sub [hl]
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld h, a
    add a
    sub [hl]
    sub [hl]
    ld a, c
    sbc b
    add a
    sub [hl]
    sub [hl]
    ld a, e
    ld c, c
    ld a, b
    ld [hl], a
    sub l
    and [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add [hl]
    add a
    adc b
    add a
    ld a, b
    ld l, d
    ld a, b
    add a
    add a
    ld a, c
    ld a, d
    ld h, a
    add [hl]
    db $76
    or h
    sub [hl]
    adc b
    ld a, b
    sbc d
    ld h, a
    add a
    ld a, b
    ld [hl], a
    db $76
    ld l, b
    ld e, d
    ld e, d
    ld l, c
    adc b
    add a
    adc d
    ld l, b
    ld a, c
    db $76
    and [hl]
    sub l
    ld e, b
    ld e, c
    ld l, b
    adc b
    ld [hl], a
    add a
    adc c
    ld a, b
    sub a
    ld a, c
    add a
    ld a, b
    ld l, b
    ld h, [hl]
    db $76
    and [hl]
    adc b
    db $76
    sub a
    ld a, c
    ld e, c
    adc c
    ld l, b
    sbc b
    sub a
    sbc b
    ld l, b
    ld l, b
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld e, c
    add l
    sbc b
    sub a
    and [hl]
    ld l, c
    ld [hl], a
    xor c
    ld e, d
    ld l, b
    add [hl]
    sub [hl]
    db $76
    add a
    sbc b
    db $76
    sub [hl]
    ld a, c
    adc c
    ld a, d
    ld a, b
    adc b
    ld h, a
    sub a
    ld a, d
    ld e, b
    add a
    ld a, b
    ld [hl], l
    sub l
    sub a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, c
    ld a, c
    ld e, c
    add a
    adc b
    db $76
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    and a
    add [hl]
    add a
    adc b
    ld l, c
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    ld a, b
    adc c
    add a
    add a
    ld [hl], a
    ld [hl], a
    add [hl]
    add a
    ld l, d
    ld l, b
    ld a, c
    ld l, b
    and [hl]
    adc b
    add [hl]
    add a
    sbc c
    sub l
    sbc b
    ld a, b
    ld a, c
    ld l, b
    add [hl]
    add a
    add a
    adc b
    db $76
    adc c
    ld l, c
    adc b
    ld a, c
    ld [hl], a
    db $76
    add [hl]
    adc b
    ld h, a
    add [hl]
    adc b
    ld l, c
    ld l, c
    ld a, b
    and [hl]
    adc b
    ld l, c
    add [hl]
    add a
    add [hl]
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    add a
    add [hl]
    sub [hl]
    adc b
    ld a, d
    ld l, d
    ld [hl], a
    and l
    or a
    ld [hl], a
    ld e, b
    db $76
    sub [hl]
    add [hl]
    ld a, b
    ld l, b
    sub a
    sub a
    adc b
    adc c
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    ld l, d
    ld e, c
    add a
    add [hl]
    ld d, l
    and l
    add a
    adc b
    adc c
    ld l, c
    ld a, c
    ld a, b
    add [hl]
    sub a
    ld l, c
    ld e, c
    ld e, b
    ld h, a
    sub l
    sbc c
    ld l, d
    add a
    add [hl]
    sub a
    xor b
    add a
    sub [hl]
    adc c
    ld l, c
    ld l, b
    db $76
    add [hl]
    and l
    adc b
    ld l, b
    ld a, c
    xor d
    ld d, a
    and [hl]
    sbc b
    ld a, b
    ld a, c
    ld d, a
    and [hl]
    sbc b
    ld a, b
    ld [hl], a
    ld l, c
    ld l, c
    ld e, b
    add l
    sub [hl]
    ld [hl], a
    adc b
    ld l, d
    ld a, c
    adc c
    db $76
    sub [hl]
    sub a
    adc b
    ld l, c
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld l, b
    add [hl]
    or l
    adc b
    adc b
    ld a, c
    ld [hl], a
    add a
    ld l, d
    ld h, a
    ld [hl], a
    sub [hl]
    sub a
    ld l, c
    ld l, c
    ld a, c
    ld h, a
    and l
    sub [hl]
    sub a
    ld l, c
    ld h, a
    adc b
    add a
    ld a, b
    add a
    adc b
    ld e, c
    ld l, c
    ld h, a
    sub [hl]
    and a
    ld a, d
    ld a, c
    ld e, b
    ld [hl], a
    and l
    and [hl]
    add a
    adc c
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc d
    db $76
    and a
    sbc b
    add a
    ld l, d
    ld d, a
    sub l
    sub a
    add a
    sbc b
    ld l, c

Call_011_4cbc:
    adc b
    ld l, b
    ld [hl], a
    add [hl]
    sub a
    add a
    add a
    adc b
    ld [hl], a
    sub [hl]
    ld a, c
    ld l, b
    add a
    ld l, b
    add [hl]
    sbc b
    ld l, c
    add [hl]
    sbc b
    add [hl]
    ld l, b
    ld l, b
    ld a, b
    add a
    sub l
    and [hl]
    adc c
    ld a, b
    ld l, b
    add a
    ld l, c
    ld [hl], a
    sub [hl]
    add [hl]
    sub a
    adc c
    sbc c
    ld a, b
    add [hl]
    sub a
    ld a, b
    ld a, c
    ld e, c
    add a
    sub [hl]
    db $76
    ld a, c
    ld e, c
    ld l, b
    adc b
    ld l, c
    add [hl]
    ld a, b
    add [hl]
    adc d
    ld l, c
    db $76
    ld a, b
    add a
    add a
    add a
    ld a, c
    ld [hl], a
    ld a, c
    ld [hl], a
    add [hl]
    sbc c
    ld e, d
    ld [hl], a
    ld a, b
    add l
    and [hl]
    add [hl]
    ld [hl], a
    ld l, d
    ld [hl], a
    add a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add [hl]
    adc b
    sbc b
    ld a, c
    ld e, c
    add a
    sub [hl]
    sub l
    sub a
    adc b
    sub a
    ld e, c
    ld [hl], a
    and [hl]
    ld a, c
    ld h, a
    ld a, b
    ld h, a
    db $76
    sub a
    ld a, b
    ld a, c
    add a
    adc b
    add a
    adc b
    add [hl]
    adc b
    adc b
    ld l, c
    ld e, d
    ld e, b
    sub [hl]
    adc b
    ld h, [hl]
    ld a, c
    ld l, b
    and [hl]
    adc c
    add a
    ld a, c
    ld e, h
    ld h, a
    ld [hl], a
    add l
    adc b
    ld [hl], a
    ld a, c
    ld e, c
    ld a, b
    sbc c
    ld d, a
    sub [hl]
    ld a, d
    ld a, b
    adc c
    ld h, a
    sub a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld a, d
    ld a, c
    ld a, c
    ld h, a
    sub [hl]
    adc b
    ld [hl], a
    adc b
    ld e, d
    ld [hl], a
    ld l, c
    ld l, b
    add a
    sub [hl]
    sub a
    ld a, b
    ld a, b
    ld a, c
    add l
    and a
    ld l, c
    ld [hl], a
    ld l, c
    ld l, b
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld h, a
    ld a, b
    adc b
    sub [hl]
    sub [hl]
    sbc b
    adc c
    ld e, e
    ld e, b
    add a
    ld e, c
    db $76
    adc c
    ld e, b
    add [hl]
    sbc b
    adc b
    ld a, b
    add a
    sbc b
    ld e, d
    ld l, c
    ld [hl], a
    add [hl]
    sub l
    ld a, d
    ld e, c
    ld e, d
    ld e, c
    ld a, b
    ld a, c
    add a
    adc c
    ld l, c
    adc c
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    ld l, c
    ld h, a
    ld a, b
    ld a, b
    add a
    add a
    sub a
    ld a, c
    ld l, b
    adc b
    ld a, b
    db $76
    sub a
    ld [hl], a
    adc b
    ld e, d
    ld a, b
    ld [hl], a
    ld [hl], a
    and a
    ld l, b
    add a
    ld a, b
    add a
    add [hl]
    sub a
    sbc b
    ld a, c
    ld l, c
    ld a, b
    add [hl]
    sub l
    add [hl]
    adc b
    ld l, d
    ld c, c
    ld [hl], a
    add [hl]
    and [hl]
    adc c
    ld l, c
    ld a, b
    ld a, b
    ld h, a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    sub [hl]
    add [hl]
    sub a
    adc c
    ld l, b
    ld [hl], a
    ld a, c
    add l
    sub a
    adc b
    ld h, a
    add a
    ld a, b
    adc c
    ld l, c
    ld a, b
    sub l
    and a
    ld a, b
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, c
    db $76
    ld a, b
    ld a, c
    ld [hl], a
    ld l, c
    sub [hl]
    add [hl]
    adc b
    ld a, b
    ld e, d
    add l
    sub a
    sub [hl]
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    and a
    ld a, c
    ld [hl], a
    add a
    add [hl]
    sub [hl]
    adc b
    ld l, c
    ld a, b
    add a
    sub [hl]
    add a
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    sub a
    ld a, b
    add a
    ld a, b
    ld l, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    sub a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    add a
    adc b
    ld a, c
    ld l, b
    sub [hl]
    adc b
    add a
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    add a
    sub a
    ld l, c
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, b
    add a
    ld l, b
    ld [hl], a
    sub a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    ld l, c
    ld [hl], a
    ld a, c
    add a
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, c
    add a
    sbc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    db $76
    add [hl]
    add a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    add a
    adc b
    db $76
    add a
    ld a, b
    ld a, b
    adc c
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    sub a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    ld a, b
    adc b
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld l, c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    add a
    sbc b
    ld a, c
    ld a, c
    ld a, b
    add a
    add [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    adc b
    add a
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
    adc b
    add a
    adc b
    ld a, c
    ld a, c
    ld a, b
    ld l, c
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, b
    add a
    add a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    sub [hl]
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
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
    add a
    ld a, b
    ld [hl], a
    ld c, b
    adc b
    sbc e
    db $dd
    db $dd
    db $ec
    cp a
    or d
    ld b, $41
    jr nc, jr_011_4f3e

    ld [hl+], a
    dec h
    inc sp
    inc hl
    call nz, Call_011_5434
    ld b, a
    ld a, b
    add [hl]
    adc b
    xor d
    sbc d
    call z, $dcaa
    call z, $bccb
    jp z, $cb3d

    cp d
    adc c
    xor e
    cp b
    xor d
    sbc b
    add a
    ld h, l
    ld d, l
    ld d, l
    inc hl
    inc sp

jr_011_4f3e:
    inc hl
    inc hl
    jp nz, Jump_000_3333

    inc sp
    ld b, h
    ld d, l
    ld d, l
    ld h, a
    ld h, [hl]
    ld [hl], a
    add a
    add a
    sbc b
    sbc d
    sbc d
    xor e
    ld e, e
    call z, $cbcc
    db $db
    res 7, d
    xor c
    sbc c
    adc c
    add a
    ld h, [hl]
    db $76
    ld [hl], a
    add a
    ld h, [hl]
    and h
    ld d, l
    ld b, h
    inc [hl]
    ld b, e
    ld [hl-], a
    inc sp
    ld b, h
    ld b, l
    ld h, l
    ld a, b
    adc b
    sbc c
    sbc d
    xor d
    cp e
    ld e, d
    xor d
    cp d
    cp d
    cp d
    xor d
    res 5, e
    xor e
    cp d
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], l
    add l
    ld d, h
    ld b, h
    dec [hl]
    inc sp
    inc [hl]
    inc sp
    ld b, h
    ld d, h
    ld b, h
    dec [hl]
    ld d, l
    ld d, [hl]
    ld h, a
    ld a, b
    ld a, c
    ld a, b
    sbc b
    xor c
    cp e
    xor h
    cp h
    db $db
    call z, $cbcc
    cp h
    cp d
    cp c
    sbc d
    sbc b
    ld a, b
    ld d, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc sp
    inc [hl]
    inc [hl]
    ld b, l
    push bc
    ld d, a
    ld l, b
    ld a, b
    sbc c
    sbc d
    xor d
    xor d
    cp e
    xor e
    cp d
    cp e
    set 1, h
    cp h
    call z, $ab3b
    sbc d
    adc b
    sub a
    db $76
    db $76
    ld d, l
    ld h, h
    ld d, h
    ld b, h
    inc [hl]
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    or h
    inc [hl]
    ld b, l
    ld b, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc c
    sbc c
    sbc d
    xor e
    xor h
    cp e
    cp h
    cp h
    dec sp
    call z, $ccbc
    cp e
    cp e
    cp d
    xor c
    sbc c
    adc b
    ld a, b
    ld h, a
    ld h, l
    ld h, l
    ld b, h
    ld b, h
    and h
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld b, d
    inc [hl]
    inc sp
    ld b, h
    ld b, l
    ld h, l
    db $76
    ld l, b
    adc b
    adc b
    sbc c
    xor d
    ld a, d
    xor d
    cp e
    cp h
    cp h
    cp h
    cp e
    cp h
    cp h
    set 1, d
    cp d
    xor c
    sbc c
    add a
    ld [hl], a
    ld h, a
    ld h, l
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    dec [hl]
    inc [hl]
    inc sp
    inc sp
    inc sp
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    ld d, [hl]
    or a
    ld [hl], a
    ld a, b
    sbc c
    xor c
    cp e
    xor e
    call z, $cccb
    cp h
    call z, $cccc
    cp e
    srl d
    xor d
    sbc c
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld h, l
    ld h, h
    ld d, l
    inc [hl]
    ld b, e
    inc sp
    inc sp
    ld b, e
    call nz, Call_000_3434
    ld b, l
    ld b, l
    ld h, [hl]
    ld h, [hl]
    ld a, b
    adc b
    adc c
    sbc c
    xor d
    xor e
    cp e
    call z, Call_011_4cbc
    call c, $cccd
    cp h
    res 7, d
    xor d
    xor c
    adc b
    adc b
    db $76
    ld h, [hl]
    ld h, [hl]
    ld b, l
    ld b, h
    sub h
    inc [hl]
    ld b, e
    ld b, e
    inc sp
    inc [hl]
    inc sp
    ld b, e
    dec [hl]
    dec [hl]
    ld b, h
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    xor b
    xor d
    xor d
    xor d
    cp h
    set 1, h
    call z, $bcdc
    call z, $cbcc
    cp e
    sbc d
    xor c
    ld e, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, h
    ld b, h
    inc [hl]
    ld b, d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, h
    ld b, h
    call nz, Call_011_5656
    ld l, b
    ld [hl], a
    adc b
    adc c
    sbc c
    xor d
    xor d
    xor e
    cp e
    cp e
    res 7, h
    cp h
    ld c, e
    cp h
    cp h
    cp e
    cp d
    xor c
    xor c
    sbc b
    add a
    add a
    ld h, a
    ld h, l
    ld h, l
    ld b, h
    ld d, h
    ld b, e
    and e
    inc sp
    ld b, e
    inc [hl]
    inc h
    inc [hl]
    inc [hl]
    ld b, h
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    xor d
    adc d
    cp e
    res 7, h
    cp h
    set 1, h
    res 7, h
    cp e
    cp e
    xor d
    xor d
    sbc c
    sbc c
    sub a
    ld l, b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld b, l
    ld d, l
    ld b, h
    dec [hl]
    inc sp
    ld b, e
    ld b, h
    ld b, h
    inc [hl]
    ld b, l
    ld b, h
    or l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    sbc d
    sbc d
    cp d
    xor e
    res 7, e
    set 3, e
    cp h
    call z, $bb3c
    cp e
    xor e
    xor c
    xor c
    sbc c
    add a
    ld a, b
    ld h, [hl]
    ld [hl], l
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    sub h
    ld b, e
    ld b, e
    ld b, h
    inc [hl]
    inc [hl]
    ld b, h
    ld d, h
    ld d, l
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld l, b
    sbc b
    sbc c
    sbc c
    ld a, d
    xor d
    cp e
    cp e
    cp h
    set 1, e
    call z, $cbcb
    cp e
    cp d
    xor e
    sbc c
    xor b
    sbc b
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, h
    ld d, l
    ld b, h
    ld b, h
    inc [hl]
    ld b, e
    ld b, e
    ld b, h
    inc [hl]
    ld b, e
    ld d, l
    ld b, l
    or l
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, b
    adc c
    adc c
    sbc d
    xor c
    xor e
    xor e
    cp e
    set 1, h
    cp h
    cp h
    inc a
    call z, $abbb
    cp d
    xor d
    sbc c
    sbc b
    ld a, b
    add a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld d, h
    ld b, h
    and e
    ld b, h
    inc hl
    inc sp
    ld b, e
    inc sp
    ld b, h
    ld b, h
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc b
    sbc d
    xor e
    xor d
    jp z, $bcbb

    cp e
    res 7, h
    cp e
    cp e
    cp d
    cp c
    cp c
    xor d
    adc c
    ld b, a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, e
    ld d, e
    ld b, h
    inc [hl]
    inc [hl]
    inc h
    inc [hl]
    ld b, h
    ld b, h
    push bc
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, a
    ld [hl], a
    adc b
    adc d
    sbc c
    xor d
    xor e
    cp e
    cp e
    set 3, h
    cp h
    ld c, e
    db $db
    call z, $baba
    xor d
    sbc d
    sbc d
    adc b
    sub a
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    add h
    ld b, h
    ld b, e
    ld b, h
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    xor b
    sbc c
    xor d
    xor e
    xor e
    xor h
    cp h
    cp h
    res 7, h
    call z, $bcbb
    cp d
    cp d
    xor d
    ld e, b
    sbc b
    sub a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld b, h
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    dec [hl]
    ld b, h
    ld b, h
    call nz, Call_011_5554
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld l, b
    ld [hl], a
    add a
    adc c
    sbc c
    sbc d
    xor d
    cp d
    xor e
    cp e
    ld e, e
    cp e
    cp h
    call z, $bbbc
    cp e
    jp z, $9aaa

    sbc c
    sbc b
    adc b
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, h
    inc [hl]
    inc sp
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld [hl], a
    xor b
    add a
    adc c
    sbc b
    sbc c
    xor c
    xor d
    xor e
    xor e
    cp e
    res 7, h
    cp e
    cp d
    cp e
    cp e
    ld c, e
    sbc d
    xor c
    sbc c
    adc c
    add a
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    inc sp
    and e
    ld b, h
    inc [hl]
    inc [hl]
    dec [hl]
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc b
    adc c
    sbc c
    xor c
    xor e
    adc e
    cp e
    cp e
    res 7, e
    cp h
    res 5, h
    cp e
    xor e
    xor d
    sbc d
    xor c
    sbc c
    adc b
    adc b
    ld d, [hl]
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    inc [hl]
    ld b, l
    ld b, h
    ld d, h
    or l
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    adc b
    adc c
    sbc c
    sbc d
    sbc e
    xor d
    cp h
    cp d
    cp e
    cp e
    cp h
    ld c, e
    cp e
    jp z, $aabb

    xor d
    xor b
    sbc b
    sub a
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    add l
    ld b, h
    ld d, l
    ld b, h
    inc [hl]
    ld b, h
    ld b, h
    ld b, l
    ld d, h
    ld b, l
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld l, b
    ld l, b
    ld a, b
    xor c
    adc d
    sbc c
    sbc e
    cp d
    xor e
    cp d
    res 7, e
    cp h
    cp e
    cp h
    xor e
    cp e
    cp d
    xor d
    ld c, c
    sbc c
    adc c
    ld a, b
    add a
    db $76
    db $76
    ld h, l
    ld d, h
    ld h, h
    ld d, h
    ld d, l
    dec [hl]
    ld b, h
    ld b, h
    ld b, h
    and l
    ld b, h
    ld b, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    adc c
    sbc b
    sbc d
    sbc d
    xor d
    xor d
    ld l, e
    xor h
    cp d
    cp e
    cp h
    cp e
    cp d
    cp e
    xor d
    xor d
    sbc d
    sbc c
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    inc [hl]
    ld d, h

Call_011_52c9:
    ld b, e
    ld d, h
    ld b, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    or a
    ld h, a
    ld [hl], a
    add a
    sbc b
    sbc c
    adc d
    xor d
    xor d
    xor d
    cp e
    cp d
    res 7, h
    cp e
    cp e
    ld e, e
    xor e
    xor e
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, h
    ld d, l
    ld b, h
    sub h
    ld b, h
    inc [hl]
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    xor e
    xor d
    xor e
    cp e
    cp d
    cp e
    cp e
    cp e
    xor e
    xor d
    xor d
    xor d
    xor c
    xor c
    ld c, b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, h
    ld b, l
    ld d, h
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    and h
    ld d, l
    ld h, h
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], a
    ld [hl], a
    add a
    sbc b
    adc c
    sbc c
    sbc d
    xor d
    xor e
    xor e
    ld a, h
    cp d
    cp e
    xor e
    cp h
    xor e
    xor d
    cp d
    sbc c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    and [hl]
    ld [hl], a
    add a
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc d
    cp d
    xor d
    cp d
    xor d
    xor e
    xor e
    ld e, e
    sbc d
    xor c
    sbc c
    sbc b
    adc c
    ld a, c
    add a
    add a
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    sub l
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc c
    adc c
    adc c
    sbc c
    sbc c
    xor c
    xor d
    sbc d
    sbc e
    sbc d
    cp d
    cp d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc b
    sbc c
    ld e, c
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    and [hl]
    ld d, [hl]
    ld d, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc d
    sbc d
    ld a, c
    xor d
    sbc e
    sbc d
    sbc d
    xor c
    xor c
    adc c
    sbc c
    adc b
    sbc c
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    db $76
    db $76
    and a
    ld a, b
    ld [hl], a
    adc b
    adc b
    sbc b
    sbc c
    adc d
    sbc b
    sbc d
    xor c
    sbc d
    xor d
    sbc d
    sbc d
    sbc d
    ld e, c
    sbc d
    adc d
    adc c
    sbc b
    adc c
    adc b
    add a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    db $76
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld [hl], a
    add a
    ld a, b
    adc b
    sbc c
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    sbc d
    adc c
    adc c
    sbc b
    ld a, b
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld d, a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    sub [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    adc c
    sbc c
    ld a, c
    sbc b
    sbc c
    sbc c

Call_011_5434:
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc c
    adc c
    sbc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], l
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    add a
    sbc b
    sbc b
    adc c
    adc c
    sbc c
    adc c
    adc c
    sbc b
    ld l, c
    sbc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc c
    sbc c
    adc b
    sbc c
    adc c
    sbc c
    adc c
    adc b
    sbc c
    adc b
    adc b
    ld a, b
    adc c
    ld a, b
    add a
    add a
    ld a, b
    add a
    db $76
    ld [hl], a
    add a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld a, b
    adc c
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    sub a
    add [hl]
    ld a, b
    ld a, b
    db $76
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    ld [hl], a
    adc c
    ld a, b
    adc b
    adc c
    adc b
    add a
    add a
    adc b
    add a
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [$8989], sp
    adc c
    adc c
    sbc $ce
    db $fd

jr_011_54f8:
    call z, $8dda
    ld [hl], d
    ld [bc], a
    ld h, e
    ld bc, $c102
    ld hl, $1221
    ld [hl+], a
    ld b, e
    inc [hl]
    ld d, a
    ld [hl], a
    sbc b
    xor e
    xor e
    call z, $cbcc
    call c, $cc4d
    call $cccc
    call z, $bcbc
    cp h
    sbc e
    cp c
    adc c
    adc b
    add [hl]
    ld d, a
    ld h, l
    ld h, h
    ld b, e
    ld [hl-], a
    inc hl
    inc sp
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc hl
    inc sp
    inc sp
    inc sp
    inc hl
    ld b, h
    ld b, l
    add $88
    sbc d
    sbc d
    xor e
    call z, $ccbc
    set 3, e
    call z, $cccc
    cp l
    set 1, h
    inc a
    cp h
    cp e
    jp z, $99ab

    adc b
    ld [hl], a
    ld h, l
    ld d, h
    ld b, h
    inc hl
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    jp $2323


    inc sp

Call_011_5554:
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld b, h
    ld b, [hl]
    ld h, [hl]
    adc b
    sbc c
    cp d
    cp d
    adc h
    call z, $dccb
    call c, $ccbc
    call z, $cccc
    call z, $cccb
    xor e
    cp d
    sbc c
    jr c, jr_011_54f8

    db $76
    ld d, h
    ld d, h
    ld b, h
    inc sp
    inc sp
    inc hl
    ld [hl+], a
    inc sp
    inc sp
    inc de
    ld [hl+], a
    inc sp
    ld [hl-], a
    db $d3
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    ld d, [hl]
    ld h, a
    ld h, a
    adc c
    sbc c
    cp d
    xor e
    cp h
    cp l
    call z, Call_011_5ddc
    call c, $cccd
    call z, $cdcd
    cp h
    cp e
    cp e
    cp d
    sbc d
    adc c
    adc b
    ld [hl], a
    ld h, [hl]
    ld b, l
    ld b, h
    ld b, h
    inc sp
    inc sp
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [hl+], a
    inc sp
    inc hl
    inc sp
    inc sp
    ld b, l
    push bc
    ld d, l
    ld h, [hl]
    ld h, a
    add a
    sbc c
    sbc d
    sbc d
    cp d
    cp h
    call z, $cdbd
    call $cccd
    ld e, h
    call z, $cccb
    res 7, e
    cp h
    xor e
    xor d
    xor d
    sbc b
    sbc b
    add a
    ld h, a
    ld d, l
    ld b, l
    ld h, e
    ld b, e
    inc sp
    ld [hl-], a
    inc hl
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc hl
    ld b, e
    inc [hl]
    inc sp
    ld b, h
    ld b, h
    ld h, l
    sub $67
    ld h, a
    adc c
    sbc c
    sbc d
    sbc d
    cp h
    cp e
    call z, $ddbc
    call $cccd
    call c, $dc3d
    call z, $bbbc
    cp d
    xor e
    sbc d
    sbc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld h, l
    ld d, h
    ld b, h
    ld h, h
    ld b, e
    inc sp
    inc sp
    ld [hl-], a
    ld [hl+], a
    inc sp
    ld [hl+], a
    inc sp
    inc hl
    inc [hl]
    inc sp
    ld b, e
    ld b, h
    ld b, l
    ld d, l
    rst $00
    ld h, a
    ld a, b
    adc d
    sbc d
    sbc e
    xor e
    cp h
    cp h
    call c, $ccdc
    db $dd
    call c, $cccc
    dec a
    cp l
    cp e
    jp z, $abbb

    xor d
    sbc d
    adc b
    sub a
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, h
    ld b, e
    ld h, e
    inc sp
    inc sp
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld h, [hl]
    add $77
    ld [hl], a
    adc c
    sbc c
    xor d
    xor d
    cp e
    cp h
    set 1, h
    call c, $cdcd
    db $dd
    call z, $cb3d
    call z, $cbbb
    cp d

Call_011_5656:
    cp d
    sbc d
    sbc c
    sub a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld b, l
    ld d, h
    inc sp
    inc hl
    inc sp
    inc hl
    ld [hl+], a
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    ld b, e
    ld b, h
    ld b, e
    ld d, h
    ld d, l
    ld b, [hl]
    sub $66
    ld h, a
    ld a, b
    adc b
    sbc c
    xor d
    cp e
    xor h
    cp h
    call c, $cdcd
    call c, $cddd
    ld c, h
    call z, $bccc
    cp e
    cp d
    cp d
    xor d
    sbc c
    sbc c
    sbc b
    ld a, b
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    inc sp
    inc sp
    inc sp
    ld [hl+], a
    inc sp
    inc hl
    inc hl
    inc sp
    inc sp
    inc hl
    ld b, e
    ld b, h
    inc [hl]
    ld d, l
    push de
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    sbc c
    sbc d
    xor e
    cp e
    set 1, h
    call $dddc
    call z, $dc5c
    call $cccb
    res 7, e
    cp e
    xor d
    xor c
    sbc d
    adc c
    add a
    add a
    db $76
    ld [hl], l
    ld b, l
    ld b, l
    ld b, h
    inc sp
    inc sp
    inc hl
    ld [hl-], a
    inc hl
    ld [hl+], a
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld b, e
    inc [hl]
    ld b, e
    ld b, l
    push de
    ld d, l
    ld d, l
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc c
    sbc c
    xor c
    xor e
    cp e
    cp e
    call z, $cccc
    ld a, h
    db $dd
    call c, $dcdc
    call c, $dbbc
    res 7, e
    xor d
    xor c
    xor b
    sbc b
    adc b
    ld a, b
    ld [hl], $56
    ld d, l
    ld d, l
    ld b, e
    ld b, e
    inc sp
    inc [hl]
    inc hl
    inc hl
    ld [hl-], a
    inc sp
    inc hl
    inc hl
    inc [hl]
    inc h
    or h
    ld b, h
    ld b, l
    ld b, [hl]
    ld d, l
    ld h, a
    db $76
    adc b
    adc b
    sbc b
    sbc d
    xor d
    cp d
    cp e
    cp e
    call z, $cc8d
    call $dccd
    call $ccdc
    set 1, e
    cp h
    cp d
    cp d
    xor c
    sbc c
    sbc c
    add hl, sp
    ld a, b
    ld a, b
    ld h, [hl]
    ld h, l
    ld h, l
    ld b, l
    ld b, h
    ld b, e
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    inc sp
    inc sp
    or e
    inc hl
    ld b, h
    inc [hl]
    ld b, h
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    ld h, a
    add a
    add a
    sbc b
    sbc c
    xor d
    cp d
    xor e
    cp e
    set 1, h
    call $dbcc
    call c, $ccdc
    call z, $cccb
    cp e
    cp d
    xor d
    ld a, [hl+]
    sbc c
    sbc b
    sbc b
    ld a, b
    ld [hl], a
    ld d, a
    ld h, l
    ld h, h
    ld b, l
    ld b, h
    inc [hl]
    ld b, e
    inc sp
    inc sp
    inc sp
    sub e
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    inc [hl]
    ld d, e
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld a, b
    ld a, b
    sbc b
    cp c
    xor d
    xor e
    cp d
    set 1, h
    call z, $ccdc
    db $dd
    call z, $cddc
    cp l
    cp h
    cp e
    ld c, e
    cp e
    xor d
    xor d
    sbc c
    sbc c
    adc b
    ld [hl], a
    add [hl]
    db $76
    ld [hl], l
    ld h, l
    ld d, l
    ld b, l
    ld b, h
    ld b, e
    ld [hl], e
    ld b, e
    ld b, d
    inc sp
    inc hl
    inc sp
    inc sp
    inc sp
    ld b, h
    inc [hl]
    ld b, h
    ld d, h
    ld d, l
    ld h, l
    ld h, l
    ld h, a
    rst $00
    ld a, b
    adc b
    sbc c
    sbc c
    xor d
    cp d
    cp d
    cp h
    cp h
    cp h
    call z, $ccdc
    call c, Call_011_5ccc
    cp h
    cp h
    res 7, e
    cp d
    xor d
    xor d
    adc c
    sbc c
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    ld b, e
    inc [hl]
    inc hl
    ld [hl-], a
    inc sp
    ld b, e
    inc sp
    inc h
    inc [hl]
    ld b, h
    dec [hl]
    ld d, h
    push bc
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc d
    sbc d
    cp e
    cp e
    set 1, h
    set 1, l
    ld a, h
    call z, $cdcc
    call z, $bccc
    cp e
    cp d
    cp e
    xor c
    xor d
    sbc b
    sbc b
    adc c
    ld a, b
    ld b, a
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld b, h
    ld d, h
    ld b, h
    ld b, e
    ld b, e
    inc sp
    ld b, d
    inc [hl]
    ld [hl-], a
    inc sp
    ld b, e
    inc [hl]
    or h
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld h, l
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc c
    sbc d
    xor d
    xor e
    xor e
    sbc e
    cp e
    call z, $cbcc
    call z, $cccd
    cp h
    call z, $babc
    cp e
    xor e
    xor d
    sbc d
    add hl, sp
    sbc b
    adc b
    ld a, b
    ld h, a
    db $76
    ld h, [hl]
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc sp
    inc hl
    sub d
    ld b, d
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    adc b
    add a
    sbc c
    cp b
    xor c
    cp c
    cp e
    cp e
    set 1, e
    call z, $cccc
    call c, $cccd
    call z, $bbbc
    ld c, e
    cp e
    xor d
    sbc d
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    ld h, h
    ld b, h
    inc sp
    ld b, e
    inc [hl]
    inc hl
    ld b, e
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ret z

    ld [hl], a
    ld [hl], a
    sbc b
    adc d
    sbc c
    sbc d
    xor d
    cp d
    jp z, $cbcb

    cp h
    cp h
    cp h
    cp h
    ld l, h
    set 1, e
    cp e
    cp e
    cp e
    cp e
    sbc d
    xor c
    sbc c
    sbc c
    add a
    adc b
    ld [hl], a
    ld h, a
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc [hl]
    inc sp
    inc sp
    ld b, e
    inc [hl]
    inc [hl]
    ld b, h
    ld d, h
    call nz, Call_011_6555
    ld h, [hl]
    ld h, [hl]
    db $76
    add a
    adc b
    adc c
    sbc b
    xor d
    sbc d
    sbc d
    xor e
    xor h
    cp d
    adc h
    set 1, h
    cp h
    cp h
    set 1, e
    cp h
    cp e
    cp e
    xor d
    cp c
    cp c
    sbc c
    sbc c
    sbc b
    jr c, jr_011_593a

    ld [hl], a
    db $76
    db $76
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, e
    inc [hl]
    inc sp
    inc [hl]
    inc h
    inc [hl]
    and h
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    adc b
    adc c
    adc d
    adc d
    xor d
    sbc d
    cp e
    xor e
    cp e
    call z, $cbbb
    cp h

jr_011_58e9:
    cp e
    cp h
    cp h
    cp e
    cp e
    cp e
    xor d
    dec sp
    xor c
    sbc c
    sbc c
    adc b
    sub a
    add a
    db $76
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld b, l
    ld b, e
    ld b, h
    ld [hl], h
    inc [hl]
    inc sp
    ld b, e
    inc [hl]
    ld b, h
    ld b, h
    inc [hl]
    ld b, l
    ld b, l
    ld b, h
    ld d, l
    ld h, [hl]
    ld h, l
    db $76
    ld [hl], a
    ret z

    adc b
    ld a, b
    sbc b
    xor c
    xor d
    sbc d
    cp e
    cp d
    xor e
    cp e
    cp h
    res 7, e
    call z, Call_011_6ccb
    cp e
    cp e
    xor e
    xor d
    cp d
    xor c
    xor c
    xor c
    adc c
    adc b
    ld a, b
    ld h, a
    ld h, a
    ld h, a
    ld d, [hl]
    ld d, [hl]
    ld d, h
    ld h, l
    ld b, h
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_011_593a:
    ld b, e
    ld b, h
    ld b, e
    ld d, h
    ld d, l
    ld b, l
    or l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    adc b
    ld a, c
    adc c
    adc c
    sbc d
    xor d
    sbc d
    cp d
    cp e
    cp h
    ld a, h
    cp e
    set 1, e
    cp h
    set 1, e
    cp d
    cp e
    cp d
    sbc e
    sbc d
    xor c
    sbc c
    sbc b
    sbc b
    jr c, jr_011_58e9

    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld d, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, e
    ld b, h
    sub h
    ld b, h
    ld b, h
    ld d, h
    ld b, l
    ld d, h
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc d
    adc d
    xor d
    xor d
    xor d
    xor e
    cp e
    xor e
    cp h
    cp h
    cp e
    cp h
    cp h
    xor e
    res 5, e
    cp d
    cp d
    ld a, [hl-]
    xor d
    sbc c
    xor b
    adc c
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, h
    ld b, l
    dec [hl]
    ld [hl], h
    ld b, h
    ld b, h
    ld b, h
    inc sp
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    rst $00
    ld a, b
    add a
    sbc b
    sbc c
    adc d
    xor c
    xor d
    xor e
    xor d
    cp e
    cp e
    cp d
    res 7, e
    bit 5, e
    cp e
    cp d
    cp d
    cp d
    xor d
    sbc d
    sbc c
    xor c
    sbc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld d, l
    ld h, l
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    dec [hl]
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    and h
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    add a
    adc b
    adc c
    adc c
    sbc c
    sbc d
    xor c
    xor d
    xor d
    cp e
    adc e
    cp e
    res 7, e
    cp e
    cp e
    res 7, e
    xor e
    xor d
    xor d
    xor d
    sbc c
    sbc c
    sbc c
    adc c
    ld c, b
    add a
    add a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    ld d, h
    ld d, e
    ld b, l
    ld b, h
    sub h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    ld a, b
    adc b
    sbc b
    sbc b
    cp c
    sbc c
    sbc d
    xor d
    xor e
    xor e
    xor e
    cp e
    xor e
    jp z, $cbbb

    xor e
    cp d
    cp d
    xor d
    ld c, d
    sbc d
    sbc d
    sbc c
    sbc b
    sbc b
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld h, l
    ld b, h
    ld d, h
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld b, l
    ld h, l
    ld h, l
    ld h, [hl]
    db $76
    and a
    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    xor d
    xor c
    xor e
    xor c
    cp e
    xor e
    xor e
    xor e
    ld a, e
    xor e
    cp d
    xor d
    cp d
    xor d
    xor d
    xor d
    sbc c
    sbc c
    adc c
    sub a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld d, [hl]
    db $76
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld b, l
    ld d, h
    ld d, l
    ld b, l
    ld b, [hl]
    and l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    adc c
    adc c
    sbc b
    xor c
    sbc c
    adc d
    sbc d
    xor d
    xor d
    xor e
    xor d
    cp c
    cp e
    xor d
    xor d
    xor d
    sbc d
    xor c
    xor b
    xor c
    sbc b
    ld e, b
    adc c
    add a
    ld a, b
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, h
    ld d, l
    ld d, h
    ld [hl], l
    ld d, l
    ld d, l
    ld h, h
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    xor c
    adc b
    sbc c
    sbc c
    sbc d
    adc d
    sbc d
    sbc d
    xor c
    xor d
    xor d
    sbc d
    xor d
    sbc d
    sbc d
    xor d
    ld l, d
    sbc c
    xor c
    adc d
    sbc b
    sbc c
    adc c
    sub a
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld d, a
    sub [hl]
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    sbc b
    sbc c
    xor c
    sbc c
    sbc c
    sbc d
    adc d
    sbc c
    xor c
    xor d
    sbc c
    xor c
    xor c
    xor c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    db $76
    add a
    ld a, b
    ld l, b
    adc b
    ld a, b
    adc b
    ld a, c
    adc c
    sbc b
    sbc c
    sbc c
    sbc b
    sbc c
    xor c
    sbc c
    xor c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    ld l, b
    sbc c
    add a
    sub a
    sub a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, l
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    ld a, c
    sbc c
    adc c
    sbc c
    adc b
    adc c
    adc c
    adc b
    sub a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    add a
    ld h, a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sub a
    sbc b
    adc b
    sbc b
    ld a, b
    adc c
    adc c
    adc b
    sbc b
    adc c
    adc b
    sbc c
    sbc b
    sbc c
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    ld l, b
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    sbc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    adc b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [$8888], sp
    sbc b
    rst $08
    db $fd
    db $dd
    call z, $aacc
    sub [hl]
    xor c
    ld d, c
    inc de
    ld d, b
    inc sp
    jp $2101


    ld [de], a
    ld de, $1222
    dec [hl]
    ld h, [hl]
    sbc b
    adc d
    cp e
    xor h
    res 5, l
    call c, $dc7d
    call $ccdc
    call z, $aaac
    cp e
    sbc e
    xor e
    xor c
    sbc c
    xor d
    xor c
    sub a
    ld b, a
    ld h, [hl]
    ld h, l
    ld h, h
    inc [hl]
    inc sp
    inc sp
    inc sp
    inc sp
    inc hl
    inc hl
    inc hl
    ld b, e
    ld [hl-], a
    ld b, d
    ld b, d
    jp $3433


    inc sp
    ld b, e
    ld b, h
    ld b, [hl]
    ld d, [hl]
    ld [hl], a
    ld a, b
    sbc c
    sbc e
    cp e
    call $dccb
    sbc l
    cp h
    call z, $cccc
    call z, $cccc
    set 1, h
    cp h
    cp h
    cp h
    res 7, e
    cp d
    ld c, c
    add a
    db $76
    ld d, l
    ld d, h
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc hl
    inc sp
    inc hl
    ld [hl-], a
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    jp nz, $3433

    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld b, l
    ld d, l
    db $76
    ld [hl], a
    ld a, c
    adc c
    sbc d
    xor d
    cp e
    call z, $cdbd
    call $ccbd
    call c, $dccd
    call z, $cbcd
    db $db
    call z, $cbbc
    inc l
    xor d
    cp d
    sbc c
    sbc b
    sub a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, e
    ld b, e
    ld [hl-], a
    ld b, e
    ld [hl-], a
    inc hl
    add d
    ld sp, $2232
    ld [hl-], a
    inc sp
    inc sp
    inc h
    inc [hl]
    ld b, e
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    db $76
    ld [hl], a
    rst $00
    adc b
    sbc d
    xor c
    cp d
    cp e
    cp h
    call c, $ccdd
    call $cddd
    call c, $ccdd
    ld e, h
    call z, $dccb
    cp e
    cp h
    xor d
    sbc d
    sbc d
    adc c
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, e
    ld b, e
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
    inc hl
    ld b, d

Call_011_5ccc:
    ld b, e
    inc [hl]
    inc [hl]
    ld b, h
    call nz, Call_011_6554
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], a
    ld l, b
    add a
    sub a
    sbc c
    sbc d
    xor d
    xor e
    cp e
    cp e
    xor l
    call $cccd
    sbc $dc
    db $dd
    call c, $cddd
    call z, $bbbc
    xor e
    cp e
    sbc c
    add hl, hl
    sbc c
    sub a
    sub a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld b, h
    ld b, e
    inc hl
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    inc hl
    add d
    inc hl
    inc hl
    inc sp
    inc sp
    inc sp
    ld b, h
    ld d, l
    ld b, l
    ld d, h
    ld d, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ret z

    ld a, b
    sbc c
    sbc c
    sbc d
    xor d
    cp d
    cp e
    set 1, h
    call z, $cdbc
    call z, $ccdc
    ld a, h
    call z, $cbbb
    cp e
    xor e
    xor e
    xor d
    xor d
    xor c
    xor c
    sbc c
    adc b
    ld a, b
    add a
    add a
    ld [hl], $66
    ld h, l
    ld d, l
    ld b, h
    ld b, e
    ld b, e
    inc sp
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    inc sp
    inc sp
    or e
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a

jr_011_5d4a:
    add a
    adc c
    adc c
    sbc c
    xor d
    xor e
    xor e
    cp e
    call z, $cdcc
    db $dd
    db $dd
    db $dd
    db $dd
    call c, $ccdc
    call z, $cabb
    xor e
    ld c, e
    xor d
    sbc c
    sbc c
    sbc b
    adc b
    add a
    ld [hl], a
    add a
    ld h, [hl]
    ld h, [hl]
    ld [hl], l
    ld h, l
    ld d, l
    ld b, h
    ld d, e
    ld h, h
    ld b, e
    ld b, e
    ld b, e
    inc sp
    inc [hl]
    inc hl
    inc sp
    inc [hl]
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld h, l
    push bc
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    sbc b
    sbc c
    xor c
    xor e
    xor d
    jp z, $bcbc

    sbc h
    call z, $dccd
    db $dd
    db $dd
    db $dd
    call c, $cccc
    call z, $bbbb
    jp z, $aaaa

    jr c, jr_011_5d4a

    sbc b
    add a
    add a
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld b, e
    ld b, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    add d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc [hl]
    ld b, e
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    rst $00
    adc b
    ld a, c
    sbc b
    sbc c
    xor c
    xor d
    xor e
    xor e
    xor e
    cp e
    cp h
    cp h
    set 1, h
    call z, $cc8c
    call $cbcb
    jp z, $bbbc

    cp e
    cp d
    xor d
    sbc c

Call_011_5ddc:
    sbc c
    sbc c
    adc b
    sbc b
    jr c, jr_011_5e5a

    db $76
    ld h, a
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    inc [hl]
    inc [hl]
    inc h
    inc sp
    ld b, d
    inc sp
    add d
    inc sp
    inc h
    inc sp
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld b, [hl]
    ld b, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld l, b
    ld a, b
    add a
    ret z

    sbc b
    sbc c
    sbc c
    xor d
    xor d
    cp e
    cp e
    set 1, h
    set 1, l
    set 3, l
    call Call_011_6bcd
    call z, $cbcc
    cp e
    cp e
    xor d
    xor d
    sbc c
    xor c
    xor b
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    scf
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, l
    ld b, h
    inc sp
    ld b, h
    inc sp
    ld b, e
    inc sp
    ld b, e
    inc [hl]
    inc [hl]
    sub h
    inc [hl]
    dec [hl]
    ld b, h
    dec [hl]
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    adc b
    cp b
    adc c
    sbc c
    xor c
    xor d
    xor d
    xor e
    res 7, e
    cp l
    cp h
    call z, $cccd
    db $db
    call $cb6c
    set 1, e
    xor e
    cp d
    cp d
    cp d
    sbc c
    sbc c

jr_011_5e5a:
    sbc c
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], $56
    ld d, l
    ld d, h
    ld b, h
    ld b, h
    inc [hl]
    inc sp
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    inc hl
    inc sp
    inc [hl]
    sub h
    inc [hl]
    ld b, l
    ld b, h
    ld d, h
    ld d, l
    ld h, l
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    add a
    adc b
    adc c
    adc c
    adc c
    cp c
    sbc d
    xor d
    xor c
    xor e
    cp d
    cp d
    xor h
    cp e
    call z, $bcbc
    set 1, h
    cp h
    bit 7, e
    cp e
    cp d
    cp e
    xor d
    xor d
    xor d
    sbc c
    sbc d
    adc c
    sbc c
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], $66
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    inc sp
    ld b, e
    inc sp
    inc sp
    ld b, e
    ld b, e
    sub h
    inc [hl]
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    db $76
    add a
    ld a, b
    adc b
    sbc b
    adc c
    cp c
    xor c
    sbc d
    xor c
    cp d
    cp e
    res 7, h
    set 1, h
    cp h
    call z, $ccbc
    cp h
    bit 5, h
    cp d
    res 5, d
    cp d
    cp c
    xor c
    xor c
    sbc c
    sbc c
    ld a, b
    add a
    add a
    ld a, b
    ld h, a
    ld h, [hl]
    ld b, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld b, [hl]
    ld d, h
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    dec [hl]
    inc [hl]
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    add h
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    adc b
    adc c
    cp c
    sbc c
    sbc c
    xor d
    xor d
    xor d
    xor d
    cp e
    xor e
    cp e
    cp h
    set 1, h
    cp e
    cp e
    call z, $bb6c
    cp e
    cp e
    cp e
    xor d
    xor e
    xor c
    sbc c
    sbc c
    sbc b
    adc c
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld b, a
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    ld b, l
    ld b, e
    ld d, h
    ld b, h
    ld b, e
    ld b, e
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, e
    sub h
    ld b, e
    ld b, l
    ld b, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    adc b
    adc b
    adc b
    cp c
    sbc b
    sbc c
    sbc d
    sbc d
    sbc e
    xor d
    xor e
    xor d
    xor e
    xor e
    cp e
    cp d
    cp d
    cp h
    cp e
    adc e
    cp d
    xor e
    cp d
    cp d
    xor d
    xor d
    xor d
    xor c
    sbc c
    xor c
    adc c
    adc c
    adc c
    adc b
    ld [hl], a
    ld b, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld b, l
    ld b, h
    dec [hl]
    ld b, h
    add e
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    rst $00
    adc b
    sbc b
    adc c
    sbc b
    xor c
    sbc c
    xor d
    sbc d
    xor d
    cp d
    cp e
    xor e
    cp e
    cp d
    cp e
    ld a, e
    cp e
    cp e
    cp e
    cp d
    cp e
    xor d
    xor d
    xor e
    sbc d
    xor c
    xor b
    sbc d
    adc c
    adc c
    ld a, b
    ld c, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld b, h
    ld d, h
    ld h, h
    ld b, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld [hl], l
    db $76
    or a
    db $76
    add a
    ld a, b
    ld a, b
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    xor e
    xor d
    xor d
    cp d
    adc e
    cp d
    cp e
    cp h
    cp d
    cp h
    xor e
    cp e
    cp d
    xor e
    cp d
    xor d
    xor c
    sbc d
    xor c
    sbc c
    ld c, c
    adc c
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld [hl], h
    ld b, h
    ld b, h
    inc sp
    ld d, e
    ld b, h
    ld b, e
    ld b, l
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    or [hl]
    ld l, b
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc c
    adc c
    sbc c
    adc c
    xor c
    xor c
    xor d
    xor c
    cp d
    xor e
    xor e
    xor e
    cp e
    cp e
    cp d
    cp e
    xor e
    jp z, $abbb

    xor d
    cp d
    xor d
    xor c
    xor c
    ld e, c
    sbc c
    sbc c
    adc b
    sub a
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld [hl], l
    ld d, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld b, l
    ld d, h
    dec [hl]
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    dec [hl]
    ld b, h
    ld b, h
    ld b, h
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    sub l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, c
    sbc c
    adc c
    sbc c
    sbc d
    sbc d
    xor d
    cp d
    xor d
    cp d
    cp d
    xor e
    res 7, d
    cp e
    cp d
    cp d
    cp e
    cp d
    cp e
    xor d
    xor d
    ld l, d
    cp c
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, h
    ld d, l
    ld b, l
    ld d, h
    ld d, h
    ld d, l
    ld d, h
    ld b, l
    ld d, h
    ld b, l
    ld b, l
    ld b, l
    ld d, l
    sub l
    ld b, [hl]
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    adc b
    sbc b
    xor c
    sbc b
    sbc d
    xor c
    sbc d
    xor c
    cp d
    xor d
    cp d
    cp e
    xor h
    xor e
    xor e
    xor e
    cp e
    xor e
    ld a, e
    xor e
    cp c
    xor d
    xor d
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    add l
    ld d, h
    ld d, h
    ld d, l
    ld h, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    add a
    adc c
    and a
    adc b
    adc b
    sbc b
    sbc c
    sbc b
    xor c
    sbc c
    sbc d
    xor c
    xor d
    xor d
    xor d
    xor d
    xor d
    cp e
    adc d
    cp e
    cp d
    xor e
    xor d
    xor d
    xor d
    sbc d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    adc c
    adc b
    adc c
    ld e, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld b, h
    ld d, h
    ld h, h
    ld b, l
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, a
    ld h, [hl]
    ld [hl], a
    or a
    add [hl]
    adc b
    ld a, b
    add a
    sbc b
    adc c
    adc b
    sbc d
    sbc c
    sbc c
    sbc d
    sbc d
    xor c
    xor d
    xor d
    sbc d
    xor e
    xor e
    xor e
    cp e
    cp d
    xor e
    xor d
    xor d
    xor c
    cp d
    sbc d
    sbc c
    xor c
    xor b
    sbc c
    ld e, b
    sbc b
    adc c
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld b, l
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    ld b, l
    ld b, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    and l
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    sbc d
    sbc c
    xor c
    xor d
    xor d
    xor d
    xor e
    xor d
    xor e
    xor e
    xor e
    xor e
    xor e
    xor d
    xor e
    xor c
    xor d
    xor d
    ld a, c
    xor c
    sbc c
    sbc c
    sbc b
    sbc c
    add a
    adc b
    adc b
    ld a, b
    add a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld h, l
    ld b, l
    ld b, l
    ld b, l
    ld d, l
    ld b, h
    ld h, h
    ld d, h
    ld d, [hl]
    ld b, [hl]
    sub l
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    add [hl]
    add [hl]
    adc b
    adc b
    ld a, b
    adc b
    adc c
    adc b
    sbc c
    sbc b
    sbc d
    sbc c
    sbc c
    xor c
    xor d
    sbc d
    xor d
    xor d
    cp c
    xor d
    xor d
    xor d
    xor d
    cp d
    ld a, d
    cp d
    sbc d
    sbc c
    xor c
    xor c
    sbc c
    adc c
    sbc b
    sbc c
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld d, a
    db $76
    db $76
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld d, [hl]
    ld [hl], h
    ld d, l
    ld b, [hl]
    ld d, h
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    db $76
    add [hl]
    add a
    ld a, b
    and a
    add a
    adc b
    adc c
    adc b
    sbc c
    adc c
    sbc c
    adc c
    xor c
    sbc d
    xor d
    xor d
    sbc d
    xor c
    xor d
    adc d
    xor d
    xor d
    xor c
    xor d
    xor d
    xor d
    sbc d
    sbc c
    sbc d
    sbc c
    sbc d
    sbc b
    sbc c
    adc c
    ld a, b
    ld e, b
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, h
    ld h, l
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    db $76
    sub [hl]
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    adc c
    adc c
    sbc c
    xor b
    xor c
    xor d
    sbc d
    sbc d
    sbc d
    xor c
    xor d
    xor e
    xor d
    xor d
    xor d
    sbc e
    sbc d
    xor c
    xor d
    sbc d
    xor c
    xor c
    ld e, c
    sbc c
    adc c
    adc c
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld b, l
    ld h, h
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    sub [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sbc b
    adc b
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc c
    xor c
    sbc d
    sbc c
    sbc d
    xor d
    sbc c
    xor c
    xor d
    xor c
    xor d
    sbc d
    xor c
    xor c
    ld a, d
    sbc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld d, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld b, l
    ld d, l
    add l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, l
    db $76
    ld d, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    add a
    add a
    add a
    ld a, b
    sbc b
    add a
    sbc b
    adc c
    adc b
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    xor d
    adc d
    xor c
    xor c
    sbc d
    sbc c
    xor c
    sbc c
    xor d
    adc c
    sbc d
    adc b
    sbc c
    adc c
    adc b
    add a
    adc b
    ld h, a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    db $76
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    db $76
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    sub a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    sbc b
    ld a, b
    sbc b
    adc c
    sbc c
    sbc b
    sbc b
    sbc c
    sbc c
    adc c
    sbc d
    xor c
    sbc d
    sbc d
    sbc d
    sbc d
    xor c
    xor d
    xor c
    sbc c
    sbc d
    sbc c
    xor c
    sbc d
    adc c
    ld l, c
    sbc b
    sbc b
    adc b
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    db $76
    db $76
    db $76
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc c
    adc c
    sbc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc d
    sbc c
    xor b
    xor d
    adc d
    xor c
    sbc d
    sbc c
    xor c
    sbc d
    xor d
    sbc c
    ld a, d
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld d, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    sub a
    adc b
    adc b
    adc b
    adc c
    adc c
    adc d
    adc c
    adc d
    adc d
    sbc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    adc c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld h, a
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], l
    db $76
    ld h, a
    db $76
    db $76
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    adc c
    sbc c
    adc b
    sbc b
    sbc c
    sbc b
    sbc c
    adc c
    adc d
    sbc b
    xor c
    sbc b
    xor b
    adc c
    adc c
    adc c
    sbc b
    ld a, b
    adc c
    add a
    adc b
    add a
    sub a
    add a
    add a
    add a
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld d, a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld a, b
    sbc b
    ld a, c
    adc b
    sbc c
    adc b
    adc c
    sbc b
    sbc b
    adc b
    sbc b
    adc c
    adc c
    ld a, c
    adc b
    adc c
    sbc b
    adc c
    sbc b
    adc c
    ld a, c
    adc b
    adc b
    add a
    add a

jr_011_642c:
    adc b
    ld a, b
    ld [hl], a
    add a
    ld h, a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    adc c
    ld a, c
    add a
    sbc b
    adc b
    sbc b
    adc b
    adc b
    add [hl]
    ld l, c
    xor b
    and a
    sbc c
    ld e, c
    ld l, d
    ld [hl], a
    ld [hl], h
    ld c, d
    jr c, jr_011_6499

    sbc a
    db $fc
    db $fc
    push af
    db $76
    jp nz, Jump_011_7063

    ld e, d
    xor c
    add hl, bc
    ld b, $79
    ld b, e
    add h
    ld b, a
    ld [hl], e
    add a
    ld l, d
    ld c, d
    ld l, h
    or a
    and a
    sub $a8
    add [hl]
    sub [hl]
    ld l, c
    add [hl]
    ld l, b
    ld l, d
    add a
    adc b
    push de
    rst $00
    adc l
    adc b
    ld c, d
    add l
    ld [hl], h
    or a
    ld d, [hl]
    ld l, b
    ld [hl], a
    ld l, b

jr_011_6499:
    and l
    sub l
    ld e, d
    ld l, h
    ld l, d
    adc c
    sub e
    ld l, c
    add h
    jp z, Jump_011_75c9

    ld l, d
    jr c, jr_011_642c

    ld [hl], l
    add e
    and a
    ld a, c
    adc b
    ld a, h
    scf
    add a
    xor b
    ld [hl], l
    adc b
    ld h, a
    xor d
    ld l, e
    ld h, [hl]
    or [hl]
    sub a
    or l
    sbc b
    ld c, b
    ld e, c
    ld h, a
    ld [hl], l
    push bc
    ld [hl], a
    ld l, [hl]
    ld l, c
    ld l, c
    sub l
    and d
    or a
    ld [hl], l
    sbc b
    ld a, e

jr_011_64ca:
    ld e, b
    sbc d
    ld [hl], h
    or l
    ld a, e
    add hl, hl
    add a
    ld l, c
    ld d, a
    sbc b
    ld e, d
    sub [hl]
    rst $00
    ld [hl], a
    or a
    ld l, b
    ld [hl], l
    sub [hl]
    jr c, @-$69

    and [hl]
    sbc d
    dec sp
    ld a, d
    sub [hl]
    adc b
    ld l, b
    db $76
    ld d, a
    ld l, b
    ld e, b
    ld l, c
    sbc c
    ld [hl], a
    jp z, Jump_011_6a6a

    ld l, b
    adc b
    sub [hl]
    ld c, b
    add l
    xor b
    ld a, h
    add [hl]
    adc b
    ld h, [hl]
    and l
    ld a, c
    ld a, d
    ld l, d
    ld e, e
    sub a
    adc d
    sbc e
    ld e, c
    ld c, b
    ld d, [hl]
    ld h, h
    sub h
    ld a, b
    ld l, e
    ld a, e
    ld a, c
    add $98
    ld d, a
    ld l, d
    add hl, hl
    add a
    db $76
    adc b
    adc c
    ld c, c
    ld [hl], a
    ld l, c
    ld l, b
    sub l
    sub l
    add a
    ld a, b
    ld c, h
    adc b
    xor b
    sbc c
    ld [hl], a
    and a
    ld [hl], h
    add [hl]
    ld a, b
    adc b
    adc c
    ld h, a
    adc b
    ld [hl], l
    add [hl]
    sub [hl]
    ld a, d
    ld a, b
    adc c
    add a
    db $76
    ld [hl], a
    add a
    ld a, d
    ld e, e
    jr c, jr_011_64ca

    sub e
    or a
    ld l, c
    ld e, h
    ld l, b
    add h
    and [hl]
    sub [hl]
    ld a, c
    ld l, d
    ld l, b
    ld a, c
    sub l
    and a
    ld a, c
    ld h, a
    ld l, b
    ld [hl], l
    sub [hl]
    adc b
    ld [hl], a
    ld a, d
    add l
    or l
    and a
    ld l, b
    ld a, c
    ld l, c
    add a
    add a

Call_011_6554:
    sbc b

Call_011_6555:
    ld a, b
    ld a, b
    ld l, b
    ld e, c
    db $76
    sub a
    and l
    sbc b
    ld a, c
    ld [hl], l
    ld l, b
    db $76
    adc b
    adc d
    sub [hl]
    adc d
    ld e, c
    ld [hl], a
    ld l, b
    ld [hl], e
    and a
    ld e, b
    ld h, a
    add a
    sub [hl]
    add a
    adc d
    ld l, b
    sbc c
    add a
    add a
    add [hl]
    ld l, b
    ld e, e
    ld l, b
    sub l
    call nz, Call_011_7998
    ld e, b
    db $76
    add l
    ld a, b
    ld l, d
    adc b
    sbc b
    ld a, e
    ld a, b
    ld h, a
    add l

Call_011_6587:
    add a
    db $76
    ld [hl], l
    xor b
    sbc b
    sbc b
    xor b
    db $76
    add a
    ld a, b
    ld l, b
    db $76
    add [hl]
    ld a, b
    adc b
    ld [hl], a
    add a
    sub a
    adc c
    ld e, c
    ld l, c
    adc b
    add l
    sub a
    sub a
    adc b
    ld a, d
    ld d, a
    ld a, b
    add [hl]
    sub l
    sub a
    ld a, d
    ld e, b
    ld a, c
    add a
    and a
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    sub a
    adc d
    ld e, c
    sbc c
    ld h, a
    sub [hl]
    sbc b
    ld e, d
    adc c
    ld e, d
    ld e, b
    adc b
    db $76
    add a
    ld l, c
    ld b, a
    ld e, b
    add e
    sub a
    adc c
    adc d
    sbc d
    ld a, c
    sbc c
    ld a, b
    or l
    sub a
    ld d, a
    ld l, b
    ld a, b
    ld [hl], l
    sbc c
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    sub a
    ld a, b
    adc b
    sbc b
    adc c
    ld a, d
    db $76
    and a
    ld [hl], a
    ld b, a
    ld l, b
    ld d, l
    sub l
    add [hl]
    adc b
    adc c
    ld l, c
    sub a
    and [hl]
    sbc b
    sub a
    ld [hl], a
    ld l, b
    ld a, b
    ld h, a
    and [hl]
    sbc b
    ld h, a
    sub [hl]
    db $76
    sub [hl]
    adc b
    ld a, c
    adc b
    ld a, b
    and a
    add a
    xor c
    sub a
    ld [hl], a
    adc c
    db $76
    db $76
    sub a
    add [hl]
    sbc b
    ld l, b
    db $76
    or l
    add a
    sub a
    ld h, a
    ld a, b
    and a
    ld e, c
    sub a
    sub a
    ld a, b
    and a
    ld a, b
    ld [hl], a
    add [hl]
    ld l, b
    db $76
    add a
    adc b
    ld a, b
    ld a, e
    add a
    ld [hl], l
    adc b
    ld [hl], a
    ld e, c
    ld a, b
    db $76
    adc c
    adc b
    ld l, b
    adc b
    sub a
    add a
    sub [hl]
    ld e, d
    ld h, a
    ld d, a
    add a
    and [hl]
    ld a, c
    adc c
    ld e, b
    ld e, c
    add [hl]
    ld a, b
    adc c
    adc b
    ld e, d
    sub l
    ld a, c
    add [hl]
    ld [hl], l
    adc c
    db $76
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    sub l
    sub a
    adc c
    sbc c
    ld a, c
    sub [hl]
    adc b
    sub l
    and [hl]
    ld e, d
    ld h, [hl]
    ld d, a
    sub a
    add a
    ld e, e
    ld h, a
    ld h, a
    add a
    sub [hl]
    ld a, e
    ld l, b
    ld a, b
    sbc b
    sub [hl]
    sub a
    ld [hl], a
    ld l, c
    ld a, c
    ld [hl], l
    ld [hl], a
    db $76
    ld a, d
    ld a, d
    add [hl]
    sbc b
    sub [hl]
    sbc b
    ld a, b
    db $76
    add a
    ld h, a
    sub a
    adc b
    ld h, [hl]
    adc b
    adc b
    ld e, c
    ld h, a
    ld [hl], a
    ld l, b
    ld a, c
    adc b
    xor c
    add a
    sbc c
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld h, a
    ld a, b
    sub a
    add a
    sbc e
    ld h, a
    ld a, c
    ld [hl], a
    add [hl]
    ld a, c
    ld l, b
    ld [hl], a
    adc c
    ld a, b
    sbc b
    adc b
    adc b
    sub a
    ld b, a
    ld [hl], a
    ld h, [hl]
    ld a, b
    xor d
    ld a, b
    xor b
    adc b
    add a
    ld [hl], a
    ld d, [hl]
    add a
    ld l, c
    adc b
    adc b
    add [hl]
    xor b
    ld [hl], a
    ld l, d
    ld a, d
    ld h, l
    and [hl]
    ld a, c
    ld [hl], a
    adc b
    ld h, [hl]
    and a
    ld a, b
    ld l, b
    add a
    ld d, a
    add a
    ld a, b
    add a
    cp c
    ld a, b
    adc b
    add l
    sub l
    ld a, d
    ld c, c
    db $76
    sub l
    or [hl]
    add a
    ld l, c
    ld [hl], a
    ld h, a
    ld [hl], a
    sbc c
    ld a, b
    sub a
    adc d
    add [hl]
    sbc b
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    and a
    adc b
    ld a, b
    ld a, c
    sub [hl]
    sub [hl]
    db $76
    sub a
    sbc c
    ld a, b
    xor b
    add a
    ld a, b
    add [hl]
    ld [hl], l
    add a
    ld e, b
    ld l, b
    add [hl]
    ld a, b
    ld a, b
    ld a, d
    ld a, c
    sbc c
    ld l, b
    ld a, b
    db $76
    sub [hl]
    adc b
    ld a, c
    ld a, b
    add [hl]
    and [hl]
    ld a, b
    ld d, a
    db $76
    ld d, [hl]
    ld a, b
    ld a, c
    ld a, b
    adc d
    adc b
    add a
    adc c
    ld [hl], a
    ld [hl], a
    ld l, c
    ld a, b
    adc c
    add a
    ld l, b
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld a, b
    sbc c
    ld a, b
    sbc c
    ld l, b
    ld l, b
    ld [hl], a
    sub l
    sub a
    ld a, b
    ld l, c
    ld [hl], a
    sbc b
    xor b
    ld e, b
    db $76
    and [hl]
    add a
    add a
    ld a, d
    ld l, b
    sbc b
    sbc b
    sub a
    adc b
    ld [hl], a
    ld l, b
    ld e, b
    add l
    ld a, b
    ld l, c
    adc c
    ld l, b
    sub l
    sub [hl]
    ld h, [hl]
    adc b
    add a
    adc b
    sbc c
    adc b
    adc b
    ld l, b
    add [hl]
    ld a, b
    add l
    add [hl]
    ld [hl], a
    ld a, b
    ld a, d
    ld l, b
    xor b
    adc b
    ld [hl], a
    sbc b
    ld [hl], l
    adc b
    ld l, c
    ld l, c
    ld a, c
    sub a
    adc b
    ld a, b
    ld h, a
    add [hl]
    add l
    adc b
    ld l, b
    db $76
    xor b
    ld h, a
    adc c
    sub a
    add a
    adc c
    ld d, a
    add a
    add [hl]
    add a
    adc d
    ld e, c
    add l
    and l
    ld [hl], a
    ld a, c
    ld d, a
    and a
    sub [hl]
    adc b
    ld a, c
    ld a, b
    ld a, d
    ld a, b
    sub a
    adc b
    add a
    ld a, c
    ld d, a
    ld d, a
    add [hl]
    add a
    ld a, d
    adc c
    ld h, [hl]
    add a
    adc b
    ld a, b
    adc c
    ld h, a
    ld a, c
    ld l, b
    ld l, b
    ld a, b
    ld h, a
    sub a
    ld a, b
    ld [hl], a
    and h
    ld [hl], a
    ld a, d
    ld l, c
    ld l, d
    add a
    ld [hl], a
    ld a, c
    ld h, a
    adc b
    ld a, b
    ld l, c
    ld a, b
    add [hl]
    adc b
    ld a, c
    ld e, c
    add a
    and [hl]
    adc b
    adc b
    ld c, c
    db $76
    add a
    sbc b
    adc c
    ld e, b
    add a
    sub [hl]
    adc b
    sub a
    adc c
    ld a, c
    adc b
    ld d, a
    add a
    db $76
    adc c
    ld l, c
    ld l, c
    ld d, a
    ld a, b
    ld a, b
    ld [hl], l
    add a
    and [hl]
    adc b
    adc c
    sub l
    adc b
    and a
    ld a, b
    ld a, c
    ld h, a
    ld h, [hl]
    adc b
    adc b
    ld [hl], a
    sub [hl]
    ld a, c
    sbc b
    add a
    add a
    add [hl]
    ld l, c
    sub a
    sub [hl]
    xor b
    adc b
    ld l, d
    ld e, c
    ld d, [hl]
    ld [hl], a
    add a
    ld e, b
    add a
    add a
    ld l, e
    ld [hl], a
    ld a, b
    sbc b
    add a
    adc c
    sub l
    add a
    add a
    ld [hl], a
    ld a, d
    db $76
    sub [hl]
    sub [hl]
    ld e, b
    ld l, c
    ld [hl], a
    ld [hl], a
    or a
    add a
    xor b
    add a
    ld l, c
    ld [hl], a
    ld [hl], a
    adc b
    and [hl]
    adc c
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    ld [hl], l
    sbc b
    ld a, d
    ld a, c
    adc d
    ld [hl], a
    adc c
    sub [hl]
    ld [hl], a
    ld l, b
    ld l, b
    ld l, c
    adc b
    ld [hl], a
    adc b
    ld h, [hl]
    ld a, c
    ld a, b
    db $76
    adc b
    ld a, b
    ld a, c
    sub a
    adc c
    adc c
    ld a, c
    ld l, b
    db $76
    add l
    add a
    ld l, b
    ld l, c
    ld a, c
    ld l, b
    ld a, c
    add [hl]
    add [hl]
    add a
    ld a, b
    adc c
    ld a, c
    ld a, d
    ld l, c
    db $76
    sub [hl]
    add h
    ld a, b
    ld e, c
    ld l, c
    adc b
    add [hl]
    adc b
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld l, b
    sub a
    ld a, b
    sbc d
    ld l, b
    sbc b
    adc b
    ld e, c
    ld [hl], a
    db $76
    ld [hl], a
    sub [hl]
    adc b
    adc d
    ld c, c
    ld a, b
    ld a, b
    sub [hl]
    adc b
    add [hl]
    adc b
    ld a, d
    ld a, b
    adc c
    ld [hl], a
    add a
    add [hl]
    ld [hl], l
    ld h, a
    ld [hl], a
    ld l, c
    ld a, c
    sbc b
    ld [hl], a
    sbc b
    ld e, c
    ld a, b
    ld [hl], a
    ld a, c
    add a
    sub [hl]
    sbc b
    ld [hl], a
    ld l, c
    ld l, c
    ld h, a
    add a
    add l
    adc b
    ld h, a
    ld a, b
    adc d
    ld l, b
    sbc b
    and l
    sub [hl]
    ld [hl], a
    ld h, a
    ld a, b
    add a
    adc b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    sbc c
    ld [hl], a
    and a
    add a
    ld l, c
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    sub a
    adc c
    ld l, b
    ld a, b
    ld [hl], l
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    adc b
    ld l, d
    sub a
    add [hl]
    adc c
    db $76
    ld a, b
    add a
    adc b
    ld a, c
    ld a, b
    db $76
    add [hl]
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, c
    add a
    sbc b
    add a
    add a
    sbc c
    ld l, b
    ld [hl], a
    ld h, [hl]
    add a
    ld a, b
    ld a, b
    adc d
    adc b
    ld l, c
    ld [hl], a
    ld [hl], l
    add a
    add a
    ld [hl], a
    adc d
    ld [hl], a
    sbc b
    ld [hl], a
    ld l, b
    ld [hl], a
    sub l
    sub a
    adc c
    ld e, c
    ld a, b
    ld l, b
    adc b
    add [hl]
    add [hl]
    add a
    ld h, a
    ld a, b
    ld a, b
    add [hl]
    xor b
    sbc c
    ld l, d
    add a
    add a
    ld l, c
    ld d, [hl]
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    sub a
    adc b
    adc c
    ld l, d
    ld [hl], a
    adc b
    ld l, c
    add [hl]
    db $76
    and a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    or a
    sub a
    ld [hl], a
    ld [hl], a
    ld d, a
    add [hl]
    ld a, b
    ld [hl], a
    sbc b
    add a
    sub a
    add a
    db $76
    sub a
    adc d
    ld l, c
    adc b
    add [hl]
    and [hl]
    ld l, b
    ld a, d
    ld h, [hl]
    ld a, b
    add a
    ld [hl], a
    ld l, c
    db $76
    ld l, c
    add a
    ld a, c
    adc b
    adc b
    ld a, b
    sbc b
    ld a, b
    sub a
    ld a, b
    ld e, b
    add [hl]
    sub [hl]
    add a
    adc b
    ld l, b
    sub [hl]
    add [hl]
    add a
    adc c
    db $76
    and a
    add a
    adc c
    ld a, b
    adc b
    sub a
    add a
    ld a, c
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    sbc b
    adc b
    adc c
    ld [hl], a
    sub a
    sub a
    ld l, b
    ld a, b
    ld h, a
    adc b
    and a
    ld a, b
    adc c
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    and a
    ld l, b
    adc b
    ld a, b
    sbc b
    sbc b
    ld a, c
    ld l, c
    db $76
    db $76
    add l
    add [hl]
    ld l, c
    adc b
    sub a
    sub [hl]
    sub [hl]
    ld h, a
    sub [hl]
    adc b
    adc b
    ld a, b
    add [hl]
    add a
    add a
    adc b
    add a
    ld [hl], a
    xor b
    ld h, a
    add a
    add l
    sub [hl]
    adc b
    ld a, b
    adc c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub [hl]
    sub a
    and a
    ld l, d
    ld a, b
    add a
    add [hl]
    sub a
    adc b
    ld h, [hl]
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    ld a, c
    adc b
    add a
    ld a, c
    ld h, a
    ld e, b
    ld a, b
    ld [hl], a
    adc b

Jump_011_6965:
    add a
    ld [hl], a
    adc b
    ld l, b
    ld h, a
    ld [hl], a
    ld a, b
    and a
    sub a
    adc b
    adc b
    add a
    ld a, b
    ld l, b
    ld h, a
    add a
    sub a
    adc b
    ld l, b
    sub a
    sbc b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    add a
    ld l, c
    ld l, b
    sub a
    sbc b
    sbc b
    ld l, b
    ld [hl], a
    ld [hl], a
    ld l, b
    add [hl]
    ld [hl], a
    add a
    ld l, b
    ld a, d
    ld [hl], a
    ld [hl], a
    adc c
    ld a, b
    adc b
    ld [hl], a
    add a
    sbc b
    ld a, b
    adc b
    add a
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    adc b
    ld l, c
    sub a
    sub a
    adc b
    adc b
    ld a, b
    ld l, b
    sub a
    add [hl]
    sub [hl]
    adc c
    ld l, b
    add a
    sbc b
    add a
    ld h, [hl]
    ld a, b
    add [hl]
    ld l, c
    ld a, c
    adc b
    ld a, b
    add a
    ld [hl], a
    sub [hl]
    add a
    adc b
    adc c
    ld a, b
    sub a
    add l
    adc b
    db $76
    ld [hl], a
    sub a
    ld h, a
    ld a, b
    ld a, b
    ld h, a
    adc b
    sub a
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    sub l
    ld a, b
    ld e, b
    adc b
    adc c
    sbc b
    ld a, c
    ld a, c
    ld [hl], a
    adc b
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld h, l
    sub a
    ld h, a
    adc b
    ld [hl], a
    add a
    sbc c
    adc c
    adc d
    ld [hl], a
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld a, c
    ld h, a
    ld a, b
    add a
    sub [hl]
    adc b
    add a
    add a
    sbc c
    ld l, b
    adc c
    adc b
    db $76
    ld a, b
    ld h, [hl]
    ld a, b
    adc c
    ld l, d
    adc c
    ld l, b
    add a
    adc b
    ld e, b
    sub a
    ld [hl], a
    adc c
    ld a, c
    add a
    ld a, b
    ld [hl], l
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    add a
    adc b
    ld e, b
    add [hl]
    sub a
    ld a, b
    adc c
    add a
    sbc b
    adc b
    ld h, a
    adc c
    ld l, b
    ld h, a
    add a
    ld h, [hl]
    ld a, b
    add a
    sbc b
    ld a, c
    ld [hl], a
    adc b
    add a
    ld l, c
    add a
    ld a, b
    ld a, c
    add [hl]
    ld a, c
    ld l, b
    db $76
    add a
    db $76
    ld a, b
    add [hl]
    ld [hl], a
    sbc b
    ld [hl], a
    ld a, b
    sub [hl]
    sub [hl]
    sbc b
    adc b
    adc b
    ld a, c
    ld h, a
    sub [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld l, b
    adc c
    add [hl]
    ld [hl], a
    ld a, b
    ld l, b
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    add a
    add l
    add a
    ld a, b
    ld a, b
    ld l, c
    add [hl]
    add a
    add a
    ld a, b
    ld a, c
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    sub a
    ld [hl], a
    ld [hl], a

Jump_011_6a6a:
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    sbc b
    adc b
    ld a, c
    ld a, b
    db $76
    sub [hl]
    add [hl]
    add a
    sbc b
    add a
    sub [hl]
    add [hl]
    ld a, b
    add a
    ld h, a
    ld l, b
    ld [hl], a
    ld l, b
    adc b
    ld a, b
    adc b
    add [hl]
    add a
    ld a, b
    ld l, c
    sub a
    ld h, a
    add a
    sub [hl]
    ld a, b
    adc c
    add a
    add a
    add a
    ld l, c
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, c
    sub a
    add a
    adc b
    ld a, b
    adc c
    ld a, b
    add [hl]
    sub a
    add a
    adc b
    ld l, c
    ld l, c
    ld h, a
    sub [hl]
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    adc c
    ld [hl], a
    adc c
    ld a, c
    add a
    adc b
    adc b
    ld l, b
    ld l, c
    ld d, a
    add [hl]
    ld [hl], a
    add a
    ld a, c
    ld a, b
    adc c
    ld [hl], a
    adc b
    sbc b
    ld a, b
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld l, b
    ld l, c
    add [hl]
    and a
    xor c
    sbc c
    sbc b
    ld a, c
    sub a
    add a
    add [hl]
    ld [hl], a
    ld [hl], l
    add a
    adc b
    ld l, b
    ld a, b
    ld l, b
    add a
    and a
    add a
    adc b
    ld a, b
    sbc b
    sub a
    add a
    ld [hl], a
    add [hl]
    ld e, b
    db $76
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sub [hl]
    adc c
    adc c
    ld l, c
    ld a, b
    ld a, b
    db $76
    ld a, b
    sub a
    ld e, c
    ld l, b
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    sbc c
    sub a
    adc b
    ld l, b
    add [hl]
    and a
    add [hl]
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    add [hl]
    adc b
    add a
    add a
    ld l, c
    ld l, b
    ld l, c
    ld [hl], a
    sub a
    sub [hl]
    sub a
    add a
    ld l, c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld h, a
    sub [hl]
    sub a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    sub [hl]
    ld a, c
    adc b
    ld a, b
    add a
    sub l
    db $76
    add a
    ld e, b
    add a
    adc b
    ld l, b
    sub a
    sub a
    adc b
    ld [hl], a
    ld l, c
    ld a, b
    adc c
    ld a, b
    sub l
    sub a
    adc b
    ld h, a
    adc b
    ld h, a
    ld h, a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    add a
    add a
    sub [hl]
    ld h, a
    adc b
    ld a, b
    ld a, c
    sbc b
    db $76
    adc b
    ld h, [hl]
    ld l, b
    ld [hl], a
    ld e, b
    adc b
    ld a, b
    sbc c
    adc b
    adc b
    adc b
    add a
    ld l, b
    add a
    ld l, b
    add [hl]
    sub l
    ld a, b
    ld a, c
    ld d, a
    ld a, b
    add [hl]
    sbc b
    sbc b
    adc b
    ld a, c
    ld a, c
    ld a, b
    add [hl]
    add a
    ld a, b
    ld h, [hl]
    ld h, a
    add a
    ld h, a
    ld a, c
    ld a, b
    ld l, c
    sbc b
    ld [hl], a
    adc c
    ld [hl], a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    db $76
    ld a, c
    ld a, b
    ld [hl], a
    add a
    add [hl]
    adc b
    adc c
    ld l, c
    adc c
    ld h, [hl]
    ld a, b
    ld [hl], a
    sub l
    sub a
    sub [hl]
    ld a, d
    ld [hl], a
    add a
    ld a, c
    db $76
    adc b
    sbc c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld a, c
    ld h, [hl]
    ld l, b
    adc b
    add a
    ld a, b
    sub a
    add a
    sbc c
    ld [hl], a
    adc c
    ld l, b
    ld [hl], a
    add a
    add l
    ld a, c
    db $76
    ld a, c
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    sbc b
    add a
    adc c
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    ld a, b
    ld a, b
    ld e, b
    sub a
    db $76
    sub a
    ld a, b
    db $76
    adc d
    ld [hl], a
    sbc c
    sub a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a

Call_011_6bcd:
    ld h, [hl]
    adc b
    add a
    ld a, b
    ld a, d
    add a
    ld l, d
    sub a
    ld a, b
    adc b
    ld [hl], a
    ld a, c
    adc b
    ld l, b
    ld [hl], a
    db $76
    add a
    ld [hl], a
    ld l, b
    ld a, b
    ld h, a
    sub a
    sbc b
    add a
    sbc b
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    ld l, b
    ld l, b
    add a
    db $76
    ld a, b
    ld h, [hl]
    ld l, b
    adc b
    add a
    sbc b
    adc b
    adc c
    ld [hl], a
    ld a, b
    ld a, c
    add [hl]
    add a
    add a
    ld d, a
    ld a, b
    ld d, a
    ld [hl], a
    adc b
    ld a, b
    sbc d
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    db $76
    db $76
    sub a
    db $76
    adc b
    adc b
    ld [hl], a
    add [hl]
    adc c
    ld l, b
    ld [hl], a
    sub a
    adc b
    sub a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add [hl]
    sub a
    add a
    adc c
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    adc b
    add a
    sbc b
    ld [hl], a
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    add a
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    ld [hl], a
    add a
    db $76
    sbc b
    adc b
    adc b
    adc b
    sbc d
    ld [hl], a
    adc b
    add a
    ld l, b
    ld l, b
    add [hl]
    ld l, b
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc c
    ld [hl], a
    adc c
    add [hl]
    db $76
    adc c
    ld l, b
    ld e, b
    add a
    sub [hl]
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld a, b
    sbc b
    ld a, b
    sub a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld h, a
    add a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, c
    ld l, b
    adc b
    adc b
    ld a, b
    adc c
    add [hl]
    sbc b
    ld a, b
    ld l, b
    ld [hl], a
    db $76
    add [hl]
    adc b
    ld a, b
    sbc b
    ld a, c
    adc b
    ld a, b
    add [hl]
    adc b
    ld e, b
    ld a, b
    add a
    add a
    sub a
    ld a, c
    ld h, a
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    add a
    sbc b
    add a
    ld l, b
    add a
    add a
    add a
    sub [hl]
    add a
    sbc b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    add a
    ld a, b
    add a
    ld l, b
    sub [hl]
    add a
    add a
    adc b
    add a
    sub a
    adc b
    ld a, c
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], l
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    adc b
    ld l, d
    ld h, a
    sub a
    adc b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, [hl]
    add a
    ld [hl], a
    ld h, a
    xor b
    add a
    sbc c

Call_011_6ccb:
    ld a, b
    adc c
    ld l, b
    db $76
    add [hl]
    db $76
    sub a
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    adc b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    add a
    adc c
    ld a, c
    ld [hl], a
    add [hl]
    add [hl]
    ld l, c
    ld [hl], a
    db $76
    adc b
    add a
    ld a, c
    add a
    ld [hl], a
    adc b
    add a
    adc b
    sbc b
    add a
    adc c
    ld l, b
    add a
    add [hl]
    ld l, b
    ld l, b
    db $76
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld h, a
    add a
    add a
    ld a, c
    add a
    add a
    adc c
    add a
    adc b
    add a
    add a
    add [hl]
    add [hl]
    adc c
    ld [hl], a
    ld a, c
    add a
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    db $76
    adc b
    adc b
    ld a, b
    ld a, b
    db $76
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, c
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    sub a
    add a
    adc b
    db $76
    adc b
    ld a, b
    adc b
    adc c
    add a
    add a
    adc b
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld h, a
    db $76
    ld a, b
    add a
    sub a
    sub a
    ld a, c
    ld [hl], a
    sub a
    adc b
    add a
    sub a
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    adc b
    adc b
    adc b
    add a
    ld l, b
    sub a
    ld a, b
    adc b
    add a
    ld a, b
    adc b
    ld l, b
    add a
    sub a
    ld l, d
    add a
    add [hl]
    add [hl]
    ld e, c
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    sbc b
    ld a, b
    add a
    add a
    sub [hl]
    sbc b
    ld a, c
    ld h, a
    ld d, [hl]
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    add a
    add a
    ld a, b
    sbc c
    ld a, b
    adc b
    add [hl]
    add [hl]
    ld a, b
    adc b
    adc b
    add [hl]
    adc b
    add a
    ld l, b
    adc b
    ld e, b
    adc b
    add [hl]
    add a
    sbc b
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld l, b
    ld l, b
    add [hl]
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
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, c
    db $76
    ld a, b
    ld [hl], a
    add a
    add a
    sub a
    sbc d
    add a
    ld [hl], a
    sbc b
    db $76
    ld a, b
    ld h, a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    add a
    db $76
    adc b
    adc b
    ld [hl], a
    sub a
    add a
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    sub a
    adc c
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    adc b
    adc c
    ld a, d
    ld [hl], a
    adc b
    add a
    sub [hl]
    add a
    ld [hl], l
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    sbc b
    adc b
    ld a, c
    ld [hl], a
    ld a, c
    ld a, b
    sub a
    add a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, c
    adc c
    adc b
    sub a
    sbc b
    ld l, c
    ld [hl], a
    db $76
    add [hl]
    ld l, b
    ld e, b
    sub a
    db $76
    add a
    adc b
    adc b
    sub a
    sbc b
    adc b
    add a
    sub [hl]
    sub a
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    adc c
    ld a, d
    ld [hl], a
    adc b
    add [hl]
    ld a, b
    ld a, c
    ld l, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    sub a
    ld a, c
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld l, c
    ld h, a
    add a
    ld a, b
    add a
    add a
    sbc b
    ld [hl], a
    ld a, c
    and a
    sub a
    adc b
    ld [hl], a
    ld a, b
    db $76
    add a
    adc b
    ld [hl], a
    add a
    sub [hl]
    adc c
    ld l, b
    ld l, b
    add [hl]
    sub [hl]
    sbc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, d
    ld a, b
    add [hl]
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld [hl], a
    xor b
    add a
    sub a
    ld a, b
    ld h, a
    ld l, c
    ld h, [hl]
    add a
    add [hl]
    adc b
    ld a, c
    sbc c
    ld a, c
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    adc b
    adc b
    ld [hl], a
    sub l
    sbc b
    ld a, c
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    add [hl]
    ld [hl], a
    adc b
    add a
    adc c
    ld h, a
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    add [hl]
    sub a
    adc b
    ld a, b
    ld h, a
    add a
    ld l, b
    adc b
    ld [hl], a
    sub a
    adc c
    add a
    adc b
    add l
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    db $76
    add a
    adc b
    adc b
    adc b
    ld a, b
    add a
    db $76
    add a
    db $76
    add a
    ld [hl], a
    add a
    sbc b
    ld a, b
    and a
    adc b
    adc b
    adc b
    add a
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, c
    ld h, a
    sub a
    add a
    sbc b
    ld l, c
    ld a, b
    add [hl]
    adc c
    ld a, c
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    sbc b
    ld a, c
    ld h, a
    adc b
    add a
    sub a
    ld a, c
    ld h, a
    ld l, b
    adc b
    ld [hl], a
    sub a
    db $76
    sub a
    ld a, b
    ld l, b
    add [hl]
    add a
    adc c
    ld l, c
    ld a, b
    sub [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    ld l, b
    add a
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    adc c
    ld a, b
    adc b
    add a
    ld [hl], a
    sub a
    add a
    add [hl]
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    adc b
    add a
    ld l, b
    ld a, c
    add a
    adc b
    sbc b
    ld [hl], a
    add a
    db $76
    ld a, c
    ld h, a
    ld a, b
    adc b
    ld a, b
    ld a, c
    add [hl]
    add [hl]
    add a
    sbc b
    ld a, c
    ld a, b
    sub a
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    add a
    add a
    add a
    adc b
    ld h, a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    sub [hl]
    adc c
    ld a, b
    ld l, b
    add a
    add a
    ld [hl], a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    add a
    sub a
    ld l, c
    ld l, b
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    sub a
    add a
    adc b
    ld a, b
    ld l, c
    add a
    ld a, b
    add [hl]
    add a
    adc b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    ld l, b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    ld a, c
    add a
    add a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld l, b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    sbc b
    add [hl]
    sub a
    sub a
    ld l, c
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld a, c
    ld a, b
    sbc b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc c
    ld a, b
    add a
    sub a
    ld [hl], a
    add a
    db $76
    ld a, b
    ld [hl], a
    ld l, c
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    sub a
    sub a
    ld a, b
    adc b
    ld h, a
    sub a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub a
    adc b
    sub a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    ld l, b
    ld [hl], a
    ld l, b
    ld l, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld h, a
    sbc b
    ld a, b
    add a
    sub a
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc c
    ld a, c
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    add a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    ld h, a
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    add [hl]
    adc b
    sub a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, b

Jump_011_7063:
    add a
    add a
    ld l, b
    ld a, b
    adc b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    add a
    sbc b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    add [hl]
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, c
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc c
    ld h, a
    ld [hl], a
    add a
    ld l, b
    ld a, b
    ld l, b
    adc b
    add a
    adc b
    adc b
    add a
    ld a, b
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld l, c
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    sub a
    adc b
    adc b
    ld a, b
    db $76
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    adc c
    ld a, b
    ld a, b
    add a
    ld a, b
    ld l, b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    ld [hl], a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    sbc c
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    sub a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld l, b
    ld a, b
    ld l, b
    add a
    ld a, b
    adc b
    adc b
    sub a
    add a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld l, b
    add a
    add a
    add a
    adc b
    ld a, c
    add a
    ld [hl], a
    adc b
    add a
    adc c
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add [hl]
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld h, a
    add a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld h, a
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    add a
    adc c
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    add a
    add a
    ld a, b
    ld a, c
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub a
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    sbc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    add a
    add a
    adc b
    ld a, b
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
    ld a, b
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    add a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    add a
    ld a, b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    db $76
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    add a
    add a
    add [hl]
    add a
    add a
    add a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    add a
    adc b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    db $76
    adc b
    ld a, b
    adc b
    ld [hl], a
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
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    sub a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    sbc b
    adc b
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
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
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    add a
    adc b
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
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    add a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
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
    ld a, b
    sbc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
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
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    db $76
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
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
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    adc b
    add h
    ld [$7b5c], a
    ld l, d
    and e
    adc c
    adc b
    dec [hl]
    ld d, b
    inc d
    ld d, [hl]
    ld l, h
    ret


    and a
    adc e
    add a
    ld h, [hl]
    sub [hl]
    ld [hl+], a
    dec sp
    cp l
    cp $dc
    and a
    ld h, a
    ld a, b
    and a
    ld d, e
    ld hl, $4733
    ld e, b
    xor c
    adc b
    call $daec
    ld h, a
    ld b, h
    dec [hl]
    ld h, [hl]
    ld hl, $7924
    adc d
    cp h
    cp c
    ld [hl], a
    adc d
    xor c
    ld h, l
    ld h, a
    adc c
    sbc h
    ret


    add a
    ld e, b
    adc c
    adc c
    sbc c
    add a
    ld [hl], a
    ld h, a
    ld [hl], l
    ld b, h
    ld h, [hl]
    ld d, a
    ld [hl], a
    add l
    ld l, c
    sbc e
    xor d
    sbc b
    add a
    ld a, b
    sbc c
    sbc c
    adc b
    ld [hl], a
    adc b
    sbc b
    add [hl]
    ld h, h
    ld b, h
    ld l, b
    sbc b
    add [hl]
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add a
    adc b
    ld a, c
    sbc d
    xor c
    sbc c
    sbc c
    and a
    add a
    ld [hl], l
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    adc b
    db $76
    sbc b
    ld a, b
    ld d, [hl]
    ld a, b
    and a
    adc b
    xor d
    xor c
    sbc c
    sbc c
    add [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    sbc c
    and [hl]
    ld [hl], a
    ld a, d
    adc b
    ld a, b
    add a
    add [hl]
    ld a, b
    add a
    ld h, a
    ld a, c
    adc b
    ld a, c
    sbc d
    adc c
    ld [hl], a
    add a
    add a
    add [hl]
    ld [hl], a
    db $76
    ld d, [hl]
    ld a, b
    adc b
    sbc d
    sbc b
    adc c
    adc b
    adc b
    add a
    db $76
    ld [hl], l
    ld a, b
    ld h, a
    sub a
    add a
    adc b
    ld a, b
    sbc b
    ld l, b
    add a
    ld [hl], a
    ld h, [hl]
    ld l, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld h, a
    adc b
    adc d
    ld a, b
    add a
    ld a, c
    add a
    ld [hl], a
    adc c
    sub a
    ld a, b
    ld a, c
    adc b
    add [hl]
    ld [hl], l
    add a
    add a
    add a
    add [hl]
    ld h, a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, d
    adc b
    adc b
    sbc b
    add a
    add a
    ld [hl], a
    sub a
    add [hl]
    db $76
    db $76
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    sbc c
    adc b
    ld a, b
    adc c
    ld a, b
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld d, a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    ld a, b
    adc b
    sbc b
    adc b
    ld a, b
    ld a, b
    sbc b
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    add a
    adc c
    ld a, b
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
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
    ld a, b
    adc c
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    adc b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    add a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc c
    ld a, b
    ld a, b
    adc b
    add a
    add a
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
    ld a, b
    ld a, b
    add a
    adc c
    ld [hl], a
    sbc b
    sub a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    xor b
    ld [hl], a
    add a
    add h
    ld e, c
    xor $49
    adc c
    ld b, h
    ld l, e
    rst $30
    adc c
    sla h
    add sp, $26
    xor l
    sub a
    ld d, a
    ld b, [hl]
    adc h
    xor $85
    add l
    ld [hl], a

Jump_011_75c9:
    db $db
    adc b
    ld d, e
    add a
    dec [hl]
    ld a, b
    ld l, b
    db $ec
    or l
    ld [hl], l
    xor e
    cp l
    jp c, $2a41

    ld h, [hl]
    cp b
    ld d, c
    daa
    cp c
    add a
    ld a, l
    jp z, $958b

    ld c, b
    xor b
    sbc c
    ld [hl], h
    db $10
    ld a, [hl-]
    ret


    and a
    sub a
    ld a, h
    cp c
    xor c
    xor e
    sbc c
    ld d, l
    ld sp, $c905
    ld h, a
    ld d, e
    ld b, h
    xor l
    adc $9a
    and a
    adc c
    add a
    ld d, h
    adc c
    ld [hl], l
    ld h, e
    ld hl, $ed4a
    rst $00
    ld [hl], a
    ld l, c
    rst $18
    ret z

    ld h, [hl]
    ld h, l
    ld h, h
    ld h, l
    inc hl
    sbc d
    and a
    db $76
    ld d, [hl]
    cp [hl]
    rst $38
    sub [hl]
    ld d, h
    ld d, a
    sbc c
    ld [hl], e
    dec h
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    cp [hl]
    ret c

    ld [hl], $78
    xor h
    ret c

    ld sp, $5713
    sbc b
    ld [hl], l
    ld d, a
    xor c
    xor c
    sbc b
    sbc d
    call z, Call_000_1395
    ld d, [hl]
    adc c
    add [hl]
    ld [hl-], a
    ld c, b
    sbc d
    cp e
    add a
    ld a, d
    cp d
    add [hl]
    add [hl]
    ld a, b
    adc c
    ld d, d
    ld d, h
    ld a, c
    cp e
    and a
    ld d, l
    adc e
    cp e
    xor c
    db $76
    ld l, b
    add a
    ld d, l
    ld d, a
    ld a, b
    sbc b
    ld h, l
    ld a, b
    cp e
    cp d
    sub a
    ld h, l
    sbc c
    add a
    ld [hl], a
    ld d, l
    ld d, a
    adc b
    ld h, [hl]
    adc b
    sbc b
    sbc b
    db $76
    ld a, d
    xor d
    sub a
    ld h, h
    ld b, l
    adc c
    add a
    ld h, [hl]
    ld a, b
    ld a, b
    sub a
    ld a, b
    sbc e
    xor b
    ld [hl], a
    ld h, l
    ld a, b
    adc c
    ld h, [hl]
    ld h, l
    ld [hl], a
    adc c
    sub a
    ld a, b
    adc b
    adc c
    adc b
    ld a, b
    adc c
    add a
    ld h, [hl]
    ld d, [hl]
    sbc b
    and a
    db $76
    ld [hl], a
    ld a, c
    sbc d
    adc b
    ld a, b
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    sub a
    add l
    ld h, [hl]
    ld l, b
    sbc b
    and a
    add a
    ld a, b
    sbc b
    sbc b
    ld h, a
    ld h, a
    add a
    ld h, [hl]
    db $76
    ld a, b
    adc b
    add [hl]
    ld a, b
    sbc c
    adc c
    sub a
    db $76
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    ld [hl], a
    ld a, c
    sbc c
    sbc b
    db $76
    ld a, b
    sbc b
    ld [hl], a
    db $76
    ld d, a
    ld [hl], a
    ld [hl], a
    db $76
    adc b
    adc c
    adc b
    ld [hl], a
    adc c
    sub a
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    add [hl]
    ld h, a
    ld [hl], a
    adc c
    ld a, b
    adc b
    sbc b
    adc b
    ld [hl], a
    ld h, a
    adc b
    add a
    ld [hl], l
    db $76
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    adc c
    adc c
    add a
    ld [hl], a
    add a
    ld [hl], a
    db $76
    ld h, a
    sbc b
    ld [hl], a
    ld h, a
    adc b
    adc c
    sbc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    add a
    ld h, [hl]
    ld a, b
    add a
    ld [hl], a
    ld h, a
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add [hl]
    ld [hl], a
    add a
    adc b
    ld [hl], a
    add a
    adc c
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    ld h, [hl]
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    adc b
    sub a
    ld [hl], a
    ld a, b
    sbc b
    add a
    ld h, a
    ld [hl], a
    adc b
    ld [hl], a
    ld h, a
    ld a, b
    add a
    add a
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    add a
    ld h, a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld a, b
    adc b
    sub a
    ld [hl], a
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    db $76
    ld [hl], a
    sub a
    ld l, l
    db $e4
    inc c
    ld a, [$ed15]
    ld d, c
    sbc [hl]
    or h
    ld c, h
    rst $20
    ld h, $e9
    ld b, h
    xor l
    ld d, e
    ld l, l
    push bc
    ld a, [hl-]
    ret c

    ld b, [hl]
    jp z, $ac53

    add e
    ld a, h
    and l
    ld c, d
    cp b
    ld [hl], $cb
    ld h, e
    xor h
    sub e
    ld a, h
    or l
    ld a, [hl-]
    ret z

    ld b, l
    bit 6, e
    adc l
    sub h
    ld c, e
    ret z

    ld [hl], $da
    ld d, e
    xor l
    add h
    ld e, h
    or a

Jump_011_7775:
    add hl, hl
    bit 0, h
    cp e
    ld [hl], e
    ld a, h
    and h
    ld c, d
    cp b
    ld b, [hl]
    cp d
    ld b, h
    sbc h
    ld [hl], h
    ld l, e
    and l
    ld c, b
    or [hl]
    ld b, a
    xor c
    ld h, l
    adc d
    ld [hl], h
    ld a, d
    and l
    ld e, c
    and a
    ld [hl], $ba
    ld d, h
    xor e
    add e
    ld l, h
    or [hl]
    add hl, sp
    ret


    ld b, h
    cp h
    ld [hl], d
    ld a, h
    or h
    ld c, c
    ret z

    ld d, [hl]
    cp d
    ld d, e
    sbc h
    add h
    ld e, d
    and [hl]
    ld b, a
    ret z

    ld b, [hl]
    sbc d
    ld [hl], l
    ld a, d
    add [hl]
    ld l, b
    sbc b
    ld h, a
    sbc b
    ld h, [hl]
    adc d
    db $76
    ld a, c
    sub [hl]
    ld l, c
    sub a
    ld d, a
    xor b
    ld h, [hl]
    adc d
    ld h, [hl]
    ld a, d
    add [hl]
    ld a, c
    and a
    ld d, a
    xor b
    ld [hl], l
    adc d
    add l
    ld a, c
    sub a
    ld e, b
    xor b
    ld d, a
    adc d
    ld h, [hl]
    adc c
    add [hl]
    ld l, c
    sub a
    ld d, a
    xor c
    ld h, [hl]
    adc d
    db $76
    ld a, c
    sub a
    ld l, b
    and a
    ld h, a
    sbc c
    ld [hl], l
    ld a, c
    add l
    ld a, c
    sub a
    ld d, a
    xor b
    ld h, [hl]
    sbc b
    db $76
    ld a, b
    add a
    ld l, c
    add a
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    add a
    ld l, b
    sub a
    ld h, a
    sbc b
    db $76
    ld a, c
    add [hl]
    ld a, b
    sub [hl]
    ld l, b
    add a
    db $76
    sbc b
    db $76
    adc c
    add [hl]
    ld l, c
    adc b
    ld e, b
    sub a
    db $76
    adc c
    db $76
    ld a, b
    sub [hl]
    ld l, b
    sub a
    ld h, a
    adc b
    db $76
    adc b
    add [hl]
    ld a, c
    adc b
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    db $76
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    add [hl]
    ld a, b
    add a
    ld l, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld h, a
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    adc b
    xor h
    sbc b
    jr nc, jr_011_78cc

    ld c, c
    res 5, d
    add [hl]
    add a
    ld d, h
    ld d, l
    ld a, e
    sbc c
    xor b
    add sp, -$78
    ld [hl], a
    ld h, [hl]
    add l
    ld l, c
    adc c
    cp e
    set 2, l
    ld bc, $339b
    inc [hl]
    ld c, b
    xor $ad
    cp h
    ret z

    ld [hl-], a
    ld b, e
    ld l, [hl]
    call c, Call_000_32b8
    ld [hl], $bd
    cp e
    sub h
    inc hl
    ld b, a
    cp e
    adc b
    ld h, e
    scf
    adc d
    add [hl]
    ld b, l
    ld e, c
    call c, Call_011_52c9
    ld b, l
    adc l
    db $db
    sub a
    ld d, h
    ld a, c
    jr c, jr_011_7907

    ld e, c
    cp d
    adc d
    add a
    ld a, d
    add l
    or l
    ld d, [hl]
    db $dd
    cp d
    ld b, d
    ld c, h
    call c, $8c94
    jp hl


    ld b, a
    and a
    ld [hl], $c8
    ld a, d
    and a
    ld d, h
    sbc e
    add e
    ld a, [hl]
    and [hl]
    xor b
    ld a, c
    sub l
    inc a
    db $76
    add [hl]
    inc h
    adc c
    xor h
    cp b
    ld l, d
    cp h
    and l
    dec h
    add hl, sp
    db $ec
    cp e
    cp d
    ld b, c
    call nc, $db8e
    ld [hl], e
    dec h
    call c, Call_011_42ca
    inc [hl]
    adc l
    sub $43

jr_011_78cc:
    ld l, h
    rst $00
    scf
    xor l
    ld a, h
    cp c
    sub l
    inc d
    scf
    db $ec
    add l
    ld b, [hl]
    xor c
    xor d
    xor c
    add l
    inc sp
    dec [hl]
    add a
    adc c
    xor c
    res 0, e
    inc h
    ld e, h
    db $ec
    sub l
    ld b, l
    sbc h
    and a
    ld l, c
    db $76
    ld b, l
    ld l, c
    ld [hl], a
    scf
    db $eb
    ret c

    ld [hl-], a
    ld l, c
    add e
    ld l, [hl]
    db $ec
    sbc b
    ld h, e
    ld b, a
    add l
    ld l, h
    res 2, [hl]
    ld b, d
    jr c, jr_011_7958

    xor b
    ld d, a
    ld c, b
    adc h
    db $eb
    ld h, e

jr_011_7907:
    inc [hl]
    sbc b
    sbc c
    ld a, b
    add h
    ld b, h
    ld e, c
    rst $08
    cp b
    ld [hl], l
    ld b, h
    adc c
    xor d
    sbc c
    xor e
    ld d, d
    inc h
    adc e
    db $eb
    ld h, e
    inc h
    sbc d
    adc h
    bit 0, e
    ld a, e
    sub e
    inc [hl]
    ld b, a
    rst $28
    and [hl]
    adc b
    ld h, d
    ld [hl], a
    adc d
    cp e
    and [hl]
    ld [hl-], a
    ld e, b
    adc c
    sub l
    rst $00
    adc c
    ld a, b
    xor c
    sbc e
    ld b, c
    ld h, [hl]
    ld h, a
    xor l
    jp z, Jump_011_7775

    ld d, h
    ld h, [hl]
    add a
    ld a, h
    ld a, e
    ld [hl], e
    ld b, [hl]
    db $76
    ld l, b
    sbc c
    adc d
    sub a
    inc [hl]
    ld a, b
    ld [hl], a
    add e
    ld e, b
    xor e
    adc d
    xor d
    add [hl]
    add [hl]
    ld b, h
    adc b
    ld l, c
    sbc d
    db $76
    ld l, d

jr_011_7958:
    db $76
    ld e, c
    or a
    ld b, l
    ld d, e
    ld l, e
    call c, Call_011_6587
    ld h, h
    ld l, b
    ld a, e
    jp hl


    ld d, e
    ld b, e
    ld a, d
    xor b
    ld a, c
    and a
    db $76
    ld h, a
    ld l, b
    sub [hl]
    ld b, [hl]
    ld l, c
    jp c, Jump_011_6965

    cp e
    ld [hl], a
    ld h, e
    ld d, [hl]
    ld h, l
    sbc e
    ld [hl], a
    adc c
    sbc c
    ld h, [hl]
    add a
    add a
    ld d, a
    ld h, e
    ld h, a
    rst $08
    ret c

    ld [hl], e
    inc [hl]
    adc d
    sbc b
    sub [hl]
    ld b, a
    ld a, b
    ld h, h
    ld a, c
    adc d
    xor b
    ld h, a
    sbc b
    adc c
    add [hl]
    ld [hl], a
    db $76
    ld [hl], a
    sub l

Call_011_7998:
    ld c, b
    cp c
    db $76
    ld d, a
    add a
    sbc e
    xor c
    ld b, l
    db $76
    ld [hl], $8a
    and a
    ld h, [hl]
    sbc e
    sbc c
    add a
    ld d, [hl]
    ld l, b
    add a
    adc b
    add a
    ld l, b
    xor d
    add a
    ld [hl], l
    add [hl]
    ld h, h
    ld l, d
    xor d
    ld h, [hl]
    adc c
    and a
    ld h, [hl]
    ld b, a
    ld a, b
    sbc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, l
    ld l, b
    adc b
    adc b
    db $76
    ld h, [hl]
    adc h
    cp d
    ld [hl], e
    ld b, [hl]
    ld [hl], a
    sbc b
    ld d, [hl]
    ld [hl], a
    adc c
    xor d
    add l
    and a
    ld h, a
    adc c
    adc d
    ld l, b
    db $76
    adc b
    adc c
    ld [hl], a
    ld [hl], l
    ld d, [hl]
    ld a, c
    sbc d
    add l
    ld h, [hl]
    adc d
    ld h, a
    ld d, l
    adc c
    sbc b
    ld h, [hl]
    ld h, [hl]
    adc c
    and [hl]
    ld d, h
    ld a, d
    ret z

    ld l, c
    sbc b
    db $76
    db $76
    ld h, [hl]
    ld a, b
    xor e
    sub [hl]
    add a
    ld d, h
    ld d, a
    adc d
    add [hl]
    add a
    ld [hl], a
    adc c
    xor c
    ld h, l
    ld b, a
    adc b
    db $76
    adc b
    sbc b
    add [hl]
    ld h, [hl]
    ld [hl], a
    adc c
    adc b
    xor b
    ld b, l
    ld h, a
    add a
    ld [hl], a
    adc b
    ld d, [hl]
    sbc d
    sub [hl]
    ld a, c
    add [hl]
    ld d, a
    sbc c
    db $76
    ld d, [hl]
    sbc c
    add [hl]
    ld l, b
    db $76
    adc b
    ld h, l
    ld d, a
    xor d
    add [hl]
    ld a, b
    ld l, b
    adc d
    adc b
    ld d, a
    ld h, [hl]
    ld h, a
    adc b
    sbc d
    adc b
    ld l, b
    db $76
    adc c
    add a
    ld b, [hl]
    adc d
    add a
    ld h, [hl]
    sbc c
    adc b
    add l
    ld h, [hl]
    ld a, b
    adc b
    ld [hl], a
    adc c
    add [hl]
    ld h, a
    add a
    ld [hl], a
    sbc b
    ld [hl], a
    db $76
    add a
    adc c
    sbc c
    db $76
    ld a, b
    add a
    ld h, a
    ld [hl], a
    db $76
    ld l, b
    xor b
    adc b
    adc b
    add a
    db $76
    ld h, [hl]
    add a
    adc c
    xor b
    ld d, [hl]
    db $76
    add a
    adc c
    sub a
    ld h, [hl]
    adc c
    adc c
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sbc c
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld l, b
    sbc b
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    adc b
    sbc b
    ld h, a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    ld h, [hl]
    ld [hl], a
    adc c
    sbc b
    add [hl]
    ld h, a
    db $76
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    ld [hl], a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld l, b
    xor b
    ld [hl], a
    db $76
    add a
    add a
    add a
    add a
    add a
    ld [hl], a
    adc c
    add a
    ld [hl], a
    ld a, c
    add a
    ld h, l
    ld a, b
    sbc b
    add a
    db $76
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    add a
    ld h, a
    add a
    adc c
    add a
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld h, a
    ld a, b
    sbc b
    ld a, b
    adc b
    db $76
    ld a, b
    ld [hl], a
    ld a, c
    add [hl]
    ld [hl], a
    add a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld h, a
    add a
    add a
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    db $76
    add a
    ld a, b
    add [hl]
    adc c
    ld a, c
    ld [hl], a
    ld h, a
    ld a, c
    sbc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    add [hl]
    add a
    sub a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    ld l, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld h, a
    ld a, b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    sbc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    adc b
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
