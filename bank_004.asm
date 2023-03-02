; disasSembly of "lsdj.gb"
SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

Call_004_4000:
    push bc
    ld bc, $752b
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0c49
    add sp, $05
    pop bc
    ret


Call_004_401b:
    push bc
    ld c, $ac
    ld b, $6b
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_004_402c:
    push bc
    xor a
    ld a, $13
    ld hl, sp+$04
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_004_4051

    ld c, [hl]
    ld a, $1c
    add c
    ld e, a
    ld a, $08
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    jp Jump_004_4053


Jump_004_4051:
    ld c, $3f

Jump_004_4053:
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    pop bc
    ret


Call_004_405d:
    push bc
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_406c

    ld c, $78
    jp Jump_004_406e


Jump_004_406c:
    ld c, $6c

Jump_004_406e:
    ld e, c
    pop bc
    ret


Call_004_4071:
    push bc
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld c, e
    add sp, $02
    pop bc
    ret


Call_004_4087:
    push bc
    ld hl, $c417
    ld c, [hl]

Jump_004_408c:
    ld a, c
    cp $ff
    jp z, Jump_004_40ae

    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld b, e
    add sp, $02
    xor a
    ld a, $40
    sbc b
    jp c, Jump_004_40aa

    jp Jump_004_40b0


Jump_004_40aa:
    dec c
    jp Jump_004_408c


Jump_004_40ae:
    ld e, $ff

Jump_004_40b0:
    pop bc
    ret


Call_004_40b2:
    push bc
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$04
    ld a, [hl]
    ld [de], a
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_4104

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_004_4104

    call Call_004_4087
    ld c, e
    ld a, c
    cp $40
    jp nc, Jump_004_4104

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $03
    jp nz, Jump_004_4104

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0942
    add sp, $03

Jump_004_4104:
    pop bc
    ret


Call_004_4106:
    push bc
    ld hl, $c41e
    ld a, [hl]
    cp $04
    jp c, Jump_004_4113

    call Call_000_144b

Jump_004_4113:
    xor a
    ld a, $40
    ld hl, sp+$04
    sbc [hl]
    jp c, Jump_004_418d

    ld hl, $c41e
    ld c, [hl]
    ld a, $69
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$04
    ld a, [hl]
    ld [de], a
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_004_4170

    ld hl, sp+$04
    ld a, [hl]
    cp $40
    jp nz, Jump_004_4142

    ld a, $01
    jr jr_004_4143

Jump_004_4142:
    xor a

jr_004_4143:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld hl, $c909
    ld [hl], a
    or a
    jp z, Jump_004_4170

    ld a, $00
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld a, c
    cp $02
    jp nz, Jump_004_416b

    ld a, $01
    jr jr_004_416c

Jump_004_416b:
    xor a

jr_004_416c:
    ld hl, $c909
    ld [hl], a

Jump_004_4170:
    ld hl, $c41e
    ld c, [hl]
    ld b, $00
    ld a, c
    add $c6
    ld c, a
    ld a, b
    adc $bf
    ld b, a
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_004_418d:
    pop bc
    ret


Call_004_418f:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_004_41af

    call Call_000_144b

Jump_004_41af:
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_41bb

    call Call_000_144b

Jump_004_41bb:
    ld hl, $c415
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_41ca

jr_004_41c5:
    or a
    rl c
    rl b

jr_004_41ca:
    dec a
    jr nz, jr_004_41c5

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_004_41f0:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_41fe

    call Call_000_144b

Jump_004_41fe:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_4209

    call Call_000_144b

Jump_004_4209:
    xor a
    ld a, $40
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_004_421b

    ld a, [hl]
    cp $ff
    jp z, Jump_004_421b

    call Call_000_144b

Jump_004_421b:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4229

jr_004_4224:
    or a
    rl c
    rl b

jr_004_4229:
    dec a
    jr nz, jr_004_4224

    ld hl, $b000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_004_4257:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    add $02
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_004_4272

    ld de, $42a3
    ld b, e
    ld c, d
    jp Jump_004_4277


Jump_004_4272:
    ld de, $429e
    ld b, e
    ld c, d

Jump_004_4277:
    ld hl, sp+$00
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c416
    ld c, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    add sp, $03
    pop bc
    ret


    ld [bc], a
    ld [bc], a
    ld b, $09
    ld a, [bc]
    ld [bc], a
    dec b
    add hl, bc
    inc c
    dec c

Call_004_42a8:
    push bc
    add sp, -$04
    call Call_004_4071
    ld hl, sp+$03
    ld [hl], e
    dec hl
    ld [hl], $00
    xor a
    ld a, $40
    inc hl
    sbc [hl]
    jp nc, Jump_004_434f

    ld hl, $c41e
    ld b, [hl]
    ld a, $69
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $ff
    jp nz, Jump_004_42ed

    ld b, $64
    ld c, $4a
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, $c406
    inc [hl]

Jump_004_42ed:
    ld hl, $c41e
    ld c, [hl]
    ld a, $69
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c417
    ld b, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_4348

    ld de, $c46c
    ld a, [de]
    ld c, a
    cp $40
    jp nc, Jump_004_4348

    ld a, $04
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    xor a
    ld a, $78
    sbc c
    jp nc, Jump_004_4339

    ld c, $78

Jump_004_4339:
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02

Jump_004_4348:
    ld hl, sp+$02
    ld [hl], $01
    jp Jump_004_43c6


Jump_004_434f:
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, $c416
    ld a, [hl]
    cp $02
    jp nz, Jump_004_43c6

    ld c, $3b
    ld b, $49
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld c, $00

Jump_004_4377:
    ld a, c
    cp $05
    jp nc, Jump_004_43a6

    ld de, $c43b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_004_439b

    ld b, $20

Jump_004_439b:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    inc c
    jp Jump_004_4377


Jump_004_43a6:
    ld de, $c440
    ld a, $20
    ld [de], a
    ld c, $28
    ld b, $78
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4257
    add sp, $01

Jump_004_43c6:
    ld hl, sp+$02
    ld e, [hl]
    add sp, $04
    pop bc
    ret


Call_004_43cd:
    push bc
    add sp, -$05
    ld hl, sp+$09
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$03
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    dec hl
    ld [hl], $0c
    dec hl
    ld [hl], $00
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_43f5

    call Call_000_144b

Jump_004_43f5:
    ld hl, sp+$09
    ld a, [hl]
    cp $10
    jp c, Jump_004_4400

    call Call_000_144b

Jump_004_4400:
    ld hl, $c415
    ld b, [hl]
    ld c, $00
    ld a, $05
    jr jr_004_440f

jr_004_440a:
    or a
    rl b
    rl c

jr_004_440f:
    dec a
    jr nz, jr_004_440a

    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, c
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_443e

    ld a, $01
    jr jr_004_443f

Jump_004_443e:
    xor a

jr_004_443f:
    ld b, a
    or b
    jp z, Jump_004_44c5

    ld hl, sp+$00
    ld a, [hl]
    cp $36
    jp z, Jump_004_44ba

    ld hl, sp+$00
    ld a, [hl]
    cp $37
    jp z, Jump_004_44ba

    ld hl, sp+$00
    ld a, [hl]
    cp $38
    jp z, Jump_004_44b3

    ld hl, sp+$00
    ld a, [hl]
    cp $39
    jp z, Jump_004_44b3

    ld hl, sp+$00
    ld a, [hl]
    cp $3a
    jp z, Jump_004_44ac

    ld hl, sp+$00
    ld a, [hl]
    cp $3b
    jp z, Jump_004_44ac

    ld hl, sp+$00
    ld a, [hl]
    cp $72
    jp z, Jump_004_44ba

    ld hl, sp+$00
    ld a, [hl]
    cp $73
    jp z, Jump_004_44ba

    ld hl, sp+$00
    ld a, [hl]
    cp $74
    jp z, Jump_004_44b3

    ld hl, sp+$00
    ld a, [hl]
    cp $75
    jp z, Jump_004_44b3

    ld hl, sp+$00
    ld a, [hl]
    cp $76
    jp z, Jump_004_44ac

    ld hl, sp+$00
    ld a, [hl]
    cp $77
    jp z, Jump_004_44ac

    ld hl, sp+$00
    ld a, [hl]
    cp $78
    jp nz, Jump_004_44c1

Jump_004_44ac:
    ld hl, sp+$02
    ld [hl], $01
    jp Jump_004_44c5


Jump_004_44b3:
    ld hl, sp+$02
    ld [hl], $02
    jp Jump_004_44c5


Jump_004_44ba:
    ld hl, sp+$02
    ld [hl], $03
    jp Jump_004_44c5


Jump_004_44c1:
    ld hl, sp+$02
    ld [hl], $04

Jump_004_44c5:
    xor a
    ld hl, sp+$00
    or [hl]
    jp nz, Jump_004_44f2

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_44d8

    jp Jump_004_4578


Jump_004_44d8:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    call Call_004_42a8
    ld hl, sp+$01
    ld [hl], e
    jp Jump_004_4543


