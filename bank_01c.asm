; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

Call_01c_4000:
Jump_01c_4000:
    push bc
    call Call_01c_70b7
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_400d

    call Call_000_144b

Jump_01c_400d:
    ld hl, $c977
    ld a, [hl]
    ld hl, $4000
    ld [hl], a
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $c978
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0100
    push hl
    ld hl, $da00
    push hl
    push bc
    call Call_000_3846
    add sp, $06
    ld hl, $0000
    ld [hl], $00
    ei
    ld hl, $c978
    ld a, [hl]
    add $00
    ld [hl+], a
    ld a, [hl]
    adc $01
    ld [hl], a
    ld hl, $c981
    ld [hl], $00
    pop bc
    ret


    ld [hl], c
    ld [hl-], a
    inc sp
    ld b, h
    ld b, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor d
    xor e
    cp h
    call $c5ce
    ld hl, $be78
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp z, Jump_01c_4071

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_4071:
    ld hl, $be79
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp z, Jump_01c_408a

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_408a:
    ld hl, $be80
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp z, Jump_01c_40a3

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_40a3:
    ld hl, $be81
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp z, Jump_01c_40bc

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_40bc:
    ld hl, $bff0
    push hl
    ld a, $07
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp z, Jump_01c_40d5

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_40d5:
    ld hl, $bff1
    push hl
    ld a, $07
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp z, Jump_01c_40ee

    ld e, $01
    jp Jump_01c_40f0


Jump_01c_40ee:
    ld e, $00

Jump_01c_40f0:
    pop bc
    ret


    push bc
    call $4057
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_4101

    ld e, $00
    jp Jump_01c_4158


Jump_01c_4101:
    ld hl, $a13e
    push hl
    ld a, $0c
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $6a
    jp nz, Jump_01c_4156

    ld hl, $a13f
    push hl
    ld a, $0c
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $6b
    jp nz, Jump_01c_4156

    ld hl, $be78
    push hl
    ld a, $08
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp nz, Jump_01c_4156

    ld hl, $be79
    push hl
    ld a, $08
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp nz, Jump_01c_4156

    ld e, $01
    jp Jump_01c_4158


Jump_01c_4156:
    ld e, $00

Jump_01c_4158:
    pop bc
    ret


Call_01c_415a:
    push bc
    add sp, -$0b
    ld hl, sp+$09
    ld [hl], $41
    inc hl
    ld [hl], $a1
    xor a
    ld hl, $c56c
    or [hl]
    jp z, Jump_01c_417c

    ld hl, sp+$03
    ld [hl], $80
    inc hl
    ld [hl], $a1
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    jp Jump_01c_4189


Jump_01c_417c:
    ld hl, sp+$03
    ld [hl], $00
    inc hl
    ld [hl], $a2
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_01c_4189:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    ld hl, $c97d
    ld a, [hl]
    cp $20
    jp c, Jump_01c_41a1

    call Call_000_144b

Jump_01c_41a1:
    ld hl, $c956
    ld [hl], $01

Jump_01c_41a6:
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$04
    ld [hl], a
    dec hl
    ld [hl], e
    inc hl
    ld a, [hl]
    bit 7, a
    jp z, Jump_01c_42d0

    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    ld a, $1f
    sbc c
    jp nc, Jump_01c_42c2

    ld hl, $c97d
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$0f
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], e
    ld hl, $c956
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    add $04
    ld hl, sp+$02
    ld [hl+], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a
    ld hl, sp+$11
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, $c956
    ld a, [hl]
    and $0f
    ld c, a
    ld b, c
    ld c, $00
    ld a, b
    add a
    ld b, a
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc hl
    ld a, [hl]
    cp $04
    jp c, Jump_01c_4247

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $10
    jp c, Jump_01c_424a

Jump_01c_4247:
    call Call_000_144b

Jump_01c_424a:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, sp+$03
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $a0
    inc hl
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $00
    jp c, Jump_01c_429e

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc hl
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, sp+$03
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $c0
    inc hl
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $00
    jp c, Jump_01c_42a1

Jump_01c_429e:
    call Call_000_144b

Jump_01c_42a1:
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c97f
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld e, $01
    jp Jump_01c_42d2


Jump_01c_42c2:
    ld hl, $c956
    inc [hl]
    ld hl, sp+$09
    inc [hl]
    jr nz, jr_01c_42cd

    inc hl
    inc [hl]

jr_01c_42cd:
    jp Jump_01c_41a6


Jump_01c_42d0:
    ld e, $00

Jump_01c_42d2:
    add sp, $0b
    pop bc
    ret


Call_01c_42d6:
    push bc
    xor a
    ld hl, $c56c
    or [hl]
    jp z, Jump_01c_42e4

    ld c, $40
    jp Jump_01c_42e6


Jump_01c_42e4:
    ld c, $c0

Jump_01c_42e6:
    ld e, c
    pop bc
    ret


Call_01c_42e9:
    push bc
    ld hl, $c956
    ld [hl], $01

Jump_01c_42ef:
    ld hl, $c956
    ld c, [hl]
    ld b, $00
    ld a, c
    add $40
    ld c, a
    ld a, b
    adc $a1
    ld b, a
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, $c97d
    ld a, [hl]
    cp c
    jp nz, Jump_01c_4320

    ld hl, $c956
    ld a, [hl]
    push af
    inc sp
    call Call_01c_748f
    add sp, $01
    ld e, $01
    jp Jump_01c_4333


Jump_01c_4320:
    ld hl, $c956
    inc [hl]
    call Call_01c_42d6
    ld c, e
    xor a
    ld hl, $c956
    ld a, [hl]
    sbc c
    jp c, Jump_01c_42ef

    ld e, $00

Jump_01c_4333:
    pop bc
    ret


Call_01c_4335:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4341

    call Call_000_144b

Jump_01c_4341:
    ld hl, sp+$04
    ld c, [hl]
    ld a, $57
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld e, c
    pop bc
    ret


Call_01c_4352:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $20
    jp c, Jump_01c_435e

    call Call_000_144b

Jump_01c_435e:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4335
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01c_43aa

    ld hl, sp+$04
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    ld b, $00
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    di
    ld hl, $4000
    ld [hl], $04
    ld hl, $0000
    ld [hl], $0a
    ld hl, $0008
    push hl
    push bc
    ld hl, $c985
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, $0000
    ld [hl], $00
    ei
    ld de, $c98d
    ld a, $00
    ld [de], a
    jp Jump_01c_43b7


Jump_01c_43aa:
    ld hl, $43b9
    push hl
    ld hl, $c985
    push hl
    call Call_000_3834
    add sp, $04

Jump_01c_43b7:
    pop bc
    ret


    ld e, e
    ld b, l
    ld c, l
    ld d, b
    ld d, h
    ld e, c
    ld e, l
    nop

Call_01c_43c1:
    push bc
    add sp, -$03
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $800f
    add hl, de
    jp nc, Jump_01c_43d6

    ld e, $00
    jp Jump_01c_441b


Jump_01c_43d6:
    ld hl, sp+$02
    ld [hl], $00

Jump_01c_43da:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01c_4419

    dec hl
    dec hl
    ld [hl+], a
    ld [hl], $00
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld b, l
    ld c, h
    push hl
    call Call_01c_70cd
    ld c, e
    add sp, $02
    ld de, $4047
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    cp c
    jr nz, jr_01c_440e

    jp Jump_01c_4413


jr_01c_440e:
    ld e, $00
    jp Jump_01c_441b


Jump_01c_4413:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01c_43da


Jump_01c_4419:
    ld e, $01

Jump_01c_441b:
    add sp, $03
    pop bc
    ret


Call_01c_441f:
    push bc
    add sp, -$09
    ld hl, $c97b
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c981
    ld [hl], $00
    ld hl, $c984
    ld [hl], $ff
    ld hl, $a000
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0b
    ld [hl], e
    add sp, $03
    ld hl, $a001
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0a
    ld [hl], e
    add sp, $03

Jump_01c_4454:
    ld hl, sp+$08
    ld a, [hl]
    cp $c0
    jp nz, Jump_01c_44a1

    ld a, $c0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld a, $c0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, sp+$07
    ld a, [hl+]
    ld [hl], a
    ld hl, $c97b
    inc [hl]
    jr nz, jr_01c_447a

    inc hl
    inc [hl]

jr_01c_447a:
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8001
    add hl, de
    jp c, Jump_01c_464f

    ld hl, $c97b
    ld a, [hl]
    add $01
    ld b, a
    inc hl
    ld a, [hl]
    adc $00
    ld c, a
    ld l, b
    ld h, c
    push hl
    call Call_01c_70cd
    ld hl, sp+$09
    ld [hl], e
    add sp, $02
    jp Jump_01c_464f


Jump_01c_44a1:
    ld hl, sp+$08
    ld a, [hl]
    cp $71
    jp nz, Jump_01c_4530

    ld hl, sp+$07
    ld a, [hl]
    cp $32
    jp nz, Jump_01c_4530

    call Call_01c_43c1
    ld c, e
    xor a
    or c
    jp z, Jump_01c_4530

    ld hl, sp+$06
    ld [hl], $00

Jump_01c_44be:
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$06
    ld [hl], a
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c97b
    ld [hl+], a
    ld [hl], e
    call Call_01c_43c1
    ld c, e
    xor a
    or c
    jp z, Jump_01c_44f2

    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_01c_44be

Jump_01c_44f2:
    ld a, $e0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld a, $f0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, $c97b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_70cd
    ld hl, sp+$0a
    ld [hl], e
    add sp, $02
    ld hl, $c97b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    push bc
    call Call_01c_70cd
    ld hl, sp+$09
    ld [hl], e
    add sp, $02
    jp Jump_01c_464f


Jump_01c_4530:
    ld hl, sp+$08
    ld a, [hl]
    cp $e0
    jp nz, Jump_01c_4576

    ld a, $e0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld a, $e0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, sp+$07
    ld a, [hl+]
    ld [hl], a
    ld hl, $c97b
    inc [hl]
    jr nz, jr_01c_4556

    inc hl
    inc [hl]

jr_01c_4556:
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8001
    add hl, de
    jp c, Jump_01c_464f

    ld hl, $c97b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    push bc
    call Call_01c_70cd
    ld hl, sp+$09
    ld [hl], e
    add sp, $02
    jp Jump_01c_464f


Jump_01c_4576:
    ld hl, sp+$07
    ld a, [hl+]
    cp [hl]
    jp nz, Jump_01c_461c

    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8003
    add hl, de
    jp c, Jump_01c_461c

    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_70cd
    ld c, e
    add sp, $02
    ld hl, sp+$07
    ld a, [hl]
    cp c
    jp nz, Jump_01c_461c

    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_70cd
    ld hl, sp+$02
    ld [hl], e
    add sp, $02
    ld hl, $c97b
    ld a, [hl]
    add $03
    ld b, a
    inc hl
    ld a, [hl]
    adc $00
    ld c, a
    ld l, b
    ld h, c
    push hl
    call Call_01c_70cd
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld a, [hl]
    cp c
    jp nz, Jump_01c_461c

    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_01c_7116
    add sp, $01
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8000
    add hl, de
    jp c, Jump_01c_464f

    ld hl, $c97b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_70cd
    ld hl, sp+$0a
    ld [hl], e
    add sp, $02
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8001
    add hl, de
    jp c, Jump_01c_464f

    ld hl, $c97b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    push bc
    call Call_01c_70cd
    ld hl, sp+$09
    ld [hl], e
    add sp, $02
    jp Jump_01c_464f


Jump_01c_461c:
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, sp+$07
    ld a, [hl+]
    ld [hl], a
    ld hl, $c97b
    inc [hl]
    jr nz, jr_01c_4632

    inc hl
    inc [hl]

jr_01c_4632:
    ld hl, $c97b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $8001
    add hl, de
    jp c, Jump_01c_464f

    ld hl, $c97b
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    push bc
    call Call_01c_70cd
    ld hl, sp+$09
    ld [hl], e
    add sp, $02

Jump_01c_464f:
    xor a
    ld a, $fb
    ld hl, $c981
    sbc [hl]
    jp nc, Jump_01c_46b7

    ld hl, $c979
    ld a, [hl]
    bit 0, a
    jp z, Jump_01c_46b7

    ld a, $e0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld hl, sp+$03
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$05
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_01c_415a
    ld c, e
    add sp, $04
    xor a
    or c
    jp nz, Jump_01c_4691

    ld e, $00
    jp Jump_01c_46df


Jump_01c_4691:
    ld hl, $c956
    ld a, [hl]
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    xor a
    ld hl, $c981
    or [hl]
    jp z, Jump_01c_46a7

    call Call_01c_4000

Jump_01c_46a7:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c977
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c978
    ld [hl+], a
    ld [hl], e

