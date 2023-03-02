; disasSembly of "lsdj.gb"
SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    ld h, b
    ld b, b
    ret nc

    ld b, c
    jr nz, jr_009_404a

    ld h, b
    ld b, l
    add b
    ld c, h
    and b
    ld d, d
    ld d, b
    ld e, d
    jr nc, jr_009_4073

    ld h, b
    ld l, a
    ld b, b
    ld a, c
    db $10
    ld a, d
    db $10
    ld a, h
    or b
    ld a, l
    ldh [$7f], a
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
    ld c, a
    ld d, a
    ld d, h
    ld b, c
    ld c, l
    ld b, e
    ld c, h
    ld d, b
    nop

jr_009_404a:
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
    scf
    jr nc, jr_009_408f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $76d7
    add a
    sub [hl]
    cp d
    ld d, e
    ld b, $fb
    inc h
    ld l, b
    ld b, a
    and a
    xor d
    adc d
    cp c
    sbc a
    ld l, d
    xor $cb

jr_009_4073:
    xor $cc
    db $dd
    jp z, $bbdb

    cp d
    sbc d
    xor c
    adc b
    ld [hl], a
    ld h, l
    ld d, [hl]
    ld d, d
    nop
    inc hl
    ld b, b
    nop
    nop
    db $10
    stop
    stop
    ld bc, $2221
    inc [hl]