Jump_004_44f2:
    ld hl, sp+$00
    ld a, [hl+]
    inc hl
    add [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_004_4508

    xor a
    or b
    jp z, Jump_004_4525

Jump_004_4508:
    call Call_004_405d
    ld c, e
    xor a
    ld a, c
    ld hl, sp+$00
    sbc [hl]
    jp c, Jump_004_4519

    xor a
    or [hl]
    jp nz, Jump_004_4543

Jump_004_4519:
    call Call_004_405d
    ld c, e
    ld hl, sp+$00
    ld a, [hl]
    sub c
    ld [hl], a
    jp Jump_004_4508


Jump_004_4525:
    call Call_004_405d
    ld c, e
    xor a
    ld a, c
    ld hl, sp+$00
    sbc [hl]
    jp c, Jump_004_4538

    xor a
    ld a, [hl+]
    inc hl
    sbc [hl]
    jp nc, Jump_004_4543

Jump_004_4538:
    ld hl, sp+$00
    ld a, [hl+]
    inc hl
    sub [hl]
    dec hl
    dec hl
    ld [hl], a
    jp Jump_004_4525


Jump_004_4543:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_004_40b2
    add sp, $01
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_004_456e

    call Call_004_4ce5
    jp Jump_004_4578


Jump_004_456e:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_004_4000
    add sp, $01

Jump_004_4578:
    add sp, $05
    pop bc
    ret


Call_004_457c:
    push bc
    add sp, -$06
    ld hl, sp+$0a
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$04
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    dec hl
    ld [hl], $0c
    dec hl
    ld [hl], $00
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_45a4

    call Call_000_144b

Jump_004_45a4:
    ld hl, sp+$0a
    ld a, [hl]
    cp $10
    jp c, Jump_004_45af

    call Call_000_144b

Jump_004_45af:
    ld hl, $c415
    ld b, [hl]
    ld c, $00
    ld a, $05
    jr jr_004_45be

jr_004_45b9:
    or a
    rl b
    rl c

jr_004_45be:
    dec a
    jr nz, jr_004_45b9

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, c
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp nz, Jump_004_460b

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_45f1

    jp Jump_004_4707


Jump_004_45f1:
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    call Call_004_42a8
    ld hl, sp+$02
    ld [hl], e
    jp Jump_004_46d0


Jump_004_460b:
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_4618

    ld a, $01
    jr jr_004_4619

Jump_004_4618:
    xor a

jr_004_4619:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_004_467e

    xor a
    ld a, $3c
    inc hl
    sbc [hl]
    jp nc, Jump_004_462f

    ld a, [hl]
    add $c4
    ld b, a
    jp Jump_004_4632


Jump_004_462f:
    ld hl, sp+$01
    ld b, [hl]

Jump_004_4632:
    ld a, b
    cp $01
    jp z, Jump_004_4673

    cp $02
    jp z, Jump_004_466c

    cp $03
    jp z, Jump_004_4665

    cp $39
    jp z, Jump_004_4665

    cp $3a
    jp z, Jump_004_466c

    cp $3b
    jp z, Jump_004_4673

    cp $3c
    jp z, Jump_004_4673

    cp $3d
    jp z, Jump_004_4673

    cp $3e
    jp z, Jump_004_466c

    cp $3f
    jp nz, Jump_004_467a

Jump_004_4665:
    ld hl, sp+$03
    ld [hl], $03
    jp Jump_004_467e


Jump_004_466c:
    ld hl, sp+$03
    ld [hl], $02
    jp Jump_004_467e


Jump_004_4673:
    ld hl, sp+$03
    ld [hl], $01
    jp Jump_004_467e


Jump_004_467a:
    ld hl, sp+$03
    ld [hl], $04

Jump_004_467e:
    ld hl, sp+$01
    ld a, [hl+]
    inc hl
    sub [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_004_4696

    xor a
    ld hl, sp+$00
    or [hl]
    jp z, Jump_004_46b3

Jump_004_4696:
    call Call_004_405d
    ld b, e
    xor a
    ld a, b
    ld hl, sp+$01
    sbc [hl]
    jp c, Jump_004_46a7

    xor a
    or [hl]
    jp nz, Jump_004_46d0

Jump_004_46a7:
    call Call_004_405d
    ld b, e
    ld hl, sp+$01
    ld a, [hl]
    add b
    ld [hl], a
    jp Jump_004_4696


Jump_004_46b3:
    xor a
    ld hl, sp+$03
    sbc [hl]
    ld b, a

Jump_004_46b8:
    xor a
    ld a, b
    ld hl, sp+$01
    sbc [hl]
    jp c, Jump_004_46c5

    xor a
    or [hl]
    jp nz, Jump_004_46d0

Jump_004_46c5:
    ld hl, sp+$01
    ld a, [hl+]
    inc hl
    add [hl]
    dec hl
    dec hl
    ld [hl], a
    jp Jump_004_46b8


Jump_004_46d0:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_004_40b2
    add sp, $01
    ld hl, sp+$04
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, sp+$01
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
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_004_46fd

    call Call_004_4ce5
    jp Jump_004_4707


Jump_004_46fd:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_004_4000
    add sp, $01

Jump_004_4707:
    add sp, $06
    pop bc
    ret


Call_004_470b:
    push bc
    add sp, -$05
    ld hl, sp+$09
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$03
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    dec hl
    ld [hl], $00
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4730

    call Call_000_144b

Jump_004_4730:
    ld hl, sp+$09
    ld a, [hl]
    cp $10
    jp c, Jump_004_473b

    call Call_000_144b

Jump_004_473b:
    ld hl, $c415
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_474a

jr_004_4745:
    or a
    rl c
    rl b

jr_004_474a:
    dec a
    jr nz, jr_004_4745

    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    or c
    jp nz, Jump_004_479f

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_4784

    jp Jump_004_480d


Jump_004_4784:
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld hl, sp+$09
    ld [hl], b
    call Call_004_42a8
    ld hl, sp+$02
    ld [hl], e
    jp Jump_004_47c3


Jump_004_479f:
    call Call_004_405d
    ld b, e
    ld a, c
    cp b
    jp nz, Jump_004_47bd

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_004_47bd

    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp z, Jump_004_47bd

    jp Jump_004_480d


Jump_004_47bd:
    ld a, c
    add $01
    ld hl, sp+$09
    ld [hl], a

Jump_004_47c3:
    call Call_004_405d
    ld c, e
    xor a
    ld a, c
    ld hl, sp+$09
    sbc [hl]
    jp c, Jump_004_47d4

    xor a
    or [hl]
    jp nz, Jump_004_47d8

Jump_004_47d4:
    ld hl, sp+$09
    ld [hl], $01

Jump_004_47d8:
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_004_40b2
    add sp, $01
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_004_4803

    call Call_004_4ce5
    jp Jump_004_480d


Jump_004_4803:
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_004_4000
    add sp, $01

Jump_004_480d:
    add sp, $05
    pop bc
    ret


Call_004_4811:
    push bc
    add sp, -$06
    ld hl, sp+$0a
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$04
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    dec hl
    ld [hl], $00
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4836

    call Call_000_144b

Jump_004_4836:
    ld hl, sp+$0a
    ld a, [hl]
    cp $10
    jp c, Jump_004_4841

    call Call_000_144b

Jump_004_4841:
    ld hl, $c415
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4850

jr_004_484b:
    or a
    rl c
    rl b

jr_004_4850:
    dec a
    jr nz, jr_004_484b

    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp nz, Jump_004_48a6

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_488c

    jp Jump_004_4914


Jump_004_488c:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    call Call_004_42a8
    ld hl, sp+$03
    ld [hl], e
    jp Jump_004_48c6


Jump_004_48a6:
    ld hl, sp+$02
    ld a, [hl]
    cp $01
    jp nz, Jump_004_48c3

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_004_48c3

    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp z, Jump_004_48c3

    jp Jump_004_4914


Jump_004_48c3:
    ld hl, sp+$02
    dec [hl]

Jump_004_48c6:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_004_48d9

    call Call_004_405d
    ld c, e
    xor a
    ld a, c
    ld hl, sp+$02
    sbc [hl]
    jp nc, Jump_004_48df

Jump_004_48d9:
    call Call_004_405d
    ld hl, sp+$02
    ld [hl], e

Jump_004_48df:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_004_40b2
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    xor a
    ld hl, sp+$03
    or [hl]
    jp z, Jump_004_490a

    call Call_004_4ce5
    jp Jump_004_4914


Jump_004_490a:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_004_4000
    add sp, $01

Jump_004_4914:
    add sp, $06
    pop bc
    ret


Call_004_4918:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4926

    call Call_000_144b

Jump_004_4926:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_4931

    call Call_000_144b

Jump_004_4931:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_493f

jr_004_493a:
    or a
    rl c
    rl b

jr_004_493f:
    dec a
    jr nz, jr_004_493a

    ld hl, $b000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_004_4968:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_004_4988

    call Call_000_144b

Jump_004_4988:
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4994

    call Call_000_144b

Jump_004_4994:
    ld hl, $c415
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_49a3

jr_004_499e:
    or a
    rl c
    rl b

jr_004_49a3:
    dec a
    jr nz, jr_004_499e

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_004_49c5:
    push bc
    add sp, -$02
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_49e5

    call Call_000_144b

Jump_004_49e5:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_49f0

    call Call_000_144b

Jump_004_49f0:
    xor a
    ld a, $13
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_004_49fc

    call Call_000_144b

Jump_004_49fc:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4a0a

jr_004_4a05:
    or a
    rl c
    rl b

jr_004_4a0a:
    dec a
    jr nz, jr_004_4a05

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_004_4a30:
    push bc
    add sp, -$02
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, c
    add $f0
    ld c, a
    ld a, b
    adc $af
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4a50

    call Call_000_144b

Jump_004_4a50:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_4a5b

    call Call_000_144b

Jump_004_4a5b:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4a69

jr_004_4a64:
    or a
    rl c
    rl b

jr_004_4a69:
    dec a
    jr nz, jr_004_4a64

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_004_4a8f:
    push bc
    add sp, -$02
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, c
    add $f0
    ld c, a
    ld a, b
    adc $af
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4aaf

    call Call_000_144b

Jump_004_4aaf:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_4aba

    call Call_000_144b

Jump_004_4aba:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4ac8

jr_004_4ac3:
    or a
    rl c
    rl b

jr_004_4ac8:
    dec a
    jr nz, jr_004_4ac3

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_004_4aea:
    push bc
    add sp, -$02
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4b0a

    call Call_000_144b

Jump_004_4b0a:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_004_4b15

    call Call_000_144b

Jump_004_4b15:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4b23

jr_004_4b1e:
    or a
    rl c
    rl b

jr_004_4b23:
    dec a
    jr nz, jr_004_4b1e

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
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    ld a, $13
    sbc c
    ld a, $00
    rla
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    or b
    jp nz, Jump_004_4b56

    ld c, $00

Jump_004_4b56:
    ld e, c
    add sp, $02
    pop bc
    ret


Call_004_4b5b:
    push bc
    add sp, -$05
    ld hl, $c417
    ld c, [hl]
    ld b, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, sp+$03
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $c417
    ld a, [hl]
    cp $10
    jp c, Jump_004_4b7d

    call Call_000_144b

Jump_004_4b7d:
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4b89

    call Call_000_144b

Jump_004_4b89:
    ld hl, $c415
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_004_4b98

jr_004_4b93:
    or a
    rl c
    rl b

jr_004_4b98:
    dec a
    jr nz, jr_004_4b93

    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp nz, Jump_004_4bd1

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_4be0

Jump_004_4bd1:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_004_40b2
    add sp, $01
    ld e, $00
    jp Jump_004_4c02


Jump_004_4be0:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld e, $01

Jump_004_4c02:
    add sp, $05
    pop bc
    ret


Call_004_4c06:
    ld hl, $4c10
    push hl
    call Call_000_2eda
    add sp, $02
    ret


    dec l
    dec l
    dec l
    nop

Call_004_4c14:
    push bc
    add sp, -$04
    ld hl, $c415
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    jr jr_004_4c2c

jr_004_4c24:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_004_4c2c:
    dec a
    jr nz, jr_004_4c24

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $c46e
    push hl
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b000
    add hl, de
    ld c, l
    ld b, h
    ld hl, $c47e
    push hl
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $c48e
    push hl
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $aff0
    add hl, de
    ld c, l
    ld b, h
    ld hl, $c49e
    push hl
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    add sp, $04
    pop bc
    ret


Call_004_4c99:
    push bc
    ld c, $d7
    ld b, $6c
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_004_4caa:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, $0b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, $fd
    sbc c
    ld a, $00
    rla
    ld c, a
    ld e, c
    pop bc
    ret


Call_004_4cc4:
    push bc
    ld de, $c43b
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_004_4cd4

    ld bc, $c43b
    jp Jump_004_4cd9


Jump_004_4cd4:
    ld de, $4ce1
    ld c, e
    ld b, d

Jump_004_4cd9:
    push bc
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop

Call_004_4ce5:
    push bc
    add sp, -$0d
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_4cf4

    call Call_000_144b

Jump_004_4cf4:
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $00
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $55d0
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_000_2c57
    call Call_004_4c14
    ld hl, $c90a
    ld [hl], $00
    ld hl, sp+$0c
    ld [hl], $00

Jump_004_4d34:
    ld hl, sp+$0c
    ld a, [hl]
    cp $10
    jp nc, Jump_004_4d8b

    ld de, $c47e
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld a, [hl]
    cp $40
    jp nc, Jump_004_4d85

    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $05
    jr jr_004_4d61

jr_004_4d5c:
    or a
    rl c
    rl b

jr_004_4d61:
    dec a
    jr nz, jr_004_4d5c

    ld a, c
    add $80
    ld c, a
    ld a, b
    adc $b0
    ld b, a
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $02
    jp nz, Jump_004_4d85

    ld hl, $c90a
    ld [hl], $01
    jp Jump_004_4d8b


Jump_004_4d85:
    ld hl, sp+$0c
    inc [hl]
    jp Jump_004_4d34


Jump_004_4d8b:
    ld hl, sp+$0a
    ld [hl], $ff
    inc hl
    inc hl
    ld [hl], $00

Jump_004_4d93:
    ld hl, sp+$0c
    ld a, [hl]
    cp $10
    jp nc, Jump_004_5088

    ld de, $c47e
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$09
    ld [hl], a
    ld a, [hl]
    cp $40
    jp nz, Jump_004_4db2

    ld a, $01
    jr jr_004_4db3

Jump_004_4db2:
    xor a

jr_004_4db3:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_004_4dc5

    ld hl, sp+$09
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4dda

    jp Jump_004_4dec


Jump_004_4dc5:
    ld hl, sp+$0a
    ld [hl], $ff
    ld de, $c90b
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $fe
    ld [de], a
    jp Jump_004_4e45


Jump_004_4dda:
    ld de, $c90b
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$0a
    ld a, [hl]
    ld [de], a
    jp Jump_004_4e45


Jump_004_4dec:
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $05
    jr jr_004_4e01

jr_004_4dfc:
    or a
    rl c
    rl b

jr_004_4e01:
    dec a
    jr nz, jr_004_4dfc

    ld a, c
    add $80
    ld c, a
    ld a, b
    adc $b0
    ld b, a
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $02
    jp nz, Jump_004_4e33

    ld hl, sp+$09
    ld a, [hl+]
    ld [hl], a
    ld de, $c90b
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$09
    ld a, [hl]
    ld [de], a
    jp Jump_004_4e45


Jump_004_4e33:
    ld hl, sp+$0a
    ld [hl], $ff
    ld de, $c90b
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $ff
    ld [de], a

Jump_004_4e45:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$0c
    ld a, [hl]
    add $02
    ld hl, sp+$02
    ld [hl], a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$0a
    ld a, [hl]
    cp $ff
    jp z, Jump_004_4f6b

    ld de, $c46e
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$08
    ld [hl+], a
    inc hl
    ld b, [hl]
    ld c, $00
    ld hl, sp+$00
    ld [hl], b
    inc hl
    ld [hl], c
    ld a, $05
    jr jr_004_4e8c

jr_004_4e84:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_004_4e8c:
    dec a
    jr nz, jr_004_4e84

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b082
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
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
    ld hl, sp+$0e
    ld [hl], e
    add sp, $03
    ld a, e
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_1441
    ld hl, sp+$0c
    ld [hl], e
    add sp, $01
    ld de, $c90b
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$08
    ld a, [hl]
    and $f0
    jp nz, Jump_004_4ee5

    call Call_004_4c06
    jp Jump_004_4f00


Jump_004_4ee5:
    ld hl, sp+$08
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    call Call_004_4cc4

Jump_004_4f00:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b089
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
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
    ld hl, sp+$0e
    ld [hl], e
    add sp, $03
    ld c, e
    ld a, c
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_1441
    ld hl, sp+$0c
    ld [hl], e
    add sp, $01
    ld de, $c91b
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a
    ld hl, sp+$08
    ld a, [hl]
    and $0f
    ld c, a
    or c
    jp nz, Jump_004_4f55

    call Call_004_4c06
    jp Jump_004_4f65


Jump_004_4f55:
    ld a, c
    push af
    inc sp
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    call Call_004_4cc4

Jump_004_4f65:
    call Call_000_2f24
    jp Jump_004_4fc0


Jump_004_4f6b:
    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_004_4f7c

    ld hl, $50ff
    push hl
    call Call_000_2eda
    add sp, $02

Jump_004_4f7c:
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_004_4fa6

    ld de, $c46e
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld c, $c2
    ld b, $6b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    jp Jump_004_4fbd


Jump_004_4fa6:
    ld de, $c46e
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4000
    add sp, $01

Jump_004_4fbd:
    call Call_000_2f24

Jump_004_4fc0:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_004_500c

    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_004_4fec

    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_4fe6

    ld bc, $50e5
    jp Jump_004_4fe9


Jump_004_4fe6:
    ld bc, $50d8

Jump_004_4fe9:
    jp Jump_004_4fef


Jump_004_4fec:
    ld bc, $50f2

Jump_004_4fef:
    ld a, $01
    ldh [rVBK], a
    push bc
    push af
    inc sp
    ld a, $0d
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a

Jump_004_500c:
    ld hl, sp+$09
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_5020

    ld hl, $5103
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_004_502a


Jump_004_5020:
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_004_502a:
    call Call_000_2f24
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld de, $c48e
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld a, [hl]
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld de, $c49e
    ld hl, sp+$0c
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    xor a
    ld hl, $c90a
    or [hl]
    jp nz, Jump_004_5082

    ld hl, $5106
    push hl
    call Call_000_2eda
    add sp, $02

Jump_004_5082:
    ld hl, sp+$0c
    inc [hl]
    jp Jump_004_4d93


Jump_004_5088:
    xor a
    ld hl, $c416
    or [hl]
    jp nz, Jump_004_50a6

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_50a6

    ld hl, $c416
    inc [hl]

Jump_004_50a6:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_50b5

    call Call_004_4c99
    jp Jump_004_50b8


Jump_004_50b5:
    call Call_004_401b

Jump_004_50b8:
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $00
    ld b, $40
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    add sp, $0d
    pop bc
    ret


    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr nz, @+$22

    jr nz, jr_004_5103

jr_004_5103:
    dec l
    dec l
    nop
    jr nz, jr_004_5128

    jr nz, jr_004_510a

Call_004_510a:
jr_004_510a:
    push bc
    call Call_004_4087
    ld c, e
    ld a, c
    cp $40
    jp nc, Jump_004_5131

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld a, c
    cp $02
    jp nz, Jump_004_512c

jr_004_5128:
    ld a, $01
    jr jr_004_512d

Jump_004_512c:
    xor a

jr_004_512d:
    ld c, a
    jp Jump_004_5133


Jump_004_5131:
    ld c, $00

Jump_004_5133:
    ld e, c
    pop bc
    ret


Call_004_5136:
    push bc
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp z, Jump_004_5145

    ld e, $00
    jp Jump_004_51ac


Jump_004_5145:
    ld e, $81
    ld hl, $c416
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_004_5158

    ld e, $00
    jp Jump_004_51ac


Jump_004_5158:
    xor a
    ld a, $01
    ld hl, $c40e
    sbc [hl]
    jp nc, Jump_004_5167

    ld e, $00
    jp Jump_004_51ac


Jump_004_5167:
    call Call_004_510a
    ld c, e
    xor a
    or c
    jp nz, Jump_004_5175

    ld e, $00
    jp Jump_004_51ac


Jump_004_5175:
    ld hl, $c416
    ld a, [hl]
    or a
    jp nz, Jump_004_5190

    ld hl, $c40e
    ld a, [hl]
    cp $01
    jp nz, Jump_004_518a

    ld a, $01
    jr jr_004_518b

Jump_004_518a:
    xor a

jr_004_518b:
    ld c, a
    ld e, c
    jp Jump_004_51ac


Jump_004_5190:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_07d2
    ld c, e
    add sp, $02
    ld a, c
    cp $ff
    jp nz, Jump_004_51a9

    ld a, $01
    jr jr_004_51aa

Jump_004_51a9:
    xor a

jr_004_51aa:
    ld c, a
    ld e, c

Jump_004_51ac:
    pop bc
    ret


Call_004_51ae:
    push bc
    add sp, -$1b
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$18
    ld [hl], a
    ld hl, $c410
    ld a, [hl]
    ld hl, sp+$17
    ld [hl], a
    dec hl
    ld [hl], $00
    ld hl, $c412
    ld a, [hl]
    cp $05
    jp nz, Jump_004_5208

    ld hl, $c410
    ld a, [hl]
    ld hl, $c40e
    sub [hl]
    ld c, a
    cp $02
    jp z, Jump_004_51dc

    jp Jump_004_5489


Jump_004_51dc:
    ld hl, $c40e
    ld a, [hl]
    cp $02
    jp z, Jump_004_51ed

    cp $04
    jp z, Jump_004_51f4

    jp Jump_004_51fb


Jump_004_51ed:
    ld hl, sp+$16
    ld [hl], $ff
    jp Jump_004_51fe


Jump_004_51f4:
    ld hl, sp+$16
    ld [hl], $01
    jp Jump_004_51fe


Jump_004_51fb:
    jp Jump_004_5489


Jump_004_51fe:
    ld hl, $c40e
    ld [hl], $03
    ld hl, $c410
    ld [hl], $05

Jump_004_5208:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$19
    ld [hl], a
    ld hl, sp+$16
    ld a, [hl]
    add $04
    ld hl, sp+$13
    ld [hl], a
    ld hl, sp+$16
    ld a, [hl]
    add $03
    ld hl, sp+$12
    ld [hl], a

Jump_004_521f:
    xor a
    ld hl, sp+$19
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_004_545b

    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    call Call_004_5136
    ld hl, sp+$16
    ld [hl], e
    add sp, $01
    ld hl, $c410
    ld a, [hl]
    add $ff
    ld hl, sp+$1a
    ld [hl], a
    ld a, $01
    ld hl, sp+$15
    xor [hl]
    ld hl, sp+$11
    ld [hl], a

Jump_004_5248:
    ld hl, sp+$1a
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, $c40e
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$0c
    ld [hl], a
    or a
    jp nz, Jump_004_5445

    xor a
    ld hl, sp+$15
    or [hl]
    jp z, Jump_004_5284

    ld hl, sp+$1a
    ld a, [hl]
    xor $80
    cp $82
    ld a, $00
    rla
    ld hl, sp+$10
    ld [hl], a
    or a
    jp z, Jump_004_5284

    ld a, $01
    ld hl, sp+$1a
    xor [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld hl, sp+$1a
    ld [hl], a

Jump_004_5284:
    ld hl, sp+$1a
    ld a, [hl]
    xor $80
    cp $80
    ld a, $00
    rla
    ld hl, sp+$0e
    ld [hl], a
    or a
    jp nz, Jump_004_5418

    ld e, $84
    ld hl, sp+$1a
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp nz, Jump_004_5418

    ld hl, sp+$1a
    ld e, [hl]
    ld d, $00
    ld hl, $52b5
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_52c4


    jp Jump_004_532d


    jp Jump_004_53a1


    jp Jump_004_53c9


    jp Jump_004_53f2


Jump_004_52c4:
    call Call_004_510a
    ld hl, $c92b
    ld [hl], e
    ld a, e
    or e
    jp z, Jump_004_5418

    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$16
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$16
    ld [hl], e
    add sp, $02
    ld a, e
    cp $ff
    jp nz, Jump_004_52ec

    ld a, $01
    jr jr_004_52ed

Jump_004_52ec:
    xor a

jr_004_52ed:
    ld hl, sp+$0b
    ld [hl], a
    or a
    jp nz, Jump_004_5418

    ld hl, sp+$14
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld [hl], c
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$0b
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld hl, sp+$14
    add [hl]
    ld hl, sp+$09
    ld [hl], a
    ld hl, sp+$14
    ld [hl], a
    push af
    inc sp
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_5418


Jump_004_532d:
    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$12
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$16
    ld [hl], e
    add sp, $02
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_534c

    ld a, $01
    jr jr_004_534d

Jump_004_534c:
    xor a

jr_004_534d:
    ld hl, sp+$08
    ld [hl], a
    or a
    jp nz, Jump_004_5368

    ld hl, sp+$14
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_5360

    ld a, $01
    jr jr_004_5361

Jump_004_5360:
    xor a

jr_004_5361:
    ld hl, sp+$07
    ld [hl], a
    or a
    jp nz, Jump_004_5418

Jump_004_5368:
    call Call_004_510a
    ld hl, $c92c
    ld [hl], e
    ld a, e
    or e
    jp z, Jump_004_538e

    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld hl, sp+$14
    add [hl]
    ld hl, sp+$05
    ld [hl], a
    ld hl, sp+$14
    ld [hl], a

Jump_004_538e:
    ld hl, sp+$14
    ld a, [hl]
    push af
    inc sp
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_5418


Jump_004_53a1:
    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$06
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    jp Jump_004_5418


Jump_004_53c9:
    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$13
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$05
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_49c5
    add sp, $03
    jp Jump_004_5418


Jump_004_53f2:
    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$14
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$04
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03

Jump_004_5418:
    xor a
    ld hl, sp+$15
    or [hl]
    jp z, Jump_004_543b

    ld hl, sp+$1a
    ld a, [hl]
    xor $80
    cp $82
    ld a, $00
    rla
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_004_543b

    ld a, $01
    ld hl, sp+$1a
    xor [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$1a
    ld [hl], a

Jump_004_543b:
    ld hl, sp+$1a
    ld a, [hl]
    add $ff
    ld b, a
    ld [hl], b
    jp Jump_004_5248


Jump_004_5445:
    ld hl, $c417
    inc [hl]
    ld c, [hl]
    ld a, c
    cp $10
    jp nz, Jump_004_5455

    ld hl, $c417
    ld [hl], $00

Jump_004_5455:
    ld hl, sp+$19
    inc [hl]
    jp Jump_004_521f


Jump_004_545b:
    xor a
    ld hl, sp+$16
    or [hl]
    jp z, Jump_004_5470

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, sp+$17
    ld a, [hl]
    ld hl, $c410
    ld [hl], a

Jump_004_5470:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_004_5489

    ld hl, $548d
    push hl
    call Call_000_0dab
    add sp, $02

Jump_004_5489:
    add sp, $1b
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop

Call_004_5493:
    push bc
    ld c, $00

Jump_004_5496:
    ld a, c
    cp $10
    jp nc, Jump_004_54bd

    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03
    inc c
    jp Jump_004_5496


Jump_004_54bd:
    ld c, $3b
    ld b, $49
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld c, $49
    ld b, $4a
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    pop bc
    ret


    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100

Call_004_5535:
    push bc
    add sp, -$01
    call Call_004_4071
    ld hl, sp+$00
    ld [hl], e
    ld a, e
    cp $40
    ld a, $00
    rla
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    or b
    jp nz, Jump_004_55a4

    ld b, $64
    ld c, $4a
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    ld a, c
    cp $ff
    jp nz, Jump_004_556a

    jp Jump_004_55a4


Jump_004_556a:
    ld a, c
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_004_5493
    add sp, $02
    ld hl, $73f6
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    call Call_004_4ce5

Jump_004_55a4:
    add sp, $01
    pop bc
    ret


Call_004_55a8:
    push bc
    add sp, -$02
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld a, e
    cp $20
    jp c, Jump_004_55c9

    jp Jump_004_5625


Jump_004_55c9:
    ld b, $8c
    ld c, $4b
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp nz, Jump_004_55e5

    jp Jump_004_5625


Jump_004_55e5:
    ld b, $31
    ld c, $53
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_0c49
    add sp, $05
    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03
    call Call_004_4ce5

Jump_004_5625:
    add sp, $02
    pop bc
    ret


Call_004_5629:
    push bc
    ld hl, $c417
    ld a, [hl]
    ld hl, $c40f
    cp [hl]
    jr nz, jr_004_5638

    ld a, $01
    jr jr_004_5639

jr_004_5638:
    xor a

jr_004_5639:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld hl, $c416
    ld a, [hl]
    ld hl, $c40e
    cp [hl]
    jr nz, jr_004_564f

    ld a, $01
    jr jr_004_5650

jr_004_564f:
    xor a

jr_004_5650:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr nz, jr_004_565e

    xor a
    or b

jr_004_565e:
    jr z, jr_004_5662

    ld a, $01

jr_004_5662:
    ld c, a
    ld e, c
    pop bc
    ret


Call_004_5666:
    push bc
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_004_5678

    call Call_004_5629
    ld c, e
    xor a
    or c
    jp z, Jump_004_567d

Jump_004_5678:
    ld e, $00
    jp Jump_004_56cc


Jump_004_567d:
    ld hl, $c416
    ld a, [hl]
    cp $02
    jp nz, Jump_004_5697

    ld hl, $56ce
    push hl
    call Call_000_0dab
    add sp, $02
    call Call_004_5535
    ld e, $01
    jp Jump_004_56cc


Jump_004_5697:
    ld hl, $c416
    ld a, [hl]
    cp $04
    jp nz, Jump_004_56ca

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld c, e
    add sp, $02
    ld a, c
    cp $01
    jp nz, Jump_004_56ca

    call Call_004_55a8
    ld hl, $56db
    push hl
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_004_56cc


Jump_004_56ca:
    ld e, $00

Jump_004_56cc:
    pop bc
    ret


    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, jr_004_571f

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    nop
    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, @+$56

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    nop

Call_004_56e8:
    push bc
    xor a
    ld hl, $c56f
    or [hl]
    jp z, Jump_004_577a

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_56fd

    jp Jump_004_577a


Jump_004_56fd:
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4968
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_577a

    ld hl, $c572
    ld a, [hl]
    cp $ff
    jp z, Jump_004_572e

    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02

jr_004_571f:
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c573
    ld a, [hl]
    ld hl, $c529
    ld [hl], a

Jump_004_572e:
    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_004_577a

    ld hl, $cb65
    ld a, [hl]
    or a
    jp z, Jump_004_574b

    cp $01
    jp z, Jump_004_574b

    cp $05
    jp z, Jump_004_574b

    jp Jump_004_577a


Jump_004_574b:
    ld hl, $c529
    ld a, [hl]
    ld hl, $c573
    ld [hl], a
    ld hl, $c529
    ld [hl], $00
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c572
    ld [hl], a
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_004_576c

    call Call_000_1e7f

Jump_004_576c:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_004_577a:
    pop bc
    ret


Call_004_577c:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $00
    ld b, $3b
    ld c, $49
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld c, $00

Jump_004_579a:
    ld a, c
    cp $05
    jp nc, Jump_004_57c9

    ld de, $c43b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_004_57be

    ld b, $20

Jump_004_57be:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    inc c
    jp Jump_004_579a


Jump_004_57c9:
    ld de, $c440
    ld a, $20
    ld [de], a
    ld c, $28
    ld b, $78
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_5863

    ld hl, sp+$08
    ld a, [hl]
    cp $40
    jp nc, Jump_004_5863

    ld a, $00
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld a, c
    cp $03
    jp nz, Jump_004_5863

    ld a, $04
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld de, $c908
    ld a, c
    ld [de], a
    push af
    inc sp
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$02
    ld [hl], $01

Jump_004_5863:
    call Call_004_56e8
    ld hl, $c9b5
    ld [hl], $01
    ld hl, sp+$07
    ld c, [hl]
    ld a, $b6
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    inc hl
    ld a, [hl]
    ld [de], a
    ld hl, sp+$02
    ld e, [hl]
    add sp, $03
    pop bc
    ret


Call_004_5881:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld a, c
    cp $ff
    jp nz, Jump_004_58a7

    ld e, $00
    jp Jump_004_5921


Jump_004_58a7:
    ld a, c
    cp $40
    jp nc, Jump_004_58cb

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_58c4

    ld a, $01
    jr jr_004_58c5

Jump_004_58c4:
    xor a

jr_004_58c5:
    ld hl, sp+$00
    ld [hl], a
    jp Jump_004_58d1


Jump_004_58cb:
    ld c, $40
    ld hl, sp+$01
    ld [hl], $01

Jump_004_58d1:
    xor a
    or c
    jp z, Jump_004_58d7

    dec c

Jump_004_58d7:
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_58ee

    ld a, $01
    jr jr_004_58ef

Jump_004_58ee:
    xor a

jr_004_58ef:
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    dec hl
    ld a, [hl]
    cp b
    jp nz, Jump_004_58ff

    ld a, $01
    jr jr_004_5900

Jump_004_58ff:
    xor a

jr_004_5900:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_004_577c
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld a, [hl]
    or c
    ld [hl], a
    ld e, a

Jump_004_5921:
    add sp, $02
    pop bc
    ret


Call_004_5925:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld [hl], $00
    ld a, c
    cp $ff
    jp nz, Jump_004_5948

    ld e, $00
    jp Jump_004_59c4


Jump_004_5948:
    ld a, c
    cp $40
    jp nc, Jump_004_596d

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_5965

    ld a, $01
    jr jr_004_5966

Jump_004_5965:
    xor a

jr_004_5966:
    ld hl, sp+$00
    ld [hl], a
    inc c
    jp Jump_004_596f


Jump_004_596d:
    ld c, $40

Jump_004_596f:
    ld a, c
    cp $40
    jp nc, Jump_004_59ac

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_598c

    ld a, $01
    jr jr_004_598d

Jump_004_598c:
    xor a

jr_004_598d:
    ld b, a
    ld hl, sp+$01
    ld [hl], b
    dec hl
    ld a, [hl]
    cp b
    jp nz, Jump_004_599b

    ld a, $01
    jr jr_004_599c

Jump_004_599b:
    xor a

jr_004_599c:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    jp Jump_004_59b0


Jump_004_59ac:
    ld hl, sp+$01
    ld [hl], $01

Jump_004_59b0:
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_004_577c
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld a, [hl]
    or c
    ld [hl], a
    ld e, a

Jump_004_59c4:
    add sp, $02
    pop bc
    ret


Call_004_59c8:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld a, c
    cp $ff
    jp z, Jump_004_59ee

    cp $10
    jp nc, Jump_004_59f3

Jump_004_59ee:
    ld e, $00
    jp Jump_004_5a6b


Jump_004_59f3:
    ld a, c
    cp $40
    jp nc, Jump_004_5a1b

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_5a10

    ld a, $01
    jr jr_004_5a11

Jump_004_5a10:
    xor a

jr_004_5a11:
    ld hl, sp+$00
    ld [hl], a
    ld a, c
    add $f0
    ld c, a
    jp Jump_004_5a21


Jump_004_5a1b:
    ld c, $30
    ld hl, sp+$01
    ld [hl], $01

Jump_004_5a21:
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_5a38

    ld a, $01
    jr jr_004_5a39

Jump_004_5a38:
    xor a

jr_004_5a39:
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    dec hl
    ld a, [hl]
    cp b
    jp nz, Jump_004_5a49

    ld a, $01
    jr jr_004_5a4a

Jump_004_5a49:
    xor a

jr_004_5a4a:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_004_577c
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld a, [hl]
    or c
    ld [hl], a
    ld e, a

Jump_004_5a6b:
    add sp, $02
    pop bc
    ret


Call_004_5a6f:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld c, e
    add sp, $02
    xor a
    ld a, $30
    sbc c
    jp nc, Jump_004_5a8f

    ld e, $00
    jp Jump_004_5b02


Jump_004_5a8f:
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_5aa6

    ld a, $01
    jr jr_004_5aa7

Jump_004_5aa6:
    xor a

jr_004_5aa7:
    ld hl, sp+$00
    ld [hl], a
    ld a, c
    add $10
    ld c, a
    cp $40
    jp nc, Jump_004_5aea

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp $02
    jp nz, Jump_004_5aca

    ld a, $01
    jr jr_004_5acb

Jump_004_5aca:
    xor a

jr_004_5acb:
    ld b, a
    ld hl, sp+$01
    ld [hl], b
    dec hl
    ld a, [hl]
    cp b
    jp nz, Jump_004_5ad9

    ld a, $01
    jr jr_004_5ada

Jump_004_5ad9:
    xor a

jr_004_5ada:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    ld hl, sp+$01
    ld a, [hl]
    or b
    ld [hl], a
    jp Jump_004_5aee


Jump_004_5aea:
    ld hl, sp+$01
    ld [hl], $01

Jump_004_5aee:
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_004_577c
    ld c, e
    add sp, $02
    ld hl, sp+$01
    ld a, [hl]
    or c
    ld [hl], a
    ld e, a

Jump_004_5b02:
    add sp, $02
    pop bc
    ret


Call_004_5b06:
    push bc
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp z, Jump_004_5b15

    ld e, $00
    jp Jump_004_5b4c


Jump_004_5b15:
    call Call_004_4071
    ld c, e
    xor a
    ld a, $40
    sbc c
    jp nc, Jump_004_5b27

    ld hl, $c909
    ld e, [hl]
    jp Jump_004_5b4c


Jump_004_5b27:
    ld a, c
    cp $40
    jp nz, Jump_004_5b32

    ld e, $00
    jp Jump_004_5b4c


Jump_004_5b32:
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld a, c
    cp $02
    jp nz, Jump_004_5b49

    ld a, $01
    jr jr_004_5b4a

Jump_004_5b49:
    xor a

jr_004_5b4a:
    ld c, a
    ld e, c

Jump_004_5b4c:
    pop bc
    ret


    push bc
    add sp, -$2c
    ld hl, sp+$27
    ld [hl], $00
    ld hl, $c415
    ld a, [hl]
    cp $ff
    jp nz, Jump_004_5b61

    call Call_000_144b

Jump_004_5b61:
    ld hl, $c417
    ld b, [hl]
    ld a, b
    cp $10
    jp c, Jump_004_5b6e

    call Call_000_144b

Jump_004_5b6e:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c417
    ld b, [hl]
    ld a, b
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_004_5b8f

    ld a, $01
    jr jr_004_5b90

Jump_004_5b8f:
    xor a

jr_004_5b90:
    ld b, a
    or b
    jp nz, Jump_004_5b9a

    ld hl, $c406
    ld [hl], $00

Jump_004_5b9a:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_004_5ba7

    ld a, $01
    jr jr_004_5ba8

Jump_004_5ba7:
    xor a

jr_004_5ba8:
    ld hl, sp+$1e
    ld [hl], a
    or a
    jp z, Jump_004_5be6

    ld hl, $c576
    ld a, [hl]
    cp $43
    jp nz, Jump_004_5be6

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c416
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c417
    ld [hl], a
    ld hl, $73f6
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_004_4ce5
    ld hl, $7b9b
    push hl
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_004_7b97


Jump_004_5be6:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_004_5ebb

    xor a
    or b
    jp z, Jump_004_5ebb

    ld hl, $cb7d
    ld a, [hl]
    ld hl, sp+$26
    ld [hl], a
    dec hl
    ld [hl], $01
    xor a
    inc hl
    or [hl]
    jp z, Jump_004_5c89

    ld hl, $c416
    ld [hl], $01
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_5c3c

    ld de, $c908
    ld a, [de]
    ld hl, sp+$24
    ld [hl+], a
    inc hl
    ld a, [hl]
    and $f0
    jr nz, jr_004_5c21

    jp Jump_004_5c2a


jr_004_5c21:
    ld hl, sp+$24
    ld a, [hl]
    and $0f
    ld [hl], a
    jp Jump_004_5c30


Jump_004_5c2a:
    ld hl, sp+$24
    ld a, [hl]
    and $f0
    ld [hl], a

Jump_004_5c30:
    ld hl, sp+$26
    ld a, [hl]
    dec hl
    dec hl
    or [hl]
    inc hl
    inc hl
    ld [hl], a
    jp Jump_004_5c68


Jump_004_5c3c:
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_004_5c68

    ld hl, sp+$26
    ld a, [hl]
    and $f0
    jr nz, jr_004_5c57

    jp Jump_004_5c68


jr_004_5c57:
    ld hl, sp+$26
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl], a
    ld hl, $c416
    ld [hl], $00

Jump_004_5c68:
    ld hl, $c417
    ld b, [hl]
    ld a, $00
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$26
    ld a, [hl]
    ld [de], a

Jump_004_5c89:
    ld hl, $c468
    ld [hl], $00
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_5c9a

    ld e, $00
    jp Jump_004_7b97


Jump_004_5c9a:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_5eac

    ld e, $83
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_5eac

    ld e, [hl]
    ld d, $00
    ld hl, $5cc6
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_5cd2


    jp Jump_004_5cd2


    jp Jump_004_5dc5


    jp Jump_004_5e21


Jump_004_5cd2:
    call Call_004_5b06
    ld b, e
    xor a
    or b
    jp nz, Jump_004_5cf2

    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4b5b
    ld hl, sp+$27
    ld [hl], e
    add sp, $02
    jp Jump_004_5db9


Jump_004_5cf2:
    ld hl, $c417
    ld b, [hl]
    ld a, b
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld hl, $c416
    ld a, [hl]
    or a
    jp nz, Jump_004_5d6b

    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    jp nz, Jump_004_5d4e

    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld b, a
    ld hl, sp+$2b
    ld a, [hl]
    add b
    ld [hl], a
    and $f0
    jp nz, Jump_004_5d3a

    ld hl, sp+$2b
    ld a, [hl]
    add $10
    ld [hl], a

Jump_004_5d3a:
    ld hl, $c417
    ld b, [hl]
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_5db9


Jump_004_5d4e:
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$2b
    ld b, [hl]
    srl b
    srl b
    srl b
    srl b
    ld a, b
    ld [de], a
    jp Jump_004_5db9


Jump_004_5d6b:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld hl, sp+$1f
    ld [hl], a
    or a
    jp nz, Jump_004_5da8

    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    and $0f
    ld hl, sp+$2b
    add [hl]
    ld [hl], a
    and $0f
    jp nz, Jump_004_5d94

    ld hl, sp+$2b
    inc [hl]

Jump_004_5d94:
    ld hl, $c417
    ld b, [hl]
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_5db9


Jump_004_5da8:
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$1f
    ld a, [hl]
    ld [de], a

Jump_004_5db9:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$27
    ld [hl], $01

Jump_004_5dc5:
    ld hl, $c416
    ld a, [hl]
    cp $02
    jp nz, Jump_004_5df9

    ld hl, $c406
    ld b, [hl]
    inc [hl]
    ld a, b
    cp $01
    jp nz, Jump_004_5df9

    ld b, $64
    ld c, $4a
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, sp+$27
    ld [hl], $01
    jp Jump_004_5e18


Jump_004_5df9:
    xor a
    ld hl, sp+$25
    or [hl]
    jp z, Jump_004_5e0c

    call Call_004_42a8
    ld c, e
    ld hl, sp+$27
    ld a, [hl]
    or c
    ld [hl], a
    jp Jump_004_5e18


Jump_004_5e0c:
    call Call_004_4071
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01

Jump_004_5e18:
    call Call_004_56e8
    ld hl, sp+$27
    inc [hl]
    jp Jump_004_5eac


Jump_004_5e21:
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld a, e
    or e
    jp nz, Jump_004_5e4f

    ld hl, $c41e
    ld c, [hl]
    ld a, $4c
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$2b
    ld [hl], a
    jp Jump_004_5e6c


Jump_004_5e4f:
    ld hl, $c406
    ld c, [hl]
    inc [hl]
    xor a
    or c
    jp z, Jump_004_5e6c

    ld c, $55
    ld b, $76
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_004_5e6c:
    ld hl, $c417
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$2b
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld a, c
    push af
    inc sp
    ld hl, sp+$2c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_004_5eac:
    xor a
    ld hl, sp+$27
    or [hl]
    jp z, Jump_004_5eb6

    call Call_004_4ce5

Jump_004_5eb6:
    ld e, $01
    jp Jump_004_7b97


Jump_004_5ebb:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp nz, Jump_004_5eff

    xor a
    ld hl, sp+$1e
    or [hl]
    jp nz, Jump_004_5ed9

    ld c, $7d
    ld b, $6e
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_004_5ed9:
    ld hl, $c416
    ld a, [hl]
    cp $04
    jp nz, Jump_004_5ee6

    ld hl, $c416
    dec [hl]

Jump_004_5ee6:
    ld hl, $c416
    inc [hl]
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_5ef7

    call Call_004_4c99
    jp Jump_004_5efa


Jump_004_5ef7:
    call Call_004_401b

Jump_004_5efa:
    ld e, $01
    jp Jump_004_7b97


Jump_004_5eff:
    ld hl, $c576
    ld a, [hl]
    cp $02
    jp nz, Jump_004_5f5e

    xor a
    ld hl, sp+$1e
    or [hl]
    jp nz, Jump_004_5f1d

    ld c, $7d
    ld b, $6e
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_004_5f1d:
    xor a
    ld hl, $c416
    or [hl]
    jp nz, Jump_004_5f26

    inc [hl]

Jump_004_5f26:
    ld hl, $c416
    ld a, [hl]
    cp $01
    jp nz, Jump_004_5f45

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_5f45

    ld hl, $c416
    inc [hl]

Jump_004_5f45:
    ld hl, $c416
    dec [hl]
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_5f56

    call Call_004_4c99
    jp Jump_004_5f59


Jump_004_5f56:
    call Call_004_401b

Jump_004_5f59:
    ld e, $01
    jp Jump_004_7b97


Jump_004_5f5e:
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp nz, Jump_004_6022

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_5f7b

    xor a
    ld hl, $c417
    or [hl]
    jp nz, Jump_004_5f7b

    ld e, $00
    jp Jump_004_7b97


Jump_004_5f7b:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp nz, Jump_004_5f90

    ld c, $7d
    ld b, $6e
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_004_5f90:
    ld hl, $c417
    dec [hl]
    xor a
    ld hl, $c416
    or [hl]
    jp nz, Jump_004_5fb2

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_5fb2

    ld hl, $c416
    inc [hl]

Jump_004_5fb2:
    ld hl, $c417
    ld c, [hl]
    ld a, c
    cp $ff
    jp nz, Jump_004_600d

    xor a
    ld hl, $c41b
    or [hl]
    jp z, Jump_004_6008

    dec [hl]
    ld hl, $c417
    ld [hl], $0f
    ld b, $87
    ld c, $6e
    ld hl, $c41b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$30
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp nz, Jump_004_5ffb

    ld hl, $c417
    ld [hl], $00
    ld hl, $c41b
    inc [hl]
    jp Jump_004_600d


Jump_004_5ffb:
    ld hl, sp+$2b
    ld a, [hl]
    ld hl, $c415
    ld [hl], a
    call Call_004_4ce5
    jp Jump_004_600d


Jump_004_6008:
    ld hl, $c417
    ld [hl], $00

Jump_004_600d:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_601a

    call Call_004_4c99
    jp Jump_004_601d


Jump_004_601a:
    call Call_004_401b

Jump_004_601d:
    ld e, $01
    jp Jump_004_7b97


Jump_004_6022:
    ld hl, $c576
    ld a, [hl]
    cp $08
    jp nz, Jump_004_60e1

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_6041

    ld hl, $c417
    ld c, [hl]
    ld a, c
    cp $0f
    jp nz, Jump_004_6041

    ld e, $00
    jp Jump_004_7b97


Jump_004_6041:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp nz, Jump_004_6056

    ld c, $7d
    ld b, $6e
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_004_6056:
    ld hl, $c417
    inc [hl]
    xor a
    ld hl, $c416
    or [hl]
    jp nz, Jump_004_6078

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_6078

    ld hl, $c416
    inc [hl]

Jump_004_6078:
    ld hl, $c417
    ld a, [hl]
    cp $10
    jp nz, Jump_004_60cc

    ld hl, $c417
    ld [hl], $0f
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    cp $0f
    jp z, Jump_004_60cc

    add $01
    ld hl, sp+$1f
    ld [hl], a
    ld b, $87
    ld c, $6e
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$30
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp z, Jump_004_60cc

    ld hl, sp+$2b
    ld a, [hl]
    ld hl, $c415
    ld [hl], a
    ld hl, sp+$1f
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    ld hl, $c417
    ld [hl], $00
    call Call_004_4ce5

Jump_004_60cc:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_60d9

    call Call_004_4c99
    jp Jump_004_60dc


Jump_004_60d9:
    call Call_004_401b

Jump_004_60dc:
    ld e, $01
    jp Jump_004_7b97


Jump_004_60e1:
    ld hl, $c576
    ld a, [hl]
    cp $11
    jp nz, Jump_004_650a

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_611d

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$2a
    ld [hl], a
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, sp+$29
    ld d, h
    ld e, l
    ld hl, sp+$1c
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$2a
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$1c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_004_612b


Jump_004_611d:
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2a
    ld [hl], c

Jump_004_612b:
    ld hl, sp+$29
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_004_6132:
    xor a
    ld hl, sp+$2a
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_004_64fb

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_64f1

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_64f1

    ld e, [hl]
    ld d, $00
    ld hl, $6170
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_617f


    jp Jump_004_61f6


    jp Jump_004_62d2


    jp Jump_004_62eb


    jp Jump_004_6435


Jump_004_617f:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_61f0

    ld a, [hl]
    add $10
    ld [hl], a
    or a
    jp nz, Jump_004_61a0

    ld [hl], $f0

Jump_004_61a0:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, sp+$28
    add [hl]
    ld c, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$28
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl+], a
    inc hl
    ld c, [hl]
    ld a, $0b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_61f0:
    call Call_004_56e8
    jp Jump_004_64f1


Jump_004_61f6:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_6266

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $40
    jp nz, Jump_004_6259

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld c, e
    add sp, $01
    ld a, c
    add $01
    ld hl, sp+$2b
    ld [hl], a
    xor a
    ld a, $0e
    sbc [hl]
    jp c, Jump_004_62cc

    ld c, $c2
    ld b, $6b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_62cc


Jump_004_6259:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_470b
    add sp, $01
    jp Jump_004_62cc


Jump_004_6266:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_62cc

    inc [hl]
    ld a, [hl]
    cp $10
    jp nz, Jump_004_6287

    ld hl, sp+$28
    dec [hl]

Jump_004_6287:
    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    ld [hl], a
    dec hl
    ld c, [hl]
    ld a, $1b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, sp+$2b
    ld a, [hl]
    ld hl, sp+$28
    add [hl]
    ld b, a
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_62cc:
    call Call_004_56e8
    jp Jump_004_64f1


Jump_004_62d2:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_5925
    ld c, e
    add sp, $01
    ld hl, sp+$27
    ld a, [hl]
    or c
    ld [hl], a
    ld hl, sp+$1e
    or [hl]
    ld hl, sp+$27
    ld [hl], a
    jp Jump_004_64f1


Jump_004_62eb:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$1a
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$1c
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_632b

    ld hl, $c468
    ld [hl], $00
    ld hl, sp+$1a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$1d
    ld [hl], e
    add sp, $02
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a

Jump_004_632b:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$17
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$18
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$14
    ld [hl], a
    ld a, [hl]
    cp $13
    ld a, $00
    rla
    inc hl
    inc hl
    ld [hl], a
    or a
    jp z, Jump_004_6366

    dec hl
    dec hl
    ld a, [hl]
    add $01
    inc hl
    ld [hl], a
    ld hl, sp+$18
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$15
    ld a, [hl]
    ld [de], a
    jp Jump_004_636e


Jump_004_6366:
    ld hl, sp+$18
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $13
    ld [de], a

Jump_004_636e:
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], $00
    ld hl, $0014
    push hl
    ld hl, sp+$14
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$15
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$0c
    ld [hl], a
    ld a, [hl+]
    ld [hl+], a
    ld [hl], $00
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    ld de, $54e5
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_004_62eb

    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_004_63dd

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_004_6400

Jump_004_63dd:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$0a
    ld [hl], a
    ld b, $55
    ld c, $76
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_004_6400:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld hl, sp+$2a
    ld b, [hl]
    ld a, $58
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_004_64f1


Jump_004_6435:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2a
    ld [hl], e
    add sp, $02
    ld a, e
    or a
    jp z, Jump_004_64ce

    ld hl, sp+$28
    ld a, [hl]
    cp $01
    jp z, Jump_004_64be

    ld hl, sp+$28
    ld a, [hl]
    cp $07
    jp z, Jump_004_6482

    ld hl, sp+$28
    ld a, [hl]
    cp $0c
    jp z, Jump_004_6491

    ld hl, sp+$28
    ld a, [hl]
    cp $12
    jp z, Jump_004_64a7

    jp Jump_004_64cb


Jump_004_6482:
    ld hl, sp+$2b
    inc [hl]
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_004_64ce

    ld [hl], $1f
    jp Jump_004_64ce


Jump_004_6491:
    ld hl, sp+$2b
    ld a, [hl]
    cp $01
    jp nz, Jump_004_64a0

    ld hl, sp+$2b
    ld [hl], $03
    jp Jump_004_64ce


Jump_004_64a0:
    ld hl, sp+$2b
    ld [hl], $02
    jp Jump_004_64ce


Jump_004_64a7:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp z, Jump_004_64b8

    ld hl, sp+$2b
    ld a, [hl]
    cp $03
    jp z, Jump_004_64ce

Jump_004_64b8:
    ld hl, sp+$2b
    inc [hl]
    jp Jump_004_64ce


Jump_004_64be:
    ld hl, sp+$2b
    ld a, [hl]
    cp $20
    jp c, Jump_004_64cb

    ld [hl], $20
    jp Jump_004_64ce


Jump_004_64cb:
    ld hl, sp+$2b
    inc [hl]

Jump_004_64ce:
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$29
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_004_64f1:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_004_6132


Jump_004_64fb:
    xor a
    ld hl, sp+$27
    or [hl]
    jp z, Jump_004_6505

    call Call_004_4ce5

Jump_004_6505:
    ld e, $01
    jp Jump_004_7b97


Jump_004_650a:
    ld hl, $c576
    ld a, [hl]
    cp $14
    jp nz, Jump_004_695d

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_6546

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$2a
    ld [hl], a
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, sp+$29
    ld d, h
    ld e, l
    ld hl, sp+$0a
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$2a
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_004_6554


Jump_004_6546:
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2a
    ld [hl], c

Jump_004_6554:
    ld hl, sp+$29
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_004_655b:
    xor a
    ld hl, sp+$2a
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_004_694e

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_6944

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_6944

    ld e, [hl]
    ld d, $00
    ld hl, $6599
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_65a8


    jp Jump_004_6620


    jp Jump_004_6703


    jp Jump_004_671c


    jp Jump_004_6868


Jump_004_65a8:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_661a

    ld a, [hl]
    add $20
    ld [hl], a
    cp $20
    jp nc, Jump_004_65ca

    ld [hl], $f0

Jump_004_65ca:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, sp+$28
    add [hl]
    ld b, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$28
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl+], a
    inc hl
    ld b, [hl]
    ld a, $0b
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_661a:
    call Call_004_56e8
    jp Jump_004_6944