Jump_01c_46b7:
    ld hl, $c97c
    ld a, [hl]
    bit 7, a
    jp z, Jump_01c_4454

    ld a, $e0
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    ld a, $ff
    push af
    inc sp
    call Call_01c_710a
    add sp, $01
    xor a
    ld hl, $c981
    or [hl]
    jp z, Jump_01c_46dd

    call Call_01c_4000

Jump_01c_46dd:
    ld e, $01

Jump_01c_46df:
    add sp, $09
    pop bc
    ret


Call_01c_46e3:
    push bc
    call Call_01c_73b1
    ld c, e
    ld b, c
    ld a, c
    cp $e0
    jp z, Jump_01c_4701

    cp $f0
    jp z, Jump_01c_470d

    cp $f1
    jp z, Jump_01c_471e

    cp $ff
    jp z, Jump_01c_472f

    jp Jump_01c_4734


Jump_01c_4701:
    ld a, $e0
    push af
    inc sp
    call Call_01c_73cc
    add sp, $01
    jp Jump_01c_4774


Jump_01c_470d:
    call Call_01c_73b1
    ld b, e

Jump_01c_4711:
    ld c, b
    dec b
    xor a
    or c
    jp z, Jump_01c_4774

    call Call_01c_74ed
    jp Jump_01c_4711


Jump_01c_471e:
    call Call_01c_73b1
    ld b, e

Jump_01c_4722:
    ld c, b
    dec b
    xor a
    or c
    jp z, Jump_01c_4774

    call Call_01c_753d
    jp Jump_01c_4722


Jump_01c_472f:
    ld e, $01
    jp Jump_01c_4776


Jump_01c_4734:
    ld a, $eb
    ld hl, $c982
    cp [hl]
    jp nz, Jump_01c_476c

    ld a, $73
    inc hl
    cp [hl]
    jp nz, Jump_01c_476c

    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld hl, $c97f
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld a, $2f
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c97e
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_01c_476c:
    ld a, b
    push af
    inc sp
    call Call_01c_748f
    add sp, $01

Jump_01c_4774:
    ld e, $00

Jump_01c_4776:
    pop bc
    ret


Call_01c_4778:
    push bc
    ld hl, $c574
    ld [hl], $e3
    inc hl
    ld [hl], $98
    ld hl, $47a3
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c982
    ld [hl], $1d
    inc hl
    ld [hl], $74
    ld a, $01
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4fa5
    ld c, e
    add sp, $02
    pop bc
    ret


    ld d, [hl]
    ld b, l
    ld d, d
    ld c, c
    ld b, [hl]
    ld e, c
    ld l, $2e
    ld l, $20
    jr nz, @+$22

    jr nz, jr_01c_47b1

jr_01c_47b1:
    push bc
    add sp, -$04
    ld a, $00
    push af
    inc sp
    ld hl, $be78
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld bc, $a000

Jump_01c_47c8:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_47ed

    inc hl
    ld a, [hl]
    cp $a1
    jp nz, Jump_01c_47ed

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_47ed

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_47ff

Jump_01c_47ed:
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    inc bc
    jp Jump_01c_47c8


Jump_01c_47ff:
    ld bc, $a140

Jump_01c_4802:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_4827

    inc hl
    ld a, [hl]
    cp $a2
    jp nz, Jump_01c_4827

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_4827

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_4839

Jump_01c_4827:
    ld a, $ff
    push af
    inc sp
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    inc bc
    jp Jump_01c_4802


Jump_01c_4839:
    call Call_01c_4a46
    ld a, $6a
    push af
    inc sp
    ld hl, $a13e
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $6b
    push af
    inc sp
    ld hl, $a13f
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $04
    pop bc
    ret


Call_01c_4862:
    push bc
    add sp, -$07
    ld hl, sp+$05
    ld [hl], $41
    inc hl
    ld [hl], $a1
    dec hl
    dec hl
    ld [hl], $ff

Jump_01c_4870:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, sp+$00
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $a2
    inc hl
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $00
    jp nc, Jump_01c_48cd

    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $20
    jp nc, Jump_01c_48c3

    ld hl, sp+$04
    ld a, [hl]
    cp $ff
    jp nz, Jump_01c_48ba

    ld hl, sp+$04
    ld [hl], c
    jp Jump_01c_48c3


Jump_01c_48ba:
    xor a
    ld hl, sp+$04
    ld a, [hl]
    sbc c
    jp nc, Jump_01c_48c3

    ld [hl], c

Jump_01c_48c3:
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_01c_48ca

    inc hl
    inc [hl]

jr_01c_48ca:
    jp Jump_01c_4870


Jump_01c_48cd:
    ld hl, sp+$04
    ld e, [hl]
    add sp, $07
    pop bc
    ret


Call_01c_48d4:
    push bc
    add sp, -$07
    ld hl, sp+$05
    ld [hl], $41
    inc hl
    ld [hl], $a1
    ld hl, $0020
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c957
    push hl
    call Call_000_3892
    add sp, $05

Jump_01c_48ef:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_491a

    inc hl
    ld a, [hl]
    cp $a2
    jp nz, Jump_01c_491a

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_491a

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_4965

Jump_01c_491a:
    ld hl, sp+$05
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_01c_4929

    inc hl
    inc [hl]

jr_01c_4929:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$07
    ld [hl], e
    add sp, $03
    ld a, e
    cp $20
    jp nc, Jump_01c_48ef

    ld de, $c957
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $c98e
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    add $01
    ld c, a
    ld hl, $c98e
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    jp Jump_01c_48ef


Jump_01c_4965:
    add sp, $07
    pop bc
    ret


Call_01c_4969:
    push bc
    add sp, -$07
    ld hl, sp+$05
    ld [hl], $41
    inc hl
    ld [hl], $a1
    dec hl
    dec hl
    ld [hl], $00

Jump_01c_4977:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_49a2

    inc hl
    ld a, [hl]
    cp $a2
    jp nz, Jump_01c_49a2

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_49a2

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_49cd

Jump_01c_49a2:
    ld hl, sp+$05
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_01c_49b1

    inc hl
    inc [hl]

jr_01c_49b1:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $ff
    jp z, Jump_01c_4977

    ld hl, sp+$04
    inc [hl]
    jp Jump_01c_4977


Jump_01c_49cd:
    ld hl, sp+$04
    ld e, [hl]
    add sp, $07
    pop bc
    ret


Call_01c_49d4:
    push bc
    add sp, -$06
    ld hl, sp+$04
    ld [hl], $41
    inc hl
    ld [hl], $a1
    ld hl, sp+$0a
    ld a, [hl]
    cp $20
    jp c, Jump_01c_49e9

    call Call_000_144b

Jump_01c_49e9:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, sp+$00
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $a2
    inc hl
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $00
    jp nc, Jump_01c_4a42

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$0a
    ld a, [hl]
    cp c
    jp nz, Jump_01c_4a38

    ld a, $ff
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_4a38:
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_01c_4a3f

    inc hl
    inc [hl]

jr_01c_4a3f:
    jp Jump_01c_49e9


Jump_01c_4a42:
    add sp, $06
    pop bc
    ret


Call_01c_4a46:
    push bc
    add sp, -$05
    ld hl, $bfc1
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$06
    ld [hl], e
    add sp, $03
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, $c997
    ld [hl], e
    add sp, $03
    call Call_01c_48d4
    ld hl, $c997
    ld a, [hl]
    cp $ff
    jp nz, Jump_01c_4a9e

    ld hl, $c999
    ld [hl], $00
    ld hl, $c997
    ld [hl], $00
    ld hl, $4c11
    push hl
    ld hl, $c556
    push hl
    call Call_000_3834
    add sp, $04
    ld a, $56
    add $07
    ld hl, $c563
    ld [hl], a
    ld a, $c5
    adc $00
    inc hl
    ld [hl], a
    jp Jump_01c_4c0d


Jump_01c_4a9e:
    ld hl, sp+$02
    ld [hl], $00
    xor a
    ld a, $1f
    ld hl, $c997
    sbc [hl]
    jp nc, Jump_01c_4aae

    ld [hl], $00

Jump_01c_4aae:
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4352
    add sp, $01

Jump_01c_4ab9:
    ld hl, sp+$02
    ld a, [hl]
    cp $08
    jp nc, Jump_01c_4ae3

    ld de, $c985
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_01c_4ae3

    ld de, $c556
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, c
    ld [de], a
    ld hl, sp+$02
    inc [hl]
    jp Jump_01c_4ab9


Jump_01c_4ae3:
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld a, $56
    add c
    ld e, a
    ld a, $c5
    adc $00
    ld d, a
    ld a, $2e
    ld [de], a
    ld hl, $c997
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a1
    ld b, a
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$07
    ld [hl], e
    add sp, $03
    ld a, e
    and $f0
    jr nz, jr_01c_4b16

    jp Jump_01c_4ba2


jr_01c_4b16:
    ld de, $c556
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    add $30
    ld b, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    xor a
    ld a, $09
    sbc c
    jp nc, Jump_01c_4b4e

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    add $07
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_01c_4b4e:
    ld hl, sp+$04
    ld a, [hl]
    and $0f
    ld [hl], a
    xor a
    ld a, $09
    sbc [hl]
    jp nc, Jump_01c_4b5f

    ld a, [hl]
    add $07
    ld [hl], a

Jump_01c_4b5f:
    ld hl, sp+$02
    inc [hl]
    ld de, $c556
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$04
    ld a, [hl]
    add $30
    ld [de], a
    dec hl
    dec hl
    inc [hl]
    ld de, $c556
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $c563
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld a, $56
    add c
    ld e, a
    ld a, $c5
    adc $00
    ld d, a
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $c556
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a
    jp Jump_01c_4c02


Jump_01c_4ba2:
    ld de, $c556
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    ld a, [hl]
    add $30
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    xor a
    ld a, $09
    ld hl, sp+$04
    sbc [hl]
    jp nc, Jump_01c_4bd4

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    add $07
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_01c_4bd4:
    ld hl, sp+$02
    inc [hl]
    ld de, $c556
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $c563
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld a, $56
    add c
    ld e, a
    ld a, $c5
    adc $00
    ld d, a
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $c556
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a

Jump_01c_4c02:
    ld hl, sp+$02
    ld a, [hl]
    cp $0d
    jp c, Jump_01c_4c0d

    call Call_000_144b

Jump_01c_4c0d:
    add sp, $05
    pop bc
    ret


    ld e, e
    ld b, l
    ld c, l
    ld d, b
    ld d, h
    ld e, c
    ld e, l
    jr nz, jr_01c_4c1a

Call_01c_4c1a:
jr_01c_4c1a:
    push bc
    add sp, -$08
    ld hl, sp+$0c
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld b, $00
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d

Jump_01c_4c35:
    ld hl, sp+$06
    ld a, [hl]
    cp $f8
    jp nz, Jump_01c_4c44

    inc hl
    ld a, [hl]
    cp $a0
    jp z, Jump_01c_4c7e

Jump_01c_4c44:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0008
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01c_4c7b

    inc hl
    inc [hl]

jr_01c_4c7b:
    jp Jump_01c_4c35


Jump_01c_4c7e:
    ld a, $00
    push af
    inc sp
    ld hl, $a0f8
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$0c
    ld c, [hl]
    ld b, $00
    ld hl, $a100
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d

Jump_01c_4c9e:
    ld hl, sp+$06
    ld a, [hl]
    cp $1f
    jp nz, Jump_01c_4cad

    inc hl
    ld a, [hl]
    cp $a1
    jp z, Jump_01c_4ce7

Jump_01c_4cad:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$04
    ld a, [hl+]
    ld e, [hl]
    inc hl
    ld [hl+], a
    ld [hl], e
    jp Jump_01c_4c9e


Jump_01c_4ce7:
    ld hl, sp+$06
    ld [hl], $41
    inc hl
    ld [hl], $a1

Jump_01c_4cee:
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_4d19

    inc hl
    ld a, [hl]
    cp $a2
    jp nz, Jump_01c_4d19

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_4d19

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_4d54

Jump_01c_4d19:
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $20
    jp nc, Jump_01c_4d4a

    xor a
    ld hl, sp+$0c
    ld a, [hl]
    sbc c
    jp nc, Jump_01c_4d4a

    dec c
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_4d4a:
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01c_4d51

    inc hl
    inc [hl]

jr_01c_4d51:
    jp Jump_01c_4cee


Jump_01c_4d54:
    add sp, $08
    pop bc
    ret


Call_01c_4d58:
    ld hl, sp+$02
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4d63

    call Call_000_144b

Jump_01c_4d63:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_01c_49d4
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4c1a
    add sp, $01
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, $c97d
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp z, Jump_01c_4dac

    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c97d
    cp [hl]
    jp nz, Jump_01c_4da0

    ld hl, $c97d
    ld [hl], $ff
    jp Jump_01c_4dac


Jump_01c_4da0:
    xor a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c97d
    sbc [hl]
    jp nc, Jump_01c_4dac

    dec [hl]