jr_009_408f:
    ld b, e
    push af
    ld b, [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    ld a, c
    adc b
    sbc d
    xor e
    xor e
    cp h
    cp l
    db $dd
    xor $ee
    cp $af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    sbc $dd
    db $db
    jp z, Jump_000_09a9

    adc b
    ld a, b
    db $76
    ld h, [hl]
    ld d, l
    ld b, l
    ld b, h
    inc [hl]
    inc sp
    inc de
    ld [de], a
    ld de, $0010
    nop
    ld b, b
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
    ld bc, $1201
    ld [hl+], a
    inc sp
    db $d3
    ld d, l
    ld d, l
    ld h, a
    ld h, a
    adc b
    adc b
    sbc d
    sbc d
    xor e
    xor h
    cp h
    cp h
    call c, $dedd
    db $dd
    xor $ee
    xor $ee
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    cp $ee
    xor $ed
    db $dd
    ld a, l
    db $dd
    call z, $cbcd
    res 7, e
    xor d
    xor d
    xor d
    sbc d
    adc c
    adc b
    add a
    add a
    db $76
    scf
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld b, h
    ld d, h
    ld b, h
    ld b, h
    ld b, h
    ld b, e
    inc [hl]
    ld b, e
    ld b, e
    ld b, e
    ld d, e
    ld b, e
    inc [hl]
    inc sp
    ld b, h
    inc sp
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld d, l
    ld d, h
    ld h, l
    ld b, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    and l
    ld h, [hl]
    ld h, l
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    sbc c
    adc c
    sbc c
    sbc d
    sbc d
    db $db
    xor d
    xor e
    cp d
    res 7, e
    call z, $dbcb
    call c, $dddd
    call c, $cddd
    db $dd
    xor l
    sbc $dd
    sbc $cd
    db $dd
    db $dd
    db $dd
    db $dd
    call $cccc
    set 1, e
    cp e
    xor d
    ld c, d
    xor d
    xor c
    xor b
    adc c
    adc b
    ld [hl], a
    add a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld d, h
    ld d, l
    inc [hl]
    ld b, e
    inc [hl]
    inc hl
    inc [hl]
    ld [hl+], a
    ld [hl-], a
    ld [hl-], a
    ld hl, $3231
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    inc sp
    add e
    inc sp
    ld b, e
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    cp b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc d
    xor d
    sbc d
    xor c
    xor d
    xor e
    xor e
    xor d
    adc d
    xor d
    xor e
    xor d
    cp d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor c
    sbc c
    xor c
    sbc d
    ld a, d
    sbc b
    sbc b
    sbc b
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld d, h
    ld b, [hl]
    ld h, l
    ld h, l
    ld d, a
    ld h, [hl]
    ld l, c
    inc l
    db $ed
    rst $18
    cp c
    db $fc
    xor l
    call $a8a6
    db $76
    ld h, l
    sub b
    ld b, l
    ld h, l
    ld sp, $3791
    add e
    jr nz, jr_009_420c

    ld bc, $2203
    ld d, h
    ld [hl], a
    jp z, $ab9a

    cp h
    call c, $fdcd
    rst $08
    xor $dd
    xor $ed
    db $dd
    db $ed
    call z, Call_000_2cdb
    cp e
    sbc c
    sbc b
    ld h, [hl]
    ld d, e
    ld hl, $0000
    nop
    nop
    nop

jr_009_420c:
    nop
    nop
    ld [de], a
    ld [de], a
    db $e4
    inc [hl]
    ld d, [hl]
    db $76
    xor b
    adc c
    sbc d
    sbc l
    cp $ef
    rst $38
    rst $38
    rst $38
    cp $fe
    xor $1c
    call c, $98aa
    ld l, b
    add l
    ld [hl], e
    ld b, l
    inc [hl]
    ld b, e
    ld hl, $4230
    inc h
    ld hl, $b412
    inc h
    inc sp
    ld b, l
    ld h, [hl]
    ld [hl], a
    ld a, c
    adc c
    sbc d
    cp e
    call z, $cdcd
    sbc $cb
    ld [$cc1d], a
    cp e
    xor h
    xor e
    res 7, h
    cp h
    xor h
    sbc b
    and a
    ld a, b
    ld h, [hl]
    ld b, h
    ld sp, $f011
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc h
    inc h
    ld [hl], h
    db $76
    ld a, b
    ld h, [hl]
    sbc c
    adc d
    xor c
    res 7, h
    ld c, h
    sbc $be
    db $ec
    db $ed
    call c, $acae
    cp d
    sub a
    sbc c
    ld l, b
    ld h, a
    ld h, [hl]
    ld b, [hl]
    ld b, l
    add e
    ld b, h
    ld b, h
    ld d, e
    ld [hl], $43
    ld h, e
    ld h, e
    ld b, h
    ld [hl], $43
    ld d, h
    ld h, l
    ld d, l
    db $76
    ld a, b
    adc d
    adc d
    cp d
    xor e
    cp h
    call z, $bcad
    cp e
    cp e
    cp c
    cp c
    cp d
    sbc e
    xor c
    xor e
    ld l, d
    sbc c
    ld l, c
    ld [hl], a
    ld h, a
    ld h, h
    ld d, h
    inc [hl]
    ld b, d
    ld sp, $1423
    ld [hl-], a
    ld b, d
    dec [hl]
    ld d, [hl]
    or a
    ld h, a
    ld [hl], a
    adc d
    sbc b
    sbc e
    adc c
    xor d
    xor d
    sbc c
    cp d
    cp e
    xor e
    xor d
    ret


    cp d
    ld l, c
    xor d
    sbc d
    sbc c
    sbc b
    ld a, b
    sub [hl]
    ld l, b
    ld d, [hl]
    ld [hl], l
    ld h, l
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    and l
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, [hl]
    ld b, l
    ld h, a
    ld c, b
    add a
    ld a, c
    adc b
    cp c
    sbc c
    xor d
    xor d
    ld a, e
    xor e
    sbc e
    xor d
    cp d
    sbc e
    xor d
    sbc c
    xor c
    sbc b
    adc b
    add [hl]
    db $76
    ld a, b
    db $76
    ld h, a
    add [hl]
    ld d, l
    ld h, h
    ld h, h
    ld h, [hl]
    ld b, a
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, a
    ld h, [hl]
    ld [hl], a
    ld d, a
    add a
    ld [hl], a
    sbc c
    adc c
    ld a, c
    adc c
    adc b
    sbc d
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    sbc e
    sbc c
    sbc c
    sub a
    xor b
    ld a, b
    sub a
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld d, a
    ld h, [hl]
    ld h, a
    ld h, l
    ld h, l
    ld d, [hl]
    ld d, h
    ld h, h
    and h
    ld h, [hl]
    ld h, l
    add [hl]
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc c
    sbc d
    sbc d
    adc e
    sbc c
    sbc d
    ld l, c
    sbc d
    adc d
    sbc b
    sbc c
    add a
    adc b
    ld l, b
    ld [hl], a
    add [hl]
    db $76
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, a
    add [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    db $76
    add a
    ld h, a
    adc b
    ld a, b
    adc b
    ld a, c
    adc b
    sbc b
    adc c
    sbc b
    xor c
    adc c
    xor b
    sbc c
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc c
    ld l, c
    ld l, c
    ld [hl], a
    ld [hl], a
    ld l, b
    db $76
    ld h, [hl]
    ld [hl], l
    ld [hl], l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    sbc c
    adc c
    ld a, b
    adc b
    adc c
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld l, b
    db $76
    add a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    add a
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    sbc b
    adc c
    adc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    add a
    sbc b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    add [hl]
    db $76
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    adc b
    sub a
    sub a
    sub a
    adc b
    adc b
    adc b
    adc b
    adc c
    ld a, c
    adc b
    sbc b
    ld a, b
    adc c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    add [hl]
    ld a, b
    ld l, b
    ld h, a
    add [hl]
    adc b
    ld h, a
    add a
    add a
    ld [hl], a
    add [hl]
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    sub a
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
    add a
    add a
    ld [hl], a
    add a
    add a
    add a
    add a
    adc b
    add [hl]
    add a
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    ld a, b
    adc b
    adc b
    adc c
    ld a, b
    sbc b
    ld a, b
    adc b
    adc b
    ld a, b
    add a
    adc b
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
    add $c9
    ld a, b

Jump_009_4423:
    ld c, b
    ld h, [hl]
    ld l, b
    ld h, h
    adc b
    ld [hl], l
    adc c
    ld e, l
    inc a
    ld h, a
    ld c, d
    ld l, h
    and a
    cp b
    xor c
    adc d
    adc c
    adc c
    ld [hl], e
    inc l
    ld d, $aa
    ld h, h
    ld h, b
    rst $00
    ld [hl], a
    ld [hl], a
    ld c, [hl]
    ld c, d
    ld h, [hl]
    ld e, c
    sbc c
    sbc h
    sbc c
    ld d, [hl]
    ld h, l
    sbc c
    sbc l
    ld l, h
    sbc b
    sub h
    add l
    ld [hl], b
    and h
    ld e, c
    sub [hl]
    ld a, b
    add [hl]
    add [hl]
    rst $00
    ld a, d
    sbc b
    cp b
    ld a, c
    and l
    or l
    ld [hl], a
    ld h, [hl]
    or [hl]
    ld c, b
    ld d, h
    ld h, e
    cp d
    adc d
    ld a, b
    ld l, e
    and [hl]
    and [hl]
    ld a, b
    ld b, [hl]
    add l
    ld a, d
    ld d, a
    add a
    add l
    ld a, b
    adc d
    ld a, b
    and a
    sbc d
    ld e, c
    ld h, l
    add [hl]
    ld a, b
    ld a, e
    sbc b
    sub a
    sbc c
    ld c, c
    ld [hl], a
    sub [hl]
    ld a, b
    ld l, c
    sbc b
    adc b
    ld c, c
    ld l, c
    ld a, d
    ld l, c
    ld [hl], a
    add [hl]
    ld [hl], l
    adc b
    adc d
    ld e, b
    db $76
    ld h, a
    ld [hl], h
    sub a
    sbc b
    adc b
    add [hl]
    or a
    add a
    adc d
    ld e, d
    ld [hl], a
    adc b
    add [hl]
    db $76
    add a
    sub a
    sub a
    ld a, c
    ld [hl], l
    add [hl]
    ld a, b
    add a
    ld [hl], a
    ld h, a
    add a
    sbc b
    add [hl]
    xor b
    sbc b
    ld l, b
    ld l, b
    ld a, b
    ld l, b
    adc b
    ld h, [hl]
    sub a
    ld l, b
    ld a, b
    sub a
    add [hl]
    adc b
    ld l, c
    adc b
    adc b
    sub a
    sub a
    add [hl]
    ld a, c
    ld [hl], a
    ld a, b
    ld h, a
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    ld l, c
    ld [hl], a
    sub l
    sub [hl]
    add [hl]
    adc b
    ld a, c
    adc b
    ld a, c
    db $76
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    adc b
    ld l, d
    ld l, c
    ld a, b
    ld l, b
    add [hl]
    ld [hl], a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    add [hl]
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    sub a
    ld a, b
    ld [hl], a
    adc b
    add a
    db $76
    ld a, b
    add a
    add a
    add a
    adc b
    sbc b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld l, b
    adc b
    ld l, b
    sub [hl]
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    sub [hl]
    adc b
    add a
    adc b
    ld a, b
    add a
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld l, c
    add [hl]
    add a
    adc b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    add a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    add a
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    add a
    add $ba
    ld l, d
    ld b, a
    add [hl]
    ld c, b
    add h
    ld l, b
    db $76
    ld l, d
    ld c, l
    ld a, [hl-]
    sub [hl]
    ld e, c
    adc b
    push hl
    cp c
    xor d
    sbc c
    sbc c
    adc b
    db $76
    ld a, [bc]
    ld d, e
    xor c
    add d
    ld [hl], b
    adc e
    ld e, c
    ld e, b
    inc a
    ld l, b
    ld l, b
    ld e, b
    sbc c
    sbc h
    sbc c
    ld h, l
    ld [hl], l
    adc d
    sbc l
    adc c
    push bc
    or l
    ld [hl], l
    add b
    ld [hl], a
    add hl, hl
    add l
    ld a, c
    add [hl]
    add a
    xor d
    ld l, d
    xor b
    xor c
    ld a, b
    or l
    and [hl]
    ld l, b
    ld h, [hl]
    sbc b
    ld b, a
    ld [hl], e
    ld [hl], h
    adc h
    sbc e
    ld a, c
    ld c, h
    add $98
    ld e, e
    ld h, $77
    ld e, e
    ld d, [hl]
    add [hl]
    db $76
    ld [hl], a
    adc d
    ld [hl], a
    xor d
    ld a, h
    ld l, b
    ld [hl], e
    add a
    ld e, d
    ld a, e
    sbc c
    sbc b
    ld a, e
    ld c, b
    add [hl]
    adc b
    ld e, c
    ld c, d
    sbc b
    ld l, c
    jr z, jr_009_463c

    sbc d
    ld [hl], a
    sub h
    sub [hl]
    ld [hl], l
    ld a, c
    ld a, e
    ld h, l
    and [hl]
    ld h, [hl]
    add e
    adc b
    sbc b
    adc b
    sub [hl]
    xor d
    ld l, d
    ld a, h
    ld c, d
    sub [hl]
    sbc b
    sub h
    sub [hl]
    adc b
    sbc c
    ld a, b
    ld l, c
    sub d
    add [hl]
    ld e, c
    ld l, b
    ld d, a
    ld d, [hl]
    add a
    sub a
    add l
    cp d
    ld a, e
    ld c, d
    ld e, b
    ld a, b
    ld a, b
    sbc c
    ld h, l
    and a
    ld d, a
    sub l
    xor b
    db $76
    ld a, b
    ld l, b
    xor c
    sub a
    xor b
    and a
    add a
    ld e, c
    db $76
    ld e, c
    ld d, [hl]
    ld e, c
    adc b
    ld e, c
    ld l, c
    ld a, c
    add h
    sub l
    sub a
    db $76
    ld a, d
    ld l, e
    adc c
    adc c
    ld [hl], l
    ld [hl], a
    ld a, b
    xor b
    ld [hl], a
    adc c
    add [hl]
    xor d
    ld e, e
    ld a, b
    ld [hl], a
    ld h, [hl]
    and l
    ld h, a
    adc d
    add a
    adc b
    sub l
    and [hl]
    adc b
    db $76
    add [hl]
    ld [hl], a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld l, b
    add a
    adc b
    ld [hl], a
    sbc b
    sbc b
    ld l, c
    db $76
    sub a
    sub [hl]
    ld h, [hl]
    ld e, b
    adc b
    add [hl]
    add a
    ld a, c
    adc e
    sbc b
    ld h, a

jr_009_463c:
    add a
    sub a
    ld l, b
    ld [hl], a
    sbc b
    ld h, [hl]
    or [hl]
    ld a, c
    add a
    sbc b
    adc d
    ld h, l
    add [hl]
    ld a, b
    add a
    ld a, c
    ld e, b
    and l
    or [hl]
    ld l, c
    sub [hl]
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, c
    ld h, a
    ld a, b
    ld c, c
    sub h
    adc b
    ld a, c
    ld a, b
    ld a, c
    ld l, b
    add a
    db $76
    add [hl]
    and a
    ld e, c
    ld h, a
    sub [hl]
    add a
    ld l, b
    adc b
    ld a, d
    adc b
    and [hl]
    ld a, c
    add a
    ld [hl], a
    ld c, d
    ld d, a
    db $76
    adc b
    ld a, b
    ld a, c
    ld l, c
    sub [hl]
    and a
    add l
    sub [hl]
    ld a, b
    ld l, b
    ld h, a
    db $76
    add [hl]
    sbc c
    ld l, b
    add a
    ld a, c
    db $76
    or [hl]
    adc b
    add a
    adc b
    ld a, c
    ld [hl], l
    sub a
    ld e, b
    adc b
    ld h, [hl]
    adc e
    add a
    ld a, c
    ld l, e
    ld e, c
    ld l, b
    ld l, b
    ld a, b
    db $76
    add a
    ld [hl], a
    sbc c
    ld c, b
    add [hl]
    sbc c
    ld e, b
    sbc b
    adc b
    sbc c
    sub l
    and a
    ld l, b
    add l
    adc c
    ld d, [hl]
    add [hl]
    ld a, b
    ld h, [hl]
    and a
    sbc d
    add a
    xor b
    ld l, b
    ld [hl], a
    add a
    ld h, [hl]
    ld a, c
    add l
    ld h, a
    and a
    add [hl]
    adc b
    sbc b
    add a
    adc b
    ld a, c
    ld a, c
    ld a, c
    ld e, b
    ld [hl], a
    sub a
    ld a, b
    db $76
    ld a, b
    ld e, c
    add a
    ld l, d
    ld a, c
    and a
    xor b
    ld a, b
    ld [hl], a
    adc b
    db $76
    ld d, [hl]
    db $76
    add a
    adc b
    ld a, b
    ld l, c
    adc b
    sub l
    adc b
    ld d, a
    add [hl]
    ld a, d
    ld a, b
    xor c
    ld a, c
    adc c
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld e, b
    db $76
    adc b
    sbc b
    add [hl]
    and a
    sub a
    sub a
    add l
    sub l
    ld a, d
    ld l, b
    ld a, b
    ld e, d
    ld a, c
    add [hl]
    ld l, c
    ld l, b
    ld a, b
    add a
    ld l, d
    ld l, c
    sbc b
    adc b
    ld h, a
    add [hl]
    sub a
    add [hl]
    add a
    ld e, c
    ld l, b
    and [hl]
    ld a, b
    sub [hl]
    cp b
    adc b
    ld [hl], a
    add [hl]
    add a
    sbc b
    ld a, b
    add l
    and [hl]
    add a
    db $76
    add a
    ld a, d
    ld e, b
    add a
    ld [hl], a
    sub l
    xor c
    ld a, c
    ld l, c
    adc b
    ld h, a
    sub a
    ld a, b
    ld h, a
    adc c
    ld a, b
    ld a, c
    sub a
    sub a
    ld l, e
    ld c, b
    ld l, b
    ld l, b
    ld [hl], a
    sub [hl]
    ld l, b
    add a
    xor b
    ld h, [hl]
    or l
    ld e, d
    ld l, c
    add [hl]
    ld a, b
    add a
    or h
    sbc c
    db $76
    ld l, c
    ld e, c
    db $76
    add a
    ld a, c
    sbc c
    ld a, d
    ld [hl], a
    ld [hl], a
    ld h, a
    sub [hl]
    ret z

    ld l, b
    ld a, c
    add a
    ld a, c
    sub a
    ld a, c
    ld [hl], a
    sub a
    ld [hl], a
    sub [hl]
    ld l, b
    ld e, d
    sub a
    ld [hl], a
    ld [hl], l
    sub e
    add [hl]
    sub a
    sbc b
    adc c
    add a
    adc b
    add a
    ld l, b
    ld e, h
    ld [hl], l
    ld a, b
    ld [hl], a
    add a
    ld a, e
    ld l, b
    ld l, b
    ld a, c
    ld [hl], e
    or [hl]
    ld l, e
    db $76
    sub a
    adc b
    add a
    adc c
    ld h, a
    adc c
    ld d, a
    add h
    and a
    ld h, a
    xor d
    ld l, d
    adc b
    sub [hl]
    sub a
    ld a, b
    adc c
    ld c, c
    ld e, b
    add [hl]
    ld [hl], l
    and [hl]
    ld [hl], a
    adc b
    adc c
    ld l, b
    ld d, l
    adc b
    adc c
    db $76
    ld a, c
    ld h, [hl]
    sub a
    adc c
    ld l, b
    ld l, e
    ld [hl], a
    add h
    sub [hl]
    adc b
    adc c
    ld e, d
    ld l, c
    ld d, a
    or l
    sbc b
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    add [hl]
    xor b
    sbc b
    and a
    db $76
    ld h, [hl]
    sub [hl]
    ld a, b
    sbc d
    ld [hl], a
    sub a
    adc c
    add [hl]
    xor c
    ld a, b
    ld l, b
    ld [hl], a
    ld h, l

Call_009_47aa:
    ld [hl], a
    sbc b
    ld a, d
    db $76
    add a
    sub [hl]
    ld a, b
    ld h, a
    ld a, b
    ld l, c
    sbc b
    ld h, [hl]
    sbc b
    adc d
    ld h, a
    ld h, a
    ld h, l
    add a
    sbc c
    ld a, b
    ld a, c
    ld a, c
    adc b
    sub a
    sub l
    ld a, c
    ld a, c
    ld [hl], h
    ld h, [hl]
    adc c
    ld a, c
    add a
    ld h, [hl]
    add a
    or a
    add l
    adc b
    adc b
    ld a, b
    ld a, c
    ld h, l
    sub a
    ld a, d
    db $76
    ld c, b
    ld l, c
    adc c
    sbc d
    ld e, c
    adc c
    adc b
    ld l, b
    ld [hl], l
    ld [hl], a
    and a
    sub l
    add a
    ld l, b
    xor b
    adc d
    ld a, b
    add a
    sub a
    sub l
    db $76
    sub a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld [hl], l
    xor c
    ld a, c
    ld [hl], l
    ld l, d
    ld e, d
    ld [hl], a
    adc c
    ld l, b
    sub a
    ld a, b
    ld c, b
    add a
    ld a, c
    ld e, b
    add a
    ld a, b
    ld [hl], a
    cp c
    add [hl]
    xor b
    ld [hl], a
    ld l, c
    ld h, [hl]
    ld d, [hl]
    sub l
    and a
    ld l, b
    add a
    adc c
    and [hl]
    add a
    and a
    add a
    ld a, d
    ld l, b
    add l
    xor b
    ld l, c
    add [hl]
    ld e, b
    ld l, b
    ld a, b
    ld a, c
    add a
    ld a, d
    ld a, c
    sub l
    ld [hl], l
    adc b
    ld l, b
    ld e, b
    ld d, a
    ld l, c
    add [hl]
    or a
    ld l, c
    xor b
    sub a
    ld a, b
    sub e
    sub [hl]
    ld e, d
    add [hl]
    ld l, c
    ld [hl], a
    sub [hl]
    or [hl]
    ld [hl], a
    ld a, b
    ld a, c
    sub l
    sbc b
    ld e, c
    ld l, c
    ld a, d
    ld [hl], a
    db $76
    sub a
    ld a, b
    xor b
    ld e, c
    add [hl]
    and [hl]
    adc b
    add [hl]
    ld e, e
    ld [hl], a
    add [hl]
    adc c
    db $76
    and a
    ld e, b
    ld e, b
    adc b
    add a
    add l
    ld l, b
    ld l, c
    add [hl]
    adc b
    and [hl]
    sbc b
    ld a, c
    ld l, b
    ld e, b
    adc b
    and [hl]
    adc b
    ld a, b
    ld [hl], a
    ld l, b
    db $76
    adc c
    adc b
    sub a
    ld e, c
    ld h, [hl]
    add a
    sbc c
    sub [hl]
    adc c
    ld e, b
    sub [hl]
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld h, l
    and [hl]
    and [hl]
    and [hl]
    and a
    ld h, a
    adc c
    ld d, a
    db $76
    adc c
    ld l, b
    ld a, c
    ld a, b
    adc b
    ld l, c
    adc c
    sub a
    adc c
    ld c, b
    add [hl]
    ld l, e
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub [hl]
    ld h, a
    sub l
    sub a
    add [hl]
    and [hl]
    add a
    add [hl]
    adc b
    ld l, d
    ld h, [hl]
    sbc b
    ld a, c
    add [hl]
    sub a
    ld e, d
    ld l, c
    ld [hl], a
    ld [hl], a
    db $76
    adc c
    ld l, b
    ld a, b
    ld a, c
    adc b
    add [hl]
    ld l, b
    ld l, b
    add a
    and a
    add l
    adc c
    ld l, c
    ld l, c
    add l
    sub [hl]
    sub a
    sub [hl]
    ld [hl], a
    ld e, d
    adc c
    ld [hl], a
    add a
    ld a, b
    ld e, e
    ld l, b
    add [hl]
    sbc b
    add [hl]
    adc b
    ld e, b
    ld l, c
    ld h, a
    db $76
    sub a
    ld a, b
    adc c
    ld [hl], a
    add [hl]
    and [hl]
    and [hl]
    ld e, d
    ld l, c
    ld e, b
    add [hl]
    and l
    sub a
    ld l, d
    adc b
    ld a, c
    add [hl]
    and [hl]
    adc b
    ld h, a
    ld [hl], a
    sub [hl]
    and l
    sub [hl]
    ld a, c
    ld l, c
    ld l, d
    ld [hl], a
    and [hl]
    and [hl]
    sub a
    ld [hl], a
    add a
    add a
    sub l
    sub a
    add a
    ld a, c
    ld e, b
    adc c
    add a
    add a
    ld l, c
    ld e, b
    sub a
    add [hl]
    ld d, [hl]
    and a
    ld l, b
    ld h, [hl]
    add [hl]
    add [hl]
    or h
    sbc b
    ld l, b
    sbc b
    ld a, c
    add a
    add [hl]
    ld a, c
    ld [hl], l
    ld a, b
    adc c
    add a
    xor b
    ld e, b
    ld l, c
    add a
    adc b
    adc b
    ld a, c
    ld a, c
    ld e, b
    ld h, [hl]
    adc b
    add [hl]
    add [hl]
    ld [hl], a
    ld [hl], a
    add [hl]
    and a
    adc c
    sbc b
    sbc b
    ld l, b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    ld h, a
    db $76
    adc c
    ld [hl], a
    ld a, c
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld a, c
    ld a, b
    add [hl]
    adc b
    db $76
    ld a, b
    ld a, c
    sub a
    and a
    ld e, c
    sub [hl]
    sbc c
    ld c, d
    ld [hl], a
    add a
    add a
    db $76
    adc c
    ld a, b
    add [hl]
    adc b
    add a
    add [hl]
    ld a, b
    adc b
    sub [hl]
    adc b
    add l
    ld a, b
    ld a, b
    ld [hl], a
    sub [hl]
    sub a
    ld h, a
    sub a
    ld a, b
    ld h, a
    or a
    ld [hl], a
    ld a, b
    adc b
    ld l, d
    add a
    ld d, [hl]
    ld l, d
    ld a, c
    ld [hl], a
    ld l, b
    ld [hl], a
    sub a
    adc b
    db $76
    adc c
    ld d, a
    and [hl]
    add a
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    and l
    ld a, b
    add a
    adc b
    ld e, b
    adc c
    add a
    add a
    adc b
    ld l, d
    ld l, c
    ld h, a
    db $76
    sub a
    ld l, b
    adc b
    ld a, d
    ld a, b
    sub [hl]
    sub [hl]
    and [hl]
    ld a, b
    ld a, b
    db $76
    ld [hl], a
    adc b
    add a
    ld a, d
    ld l, b
    sub [hl]
    xor b
    db $76
    ld a, b
    ld l, e
    ld h, a
    sub [hl]
    adc b
    add l
    adc b
    ld l, b
    ld [hl], a
    sub a
    sub [hl]
    adc c
    ld [hl], a
    ld a, b
    sub a
    ld [hl], a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc d
    ld c, b
    sub [hl]
    sub [hl]
    sub a
    db $76
    adc c
    ld l, b
    ld h, a
    add a
    db $76
    sbc b
    ld a, c
    ld d, [hl]
    add a
    adc b
    ld a, b
    sub [hl]
    ld a, b
    ld [hl], a
    and a
    ld [hl], a
    sub [hl]
    sbc b
    ld a, c
    ld h, [hl]
    sub l
    adc c
    ld [hl], a
    sbc b
    ld l, c
    ld [hl], a
    add [hl]
    ld [hl], a
    sub [hl]
    sbc c
    ld l, c
    add [hl]
    adc b
    ld a, b
    ld h, [hl]
    sbc c
    ld a, b
    add [hl]
    add a
    ld [hl], a
    adc b
    adc c
    ld l, b
    sub [hl]
    add [hl]
    ld a, b
    ld [hl], a
    adc d
    ld e, c
    ld a, b
    adc c
    ld l, b
    add a
    ld a, c
    adc b
    add [hl]
    adc b
    db $76
    ld a, c
    db $76
    and a
    sub a
    ld [hl], a
    sub a
    add [hl]
    ld [hl], a
    ld a, b
    add a
    db $76
    add a
    adc b
    ld a, b
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    ld l, c
    ld [hl], a
    xor b
    adc b
    ld e, b
    adc b
    ld h, a
    add [hl]
    adc b
    ld h, [hl]
    adc b
    ld a, c
    ld [hl], l
    and a
    sbc c
    ld [hl], a
    sub [hl]
    ld c, b
    add a
    sub a
    ld l, b
    sbc b
    ld a, c
    ld [hl], a
    sub h
    sbc b
    ld a, d
    db $76
    ld l, b
    ld [hl], a
    sub [hl]
    sbc c
    ld a, c
    ld l, c
    ld a, b
    ld h, a
    add [hl]
    sub [hl]
    xor d
    add a
    sub a
    ld [hl], a
    and l
    sbc d
    ld l, b
    db $76
    adc b
    db $76
    add a
    adc b
    ld a, b
    ld a, c
    ld l, b
    ld [hl], h
    ld [hl], a
    add a
    ld a, c
    adc b
    add [hl]
    sub [hl]
    sub a
    ld [hl], a
    ld a, b
    ld e, c
    ld [hl], l
    sub [hl]
    ld [hl], a
    adc b
    sbc b
    add a
    ld a, b
    and [hl]
    sbc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    adc b
    ld l, c
    add a
    sub a
    add l
    sub a
    adc c
    adc b
    ld h, [hl]
    adc b
    and l
    and a
    ld e, b
    ld l, b
    ld a, b
    db $76
    sub l
    adc c
    adc d
    add [hl]
    adc b
    db $76
    and a
    ld l, b
    ld a, c
    ld l, b
    ld [hl], a
    sub a
    adc b
    ld l, c
    ld a, c
    ld l, c
    ld h, [hl]
    add a
    ld a, b
    adc b
    ld l, c
    adc b
    sub a
    db $76
    ld [hl], a
    sub a
    adc b
    ld a, b
    add [hl]
    sub l
    sbc b
    ld a, b
    sub a
    sbc b
    add [hl]
    add [hl]
    sub a
    ld h, a
    ld a, b
    adc c
    ld h, [hl]
    sub a
    ld l, b
    adc b
    adc c
    ld h, a
    add [hl]
    adc b
    ld d, a
    and a
    ld a, d
    ld [hl], a
    and [hl]
    ld l, b
    ld h, a
    adc b
    adc c
    ld [hl], a
    sub a
    ld l, c
    sub a
    ld l, b
    ld a, b
    sub a
    add [hl]
    add [hl]
    ld a, b
    ld a, c
    add a
    add [hl]
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, c
    add a
    add l
    ld a, b
    adc b
    adc b
    adc b
    sub [hl]
    add a
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld d, a
    adc c
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    ld a, b
    ld a, b
    add a
    sbc b
    ld l, b
    ld l, b
    ld [hl], a
    ld a, b
    sub a
    add a
    ld a, c
    sub a
    db $76
    adc b
    add a
    ld a, c
    ld l, b
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, c
    ld a, b
    adc b
    db $76
    sub a
    ld a, b
    sub a
    ld l, c
    ld [hl], a
    sub a
    ld a, b
    add a
    adc c
    ld l, c
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, c
    add l
    sbc c
    ld c, b
    ld a, b
    sub a
    ld [hl], a
    sbc b
    ld a, b
    ld l, b
    add a
    ld a, c
    db $76
    add a
    ld a, b
    ld a, c
    db $76
    sub a
    adc b
    ld a, b
    ld a, c
    ld e, b
    db $76
    sub [hl]
    add a
    add a
    ld a, d
    ld a, c
    add a
    ld a, b
    sub [hl]
    adc b
    ld l, c
    db $76
    ld a, b
    adc b
    db $76
    ld a, d
    ld l, c
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    sbc b
    ld l, c
    ld [hl], a
    sub [hl]
    add a
    ld [hl], a
    ld l, b
    adc b
    ld [hl], a
    sub l
    add a
    add a
    ld a, d
    ld a, b
    add a
    sub a
    ld h, a
    add a
    adc b
    ld l, c
    ld a, b
    db $76
    adc b
    ld a, c
    ld l, b
    ld l, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, c
    adc b
    adc b
    ld [hl], a
    add a
    add [hl]
    ld [hl], a
    adc c
    add a
    add l
    sub a
    ld a, b
    adc b
    add a
    ld h, a
    adc b
    add [hl]
    ld a, b
    ld a, c
    ld a, c
    adc b
    add a
    add [hl]
    adc c
    ld l, b
    ld l, b
    sub a
    sub a
    adc b
    add a
    ld l, b
    adc b
    ld [hl], a
    add [hl]
    ld [hl], a
    adc b
    adc b
    ld e, b
    add a
    and a
    adc b
    db $76
    sbc b
    adc b
    db $76
    ld [hl], a
    adc c
    add a
    ld a, b
    add a
    sub a
    ld a, b
    ld h, a
    add a
    ld [hl], a
    add [hl]
    sub a
    add a
    ld a, b
    sbc b
    ld a, b
    ld a, b
    add a
    sub a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    xor b
    ld l, b
    ld a, b
    sub a
    adc b
    db $76
    ld [hl], a
    ld [hl], a
    sub l
    add a
    ld a, b
    adc b

Jump_009_4b70:
    ld a, c
    ld l, b
    sub a
    add a
    add a
    add a
    ld l, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, c
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    sbc b
    sbc b
    ld h, a
    adc c
    ld a, b
    add [hl]
    add a
    adc b
    ld [hl], a
    ld l, b
    db $76
    and [hl]
    sbc b
    add [hl]
    sub a
    sbc b
    db $76
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    ld l, b
    add [hl]
    sub a
    sub a
    ld a, b
    ld h, a
    ld a, c
    ld h, a
    add a
    ld a, b
    ld a, c
    ld a, b
    ld [hl], a
    ld a, c
    sub [hl]
    adc b
    ld e, b
    ld [hl], a
    sub a
    add a
    ld h, a
    sbc c
    ld [hl], a
    add a
    add a
    add [hl]
    sub a
    ld [hl], a
    adc c
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, b
    ld a, b
    ld l, c
    add a
    sub a
    ld h, a
    db $76
    ld l, d
    ld [hl], a
    add [hl]
    adc c
    ld a, b
    add a
    ld e, d
    add a
    add a
    ld l, c

Call_009_4bcb:
    ld [hl], a
    adc c
    ld l, c
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc c
    add a
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld h, [hl]
    adc b
    ld l, b
    ld a, b
    adc b
    db $76
    adc b
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc c
    adc b
    db $76
    adc b
    add a
    add a
    add a
    add a
    sub a
    sbc b
    adc c
    add [hl]
    adc b
    db $76
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    sub a
    ld [hl], a
    adc c
    ld [hl], a
    ld a, b
    adc b
    ld l, c
    add a
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    adc b
    add [hl]
    add a
    adc b
    add a
    sub a
    ld a, b
    ld l, d
    ld h, a
    ld l, c
    ld a, c
    sub [hl]
    adc b
    ld [hl], a
    adc c
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld [hl], a
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    sub a
    adc b
    adc b
    adc b
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, c
    add a
    ld [hl], a
    add a
    adc b
    ld l, c
    db $76
    ld a, b
    sub a
    ld a, b
    add a
    ld h, a
    ld a, b
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    add [hl]
    adc b
    add [hl]
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sbc b
    ld h, a
    add a
    add a
    add a
    ld [hl], a
    adc b
    ld l, b
    sub a
    ld [hl], a
    adc b
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    add a
    adc b
    add a
    ld a, c
    ld l, b
    add a
    ld [hl], a
    ld a, b
    adc b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
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
    ld a, b
    ld a, c
    ld [hl], $34
    ld d, l
    ld d, [hl]
    ld [hl], l
    ld a, e
    adc d
    rst $18
    db $ed
    call z, Call_009_62b8
    ld l, d
    xor c
    jp c, $c467

    ld b, a
    ld b, c
    inc b
    ld h, a
    ld [hl-], a
    ld [hl], $89
    res 5, d
    sbc d
    xor e
    and a
    ld [hl], $57
    xor e
    inc e
    cp h
    xor $cc
    ret z

    and l
    ld a, c
    ld [hl], a
    ld [hl], h
    dec [hl]
    db $76
    jr nc, jr_009_4cbf

    stop
    ld [hl+], a
    add d
    dec [hl]
    sbc h
    call $dfef
    db $fd
    jp z, $8899

    sbc c
    sbc c
    xor h
    xor d
    cp e

jr_009_4cbf:
    xor b
    rst $20
    ld h, l
    ld h, [hl]
    inc [hl]
    inc [hl]
    ld d, l
    ld d, l
    dec [hl]
    ld b, e
    jr nc, @+$24

    ld [de], a
    ld [hl-], a
    db $76
    call $3ddd
    xor $cd
    call z, $baaa
    xor e
    cp e
    xor d
    xor c
    adc b
    ld d, [hl]
    ld b, e
    ld b, h
    inc sp
    inc hl
    call nc, Call_009_6655
    ld h, a
    ld h, l
    ld d, l
    ld b, l
    inc sp
    ld b, l
    ld l, b
    sbc d
    cp d
    call z, $eced
    call z, $cc6d
    res 7, c
    sbc d
    add a
    ld h, [hl]
    ld d, l
    inc [hl]
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    inc [hl]
    ld [hl], $55
    ld d, h
    or [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld a, b
    sbc b
    xor d
    cp h
    call $cccc
    call z, $cdcc
    cp e
    adc c
    sbc c
    db $76
    ld d, l
    ld b, h
    ld b, h
    inc sp
    ld [hl+], a
    ld b, d
    inc sp
    inc hl
    ld b, h
    ld d, l
    ld d, a
    ld h, [hl]
    ld a, b
    ld a, b
    adc d
    xor c
    cp e
    cp d
    cp d
    res 7, e
    cp e
    call z, $a9bb
    xor c
    xor c
    sbc c
    db $76
    or [hl]
    ld h, l
    ld d, l
    ld b, e
    inc sp
    ld b, d
    ld b, d
    inc sp
    inc sp
    inc h
    ld b, [hl]
    ld d, [hl]
    ld a, b
    xor e
    xor e
    xor e
    ld c, e
    res 7, h
    cp h
    cp e
    res 7, e
    cp d
    sbc d
    sbc c
    sbc b
    adc b
    db $76
    ld [hl], l
    ld h, [hl]
    ld d, l
    or l
    dec [hl]
    ld b, h
    ld b, h
    inc sp
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    db $76
    adc c
    sbc c
    cp d
    cp h
    set 1, h
    ld c, e
    xor e
    cp d
    xor e
    cp e
    xor d
    xor e
    xor c
    sbc b
    sub a
    db $76
    ld h, [hl]
    ld d, l
    ld b, h
    ld b, e
    inc sp
    or h
    ld b, e
    ld b, h
    ld b, l
    ld d, l
    ld b, [hl]
    ld d, a
    ld h, a
    adc b
    adc c
    xor e
    xor e
    cp e
    cp e
    cp d
    cp d
    ld c, d
    cp e
    xor e
    cp e
    cp d
    xor d
    sbc b
    adc b
    db $76
    ld h, l
    ld d, h
    ld d, e
    inc [hl]
    ld b, e
    ld b, e
    ld b, h
    and l
    dec [hl]
    ld b, l
    ld b, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc d
    sbc e
    xor c
    xor e
    xor e
    xor d
    cp e
    cp e
    xor d
    ld c, e
    xor e
    cp d
    xor c
    sbc c
    sbc b
    ld [hl], a
    db $76
    ld d, [hl]
    ld b, h
    ld b, h
    dec [hl]
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    sub h
    ld h, l
    ld d, l
    ld d, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor c
    xor d
    xor e
    cp e
    cp h
    cp h
    cp e
    cp e
    ld e, e
    sbc c
    sbc c
    sbc b
    adc b
    ld [hl], a
    db $76
    ld h, l
    ld d, l
    ld b, [hl]
    ld d, h
    ld h, h
    ld b, h
    ld d, h
    ld b, l
    ld b, h
    or l
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, b
    ld a, c
    sbc c
    sbc c
    xor e
    xor d
    cp e
    res 7, e
    cp e
    cp e
    cp e
    ld l, d
    xor c
    sbc b
    add a
    db $76
    ld h, [hl]
    ld d, l
    ld d, l
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, [hl]
    and l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    adc b
    ld a, c
    sbc c
    sbc d
    cp d
    cp e
    xor d
    xor e
    xor e
    xor e
    cp d
    ld l, d
    xor c
    adc c
    add a
    adc b
    ld [hl], a
    ld h, l
    ld d, l
    ld d, h
    ld b, e
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld h, [hl]
    and l
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    adc b
    sbc b
    adc d
    sbc d
    xor e
    sbc e
    xor d
    sbc d
    xor e
    xor c
    xor c
    ld l, c
    sbc c
    sbc c
    adc c
    sbc b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld b, l
    dec [hl]
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    adc d
    xor d
    xor e
    xor c
    xor c
    xor d
    sbc c
    sbc c
    ld e, c
    xor c
    xor c
    sbc c
    adc c
    adc b
    add a
    add a
    db $76
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    and l
    ld h, l
    ld h, l
    db $76
    ld h, a
    add a
    add a
    sbc b
    sbc c
    sbc d
    xor c
    xor c
    xor c
    xor d
    sbc d
    sbc c
    ld c, d
    sbc d
    sbc c
    adc c
    sbc c
    adc b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    and l
    ld h, l
    ld d, l
    ld h, l
    ld d, [hl]
    db $76
    add a
    ld a, b
    adc b
    adc c
    sbc c
    xor c
    sbc d
    sbc d
    xor d
    xor d
    ld e, c
    xor d
    sbc d
    sbc d
    sbc c
    sbc b
    sbc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld d, a
    ld d, [hl]
    ld d, [hl]
    sub l
    ld d, l
    ld h, l
    ld d, [hl]
    ld b, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld [hl], a
    add a
    adc b
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    ld l, e
    sbc d
    xor c
    xor d
    xor d
    sbc c
    xor c
    sbc c
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, l
    and l
    ld h, l
    ld b, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    add a
    adc b
    adc c
    xor c
    xor c
    ld e, d
    sbc d
    xor d
    xor d
    sbc d
    sbc d
    sbc c
    sbc d
    sbc c
    sbc b
    sbc b
    sbc b
    ld a, b
    db $76
    db $76
    ld d, l
    add [hl]
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc c
    ld a, c
    sbc c
    sbc d
    sbc c
    xor c
    xor d
    xor d
    sbc c
    xor d
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    add [hl]
    add [hl]
    add a
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld [hl], l
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    adc c
    adc c
    adc c
    sbc d
    sbc d
    sbc d
    xor d
    sbc d
    xor c
    xor c
    sbc c
    sbc c
    sbc b
    xor b
    adc c
    adc b
    ld [hl], a
    add a
    db $76
    db $76
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    sbc b
    ld a, b
    adc b
    adc b
    sbc c
    sbc b
    sbc c
    sbc d
    sbc d
    sbc d
    sbc c
    xor c
    xor c
    xor c
    sbc c
    xor b
    ld e, b
    adc b
    adc b
    ld h, a
    add [hl]
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, a
    sub [hl]
    ld h, a
    ld h, a
    ld a, b
    adc b
    adc b
    adc c
    sbc c
    xor c
    xor c
    xor c
    xor d
    sbc d
    sbc d
    sbc d
    sbc d
    ld l, c
    sbc c
    sbc b
    adc c
    adc b
    add a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, l
    sub l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, b
    sbc b
    adc c
    sbc b
    sbc c
    xor c
    sbc c
    sbc d
    sbc d
    ld l, d
    xor c
    xor c
    xor c
    sbc c
    sbc b
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld d, l
    sub l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    adc b
    ld a, c
    adc b
    sbc c
    sbc c
    sbc d
    sbc c
    ld l, c
    xor c
    sbc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc b
    adc c
    sbc b
    adc b
    add a
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    sub l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, a
    ld h, a
    ld a, b
    ld a, b
    adc c
    sbc b
    sbc c
    ld a, d
    sbc c
    xor d
    xor c
    xor d
    sbc c
    sbc d
    sbc d
    adc c
    adc b
    adc c
    adc b
    adc b
    adc b
    add a
    ld a, b
    add a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    add a
    ld a, b
    adc b
    adc c
    sbc c
    xor c
    sbc d
    xor c
    xor d
    xor c
    xor c
    xor c
    xor c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    sub a
    ld h, a
    ld a, b
    ld a, b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc d
    xor c
    sbc c
    xor c
    sbc c
    ld e, c
    adc b
    adc b
    ld a, b
    ld a, b
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    db $76
    ld d, a
    sub a
    ld h, a
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    sbc b
    ld a, c
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    ld e, c
    xor c
    sbc c
    sbc c
    adc c
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    db $76
    ld h, l
    sub [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld a, b
    add a
    adc b
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    adc c
    ld l, c
    sbc d
    sbc c
    adc c
    sbc b
    sbc c
    sbc c
    adc c
    adc c
    adc b
    adc b
    sub a
    add a
    ld a, b
    ld h, a
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld h, a
    ld d, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    ld a, c
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc d
    sbc c
    sbc b
    sbc c
    adc b
    sbc b
    adc c
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    adc b
    sbc c
    sbc b
    sbc c
    sbc b
    sbc d
    sbc d
    sbc b
    xor b
    sbc c
    sbc b
    sbc b
    ld a, c
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    ld l, c
    sbc c
    sbc c
    adc c
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    add [hl]
    db $76
    ld h, a
    ld d, a
    ld d, a
    ld d, [hl]
    ld h, [hl]
    sub a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    ld a, c
    adc b
    sbc b
    sbc c
    sbc c
    ld l, c
    sbc c
    sbc c
    adc c
    sbc c
    adc b
    sbc b
    sbc b
    sbc b
    ld a, c
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    add [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    sbc b
    sbc b
    sbc c
    adc d
    adc c
    adc c
    adc c
    sbc b
    adc c
    adc c
    adc b
    sub a
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    adc c
    adc c
    sbc b
    sbc b
    adc c
    sbc b
    sbc c
    adc c
    adc b
    adc b
    adc c
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    adc b
    add a
    sbc b
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    sbc b
    ld a, c
    adc b
    sbc b
    sbc b
    adc c
    add a
    adc b
    adc b
    ld a, b
    db $76
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    sub [hl]
    db $76
    ld h, a
    db $76
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    adc c
    sbc b
    ld l, c
    adc b
    adc c
    sbc b
    adc c
    adc c
    adc c
    sbc c
    adc c
    adc b
    sub a
    add a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc b
    adc c
    adc b
    sbc c
    adc c
    sbc c
    sbc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    sub a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    add a
    add a
    adc c
    ld a, c
    adc c
    adc b
    adc c
    adc b
    sbc c
    sbc c
    sbc b
    adc c
    adc c
    adc c
    ld a, b
    adc c
    adc b
    adc c
    add a
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc c
    adc b
    sbc b
    adc c
    adc b
    sbc c
    adc c
    ld l, c
    sbc b
    sbc b
    adc c
    adc c
    adc c
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    add a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    adc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    adc c
    sbc c
    adc b
    adc c
    ld a, b
    adc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    db $76
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    adc b
    adc c
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    adc c
    adc c
    adc c
    sbc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld h, a
    add a
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    sub a
    adc c
    sub a
    sbc c
    sbc b
    adc c
    adc b
    ld l, c
    adc b
    sbc b
    adc b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld h, a
    db $76
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    sbc b
    adc c
    sbc b
    ld a, b
    sbc c
    adc c
    adc c
    adc b
    adc c
    sbc b
    adc c
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc c
    sbc b
    sbc b
    sub a
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], h
    inc de
    inc h
    ld d, [hl]
    ld h, [hl]
    ld l, c
    cp b
    xor b
    rst $28
    rst $18
    xor $e9
    ld e, d
    cp d
    ld h, b
    ld bc, $9ca9
    ld b, a
    ld b, b
    add l
    ld l, c
    ld a, [hl+]
    ld b, c
    ld de, $8934
    ld [hl], c
    ld [hl-], a
    ld a, b
    sbc b
    jp c, $cc7b

    cp e
    sbc e
    ret


    ld [hl], e
    ld b, [hl]
    ld d, h
    sbc h
    sbc $cc
    cp h
    xor $dd
    call c, Call_009_47aa
    ld b, a
    db $76
    ld l, b
    ld [hl], h
    ld [hl+], a
    ld d, a
    ld [hl], h
    ld de, $1110
    db $10
    ld de, $2204
    inc sp
    and [hl]
    db $ed
    db $dd
    db $fd
    cp $ef
    rst $28
    ld [$99aa], a
    add a
    adc c
    sbc c
    adc c
    cp h
    xor d
    inc c
    jp z, $86a8

    ld [hl], l
    ld h, l
    ld h, l
    inc hl
    inc [hl]
    ld d, l
    ld d, l
    dec [hl]
    ld b, e
    ld d, e
    ld b, e
    ld sp, $3391
    ld [de], a
    inc sp
    ld l, b
    ld a, h
    sbc $ed
    rst $28
    sbc $ed
    db $ed
    res 7, d
    xor h
    xor d
    ld l, e
    xor e
    xor b
    xor c
    sbc c
    add a
    ld [hl], l
    ld h, h
    ld b, e
    ld b, e
    inc sp
    ld [hl-], a
    inc de
    inc [hl]
    ld d, l
    ld [hl], l
    sub $68
    ld h, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld b, d
    inc sp
    ld d, [hl]
    ld [hl], a
    sbc d
    cp d
    cp h
    db $dd
    xor $dd
    inc e
    adc $cd
    call c, $bbcd
    xor d
    xor d
    sbc c
    ld [hl], l
    ld d, l
    ld h, h
    inc [hl]
    inc h
    ld hl, $b212
    inc hl
    ld d, e
    ld d, l
    ld [hl], l
    ld d, l
    ld d, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    xor c
    ld c, d
    cp h
    call c, $dceb
    set 1, l
    cp h
    db $db
    set 1, e
    xor d
    xor c
    adc c
    add [hl]
    ld h, h
    sub h
    ld b, e
    inc [hl]
    inc sp
    inc hl
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    ld b, l
    ld b, l
    ld h, [hl]
    ld [hl], l
    ld [hl], a
    add a
    adc c
    adc b
    sbc d
    xor e
    cp d
    res 7, e
    cp e
    cp e
    cp h
    cp d
    cp e
    call c, $aabc
    sbc d
    add hl, hl
    sbc c
    sbc d
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld h, h
    ld d, h
    ld d, e
    ld [hl-], a
    inc h
    inc h
    inc sp
    ld [hl-], a
    inc sp
    or h
    inc sp
    ld b, l
    ld d, [hl]
    ld d, a
    ld a, b
    xor d
    cp d
    cp e
    cp d
    cp h
    cp e
    res 7, e
    call z, Call_009_4bcb
    set 1, e
    cp c
    xor d
    xor c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], l
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld b, h
    and h
    ld b, h
    ld b, h
    ld b, h
    inc sp
    inc sp
    ld b, h
    ld d, e
    ld b, h
    ld d, h
    ld h, [hl]
    ld l, b
    adc c
    sbc d
    sbc d
    cp e
    adc h
    cp h
    call c, $cbcb
    xor d
    cp e
    cp e
    xor d
    cp d
    xor e
    xor d
    xor c
    xor b
    sbc b
    adc b
    ld h, [hl]
    ld h, a
    ld h, l
    ld d, l
    ld b, h
    ld b, e
    inc sp
    inc [hl]
    ld b, h
    inc sp
    ld d, e
    ld b, h
    ld b, h
    ld d, l
    ld d, l
    ld h, [hl]
    or a
    ld h, [hl]
    ld a, b
    ld a, c
    adc b
    sbc c
    xor e
    cp e
    cp e
    call z, $bbbc
    xor d
    xor e
    xor d
    cp d
    ld c, d
    cp d
    cp d
    cp d
    xor c
    sbc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld b, l
    ld b, h
    inc [hl]
    ld b, e
    inc [hl]
    and h
    ld b, h
    ld b, h
    ld d, h
    ld b, [hl]
    ld b, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    add a
    adc b
    sbc c
    xor d
    xor e
    cp d
    ld a, e
    xor e
    cp e
    cp d
    cp d
    cp e
    cp d
    xor e
    xor e
    cp d
    cp d
    xor c
    sbc d
    sbc b
    sbc b
    ld [hl], a
    ld h, [hl]
    ld d, l
    ld h, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld b, l
    ld b, h
    ld d, h
    ld b, h
    ld d, l
    ld d, [hl]
    ld d, l
    or [hl]
    ld h, [hl]
    adc b
    adc b
    adc c
    adc d
    sbc d
    sbc d
    xor d
    xor e
    cp e
    cp h
    cp d
    res 7, e
    cp d
    ld c, d
    xor c
    xor d
    sbc c
    sbc c
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    sub l
    ld b, l
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, h
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    adc b
    adc b
    sbc b
    xor d
    ld a, d
    xor d
    cp d
    cp e
    cp d
    cp e
    xor e
    cp d
    cp e
    cp h
    cp d
    cp d
    xor c
    sbc b
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld b, [hl]
    ld d, l
    ld d, [hl]
    ld b, h
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld h, [hl]
    and [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    db $76
    add a
    adc b
    sbc b
    adc c
    sbc c
    xor d
    cp d
    xor e
    xor e
    xor e
    xor e
    ld c, e
    xor e
    xor e
    xor e
    xor e
    sbc c
    xor c
    sbc c
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, l
    ld d, l
    ld h, h
    ld b, h
    add h
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    add a
    adc b
    sbc b
    sbc c
    sbc c
    sbc d
    xor d
    xor d
    xor e
    xor e
    xor d
    xor c
    xor d
    xor d
    xor c
    xor c
    sbc c
    xor c
    ld e, c
    sbc c
    adc c
    adc b
    adc c
    add a
    ld a, b
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld b, l
    ld b, h
    ld b, h
    ld b, l
    ld d, l
    and l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc c
    sbc c
    adc d
    xor c
    xor e
    adc c
    cp c
    xor e
    xor d
    sbc d
    sbc d
    sbc d
    sbc d
    adc c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    adc b
    ld h, a
    add a
    ld [hl], a
    ld h, [hl]
    ld h, l
    ld h, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld d, l
    ld d, h
    ld d, l
    ld h, l
    ld h, l
    sub [hl]
    ld h, a
    ld l, b
    ld a, b
    adc b
    ld a, c
    adc c
    sbc c
    xor c
    xor d
    xor c
    xor e
    xor d
    xor d
    xor d
    sbc d
    ld a, c
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    sbc b
    adc c
    add a
    add a
    ld [hl], a
    add [hl]
    ld a, b
    ld [hl], a
    ld h, a
    ld h, [hl]
    add [hl]
    ld d, a
    ld d, [hl]
    ld d, l
    ld d, l
    ld d, l
    ld b, l
    ld d, l
    ld d, l
    ld d, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    xor b
    sbc b
    adc c
    sbc d
    sbc c
    xor c
    xor c
    xor d
    sbc d
    sbc d
    xor d
    xor d
    cp d
    sbc d
    sbc d
    sbc c
    ld e, c
    adc c
    sbc c
    add a
    sub a
    adc b
    add a
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    add l
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld a, b
    add a
    sbc b
    adc c
    sbc c
    sbc d
    adc d
    xor c
    sbc d
    xor d
    xor d
    sbc d
    xor c
    xor d
    xor c
    sbc d
    sbc d
    sbc c
    sbc c
    adc c
    sbc b
    ld e, b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    and [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    add a
    ld a, b
    ld a, b
    adc b
    sbc c
    sbc c
    sbc d
    sbc c
    xor d
    adc d
    xor d
    sbc d
    xor d
    sbc d
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc b
    add a
    add a
    add a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, h
    ld d, l
    ld h, l
    ld b, [hl]
    ld d, l
    ld d, l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    sub a
    db $76
    ld [hl], a
    add a
    add a
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc d
    sbc d
    sbc d
    sbc d
    sbc c
    xor c
    ld e, c
    xor c
    xor d
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    adc b
    add a
    add a
    ld h, a
    ld [hl], a
    ld h, l
    ld h, [hl]
    db $76
    ld d, l
    ld d, l
    ld h, l
    ld b, l
    ld h, l
    ld b, [hl]
    ld d, [hl]
    ld d, l
    ld h, [hl]
    ld h, l
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    ld a, b
    and a
    add a
    adc b
    sbc b
    sbc c
    adc c
    sbc d
    sbc d
    sbc d
    xor d
    sbc d
    sbc c
    xor d
    sbc c
    sbc d
    sbc c
    ld e, c
    sbc c
    sbc b
    sbc c
    sbc b
    ld a, b
    add a
    ld a, b
    add a
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    db $76
    db $76
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    adc b
    sbc b
    adc c
    sbc c
    adc c
    sbc c
    xor c
    sbc c
    xor c
    sbc d
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    ld e, b
    adc c
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    sub [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, a
    ld d, [hl]
    ld h, [hl]
    db $76
    db $76
    add a
    ld h, a
    adc b
    adc b
    adc b
    sbc b
    sbc c
    adc d
    sbc c
    xor d
    sbc d
    xor c
    xor d
    sbc d
    sbc c
    xor d
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    ld h, a
    ld a, b
    ld l, b
    ld h, a
    db $76
    ld h, a
    ld h, l
    ld h, l
    ld d, l
    ld h, l

Jump_009_565a:
    ld d, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    sbc c
    adc c
    adc d
    adc c
    ld l, d
    xor c
    sbc d
    sbc d
    sbc d
    sbc d

Jump_009_5676:
    sbc d
    adc d
    sbc c
    sbc c
    sbc c
    sbc c
    adc b
    sbc b
    ld [hl], a
    add a
    ld l, b
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc c
    sbc b
    sbc c
    sbc d
    sbc c
    sbc d
    xor c
    sbc c
    ld l, c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc c
    adc b
    adc b
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], l
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld [hl], a
    and [hl]
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc c
    adc c
    sbc c
    adc d
    sbc c
    xor c
    xor d
    sbc c
    sbc d
    xor d
    sbc c
    ld a, c
    sbc c
    adc c
    sbc b
    sbc c
    adc b
    adc c
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]

Call_009_56e5:
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld a, b
    ld l, b
    sbc b
    adc b
    adc c
    adc b
    xor b
    xor c
    sbc d
    sbc c
    xor d
    sbc d
    xor d
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    ld l, c
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    add [hl]
    ld h, a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    sbc c
    sbc c
    xor c
    sbc d
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    ld l, c
    adc b
    adc b
    adc b
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld d, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc b
    xor b
    sbc c
    adc d
    sbc c
    sbc c
    sbc d
    sbc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    ld l, b
    adc b
    sbc b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    add l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    sbc b
    xor b
    sbc c
    adc c
    sbc b
    sbc c
    adc c
    sbc c
    sbc c
    adc c
    adc c
    sbc b
    adc c
    adc c
    sbc b
    ld l, b
    add a
    add a
    ld a, b
    ld a, b
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld l, b
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    adc b
    adc b
    sbc c
    adc c
    sbc c
    adc c
    sbc c
    adc c
    adc d
    adc c
    sbc c
    sbc c
    adc c
    adc c
    adc c
    sbc b
    adc b
    sbc b
    add a
    sbc b
    add a
    ld l, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, [hl]
    sub [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc c
    adc c
    adc c
    adc b
    adc c
    sbc c
    adc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    adc b
    adc b
    adc b
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    add a
    ld h, a
    db $76
    db $76
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    add a
    sub a
    adc b
    adc b
    sbc c
    adc c
    adc c
    sbc c
    ld a, c
    adc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    adc b
    sbc c
    adc c
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    sub a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc c
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc b
    ld a, c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    adc c
    adc b
    sbc b
    sbc b
    sub a
    sbc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    sub a
    add [hl]
    ld a, b
    ld a, b
    add a
    add a
    adc b
    adc c
    adc b
    adc c
    adc b
    adc c
    sbc c
    adc b
    sbc c
    adc c
    ld a, b
    sbc b
    sbc c
    sbc b
    adc b
    sbc b
    sbc b
    sbc b
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
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    adc b
    adc c
    adc b
    adc b
    sbc b
    adc c
    sbc b
    sbc c
    sbc b
    sbc b
    ld a, c
    sbc b
    sbc c
    adc c
    sbc b
    adc b
    adc b
    sbc b

Jump_009_58a8:
    adc b
    adc b
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    db $76
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    sbc c
    sbc b
    ld l, b
    sbc c
    adc c
    adc c
    sbc b
    adc b
    adc c
    adc b
    add a
    sub a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    add a
    sbc b
    adc c
    sbc b
    adc c
    sbc b
    sbc c
    sbc c
    adc c
    ld a, c
    adc b
    sbc b
    adc c
    adc c
    adc b
    adc c
    add a
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc c
    sbc b
    adc c
    adc c
    ld l, b
    sbc c
    sbc b
    sbc b
    adc b
    sbc b
    adc b
    sub a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    db $76
    db $76
    ld h, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    add a
    adc b
    add a
    sbc b
    adc b
    sbc c
    adc c
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    ld a, c
    adc b
    sbc b
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld a, b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    db $76
    ld l, b
    ld [hl], a
    add a
    sbc b
    ld a, b
    ld a, b
    adc b
    add a
    sbc b
    ld a, c
    adc b
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    sbc c
    sbc b
    sbc b
    ld a, b
    adc b
    adc b
    adc b
    adc b
    sub a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    db $76
    add [hl]
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    adc c
    adc c
    sbc b
    sbc b
    adc c
    sbc c
    ld l, c
    adc b
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc c
    adc b
    sbc c
    adc c
    adc c
    sbc b
    sbc c
    adc c
    sbc b
    ld a, b
    sbc b
    adc c
    adc c
    adc b
    add a
    adc b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    sbc b
    ld a, b
    add a
    adc b
    adc b
    adc b
    sbc b
    adc c
    adc b
    sub a
    sbc c
    adc c
    adc b
    sbc b
    adc b
    adc c
    ld l, b
    sbc b
    sbc b
    adc c
    adc c
    ld a, b
    sub a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    add [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    db $76
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    adc b
    adc b
    adc b
    adc b
    sub a
    adc b
    sbc b
    adc c
    adc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    sbc b
    call nc, $3312
    ld h, l
    ld d, a
    ld h, a
    add h
    ld l, d
    ld a, e
    jp z, $effd

    cp $ad
    and h
    cp e
    ld l, b
    add [hl]
    jr nz, @+$37

    xor c
    or [hl]
    ld h, [hl]
    adc a
    or [hl]
    ld [hl], l
    ld c, e
    ld d, d
    ld b, l
    ld [hl+], a
    ld de, $7b23
    ld h, l
    ld b, c
    inc sp
    jr c, jr_009_5ae0

    adc e
    ld [$ccda], a
    call z, $9aba
    jp z, $1587

    ld h, e
    ld d, h
    adc h
    db $dd
    db $ed
    sbc h
    call z, $eccd
    db $db
    cp h
    adc c
    ld [hl], a
    add e
    sub [hl]
    ld d, [hl]
    jr c, jr_009_5afa

    jr nc, @+$16

    ld h, a
    ld [hl], l
    jr nc, jr_009_5ab8

    ld hl, $2121
    ld [bc], a
    ld bc, $3224
    ld b, e
    sub l
    ld a, h
    call $dfdd
    rst $18
    db $fd
    cp $ff
    db $ec
    xor c
    sbc c
    and a
    ld [hl], a
    adc b
    sbc d
    ld c, c
    sbc b
    sbc e
    cp d
    sbc b
    cp h
    xor e
    add a

jr_009_5ab8:
    add a
    ld h, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld b, c
    ld [hl-], a
    dec [hl]
    push de
    ld d, h
    ld b, h
    ld d, l
    ld b, h
    ld d, h
    ld b, e
    ld b, h
    jr nc, jr_009_5aec

    inc sp
    ld hl, $4534
    adc c
    adc d
    adc [hl]
    rst $18
    adc $ee
    sbc $ed
    call c, $bcec
    cp c
    xor d
    cp e
    xor b
    sbc e
    xor d
    xor c

jr_009_5ae0:
    ld l, c
    adc c
    sbc c
    add a
    ld [hl], a
    ld d, l
    ld h, e
    ld b, e
    inc sp
    inc [hl]
    inc sp
    ld [hl-], a

jr_009_5aec:
    ld [hl+], a
    ld b, h
    ld b, [hl]
    ld d, a
    and a
    ld h, a
    ld d, a
    add a
    db $76
    ld d, l
    ld d, l
    ld d, h
    ld h, l
    inc sp

jr_009_5afa:
    dec [hl]
    ld d, [hl]
    ld a, c
    ld a, d
    xor d
    res 1, e
    call $edce
    call c, $abdc
    call c, $bccc
    call z, $b9cb
    sbc d
    sbc b
    adc c
    ld d, [hl]
    ld h, h
    ld d, l
    ld d, h
    ld d, h
    inc hl
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    inc h
    inc h
    ld d, l
    ld b, [hl]
    ld h, [hl]
    ld h, l
    push de
    ld b, [hl]
    ld h, a
    add [hl]
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld [hl], a
    adc c
    xor c
    xor d
    xor e
    cp h
    ld e, h
    db $dd
    cp h
    call z, $bcab
    res 5, h
    cp e
    cp e
    cp e
    cp d
    sbc c
    sbc d
    adc b
    add a
    ld h, l
    ld d, h
    ld b, h
    inc sp
    inc [hl]
    ld b, e
    inc sp
    inc hl
    inc hl
    inc [hl]
    inc [hl]
    ld b, e
    inc [hl]
    inc sp
    ld d, h
    ld d, [hl]
    or [hl]
    ld h, a
    ld h, a
    ld a, b
    add a
    ld a, c
    sbc c
    sbc b
    adc c
    xor e
    cp e
    cp d
    cp e
    cp e
    xor e
    xor e
    ld a, e
    call z, $aaab
    xor e
    cp e
    cp h
    xor d
    xor c
    sbc b
    sbc b
    sbc c
    sbc b
    sbc b
    add a
    ld [hl], l
    ld [hl], $66
    ld d, l
    ld d, l
    ld b, h
    ld d, h
    ld b, e
    ld [hl-], a
    inc hl
    inc [hl]
    ld d, h
    inc [hl]
    inc sp
    inc [hl]
    ld b, l
    ld b, h
    or h
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld a, c
    sbc d
    xor e
    xor e
    cp e
    cp e
    xor e
    cp e
    cp e
    cp e
    cp d
    cp e
    ld l, e
    res 5, e
    xor e
    xor h
    xor d
    xor d
    sbc b
    sbc c
    sbc b
    adc b
    adc b
    add a
    adc b
    ld a, b
    ld h, a
    ld b, h
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    dec [hl]
    ld b, h
    ld d, h
    ld b, l
    dec [hl]
    ld d, h
    ld b, h
    inc sp
    inc [hl]
    ld b, l
    ld d, l
    or l
    ld b, l
    ld d, [hl]
    ld d, a
    ld [hl], a
    ld a, c
    sbc d
    xor c
    xor d
    xor e
    cp h
    xor e
    call z, $cbbc
    jp z, $aa6a

    xor d
    xor e
    xor d
    xor d
    xor d
    sbc e
    xor d
    sbc d
    sbc c
    adc c
    adc b
    ld a, b
    add a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld h, h
    ld d, h
    ld b, h
    inc [hl]
    ld b, h
    inc [hl]
    ld b, h
    ld b, l
    ld b, h
    ld d, h
    ld b, h
    ld d, l
    ld d, l
    or [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    adc b
    xor c
    xor e
    xor e
    cp d
    xor e
    cp e
    jp z, $bb7b

    sbc e
    sbc c
    xor c
    cp d
    sbc d
    cp d
    cp d
    xor d
    xor d
    sbc c
    sbc c
    sbc b
    sub a
    adc b
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld d, l
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld b, e
    ld d, h
    ld b, h
    ld b, h
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    and l
    ld d, l
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    add a
    adc b
    ld a, c
    adc b
    sbc d
    sbc c
    cp d
    xor d
    xor e
    xor d
    sbc d
    cp e
    cp d
    xor d
    xor d
    xor d
    xor d
    xor d
    sbc d
    xor d
    xor d
    xor d
    xor d
    sbc d
    adc c
    adc c
    ld e, b
    adc b
    ld a, b
    db $76
    ld d, [hl]
    ld h, l
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, e
    ld b, l
    ld b, l
    ld d, h
    ld d, h
    ld d, h
    and h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld a, b
    sbc b
    adc c
    sbc c
    xor c
    xor c
    sbc d
    sbc d
    xor d
    xor d
    cp d
    cp d
    cp e
    cp d
    cp e
    xor e
    xor e
    sbc d
    xor c
    xor d
    sbc d
    sbc c
    ld e, b
    sbc c
    adc b
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld h, h
    ld d, l
    ld d, l
    ld b, [hl]
    ld h, l
    ld d, l
    add l
    ld d, l
    ld b, l
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    db $76
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    cp b
    sbc c
    sbc c
    xor c
    xor c
    xor c
    cp e
    cp d
    cp e
    xor e
    cp d
    cp d
    cp d
    xor d
    cp d
    cp e
    ld e, e
    xor d
    sbc d
    xor c
    adc c
    adc b
    ld a, b
    add [hl]
    ld h, a
    ld h, [hl]
    ld d, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, [hl]
    ld b, l
    ld h, l
    ld b, [hl]
    ld d, h
    ld h, l
    ld d, l
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    ld h, [hl]
    ld h, a
    and a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc c
    adc c
    adc c
    sbc d
    sbc d
    xor d
    xor e
    xor d
    cp d
    xor e
    xor d
    ld l, d
    xor d
    xor e
    xor d
    xor d
    xor e
    sbc d
    xor d
    sbc c
    sbc b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    ld d, l
    ld d, l
    ld b, l
    ld d, h
    ld d, h
    ld b, h
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld d, [hl]
    ld h, a
    ld h, [hl]
    ld [hl], a
    and [hl]
    ld [hl], a
    ld h, a
    ld h, a
    db $76
    ld l, b
    ld a, b
    add a
    adc b
    adc c
    sbc b
    sbc c
    sbc c
    sbc c
    xor c
    xor e
    adc c
    cp d
    xor d
    xor d
    xor c
    xor d
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc b
    ld c, b
    adc b
    adc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    add l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    xor c
    sbc c
    sbc d
    sbc e
    xor d
    xor c
    xor d
    xor d
    sbc d
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    ld e, c
    adc c
    sbc c
    adc c
    adc c
    sbc b
    adc c
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld d, l
    ld d, l
    ld h, h
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    ld b, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    add a
    and a
    ld a, b
    adc b
    adc b
    sbc b
    sbc c
    sbc c
    sbc c
    sbc c
    sbc d
    sbc d
    xor d
    sbc d
    sbc d
    sbc d
    sbc c
    ld a, d
    sbc b
    sbc c
    sbc d
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    adc b
    adc c
    add a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    sub l
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc c
    adc b
    sbc b
    sbc c
    xor c
    adc c
    xor c
    xor c
    sbc c
    sbc d
    sbc d
    sbc c
    xor d
    sbc d
    sbc d
    sbc c
    xor c
    adc c
    sbc c
    sbc c
    sbc c
    ld l, c
    sub a
    sbc b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld l, b
    ld [hl], a
    xor b
    add a
    adc b
    sbc b
    sbc c
    adc b
    sbc c
    sbc d
    xor b
    xor c
    sbc d
    sbc c
    xor d
    sbc d
    xor c
    xor c
    ld a, d
    sbc c
    sbc c
    sbc d
    sbc c
    sbc d
    adc c
    adc c
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld d, [hl]
    sub [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld [hl], a
    db $76
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    adc b
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    sbc d
    sbc d
    sbc d
    xor d
    xor c
    sbc c
    xor c
    xor c
    xor c
    sbc d
    adc c
    sbc c
    sbc c
    adc c
    ld e, c
    adc c
    add a
    adc b
    add a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld [hl], l
    ld h, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld l, b
    db $76
    ld [hl], a
    ld [hl], a
    add a
    adc b
    adc b
    adc b
    sbc b
    adc c
    sbc c
    sbc c
    xor b
    xor d
    sbc c
    sbc c
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    ld l, d
    sbc c
    sbc d
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
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
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld d, l
    ld h, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    and a
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, b
    adc b
    adc b
    adc b
    adc c
    sbc c
    sbc c
    adc c
    sbc c
    sbc d
    xor c
    sbc d
    sbc c
    sbc c
    xor d
    adc d

Jump_009_5e79:
    adc c
    sbc c
    sbc c
    sbc b
    xor b
    sbc b
    adc b
    ld e, b
    sbc b
    adc b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    ld [hl], l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    db $76
    ld h, l
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, a
    ld d, [hl]
    db $76
    ld h, a
    ld h, a
    ld l, b
    ld h, a
    add a
    ld a, b
    sbc b
    adc b
    adc c
    adc b
    adc c
    adc b
    sbc b
    sbc c
    sbc b
    adc c
    sbc c
    xor c
    sbc c
    xor c
    adc c
    sbc d
    ld a, d
    sbc c
    sbc c
    sbc d
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    adc b
    add [hl]
    ld a, b
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld d, [hl]
    db $76
    ld d, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc c
    xor c
    sbc c
    xor c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc c
    sbc b
    sbc c
    ld l, c
    adc c
    ld a, c
    adc b
    ld [hl], a
    add a
    ld a, b
    ld l, b
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    db $76
    ld h, [hl]
    ld d, [hl]
    ld h, l
    add l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, l
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    ld a, b
    ld [hl], a
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc b
    ld a, c
    adc b
    adc c
    adc b
    sbc b
    adc c
    adc c
    sbc c
    sbc c
    adc d
    sbc c
    sbc c
    ld a, d
    xor c
    xor c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    adc c
    sbc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    add a
    ld h, a
    ld a, b
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, [hl]
    ld h, l
    ld h, [hl]
    add l
    ld h, [hl]
    ld h, l
    ld h, [hl]
    db $76
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    sbc b
    adc b
    sbc b
    adc c
    sbc b
    adc c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    xor c
    sbc c
    sbc c
    sbc c
    sbc d
    adc c
    sbc c
    sbc c
    ld l, c
    sbc b
    sbc c
    adc b
    adc c
    adc b
    adc b
    ld a, b
    add a
    add a
    add a
    db $76
    db $76
    db $76
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld d, [hl]
    ld h, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    sub a
    ld h, a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld a, b
    sbc b
    adc c
    adc c
    sbc c
    adc d
    sbc c
    sbc c
    sbc c
    adc d
    sbc c
    xor b
    xor c
    sbc c
    sbc c
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    sub a
    sbc b
    adc b
    adc b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, a
    ld h, l
    db $76
    ld h, [hl]
    ld h, l
    ld h, [hl]
    sub [hl]
    ld d, l
    ld h, [hl]
    ld d, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    and a
    sbc c
    adc b
    adc c
    sbc c
    sbc c
    sbc b
    sbc c
    xor c
    xor c
    sbc c
    sbc d
    sbc c
    sbc c
    sbc d
    sbc c
    ld l, b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    adc b
    ld a, b
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    db $76
    db $76
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld h, [hl]
    ld d, a
    ld h, l
    db $76
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    sub [hl]
    db $76
    ld [hl], a
    db $76
    ld [hl], a
    db $76
    add a
    ld [hl], a
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    adc c
    sbc b
    adc b
    sbc c
    sbc c
    sbc b
    sbc c
    sbc c
    sbc c
    sbc d
    sbc c
    xor b
    sbc c
    xor c
    adc c
    adc c
    sbc b
    adc c
    ld l, b
    adc b
    add a
    sub a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    add [hl]
    ld d, a
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld l, b
    ld [hl], a
    ld [hl], a
    sbc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    sbc b
    adc c
    adc c
    adc c
    sbc c
    adc c
    sbc c
    adc c
    adc c
    adc c
    ld a, c
    adc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    adc c
    sbc c
    sbc b
    sbc b
    sbc b
    ld a, b
    sub a
    adc b
    adc b
    ld h, a
    ld [hl], a
    ld [hl], a
    add [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld d, a
    ld d, [hl]
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    add [hl]
    ld h, a
    db $76
    ld h, [hl]
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    add a
    add a
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc b
    sbc b
    sbc b
    sbc c
    sbc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    ld l, b
    sbc c
    adc c
    adc b
    sbc b
    adc b
    adc b
    adc b
    sbc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    db $76
    ld h, l
    db $76
    ld d, [hl]
    ld h, [hl]
    ld d, [hl]
    ld h, [hl]
    ld d, a
    ld h, l
    ld h, l
    ld h, a
    ld h, [hl]
    ld h, [hl]
    db $76
    sub [hl]
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    adc b
    adc c
    adc c
    sbc c
    sbc b
    sbc c
    adc b
    sbc c
    adc c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    sbc c
    adc c
    sbc b
    sbc b
    sbc c
    adc b
    adc b
    adc b
    ld l, b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, a
    ld h, l
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    db $76
    ld a, b
    ld [hl], a
    sbc b
    add a
    ld a, b
    ld a, c
    ld a, c
    ld a, c
    adc b
    sbc b
    adc c
    adc b
    adc c
    adc c
    adc b
    sbc c
    sbc b
    xor c
    ld a, c
    sbc b
    sbc c
    adc c
    sbc c
    sbc b
    adc c
    adc b
    sbc c
    adc b
    adc b
    ld a, b
    sub a
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    adc c
    sbc c
    adc b
    adc c
    adc b
    sbc b
    sbc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    adc c
    adc c
    adc c
    sbc c
    adc c
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    adc b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    add a
    db $76
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, a
    ld h, [hl]
    db $76
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld h, a
    add a
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    adc b
    adc c
    adc b
    adc b
    adc c
    adc c
    adc b
    sbc c
    adc b
    sbc c
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc c
    adc b
    sbc b
    adc c
    ld l, b
    adc b
    adc b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    ld h, a
    add a
    ld [hl], a
    db $76
    db $76
    ld h, a
    ld h, a
    add a
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld l, b
    ld h, a
    ld [hl], a
    sbc b
    ld [hl], a
    adc b
    adc b
    add a
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc c
    ld a, c
    adc b
    adc c
    sbc b
    sbc b
    adc c
    sbc c
    adc c
    adc c
    adc b
    sbc b
    ld a, c
    adc c
    adc b
    adc b
    sub a
    adc b
    adc b
    add a
    adc b
    add a
    ld h, a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    db $76
    ld h, [hl]
    add [hl]
    ld [hl], a
    ld h, a
    ld h, [hl]
    ld [hl], a
    add [hl]
    ld h, a
    db $76
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld [hl], a
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
    adc b
    adc b
    sbc c
    adc c
    adc c
    adc c
    ld a, b
    sbc b
    adc b
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld h, a
    add [hl]
    ld [hl], a
    db $76
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld h, [hl]
    add a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld a, b
    ld h, a
    add a
    ld [hl], a
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
    adc b
    sbc b
    adc c
    adc b
    adc c
    sbc b
    adc c
    adc c
    adc c
    adc c
    adc b
    sbc b
    adc b
    ld a, b
    sbc b
    adc b
    adc b
    adc b
    ld a, c
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld h, a
    add a
    db $76
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    adc b
    ld a, b
    sbc b
    adc c
    adc b
    adc c
    ld a, c
    adc b
    adc b
    adc c
    adc b
    sbc c
    adc c
    adc c
    sbc b
    adc b
    sbc b
    adc c
    adc c
    adc b
    adc c
    add a
    adc c
    adc b
    ld a, b
    add a
    adc b
    add a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    ld h, a
    ld l, b
    ld h, a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    ld [hl], a
    ld h, a
    db $76
    db $76
    ld h, a
    ld h, [hl]
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    sub a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    adc c
    adc b
    adc b
    sbc b
    adc b
    adc c
    adc b
    sbc b
    ld a, b
    sbc c
    adc c
    sbc b
    sbc b
    adc b
    sbc c
    adc b
    adc b
    sub a
    sbc b
    adc b
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    db $76
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld h, a
    ld h, a
    db $76
    db $76
    db $76
    add [hl]
    ld h, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    db $76

Call_009_62b8:
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    add a
    adc b
    adc b
    adc c
    adc b
    adc c
    ld a, b
    sbc b
    adc c
    adc c
    adc b
    adc b
    sbc b
    sbc b
    sbc c
    ld a, c
    adc b
    adc b
    adc c
    adc b
    sbc b
    adc b
    adc b
    sbc b
    adc b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld h, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, [hl]
    db $76
    db $76
    db $76
    ld h, [hl]
    ld [hl], a
    ld d, [hl]
    db $76
    db $76
    db $76
    adc b
    ld h, a
    db $76
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    adc b
    add a
    adc b
    sub a
    adc b
    adc b
    sbc b
    adc c
    adc b
    adc c
    adc b
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
    ld a, c
    adc c
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld h, a
    ld [hl], a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    db $76
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    db $76
    db $76
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    ld h, a
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld l, b
    db $76
    add a
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    db $76
    ld e, b
    adc c
    adc b
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, c
    xor b
    ld [hl], a
    db $76
    sub l
    ld d, [hl]
    ld a, e
    sbc c
    ld h, [hl]
    ld l, b
    xor d
    push bc
    ld h, l
    sbc d
    sbc c
    adc b
    ld [hl], l
    inc h
    ld h, l
    call z, $98ba
    ld h, l
    ld b, b
    dec h
    adc l
    call c, $a97c
    sub a
    add [hl]
    ld b, l
    ld d, c
    ld b, e
    ld b, a
    db $76
    ld [hl], a
    cp l
    db $ed
    call c, $87ca
    ld [hl], a
    add d
    inc [hl]
    ld [bc], a
    adc c
    sbc e
    ld h, [hl]
    and a
    sbc e
    adc c
    cp b
    sbc d
    adc b
    sub [hl]
    add a
    ld [hl], a
    ld h, $a8
    add [hl]
    ld a, c
    ld h, [hl]
    add [hl]
    adc b
    ld h, a
    sbc c
    sbc c
    adc d
    xor c
    ld b, h
    ld d, h
    ld d, l
    adc e
    xor b
    ld e, c
    xor e
    adc b
    adc b
    ld h, l
    ld b, e
    rla
    ld a, b
    sub a
    xor l
    adc d
    and a
    xor d
    adc c
    ld h, [hl]
    ld [hl], a
    or [hl]
    add a
    ld h, a
    ld b, [hl]
    sbc c
    xor c
    cp c
    add a
    ld h, [hl]
    db $76
    db $76
    ld h, h
    dec sp
    adc c
    sub a
    jp z, $895b

    sub [hl]
    ld h, a
    inc b
    ld b, c
    ld d, l
    ld c, e
    jp z, $bbdb

    adc b
    ld [hl], a
    sbc b
    sbc b
    ld [hl], a
    ld [hl], e
    ld h, a
    ld b, a
    ld [hl], h
    sub a
    ld a, c
    adc e
    add a
    jp z, $89b9

    ld d, a
    ld b, b
    ld b, [hl]
    ld a, d
    xor h
    or h
    adc d
    sbc b
    ld [hl], l
    ld a, b
    adc d
    ld a, e
    sub [hl]
    sbc d
    db $76
    ld [hl], $86
    sub [hl]
    jr z, jr_009_6445

    cp e
    xor e
    ld c, c
    sub h
    adc b
    ld c, c
    add [hl]
    add [hl]
    ld [hl], a
    ld a, b
    xor b
    ld h, [hl]
    ld [hl], a
    sbc d
    sbc b
    add a
    ld e, c
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    ld d, a
    inc h
    add e
    xor c
    ld a, e
    ret


    cp c
    xor c
    ld [hl], a
    sbc b
    ld d, l
    ld b, l
    sub [hl]
    ld h, [hl]
    ld l, b
    ld b, [hl]
    and [hl]
    adc c
    adc h
    sub a
    ld a, c
    xor e
    and l
    ld a, b
    ld h, [hl]
    add [hl]
    ld d, a
    ld b, a
    ld [hl], c
    ld a, b
    ld e, d
    ld l, c
    call z, $89ba
    and [hl]
    sub [hl]
    ld d, a
    ld h, l
    sub e
    add hl, de
    add hl, de
    jp $4cac


    jp z, $86a9

    ld a, b
    ld [hl], h
    ld d, h
    db $76
    ld e, b
    db $76
    adc d
    ld a, c
    sub a
    adc e
    adc b
    sub [hl]
    adc b
    ld d, [hl]
    and [hl]
    sub a
    ld a, l
    ld h, l
    ld d, l
    ld d, l
    ld [hl], a
    rst $00
    cp d
    ld l, h
    sub [hl]
    ld a, d
    ld a, c
    ld [de], a
    sub h
    adc c
    ld b, a
    cp d
    cp e

jr_009_6445:
    xor d
    ld [hl], a
    add a
    add l
    ld d, a
    daa
    sub d
    sbc c
    scf
    adc d
    cp h
    ld l, c
    sbc c
    ld h, [hl]
    dec [hl]
    cp c
    ld h, [hl]
    sbc b
    adc b
    ld [hl], l
    sbc d
    ld a, b
    add l
    add e
    ld e, e
    add l
    sub [hl]
    cp l
    ld d, [hl]
    sbc d
    sbc d
    ld l, c
    sub h
    sbc b
    ld a, b
    ld h, [hl]
    jr c, jr_009_64e1

    ld a, [hl-]
    sbc b
    sbc c
    add l
    and l
    jp z, Jump_009_565a

    jp z, $958a

    add a
    ld b, [hl]
    ld d, d
    ld e, b
    xor d
    ld h, [hl]
    sub a
    cp c
    ld a, c
    ld c, b
    ld b, a
    and l
    add hl, sp
    and a
    cp b
    ld [hl], a
    add hl, sp
    ld h, [hl]
    ld d, a
    add [hl]
    and a
    ld l, h
    ret


    ld l, b
    db $76
    adc b
    sbc d
    sbc b
    ld h, a
    or [hl]
    adc b
    adc b
    ld h, a
    ld [hl], d
    ld e, c
    ld e, c
    sbc b
    sub a
    xor c
    ld l, b
    add l
    adc c
    ld [hl], l
    add hl, sp
    or a
    and a
    ld c, b
    xor b
    ld [hl], e
    sub a
    ld l, b
    xor c
    ld h, [hl]
    ld l, c
    sbc c
    ld h, e
    or a
    ld a, b
    add [hl]
    add a
    sbc h
    sub [hl]
    ld a, d
    ld a, c
    ld h, l
    ld d, [hl]
    add [hl]
    ld l, c
    db $76
    sbc c
    sbc b
    ld a, d
    ld h, a
    and [hl]
    ld l, e
    add [hl]
    ld l, b
    add [hl]
    db $76
    ld a, d
    ld e, d
    ld h, l
    sub a
    dec sp
    sub [hl]
    adc d
    sbc b
    ld [hl], a
    and a
    ld a, c
    ld d, [hl]
    adc b
    ld [hl], h
    adc b
    ld e, c
    sub l
    xor c
    ld l, c
    ld h, a
    ld l, c
    ld h, a
    sbc b
    sub a
    sub [hl]
    sbc b
    ld e, c
    xor b

jr_009_64e1:
    add h
    sbc c
    ld l, c
    adc b
    adc b
    ld h, [hl]
    ld a, d
    sbc b
    add a
    add a
    ld c, b
    sub c
    ld l, d
    ld e, b
    adc c
    or [hl]
    ret


    ld a, c
    db $76
    ld l, d
    ld h, h
    sub l
    and [hl]
    sbc c
    ld d, [hl]
    add [hl]
    sub a
    ld h, a
    ld l, c
    xor b
    adc b
    db $76
    adc b
    ld a, c
    ld b, l
    ld [hl], a
    ld a, b
    db $76
    ld a, c
    ld l, b
    or [hl]
    ld [hl], a
    xor e
    adc c
    ld h, [hl]
    add a
    or l
    and [hl]
    ld b, l
    adc d
    ld l, c
    and [hl]
    ld l, b
    adc c
    ld l, c
    ld [hl], a
    sbc c
    add [hl]
    ld e, e
    ld d, a
    or [hl]
    ld e, b
    sub [hl]
    ld d, a
    ld a, b
    ld a, b
    sub h
    adc c
    ld h, a
    adc c
    ld l, b
    sub l
    ld l, c
    add a
    ld e, e
    ld e, c
    adc b
    adc b
    xor b
    ld e, c
    and e
    adc b
    sub h
    ld l, d
    ld b, a
    sub [hl]
    adc b
    or l
    ld a, b
    xor c
    ld l, b
    ld l, c
    sbc c
    ld e, b
    ld l, c
    xor b
    ld d, [hl]
    sub [hl]
    ld e, e
    add a
    sub l

jr_009_6546:
    sbc d
    sbc c
    ld h, l
    sub [hl]
    ld [hl], a
    add a
    ld h, l
    and a
    ld l, d
    ld h, a
    ld l, c
    ld a, b
    ld a, b
    db $76
    sbc b
    ld d, a
    and l
    adc d
    ld h, l
    ld a, d
    ld d, e
    add $8a
    and a
    and [hl]
    and a
    sbc d
    ld h, [hl]
    ld e, c
    ld b, [hl]
    sub a
    adc b
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    xor b
    adc c
    add [hl]
    add [hl]
    db $76
    ld [hl], a
    or [hl]
    ld h, [hl]
    sbc b
    ld a, d
    ld d, a
    xor d
    ld c, c
    add a
    ld a, c
    adc b
    ld d, [hl]
    and a
    db $76
    ld [hl], h
    sub a
    add h
    ld [hl], a
    ld l, b
    adc c
    sbc c
    adc b
    ld e, c
    and [hl]
    ld e, c
    ld [hl], l
    ld d, a
    ld h, a
    sbc c
    ld a, b
    cp b
    ld e, d
    and a
    ld e, b
    sub l
    ld a, b
    ld [hl], e
    and [hl]
    ld d, a
    cp b
    ld e, b
    ld a, c
    ld e, h
    sub a
    ld l, h
    db $76
    or a
    ld [hl], l
    sub a
    ld a, c
    ld [hl], a
    ld l, c
    sub l
    sbc c
    ld [hl], e
    ld l, b
    xor b
    adc c
    sbc e
    add a
    ld a, b
    ld a, b
    jr z, jr_009_6546

    ld b, l
    adc d
    sub [hl]
    sbc b
    sub a
    sub [hl]
    sbc c
    sub e
    ld l, c
    adc b
    ld a, b
    ld e, c
    ld h, a
    ld [hl], a
    add l
    ld a, e
    add [hl]
    adc b
    ld a, c
    add a
    ld a, d
    ld h, [hl]
    add a
    add [hl]
    sub a
    ld e, b
    ld l, b
    sub a
    sub a
    adc d
    sub l
    adc d
    ld e, b
    adc c
    ld h, a
    ld h, a
    ld l, d
    ld [hl], l
    adc d
    ld h, [hl]
    adc c
    ld h, a
    or l
    ld [hl], a
    and l
    ld a, d
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    ld l, b
    adc c
    ld c, c
    and [hl]
    ld l, b
    ld a, b
    ld a, c
    ld [hl], a
    sub a
    add a
    ld h, [hl]
    add a
    sub a
    ld d, a
    or [hl]
    adc c
    ld e, b
    ld a, b
    ld l, c
    ld a, d
    ld [hl], a
    adc d
    ld d, a
    sub a
    ld h, [hl]
    xor b
    sub a
    add [hl]
    sub a
    ld a, b
    ld a, c
    add [hl]
    sub a
    ld l, b
    and h
    sbc b
    ld a, c
    ld c, c
    adc b
    ld c, c
    ld a, b
    ld e, b
    ld a, b
    sbc b
    ld [hl], a
    xor b
    ld a, b
    sub a
    db $76
    or l
    ld [hl], a
    ld h, l
    ld a, b
    ld h, l
    sbc c
    and a
    ld [hl], a
    ld a, h
    add a
    ld e, d
    ld [hl], a
    ld a, b
    ld e, d
    ld h, [hl]
    ld l, b
    sub [hl]
    ld h, a
    and [hl]
    adc b
    ld [hl], l
    and a
    adc c
    adc b
    ld a, c
    sbc b
    ld h, a
    ld a, b
    ld l, c
    ld d, a
    ld a, b
    add a
    sbc d
    sub [hl]
    add a
    and l
    ld h, [hl]
    sub [hl]
    sub a
    db $76
    sub h
    adc b
    xor c
    ld e, b
    sbc c
    ld h, [hl]
    adc d
    adc c
    ld l, b
    adc b
    ld h, l
    adc b
    sub l
    ld a, b
    add a
    sub [hl]
    sbc c
    ld h, a
    adc c
    sub l
    sub [hl]
    ld a, b
    db $76
    ld a, d
    ld l, b
    ld a, b
    add [hl]

Call_009_6655:
    ld l, c
    ld e, d
    add a
    xor b
    sbc b
    add a
    add h
    add a
    and l
    sub a
    ld l, b
    ld a, b
    sub a
    ld h, l
    xor b
    add [hl]
    ld a, d
    ld l, c
    db $76
    sub a
    adc c
    ld e, d
    ld h, [hl]
    sub a
    ld a, c
    sub a
    add l
    ld a, b
    adc b
    sub h
    or a
    ld a, b
    ld h, a
    add a
    sub [hl]
    ld l, c
    ld l, c
    ld a, d
    ld a, b
    ld a, b
    sub a
    ld [hl], a
    ld a, c
    ld h, [hl]
    ld [hl], a
    sub l
    ld l, b
    and [hl]
    db $76
    cp b
    add a
    sbc b
    ld l, b
    ld d, [hl]
    and a
    ld e, c
    ld a, d
    ld d, [hl]
    sbc c
    adc b
    and [hl]
    adc c
    ld l, c
    ld a, b
    ld [hl], e
    and a
    ld c, c
    adc c
    add l
    ld a, c
    sub a
    sub [hl]
    ld e, e
    ld h, [hl]
    sbc b
    adc b
    add a
    ld a, c
    ld e, c
    db $76
    sub a
    sbc c
    ld h, a
    ld a, b
    sbc b
    add a
    adc b
    ld [hl], a
    db $76
    ld a, c
    add a
    db $76
    ld e, e
    ld l, c
    ld l, b
    ld [hl], a
    ld a, b
    adc e
    ld e, c
    ld [hl], a
    adc b
    ld h, a
    add a
    adc b
    db $76
    sub e
    cp b
    adc c
    add a
    ld a, c
    sub a
    ld h, [hl]
    adc c
    ld e, e
    ld b, a
    adc d
    add l
    sbc b
    ld l, c
    db $76
    and [hl]
    add a
    add a
    add a
    ld a, b
    sub l
    adc b
    ld e, c
    ld [hl], a
    adc d
    ld d, l
    add l
    sbc d
    ld c, b
    ld a, d
    db $76
    adc b
    sub [hl]
    add a
    ld c, b
    sub [hl]
    add [hl]
    add l
    ld a, c
    db $76
    sbc b
    ld a, c
    add [hl]
    ld l, e
    ld l, d
    db $76
    or [hl]
    ld a, c
    ld h, a
    and a
    adc c
    sub l
    sbc b
    ld [hl], a
    adc b
    add a
    sub l
    or a
    adc b
    ld h, a
    adc b
    ld e, b
    add a
    ld a, d
    ld e, d
    db $76
    adc c
    ld [hl], a
    and l
    ld l, d
    ld d, a
    sub a
    add a
    ld a, c
    sub a
    ld l, c
    db $76
    add $4c
    ld d, a
    sub a
    ld a, b
    scf
    adc b
    ld a, c
    ld e, b
    and [hl]
    ld h, [hl]
    or [hl]
    ld e, c
    db $76
    and l
    adc b
    adc b
    ld a, b
    adc c
    ld h, l
    or a
    ld a, e
    ld [hl], a
    adc c
    ld [hl], a
    sub a
    ld h, a
    ld a, c
    ld h, [hl]
    sbc b
    db $76
    or [hl]
    ld l, e
    ld h, h
    ret z

    ld h, a
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    ld e, d
    ld [hl], a
    ld l, e
    add [hl]
    and l
    ld l, e
    add l
    sbc c
    ld [hl], l
    add [hl]
    sbc b
    ld l, c
    ld h, [hl]
    sub [hl]
    ld a, c
    and l
    ld a, e
    ld l, b
    sub l
    ld a, c
    ld a, b
    ld [hl], a
    ld l, d
    ld h, a
    add [hl]
    sbc d
    ld c, b
    sub a
    ret


    sub h
    sbc c
    ld e, c
    adc b
    ld h, a
    and a
    db $76
    ld l, d
    adc b
    add a
    adc c
    add l
    adc d
    ld c, e
    ld [hl], h
    and [hl]
    ld l, c
    ld [hl], a
    adc c
    ld [hl], a
    add [hl]
    sub [hl]
    ld a, d
    ld h, [hl]
    sbc c
    ld [hl], a
    sub a
    ld e, d
    add a
    ld a, c
    add [hl]
    ld [hl], a
    ld l, b
    adc b
    ld [hl], l
    add a
    db $76
    and a
    ld e, e
    db $76
    and a
    ld l, c
    adc c
    ld e, c
    ld a, b
    add h
    and a
    ld e, d
    ld h, l
    adc c
    ld [hl], h
    cp b
    ld e, c
    sub a
    ld a, c
    adc b
    add [hl]
    sub a
    ld e, e
    ld h, l
    sbc c
    add [hl]
    and [hl]
    sbc d
    ld e, b
    sub [hl]
    adc d
    ld e, b
    ld [hl], a
    adc b
    sub [hl]
    sub a
    ld a, c
    add [hl]
    ld a, c
    add l
    sub h
    ld a, c
    add a
    and [hl]
    adc c
    db $76
    and a
    ld a, c
    ld l, b
    adc b
    adc b
    db $76
    adc b
    ld e, c
    sub h
    ld a, b
    sub [hl]
    adc c
    ld l, b
    add a
    db $76
    adc c
    ld h, a
    sbc b
    ld l, b
    sub l
    adc c
    ld h, a
    sbc b
    ld l, c
    add [hl]
    and [hl]
    ld l, d
    ld d, a
    and a
    cp b
    add [hl]
    and a
    ld l, b
    db $76
    sub a
    add [hl]
    adc b
    ld a, d
    adc b
    add [hl]
    ld a, c
    ld a, b
    ld l, b
    ld c, d
    sub e
    ld [hl], a
    ld c, c
    sub [hl]
    sub a
    ld [hl], a
    sub [hl]
    and a
    ld a, c
    ld h, [hl]
    adc b
    sub [hl]
    add a
    ld a, c
    db $76
    ld l, b
    ld a, c
    ld h, [hl]
    add [hl]
    ld l, d
    ld h, a
    and a
    add a
    adc b
    ld h, a
    sub l
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, d
    ld d, l
    and [hl]
    ld l, d
    ld a, b
    add a
    adc b
    db $76
    ld a, c
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    add a
    sub [hl]
    add [hl]
    sub [hl]
    ld a, b
    sub a
    ld a, c
    ld a, b
    ld l, b
    ld [hl], a
    adc d
    ld d, a
    and [hl]
    ld a, b
    sub [hl]
    adc b
    ld a, b
    adc c
    ld h, [hl]
    sub [hl]
    sbc b
    ld a, b
    add [hl]
    sub [hl]
    adc d
    ld h, a
    ld a, d
    ld l, c
    db $76
    adc c
    add a
    add a
    ld l, b
    add [hl]
    add h
    and [hl]
    ld a, c
    add [hl]
    xor b
    ld a, b
    sub a
    ld a, b
    db $76
    adc c
    db $76
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    sbc b
    ld e, b
    add a
    ld c, e
    ld h, [hl]
    add a
    ld l, c
    adc b
    sub a
    adc c
    ld l, b
    sbc b
    ld e, c
    ld [hl], a
    adc b
    ld h, l
    sbc b
    sbc b
    ld h, a
    sub [hl]
    add a
    db $76
    adc b
    ld e, b
    sbc b
    add a
    sub a
    adc b
    add a
    ld d, a
    sbc b
    ld a, c
    ld l, c
    add a
    ld a, b
    ld h, l
    and a
    sbc c
    db $76
    sbc c
    add a
    adc b
    ld h, a
    ld a, c
    ld [hl], a
    ld [hl], a
    adc b
    sub [hl]
    ld l, d
    add l
    sbc b
    ld a, c
    db $76
    adc b
    add [hl]
    ld [hl], a
    sub a
    adc b
    ld l, c
    ld l, b
    ld a, b
    sub l
    ld a, d
    ld [hl], a
    add a
    ld a, b
    ld [hl], h
    sbc d
    db $76
    ld l, b
    and a
    ld [hl], a
    sub a
    adc b
    ld e, b
    sub [hl]
    ld a, c
    add a
    ld l, b
    add a
    sub [hl]
    adc c
    add [hl]
    ld l, d
    ld [hl], a
    adc b
    add a
    add [hl]
    ld a, b
    sub a
    ld [hl], a
    add [hl]
    adc d
    ld [hl], a
    add [hl]
    adc b
    ld h, a
    ld [hl], a
    adc b
    ld e, d
    add a
    add [hl]
    ld a, c
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], l
    ld [hl], a
    adc c
    db $76
    ld a, b
    add a
    ld a, b
    adc b
    ld h, a
    sub a
    sub [hl]
    ld a, c
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld [hl], a
    adc b
    adc b
    add [hl]
    ld a, c
    ld a, b
    ld [hl], a
    db $76
    adc b
    sub a
    ld [hl], a
    ld a, b
    sub a
    ld l, c
    ld [hl], a

Call_009_68b6:
    adc c
    ld a, b
    ld [hl], a
    sbc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, b
    add a
    sub [hl]
    add a
    sub a
    ld a, b
    ld l, c
    ld h, [hl]
    sbc b
    ld h, [hl]
    ld l, b
    sub a
    db $76
    ld a, d
    sub [hl]
    ld a, c
    ld a, b
    sub a
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld l, b
    sub a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, c
    add a
    ld e, b
    adc b
    ld a, b
    ld h, a
    adc b
    add [hl]
    adc b
    add a
    sub a
    ld a, c
    ld [hl], a
    sbc b
    adc b
    db $76
    sub [hl]
    ld l, b
    add a
    ld [hl], a
    sbc c
    db $76
    adc b
    adc c
    ld h, a
    ld a, c
    ld a, b
    ld [hl], a
    ld h, a
    sub a
    ld [hl], a
    add a
    sub a
    adc b
    ld l, b
    add l
    adc c
    ld [hl], a
    ld [hl], a
    sub a
    ld a, b
    add l
    adc b
    ld a, b
    adc b
    ld l, c
    sub a
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    adc c
    ld [hl], l
    and a
    ld l, d
    ld [hl], a
    add a
    ld a, c
    ld a, b
    db $76
    adc b
    ld [hl], a
    ld [hl], a
    add a
    sub a
    ld e, b
    adc b
    ld a, b
    adc b
    add a
    add a
    adc c
    ld [hl], l
    ld a, c
    ld h, [hl]
    sub [hl]
    ld l, d
    ld [hl], a
    add a
    ld a, b
    ld a, c
    sub [hl]
    adc c
    db $76
    sbc b
    ld a, c
    ld a, b
    ld d, a
    and a
    ld e, b
    add a
    sbc b
    ld [hl], a
    adc c
    add [hl]
    adc c
    ld e, b
    sub l
    adc c
    ld l, b
    ld h, a
    sub [hl]
    ld l, b
    add a
    ld a, b
    ld a, c
    add l
    adc c
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, c
    ld l, b
    adc b
    add a
    add a
    sub a
    ld a, b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    db $76
    sbc b
    ld [hl], a
    ld a, c
    ld h, a
    ld a, b
    ld [hl], a
    ld h, a
    adc b
    add [hl]
    ld a, b
    add a
    ld [hl], a
    add [hl]
    ld a, b
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    add a
    ld a, c
    ld a, b
    ld h, [hl]
    xor b
    ld a, b
    db $76
    add a
    adc b
    adc b
    ld e, b
    adc b
    ld [hl], a
    add a
    adc b
    ld a, c
    add a
    ld a, b
    sbc b
    sub a
    add a
    ld a, c
    ld h, a
    sub [hl]
    adc c
    ld [hl], a
    add a
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    add a
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    adc b
    add a
    adc b
    ld e, b
    sub [hl]
    add a
    ld a, b
    ld [hl], a
    add [hl]
    ld a, b
    db $76
    xor b
    ld a, b
    adc b
    adc b
    ld a, b
    add [hl]
    ld a, b
    add a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    add a
    sbc b
    add a
    ld a, b
    add a
    sbc c
    ld a, b
    adc b
    ld l, c
    ld h, l
    adc b
    add a
    add a
    and [hl]
    adc c
    add [hl]
    sbc b
    ld e, c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, c
    ld l, b
    adc b
    ld [hl], l
    sbc c
    ld h, [hl]
    sub [hl]
    adc c
    ld [hl], a
    ld [hl], a
    sub a
    ld e, c
    sub l
    sbc c
    ld l, b
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    adc b
    sub [hl]
    sub [hl]
    adc c
    sub [hl]
    sub a
    ld a, b
    ld e, c
    add a
    ld a, b
    ld l, b
    sbc b
    ld a, c
    ld [hl], a
    ld l, b
    adc b
    add [hl]
    sub a
    add a
    add [hl]
    sub [hl]
    add a
    add [hl]
    ld a, b
    add a
    adc c
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld l, b
    adc b
    ld l, c
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    add a
    sub a
    adc c
    ld [hl], a
    add a
    add a
    ld h, a
    ld a, b
    add a
    ld l, c
    adc c
    ld l, b
    ld a, c
    ld a, b
    ld a, b
    add a
    add [hl]
    adc b
    db $76
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    add [hl]
    and a
    ld a, b
    ld a, b
    adc b
    ld l, b
    adc b
    adc b
    add a
    add a
    add a
    add a
    add [hl]
    adc c
    ld a, b
    add a
    add a
    add a
    ld l, c
    ld h, a
    adc b
    ld a, b
    ld l, b
    ld a, b
    adc c
    ld h, a
    add a
    add a
    add a
    adc b
    ld h, a
    sub a
    ld l, b
    adc b
    add [hl]
    ld [hl], a
    ld a, b
    add a
    ld a, c
    add a
    add a
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, c
    ld a, b
    adc b
    ld a, b
    adc b
    db $76
    sbc b
    ld h, a
    sub a
    ld a, b
    ld a, b
    adc b
    db $76
    ld a, b
    add a
    add a
    sub a
    ld a, c
    ld l, b
    add [hl]
    adc b
    add a
    ld [hl], a
    ld h, a
    adc b
    add a
    ld a, b
    ld a, c
    add a
    ld a, c
    add a
    adc b
    add a
    add a
    adc b
    ld e, b
    add a
    add a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld [hl], a
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, c
    add a
    add a
    ld e, c
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld h, a
    sbc b
    sbc b
    ld l, b
    sub a
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    ld l, b
    ld [hl], a
    sub a
    ld [hl], a
    adc c
    ld a, b
    adc c
    ld l, b
    ld [hl], a
    sub [hl]
    ld h, a
    ld a, b
    add a
    ld a, c
    ld [hl], a
    add [hl]
    sub a
    ld l, b
    add a
    ld a, b
    ld l, c
    ld a, b
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld l, b
    add a
    ld a, b
    adc b
    sub [hl]
    ld [hl], a
    ld l, c
    ld l, b
    sub a
    ld [hl], a
    sub a
    add a
    ld [hl], a
    adc b
    ld l, b
    ld a, c
    add [hl]
    sub [hl]
    sub [hl]
    ld [hl], a
    sbc b
    add [hl]
    adc d
    ld h, a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    add a
    ld a, c
    add a
    ld a, b
    db $76
    sub a
    ld h, a
    sub [hl]
    add a
    add a
    adc b
    ld a, b
    ld l, b
    ld l, b
    ld a, b
    add a
    add a
    add a
    adc c
    ld [hl], a
    add a
    adc b
    add h
    sub a
    add a
    add a
    sub [hl]
    sbc c
    ld [hl], a
    add [hl]
    adc c
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    ld l, b
    ld a, b
    ld a, b
    ld l, b
    ld [hl], a
    sbc b
    ld a, b
    add a
    sbc b
    adc b
    ld a, b
    adc b
    ld a, b
    ld l, b
    add a
    ld l, b
    ld [hl], a
    ld [hl], a
    sub a
    adc c
    ld l, c
    ld a, b
    add a
    sbc b
    ld l, b
    adc b
    add a
    ld l, b
    add [hl]
    sub [hl]
    ld a, d
    ld h, a
    add a
    sub a
    ld l, c
    add a
    adc b
    ld l, c
    add a
    adc c
    ld a, b
    ld h, a
    and [hl]
    sub a
    ld l, b
    ld a, b
    adc b
    adc b
    add a
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld l, b
    ld [hl], a
    ld a, c
    ld a, b
    ld a, b
    sbc b
    ld [hl], a
    ld a, b
    add [hl]
    ld [hl], l
    ld a, c
    ld a, b
    add [hl]
    adc b
    ld a, c
    add a
    add a
    ld a, d
    ld h, a
    add [hl]
    adc b
    ld a, b
    ld h, a
    add a
    adc b
    ld h, [hl]
    add a
    adc b
    ld [hl], a
    sub [hl]
    sbc b
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    adc b
    ld l, c
    ld h, a
    adc c
    ld l, b
    ld [hl], a
    add [hl]
    ld a, b
    sub a
    add a
    sbc b
    sub a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    ld l, c
    add a
    ld l, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    adc b
    sub [hl]
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    ld l, c
    ld [hl], a
    sub a
    ld l, b
    add a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    add [hl]
    ld a, b
    sbc b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    add a
    add a
    ld a, b
    adc b
    ld a, b
    db $76
    sbc b
    add a
    adc b
    add a
    ld a, b
    ld l, c
    ld h, a
    add a
    adc b
    ld a, c
    db $76
    sub a
    adc c
    add [hl]
    add a
    sub [hl]
    adc c
    add [hl]
    adc c
    ld e, c
    ld [hl], a
    adc b
    add a
    ld l, b
    add [hl]
    adc b
    ld l, c
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    ld h, a
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    add a
    add a
    adc b
    ld [hl], a
    add a
    ld h, a
    adc b
    ld a, b
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
    ld [hl], a
    adc b
    adc b
    add [hl]
    ld a, c
    adc b
    add a
    ld a, b
    add a
    sub l
    ld a, b
    ld a, c
    ld l, b
    add a
    add a
    ld a, b
    sub a
    ld [hl], a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add [hl]
    adc b
    db $76
    sub [hl]
    sub a
    adc b
    add a
    ld [hl], a
    ld a, c
    add [hl]
    adc b
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld h, a
    add [hl]
    sub [hl]
    add a
    add a
    ld a, c
    adc b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    add a
    sbc b
    ld l, c
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    db $76
    add a
    ld a, c
    ld a, b
    add a
    ld a, b
    add a
    add [hl]
    sub a
    ld a, b
    add a
    adc b
    add a
    add a
    add [hl]
    adc c
    ld l, b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    sub l
    sub a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    add a
    sbc b
    ld e, c
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld h, a
    add a
    ld l, b
    add a
    sub a
    add a
    adc b
    sub [hl]
    ld a, b
    ld l, b
    add a
    ld a, b
    add [hl]
    add a
    adc b
    ld a, d
    ld l, b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    ld [hl], a
    sub a
    ld l, c
    db $76
    add a
    ld a, b
    ld l, c
    ld a, b
    add a
    ld a, b
    ld a, b
    sub a
    add a
    ld a, c
    ld h, a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    sub a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    sbc c
    add a
    adc b
    add [hl]
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, c
    add a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld l, b
    ld l, b
    ld a, b
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    add a
    sub a
    add a
    ld h, a
    add a
    sub a
    ld l, b
    ld a, b
    sub a
    ld a, c
    ld l, b
    sbc b
    add [hl]
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    add a
    ld a, c
    sub a
    sub a
    adc c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add a
    ld l, c
    ld l, b
    db $76
    add a
    sub a
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    adc b
    ld a, b
    sub a
    ld a, b
    ld h, a
    adc b
    ld a, b
    add a
    add a
    sub [hl]
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    adc b
    ld h, a
    add a
    adc b
    ld l, b
    add a
    add a
    ld a, b
    ld [hl], a
    sub a
    adc b
    add a
    add a
    sub [hl]
    add a
    ld h, a
    sub a
    add a
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
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    adc b
    add a
    add a
    adc c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    sbc b
    adc b
    add a
    adc b
    adc b
    add a
    adc b
    ld a, c
    db $76
    add a
    ld a, b
    ld l, b
    add a
    adc b
    ld l, c
    ld [hl], a
    add a
    ld a, b
    add a
    add a
    ld a, c
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sub [hl]
    sub a
    ld a, c
    ld a, b
    ld a, b
    ld a, c
    ld [hl], a
    ld h, a
    ld a, b
    ld a, b
    db $76
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    sbc b
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    add a
    sbc b
    adc c
    ld l, b
    sub a
    ld [hl], a
    ld a, c
    add a
    sub [hl]
    ld l, c
    ld [hl], a
    add a
    ld a, b
    ld a, b
    add l
    sbc b
    ld l, c
    add a
    ld a, b
    ld h, a
    adc b
    add [hl]
    adc b
    ld h, a
    sub a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    db $76
    adc c
    ld l, c
    ld h, a
    add a
    adc b
    ld a, b
    sub a
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld h, a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    add a
    ld a, c
    ld a, b
    db $76
    sub a
    ld l, c
    add a
    add a
    ld a, c
    ld [hl], a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    sub a
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
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
    adc b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    sub a
    sbc c
    ld h, a
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld a, b
    sbc b
    db $76
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add a
    sub a
    add a
    add a
    ld a, b
    db $76
    sub a
    ld a, b
    ld [hl], a
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld a, c
    ld a, b
    add a
    adc b
    adc b
    add [hl]
    add a
    add a
    add a
    add [hl]
    add a
    ld a, c
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    adc c
    db $76
    sub [hl]
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    add a
    adc b
    sbc c
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add [hl]
    add a
    ld a, c
    ld a, c
    ld [hl], a
    adc b
    ld a, b
    add a
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    sub a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    add a
    add a
    ld l, c
    add a
    ld l, c
    ld a, b
    add a
    adc b
    adc b
    ld a, b
    adc b
    ld l, b
    adc b
    ld l, c
    ld [hl], l
    ld a, c
    ld a, b
    sub a
    ld a, b
    adc b
    ld [hl], a
    sbc b
    ld a, b
    ld [hl], a
    adc b
    ld h, a
    adc b
    add a
    ld a, b
    ld l, c
    add a
    adc b
    ld a, b
    add [hl]
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    sbc b
    add a
    add a
    adc c
    ld e, c
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld a, c
    ld h, a
    sub a
    adc b
    ld a, b
    db $76
    add a
    ld a, b
    db $76
    sub a
    ld a, c
    ld a, b
    add a
    adc c
    ld [hl], a
    add [hl]
    adc c
    ld [hl], a
    add a
    ld a, b
    ld h, a
    add a
    ld a, b
    add a
    add a
    adc b
    adc b
    sub a
    ld a, b
    adc b
    ld [hl], a
    add a
    ld a, c
    ld a, b
    db $76
    adc b
    adc b
    add [hl]
    ld a, b
    adc c
    ld [hl], a
    add a
    ld [hl], a
    sub l
    sub a
    ld l, c
    sub a
    adc b
    ld a, b
    ld [hl], a
    sub a
    adc b
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld h, a
    add a
    add a
    sbc b
    ld a, b
    sbc b
    add a
    ld a, b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    add a
    ld l, b
    ld a, b
    ld a, b
    ld a, c
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld a, b
    ld a, c
    add [hl]
    adc b
    ld a, b
    ld l, b
    sub a
    ld a, c
    ld a, c
    add a
    ld a, c
    ld l, b
    add a
    sub a
    ld a, b
    adc b
    add a
    ld a, b
    add a
    add a
    add a
    add [hl]
    add a
    ld [hl], a
    adc b
    add a
    ld a, b
    ld a, b
    ld l, b
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
    adc c
    ld [hl], a
    add a
    ld a, b
    ld a, c
    db $76
    adc b
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld a, b
    ld [hl], a
    add a
    sub [hl]
    adc c
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    ld l, c
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld l, b
    ld a, b
    add a
    ld l, c
    db $76
    sbc b
    sub a
    add a
    adc b
    sub a
    ld a, b
    sub [hl]
    add a
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    db $76
    sub a
    ld l, c
    ld a, b
    add a
    ld a, c
    ld [hl], a
    sub [hl]
    ld a, b
    ld h, [hl]
    add a
    ld l, b
    add a
    add a
    add a
    add a
    add a
    adc c
    ld l, b
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    add [hl]
    sbc b
    ld [hl], a
    add [hl]
    ld a, b
    ld l, c
    adc b
    ld a, c
    ld l, c
    add a
    add a

jr_009_6f21:
    ld a, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc b
    add a
    add a
    adc c
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, c
    ld e, b
    add a
    ld a, b
    ld a, b
    add a
    sub a
    add a
    add a
    add a
    add a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    add [hl]
    sub a
    ld a, b
    adc b
    add a
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    adc b
    adc b
    ld l, b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    add [hl]
    ld h, l
    ld a, d
    ld a, d
    ld a, [hl]
    ld e, d
    ld c, h
    db $76
    ld [hl], h
    call nc, Call_009_7b82
    add a
    sbc e
    add [hl]
    ld h, l
    cp c
    ld [hl], h
    xor c
    inc [hl]
    or a
    adc b
    adc b
    sub a
    dec sp
    adc d
    ld [$6bb8], sp
    add a
    ld h, a
    ld b, l
    add e
    ld c, h
    add [hl]
    ld a, h
    sub a
    add [hl]
    ld d, a
    add [hl]
    ld e, h
    add a
    xor d
    adc b
    adc b
    ld [hl], l
    add d
    and a
    sub [hl]
    xor d
    ld l, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    jr c, jr_009_6f21

    ld l, e
    ld a, c
    ld e, c
    ld a, c
    ld [hl], a
    add a
    add e
    db $76
    adc b
    sbc b
    sub [hl]
    ld [hl], a
    sbc b
    adc b
    sub l
    sub h
    add l
    sbc b
    sub [hl]
    adc b
    ld e, e
    ld a, c
    adc d
    or [hl]
    ld [hl], h
    ld l, b
    db $76
    adc b
    ld e, b
    ld a, c
    xor e
    xor c
    add a
    ld b, l
    sbc b
    jr c, jr_009_7036

    ld c, c
    ld a, d
    cp c
    sub a
    sbc b
    ld d, a
    add a
    ld a, b
    ld h, [hl]
    ld a, b
    ld l, b
    sub a
    ld l, c
    adc c
    ld h, a
    add a
    ld a, b
    ld h, [hl]
    and [hl]
    and a
    sbc c
    ld a, d
    ld l, b
    ld l, b
    ld d, [hl]
    add [hl]
    add l
    sub [hl]
    and a
    and [hl]
    adc c
    ld l, c
    adc d
    ld l, b
    ld d, h
    sub [hl]
    sub l
    sub a
    ld h, [hl]
    and a
    ld l, b
    and [hl]
    sub a
    sub a
    sub a
    ld a, d
    sub a
    ld l, c
    db $76
    ld l, c
    ld [hl], a
    sub a
    ld e, d
    ld h, a
    ld l, e
    ld l, c
    ld a, d
    ld a, [hl-]
    ld [hl], a
    ld l, e
    add l
    ld a, d
    ld c, c
    sbc b
    adc d
    add h
    and a
    add [hl]
    and a
    ld e, c
    sub [hl]
    ld e, e
    sub l
    xor c
    ld e, b
    add l
    ld l, d
    sub h
    sbc c
    ld h, l
    ld a, d
    ld a, c
    ld h, l
    sbc d
    ld [hl], h
    sbc c
    ld h, a
    db $76
    ld a, c
    ld [hl], l
    xor c
    sub l
    and a
    ld [hl], a
    and l
    adc c
    ld d, a
    adc b
    ld l, b
    and l
    and [hl]
    sub [hl]
    add [hl]
    ld a, b
    ld l, b
    dec sp
    ld l, b
    ld a, d
    ld a, c
    add a
    ld e, e
    ld e, b
    ld a, d
    ld l, c
    sub a
    ld [hl], a
    add a
    xor c
    ld l, b
    ld a, b

jr_009_7036:
    ld e, d
    sub a
    ld a, c
    ld b, [hl]
    add l
    xor b
    xor b
    ld a, d
    ld [hl], l
    add a
    db $76
    add l
    add a
    add l
    xor d
    ld a, b
    ld l, b
    ld l, b
    add l
    or [hl]
    add [hl]
    sbc b
    add [hl]
    adc b
    ld e, c
    ld e, b
    adc b
    ld h, a
    sub a
    add a
    adc b
    adc b
    adc b
    adc b
    ld [hl], a
    sub [hl]
    ld a, b
    ld [hl], l
    ld a, b
    sub a
    ld h, a
    ld a, b
    adc d
    ld a, b
    and [hl]
    ld [hl], a
    db $76
    adc d
    ld h, a
    ld a, c
    ld e, c
    ld l, b
    ld e, d
    add h
    adc d
    ld h, [hl]
    xor b
    ld l, d
    ld [hl], $98
    add [hl]
    xor b
    ld d, a
    or a
    ld e, c
    ld h, l
    adc b
    ld d, [hl]
    sub $68
    and l
    xor b
    sbc b
    adc b
    adc c
    and l
    ld e, h
    add l
    ld a, b
    ld e, b
    add a
    inc a
    ld h, l
    ld a, c
    sub [hl]
    cp b
    adc b
    and l
    ld a, e
    ld d, [hl]
    ld e, d
    ld b, a
    and e
    and a
    and d
    sbc b
    ld h, [hl]
    sbc b
    ld c, d
    add a
    ld a, d
    add [hl]
    cp b
    ld c, d
    add a
    adc c
    ld l, c
    ld l, c
    ld h, l
    add a
    ld [hl], a
    add a
    ld l, c
    ld h, a
    ld a, c
    ld l, d
    ld a, b
    ld a, c
    ld a, b
    and a
    sbc b
    ld a, b
    db $76
    sub [hl]
    add a
    ld l, b
    db $76
    ld l, b
    adc c
    sbc b
    adc b
    ld [hl], a
    sbc b
    sub a
    sub [hl]
    db $76
    ld a, b
    ld e, d
    sub a
    ld a, b
    ld e, b
    and [hl]
    sbc c
    add a
    add a
    ld a, b
    ld a, c
    ld a, c
    db $76
    sub [hl]
    sub [hl]
    adc b
    add a
    ld [hl], a
    ld e, b
    ld e, c
    ld [hl], a
    db $76
    add [hl]
    and h
    and a
    sub a
    ld a, c
    ld a, b
    ld l, c
    ld a, b
    adc b
    ld a, c
    db $76
    adc c
    adc c
    ld l, b
    ld l, b
    ld c, b
    ld l, c
    add l
    sbc c
    ld l, c
    adc c
    ld a, d
    ld [hl], a
    sub [hl]
    ld a, b
    and h
    add [hl]
    sub l
    ld h, a
    ld l, b
    sub [hl]
    ld l, b
    sub a
    sbc e
    ld [hl], a
    sub a
    ld l, c
    add a
    adc c
    ld [hl], l
    adc c
    ld h, a
    and [hl]
    ld l, b
    db $76
    ld l, d
    ld e, c
    or [hl]
    ld l, b
    sub [hl]
    sub a
    sbc b
    sbc b
    ld d, a
    and a
    ld l, b
    sub l
    add l
    db $76
    and a
    xor c
    sub l
    ld a, c
    add [hl]
    adc c
    adc b
    add a
    ld l, e
    db $76
    ld a, d
    ld c, c
    ld [hl], a
    ld l, b
    ld [hl], a
    add a
    add [hl]
    add a
    db $76
    sub a
    ld a, b
    adc b
    adc c
    ld [hl], a
    sub a
    ld l, b
    ld [hl], a
    ld [hl], a
    add l
    adc c
    ld a, c
    add a
    ld [hl], a
    db $76
    ld a, c
    ld l, b
    ld a, c
    ld e, b
    add a
    xor b
    sub [hl]
    add a
    ld [hl], a
    ld a, d
    ld l, c
    ld d, a
    add a
    ld a, b
    ld a, b
    sub [hl]
    ld a, b
    ld [hl], a
    adc c
    add a
    ld [hl], a
    add a
    add [hl]
    and a
    sub [hl]
    ld a, c
    ld l, c
    ld [hl], a
    ld l, b
    db $76
    sub a
    add a
    adc b
    ld h, a
    sub a
    adc b
    ld a, b
    ld l, c
    add a
    sbc c
    ld l, b
    ld h, [hl]
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    add [hl]
    add [hl]
    adc b
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    ld a, c
    sbc b
    ld a, c
    ld l, c
    ld e, c
    ld a, d
    ld l, b
    add a
    db $76
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld l, b
    xor b
    adc b
    db $76
    add l
    ld a, b
    add a
    ld a, b
    ld [hl], l
    adc c
    ld a, c
    and [hl]
    add a
    add [hl]
    ld a, e
    ld [hl], l
    sbc b
    jr c, jr_009_7206

    adc c
    add l
    xor b
    ld [hl], a
    and a
    ld l, d
    db $76
    ld l, d
    db $76
    or a
    ld l, b
    sub h
    ld a, c
    add [hl]
    adc b
    ld [hl], a
    and [hl]
    sbc b
    sub l
    adc c
    ld h, [hl]
    sbc d
    ld e, d
    db $76
    ld a, c
    ld h, h
    or a
    ld [hl], a
    db $76
    ld l, c
    add [hl]
    sbc c
    ld h, [hl]
    ld [hl], a
    ld a, c
    sub a
    ld a, c
    ld d, a
    sub a
    ld a, b
    sub [hl]
    add l
    ld [hl], l
    adc c
    ld a, b
    add [hl]
    ld l, b
    ld a, b
    sbc c
    add a
    sub [hl]
    sbc b
    adc b
    add a
    ld [hl], a
    ld h, a
    ld [hl], a
    add [hl]
    ld [hl], a
    ld a, c
    adc b
    ld a, c
    ld a, b
    ld a, b
    adc c
    add [hl]
    sub a
    db $76
    adc b
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    sbc c
    ld [hl], l
    sub l
    add a
    sub a
    and [hl]
    ld [hl], a
    add a
    adc b
    and [hl]
    ld [hl], a
    ld e, b
    ld [hl], a
    ld a, c
    ld a, b
    ld l, b
    ld a, b
    sub a
    ld a, c
    add [hl]
    adc b
    ld a, b
    add a
    ld e, b
    ld [hl], a
    ld a, d
    db $76
    and a
    ld [hl], a
    sub [hl]
    ld l, c
    ld h, [hl]
    adc b
    adc b
    sub a
    ld a, c
    db $76
    ld a, d
    ld l, b
    add a
    and a
    sub l
    sbc d
    ld h, [hl]
    adc b
    ld e, c

jr_009_7206:
    ld a, b
    ld a, c
    ld h, [hl]
    sbc c
    ld h, a
    and a
    ld a, b
    db $76
    sbc c
    ld e, b
    db $76
    add a
    and h
    adc c
    ld a, b
    add a
    ld c, c
    sub l
    adc b
    sub l
    adc c
    ld l, b
    and a
    ld a, d
    add a
    ld l, c
    db $76
    add a
    ld h, a
    db $76
    ld a, d
    ld h, [hl]
    sbc c
    ld e, c
    add a
    sbc b
    sub l
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add l
    adc b
    add [hl]
    sub a
    ld h, a
    db $76
    ld [hl], a
    adc b
    sbc b
    ld [hl], a
    ld a, c
    adc b
    add a
    add a
    ld h, l
    ld [hl], a
    adc c
    add [hl]
    sub a
    ld a, c
    ld a, b
    add [hl]
    ld [hl], a
    ld h, [hl]
    adc c
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    ld [hl], h
    adc b
    ld [hl], a
    ld h, a
    ld l, c
    ld [hl], a
    adc d
    ld a, b
    sub a
    ld h, a
    adc b
    ld a, b
    ld [hl], l
    adc b
    ld h, a
    xor b
    ld a, b
    ld h, a
    ld a, c
    adc b
    adc b
    add [hl]
    sub a
    ld l, c
    adc b
    add a
    ld h, a
    ld [hl], a
    ld a, b
    and [hl]
    sub [hl]
    adc b
    sbc b
    ld a, b
    ld h, a
    ld [hl], a
    db $76
    add [hl]
    add [hl]
    add [hl]
    adc d
    ld l, c
    ld a, b
    ld l, b
    add a
    adc b
    add [hl]
    db $76
    ld a, b
    add a
    ld l, c
    ld [hl], a
    add a
    adc c
    add a
    ld [hl], a
    sub [hl]
    sub a
    adc b
    adc b
    ld [hl], a
    sub l
    adc b
    ld [hl], l
    ld a, b
    ld l, b
    adc b
    adc d
    ld l, b
    adc c
    ld l, c
    ld l, b
    ld l, c
    add [hl]
    adc c
    ld a, b
    sub [hl]
    ld a, b
    sub [hl]
    ld a, b
    ld [hl], a
    sub a
    ld l, b
    ld a, b
    ld l, c
    ld [hl], a
    sbc c
    add a
    sbc b
    ld l, c
    db $76
    ld a, c

Jump_009_72a9:
    ld [hl], a
    ld l, b
    ld l, b
    add a
    adc c
    add a
    ld l, b
    ld [hl], a
    sbc b
    ld a, c
    ld [hl], a
    add a
    db $76
    sbc c
    ld h, a
    ld a, b
    ld l, b
    ld a, b
    sub a
    sub [hl]
    sub [hl]
    adc b
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    adc b
    adc b
    ld h, a
    add a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld a, c
    adc b
    ld e, c
    ld h, a
    ld l, c
    ld [hl], a
    adc b
    adc b
    ld a, b
    adc c
    ld [hl], a
    ld h, a
    add [hl]
    adc c
    ld h, a
    add a
    add a
    add a
    sub a
    add [hl]
    adc b
    add [hl]
    sub a
    ld a, b
    add [hl]
    ld a, b
    ld l, b
    adc b
    ld l, b
    adc b
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, b
    add a
    sub a
    adc d
    ld [hl], a
    db $76
    adc b
    ld e, c
    ld a, b
    add [hl]
    adc b
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    ld l, b
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    add [hl]
    add a
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld [hl], a
    add [hl]
    add a
    add a
    adc b
    add [hl]
    sub a
    ld a, c
    ld a, b
    ld a, b
    db $76
    sub a
    add a
    adc b
    xor b
    ld a, b
    adc b
    ld l, b
    sub a
    ld a, b
    add [hl]
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add [hl]
    sub a
    db $76
    db $76
    ld a, c
    ld a, b
    add a
    ld h, a
    add a
    ld a, b
    sub [hl]
    ld a, c
    ld d, a
    xor b
    add a
    sub l
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    ld l, c
    adc b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub [hl]
    adc b
    ld h, a
    sub a
    ld [hl], a
    ld a, b
    add a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld l, b
    ld [hl], a
    adc c
    ld a, b
    add a
    ld [hl], a
    add a
    sbc b
    add a
    ld l, b
    ld [hl], a
    add a
    ld a, c
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    sub a
    sub l
    sub a
    add a
    db $76
    ld a, b
    ld h, a
    sbc c
    ld a, b
    add a
    ld h, a
    add a
    adc c
    add a
    adc b
    ld l, b
    sub [hl]
    ld l, d
    ld h, a
    add a
    sbc b
    sbc b
    ld l, c
    ld l, b
    ld a, c
    add a
    add a
    add a
    ld [hl], a
    ld a, c
    ld h, a
    add a
    ld a, b
    add [hl]
    sub a
    ld [hl], a
    db $76
    adc b
    add [hl]
    ld a, c
    ld [hl], a
    sbc b
    ld a, b
    add [hl]
    ld a, b
    ld [hl], a
    ld a, c
    ld h, a
    add a
    add a
    sub [hl]
    sbc c
    db $76
    adc b
    ld l, b
    add [hl]
    sbc c
    ld h, a
    adc c
    ld l, b
    and a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    add a
    ld a, b
    db $76
    adc c
    ld a, d
    adc b
    ld l, c
    ld [hl], a
    ld l, c
    add [hl]
    adc b
    ld h, a
    add a
    sbc d
    ld h, a
    sub a
    ld l, b
    ld a, b
    ld a, b
    add [hl]
    add a
    ld [hl], a
    xor b
    ld l, b
    sub [hl]
    ld a, b
    ld a, b
    add a
    ld [hl], a
    add a
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    and a
    add l
    adc c
    ld [hl], a
    add a
    adc b
    ld e, b
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc c
    ld l, b
    add [hl]
    ld [hl], a
    sub l
    add a
    ld a, b
    and a
    ld l, d
    ld [hl], a
    adc b
    ld a, b
    add [hl]
    add a
    add [hl]
    adc b
    add a
    add a
    ld a, b
    sub [hl]
    adc c
    ld d, a
    add a
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    ld a, c
    ld a, b
    and [hl]
    ld a, c
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld a, b
    db $76
    sub a
    ld [hl], a
    adc c
    ld h, a
    add a
    ld a, b
    add [hl]
    sbc b
    ld l, c
    add a
    ld a, c
    ld a, b
    ld a, c
    ld h, a
    ld a, b
    ld a, b
    sub [hl]
    adc b
    ld a, b
    adc b
    adc d
    db $76
    add [hl]
    add [hl]
    adc b
    add a
    add a
    ld [hl], a
    sub [hl]
    sbc b
    ld a, b
    ld h, a
    ld a, b
    ld [hl], a
    sbc b
    ld l, b
    add a
    ld a, c
    ld a, b
    ld a, c
    add l
    and a
    ld l, c
    add [hl]
    adc c
    ld l, b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld e, c
    ld h, a
    adc b
    ld a, b
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld [hl], a
    add a
    sub [hl]
    ld l, c
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld h, a
    adc b
    add [hl]
    adc b
    adc b
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld l, b
    ld [hl], a
    adc b
    add a
    add [hl]
    add a
    ld l, c
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    ld l, b
    adc b
    adc b
    ld a, c
    ld e, b
    adc b
    ld a, c
    ld [hl], a
    ld [hl], a
    ld a, b
    sbc b
    ld a, c
    add a
    ld l, b
    ld [hl], a
    sbc b
    add a
    add [hl]
    add a
    and [hl]
    adc b
    add l
    adc b
    ld a, b
    add a
    ld a, c
    ld h, [hl]
    sub a
    ld l, b
    add a
    ld a, b
    ld l, b
    adc b
    ld a, b
    ld a, c
    ld l, c
    add a
    add a
    add a
    ld l, b
    ld l, b
    sub [hl]
    adc b
    add a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, c
    db $76
    add a
    ld h, a
    adc b
    ld [hl], a
    add a
    adc b
    ld [hl], a
    ld a, b
    ld h, a
    sub [hl]
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    add a
    db $76
    add l
    sub a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a

Jump_009_74aa:
    add [hl]
    ld a, b
    ld a, b
    ld l, c
    ld a, b
    ld [hl], a
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld l, b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    add [hl]
    add a
    adc b
    ld a, b
    ld h, a
    sub [hl]
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    adc b
    add a
    add a
    add [hl]
    sub a
    sub a
    adc b
    ld h, a
    ld a, b
    ld a, b
    add a
    adc b
    ld l, b
    add a
    sub a
    ld a, b
    ld [hl], a
    add a
    adc c
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    add a
    add a
    sub a
    add a
    ld [hl], a
    ld l, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    adc b
    ld a, b
    add a
    ld a, b
    db $76
    adc b
    ld a, b
    add a
    ld l, c
    add a
    adc b
    add a
    sub [hl]
    ld h, a
    sub [hl]
    add a
    add [hl]
    adc c
    ld [hl], a
    add a
    ld a, b
    sub l
    adc b
    db $76
    adc b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc b
    add a
    add a
    ld l, b
    ld a, b
    ld a, c
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    adc b
    add [hl]
    adc b
    ld a, b
    ld [hl], a
    ld a, c
    add [hl]
    add a
    add a
    adc b
    ld l, c
    db $76
    ld a, b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a

Call_009_7527:
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, c
    adc b
    ld [hl], a
    add [hl]
    ld a, b
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    add a
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    adc c
    ld [hl], a
    add a
    ld a, b
    ld l, b
    ld l, b
    ld h, a
    adc b
    ld l, c
    adc b
    adc b
    ld h, a
    adc c
    ld h, a
    adc b
    ld l, b
    db $76
    add a
    ld [hl], a
    sbc b
    ld a, d
    ld a, b
    adc b
    add l
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    sub a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    add a
    add [hl]
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    ld a, c
    ld h, a
    ld a, c
    ld l, b
    ld a, b
    adc c
    ld [hl], a
    ld a, b
    ld [hl], a
    sub a
    add a
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add [hl]
    adc b
    add a
    sbc b
    ld l, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    adc b
    ld a, b
    ld a, b
    add [hl]
    add a
    add a
    add a
    ld l, c
    add l
    sbc b
    ld h, a
    add [hl]
    adc b
    ld a, b
    ld a, b
    ld [hl], a
    sub a
    ld [hl], a
    add a
    adc c
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, d
    ld l, b
    sub a
    ld a, b
    add [hl]
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    add a
    adc c
    ld l, b
    add a
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    sbc b
    db $76
    add a
    add a
    adc b
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    add [hl]
    adc b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    add a
    ld a, b
    ld l, b
    add a
    sbc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld a, b
    add a
    ld a, b
    add a
    add a
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    adc c
    ld [hl], a
    adc b
    ld l, b
    add a
    add a
    db $76
    add a
    ld [hl], a
    sbc b
    add a
    add l
    adc b
    ld [hl], a
    ld a, c
    ld [hl], a
    adc b
    ld l, c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    ld h, a
    sub [hl]
    sub a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    ld l, b
    sub a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    add [hl]
    sbc b
    ld h, a
    adc b
    ld l, b
    ld a, b
    adc c
    ld [hl], a
    ld a, b
    ld h, a
    sub a
    add a
    add a
    ld a, c
    ld l, c
    add a
    ld [hl], a
    sub a
    ld l, b
    add a
    add a
    ld [hl], a
    sub a
    ld [hl], a
    sbc b
    add a
    ld [hl], a
    add a
    adc b
    db $76
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    ld a, b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld l, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld [hl], a
    ld a, c
    adc b
    ld l, b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    adc b
    ld [hl], a
    adc b
    ld l, c
    ld a, b
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    add a
    add a
    sub a
    adc b
    add a
    adc b
    add a
    adc b
    sub a
    ld [hl], a
    adc b
    add [hl]
    adc b
    ld [hl], a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld l, c
    ld [hl], a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    ld a, b
    add a
    adc b
    add a
    add a
    ld l, b
    add a
    add a
    adc b
    ld a, b
    add a
    add a
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    add [hl]
    ld a, b
    ld a, b
    ld a, b
    ld l, c
    ld [hl], a
    adc b
    ld a, b
    add a
    add a
    db $76
    sbc b
    add a
    add a
    ld a, b
    add a
    ld a, b
    db $76
    adc b
    ld a, b
    sbc b
    ld a, b
    add a
    ld a, c
    ld h, a
    adc b
    ld l, b
    add a
    ld a, b
    ld [hl], a
    sub a
    ld a, b
    ld a, c
    adc b
    add a
    ld a, b
    add a
    add a
    ld a, b
    db $76
    add a
    adc b
    add [hl]
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld a, b
    add a
    add a
    ld [hl], a
    adc b
    ld a, c
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add [hl]
    ld [hl], a
    ld a, b
    add a
    ld a, b
    sub a
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    db $76
    sub a
    add a
    adc b
    ld a, b
    ld l, b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld l, b
    ld a, b
    ld [hl], a
    ld a, c
    db $76
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    adc c
    add a
    adc b
    ld a, b
    ld [hl], a
    sub a
    add a
    ld a, b
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld l, b
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    adc c
    ld [hl], a
    sub a
    ld l, b
    ld [hl], a
    adc c
    ld [hl], a
    add a
    ld [hl], a
    sub a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    ld a, b
    add [hl]
    adc b
    ld [hl], a
    adc b
    ld a, b
    add a
    ld a, b
    db $76
    ld a, b
    add a
    sub [hl]
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld l, c
    sub a
    adc c
    ld h, a
    add a
    ld l, c
    add a
    ld a, b
    ld a, b
    adc c
    add [hl]
    sub a
    ld a, b
    add [hl]
    adc c
    ld [hl], a
    sub a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld l, b
    sub a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    add a
    add [hl]
    ld a, b
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    add a
    ld [hl], a
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    ld l, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    add a
    adc b
    ld [hl], a
    sub a
    ld [hl], a
    ld [hl], a
    adc c
    add a
    adc b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add a
    ld [hl], a
    db $76
    add a
    adc b
    db $76
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add a
    ld l, c
    ld [hl], a
    adc b
    ld l, b
    sub a
    ld l, b
    add a
    adc c
    ld [hl], a
    add a
    ld h, a
    sub a
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    add a
    ld [hl], a
    adc b
    adc b
    add a
    adc c
    adc b
    add a
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld h, a
    add a
    adc b
    ld [hl], a
    sub a
    ld a, b
    ld [hl], a
    ld a, c
    ld h, a
    add a
    ld a, b
    add a
    adc c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, c
    add [hl]
    adc b
    ld [hl], a
    sub a
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    sub a
    adc b
    adc b
    add a
    ld [hl], a
    add a
    ld a, b
    add a
    ld [hl], a
    ld a, b
    adc b
    ld a, c
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld [hl], a
    sbc b
    ld a, b
    ld l, b
    ld a, b
    adc b
    add a
    ld h, a
    add a
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld l, b
    add a
    ld [hl], a
    adc b
    add a
    sub a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    add a
    add a
    add a
    sub a
    ld a, b
    add a
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld a, b
    adc b
    ld a, b
    add a
    adc b
    add [hl]
    adc b
    ld a, b
    add a
    ld l, b
    add a
    adc c
    add a
    add a
    sub a
    adc b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    add a
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    ld [hl], a
    ld a, b
    add [hl]
    ld l, b
    add a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    add a
    ld a, b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, c
    ld [hl], a
    sub a
    ld a, b
    ld a, b
    ld a, b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld l, b
    adc b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    adc b
    add a
    add a
    add a
    sub a
    add a
    ld l, b
    ld a, b
    ld a, b
    adc b
    add [hl]
    add a
    adc b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc b
    ld a, b
    ld l, b
    adc b
    sub a
    ld a, b
    ld h, a
    ld a, b
    adc b
    add a
    add a
    ld a, b
    adc b
    ld a, b
    ld a, b
    add a
    sub a
    adc b
    adc b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    adc b
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
    add a
    add a
    ld a, b
    add a
    adc c
    ld h, a
    add a
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc c
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    ld a, b
    adc b
    adc b
    ld [hl], a
    add a
    ld a, b
    add a
    ld a, b
    ld [hl], a
    adc b
    add a
    add a
    ld [hl], a
    add [hl]
    add a
    ld [hl], a
    adc b
    ld l, c
    add a
    ld a, c
    ld [hl], a
    ld a, b
    add a
    add a
    adc b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    adc c
    ld h, a
    add a
    add a
    adc b
    ld a, b
    add a
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    adc b
    ld a, b
    ld a, b
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    adc b
    ld a, b
    ld [hl], a
    add a
    adc b
    adc b
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    add a
    add a
    add a
    ld a, b
    add a
    ld l, b
    add [hl]
    add a
    ld l, c
    ld a, b
    adc b
    add a
    add a
    adc b
    add a
    add [hl]
    add a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld [hl], a
    sub a
    add a
    add a
    ld [hl], a
    add a
    add a
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
    adc b
    db $76
    adc b
    adc b
    ld a, b
    ld [hl], a
    add a
    sbc b
    add a
    add a
    add a
    ld a, c
    ld a, c
    ld [hl], a
    ld a, b
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    add [hl]
    adc b
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    add a
    add a
    ld a, b
    add a
    adc b
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld a, b
    db $76
    xor c
    adc b
    add a
    ld [hl], a
    db $76
    ld [hl], a
    sbc b
    adc d
    ld a, d
    ld h, a
    adc b
    ld d, $c7
    adc l
    ld a, [hl-]
    or e
    xor d
    ld e, d
    ld [hl], e
    cp l
    ld a, c
    add [hl]
    ld d, c
    sub l
    inc h
    ld h, a
    xor h
    call z, Call_000_30a6
    dec h
    xor [hl]
    add hl, de
    sbc b
    db $76
    ld l, b
    ld d, l
    ld a, e
    cp b
    db $db
    ld h, l
    ld a, e
    cp c
    add h
    ld d, l
    ld e, d
    cp h
    ld [hl], e
    add h
    jr c, jr_009_79e8

    add [hl]
    adc d
    jp z, Jump_000_35b6

    ld h, l
    adc b
    add a
    ld l, c
    jp z, Jump_009_58a8

    ld a, c
    adc c
    sbc c
    sbc c
    db $76
    ld h, a
    ld h, l
    add l
    ld h, a

Call_009_7988:
    xor c
    and a
    add [hl]
    ld d, [hl]
    ld d, d
    ld a, d
    sbc c
    xor b
    ld e, b
    add a
    sub a
    ld a, b
    add a
    sbc d
    add a
    adc d

jr_009_7998:
    db $76
    ld h, [hl]
    ld h, l
    ld l, b
    adc c
    sbc c
    sbc b
    ld h, l
    and [hl]
    ld h, [hl]
    ld a, c
    sbc c
    xor c
    sub a
    add l
    ld b, l
    cp e
    cp d
    add a
    ld d, l
    adc c
    ld [hl], l
    ld d, [hl]
    adc c
    ld a, d
    ld [hl], l
    ld d, l
    ld a, c
    sbc b
    sbc b
    adc c
    xor b
    db $76
    ld h, h
    ld e, b
    sbc c
    sbc c
    ld h, l
    ld l, b
    add a
    ld h, a
    adc c
    sbc d
    add [hl]
    ld h, l
    ld h, a
    adc d
    xor c
    sbc b
    adc b
    add a
    ld h, h
    ld h, [hl]
    sbc c
    sbc b
    add a
    sub [hl]
    ld [hl], a
    add a
    adc b
    sbc b
    sbc b
    add a
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc c
    add a
    ld a, b
    ld [hl], a
    adc b
    ld a, c
    adc b
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    add a
    sbc b
    add a

jr_009_79e8:
    ld [hl], a
    ld [hl], a
    ld a, b
    ld l, b
    ld a, b
    adc b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    add a
    adc b
    ld [hl], a
    adc b
    adc b
    sbc b
    ld [hl], a
    ld [hl], a
    db $76
    ld a, b
    adc b
    adc b
    ld [hl], a
    adc b
    add a
    ld [hl], a
    adc b
    adc b
    ld a, b
    sub a
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld h, a
    add a
    jr c, jr_009_7998

    ld a, b
    adc b
    ld l, b
    ld l, d
    cp b
    sub $22
    inc [hl]
    add a
    call $b9bc
    add h
    ld sp, $46b3
    add [hl]
    ld a, c
    cp [hl]
    res 7, e
    adc d
    ld d, l
    ld [de], a
    inc [hl]
    dec [hl]
    ld e, [hl]
    db $ec
    jp z, $87b9

    ld b, d
    inc hl
    inc [hl]
    ld b, l
    ld d, l
    adc a
    db $fd
    res 7, e
    sbc b
    ld hl, $4423
    ld d, [hl]
    ld d, [hl]
    ld c, [hl]
    db $fd
    res 7, d
    sub e
    ld [de], a
    ld b, h
    ld d, h
    ld a, e
    and a
    adc [hl]
    res 7, d
    xor c
    inc sp
    ld d, e
    inc [hl]
    ld b, l
    adc h
    jp hl


    sbc e
    and a
    ld a, d
    add e
    ld d, [hl]
    ld a, c
    add h
    ld [hl], l
    ld a, c
    adc c
    xor d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    adc h
    db $eb
    jp z, Jump_009_72a9

    inc sp
    ld h, l
    ld d, l
    ld b, [hl]
    ld l, b
    xor [hl]
    call z, $aabb
    jp nc, Jump_009_4423

    ld d, l
    ld h, [hl]
    xor e
    call $aacb
    xor d
    ld [hl], e
    ld [de], a
    inc [hl]
    ld b, l
    ld e, c
    srl h
    cp e
    sbc d
    xor b
    ld [hl], d
    ld [hl+], a
    ld b, h
    ld b, l
    ld l, b
    xor h
    db $db
    jp z, Jump_009_74aa

    ld b, l
    ld d, h
    or h
    ld d, l
    ld h, [hl]
    xor c
    call $b9bb
    ld [hl], h
    ld d, l
    ld h, a
    ld d, [hl]
    ld h, [hl]
    db $76
    ld h, a
    xor c
    xor d
    ld l, d
    sub a
    ld l, b
    db $76
    ld l, c
    ld a, b
    db $76
    ld b, l
    ld d, l
    ld h, a
    call z, $a9bc
    db $76
    add a
    sub a
    push bc
    ld d, e
    ld d, l
    ld b, a
    adc d
    call z, $a7cb
    sbc b
    ld [hl], l
    ld d, h
    ld b, l
    ld d, l
    ld d, l
    ld a, c
    sbc e
    ld c, e
    cp e
    xor c
    ld [hl], l
    inc [hl]
    ld d, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    sbc d
    cp h
    jp z, $85ab

    ld h, h
    ld b, h
    or [hl]
    ld h, a
    ld a, b
    ld a, c
    cp d
    cp e
    cp d
    sbc b
    ld [hl], l
    ld d, h
    ld b, l
    ld d, a
    db $76
    adc c
    adc c
    sbc d
    ld e, d
    xor c
    sbc b
    ld h, h
    ld d, h
    ld d, [hl]
    ld d, [hl]
    ld a, c
    adc d
    adc d
    xor d
    cp d
    sbc c
    db $76
    ld d, [hl]
    ld b, h
    sub l
    ld l, b
    adc c
    xor d
    sbc d
    sbc c
    xor c
    adc b
    ld [hl], l
    ld d, h
    ld d, l
    ld d, a
    ld a, b
    sbc c
    xor d
    sbc c
    ld e, c
    adc b
    db $76
    ld h, l
    ld b, l
    ld h, [hl]
    ld h, a
    ld a, d
    sbc d
    xor c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld [hl], a
    ld a, b
    adc c
    sbc d
    sbc b
    ld a, c
    ld l, b
    ld [hl], a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld l, b
    sbc b
    xor c
    sbc b
    ld l, c
    ld a, b
    ld [hl], a
    add [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld a, c
    sbc c
    sbc c
    adc b
    adc b
    ld [hl], a
    db $76
    db $76
    ld [hl], l
    sub a
    ld [hl], a
    adc c
    adc d
    xor c
    sbc b
    add a
    ld l, b
    db $76
    ld h, [hl]
    db $76
    ld h, a
    add a
    sbc d
    sbc d
    xor c
    ld a, b
    db $76
    ld h, a
    ld d, a
    ld h, [hl]
    ld h, a
    ld a, b
    adc c
    sbc d
    xor d
    adc b
    ld [hl], a
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    adc b
    ld a, b
    sbc b
    xor b
    xor b
    adc b
    ld [hl], a
    ld h, l
    ld h, [hl]
    ld [hl], a
    ld l, b
    adc b
    adc c
    adc c
    xor c
    adc c
    ld [hl], a
    ld h, a
    ld d, [hl]
    ld h, a
    ld l, b
    add a
    sbc b
    sbc b
    sbc b
    sbc b
    add a
    ld [hl], a
    db $76
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    adc c
    adc b
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    ld a, c
    adc b
    adc b
    sbc b
    adc b
    adc b
    add a
    ld [hl], a

Call_009_7b82:
    db $76
    ld h, [hl]
    ld [hl], a
    adc b
    adc b
    sbc c
    sbc b
    adc b
    adc b
    ld [hl], a
    ld [hl], a
    ld h, [hl]
    ld h, [hl]
    ld a, b
    ld a, b
    sbc c
    sbc c
    adc c
    adc b
    ld [hl], a
    db $76
    ld h, a
    ld h, [hl]
    ld h, a
    ld a, b
    sbc c
    adc c
    xor b
    sbc b
    add a
    add a
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    adc b
    sbc d
    sbc b
    sbc c
    add [hl]
    add a
    ld [hl], a
    ld h, a
    ld h, a
    ld [hl], a
    ld a, b
    ld a, c
    sbc c
    sbc c
    ld a, b
    add a
    ld h, a
    ld a, b
    ld h, a
    ld l, b
    ld [hl], a
    ld a, b
    adc c
    sbc c
    sbc b
    add a
    ld [hl], a
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    add a
    sbc b
    sbc c
    adc b
    sub a
    ld [hl], a
    db $76
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    adc b
    ld a, c
    adc c
    sbc b
    add a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld [hl], a
    add a
    ld a, b
    adc b
    adc c
    adc b
    adc b
    ld a, b
    ld [hl], a
    db $76
    ld [hl], a
    ld l, b
    ld a, b
    add a
    adc b
    adc b
    adc b
    adc b
    add [hl]
    ld [hl], a
    db $76
    ld h, a
    add a
    adc b
    adc b
    ld l, b
    adc b
    adc b
    sub a
    add a
    ld h, a
    db $76
    db $76
    add a
    adc b
    add a
    sbc b
    adc c
    add a
    add a
    ld [hl], a
    sub a
    ld h, [hl]
    db $76
    adc b
    adc b
    sbc b
    adc b
    adc b
    adc b
    ld [hl], a
    db $76
    ld h, [hl]
    ld h, a
    ld a, b
    sbc b
    adc b
    xor h
    ld a, [hl-]
    inc a
    ld l, c
    ld h, l
    call nz, Call_009_68b6
    ld a, d
    ld a, c
    ld d, h
    db $e4
    or l
    add a
    add [hl]
    ld e, c
    and [hl]
    ld [hl], a
    ld e, [hl]
    ld c, d
    ld [hl], e
    pop de
    jp nc, Jump_009_5e79

    jr z, jr_009_7ca2

    add $95
    adc d
    ld e, h
    ld b, l
    and $b4
    adc e
    ld e, c
    ld h, a
    and h
    rst $00
    ld e, e
    ld c, $49
    sub e
    pop hl
    xor e
    cpl
    dec e
    ld h, h
    add d
    or h
    ld e, l
    inc l
    ld b, [hl]
    jp nz, $a8f2

    ld e, [hl]
    ld e, $48
    sub h
    or d
    ld a, l
    dec a
    ld a, [hl+]
    sub l
    or h
    and [hl]
    adc c
    ld e, c
    ld [hl], h
    and l
    xor b
    ld l, e
    ld a, [hl-]
    sub e
    ldh a, [$b6]
    ld a, e
    dec l
    ld d, a
    or [hl]
    sub a
    ld e, [hl]
    dec e
    inc l
    db $76
    add [hl]
    ld a, d
    dec a
    inc a
    ld d, [hl]
    or l
    and [hl]
    ld a, b
    ld l, c
    db $76
    sub e
    call nz, Call_009_7988
    ld a, b
    and h
    and e
    xor d
    inc a
    ld a, [hl-]
    ld a, b
    sub l
    add a
    adc d
    inc a
    ld e, c
    sub l
    and l
    adc d
    ld c, h
    inc l
    add e
    ldh [$d4], a
    sbc c
    ld c, d
    ld e, b
    or d
    call nz, Call_000_3e99
    add hl, hl
    add h
    ldh [$d5], a
    adc e
    dec l
    ld a, [hl-]
    add [hl]
    sbc b
    ld e, h
    ld a, [hl-]
    db $76
    and l
    and l
    adc c
    ld l, d
    ld c, c
    db $76
    sub l

jr_009_7ca2:
    or [hl]
    sbc b
    ld a, b
    ld l, b
    sub l
    sub l
    sbc b
    ld a, b
    ld l, c
    ld l, c
    add l
    and a
    add a
    ld l, c
    ld l, b
    ld l, b
    add [hl]
    sub a
    ld a, c
    ld l, c
    ld l, d
    db $76
    and l
    sub a
    ld l, e
    ld c, h
    ld c, b
    add l
    or h
    and a
    ld a, c
    ld l, b
    ld [hl], a
    sub [hl]
    add a
    ld a, c
    ld l, d
    ld l, b
    add a
    adc b
    add a
    add a
    sub a
    ld [hl], a
    adc b
    ld a, b
    ld [hl], a
    add [hl]
    and l
    sub [hl]
    adc c
    ld e, e
    ld a, [hl-]
    ld [hl], a
    and l
    and l
    sub a
    ld a, b
    ld a, c
    db $76
    sub [hl]
    sub a
    xor c
    ld c, d
    ld e, d
    ld h, a
    sub l
    sub [hl]
    adc b
    ld l, d
    ld e, c
    add [hl]
    sub [hl]
    sub a
    ld a, b
    ld l, b
    ld a, b
    add l
    ld h, l
    sub a
    ld l, c
    ld l, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, c
    ld l, c
    ld l, b
    db $76
    sub a
    sub a
    ld a, c
    ld l, d
    ld e, b
    add [hl]
    or l
    sub a
    ld a, d
    ld e, d
    ld l, b
    sub h
    or l
    sbc b
    ld l, d
    ld e, c
    add [hl]
    or h
    and [hl]
    adc b
    adc d
    ld h, a
    sub l
    and l
    sub a
    ld a, b
    ld a, b
    add a
    sub [hl]
    add a
    ld a, c
    ld l, b
    add [hl]
    sub a
    add [hl]
    add a
    sbc b
    add a
    add a
    adc b
    ld l, c
    ld l, b
    add a
    add a
    add [hl]
    sub [hl]
    adc b
    ld l, d
    ld e, c
    ld l, b
    add a
    add [hl]
    ld [hl], a
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, b
    ld a, b
    add a
    sub [hl]
    sub [hl]
    sub a
    ld a, b
    ld l, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    sub a
    add [hl]
    adc b
    add a
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    adc b
    ld [hl], a
    add a
    ld a, b
    add [hl]
    sub a
    adc b
    ld a, b
    add [hl]
    adc b
    ld l, c
    ld l, c
    add [hl]
    add [hl]
    sub a
    adc b
    ld a, c
    ld a, b
    add a
    ld a, b
    ld a, b
    add a
    add a
    sub a
    ld a, b
    ld a, b
    ld l, b
    add a
    add [hl]
    sbc b
    ld l, c
    ld [hl], a
    add a
    add a
    ld a, c
    ld [hl], a
    ld a, c
    ld l, b
    add [hl]
    add a
    ld a, b
    ld a, b
    ld [hl], a
    ld a, c
    ld a, c
    ld [hl], a
    adc b
    ld [hl], a
    sub a
    add a
    adc b
    ld a, b
    ld [hl], a
    add a
    ld e, b
    add a
    ld a, b
    ld [hl], a
    sub [hl]
    adc b
    ld a, b
    add a
    adc b
    ld [hl], a
    ld a, b
    ld a, b
    add a
    add [hl]
    sub a
    ld a, c
    adc d
    ld e, c
    ld a, b
    add a
    add a
    ld a, b
    ld a, b
    adc b
    ld [hl], a
    adc b
    ld a, b
    ld a, c
    ld [hl], a
    adc b
    add a
    add a
    adc b
    ld a, b
    ld a, b
    ld a, b
    ld [hl], a
    add a
    add a
    adc b
    ld a, c
    ld [hl], a
    add a
    sub [hl]
    ld a, b
    ld a, b
    ld [hl], a
    add a
    ld l, b
    ld d, l
    rst $38
    and b
    add hl, bc
    ld [hl], l
    adc c
    jp z, $899b

    add h
    ld b, e
    dec h
    adc d
    xor e
    jp c, Jump_009_5676

    sbc b
    adc b
    ld d, a
    ld a, b
    ld h, a
    sbc c
    sub a
    ld a, c
    add a
    add [hl]
    ld h, a
    adc b
    adc c
    sbc c
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    adc c
    adc b
    ld h, a
    add a
    ld a, b
    add a
    adc b
    ld a, b
    ld a, b
    add a
    add [hl]
    add a
    or a
    ld a, c
    sbc l
    ld d, b
    dec a
    xor c
    xor d
    ld d, [hl]
    ld h, d
    inc de
    xor l
    call c, $408c
    add hl, de
    rst $38
    ld d, l
    ld de, $ad16
    xor d
    adc b
    ld [hl], $b9
    sub [hl]
    ld d, [hl]
    db $76
    add a
    adc c
    adc d
    sub [hl]
    ld a, b
    sub a
    adc b
    add a
    ld a, b
    ld a, b
    adc c
    add a
    add a
    ld [hl], a
    adc c
    adc b
    sbc b
    db $76
    ld h, [hl]
    ld [hl], a
    sbc c
    ld c, b
    ld [hl], a
    ld a, b
    adc b
    add a
    add a
    ld [hl], a
    ld [hl], a
    add a
    adc b
    sub a
    add a
    ld [hl], a
    sbc e
    add [hl]
    ld a, c
    ld hl, sp+$57
    add a
    inc h
    adc h
    ld l, l
    rst $38
    add e
    inc de
    ld b, [hl]
    ld [hl], a
    sbc e
    rst $18
    ld [hl], d
    nop
    sbc [hl]
    ld l, a
    sub [hl]
    inc sp
    inc [hl]
    ld e, b
    sbc h
    cp b
    db $76
    ld h, [hl]
    ld l, d
    xor b
    ld a, b
    db $76
    ld h, a
    sbc c
    sub a
    ld [hl], a
    sub [hl]
    sbc c
    ld a, b
    add a
    ld h, [hl]
    ld [hl], a
    adc b
    adc c
    ld a, b
    ld [hl], a
    ld d, a
    adc b
    xor b
    ld [hl], a
    ld l, b
    xor b
    add a
    ld a, b
    add a
    ld a, b
    add a
    adc c
    ld [hl], a
    db $76
    ld a, b
    ld d, [hl]
    rst $00
    ld a, h
    ld d, a
    ld e, b
    ld l, d
    xor c
    sub $10
    dec de
    jp hl


    res 0, l
    ld [hl], d
    inc de
    xor a
    rst $08
    db $e3
    ld d, e
    ld bc, $baab
    ret


    inc bc
    sbc l
    call nc, Call_009_7527
    sbc c
    ld a, l
    db $eb
    and [hl]
    db $10
    add hl, bc
    adc $83
    cp [hl]
    db $76
    ld b, $74
    add c
    ld a, e
    add sp, $33
    ld e, c
    cp [hl]
    ld l, b
    ld h, [hl]
    ld e, b
    ld [hl], h
    sbc h
    ld a, b
    call c, $a663
    add $9b
    ld l, b
    jp c, Jump_009_4b70

    or a
    db $76
    ld [hl], l
    adc c
    sbc h
    ret z

    ld b, a
    ld hl, $569f
    sub [hl]
    ld b, l
    db $db
    and c
    add hl, hl
    db $76
    xor l
    xor d
    add [hl]
    ld d, h
    dec [hl]
    ld a, e
    adc $a7
    nop
    xor c
    db $dd
    or a
    ld h, d
    ld e, b
    ld h, [hl]
    sbc b
    bit 4, [hl]
    ld b, h
    ld [hl], h
    rst $08
    add sp, $42
    ld b, a
    adc c
    ld e, e
    add [hl]
    ld [hl], a
    sub h
    add [hl]
    sbc h
    ld [hl], a
    ld [hl], a
    ld d, l
    ld b, [hl]
    call z, Call_009_56e5
    ld [hl], l
    ld e, h
    sbc c
    daa
    db $76
    adc b
    sub [hl]
    ld l, b
    adc c
    add a
    db $76
    ld l, b
    ld d, a
    xor c
    add [hl]
    ld a, b
    xor e
    ld [hl], l
    add a
    ld [hl], e
    sbc d
    ld a, d
    bit 6, h
    ld b, [hl]
    ld c, b
    xor d
    sbc b
    ld h, a
    ld [hl], a
    sub l
    ld h, [hl]
    adc b
    cp h
    sbc b
    ld [hl], d
    inc bc
    sbc e
    cp h
    sbc c
    ld d, a
    ld d, h
    ld [hl], a
    adc d
    ld l, b
    and l
    ld b, [hl]
    sbc d
    cp e
    add e
    daa
    adc e
    xor b
    ld d, [hl]
    xor d
    add l
    ld [hl], a
    add a
    db $76
    ld l, c
    adc d
    sub a
    ld [hl], a
    db $76
    ld e, c
    cp c
    ld h, [hl]
    ld l, b
    ld [hl], a
    add a
    ld a, b
    adc c
    add [hl]
    ld h, [hl]
    cp d
    adc c
    ld d, l
    ld [hl], a
    adc c
    ld h, [hl]
    ld a, c
    xor d
    db $76
    ld l, b
    ld [hl], a
    sbc c
    add a
    ld h, a
    db $76
    adc c
    sbc c
    ld d, l
    ld a, c
    sub a
    ld d, a
    adc c
    sub a
    sbc d
    add [hl]
    ld h, l
    ld d, a
    adc c
    sbc d
    adc b
    sbc b
    ld h, [hl]
    ld h, a
    adc b
    ld h, a
    add [hl]
    ld a, b
    sbc b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    add a
    sbc b
    add [hl]
    ld h, [hl]
    ld h, a
    adc c
    xor c
    ld h, a
    ld h, a
    ld h, [hl]
    ld a, c
    xor c
    sub a
    add [hl]
    ld h, a
    add a
    add a
    add a
    ld a, b
    adc b
    add a
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, b
    adc b
    add a
    ld a, b
    ld a, c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    adc b
    ld l, b
    ld a, b
    ld h, a
    sbc b
    ld a, b
    ld [hl], a
    ld a, b
    add a
    adc b
    ld a, b
    ld l, b
    adc b
    ld [hl], a
    add a
    ld a, b
    adc c
    ld a, b
    adc b
    ld h, a
    add a
    db $76
    ld a, b
    adc b
    sbc b
    ld [hl], a
    adc b
    add a
    ld h, [hl]
    ld h, a
    adc c
    sbc c
    sbc b
    add a
    ld h, [hl]
    db $76
    adc d
    sbc b
    sub [hl]
    db $76
    ld h, a
    adc c
    adc b
    ld a, b
    ld h, a
    ld h, a
    adc b
    adc c
    add a
    db $76
    add [hl]
    adc c
    add a
    ld h, [hl]
    ld a, b
    ld a, b
    adc b
    adc b
    add [hl]
    ld h, a
    ld [hl], a
    adc b
    add a
    add a
    add [hl]
    adc b
    ld [hl], a
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    adc c
    ld [hl], a
    add a
    ld [hl], a
    ld a, b
    adc b
    adc b
    add a
    ld a, b
    ld h, a
    db $76
    adc b
    adc b
    add a
    adc b
    db $76
    ld [hl], a
    adc b
    adc b
    add a
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    add a
    add a
    add a
    ld [hl], a
    ld [hl], a
    adc c
    sbc b
    add a
    add a
    ld [hl], a
    ld a, b
    add a
    ld a, b
    ld a, b
    db $76
    adc b
    adc c
    adc c
    ld [hl], a
    db $76
    adc b
    adc b
    add a
    add a
    ld [hl], a
    add a
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