Jump_004_6620:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_004_6696

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $40
    jp nz, Jump_004_6689

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld b, e
    add sp, $01
    ld a, b
    add $02
    ld hl, sp+$2b
    ld [hl], a
    xor a
    ld a, $0e
    sbc [hl]
    jp nc, Jump_004_6663

    ld [hl], $0e

Jump_004_6663:
    ld b, $c2
    ld c, $6b
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_66fd


Jump_004_6689:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_43cd
    add sp, $01
    jp Jump_004_66fd


Jump_004_6696:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_66fd

    inc [hl]
    inc [hl]
    xor a
    ld a, $0f
    sbc [hl]
    jp nc, Jump_004_66b8

    ld [hl], $0f

Jump_004_66b8:
    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    ld [hl], a
    ld hl, sp+$28
    add [hl]
    ld c, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$2a
    ld c, [hl]
    ld a, $1b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_66fd:
    call Call_004_56e8
    jp Jump_004_6944


Jump_004_6703:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_5a6f
    ld c, e
    add sp, $01
    ld hl, sp+$27
    ld a, [hl]
    or c
    ld [hl], a
    ld hl, sp+$1e
    or [hl]
    ld hl, sp+$27
    ld [hl], a
    jp Jump_004_6944


Jump_004_671c:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_675c

    ld hl, sp+$0f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$0f
    ld [hl], e
    add sp, $02
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc hl
    ld a, [hl]
    ld [de], a
    ld hl, $c468
    ld [hl], $00