Jump_01c_4dac:
    ld hl, $c97d
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4dbd

    cp $ff
    jp z, Jump_01c_4dbd

    call Call_000_144b

Jump_01c_4dbd:
    ld hl, $c97d
    ld a, [hl]
    push af
    inc sp
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ret


Call_01c_4dd1:
    push bc
    ld hl, $bfb3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    ld hl, $bfcb
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $bfb2
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    ld hl, $bfca
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4e1e

    call Call_000_144b

Jump_01c_4e1e:
    ld hl, sp+$08
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld b, $00
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    inc hl
    ld [hl], $00

Jump_01c_4e39:
    ld hl, sp+$03
    ld a, [hl]
    cp $08
    jp nc, Jump_01c_4e62

    dec hl
    dec hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_4e4c

    inc hl
    inc [hl]

jr_01c_4e4c:
    ld a, $3f
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    inc [hl]
    jp Jump_01c_4e39


Jump_01c_4e62:
    ld hl, sp+$08
    ld c, [hl]
    ld hl, $c97d
    ld [hl], c
    ld a, c
    push af
    inc sp
    call Call_01c_49d4
    add sp, $01
    ld hl, $c97f
    ld [hl], $00
    ld hl, $c978
    push hl
    ld hl, $c977
    push hl
    call Call_01c_415a
    ld hl, sp+$07
    ld [hl], e
    add sp, $04
    ld a, e
    or e
    jp z, Jump_01c_4e94

    call Call_01c_441f
    ld b, e
    xor a
    or b
    jp nz, Jump_01c_4ea1

Jump_01c_4e94:
    ld a, c
    push af
    inc sp
    call Call_01c_49d4
    add sp, $01
    ld e, $00
    jp Jump_01c_4fa1


Jump_01c_4ea1:
    ld a, c
    push af
    inc sp
    call Call_01c_4778
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_01c_4ebc

    ld a, c
    push af
    inc sp
    call Call_01c_49d4
    add sp, $01
    ld e, $02
    jp Jump_01c_4fa1


Jump_01c_4ebc:
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$06
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp z, Jump_01c_4eec

    ld hl, sp+$03
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a1
    ld b, a
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$06
    ld [hl], e
    add sp, $03

Jump_01c_4eec:
    ld hl, $c97d
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4efd

    cp $ff
    jp z, Jump_01c_4efd

    call Call_000_144b

Jump_01c_4efd:
    ld hl, $c97d
    ld a, [hl]
    push af
    inc sp
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    ld a, [hl]
    add $01
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c97d
    ld b, [hl]
    ld c, $00
    ld a, b
    add $00
    ld b, a
    ld a, c
    adc $a1
    ld c, a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $c97d
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld b, $00
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    inc hl
    ld [hl], $00

Jump_01c_4f53:
    ld hl, sp+$03
    ld a, [hl]
    cp $08
    jp nc, Jump_01c_4f88

    ld de, $c432
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl+], a
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_4f71

    inc hl
    inc [hl]

jr_01c_4f71:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    inc [hl]
    jp Jump_01c_4f53


Jump_01c_4f88:
    ld a, $20
    push af
    inc sp
    ld hl, $bfc1
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call Call_01c_4a46
    call Call_01c_4dd1
    ld e, $01

Jump_01c_4fa1:
    add sp, $04
    pop bc
    ret


Call_01c_4fa5:
    push bc
    add sp, -$05
    ld hl, $c980
    ld [hl], $01
    ld hl, sp+$09
    ld a, [hl]
    cp $20
    jp c, Jump_01c_4fb8

    call Call_000_144b

Jump_01c_4fb8:
    ld hl, sp+$09
    ld a, [hl]
    ld hl, $c97d
    ld [hl], a
    ld hl, $c97f
    ld [hl], $01
    call Call_01c_42e9
    ld c, e
    ld a, c
    or a
    jp nz, Jump_01c_4fd2

    ld e, $00
    jp Jump_01c_5073


Jump_01c_4fd2:
    ld hl, $c981
    ld [hl], $00
    ld hl, $c97b
    ld [hl], $00
    inc hl
    ld [hl], $a0
    ld hl, $c97a
    ld [hl], $00
    xor a
    ld hl, sp+$0a
    or [hl]
    jp z, Jump_01c_4ff1

    ld bc, $741d
    jp Jump_01c_4ff4


Jump_01c_4ff1:
    ld bc, $73eb

Jump_01c_4ff4:
    ld hl, $c982
    ld [hl], c
    inc hl
    ld [hl], b
    call Call_01c_744d
    ld hl, $c97a
    ld a, [hl]
    cp $04
    jp nz, Jump_01c_500a

    ld a, $01
    jr jr_01c_500b

Jump_01c_500a:
    xor a

jr_01c_500b:
    ld c, a
    xor a
    ld hl, $c980
    or [hl]
    jr z, jr_01c_5015

    xor a
    or c

jr_01c_5015:
    jr z, jr_01c_5019

    ld a, $01

jr_01c_5019:
    ld hl, sp+$04
    ld [hl], a
    ld hl, $c97b
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c97c
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$00
    ld a, [hl]
    or a
    jp nz, Jump_01c_504d

    inc hl
    ld a, [hl]
    cp $a0
    jp nz, Jump_01c_504d

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_504d

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_504d

    ld a, $01
    jr jr_01c_504e

Jump_01c_504d:
    xor a

jr_01c_504e:
    ld c, a
    xor a
    ld hl, sp+$04
    or [hl]
    jr z, jr_01c_5057

    xor a
    or c

jr_01c_5057:
    jr z, jr_01c_505b

    ld a, $01

jr_01c_505b:
    ld c, a
    xor a
    ld hl, $c981
    or [hl]
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_01c_506d

    xor a
    or b

jr_01c_506d:
    jr z, jr_01c_5071

    ld a, $01

jr_01c_5071:
    ld c, a
    ld e, c

Jump_01c_5073:
    add sp, $05
    pop bc
    ret


Call_01c_5077:
    push bc
    ld c, $08

Jump_01c_507a:
    ld a, c
    add $ff
    ld b, a
    ld a, $e0
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld c, b
    xor a
    or c
    jp nz, Jump_01c_507a

    pop bc
    ret


    nop
    dec b
    ld a, [bc]
    inc b
    inc b
    dec b

Call_01c_5098:
    push bc
    ldh a, [rIE]
    and $fb
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    ld hl, $c4d3
    ld [hl], $00
    ld a, $00
    ldh [rNR52], a
    call Call_01c_5077
    pop bc
    ret


Call_01c_50b3:
    push bc
    add sp, -$0a
    ld hl, $bfbb
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0c
    ld [hl], e
    add sp, $03
    ld hl, $bfba
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0b
    ld [hl], e
    add sp, $03
    ld hl, $bfbd
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0a
    ld [hl], e
    add sp, $03
    ld hl, $bfbf
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$09
    ld [hl], e
    add sp, $03
    call Call_01c_5098
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4335
    ld b, e
    add sp, $01
    ld hl, $c97e
    ld [hl], b
    xor a
    or b
    jp z, Jump_01c_526d

    ld a, $03
    push af
    inc sp
    ld a, $11
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call $5361
    add sp, $04
    ld hl, $c574
    ld [hl], $e2
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $534e
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c97e
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld de, $c99b
    ld a, b
    ld [de], a
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c99b
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c99b
    ld hl, $0003
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $bfb9
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $00
    push af
    inc sp
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4fa5
    ld c, e
    add sp, $02
    xor a
    or c
    jp nz, Jump_01c_5214

    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld hl, $535b
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01c_51e3:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_51e3

Jump_01c_51ec:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp z, Jump_01c_51ec

Jump_01c_51f5:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_51f5

    ld hl, $c56d
    ld [hl], $00
    ld c, $90
    ld b, $24
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_01c_534a


Jump_01c_5214:
    ld de, $c99b
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, $bfb9
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    jp Jump_01c_5297


Jump_01c_526d:
    ld c, $d1
    ld b, $45
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c997
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a1
    ld b, a
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_5297:
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfba
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbb
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbd
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbf
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_52f0

    cp $ff
    jp z, Jump_01c_52f0

    call Call_000_144b

Jump_01c_52f0:
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $20
    push af
    inc sp
    ld hl, $bfc1
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call Call_01c_4a46
    call Call_01c_4dd1
    ld c, $94
    ld b, $7c
    ld a, $01
    push af
    inc sp
    push bc
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    xor a
    ld hl, $c995
    or [hl]
    jp z, Jump_01c_5337

    ld hl, $c402
    ld [hl], $0d

Jump_01c_5337:
    ld c, $90
    ld b, $24
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c56d
    ld [hl], $00

Jump_01c_534a:
    add sp, $0a
    pop bc
    ret


    ld c, h
    ld c, a
    ld b, c
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $2e
    ld l, $31
    cpl
    nop
    ld b, [hl]
    ld b, c
    ld c, c
    ld c, h
    ld hl, $c500
    add sp, -$0e
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld hl, sp+$13
    ld a, [hl+]
    inc hl
    add [hl]
    ld hl, sp+$0b
    ld [hl+], a
    inc hl
    ld a, [hl]
    ld hl, sp+$14
    add [hl]
    ld hl, sp+$0a
    ld [hl+], a
    ld a, [hl]
    add $ff
    ld c, a

Jump_01c_537e:
    xor a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$0a
    sbc [hl]
    jp nc, Jump_01c_5517

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0d
    cp [hl]
    jr nz, jr_01c_539a

    ld a, $01
    jr jr_01c_539b

jr_01c_539a:
    xor a

jr_01c_539b:
    ld hl, sp+$09
    ld [hl+], a
    ld a, [hl]
    add $ff
    ld b, a
    ld hl, sp+$0d
    ld a, [hl]
    cp b
    jp nz, Jump_01c_53ad

    ld a, $01
    jr jr_01c_53ae

Jump_01c_53ad:
    xor a

jr_01c_53ae:
    ld hl, sp+$08
    ld [hl], a
    ld a, $5e
    add $e0
    ld hl, $c565
    ld [hl], a
    ld a, $08
    adc $ff
    inc hl
    ld [hl], a

Jump_01c_53bf:
    xor a
    ld hl, sp+$0c
    ld a, [hl]
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_01c_5511

    ld hl, $c565
    ld [hl], $b7
    inc hl
    ld [hl], $08
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_53e6

    ld hl, sp+$06
    ld [hl], $48
    jp Jump_01c_53ea


Jump_01c_53e6:
    ld hl, sp+$06
    ld [hl], $d2

Jump_01c_53ea:
    ld hl, sp+$06
    ld a, [hl]
    ldh [$8c], a
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    xor a
    ld hl, sp+$09
    or [hl]
    jp z, Jump_01c_5465

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01c_5426

    ld a, $01
    jr jr_01c_5427

jr_01c_5426:
    xor a

jr_01c_5427:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_01c_543a

    ld a, $00
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_543a:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01c_5445

    ld a, $01
    jr jr_01c_5446

Jump_01c_5445:
    xor a

jr_01c_5446:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01c_5459

    ld a, $03
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_5459:
    ld a, $07
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_5465:
    xor a
    ld hl, sp+$08
    or [hl]
    jp z, Jump_01c_54b7

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01c_5478

    ld a, $01
    jr jr_01c_5479

jr_01c_5478:
    xor a

jr_01c_5479:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp z, Jump_01c_548c

    ld a, $01
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_548c:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01c_5497

    ld a, $01
    jr jr_01c_5498

Jump_01c_5497:
    xor a

jr_01c_5498:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01c_54ab

    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_54ab:
    ld a, $05
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_54b7:
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01c_54c3

    ld a, $01
    jr jr_01c_54c4

jr_01c_54c3:
    xor a

jr_01c_54c4:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_01c_54d7

    ld a, $04
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_54d7:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01c_54e2

    ld a, $01
    jr jr_01c_54e3

Jump_01c_54e2:
    xor a

jr_01c_54e3:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01c_54f6

    ld a, $06
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_5507


Jump_01c_54f6:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01c_5507:
    ld hl, sp+$0c
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01c_53bf


Jump_01c_5511:
    ld hl, sp+$0d
    inc [hl]
    jp Jump_01c_537e


Jump_01c_5517:
    ld a, $5e
    add $e0
    ld hl, $c565
    ld [hl], a
    ld a, $08
    adc $ff
    inc hl
    ld [hl], a
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    add sp, $0e
    pop bc
    ret


Call_01c_5531:
    push bc
    ld hl, $c990
    ld c, [hl]
    ld a, $95
    add c
    ld e, a
    ld a, $50
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, [hl]
    ld a, $92
    add b
    ld e, a
    ld a, $50
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


Call_01c_5563:
    push bc
    ld hl, $c997
    ld a, [hl]
    ld hl, $c999
    sub [hl]
    ld c, a
    cp $10
    jp c, Jump_01c_5575

    call Call_000_144b