Jump_004_675c:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$12
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$16
    ld [hl], a
    ld a, [hl]
    cp $13
    ld a, $00
    rla
    dec hl
    dec hl
    ld [hl], a
    or a
    jp z, Jump_004_6797

    inc hl
    inc hl
    ld a, [hl]
    add $01
    dec hl
    ld [hl], a
    ld hl, sp+$10
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$15
    ld a, [hl]
    ld [de], a
    jp Jump_004_679f


Jump_004_6797:
    ld hl, sp+$10
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $13
    ld [de], a

Jump_004_679f:
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$18
    ld [hl+], a
    ld [hl], $00
    ld hl, $0014
    push hl
    ld hl, sp+$1a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$21
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$17
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$1a
    ld [hl], a
    ld a, [hl]
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$1c
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld de, $54e5
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_004_671c

    ld hl, sp+$1a
    ld a, [hl]
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_004_6810

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_004_6833

Jump_004_6810:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    ld b, $55
    ld c, $76
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_004_6833:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld hl, sp+$2a
    ld b, [hl]
    ld a, $58
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_004_6944


Jump_004_6868:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2a
    ld [hl], e
    add sp, $02
    ld a, e
    or a
    jp z, Jump_004_6921

    ld hl, sp+$28
    ld a, [hl]
    cp $01
    jp z, Jump_004_690e

    ld hl, sp+$28
    ld a, [hl]
    cp $07
    jp z, Jump_004_68bd

    ld hl, sp+$28
    ld a, [hl]
    cp $0c
    jp z, Jump_004_68ef

    ld hl, sp+$28
    ld a, [hl]
    cp $0f
    jp z, Jump_004_68f6

    ld hl, sp+$28
    ld a, [hl]
    cp $12
    jp z, Jump_004_68cf

    jp Jump_004_691b