Jump_01c_5575:
    ld hl, $c997
    ld a, [hl]
    add $04
    ld hl, $c999
    sub [hl]
    ld c, a
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $0e
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


Call_01c_5597:
    push bc
    call Call_01c_4862
    ld c, e
    xor a
    ld a, c
    ld hl, $c997
    sbc [hl]
    jp nc, Jump_01c_55a6

    ld [hl], c

Jump_01c_55a6:
    ld hl, $c997
    ld a, [hl]
    ld hl, $c999
    sub [hl]
    ld c, a
    xor a
    ld a, $0a
    sbc c
    jp nc, Jump_01c_55d5

    ld hl, $c997
    ld a, [hl]
    ld hl, $c999
    ld [hl], a

Jump_01c_55be:
    ld hl, $c997
    ld a, [hl]
    ld hl, $c999
    sub [hl]
    ld c, a
    cp $0a
    jp nc, Jump_01c_55d5

    xor a
    or [hl]
    jp z, Jump_01c_55d5

    dec [hl]
    jp Jump_01c_55be


Jump_01c_55d5:
    ld hl, $c997
    ld a, [hl]
    cp $1f
    jp nz, Jump_01c_55e3

    ld hl, $c999
    ld [hl], $14

Jump_01c_55e3:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_55ef

    call Call_000_144b

Jump_01c_55ef:
    pop bc
    ret


Call_01c_55f1:
    push bc
    add sp, -$07
    ld hl, sp+$06
    ld [hl], $00
    ld hl, $c999
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$07
    ld [hl], e
    add sp, $03
    call Call_01c_4862
    ld c, e
    ld a, c
    add $01
    ld hl, sp+$03
    ld [hl], a
    call Call_01c_48d4
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $98

Jump_01c_562c:
    ld hl, sp+$06
    ld a, [hl]
    cp $0c
    ld a, $00
    rla
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_01c_5734

    ld hl, sp+$05
    ld a, [hl]
    cp $20
    jp nc, Jump_01c_5734

    ld de, $c957
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$02
    ld [hl+], a
    ld a, [hl+]
    inc hl
    cp [hl]
    jr nz, jr_01c_5658

    jp Jump_01c_5734


jr_01c_5658:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$04
    ld a, [hl+]
    cp [hl]
    jp nz, Jump_01c_5682

    ld b, $2a
    jp Jump_01c_5684


Jump_01c_5682:
    ld b, $20

Jump_01c_5684:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_01c_5718

    ld hl, sp+$05
    ld b, [hl]
    ld c, $00
    ld a, b
    add $00
    ld b, a
    ld a, c
    adc $a1
    ld c, a
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4352
    add sp, $01
    ld hl, $c985
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $2e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld a, c
    and $f0
    jp nz, Jump_01c_56da

    call Call_000_2f24

Jump_01c_56da:
    ld hl, $c985
    push hl
    call Call_000_36e0
    ld b, d
    ld c, e
    add sp, $02
    ld a, $09
    sub c
    ld c, a
    ld a, $00
    sbc b
    ld b, a

Jump_01c_56ed:
    ld hl, sp+$00
    ld [hl], c
    ld a, c
    add $ff
    ld b, a
    ld c, b
    xor a
    or [hl]
    jp z, Jump_01c_5700

    call Call_000_2f24
    jp Jump_01c_56ed


Jump_01c_5700:
    ld hl, sp+$02
    ld a, [hl]
    and $f0
    jp nz, Jump_01c_570b

    call Call_000_2f24

Jump_01c_570b:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01c_5721


Jump_01c_5718:
    ld hl, $57ac
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01c_5721:
    ld hl, $c574
    ld a, [hl]
    add $0f
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, sp+$06
    inc [hl]
    dec hl
    inc [hl]
    jp Jump_01c_562c


Jump_01c_5734:
    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_01c_5794

    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c999
    add [hl]
    ld c, a
    cp $20
    jp nc, Jump_01c_5794

    ld hl, sp+$06
    ld a, [hl]
    add $04
    ld b, a
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$04
    ld a, [hl]
    cp c
    jp nz, Jump_01c_5788

    ld a, $2a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01c_578b


Jump_01c_5788:
    call Call_000_2f24

Jump_01c_578b:
    ld hl, $57ac
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01c_5794:
    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c999
    add [hl]
    ld hl, $c991
    ld [hl], a
    cp $20
    jp nz, Jump_01c_57a8

    ld hl, $c991
    dec [hl]

Jump_01c_57a8:
    add sp, $07
    pop bc
    ret


    ld e, e
    ld b, l
    ld c, l
    ld d, b
    ld d, h
    ld e, c
    ld e, l
    jr nz, jr_01c_57d5

    jr nz, @+$22

    jr nz, @+$22

    jr nc, jr_01c_57bb

Call_01c_57bb:
jr_01c_57bb:
    push bc
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c556
    push hl
    call Call_000_36e0
    ld b, d
    ld c, e
    add sp, $02

Jump_01c_57d5:
jr_01c_57d5:
    ld a, c
    cp $0c
    jp z, Jump_01c_57e2

    call Call_000_2f24
    inc c
    jp Jump_01c_57d5


Jump_01c_57e2:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld hl, $589a
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $45
    inc hl
    ld [hl], $98
    ld hl, $589f
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $4a
    inc hl
    ld [hl], $98
    ld hl, $58a4
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_01c_55f1
    xor a
    ld hl, $c996
    or [hl]
    jp z, Jump_01c_5846

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5839

    ld c, $03
    jp Jump_01c_583b


Jump_01c_5839:
    ld c, $02

Jump_01c_583b:
    ld a, c
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    jp Jump_01c_585d


Jump_01c_5846:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5853

    ld c, $03
    jp Jump_01c_5855


Jump_01c_5853:
    ld c, $02

Jump_01c_5855:
    ld a, c
    push af
    inc sp
    call Call_01c_5531
    add sp, $01

Jump_01c_585d:
    ld hl, $c574
    ld [hl], $20
    inc hl
    ld [hl], $9a
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_01c_4969
    ld c, e
    ld b, $00
    push bc
    ld hl, $58aa
    push hl
    call Call_000_35c5
    add sp, $04
    xor a
    ld hl, $c56c
    or [hl]
    jp z, Jump_01c_588d

    ld de, $58bb
    ld c, e
    ld b, d
    jp Jump_01c_5892


Jump_01c_588d:
    ld de, $58be
    ld c, e
    ld b, d

Jump_01c_5892:
    push bc
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


    ld c, h
    ld c, a
    ld b, c
    ld b, h
    nop
    ld d, e
    ld b, c
    ld d, [hl]
    ld b, l
    nop
    ld b, l
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    nop
    ld b, d
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld d, e
    jr nz, @+$57

    ld d, e
    ld b, l
    ld b, h
    ld a, [hl-]
    jr nz, @+$27

    ld a, b
    cpl
    nop
    inc sp
    ld b, [hl]
    nop
    ld b, d
    ld b, [hl]
    nop

Call_01c_58c1:
    push bc
    ld hl, $c997
    ld c, [hl]

Jump_01c_58c6:
    inc c
    ld a, c
    cp $20
    jp nc, Jump_01c_58fd

    call Call_01c_4862
    ld b, e
    inc b
    xor a
    ld a, b
    sbc c
    jp c, Jump_01c_58fd

    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, b
    cp c
    jp z, Jump_01c_58f9

    ld a, c
    push af
    inc sp
    call Call_01c_4335
    ld b, e
    add sp, $01
    ld a, b
    or a
    jp nz, Jump_01c_58c6

Jump_01c_58f9:
    ld hl, $c997
    ld [hl], c

Jump_01c_58fd:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_5909

    call Call_000_144b

Jump_01c_5909:
    pop bc
    ret


Call_01c_590b:
    push bc
    ld hl, $c997
    ld c, [hl]

Jump_01c_5910:
    dec c
    ld a, c
    cp $ff
    jp z, Jump_01c_593c

    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, b
    cp c
    jp z, Jump_01c_5938

    ld a, c
    push af
    inc sp
    call Call_01c_4335
    ld b, e
    add sp, $01
    ld a, b
    or a
    jp nz, Jump_01c_5910

Jump_01c_5938:
    ld hl, $c997
    ld [hl], c

Jump_01c_593c:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_5948

    call Call_000_144b

Jump_01c_5948:
    pop bc
    ret


Call_01c_594a:
    push bc
    ld hl, $c997
    ld a, [hl]
    ld hl, $c999
    sub [hl]
    ld c, a
    xor a
    ld a, $0b
    sbc c
    ld a, $00
    rla
    ld c, a
    ld e, c
    pop bc
    ret


Call_01c_595f:
    push bc
    add sp, -$02
    ld hl, $bfb2
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    ld hl, $bfca
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld b, $00
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, $003c
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, $bfb3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $bfcb
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld b, $00
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld [hl], a
    dec hl
    ld [hl], e
    inc hl
    ld d, [hl]
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$03
    ld hl, $c995
    ld [hl], $00
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_01c_5eb6

    cp $02
    jp z, Jump_01c_5e2f

    cp $04
    jp z, Jump_01c_5fb8

    cp $08
    jp z, Jump_01c_5f42

    cp $10
    jp z, Jump_01c_5a38

    cp $20
    jp z, Jump_01c_5dab

    cp $50
    jp z, Jump_01c_5a33

    cp $80
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01c_6027

    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_01c_6027


Jump_01c_5a33:
    ld hl, $c995
    ld [hl], $01

Jump_01c_5a38:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01c_5a45

    ld e, $00
    jp Jump_01c_6029


Jump_01c_5a45:
    xor a
    ld hl, $c993
    or [hl]
    jp z, Jump_01c_5af7

    ld [hl], $00
    ld a, $00
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $c994
    or [hl]
    jp nz, Jump_01c_5dc0

    xor a
    ld hl, $c992
    or [hl]
    jp nz, Jump_01c_5a7c

    call Call_01c_50b3
    ld e, $01
    jp Jump_01c_6029


Jump_01c_5a7c:
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4d58
    add sp, $01
    ld a, $03
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call $5361
    add sp, $04
    ld hl, $c574
    ld [hl], $03
    inc hl
    ld [hl], $99
    ld hl, $602f
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5abb

    ld bc, $07d0
    jp Jump_01c_5abe


Jump_01c_5abb:
    ld bc, $03e8

Jump_01c_5abe:
    push bc
    call Call_000_3986
    add sp, $02
    ld a, $00
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    ld hl, $c996
    ld [hl], $00
    call Call_01c_5597
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5ae3

    call Call_000_17ca
    jp Jump_01c_5af1


Jump_01c_5ae3:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01c_5af1:
    call Call_01c_57bb
    jp Jump_01c_6027


Jump_01c_5af7:
    xor a
    ld hl, $c996
    or [hl]
    jp z, Jump_01c_5d1c

    ld a, $02
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    ld hl, $c998
    ld a, [hl]
    or a
    jp z, Jump_01c_5b1d

    cp $01
    jp z, Jump_01c_5bd8

    cp $02
    jp z, Jump_01c_5c69

    jp Jump_01c_5d06


Jump_01c_5b1d:
    ld hl, $c563
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $21
    jp nz, Jump_01c_5bd0

    ld hl, $c992
    ld [hl], $00
    ld a, $06
    push af
    inc sp
    ld a, $12
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call $5361
    add sp, $04
    ld hl, $c993
    ld [hl], $01
    ld hl, $c994
    ld [hl], $01
    ld hl, $c574
    ld [hl], $c2
    inc hl
    ld [hl], $98
    call Call_01c_595f
    ld b, d
    ld c, e
    push bc
    ld hl, $603c
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $e2
    inc hl
    ld [hl], $98
    ld hl, $604c
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $99
    ld hl, $605d
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $2b
    inc hl
    ld [hl], $99
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $6061
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5bcb

    ld a, $01
    ldh [rVBK], a
    ld hl, $602d
    push hl
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a

Jump_01c_5bcb:
    ld e, $01
    jp Jump_01c_6029


Jump_01c_5bd0:
    call Call_01c_50b3
    ld e, $01
    jp Jump_01c_6029


Jump_01c_5bd8:
    ld a, $00
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld de, $c432
    ld a, $00
    ld [de], a
    ld a, [hl]
    cp $ff
    jp z, Jump_01c_5c4c

    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4352
    add sp, $01
    ld hl, $c985
    push hl
    ld hl, $6064
    push hl
    call Call_000_3866
    ld c, d
    ld b, e
    add sp, $04
    ld a, b
    or c
    jp z, Jump_01c_5c4c

    ld hl, sp+$02
    ld [hl], $00

Jump_01c_5c1f:
    ld hl, sp+$02
    ld a, [hl]
    cp $09
    jp nc, Jump_01c_5c4c

    ld de, $c432
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld de, $c985
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc hl
    inc [hl]
    jp Jump_01c_5c1f


Jump_01c_5c4c:
    ld hl, $c431
    ld [hl], $00
    ld hl, $c996
    ld [hl], $00
    ld c, $8a
    ld b, $4e
    push bc
    ld a, $1b
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01c_6029


Jump_01c_5c69:
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    call Call_01c_4335
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01c_5d01

    ld hl, $c992
    ld [hl], $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $05
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call $5361
    add sp, $04
    ld hl, $c993
    ld [hl], $01
    ld hl, $c994
    ld [hl], $01
    ld hl, $c574
    ld [hl], $e6
    inc hl
    ld [hl], $98
    ld hl, $606c
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $99
    ld hl, $6073
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $2b
    inc hl
    ld [hl], $99
    ld hl, $6077
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5ce6

    ld c, $03
    jp Jump_01c_5ce8


Jump_01c_5ce6:
    ld c, $02

Jump_01c_5ce8:
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld e, $01
    jp Jump_01c_6029


Jump_01c_5d01:
    ld e, $00
    jp Jump_01c_6029


Jump_01c_5d06:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5d11

    call Call_000_17ca

Jump_01c_5d11:
    ld hl, $c996
    ld [hl], $00
    call Call_01c_57bb
    jp Jump_01c_6027


Jump_01c_5d1c:
    ld hl, $c990
    ld a, [hl]
    or a
    jp z, Jump_01c_5d2e

    cp $01
    jp z, Jump_01c_5d2e

    cp $02
    jp nz, Jump_01c_6027

Jump_01c_5d2e:
    ld hl, $c990
    ld a, [hl]
    ld hl, $c998
    ld [hl], a
    ld hl, $c996
    ld [hl], $01
    ld hl, $c990
    ld a, [hl]
    cp $01
    jp nz, Jump_01c_5d48

    ld a, $01
    jr jr_01c_5d49

Jump_01c_5d48:
    xor a

jr_01c_5d49:
    ld hl, $c99a
    ld [hl], a
    or a
    jp z, Jump_01c_5d88

    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld hl, $c997
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp nz, Jump_01c_5d6d

    ld hl, $c997
    ld [hl], $00

Jump_01c_5d6d:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_5d79

    call Call_000_144b

Jump_01c_5d79:
    call Call_01c_594a
    ld c, e
    xor a
    or c
    jp z, Jump_01c_5d88

    call Call_01c_5597
    call Call_01c_55f1

Jump_01c_5d88:
    ld a, $02
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5d9e

    ld c, $03
    jp Jump_01c_5da0


Jump_01c_5d9e:
    ld c, $02

Jump_01c_5da0:
    ld a, c
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    jp Jump_01c_6027


Jump_01c_5dab:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01c_5db8

    ld e, $00
    jp Jump_01c_6029


Jump_01c_5db8:
    xor a
    ld hl, $c993
    or [hl]
    jp z, Jump_01c_5de9

Jump_01c_5dc0:
    ld hl, $c993
    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5dd0

    call Call_000_17ca

Jump_01c_5dd0:
    ld hl, $c996
    ld [hl], $00
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01c_57bb
    jp Jump_01c_6027


Jump_01c_5de9:
    xor a
    ld hl, $c996
    or [hl]
    jp z, Jump_01c_5e19

    ld a, $00
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    ld hl, $c996
    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5e0c

    ld c, $03
    jp Jump_01c_5e0e


Jump_01c_5e0c:
    ld c, $02

Jump_01c_5e0e:
    ld a, c
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    jp Jump_01c_6027


Jump_01c_5e19:
    ld hl, $c402
    ld [hl], $09
    ld c, $90
    ld b, $24
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_01c_6027


Jump_01c_5e2f:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c993
    or [hl]
    jp z, Jump_01c_5e7f

    ld hl, $c994
    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5e51

    ld c, $03
    jp Jump_01c_5e53


Jump_01c_5e51:
    ld c, $02

Jump_01c_5e53:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_01c_6027


Jump_01c_5e7f:
    xor a
    ld hl, $c996
    or [hl]
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c990
    or [hl]
    jp z, Jump_01c_6027

    ld a, $01
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    ld hl, $c990
    dec [hl]
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5ea9

    ld c, $03
    jp Jump_01c_5eab


Jump_01c_5ea9:
    ld c, $02

Jump_01c_5eab:
    ld a, c
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    jp Jump_01c_6027


Jump_01c_5eb6:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c993
    or [hl]
    jp z, Jump_01c_5f06

    ld hl, $c994
    ld [hl], $01
    ld a, $00
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5eed

    ld c, $03
    jp Jump_01c_5eef


Jump_01c_5eed:
    ld c, $02

Jump_01c_5eef:
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_01c_6027


Jump_01c_5f06:
    xor a
    ld hl, $c996
    or [hl]
    jp nz, Jump_01c_6027

    ld hl, $c990
    ld c, [hl]
    ld b, $00
    ld hl, $fffe
    add hl, bc
    jp c, Jump_01c_6027

    ld a, $01
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    ld hl, $c990
    inc [hl]
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5f35

    ld c, $03
    jp Jump_01c_5f37


Jump_01c_5f35:
    ld c, $02

Jump_01c_5f37:
    ld a, c
    push af
    inc sp
    call Call_01c_5531
    add sp, $01
    jp Jump_01c_6027


Jump_01c_5f42:
    xor a
    ld hl, $c993
    or [hl]
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c996
    or [hl]
    jp z, Jump_01c_6027

    xor a
    ld hl, $c997
    ld a, [hl]
    ld hl, $c991
    sbc [hl]
    jp nc, Jump_01c_6027

    ld a, $00
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    xor a
    ld hl, $c99a
    or [hl]
    jp nz, Jump_01c_5f76

    ld hl, $c997
    inc [hl]
    jp Jump_01c_5f79


Jump_01c_5f76:
    call Call_01c_58c1

Jump_01c_5f79:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_5f85

    call Call_000_144b

Jump_01c_5f85:
    call Call_01c_594a
    ld c, e
    xor a
    or c
    jp z, Jump_01c_5f9e

Jump_01c_5f8e:
    ld hl, $c999
    inc [hl]
    call Call_01c_594a
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_5f8e

    call Call_01c_55f1

Jump_01c_5f9e:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_5fab

    ld c, $03
    jp Jump_01c_5fad


Jump_01c_5fab:
    ld c, $02

Jump_01c_5fad:
    ld a, c
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    jp Jump_01c_6027


Jump_01c_5fb8:
    xor a
    ld hl, $c993
    or [hl]
    jp nz, Jump_01c_6027

    xor a
    ld hl, $c996
    or [hl]
    jp z, Jump_01c_6027

    xor a
    ld hl, $c997
    or [hl]
    jp z, Jump_01c_6027

    ld a, $00
    push af
    inc sp
    call Call_01c_5563
    add sp, $01
    xor a
    ld hl, $c99a
    or [hl]
    jp nz, Jump_01c_5fe8

    ld hl, $c997
    dec [hl]
    jp Jump_01c_5feb


Jump_01c_5fe8:
    call Call_01c_590b

Jump_01c_5feb:
    ld hl, $c997
    ld a, [hl]
    cp $20
    jp c, Jump_01c_5ff7

    call Call_000_144b

Jump_01c_5ff7:
    call Call_01c_594a
    ld c, e
    xor a
    or c
    jp z, Jump_01c_6010

Jump_01c_6000:
    ld hl, $c999
    dec [hl]
    call Call_01c_594a
    ld c, e
    xor a
    or c
    jp nz, Jump_01c_6000

    call Call_01c_55f1

Jump_01c_6010:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_601d

    ld c, $03
    jp Jump_01c_601f


Jump_01c_601d:
    ld c, $02

Jump_01c_601f:
    ld a, c
    push af
    inc sp
    call Call_01c_5563
    add sp, $01

Jump_01c_6027:
    ld e, $01

Jump_01c_6029:
    add sp, $03
    pop bc
    ret


    inc bc
    inc bc
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, l
    jr nz, jr_01c_607a

    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld b, h
    ld hl, $4c00
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_01c_6067

    ld [hl], l
    jr nz, jr_01c_6092

    ld c, c
    ld c, [hl]
    ld d, l
    ld d, h
    ld b, l
    ld d, e
    nop
    ld c, a
    ld b, [hl]
    jr nz, @+$57

    ld c, [hl]
    ld d, e
    ld b, c
    ld d, [hl]
    ld b, l
    ld b, h
    jr nz, jr_01c_60af

    ld c, a
    ld d, d
    ld c, e
    ccf
    nop
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    nop
    ld e, e
    ld b, l
    ld c, l

jr_01c_6067:
    ld d, b
    ld d, h
    ld e, c
    ld e, l
    nop
    ld b, l
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ccf
    nop
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    nop

Call_01c_607a:
jr_01c_607a:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld hl, $c99f
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    pop bc
    ret


Call_01c_608e:
    ld hl, sp+$03
    ld a, [hl]
    push af

jr_01c_6092:
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c99f
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03
    ret


Call_01c_60a3:
    push bc
    add sp, -$02
    ld hl, $c99f
    ld [hl], $00
    ld hl, sp+$07
    ld a, [hl+]
    ld e, [hl]

jr_01c_60af:
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e

Jump_01c_60b3:
    ld hl, $c99f
    ld a, [hl]
    cp $40
    jp nc, Jump_01c_60de

    ld a, $00
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    cp c
    jp nz, Jump_01c_60d7

    ld hl, $60d7
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Jump_01c_60d7:
    ld hl, $c99f
    inc [hl]
    jp Jump_01c_60b3


Jump_01c_60de:
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$07
    ld a, $02
    push af
    inc sp
    call Call_01c_607a
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, $05
    push af
    inc sp
    call Call_01c_607a
    ld hl, sp+$06
    ld [hl], e
    add sp, $01
    ld a, $09
    push af
    inc sp
    call Call_01c_607a
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    inc hl
    inc hl
    ld a, [hl]
    and $20
    ld hl, sp+$03
    ld [hl+], a
    ld a, [hl]
    and $20
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl]
    and $df
    ld b, a
    ld hl, sp+$06
    ld [hl], b
    dec hl
    dec hl
    ld c, [hl]
    ld b, $00
    ld a, c
    and $df
    ld c, a
    ld [hl], c
    inc hl
    inc hl
    ld a, [hl]
    add $08
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    add $08
    ld [hl+], a
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    xor a
    ld hl, sp+$03
    or [hl]
    jp z, Jump_01c_6165

    inc hl
    inc hl
    ld a, [hl]
    or $40
    ld [hl], a

Jump_01c_6165:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_01c_6172

    ld hl, sp+$05
    ld a, [hl]
    or $20
    ld [hl], a

Jump_01c_6172:
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    add sp, $07
    pop bc
    ret


Call_01c_6184:
    push bc
    ld bc, $60e2
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, $09
    push af
    inc sp
    call Call_01c_607a
    ld b, e
    add sp, $01
    ld a, c
    add $f8
    ld c, a
    ld a, b
    add $f8
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, b
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_61cb:
    push bc
    ld bc, $6194
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_61db:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld [hl], $90
    inc hl
    ld [hl], $b6

Jump_01c_61e5:
    ld hl, sp+$02
    ld a, [hl]
    cp $90
    jp nz, Jump_01c_61f4

    inc hl
    ld a, [hl]
    cp $b8
    jp z, Jump_01c_6235

Jump_01c_61f4:
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld a, e
    and $0f
    dec hl
    ld [hl], a
    or a
    jp z, Jump_01c_622b

    ld a, [hl]
    cp $0f
    jp z, Jump_01c_622b

    ld hl, sp+$01
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_622b:
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01c_6232

    inc hl
    inc [hl]

jr_01c_6232:
    jp Jump_01c_61e5


Jump_01c_6235:
    add sp, $04
    pop bc
    ret


    push bc
    ld a, $05
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld b, c
    ld a, b
    and $06
    ld b, a
    cp $02
    jp z, Jump_01c_625b

    cp $04
    jp z, Jump_01c_6262

    cp $06
    jp z, Jump_01c_626c

    jp Jump_01c_6273


Jump_01c_625b:
    ld a, c
    or $10
    ld c, a
    jp Jump_01c_6273


Jump_01c_6262:
    ld b, c
    ld a, b
    and $f9
    or $10
    ld c, a
    jp Jump_01c_6273


Jump_01c_626c:
    ld b, c
    ld a, b
    and $f9
    or $14
    ld c, a

Jump_01c_6273:
    ld a, c
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


    push bc
    ld a, $05
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld b, c
    ld a, b
    and $06
    ld b, a
    cp $02
    jp z, Jump_01c_629e

    cp $04
    jp z, Jump_01c_62a5

    jp Jump_01c_62a9