Jump_004_68bd:
    ld hl, sp+$2b
    ld a, [hl]
    add $10
    ld [hl], a
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_004_6921

    ld [hl], $1f
    jp Jump_004_6921


Jump_004_68cf:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_004_68e1

    ld hl, sp+$2b
    ld a, [hl]
    add $10
    ld [hl], a
    jp Jump_004_6921


Jump_004_68e1:
    ld hl, sp+$2b
    ld a, [hl]
    cp $03
    jp z, Jump_004_6921

    ld hl, sp+$2b
    inc [hl]
    jp Jump_004_6921


Jump_004_68ef:
    ld hl, sp+$2b
    ld [hl], $03
    jp Jump_004_6921


Jump_004_68f6:
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_6904

    ld c, $04
    jp Jump_004_6906


Jump_004_6904:
    ld c, $10

Jump_004_6906:
    ld hl, sp+$2b
    ld a, [hl]
    add c
    ld [hl], a
    jp Jump_004_6921


Jump_004_690e:
    ld hl, sp+$2b
    ld a, [hl]
    cp $10
    jp c, Jump_004_691b

    ld [hl], $20
    jp Jump_004_6921


Jump_004_691b:
    ld hl, sp+$2b
    ld a, [hl]
    add $10
    ld [hl], a

Jump_004_6921:
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$29
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_004_6944:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_004_655b


Jump_004_694e:
    xor a
    ld hl, sp+$27
    or [hl]
    jp z, Jump_004_6958

    call Call_004_4ce5

Jump_004_6958:
    ld e, $01
    jp Jump_004_7b97


Jump_004_695d:
    ld hl, $c576
    ld a, [hl]
    cp $12
    jp nz, Jump_004_6e18

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_6999

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$2a
    ld [hl], a
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, sp+$29
    ld d, h
    ld e, l
    ld hl, sp+$06
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$2a
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_004_69a7


Jump_004_6999:
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2a
    ld [hl], c

Jump_004_69a7:
    ld hl, sp+$29
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_004_69ae:
    xor a
    ld hl, sp+$2a
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_004_6e09

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_6dff

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_6dff

    ld e, [hl]
    ld d, $00
    ld hl, $69ec
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_69fb


    jp Jump_004_6ad0


    jp Jump_004_6be5


    jp Jump_004_6bfe


    jp Jump_004_6d41


Jump_004_69fb:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_6aca

    ld a, [hl]
    add $f0
    ld [hl], a
    or a
    jp z, Jump_004_6a20

    ld a, [hl]
    cp $f0
    jp nz, Jump_004_6a24

Jump_004_6a20:
    ld hl, sp+$28
    ld [hl], $10

Jump_004_6a24:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, sp+$28
    add [hl]
    ld b, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$28
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl+], a
    inc hl
    ld b, [hl]
    ld a, $0b
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02

Jump_004_6a60:
    ld de, $c43b
    ld a, [de]
    ld hl, sp+$08
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_6ab6

    ld hl, sp+$28
    ld a, [hl]
    add $ff
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$28
    ld [hl], a
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, sp+$2b
    ld a, [hl]
    add c
    ld hl, sp+$0a
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld de, $c90b
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$28
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    jp Jump_004_6a60


Jump_004_6ab6:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_6aca:
    call Call_004_56e8
    jp Jump_004_6dff


Jump_004_6ad0:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_6b3d

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $40
    jp nz, Jump_004_6b30

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld c, e
    add sp, $01
    ld a, c
    add $ff
    ld hl, sp+$2b
    ld [hl], a
    or a
    jp z, Jump_004_6bdf

    ld c, $c2
    ld b, $6b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_6bdf


Jump_004_6b30:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4811
    add sp, $01
    jp Jump_004_6bdf


Jump_004_6b3d:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_6bdf

    dec [hl]
    xor a
    or [hl]
    jp z, Jump_004_6b60

    ld a, [hl]
    cp $ff
    jp nz, Jump_004_6b64

Jump_004_6b60:
    ld hl, sp+$28
    ld [hl], $01

Jump_004_6b64:
    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    ld [hl], a
    dec hl
    ld c, [hl]
    ld a, $1b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02

Jump_004_6b84:
    ld de, $c43b
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_004_6bb8

    ld hl, sp+$28
    ld a, [hl]
    add $ff
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$28
    ld [hl+], a
    inc hl
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    ld de, $c91b
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$28
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    jp Jump_004_6b84


Jump_004_6bb8:
    ld hl, sp+$2b
    ld a, [hl]
    ld hl, sp+$28
    add [hl]
    ld c, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_6bdf:
    call Call_004_56e8
    jp Jump_004_6dff