Jump_01c_629e:
    ld a, c
    or $10
    ld c, a
    jp Jump_01c_62a9


Jump_01c_62a5:
    ld a, c
    or $80
    ld c, a

Jump_01c_62a9:
    ld b, c
    ld a, b
    and $f9
    or $01
    ld c, a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_62bd:
    push bc
    ld bc, $6239
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    ld bc, $6281
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_62e4:
    push bc
    add sp, -$03
    ld hl, sp+$01
    ld [hl], $b4
    inc hl
    ld [hl], $be

Jump_01c_62ee:
    ld hl, sp+$01
    ld a, [hl]
    cp $b4
    jp nz, Jump_01c_62fd

    inc hl
    ld a, [hl]
    cp $bf
    jp z, Jump_01c_633f

Jump_01c_62fd:
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    add sp, $03
    ld a, e
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld a, e
    or c
    ld [hl], a
    push af
    inc sp
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    jp Jump_01c_62ee


Jump_01c_633f:
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $0e
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld b, c
    srl b
    srl b
    srl b
    srl b
    ld a, b
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, c
    and $0f
    ld c, a
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6374:
    push bc
    ld bc, $6343
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $0a
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, $0f
    sub c
    ld b, a
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, $0b
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    add $fd
    ld c, a
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_63b9:
    push bc
    ld bc, $6384
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_63c9:
    push bc
    add sp, -$03
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld hl, sp+$01
    ld [hl], $80
    inc hl
    ld [hl], $b6

Jump_01c_63de:
    ld hl, sp+$01
    ld a, [hl]
    cp $80
    jp nz, Jump_01c_63ed

    inc hl
    ld a, [hl]
    cp $b8
    jp z, Jump_01c_6410

Jump_01c_63ed:
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    xor a
    ld a, $01
    sbc [hl]
    jp nc, Jump_01c_6406

    ld a, [hl]
    add $01
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_01c_6406:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01c_640d

    inc hl
    inc [hl]

jr_01c_640d:
    jp Jump_01c_63de


Jump_01c_6410:
    ld hl, sp+$01
    ld [hl], $80
    inc hl
    ld [hl], $ba

Jump_01c_6417:
    ld hl, sp+$01
    ld a, [hl]
    cp $80
    jp nz, Jump_01c_6426

    inc hl
    ld a, [hl]
    cp $bc
    jp z, Jump_01c_644b

Jump_01c_6426:
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_01c_6441

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_01c_6441:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01c_6448

    inc hl
    inc [hl]

jr_01c_6448:
    jp Jump_01c_6417


Jump_01c_644b:
    ld hl, $4000
    ld [hl], $02
    ld hl, sp+$01
    ld [hl], $00
    inc hl
    ld [hl], $a0

Jump_01c_6457:
    ld hl, sp+$01
    ld a, [hl]
    cp $f0
    jp nz, Jump_01c_6466

    inc hl
    ld a, [hl]
    cp $af
    jp z, Jump_01c_648b

Jump_01c_6466:
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_01c_6481

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    inc c
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_01c_6481:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01c_6488

    inc hl
    inc [hl]

jr_01c_6488:
    jp Jump_01c_6457


Jump_01c_648b:
    ld hl, $0000
    ld [hl], $00
    ei
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, $0f
    xor c
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_64b1:
    push bc
    ld bc, $6495
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $09
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    inc c
    ld a, c
    and $03
    ld c, a
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_64de:
    push bc
    ld bc, $64c1
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld c, a
    xor a
    ld a, $08
    sbc c
    jp nc, Jump_01c_6509

    ld c, $f0
    jp Jump_01c_650b


Jump_01c_6509:
    ld c, $00

Jump_01c_650b:
    ld a, c
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6519:
    push bc
    ld bc, $64ee
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    push bc
    ld a, $03
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_6533:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld b, $00
    ld a, $03
    jr jr_01c_6542

jr_01c_653d:
    or a
    rl c
    rl b

jr_01c_6542:
    dec a
    jr nz, jr_01c_653d

    ld a, c
    add $93
    ld c, a
    ld a, b
    adc $b2
    ld b, a
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    bit 7, a
    jp z, Jump_01c_6563

    ld b, $ff
    jp Jump_01c_6564


Jump_01c_6563:
    ld b, c

Jump_01c_6564:
    ld e, b
    pop bc
    ret


Call_01c_6567:
    push bc
    add sp, -$09
    ld hl, sp+$08
    ld [hl], $00
    ld hl, $0080
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $da00
    push hl
    call Call_000_3892
    add sp, $05

Jump_01c_657f:
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_01c_6533
    ld b, e
    add sp, $01
    ld a, b
    cp $80
    jp nc, Jump_01c_65a4

    ld c, $00
    ld d, c
    ld hl, $da00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a

Jump_01c_65a4:
    ld hl, sp+$08
    inc [hl]
    xor a
    or [hl]
    jp nz, Jump_01c_657f

Jump_01c_65ac:
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    ld hl, $da00
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_01c_663f

    dec hl
    dec hl
    ld [hl], $00

Jump_01c_65c9:
    ld hl, sp+$05
    ld a, [hl]
    cp $10
    jp nz, Jump_01c_65d5

    ld a, $01
    jr jr_01c_65d6

Jump_01c_65d5:
    xor a

jr_01c_65d6:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_01c_663f

    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld hl, $5654
    push hl
    ld a, $06
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$07
    ld [hl], e
    add sp, $05
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $0c
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_3718
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld a, e
    ld hl, sp+$04
    ld [hl], a
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld [hl], a
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld hl, $55ff
    push hl
    ld a, $06
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$05
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01c_65c9


Jump_01c_663f:
    ld hl, sp+$08
    inc [hl]
    ld a, [hl]
    cp $80
    jp nz, Jump_01c_65ac

    add sp, $09
    pop bc
    ret


Call_01c_664c:
    push bc
    add sp, -$5d
    ld hl, sp+$1c
    ld [hl], $00
    dec hl
    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $a0
    ld hl, sp+$18
    ld [hl], $00
    inc hl
    ld [hl], $b0
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$11
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01c_666a:
    ld hl, sp+$1c
    ld a, [hl]
    cp $40
    jp z, Jump_01c_669f

    ld hl, sp+$11
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$1c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], d
    ld a, $00
    push af
    inc sp
    ld hl, sp+$1d
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld hl, sp+$13
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$1c
    inc [hl]
    jp Jump_01c_666a


Jump_01c_669f:
    ld hl, sp+$18
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld hl, sp+$19
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$0d
    ld a, [hl]
    cp $f0
    jp nz, Jump_01c_66cb

    inc hl
    ld a, [hl]
    cp $bf
    jp nz, Jump_01c_66cb

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_66cb

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_686f

Jump_01c_66cb:
    ld hl, sp+$17
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld hl, $c46e
    push hl
    ld hl, sp+$1c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c47e
    push hl
    ld hl, sp+$1a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_14ca
    add sp, $05

Jump_01c_66f8:
    ld hl, sp+$16
    ld a, [hl]
    cp $10
    jp nz, Jump_01c_6704

    ld a, $01
    jr jr_01c_6705

Jump_01c_6704:
    xor a

jr_01c_6705:
    ld hl, sp+$0c
    ld [hl], a
    or a
    jp nz, Jump_01c_684f

    ld de, $c47e
    ld hl, sp+$16
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$1c
    ld [hl], a
    ld a, [hl]
    cp $40
    jp nz, Jump_01c_6725

    ld a, $01
    jr jr_01c_6726

Jump_01c_6725:
    xor a

jr_01c_6726:
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp z, Jump_01c_6734

    ld hl, sp+$17
    ld [hl], $00
    jp Jump_01c_6782


Jump_01c_6734:
    ld hl, sp+$1c
    ld a, [hl]
    cp $40
    ld a, $00
    rla
    ld hl, sp+$13
    ld [hl], a
    or a
    jp z, Jump_01c_6782

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$1c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0a
    ld [hl], a
    ld a, [hl]
    cp $03
    jp nz, Jump_01c_675e

    ld a, $01
    jr jr_01c_675f

Jump_01c_675e:
    xor a

jr_01c_675f:
    ld hl, sp+$0b
    ld [hl], a
    or a
    jp z, Jump_01c_677e

    ld a, $04
    push af
    inc sp
    ld hl, sp+$1d
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld hl, sp+$0b
    ld [hl], e
    add sp, $02
    ld a, e
    ld hl, sp+$17
    ld [hl], a
    jp Jump_01c_6782


Jump_01c_677e:
    ld hl, sp+$17
    ld [hl], $00

Jump_01c_6782:
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_01c_6845

    ld de, $c46e
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$15
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_01c_6845

    ld a, [hl]
    add $ff
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$15
    ld [hl], a
    ld a, $0c
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_374f
    ld hl, sp+$0a
    ld [hl], e
    add sp, $02
    ld a, e
    ld hl, sp+$15
    ld [hl], a
    add $fd
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$15
    ld [hl], a

Jump_01c_67c0:
    ld hl, sp+$15
    ld a, [hl]
    and $80
    ld c, a
    or c
    jp z, Jump_01c_67e8

    ld a, [hl]
    add $01
    ld hl, sp+$05
    ld [hl], a
    ld hl, sp+$15
    ld [hl+], a
    inc hl
    ld a, [hl]
    and $f0
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01c_67c0

    ld hl, sp+$17
    ld a, [hl]
    add $f0
    ld b, a
    ld [hl], b
    jp Jump_01c_67c0


Jump_01c_67e8:
    xor a
    ld hl, sp+$15
    or [hl]
    jp z, Jump_01c_6818

    ld a, [hl]
    add $ff
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$15
    ld [hl+], a
    inc hl
    ld a, [hl]
    and $f0
    ld b, a
    cp $f0
    jp nz, Jump_01c_6806

    ld a, $01
    jr jr_01c_6807

Jump_01c_6806:
    xor a

jr_01c_6807:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp nz, Jump_01c_67e8

    ld hl, sp+$17
    ld a, [hl]
    add $10
    ld c, a
    ld [hl], c
    jp Jump_01c_67e8


Jump_01c_6818:
    ld hl, sp+$16
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$1a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$17
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_6845:
    ld hl, sp+$16
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01c_66f8


Jump_01c_684f:
    ld hl, sp+$18
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$18
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$1a
    ld [hl+], a
    ld [hl], d
    jp Jump_01c_669f


Jump_01c_686f:
    add sp, $5d
    pop bc
    ret


Call_01c_6873:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld a, c
    and $07
    ld b, a
    ld a, $9f
    add b
    ld e, a
    ld a, $68
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld [hl], b
    inc hl
    ld [hl], $00
    ld a, c
    and $f0
    ld b, $00
    dec hl
    or [hl]
    ld c, a
    ld a, b
    inc hl
    or [hl]
    ld b, a
    ld e, c
    add sp, $02
    pop bc
    ret


    nop
    ld b, $08
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    inc c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6873
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, $09
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6873
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, $0a
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6873
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6907:
    push bc
    ld bc, $68a7
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    push bc
    ld a, $03
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_6921:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    and $f0
    ld c, a
    cp $80
    jp z, Jump_01c_6951

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    inc hl
    inc [hl]
    ld a, [hl]
    and $0f
    ld [hl], a
    ld a, c
    or [hl]
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_01c_6951:
    add sp, $03
    pop bc
    ret


Call_01c_6955:
    push bc
    add sp, -$03
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld bc, $b680

Jump_01c_6966:
    ld a, c
    cp $80
    jp nz, Jump_01c_6972

    ld a, b
    cp $b8
    jp z, Jump_01c_6994

Jump_01c_6972:
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    ld a, [hl]
    cp $0e
    jp nz, Jump_01c_6990

    ld hl, $0200
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_6921
    add sp, $02

Jump_01c_6990:
    inc bc
    jp Jump_01c_6966


Jump_01c_6994:
    ld bc, $ba80

Jump_01c_6997:
    ld a, c
    cp $80
    jp nz, Jump_01c_69a3

    ld a, b
    cp $bc
    jp z, Jump_01c_69c5

Jump_01c_69a3:
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $0e
    jp nz, Jump_01c_69c1

    ld hl, $0200
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_6921
    add sp, $02

Jump_01c_69c1:
    inc bc
    jp Jump_01c_6997


Jump_01c_69c5:
    ld hl, $4000
    ld [hl], $02
    ld bc, $a000

Jump_01c_69cd:
    ld a, c
    cp $f0
    jp nz, Jump_01c_69d9

    ld a, b
    cp $af
    jp z, Jump_01c_69fb

Jump_01c_69d9:
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $0e
    jp nz, Jump_01c_69f7

    ld hl, $0ff0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_6921
    add sp, $02

Jump_01c_69f7:
    inc bc
    jp Jump_01c_69cd


Jump_01c_69fb:
    ld hl, $0000
    ld [hl], $00
    ei
    add sp, $03
    pop bc
    ret