Jump_004_6be5:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_5881
    ld c, e
    add sp, $01
    ld hl, sp+$27
    ld a, [hl]
    or c
    ld [hl], a
    ld hl, sp+$1e
    or [hl]
    ld hl, sp+$27
    ld [hl], a
    jp Jump_004_6dff


Jump_004_6bfe:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
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
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_6c3e

    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$0c
    ld [hl], e
    add sp, $02
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0a
    ld a, [hl]
    ld [de], a
    ld hl, $c468
    ld [hl], $00

Jump_004_6c3e:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0d
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$14
    ld [hl], a
    xor a
    ld a, $01
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$10
    ld [hl], a
    or a
    jp z, Jump_004_6c78

    ld hl, sp+$14
    ld a, [hl]
    add $ff
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$0d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$12
    ld a, [hl]
    ld [de], a

Jump_004_6c78:
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$18
    ld [hl+], a
    ld [hl], $00
    ld hl, $0014
    push hl
    ld hl, sp+$1a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$21
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$15
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$16
    ld [hl], a
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$1c
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld de, $54e5
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_004_6bfe

    ld hl, sp+$16
    ld a, [hl]
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_004_6ce9

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_004_6d0c

Jump_004_6ce9:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld b, $55
    ld c, $76
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_004_6d0c:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld hl, sp+$2a
    ld b, [hl]
    ld a, $58
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_004_6dff


Jump_004_6d41:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2a
    ld [hl], e
    add sp, $02
    ld a, e
    or a
    jp z, Jump_004_6ddc

    ld hl, sp+$28
    ld a, [hl]
    cp $01
    jp z, Jump_004_6dc4

    ld hl, sp+$28
    ld a, [hl]
    cp $07
    jp z, Jump_004_6d8e

    ld hl, sp+$28
    ld a, [hl]
    cp $0c
    jp z, Jump_004_6daf

    ld hl, sp+$28
    ld a, [hl]
    cp $12
    jp z, Jump_004_6d99

    jp Jump_004_6dd9


Jump_004_6d8e:
    xor a
    ld hl, sp+$2b
    or [hl]
    jp z, Jump_004_6ddc

    dec [hl]
    jp Jump_004_6ddc


Jump_004_6d99:
    xor a
    ld hl, sp+$2b
    or [hl]
    jp nz, Jump_004_6da9

    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_004_6ddc

Jump_004_6da9:
    ld hl, sp+$2b
    dec [hl]
    jp Jump_004_6ddc


Jump_004_6daf:
    ld hl, sp+$2b
    ld a, [hl]
    cp $02
    jp nz, Jump_004_6dbc

    ld c, $03
    jp Jump_004_6dbe


Jump_004_6dbc:
    ld c, $01

Jump_004_6dbe:
    ld hl, sp+$2b
    ld [hl], c
    jp Jump_004_6ddc


Jump_004_6dc4:
    xor a
    ld hl, sp+$2b
    or [hl]
    jp z, Jump_004_6dd2

    xor a
    ld a, $20
    sbc [hl]
    jp nc, Jump_004_6dd9

Jump_004_6dd2:
    ld hl, sp+$2b
    ld [hl], $00
    jp Jump_004_6ddc


Jump_004_6dd9:
    ld hl, sp+$2b
    dec [hl]

Jump_004_6ddc:
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$29
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_004_6dff:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_004_69ae


Jump_004_6e09:
    xor a
    ld hl, sp+$27
    or [hl]
    jp z, Jump_004_6e13

    call Call_004_4ce5

Jump_004_6e13:
    ld e, $01
    jp Jump_004_7b97


Jump_004_6e18:
    ld hl, $c576
    ld a, [hl]
    cp $18
    jp nz, Jump_004_7305

    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_6e54

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$2a
    ld [hl], a
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, sp+$29
    ld d, h
    ld e, l
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$2a
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_004_6e62


Jump_004_6e54:
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2a
    ld [hl], c

Jump_004_6e62:
    ld hl, sp+$29
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_004_6e69:
    xor a
    ld hl, sp+$2a
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_004_72f6

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_4257
    add sp, $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_72ec

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_72ec

    ld e, [hl]
    ld d, $00
    ld hl, $6ea7
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_6eb6


    jp Jump_004_6f8c


    jp Jump_004_70af


    jp Jump_004_70c8


    jp Jump_004_720a


Jump_004_6eb6:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_6f86

    ld a, [hl]
    add $e0
    ld [hl], a
    or a
    jp z, Jump_004_6edc

    xor a
    ld a, $d0
    sbc [hl]
    jp nc, Jump_004_6ee0

Jump_004_6edc:
    ld hl, sp+$28
    ld [hl], $10

Jump_004_6ee0:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, sp+$28
    add [hl]
    ld b, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$28
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl+], a
    inc hl
    ld b, [hl]
    ld a, $0b
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02

Jump_004_6f1c:
    ld de, $c43b
    ld a, [de]
    ld hl, sp+$04
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_6f72

    ld hl, sp+$28
    ld a, [hl]
    add $ff
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$28
    ld [hl], a
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, sp+$2b
    ld a, [hl]
    add c
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    ld de, $c90b
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$28
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    jp Jump_004_6f1c


Jump_004_6f72:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_6f86:
    call Call_004_56e8
    jp Jump_004_72ec


Jump_004_6f8c:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_7005

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4918
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $40
    jp nz, Jump_004_6ff8

    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld c, e
    add sp, $01
    ld a, c
    add $fe
    ld hl, sp+$2b
    ld [hl], a
    or a
    jp z, Jump_004_6fd0

    ld a, [hl]
    cp $0e
    jp c, Jump_004_6fd4

Jump_004_6fd0:
    ld hl, sp+$2b
    ld [hl], $01

Jump_004_6fd4:
    ld c, $c2
    ld b, $6b
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_70a9


Jump_004_6ff8:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_457c
    add sp, $01
    jp Jump_004_70a9


Jump_004_7005:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld hl, sp+$28
    ld [hl], a
    or a
    jp z, Jump_004_70a9

    dec [hl]
    dec [hl]
    xor a
    or [hl]
    jp z, Jump_004_702a

    xor a
    ld a, $0f
    sbc [hl]
    jp nc, Jump_004_702e

Jump_004_702a:
    ld hl, sp+$28
    ld [hl], $01

Jump_004_702e:
    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    ld [hl], a
    dec hl
    ld c, [hl]
    ld a, $1b
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02

Jump_004_704e:
    ld de, $c43b
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_004_7082

    ld hl, sp+$28
    ld a, [hl]
    add $ff
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$28
    ld [hl+], a
    inc hl
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld de, $c91b
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$28
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    jp Jump_004_704e


Jump_004_7082:
    ld hl, sp+$2b
    ld a, [hl]
    ld hl, sp+$28
    add [hl]
    ld c, a
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$28
    ld a, [hl]
    ld [de], a
    call Call_004_4cc4

Jump_004_70a9:
    call Call_004_56e8
    jp Jump_004_72ec


Jump_004_70af:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    call Call_004_59c8
    ld c, e
    add sp, $01
    ld hl, sp+$27
    ld a, [hl]
    or c
    ld [hl], a
    ld hl, sp+$1e
    or [hl]
    ld hl, sp+$27
    ld [hl], a
    jp Jump_004_72ec


Jump_004_70c8:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_004_7108

    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$08
    ld [hl], e
    add sp, $02
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$06
    ld a, [hl]
    ld [de], a
    ld hl, $c468
    ld [hl], $00

Jump_004_7108:
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$10
    ld [hl], a
    xor a
    ld a, $01
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp z, Jump_004_7141

    ld hl, sp+$10
    ld a, [hl]
    add $ff
    dec hl
    ld [hl], a
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0f
    ld a, [hl]
    ld [de], a

Jump_004_7141:
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], $00
    ld hl, $0014
    push hl
    ld hl, sp+$14
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$1d
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, sp+$2a
    ld a, [hl]
    ld hl, sp+$14
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$15
    ld [hl], a
    ld a, [hl]
    ld hl, sp+$1c
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$18
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$1c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld de, $54e5
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_004_70c8

    ld hl, sp+$15
    ld a, [hl]
    push af
    inc sp
    call Call_004_402c
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_004_71b2

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_004_71d5

Jump_004_71b2:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld b, $55
    ld c, $76
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_004_71d5:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld hl, sp+$2a
    ld b, [hl]
    ld a, $58
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_004_72ec


Jump_004_720a:
    ld hl, sp+$2a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2a
    ld [hl], e
    add sp, $02
    ld a, e
    or a
    jp z, Jump_004_72c9

    ld hl, sp+$28
    ld a, [hl]
    cp $01
    jp z, Jump_004_72ad

    ld hl, sp+$28
    ld a, [hl]
    cp $07
    jp z, Jump_004_725f

    ld hl, sp+$28
    ld a, [hl]
    cp $0c
    jp z, Jump_004_7271

    ld hl, sp+$28
    ld a, [hl]
    cp $0f
    jp z, Jump_004_7295

    ld hl, sp+$28
    ld a, [hl]
    cp $12
    jp z, Jump_004_7278

    jp Jump_004_72c3


Jump_004_725f:
    ld hl, sp+$2b
    ld a, [hl]
    add $f0
    ld [hl], a
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_004_72c9

    ld [hl], $00
    jp Jump_004_72c9


Jump_004_7271:
    ld hl, sp+$2b
    ld [hl], $00
    jp Jump_004_72c9


Jump_004_7278:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_004_728a

    ld hl, sp+$2b
    ld a, [hl]
    add $f0
    ld [hl], a
    jp Jump_004_72c9


Jump_004_728a:
    xor a
    ld hl, sp+$2b
    or [hl]
    jp z, Jump_004_72c9

    dec [hl]
    jp Jump_004_72c9


Jump_004_7295:
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_004_72a3

    ld c, $04
    jp Jump_004_72a5


Jump_004_72a3:
    ld c, $10

Jump_004_72a5:
    ld hl, sp+$2b
    ld a, [hl]
    sub c
    ld [hl], a
    jp Jump_004_72c9


Jump_004_72ad:
    ld hl, sp+$2b
    ld a, [hl]
    cp $10
    jp c, Jump_004_72bc

    xor a
    ld a, $20
    sbc [hl]
    jp nc, Jump_004_72c3

Jump_004_72bc:
    ld hl, sp+$2b
    ld [hl], $00
    jp Jump_004_72c9


Jump_004_72c3:
    ld hl, sp+$2b
    ld a, [hl]
    add $f0
    ld [hl], a

Jump_004_72c9:
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$29
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_004_72ec:
    ld hl, sp+$2a
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_004_6e69


Jump_004_72f6:
    xor a
    ld hl, sp+$27
    or [hl]
    jp z, Jump_004_7300

    call Call_004_4ce5

Jump_004_7300:
    ld e, $01
    jp Jump_004_7b97


Jump_004_7305:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_004_732e

    ld hl, $c576
    ld a, [hl]
    cp $21
    jp nz, Jump_004_732e

    ld hl, $c40c
    ld [hl], $00
    ld c, $f1
    ld b, $65
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_732e:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_004_7357

    ld hl, $c576
    ld a, [hl]
    cp $22
    jp nz, Jump_004_7357

    ld hl, $c40c
    ld [hl], $00
    ld c, $12
    ld b, $66
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_7357:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_004_73d1

    ld hl, $c576
    ld a, [hl]
    cp $24
    jp nz, Jump_004_73d1

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c41b
    or [hl]
    jp z, Jump_004_73bc

    ld hl, $c415
    ld a, [hl]
    ld hl, sp+$23
    ld [hl], a
    ld hl, $c41b
    dec [hl]
    ld b, $87
    ld c, $6e
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, $c415
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp nz, Jump_004_73b6

    ld hl, sp+$23
    ld a, [hl]
    ld hl, $c415
    ld [hl], a
    ld hl, $c41b
    inc [hl]

Jump_004_73b6:
    call Call_004_4ce5
    jp Jump_004_73cc


Jump_004_73bc:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_004_73cc

    ld hl, $c417
    ld [hl], $00
    call Call_004_4ce5

Jump_004_73cc:
    ld e, $01
    jp Jump_004_7b97