Call_01c_6a05:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    and $0f
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_01c_6a1a

    ld a, [hl]
    add $ff
    ld c, a
    jp Jump_01c_6a1d


Jump_01c_6a1a:
    ld hl, sp+$04
    ld c, [hl]

Jump_01c_6a1d:
    ld e, c
    pop bc
    ret


    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6a05
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, $09
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6a05
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    ld a, $0a
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_01c_6a05
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6a80:
    push bc
    ld bc, $6a20
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    push bc
    ld a, $03
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $02
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    ld c, a
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6ab6:
    push bc
    ld bc, $6a9a
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_6ac6:
    push bc
    add sp, -$05
    ld hl, sp+$03
    ld [hl], $90
    inc hl
    ld [hl], $b6
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $00

Jump_01c_6adb:
    ld hl, sp+$03
    ld a, [hl]
    cp $90
    jp nz, Jump_01c_6aea

    inc hl
    ld a, [hl]
    cp $b8
    jp z, Jump_01c_6b4b

Jump_01c_6aea:
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    ld [hl], a
    and $0f
    ld c, a
    or a
    jp z, Jump_01c_6b41

    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    and $0f
    ld c, a
    cp $0f
    jp nz, Jump_01c_6b41

    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$04
    ld [hl], a
    dec hl
    ld [hl], e
    ld a, e
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    and $0f
    ld c, a
    cp $0e
    jp nc, Jump_01c_6b3a

    ld a, [hl]
    add $01
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_01c_6b3a:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01c_6b41

    inc hl
    inc [hl]

Jump_01c_6b41:
jr_01c_6b41:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01c_6b48

    inc hl
    inc [hl]

jr_01c_6b48:
    jp Jump_01c_6adb


Jump_01c_6b4b:
    ld hl, $0000
    ld [hl], $00
    ei
    add sp, $05
    pop bc
    ret


Call_01c_6b55:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld [hl], $bf
    inc hl
    ld [hl], $be

Jump_01c_6b5f:
    ld hl, sp+$02
    ld a, [hl]
    cp $bf
    jp nz, Jump_01c_6b6e

    inc hl
    ld a, [hl]
    cp $bf
    jp z, Jump_01c_6bd3

Jump_01c_6b6e:
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld c, e
    srl c
    srl c
    srl c
    srl c
    xor a
    sbc c
    ld c, a
    push af
    inc sp
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$01
    ld a, [hl]
    and $0f
    ld c, a
    xor a
    sbc c
    dec hl
    ld [hl+], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld b, l
    ld c, h
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    jp Jump_01c_6b5f


Jump_01c_6bd3:
    add sp, $04
    pop bc
    ret


    push bc
    ld a, $07
    push af
    inc sp
    call Call_01c_607a
    ld c, e
    add sp, $01
    ld a, c
    add a
    and $78
    ld c, a
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01c_608e
    add sp, $02
    pop bc
    ret


Call_01c_6bf4:
    push bc
    ld bc, $6bd7
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01c_60a3
    add sp, $03
    pop bc
    ret


Call_01c_6c04:
    push bc
    add sp, -$60
    ld hl, sp+$1f
    ld [hl], $00
    dec hl
    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $a0
    ld hl, sp+$1b
    ld [hl], $00
    inc hl
    ld [hl], $b0
    ld hl, sp+$20
    ld d, h
    ld e, l
    ld hl, sp+$13
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01c_6c22:
    ld hl, sp+$1f
    ld a, [hl]
    cp $40
    jp z, Jump_01c_6c57

    ld hl, sp+$13
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$1f
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$15
    ld [hl+], a
    ld [hl], d
    ld a, $00
    push af
    inc sp
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld hl, sp+$15
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$1f
    inc [hl]
    jp Jump_01c_6c22


Jump_01c_6c57:
    ld hl, sp+$1b
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld hl, sp+$1c
    ld a, [hl]
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$0f
    ld a, [hl]
    cp $f0
    jp nz, Jump_01c_6c83

    inc hl
    ld a, [hl]
    cp $bf
    jp nz, Jump_01c_6c83

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01c_6c83

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_01c_6de6

Jump_01c_6c83:
    ld hl, sp+$1a
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld hl, $c46e
    push hl
    ld hl, sp+$1f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c47e
    push hl
    ld hl, sp+$1d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_14ca
    add sp, $05

Jump_01c_6cb0:
    ld hl, sp+$19
    ld a, [hl]
    cp $10
    jp nz, Jump_01c_6cbc

    ld a, $01
    jr jr_01c_6cbd

Jump_01c_6cbc:
    xor a

jr_01c_6cbd:
    ld hl, sp+$0e
    ld [hl], a
    or a
    jp nz, Jump_01c_6dc6

    ld de, $c47e
    ld hl, sp+$19
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$1f
    ld [hl], a
    ld a, [hl]
    cp $40
    jp nz, Jump_01c_6cdd

    ld a, $01
    jr jr_01c_6cde

Jump_01c_6cdd:
    xor a

jr_01c_6cde:
    ld hl, sp+$0f
    ld [hl], a
    or a
    jp z, Jump_01c_6cec

    ld hl, sp+$1a
    ld [hl], $00
    jp Jump_01c_6d1d


Jump_01c_6cec:
    ld hl, sp+$1f
    ld a, [hl]
    cp $40
    ld a, $00
    rla
    ld hl, sp+$15
    ld [hl], a
    or a
    jp z, Jump_01c_6d1d

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$1f
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0d
    ld [hl], a
    ld a, [hl]
    cp $03
    jp nz, Jump_01c_6d16

    ld a, $01
    jr jr_01c_6d17

Jump_01c_6d16:
    xor a

jr_01c_6d17:
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$1a
    ld [hl], a

Jump_01c_6d1d:
    xor a
    ld hl, sp+$1a
    or [hl]
    jp z, Jump_01c_6dbc

    ld de, $c46e
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$18
    ld [hl], a
    dec hl
    ld [hl], $00
    xor a
    inc hl
    or [hl]
    jp z, Jump_01c_6dbc

    ld a, [hl]
    cp $20
    ld a, $00
    rla
    ld hl, sp+$0b
    ld [hl], a
    or a
    jp nz, Jump_01c_6d8f

    ld hl, sp+$18
    ld a, [hl]
    add $e0
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$18
    ld [hl], a
    and $07
    ld hl, sp+$09
    ld [hl], a
    ld hl, sp+$18
    ld a, [hl]
    and $f0
    ld hl, sp+$08
    ld [hl], a
    srl a
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$06
    add [hl]
    inc hl
    ld [hl], a
    ld de, $6dea
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$17
    ld [hl+], a
    ld a, [hl]
    and $08
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_01c_6d8f

    ld hl, sp+$17
    ld a, [hl]
    add $3c
    ld hl, sp+$05
    ld [hl], a
    ld hl, sp+$17
    ld [hl], a

Jump_01c_6d8f:
    ld hl, sp+$19
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$1d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$17
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_6dbc:
    ld hl, sp+$19
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01c_6cb0


Jump_01c_6dc6:
    ld hl, sp+$1b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$1b
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$1d
    ld [hl+], a
    ld [hl], d
    jp Jump_01c_6c57


Jump_01c_6de6:
    add sp, $60
    pop bc
    ret


    ld bc, $0302
    inc b
    ld b, $08
    inc c
    db $10
    dec b
    ld b, $07
    ld [$0c0a], sp
    db $10
    inc d
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld c, $10
    inc d
    jr jr_01c_6e10

    ld c, $0f
    db $10
    ld [de], a
    inc d
    jr @+$1e

    ld de, $1312
    inc d
    ld d, $18

jr_01c_6e10:
    inc e
    jr nz, jr_01c_6e28

    ld d, $17
    jr jr_01c_6e31

    inc e
    jr nz, jr_01c_6e3e

    add hl, de
    ld a, [de]
    dec de
    inc e
    ld e, $20
    inc h
    jr z, jr_01c_6e40

    ld e, $1f
    jr nz, @+$24

    inc h

jr_01c_6e28:
    jr z, @+$2e

    ld hl, $2322
    inc h
    ld h, $28
    inc l

jr_01c_6e31:
    jr nc, jr_01c_6e58

    ld h, $27
    jr z, jr_01c_6e61

    inc l
    jr nc, jr_01c_6e6e

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_01c_6e3e:
    ld l, $30

jr_01c_6e40:
    inc [hl]
    jr c, jr_01c_6e70

    ld l, $2f
    jr nc, @+$34

    inc [hl]
    jr c, jr_01c_6e84

    ld sp, $3332
    inc [hl]
    ld [hl], $38
    ld a, [hl-]
    dec sp
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_6e90

    ld a, [hl-]

jr_01c_6e58:
    dec sp
    inc a

Call_01c_6e5a:
    push bc
    add sp, -$05
    ld hl, sp+$03
    ld [hl], $d0

jr_01c_6e61:
    inc hl
    ld [hl], $bd
    ld hl, sp+$01
    ld [hl], $d0
    inc hl
    ld [hl], $bd

Jump_01c_6e6b:
    ld hl, sp+$01
    ld a, [hl]

jr_01c_6e6e:
    cp $fa

jr_01c_6e70:
    jp nz, Jump_01c_6e7a

    inc hl
    ld a, [hl]
    cp $bd
    jp z, Jump_01c_6f1d

Jump_01c_6e7a:
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6e85

    inc hl

jr_01c_6e84:
    inc [hl]

jr_01c_6e85:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e

jr_01c_6e90:
    add sp, $03
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6e9c

    inc hl
    inc [hl]

jr_01c_6e9c:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6eb8

    inc hl
    inc [hl]

jr_01c_6eb8:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6ecf

    inc hl
    inc [hl]

jr_01c_6ecf:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6eeb

    inc hl
    inc [hl]

jr_01c_6eeb:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01c_6f02

    inc hl
    inc [hl]

jr_01c_6f02:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01c_6f1a

    inc hl
    inc [hl]

jr_01c_6f1a:
    jp Jump_01c_6e6b


Jump_01c_6f1d:
    add sp, $05
    pop bc
    ret


Call_01c_6f21:
    push bc
    add sp, -$03
    ld bc, $beb2

Jump_01c_6f27:
    ld a, c
    cp $b2
    jp nz, Jump_01c_6f33

    ld a, b
    cp $bf
    jp z, Jump_01c_6f71

Jump_01c_6f33:
    ld hl, $0004
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp z, Jump_01c_6f66

    ld a, $03
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_6f66:
    ld a, c
    add $10
    ld c, a
    ld a, b
    adc $00
    ld b, a
    jp Jump_01c_6f27


Jump_01c_6f71:
    add sp, $03
    pop bc
    ret


    push bc
    ld hl, $bfff
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $16
    jp c, Jump_01c_6f8d

    jp Jump_01c_70a5


Jump_01c_6f8d:
    ld hl, $c574
    ld [hl], $e2
    inc hl
    ld [hl], $98
    ld hl, $70a7
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01c_6f9e:
    ld a, c
    cp $16
    jp nc, Jump_01c_7094

    or a
    jp z, Jump_01c_700f

    cp $01
    jp z, Jump_01c_7015

    cp $02
    jp z, Jump_01c_701b

    cp $03
    jp z, Jump_01c_7021

    cp $04
    jp z, Jump_01c_7027

    cp $05
    jp z, Jump_01c_702d

    cp $06
    jp z, Jump_01c_7033

    cp $07
    jp z, Jump_01c_7039

    cp $08
    jp z, Jump_01c_703f

    cp $09
    jp z, Jump_01c_7045

    cp $0a
    jp z, Jump_01c_704b

    cp $0b
    jp z, Jump_01c_7051

    cp $0c
    jp z, Jump_01c_705a

    cp $0d
    jp z, Jump_01c_7060

    cp $0e
    jp z, Jump_01c_7066

    cp $0f
    jp z, Jump_01c_706c

    cp $10
    jp z, Jump_01c_7072

    cp $11
    jp z, Jump_01c_7078

    cp $12
    jp z, Jump_01c_7081

    cp $13
    jp z, Jump_01c_7087

    cp $15
    jp z, Jump_01c_708d

    jp Jump_01c_7090


Jump_01c_700f:
    call Call_01c_6184
    jp Jump_01c_7090


Jump_01c_7015:
    call Call_01c_61cb
    jp Jump_01c_7090


Jump_01c_701b:
    call Call_01c_61db
    jp Jump_01c_7090


Jump_01c_7021:
    call Call_01c_62bd
    jp Jump_01c_7090


Jump_01c_7027:
    call Call_01c_62e4
    jp Jump_01c_7090


Jump_01c_702d:
    call Call_01c_6374
    jp Jump_01c_7090


Jump_01c_7033:
    call Call_01c_63b9
    jp Jump_01c_7090


Jump_01c_7039:
    call Call_01c_63c9
    jp Jump_01c_7090