Jump_004_73d1:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_004_743e

    ld hl, $c576
    ld a, [hl]
    cp $28
    jp nz, Jump_004_743e

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    cp $0f
    jp nz, Jump_004_73fe

    ld e, $01
    jp Jump_004_7b97


Jump_004_73fe:
    ld hl, $c41b
    ld a, [hl]
    add $01
    ld hl, sp+$00
    ld [hl], a
    ld b, $87
    ld c, $6e
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$30
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp z, Jump_004_7439

    ld hl, sp+$2b
    ld a, [hl]
    ld hl, $c415
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    call Call_004_4ce5

Jump_004_7439:
    ld e, $01
    jp Jump_004_7b97


Jump_004_743e:
    ld hl, $c576
    ld a, [hl]
    cp $30
    jp nz, Jump_004_7722

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_004_7454

    ld e, $00
    jp Jump_004_7b97


Jump_004_7454:
    ld hl, $c40a
    ld [hl], $00
    ld hl, $c414
    ld [hl], $02
    ld hl, $c417
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    add $01
    ld hl, $c411
    ld [hl], a
    ld hl, $c412
    ld [hl], $01
    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_771a

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_771a

    ld e, [hl]
    ld d, $00
    ld hl, $7491
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_74a0


    jp Jump_004_7549


    jp Jump_004_7630


    jp Jump_004_7683


    jp Jump_004_7683


Jump_004_74a0:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $03
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    jr nz, jr_004_74c1

    jp Jump_004_74db


jr_004_74c1:
    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$2b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    ld [de], a

Jump_004_74db:
    ld hl, sp+$2b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, $ff
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    call Call_004_4071
    ld c, e
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld c, a
    ld hl, $c417
    ld b, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    call Call_004_4071
    ld hl, sp+$2b
    ld [hl], e
    ld a, e
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    jp Jump_004_771a


Jump_004_7549:
    call Call_004_4071
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, $c40e
    ld [hl], $01
    ld hl, $c410
    ld [hl], $03
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4968
    ld hl, sp+$2c
    ld [hl], e
    add sp, $01
    call Call_004_4071
    ld c, e
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_004_4caa
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_004_75ed

    xor a
    ld hl, sp+$2b
    or [hl]
    jp z, Jump_004_75af

    ld hl, $c41e
    ld c, [hl]
    ld a, $05
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, sp+$2b
    ld a, [hl]
    ld [de], a

Jump_004_75af:
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    ld hl, $c417
    ld c, [hl]
    ld a, $ff
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    jp Jump_004_771a


Jump_004_75ed:
    ld hl, sp+$2b
    ld a, [hl]
    and $0f
    ld c, a
    or c
    jp z, Jump_004_7606

    ld hl, $c41e
    ld b, [hl]
    ld a, $05
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, c
    ld [de], a

Jump_004_7606:
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$2b
    ld a, [hl]
    and $f0
    ld c, a
    ld hl, $c417
    ld b, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_004_418f
    add sp, $02
    jp Jump_004_771a


Jump_004_7630:
    ld hl, $c40e
    ld [hl], $02
    ld hl, $c410
    ld [hl], $03
    call Call_004_4071
    ld c, e
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, $ff
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_41f0
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_07d2
    ld c, e
    add sp, $02
    ld a, c
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    jp Jump_004_771a


Jump_004_7683:
    ld hl, $c40e
    ld [hl], $03
    ld hl, $c410
    ld [hl], $05
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld hl, sp+$2d
    ld [hl], e
    add sp, $02
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$2b
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c41e
    ld c, [hl]
    ld a, $4c
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$2b
    ld a, [hl]
    ld [de], a
    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld c, e
    add sp, $02
    ld hl, $c417
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_49c5
    add sp, $03
    ld hl, $c417
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a30
    add sp, $03

Jump_004_771a:
    call Call_004_4ce5
    ld e, $01
    jp Jump_004_7b97


Jump_004_7722:
    ld hl, $c576
    ld a, [hl]
    cp $50
    jp nz, Jump_004_7811

    ld hl, $c414
    ld a, [hl]
    cp $01
    jp z, Jump_004_773c

    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_004_7741

Jump_004_773c:
    ld e, $00
    jp Jump_004_7b97


Jump_004_7741:
    ld hl, $c412
    ld a, [hl]
    cp $01
    jp nz, Jump_004_774e

    ld a, $01
    jr jr_004_774f

Jump_004_774e:
    xor a

jr_004_774f:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_004_7764

    ld hl, $c412
    ld a, [hl]
    cp $05
    jp z, Jump_004_7764

    ld e, $00
    jp Jump_004_7b97


Jump_004_7764:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_7797

    ld hl, $c40b
    ld [hl], $00
    call Call_004_5666
    ld b, e
    xor a
    or b
    jp z, Jump_004_777e

    ld e, $01
    jp Jump_004_7b97


Jump_004_777e:
    ld b, $33
    ld c, $66
    ld a, $01
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld e, $00
    jp Jump_004_7b97


Jump_004_7797:
    xor a
    ld hl, sp+$00
    or [hl]
    jp z, Jump_004_77f8

    ld hl, $c416
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_004_77f8

    ld e, $84
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_004_77f8

    ld e, [hl]
    ld d, $00
    ld hl, $77be
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_004_77cd


    jp Jump_004_77cd


    jp Jump_004_77dc


    jp Jump_004_77ea


    jp Jump_004_77ea


Jump_004_77cd:
    xor a
    ld a, $01
    ld hl, $c40e
    sbc [hl]
    jp nc, Jump_004_77f8

    ld e, $00
    jp Jump_004_7b97


Jump_004_77dc:
    ld hl, $c40e
    ld a, [hl]
    cp $02
    jp z, Jump_004_77f8

    ld e, $00
    jp Jump_004_7b97


Jump_004_77ea:
    ld hl, $c40e
    ld a, [hl]
    cp $03
    jp nc, Jump_004_77f8

    ld e, $00
    jp Jump_004_7b97


Jump_004_77f8:
    ld c, $7d
    ld b, $6e
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_004_51ae
    call Call_004_4ce5
    ld e, $01
    jp Jump_004_7b97


Jump_004_7811:
    ld hl, $c576
    ld a, [hl]
    cp $c0
    jp nz, Jump_004_783a

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_004_7827

    ld e, $01
    jp Jump_004_7b97


Jump_004_7827:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_783a:
    ld hl, $c576
    ld a, [hl]
    cp $80
    jp nz, Jump_004_7879

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_004_7853

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_004_7866

Jump_004_7853:
    ld hl, $c56b
    ld a, [hl]
    cp $02
    jp nz, Jump_004_7861

    ld hl, $c56b
    ld [hl], $01

Jump_004_7861:
    ld e, $01
    jp Jump_004_7b97


Jump_004_7866:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_7879:
    ld hl, $c576
    ld a, [hl]
    cp $42
    jp nz, Jump_004_78af

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_004_788f

    ld e, $00
    jp Jump_004_7b97


Jump_004_788f:
    ld bc, $4233
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_78af:
    ld hl, $c576
    ld a, [hl]
    cp $48
    jp nz, Jump_004_7922

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_004_78c5

    ld e, $00
    jp Jump_004_7b97


Jump_004_78c5:
    ld e, $82
    ld hl, $c416
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_004_7902

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld c, e
    add sp, $02
    ld a, c
    cp $07
    jp nz, Jump_004_7902

    ld hl, $c417
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld hl, $c418
    ld [hl], e
    add sp, $02

Jump_004_7902:
    ld bc, $4287
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $90
    ld b, $24
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_7922:
    ld hl, $c576
    ld a, [hl]
    cp $44
    jp nz, Jump_004_7958

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_004_7938

    ld e, $00
    jp Jump_004_7b97


Jump_004_7938:
    ld bc, $426a
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $90
    ld b, $24
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_7958:
    ld hl, $c576
    ld a, [hl]
    cp $41
    jp nz, Jump_004_7a53

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_004_796e

    ld e, $00
    jp Jump_004_7b97


Jump_004_796e:
    call Call_004_4087
    ld hl, sp+$22
    ld [hl], e
    xor a
    ld a, $40
    sbc [hl]
    jp c, Jump_004_79ad

    ld a, e
    push af
    inc sp
    call Call_004_4106
    add sp, $01
    ld hl, sp+$22
    ld a, [hl]
    ld hl, $c577
    ld [hl], a
    cp $40
    jp nz, Jump_004_79b4

    ld hl, $c417
    ld b, [hl]
    ld a, b
    push af
    inc sp
    call Call_004_4968
    ld b, e
    add sp, $01
    ld a, b
    add $ff
    ld hl, $c42a
    ld [hl], a
    cp $0e
    jp c, Jump_004_79b4

    ld [hl], $00
    jp Jump_004_79b4


Jump_004_79ad:
    ld hl, $c577
    ld a, [hl]
    ld hl, sp+$22
    ld [hl], a

Jump_004_79b4:
    ld e, $82
    ld hl, $c416
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_004_7a33

    ld hl, $c417
    ld b, [hl]
    ld a, b
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4aea
    ld b, e
    add sp, $02
    ld a, b
    cp $01
    jp nz, Jump_004_7a33

    ld hl, $c417
    ld b, [hl]
    ld a, b
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_004_4a8f
    ld b, e
    add sp, $02
    ld a, b
    cp $20
    jp nc, Jump_004_7a33

    ld hl, $c41c
    ld [hl], b
    ld hl, $c577
    ld [hl], $ff
    ld hl, $4253
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $4253
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld b, $90
    ld c, $24
    ld l, b
    ld h, c
    push hl
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, sp+$22
    ld a, [hl]
    ld hl, $c577
    ld [hl], a
    ld e, $01
    jp Jump_004_7b97


Jump_004_7a33:
    ld bc, $4253
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_004_7b97


Jump_004_7a53:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_7a87

    ld hl, $c576
    ld a, [hl]
    cp $20
    jp nz, Jump_004_7a87

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_004_7a70

    ld e, $00
    jp Jump_004_7b97


Jump_004_7a70:
    ld c, $33
    ld b, $66
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld e, $01
    jp Jump_004_7b97


Jump_004_7a87:
    ld hl, $c576
    ld a, [hl]
    cp $60
    jp nz, Jump_004_7b95

    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_004_7a9d

    ld e, $00
    jp Jump_004_7b97


Jump_004_7a9d:
    xor a
    ld hl, sp+$1e
    or [hl]
    jp z, Jump_004_7b65

    ld hl, $c412
    ld a, [hl]
    cp $01
    jp nz, Jump_004_7b65

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$21
    ld [hl], a
    ld hl, $c416
    ld c, [hl]
    ld hl, sp+$20
    ld [hl], c
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$2a
    ld [hl], a
    ld hl, $c417
    ld c, [hl]
    ld hl, sp+$29
    ld [hl], c
    ld hl, sp+$29
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$2a
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
    call Call_000_0d7a
    add sp, $04
    xor a
    ld hl, sp+$2a
    or [hl]
    jp nz, Jump_004_7af2

    dec hl
    ld a, [hl]
    cp $0f
    jp z, Jump_004_7b09

Jump_004_7af2:
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c417
    ld [hl], $0f
    ld hl, $c40b
    ld [hl], $00
    call Call_004_4c99
    ld e, $01
    jp Jump_004_7b97


Jump_004_7b09:
    ld hl, sp+$20
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$21
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
    call Call_000_0d7a
    add sp, $04
    xor a
    ld hl, sp+$21
    or [hl]
    jp nz, Jump_004_7b32

    dec hl
    ld a, [hl]
    cp $04
    jp z, Jump_004_7b49

Jump_004_7b32:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c416
    ld [hl], $04
    ld hl, $c40b
    ld [hl], $00
    call Call_004_4c99
    ld e, $01
    jp Jump_004_7b97


Jump_004_7b49:
    ld hl, $c40b
    ld [hl], $00
    ld c, $33
    ld b, $66
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld e, $01
    jp Jump_004_7b97


Jump_004_7b65:
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c416
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c417
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $c40b
    ld [hl], $00
    ld hl, $7ba9
    push hl
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_004_7b97


Jump_004_7b95:
    ld e, $00

Jump_004_7b97:
    add sp, $2c
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, jr_004_7bf6

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    nop
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_004_7bf6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