Jump_01c_703f:
    call Call_01c_64b1
    jp Jump_01c_7090


Jump_01c_7045:
    call Call_01c_64de
    jp Jump_01c_7090


Jump_01c_704b:
    call Call_01c_6519
    jp Jump_01c_7090


Jump_01c_7051:
    call Call_01c_664c
    call Call_01c_6567
    jp Jump_01c_7090


Jump_01c_705a:
    call Call_01c_6907
    jp Jump_01c_7090


Jump_01c_7060:
    call Call_01c_6955
    jp Jump_01c_7090


Jump_01c_7066:
    call Call_01c_6a80
    jp Jump_01c_7090


Jump_01c_706c:
    call Call_01c_6ab6
    jp Jump_01c_7090


Jump_01c_7072:
    call Call_01c_6ac6
    jp Jump_01c_7090


Jump_01c_7078:
    call Call_01c_6b55
    call Call_01c_6bf4
    jp Jump_01c_7090


Jump_01c_7081:
    call Call_01c_6c04
    jp Jump_01c_7090


Jump_01c_7087:
    call Call_01c_6e5a
    jp Jump_01c_7090


Jump_01c_708d:
    call Call_01c_6f21

Jump_01c_7090:
    inc c
    jp Jump_01c_6f9e


Jump_01c_7094:
    ld a, $16
    push af
    inc sp
    ld hl, $bfff
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01c_70a5:
    pop bc
    ret


    ld d, l
    ld d, b
    ld b, a
    ld d, d
    ld b, c
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $2e
    ld l, $20
    jr nz, @+$22

    nop

Call_01c_70b7:
    ld e, $00
    ld a, [$c977]
    cp $04
    ret c

    cp $10
    ret nc

    ld a, [$c979]
    cp $a0
    ret c

    cp $c0
    ret nc

    inc e
    ret


Call_01c_70cd:
    ld hl, sp+$02
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, d
    bit 7, a
    call nz, Call_000_144b
    ld hl, $c984
    cp [hl]
    jr z, jr_01c_7105

    push de
    ld [hl], a
    swap a
    and $0f
    srl a
    ld [$4000], a
    ld a, [hl]
    and $1f
    or $a0
    ld h, a
    ld d, $db
    xor a
    ld l, a
    ld e, a
    ld a, $0a
    di
    ld [$0000], a

jr_01c_70fa:
    ld a, [hl+]
    ld [de], a
    inc e
    jr nz, jr_01c_70fa

    xor a
    ld [$0000], a
    ei
    pop de

jr_01c_7105:
    ld d, $db
    ld a, [de]
    ld e, a
    ret


Call_01c_710a:
Jump_01c_710a:
    ld hl, $c981
    ld d, $da
    ld e, [hl]
    ld [de], a
    inc [hl]
    jp z, Jump_01c_4000

    ret


Call_01c_7116:
    ld [$cb63], a
    ld a, $c0
    call Call_01c_710a
    ld a, [$cb63]
    call Call_01c_710a
    ld b, $01

jr_01c_7126:
    ld hl, $c97b
    inc [hl]
    jr nz, jr_01c_712e

    inc hl
    inc [hl]

jr_01c_712e:
    inc b
    jr z, jr_01c_7146

    ld hl, $c97c
    bit 7, [hl]
    jr nz, jr_01c_7146

    ld a, [hl-]
    ld d, a
    ld e, [hl]
    push de
    call Call_01c_70cd
    pop hl
    ld a, [$cb63]
    cp e
    jr z, jr_01c_7126

jr_01c_7146:
    dec b
    ld a, b
    jp Jump_01c_710a


Call_01c_714b:
    push bc
    ldh a, [rSC]
    and $81
    ld c, a
    cp $81
    jp nz, Jump_01c_7159

    call Call_000_144b

Jump_01c_7159:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $cbdb
    ld [hl], a
    call Call_000_346a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01c_7170

    ld c, $06
    jp Jump_01c_7172


Jump_01c_7170:
    ld c, $03

Jump_01c_7172:
    ld b, $00
    push bc
    call Call_000_3986
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$05
    ld hl, $c414
    ld a, [hl]
    cp $02
    jp z, Jump_01c_718b

    call Call_000_144b

Jump_01c_718b:
    xor a
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp c, Jump_01c_719a

    call Call_000_144b

Jump_01c_719a:
    xor a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp c, Jump_01c_71a9

    call Call_000_144b

Jump_01c_71a9:
    xor a
    ld a, $06
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_01c_71b6

    call Call_000_144b

Jump_01c_71b6:
    xor a
    ld a, $2a
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_01c_71c3

    call Call_000_144b

Jump_01c_71c3:
    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_01c_71d4

    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp z, Jump_01c_71d7

Jump_01c_71d4:
    jp Jump_01c_7299


Jump_01c_71d7:
    ld hl, $cb64
    ld [hl], $01
    ld a, $00
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    ld a, $fe
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c412
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c40e
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c40f
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c410
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c411
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a

Jump_01c_722c:
    xor a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_01c_7291

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld a, $2a
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $c579
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d

Jump_01c_7259:
    xor a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_01c_728b

    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    push af
    inc sp
    call Call_01c_714b
    add sp, $01
    ld hl, sp+$03
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01c_7259


Jump_01c_728b:
    ld hl, sp+$04
    inc [hl]
    jp Jump_01c_722c


Jump_01c_7291:
    call Call_000_1e9a
    ld hl, $cb64
    ld [hl], $00

Jump_01c_7299:
    add sp, $05
    pop bc
    ret


Call_01c_729d:
    push bc

Jump_01c_729e:
    ld hl, $cbdd
    ld a, [hl]
    cp $02
    jp nz, Jump_01c_72b0

    call Call_000_391e
    ld c, e
    ld a, c
    or a
    jp z, Jump_01c_729e

Jump_01c_72b0:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $cbdc
    ld a, [hl]
    ld [de], a
    call Call_000_347d
    pop bc
    ret


    push bc
    add sp, -$07
    ld hl, $c414
    ld [hl], $01
    ld hl, $cb64
    ld [hl], $01
    ld a, $08
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    call Call_000_347d
    ld hl, $c412
    push hl
    call Call_01c_729d
    add sp, $02
    ld hl, $c40e
    push hl
    call Call_01c_729d
    add sp, $02
    ld hl, $c40f
    push hl
    call Call_01c_729d
    add sp, $02
    ld hl, $c410
    push hl
    call Call_01c_729d
    add sp, $02
    ld hl, $c411
    push hl
    call Call_01c_729d
    add sp, $02
    xor a
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_01c_73a5

    xor a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_01c_73a5

    xor a
    ld a, $06
    ld hl, $c410
    sbc [hl]
    jp c, Jump_01c_73a5

    xor a
    ld a, $2a
    ld hl, $c411
    sbc [hl]
    jp c, Jump_01c_73a5

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$06
    ld [hl], a

Jump_01c_7338:
    xor a
    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_01c_73a0

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    ld a, $2a
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $c579
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d

Jump_01c_7365:
    xor a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01c_739a

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01c_729d
    add sp, $02
    ld hl, sp+$05
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01c_7365


Jump_01c_739a:
    ld hl, sp+$06
    inc [hl]
    jp Jump_01c_7338


Jump_01c_73a0:
    ld hl, $c414
    ld [hl], $02

Jump_01c_73a5:
    call Call_000_1e9a
    ld hl, $cb64
    ld [hl], $00
    add sp, $07
    pop bc
    ret


Call_01c_73b1:
    ld hl, $c979
    ld a, [hl-]
    cp $db
    jr c, jr_01c_73c6

    cp $dd
    jr nc, jr_01c_73c6

    ld c, [hl]
    ld b, a
    ld a, [bc]
    ld e, a
    inc [hl]
    ret nz

    inc hl
    inc [hl]
    ret


jr_01c_73c6:
    xor a
    ld [$c980], a
    ld e, a
    ret


Call_01c_73cc:
Jump_01c_73cc:
    ld hl, $c981
    ld e, [hl]
    ld d, $da
    ld [de], a
    inc [hl]
    ret nz

Call_01c_73d5:
    ld a, [$c97a]
    cp $04
    jr c, jr_01c_73e1

    xor a
    ld [$c980], a
    ret


jr_01c_73e1:
    ld [$4000], a
    ld hl, $c982
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor a
    ld l, a
    ld e, a
    ld h, $da
    ld a, [$c97c]
    ld d, a
    ld a, $0a
    di
    ld [$0000], a

jr_01c_73fa:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    jr nz, jr_01c_73fa

    xor a
    ld [$0000], a
    ei
    ld hl, $c97c
    inc [hl]
    ld a, [hl]
    cp $c0
    ret nz

    ld a, $a0
    ld [hl], a
    ld hl, $c97a
    inc [hl]
    ret


    xor a
    ld l, a
    ld e, a
    ld h, $da
    ld a, [$c97c]
    ld d, a
    ld a, $0a
    di
    ld [$0000], a

jr_01c_742c:
    ld a, [de]
    cp [hl]
    jr z, jr_01c_7434

    xor a
    ld [$c980], a

jr_01c_7434:
    inc e
    inc l
    jr nz, jr_01c_742c

    xor a
    ld [$0000], a
    ei
    ld hl, $c97c
    inc [hl]
    ld a, [hl]
    cp $c0
    ret nz

    ld a, $a0
    ld [hl], a
    ld hl, $c97a
    inc [hl]
    ret


Call_01c_744d:
jr_01c_744d:
    ld a, [$c980]
    or a
    ret z

    call Call_01c_73b1
    cp $c0
    jr nz, jr_01c_745e

jr_01c_7459:
    call Call_01c_74c2
    jr jr_01c_744d

jr_01c_745e:
    cp $e0
    jr z, jr_01c_7487

jr_01c_7462:
    ld hl, $c981
    ld e, [hl]
    ld d, $da
    ld [de], a
    inc [hl]
    jr z, jr_01c_7482

    ld hl, $c979
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    ld a, [de]
    inc [hl]
    jr nz, jr_01c_7478

    inc hl
    inc [hl]

jr_01c_7478:
    cp $c0
    jr z, jr_01c_7459

    cp $e0
    jr z, jr_01c_7487

    jr jr_01c_7462

jr_01c_7482:
    call Call_01c_73d5
    jr jr_01c_744d

jr_01c_7487:
    call Call_01c_46e3
    ld a, e
    or a
    ret nz

    jr jr_01c_744d

Call_01c_748f:
    ld e, a
    swap a
    and $0f
    add $04
    ld [$4000], a
    ld a, e
    and $0f
    add a
    add $a0
    ld h, a
    xor a
    ld l, a
    ld e, a
    ld d, $db
    ld a, $0a
    di
    ld [$0000], a

jr_01c_74ab:
    ld a, [hl+]
    ld [de], a
    inc e
    jr nz, jr_01c_74ab

    inc d

jr_01c_74b1:
    ld a, [hl+]
    ld [de], a
    inc e
    jr nz, jr_01c_74b1

    xor a
    ld [$0000], a
    ld hl, $c978
    ld [hl+], a
    ld a, $db
    ld [hl], a
    reti


Call_01c_74c2:
    call Call_01c_73b1
    cp $c0
    jp z, Jump_01c_73cc

    push af
    call Call_01c_73b1
    inc a
    ld b, a
    ld hl, $c981
    ld d, $da
    ld e, [hl]
    pop af

jr_01c_74d7:
    dec b
    jr z, jr_01c_74eb

    ld [de], a
    inc e
    jr nz, jr_01c_74d7

    push af
    push bc
    push de
    push hl
    call Call_01c_73d5
    pop hl
    pop de
    pop bc
    pop af
    jr jr_01c_74d7

jr_01c_74eb:
    ld [hl], e
    ret


Call_01c_74ed:
    ld a, $71
    call Call_01c_73cc
    ld a, $32
    call Call_01c_73cc
    ld a, $33
    call Call_01c_73cc
    ld a, $44
    call Call_01c_73cc
    ld a, $45
    call Call_01c_73cc
    ld a, $55
    call Call_01c_73cc
    ld a, $66
    call Call_01c_73cc
    ld a, $77
    call Call_01c_73cc
    ld a, $78
    call Call_01c_73cc
    ld a, $89
    call Call_01c_73cc
    ld a, $99
    call Call_01c_73cc
    ld a, $aa
    call Call_01c_73cc
    ld a, $ab
    call Call_01c_73cc
    ld a, $bc
    call Call_01c_73cc
    ld a, $cd
    call Call_01c_73cc
    ld a, $ce
    jp Jump_01c_73cc


Call_01c_753d:
    ld a, $a8
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    ld a, $ff
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    ld a, $03
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    ld a, $d0
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    ld a, $f3
    call Call_01c_73cc
    xor a
    call Call_01c_73cc
    xor a
    jp Jump_01c_73cc


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
