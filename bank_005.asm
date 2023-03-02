; disasSembly of "lsdj.gb"
SECTION "ROM Bank $005", ROMX[$4000], BANK[$5]

Call_005_4000:
    ld hl, $c8fe
    ld a, [hl]
    cp $01
    jp z, Jump_005_400c

    jp Jump_005_403f


Jump_005_400c:
    xor a
    ld hl, $c8fd
    or [hl]
    jp z, Jump_005_4035

    xor a
    ld a, $02
    sbc [hl]
    jp nc, Jump_005_4028

    ld hl, $c8ff
    ld [hl], $02
    ld hl, $c900
    ld [hl], $03
    jp Jump_005_403f


Jump_005_4028:
    ld hl, $c8ff
    ld [hl], $01
    ld hl, $c900
    ld [hl], $02
    jp Jump_005_403f


Jump_005_4035:
    ld hl, $c8ff
    ld [hl], $00
    ld hl, $c900
    ld [hl], $02

Jump_005_403f:
    ret


    push bc
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c8ff
    ld a, [hl]
    add $0f
    ld c, a
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $50
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c900
    ld a, [hl]
    add $0f
    ld c, a
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $4160
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c8fd
    ld a, [hl]
    add $0f
    ld c, a
    ld a, $11
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $47
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $0f
    inc hl
    ld [hl], $9a
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_005_40b2

    ld b, $4c
    jp Jump_005_40b4


Jump_005_40b2:
    ld b, $53

Jump_005_40b4:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $4163
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nz, Jump_005_40d3

    ld b, $57
    jp Jump_005_40d5


Jump_005_40d3:
    ld b, $54

Jump_005_40d5:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $01
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c8fe
    ld a, [hl]
    add $0f
    ld b, a
    ld a, $02
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c8fe
    ld a, [hl]
    add $01
    ld b, a
    ld a, $03
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_375b
    ld b, e
    add sp, $02
    ld a, b
    add $0f
    ld b, a
    ld a, $01
    push af
    inc sp
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c8fe
    ld a, [hl]
    add $02
    ld b, a
    ld a, $03
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_375b
    ld b, e
    add sp, $02
    ld a, b
    add $0f
    ld b, a
    ld a, $01
    push af
    inc sp
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


    ld e, c
    ld d, a
    nop
    ld b, e
    ld d, b
    ld c, c
    nop

Call_005_4167:
    push bc
    ld hl, $c8fe
    ld a, [hl]
    or a
    jp z, Jump_005_417d

    cp $01
    jp z, Jump_005_41ab

    cp $02
    jp z, Jump_005_4205

    jp Jump_005_420a


Jump_005_417d:
    ld hl, $c8ff
    ld a, [hl]
    ld hl, $c8fd
    cp [hl]
    jp nz, Jump_005_4190

    ld hl, $c402
    ld [hl], $09
    jp Jump_005_420a


Jump_005_4190:
    ld hl, $c900
    ld a, [hl]
    ld hl, $c8fd
    cp [hl]
    jp nz, Jump_005_41a3

    ld hl, $c402
    ld [hl], $0a
    jp Jump_005_420a


Jump_005_41a3:
    ld hl, $c402
    ld [hl], $08
    jp Jump_005_420a


Jump_005_41ab:
    xor a
    ld a, $04
    ld hl, $c8fd
    sbc [hl]
    jp c, Jump_005_420a

    ld e, [hl]
    ld d, $00
    ld hl, $41bf
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_41ce


    jp Jump_005_41d6


    jp Jump_005_41de


    jp Jump_005_41e6


    jp Jump_005_41ee


Jump_005_41ce:
    ld hl, $c402
    ld [hl], $04
    jp Jump_005_420a


Jump_005_41d6:
    ld hl, $c402
    ld [hl], $03
    jp Jump_005_420a


Jump_005_41de:
    ld hl, $c402
    ld [hl], $01
    jp Jump_005_420a


Jump_005_41e6:
    ld hl, $c402
    ld [hl], $06
    jp Jump_005_420a


Jump_005_41ee:
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nz, Jump_005_41fc

    ld c, $0c
    jp Jump_005_41fe


Jump_005_41fc:
    ld c, $05

Jump_005_41fe:
    ld hl, $c402
    ld [hl], c
    jp Jump_005_420a


Jump_005_4205:
    ld hl, $c402
    ld [hl], $02

Jump_005_420a:
    pop bc
    ret


Call_005_420c:
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c901
    ld [hl], a
    ld a, $00
    ldh [rSCX], a
    ldh [rSCY], a
    ret


Call_005_421a:
    push bc
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4231

    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_005_4231:
    pop bc
    ret


    call Call_005_421a
    ld hl, $c8fd
    dec [hl]
    ld a, [hl]
    cp $ff
    jp nz, Jump_005_4243

    call Call_000_144b

Jump_005_4243:
    call Call_005_4167
    ld a, $04
    push af
    inc sp
    call Call_005_420c
    add sp, $01
    call Call_005_4000
    ret


    call Call_005_421a
    ld hl, $c8fd
    inc [hl]
    call Call_005_4167
    ld a, $02
    push af
    inc sp
    call Call_005_420c
    add sp, $01
    call Call_005_4000
    ret


    call Call_005_421a
    ld hl, $c8fe
    dec [hl]
    ld a, [hl]
    cp $ff
    jp nz, Jump_005_427a

    call Call_000_144b

Jump_005_427a:
    call Call_005_4167
    ld a, $01
    push af
    inc sp
    call Call_005_420c
    add sp, $01
    ret


    call Call_005_421a
    ld hl, $c8fe
    inc [hl]
    ld a, [hl]
    cp $03
    jp nz, Jump_005_4297

    call Call_000_144b

Jump_005_4297:
    call Call_005_4167
    ld a, $03
    push af
    inc sp
    call Call_005_420c
    add sp, $01
    ret


Call_005_42a4:
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
    jp z, Jump_005_42c9

    ld c, [hl]
    ld a, $1c
    add c
    ld e, a
    ld a, $08
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    jp Jump_005_42cb


Jump_005_42c9:
    ld c, $3f

Jump_005_42cb:
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    pop bc
    ret


    ld [bc], a
    dec b
    rlca
    ld [$0c0b], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop

Call_005_42e7:
    push bc
    add sp, -$02
    ld hl, $c448
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c449
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_4303

    call Call_000_144b

Jump_005_4303:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_430f

    call Call_000_144b

Jump_005_430f:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_431e

jr_005_4319:
    or a
    rl c
    rl b

jr_005_431e:
    dec a
    jr nz, jr_005_4319

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
    ld hl, sp+$06
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
    push bc
    ld a, $01
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
    jp nz, Jump_005_435b

    ld c, $00

Jump_005_435b:
    ld e, c
    add sp, $02
    pop bc
    ret


Call_005_4360:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_436e

    call Call_000_144b

Jump_005_436e:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_437a

    call Call_000_144b

Jump_005_437a:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_4389

jr_005_4384:
    or a
    rl c
    rl b

jr_005_4389:
    dec a
    jr nz, jr_005_4384

    ld hl, $b690
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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


Call_005_43b7:
    push bc
    add sp, -$02
    ld hl, $c448
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c449
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_43d3

    call Call_000_144b

Jump_005_43d3:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_43df

    call Call_000_144b

Jump_005_43df:
    xor a
    ld a, $13
    ld hl, sp+$07
    sbc [hl]
    jp nc, Jump_005_43eb

    call Call_000_144b

Jump_005_43eb:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_43fa

jr_005_43f5:
    or a
    rl c
    rl b

jr_005_43fa:
    dec a
    jr nz, jr_005_43f5

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
    ld hl, sp+$06
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
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_005_442a:
    push bc
    add sp, -$02
    ld hl, $c44a
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c44b
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_4446

    call Call_000_144b

Jump_005_4446:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_4452

    call Call_000_144b

Jump_005_4452:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_4461

jr_005_445c:
    or a
    rl c
    rl b

jr_005_4461:
    dec a
    jr nz, jr_005_445c

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
    ld hl, sp+$06
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
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_005_4491:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_449f

    call Call_000_144b

Jump_005_449f:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_44ab

    call Call_000_144b

Jump_005_44ab:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_44ba

jr_005_44b5:
    or a
    rl c
    rl b

jr_005_44ba:
    dec a
    jr nz, jr_005_44b5

    ld hl, $b480
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_005_44e8:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_44f6

    call Call_000_144b

Jump_005_44f6:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_4502

    call Call_000_144b

Jump_005_4502:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_4511

jr_005_450c:
    or a
    rl c
    rl b

jr_005_4511:
    dec a
    jr nz, jr_005_450c

    ld hl, $b690
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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


Call_005_453b:
    push bc
    add sp, -$02
    ld hl, $c44a
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c44b
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_4557

    call Call_000_144b

Jump_005_4557:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_4563

    call Call_000_144b

Jump_005_4563:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_4572

jr_005_456d:
    or a
    rl c
    rl b

jr_005_4572:
    dec a
    jr nz, jr_005_456d

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
    ld hl, sp+$06
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
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_005_459e:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp c, Jump_005_45ac

    call Call_000_144b

Jump_005_45ac:
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_45b8

    call Call_000_144b

Jump_005_45b8:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_005_45c7

jr_005_45c2:
    or a
    rl c
    rl b

jr_005_45c7:
    dec a
    jr nz, jr_005_45c2

    ld hl, $b480
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_005_45f1:
    push bc
    add sp, -$02
    ld hl, $c92e
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4609

    jp Jump_005_4664


Jump_005_4609:
    ld hl, $c92d
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    ld a, $db
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    add b
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c92d
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld b, a

Jump_005_4636:
    xor a
    ld a, b
    ld hl, sp+$00
    sbc [hl]
    jp nc, Jump_005_4664

    ld hl, $c92d
    ld c, [hl]
    ld a, $e1
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    inc b
    jp Jump_005_4636


Jump_005_4664:
    add sp, $02
    pop bc
    ret


Call_005_4668:
    push bc
    add sp, -$0a
    ld hl, $c41c
    ld a, [hl]
    and $1f
    ld c, a
    ld b, $00
    ld a, $05
    jr jr_005_467d

jr_005_4678:
    or a
    rl c
    rl b

jr_005_467d:
    dec a
    jr nz, jr_005_4678

    ld hl, $b690
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, $b480
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, $b680
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $ba80
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $b880
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, c
    add $80
    ld c, a
    ld a, b
    adc $bc
    ld b, a
    ld hl, $c46e
    push hl
    ld hl, sp+$0a
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
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c48e
    push hl
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c49e
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c4ae
    push hl
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $c4be
    push hl
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    add sp, $0a
    pop bc
    ret


Call_005_472b:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    and $0f
    ld c, a
    cp $0f
    jp nz, Jump_005_4756

    ld hl, sp+$04
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld a, $48
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_005_4760


Jump_005_4756:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_005_4760:
    pop bc
    ret


Call_005_4762:
    push bc
    add sp, -$03
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_4771

    call Call_000_144b

Jump_005_4771:
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $04
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $0a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $00
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $01
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $02
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
    call Call_000_2c57
    call Call_005_4668
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $42
    inc hl
    ld [hl], $98
    ld c, $00

Jump_005_47d9:
    ld a, c
    cp $10
    jp nc, Jump_005_481a

    ld a, $6e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, $c574
    inc [hl]
    jr nz, jr_005_47f9

    inc hl
    inc [hl]

jr_005_47f9:
    ld a, $7e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld a, [hl]
    add $1b
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    inc c
    jp Jump_005_47d9


Jump_005_481a:
    ld hl, $c574
    ld [hl], $47
    inc hl
    ld [hl], $98
    ld c, $00

Jump_005_4824:
    ld a, c
    cp $10
    jp nc, Jump_005_48ca

    ld a, $ae
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, $8e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    inc hl
    inc hl
    ld [hl], a
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld hl, $c574
    ld a, [hl]
    add $03
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld a, [hl]
    add $fc
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld a, $9e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld a, [hl]
    add $02
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld a, $be
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld a, [hl]
    add $19
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    inc c
    jp Jump_005_4824


Jump_005_48ca:
    ld hl, $c92e
    ld a, [hl]
    add $02
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c92d
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, $db
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_005_48fc

    ld b, $03
    jp Jump_005_48fe


Jump_005_48fc:
    ld b, $02

Jump_005_48fe:
    ld a, b
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_492c

    call Call_005_66e3

Jump_005_492c:
    add sp, $03
    pop bc
    ret


Call_005_4930:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $04
    jp z, Jump_005_4944

    ld hl, sp+$04
    ld a, [hl]
    cp $0a
    jp z, Jump_005_4949

    jp Jump_005_4963


Jump_005_4944:
    ld e, $01
    jp Jump_005_4965


Jump_005_4949:
    ld hl, $c92d
    ld a, [hl]
    cp $02
    jp nz, Jump_005_4956

    ld a, $01
    jr jr_005_4957

Jump_005_4956:
    xor a

jr_005_4957:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld e, c
    jp Jump_005_4965


Jump_005_4963:
    ld e, $00

Jump_005_4965:
    pop bc
    ret


    push bc
    add sp, -$05
    ld hl, sp+$04
    ld [hl], $ff
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_005_498d

    ld hl, $c41e
    ld b, [hl]
    ld a, $04
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c41c
    cp [hl]
    jr nz, jr_005_498d

    jp Jump_005_49ab


Jump_005_498d:
jr_005_498d:
    ld a, $00
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    ld a, $01
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    ld a, $02
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    jp Jump_005_4aa4


Jump_005_49ab:
    ld hl, $c41e
    ld b, [hl]
    ld a, $c4
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or a
    jp z, Jump_005_49c6

    cp $ff
    jp z, Jump_005_4a12

    jp Jump_005_49e3


Jump_005_49c6:
    ld hl, $c41e
    ld a, [hl]
    add a
    ld b, a
    ld a, $bc
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    and $0f
    ld hl, sp+$04
    ld [hl], a
    jp Jump_005_4a12


Jump_005_49e3:
    ld hl, $c41e
    ld a, [hl]
    add a
    ld b, a
    ld a, $bc
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld [hl], e
    ld b, e
    ld a, b
    and $0f
    ld hl, sp+$04
    ld [hl], a

Jump_005_4a12:
    ld hl, $c41e
    ld b, [hl]
    ld a, $3f
    add b
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $ff
    jp nz, Jump_005_4a55

    ld hl, $c41e
    ld b, [hl]
    ld a, $10
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $50
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld a, b
    add $40
    ld b, a
    ld a, $50
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    ld [hl], a
    jp Jump_005_4a7a


Jump_005_4a55:
    ld hl, $c41e
    ld b, [hl]
    ld a, $08
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    add $04
    ld b, a
    ld a, $08
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a

Jump_005_4a7a:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3183
    add sp, $02
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3183
    add sp, $02
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_3183
    add sp, $02

Jump_005_4aa4:
    add sp, $05
    pop bc
    ret


Call_005_4aa8:
    push bc
    add sp, -$02
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4aba

    call Call_005_66e3
    jp Jump_005_4b06


Jump_005_4aba:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_005_4ac7

    ld c, $03
    jp Jump_005_4ac9


Jump_005_4ac7:
    ld c, $02

Jump_005_4ac9:
    ld hl, $c92d
    ld b, [hl]
    ld a, $db
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c92e
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c92d
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_005_4b06:
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $82
    jp c, Jump_005_4b59

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_4b59

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $4b2a
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_4b36


    jp Jump_005_4b36


    jp Jump_005_4b49


    jp Jump_005_4b49


Jump_005_4b36:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_4b59


Jump_005_4b49:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_4b59:
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$0f
    ld hl, $c41c
    ld a, [hl]
    cp $20
    jp c, Jump_005_4b6c

    call Call_000_144b

Jump_005_4b6c:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_005_4b85

    ld a, $01
    jr jr_005_4b86

Jump_005_4b85:
    xor a

jr_005_4b86:
    ld c, a
    or c
    jp nz, Jump_005_4b90

    ld hl, $c406
    ld [hl], $00

Jump_005_4b90:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_005_4dfb

    cp $02
    jp z, Jump_005_4e14

    cp $04
    jp z, Jump_005_4e2c

    cp $08
    jp z, Jump_005_4e46

    xor a
    or c
    jp nz, Jump_005_4c68

    ld a, [hl]
    cp $11
    jp z, Jump_005_4e60

    cp $12
    jp z, Jump_005_518e

    cp $14
    jp z, Jump_005_54a8

    cp $18
    jp z, Jump_005_57fe

    cp $20
    jp z, Jump_005_6010

    cp $21
    jp z, Jump_005_5b41

    cp $22
    jp z, Jump_005_5b5b

    cp $24
    jp z, Jump_005_5b74

    cp $28
    jp z, Jump_005_5b98

    cp $30
    jp z, Jump_005_5bbc

    cp $42
    jp z, Jump_005_5fe8

    cp $43
    jp z, Jump_005_4c0b

    cp $44
    jp z, Jump_005_5e61

    cp $48
    jp z, Jump_005_5e88

    cp $50
    jp z, Jump_005_5dc2

    cp $60
    jp z, Jump_005_602f

    cp $80
    jp z, Jump_005_5e39

    cp $c0
    jp z, Jump_005_5e19

    jp Jump_005_6128


Jump_005_4c0b:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4c63

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c92d
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c92e
    ld [hl], a
    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_005_4c54

    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_005_4c54:
    call Call_005_4762
    call Call_005_4aa8
    ld hl, $612e
    push hl
    call Call_000_0dab
    add sp, $02

Jump_005_4c63:
    ld e, $01
    jp Jump_005_612a


Jump_005_4c68:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_005_6128

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_005_6128

    ld hl, $c92e
    ld a, [hl]
    add $02
    ld c, a
    ld hl, $c92d
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $42
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
    call Call_000_33bc
    add sp, $02
    ld e, $82
    ld hl, $c92d
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_005_4cbb

    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    jp Jump_005_4ccb


Jump_005_4cbb:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8

Jump_005_4ccb:
    ld hl, $c92d
    ld a, [hl]
    or a
    jp z, Jump_005_4ce5

    cp $01
    jp z, Jump_005_4d17

    cp $02
    jp z, Jump_005_4d49

    cp $04
    jp z, Jump_005_4d49

    jp Jump_005_4df6


Jump_005_4ce5:
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_44e8
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_005_4df6

    ld hl, $c92f
    ld a, [hl]
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, $c92e
    ld c, [hl]
    ld hl, $c92f
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    jp Jump_005_4df6


Jump_005_4d17:
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_459e
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_005_4df6

    ld hl, $c930
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c92e
    ld c, [hl]
    ld hl, $c930
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    jp Jump_005_4df6


Jump_005_4d49:
    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4d57

    ld c, $01
    jp Jump_005_4d59


Jump_005_4d57:
    ld c, $00

Jump_005_4d59:
    ld a, c
    add $01
    ld hl, $c468
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp nz, Jump_005_4d88

    ld hl, $c41e
    ld b, [hl]
    ld a, $4c
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$0c
    ld [hl], a
    jp Jump_005_4da7


Jump_005_4d88:
    ld hl, $c406
    ld b, [hl]
    inc [hl]
    xor a
    or b
    jp z, Jump_005_4da7

    ld b, $55
    ld c, $76
    ld hl, sp+$0c
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

Jump_005_4da7:
    ld hl, sp+$0c
    ld a, [hl]
    cp $0a
    jp nz, Jump_005_4dbc

    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4dbc

    ld hl, sp+$0c
    ld [hl], $00

Jump_005_4dbc:
    ld hl, $c92e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$0c
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_005_4df6:
    ld e, $01
    jp Jump_005_612a


Jump_005_4dfb:
    call Call_005_45f1
    ld hl, $c92d
    inc [hl]
    ld a, [hl]
    cp $06
    jp nz, Jump_005_4e0c

    ld hl, $c92d
    dec [hl]

Jump_005_4e0c:
    call Call_005_4aa8
    ld e, $01
    jp Jump_005_612a


Jump_005_4e14:
    call Call_005_45f1
    xor a
    ld hl, $c92d
    or [hl]
    jp nz, Jump_005_4e20

    inc [hl]

Jump_005_4e20:
    ld hl, $c92d
    dec [hl]
    call Call_005_4aa8
    ld e, $01
    jp Jump_005_612a


Jump_005_4e2c:
    call Call_005_45f1
    ld hl, $c92e
    dec [hl]
    ld c, [hl]
    ld a, c
    cp $ff
    jp nz, Jump_005_4e3e

    ld hl, $c92e
    inc [hl]

Jump_005_4e3e:
    call Call_005_4aa8
    ld e, $01
    jp Jump_005_612a


Jump_005_4e46:
    call Call_005_45f1
    ld hl, $c92e
    inc [hl]
    ld a, [hl]
    cp $10
    jp nz, Jump_005_4e58

    ld hl, $c92e
    ld [hl], $0f

Jump_005_4e58:
    call Call_005_4aa8
    ld e, $01
    jp Jump_005_612a


Jump_005_4e60:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4e95

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$0d
    ld d, h
    ld e, l
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$0e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_005_4ea3


Jump_005_4e95:
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0e
    ld [hl], c

Jump_005_4ea3:
    ld hl, sp+$0d
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_005_4eaa:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_005_5189

    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $82
    jp c, Jump_005_4f06

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_4f06

    ld a, [hl]
    add $fe
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $4ed7
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_4ee3


    jp Jump_005_4ee3


    jp Jump_005_4ef6


    jp Jump_005_4ef6


Jump_005_4ee3:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_4f06


Jump_005_4ef6:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_4f06:
    ld hl, sp+$0e
    ld a, [hl]
    add $02
    ld b, a
    ld hl, $c92d
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_005_517f

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_517f

    ld e, [hl]
    ld d, $00
    ld hl, $4f46
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_4f58


    jp Jump_005_4f92


    jp Jump_005_4fc1


    jp Jump_005_50ca


    jp Jump_005_4fc1


    jp Jump_005_50ca


Jump_005_4f58:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_44e8
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    ld c, a
    cp $0f
    jp z, Jump_005_4f88

    ld hl, sp+$0c
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02

Jump_005_4f88:
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c92f
    ld [hl], a
    jp Jump_005_517f


Jump_005_4f92:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_459e
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c930
    ld [hl], a
    jp Jump_005_517f


Jump_005_4fc1:
    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_4fcf

    ld c, $01
    jp Jump_005_4fd1


Jump_005_4fcf:
    ld c, $00

Jump_005_4fd1:
    ld a, c
    add $01
    ld hl, $c468
    ld [hl], a
    ld hl, sp+$0e
    ld c, [hl]
    ld de, $c458
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_005_5002

    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_005_5002:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    cp $13
    jp nc, Jump_005_5047

Jump_005_5015:
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld a, [hl]
    add $01
    ld c, a
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    push af
    inc sp
    call Call_005_4930
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_005_5015

Jump_005_5047:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_005_5078

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_005_509b

Jump_005_5078:
    ld hl, sp+$0e
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

Jump_005_509b:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, sp+$0e
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
    jp Jump_005_517f


Jump_005_50ca:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld a, c
    or a
    jp z, Jump_005_514c

    cp $01
    jp z, Jump_005_50fe

    cp $07
    jp z, Jump_005_510d

    cp $0c
    jp z, Jump_005_511c

    cp $12
    jp z, Jump_005_5132

    jp Jump_005_5149


Jump_005_50fe:
    ld hl, sp+$0c
    inc [hl]
    xor a
    ld a, $20
    sbc [hl]
    jp nc, Jump_005_514c

    ld [hl], $20
    jp Jump_005_514c


Jump_005_510d:
    ld hl, sp+$0c
    inc [hl]
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_005_514c

    ld [hl], $1f
    jp Jump_005_514c


Jump_005_511c:
    ld hl, sp+$0c
    ld a, [hl]
    cp $01
    jp nz, Jump_005_512b

    ld hl, sp+$0c
    ld [hl], $03
    jp Jump_005_514c


Jump_005_512b:
    ld hl, sp+$0c
    ld [hl], $02
    jp Jump_005_514c


Jump_005_5132:
    ld hl, sp+$0c
    ld a, [hl]
    cp $03
    jp nz, Jump_005_5143

    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_005_514c

Jump_005_5143:
    ld hl, sp+$0c
    inc [hl]
    jp Jump_005_514c


Jump_005_5149:
    ld hl, sp+$0c
    inc [hl]

Jump_005_514c:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_005_517f:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_005_4eaa


Jump_005_5189:
    ld e, $01
    jp Jump_005_612a


Jump_005_518e:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_51c3

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$0d
    ld d, h
    ld e, l
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$0e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_005_51d1


Jump_005_51c3:
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0e
    ld [hl], c

Jump_005_51d1:
    ld hl, sp+$0d
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_005_51d8:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_005_54a3

    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $82
    jp c, Jump_005_5234

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_5234

    ld a, [hl]
    add $fe
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $5205
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_5211


    jp Jump_005_5211


    jp Jump_005_5224


    jp Jump_005_5224


Jump_005_5211:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_5234


Jump_005_5224:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_5234:
    ld hl, sp+$0e
    ld a, [hl]
    add $02
    ld b, a
    ld hl, $c92d
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_005_5499

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_5499

    ld e, [hl]
    ld d, $00
    ld hl, $5274
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_5286


    jp Jump_005_52bf


    jp Jump_005_52ee


    jp Jump_005_53f8


    jp Jump_005_52ee


    jp Jump_005_53f8


Jump_005_5286:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_44e8
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld a, e
    and $0f
    jr nz, jr_005_529b

    jp Jump_005_52b5


jr_005_529b:
    ld hl, sp+$0c
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02

Jump_005_52b5:
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c92f
    ld [hl], a
    jp Jump_005_5499


Jump_005_52bf:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_459e
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c930
    ld [hl], a
    jp Jump_005_5499


Jump_005_52ee:
    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_52fc

    ld c, $01
    jp Jump_005_52fe


Jump_005_52fc:
    ld c, $00

Jump_005_52fe:
    ld a, c
    add $01
    ld hl, $c468
    ld [hl], a
    ld hl, sp+$0e
    ld c, [hl]
    ld de, $c458
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_005_532f

    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_005_532f:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_005_5375

Jump_005_5344:
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld a, [hl]
    add $ff
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    push af
    inc sp
    call Call_005_4930
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_005_5344

Jump_005_5375:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_005_53a6

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_005_53c9

Jump_005_53a6:
    ld hl, sp+$0e
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

Jump_005_53c9:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, sp+$0e
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
    jp Jump_005_5499


Jump_005_53f8:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld a, c
    cp $01
    jp z, Jump_005_5428

    cp $07
    jp z, Jump_005_5428

    cp $0c
    jp z, Jump_005_5437

    cp $12
    jp z, Jump_005_544d

    jp Jump_005_5463


Jump_005_5428:
    ld hl, sp+$0c
    dec [hl]
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_005_5466

    ld [hl], $00
    jp Jump_005_5466


Jump_005_5437:
    ld hl, sp+$0c
    ld a, [hl]
    cp $02
    jp nz, Jump_005_5446

    ld hl, sp+$0c
    ld [hl], $03
    jp Jump_005_5466


Jump_005_5446:
    ld hl, sp+$0c
    ld [hl], $01
    jp Jump_005_5466


Jump_005_544d:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp nz, Jump_005_545d

    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_005_5466

Jump_005_545d:
    ld hl, sp+$0c
    dec [hl]
    jp Jump_005_5466


Jump_005_5463:
    ld hl, sp+$0c
    dec [hl]

Jump_005_5466:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_005_5499:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_005_51d8


Jump_005_54a3:
    ld e, $01
    jp Jump_005_612a


Jump_005_54a8:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_54dd

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$0d
    ld d, h
    ld e, l
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$0e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_005_54eb


Jump_005_54dd:
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0e
    ld [hl], c

Jump_005_54eb:
    ld hl, sp+$0d
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_005_54f2:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_005_57f9

    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $82
    jp c, Jump_005_554e

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_554e

    ld a, [hl]
    add $fe
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $551f
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_552b


    jp Jump_005_552b


    jp Jump_005_553e


    jp Jump_005_553e


Jump_005_552b:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_554e


Jump_005_553e:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_554e:
    ld hl, sp+$0e
    ld a, [hl]
    add $02
    ld b, a
    ld hl, $c92d
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_005_57ef

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_57ef

    ld e, [hl]
    ld d, $00
    ld hl, $558e
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_55a0


    jp Jump_005_55d0


    jp Jump_005_5612


    jp Jump_005_571a


    jp Jump_005_5612


    jp Jump_005_571a


Jump_005_55a0:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_44e8
    ld hl, sp+$0d
    add sp, $01
    ld a, e
    add $10
    ld [hl], a
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c92f
    ld [hl], a
    jp Jump_005_57ef


Jump_005_55d0:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_459e
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_55eb

    ld c, $04
    jp Jump_005_55ed


Jump_005_55eb:
    ld c, $0c

Jump_005_55ed:
    ld hl, sp+$0c
    ld a, [hl]
    add c
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c930
    ld [hl], a
    jp Jump_005_57ef


Jump_005_5612:
    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_5620

    ld c, $01
    jp Jump_005_5622


Jump_005_5620:
    ld c, $00

Jump_005_5622:
    ld a, c
    add $01
    ld hl, $c468
    ld [hl], a
    ld hl, sp+$0e
    ld c, [hl]
    ld de, $c458
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_005_5653

    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_005_5653:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    cp $13
    jp nc, Jump_005_5697

Jump_005_5666:
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld a, [hl]
    add $01
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    push af
    inc sp
    call Call_005_4930
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_005_5666

Jump_005_5697:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_005_56c8

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_005_56eb

Jump_005_56c8:
    ld hl, sp+$0e
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

Jump_005_56eb:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, sp+$0e
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
    jp Jump_005_57ef


Jump_005_571a:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld a, c
    or a
    jp z, Jump_005_57bc

    cp $01
    jp z, Jump_005_5753

    cp $07
    jp z, Jump_005_5765

    cp $0c
    jp z, Jump_005_5777

    cp $0f
    jp z, Jump_005_579e

    cp $12
    jp z, Jump_005_577e

    jp Jump_005_57b6


Jump_005_5753:
    ld hl, sp+$0c
    ld a, [hl]
    add $10
    ld [hl], a
    xor a
    ld a, $20
    sbc [hl]
    jp nc, Jump_005_57bc

    ld [hl], $20
    jp Jump_005_57bc


Jump_005_5765:
    ld hl, sp+$0c
    ld a, [hl]
    add $10
    ld [hl], a
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_005_57bc

    ld [hl], $1f
    jp Jump_005_57bc


Jump_005_5777:
    ld hl, sp+$0c
    ld [hl], $03
    jp Jump_005_57bc


Jump_005_577e:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_005_5790

    ld hl, sp+$0c
    ld a, [hl]
    add $10
    ld [hl], a
    jp Jump_005_57bc


Jump_005_5790:
    ld hl, sp+$0c
    ld a, [hl]
    cp $03
    jp z, Jump_005_57bc

    ld hl, sp+$0c
    inc [hl]
    jp Jump_005_57bc


Jump_005_579e:
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_57ac

    ld c, $04
    jp Jump_005_57ae


Jump_005_57ac:
    ld c, $10

Jump_005_57ae:
    ld hl, sp+$0c
    ld a, [hl]
    add c
    ld [hl], a
    jp Jump_005_57bc


Jump_005_57b6:
    ld hl, sp+$0c
    ld a, [hl]
    add $10
    ld [hl], a

Jump_005_57bc:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_005_57ef:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_005_54f2


Jump_005_57f9:
    ld e, $01
    jp Jump_005_612a


Jump_005_57fe:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_5833

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$0d
    ld d, h
    ld e, l
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$0e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_005_5841


Jump_005_5833:
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0e
    ld [hl], c

Jump_005_5841:
    ld hl, sp+$0d
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_005_5848:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_005_5b3c

    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $82
    jp c, Jump_005_58a4

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_58a4

    ld a, [hl]
    add $fe
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $5875
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_5881


    jp Jump_005_5881


    jp Jump_005_5894


    jp Jump_005_5894


Jump_005_5881:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_58a4


Jump_005_5894:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_58a4:
    ld hl, sp+$0e
    ld a, [hl]
    add $02
    ld b, a
    ld hl, $c92d
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $42
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_005_5b32

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_5b32

    ld e, [hl]
    ld d, $00
    ld hl, $58e4
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_58f6


    jp Jump_005_5926


    jp Jump_005_5968


    jp Jump_005_5a72


    jp Jump_005_5968


    jp Jump_005_5a72


Jump_005_58f6:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_44e8
    ld hl, sp+$0d
    add sp, $01
    ld a, e
    add $f0
    ld [hl], a
    push af
    inc sp
    call Call_005_472b
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c92f
    ld [hl], a
    jp Jump_005_5b32


Jump_005_5926:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_459e
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_5941

    ld c, $04
    jp Jump_005_5943


Jump_005_5941:
    ld c, $0c

Jump_005_5943:
    ld hl, sp+$0c
    ld a, [hl]
    sub c
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c930
    ld [hl], a
    jp Jump_005_5b32


Jump_005_5968:
    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp nz, Jump_005_5976

    ld c, $01
    jp Jump_005_5978


Jump_005_5976:
    ld c, $00

Jump_005_5978:
    ld a, c
    add $01
    ld hl, $c468
    ld [hl], a
    ld hl, sp+$0e
    ld c, [hl]
    ld de, $c458
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_005_59a9

    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_005_59a9:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_005_59ef

Jump_005_59be:
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c458
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld a, [hl]
    add $ff
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    push af
    inc sp
    call Call_005_4930
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_005_59be

Jump_005_59ef:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_005_42a4
    add sp, $01
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_005_5a20

    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_005_5a43

Jump_005_5a20:
    ld hl, sp+$0e
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

Jump_005_5a43:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, sp+$0e
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
    jp Jump_005_5b32


Jump_005_5a72:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld a, c
    or a
    jp z, Jump_005_5aff

    cp $01
    jp z, Jump_005_5aab

    cp $07
    jp z, Jump_005_5aab

    cp $0c
    jp z, Jump_005_5abd

    cp $0f
    jp z, Jump_005_5ae1

    cp $12
    jp z, Jump_005_5ac4

    jp Jump_005_5af9


Jump_005_5aab:
    ld hl, sp+$0c
    ld a, [hl]
    add $f0
    ld [hl], a
    xor a
    ld a, $1f
    sbc [hl]
    jp nc, Jump_005_5aff

    ld [hl], $00
    jp Jump_005_5aff


Jump_005_5abd:
    ld hl, sp+$0c
    ld [hl], $00
    jp Jump_005_5aff


Jump_005_5ac4:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_005_5ad6

    ld hl, sp+$0c
    ld a, [hl]
    add $f0
    ld [hl], a
    jp Jump_005_5aff


Jump_005_5ad6:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_005_5aff

    dec [hl]
    jp Jump_005_5aff


Jump_005_5ae1:
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_5aef

    ld c, $04
    jp Jump_005_5af1


Jump_005_5aef:
    ld c, $10

Jump_005_5af1:
    ld hl, sp+$0c
    ld a, [hl]
    sub c
    ld [hl], a
    jp Jump_005_5aff


Jump_005_5af9:
    ld hl, sp+$0c
    ld a, [hl]
    add $f0
    ld [hl], a

Jump_005_5aff:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld c, e
    add sp, $01
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02

Jump_005_5b32:
    ld hl, sp+$0e
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_005_5848


Jump_005_5b3c:
    ld e, $01
    jp Jump_005_612a


Jump_005_5b41:
    ld hl, $c41c
    ld a, [hl]
    cp $1f
    jp nc, Jump_005_5b4b

    inc [hl]

Jump_005_5b4b:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5b5b:
    xor a
    ld hl, $c41c
    or [hl]
    jp z, Jump_005_5b64

    dec [hl]

Jump_005_5b64:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5b74:
    ld hl, $c41c
    ld a, [hl]
    cp $10
    jp nc, Jump_005_5b83

    add $10
    ld [hl], a
    jp Jump_005_5b88


Jump_005_5b83:
    ld hl, $c41c
    ld [hl], $1f

Jump_005_5b88:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5b98:
    ld hl, $c41c
    ld a, [hl]
    bit 4, a
    jp z, Jump_005_5ba7

    add $f0
    ld [hl], a
    jp Jump_005_5bac


Jump_005_5ba7:
    ld hl, $c41c
    ld [hl], $00

Jump_005_5bac:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5bbc:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_005_6128

    ld [hl], $00
    call Call_005_45f1
    ld hl, $c414
    ld [hl], $02
    ld hl, $c92e
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    add $01
    ld hl, $c411
    ld [hl], a
    ld hl, $c412
    ld [hl], $05
    ld hl, $c92d
    ld a, [hl]
    xor $80
    cp $80
    jp c, Jump_005_5dba

    ld e, $85
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp c, Jump_005_5dba

    ld e, [hl]
    ld d, $00
    ld hl, $5c01
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_5c13


    jp Jump_005_5c56


    jp Jump_005_5c99


    jp Jump_005_5c99


    jp Jump_005_5d2b


    jp Jump_005_5d2b


Jump_005_5c13:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $01
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_44e8
    ld hl, $c92f
    ld [hl], e
    add sp, $01
    ld hl, $c92e
    ld c, [hl]
    ld hl, $c92f
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    jp Jump_005_5dba


Jump_005_5c56:
    ld hl, $c40e
    ld [hl], $01
    ld hl, $c410
    ld [hl], $02
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_459e
    ld hl, $c930
    ld [hl], e
    add sp, $01
    ld hl, $c92e
    ld c, [hl]
    ld hl, $c930
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
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    jp Jump_005_5dba


Jump_005_5c99:
    ld hl, $c40e
    ld [hl], $02
    ld hl, $c410
    ld [hl], $04
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld hl, $c41e
    ld c, [hl]
    ld a, $4c
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$0c
    ld a, [hl]
    ld [de], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, $c92e
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    jp Jump_005_5dba


Jump_005_5d2b:
    ld hl, $c40e
    ld [hl], $04
    ld hl, $c410
    ld [hl], $06
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_42e7
    ld hl, sp+$0d
    ld [hl], e
    add sp, $01
    ld hl, $c41e
    ld c, [hl]
    ld a, $4c
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$0c
    ld a, [hl]
    ld [de], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c92e
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_005_453b
    ld c, e
    add sp, $01
    ld hl, $c92e
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    ld hl, $c92e
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_005_442a
    add sp, $02

Jump_005_5dba:
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5dc2:
    ld hl, $c414
    ld a, [hl]
    cp $01
    jp z, Jump_005_6128

    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_005_6128

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_5ded

    ld hl, $c40b
    ld [hl], $00
    ld a, $01
    push af
    inc sp
    call Call_005_6143
    add sp, $01
    jp Jump_005_6128


Jump_005_5ded:
    ld hl, $c412
    ld a, [hl]
    cp $05
    jp z, Jump_005_5dfb

    cp $01
    jp nz, Jump_005_6128

Jump_005_5dfb:
    xor a
    ld hl, $c92d
    or [hl]
    jp nz, Jump_005_5e0b

    xor a
    ld hl, $c40e
    or [hl]
    jp nz, Jump_005_6128

Jump_005_5e0b:
    call Call_005_45f1
    call Call_005_641c
    call Call_005_4762
    ld e, $01
    jp Jump_005_612a


Jump_005_5e19:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_005_5e26

    ld e, $01
    jp Jump_005_612a


Jump_005_5e26:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_005_612a


Jump_005_5e39:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_005_5e49

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_005_5e4e

Jump_005_5e49:
    ld e, $01
    jp Jump_005_612a


Jump_005_5e4e:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_005_612a


Jump_005_5e61:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_005_6128

    ld bc, $426a
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $2490
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_005_612a


Jump_005_5e88:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_005_6128

    ld hl, $c92d
    ld a, [hl]
    cp $02
    jp z, Jump_005_5e9e

    cp $03
    jp nz, Jump_005_5f2e

Jump_005_5e9e:
    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld hl, sp+$04
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_005_5eb5

jr_005_5ead:
    or a
    ld hl, sp+$04
    rl [hl]
    inc hl
    rl [hl]

jr_005_5eb5:
    dec a
    jr nz, jr_005_5ead

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b680
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    ld hl, $c92e
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0a
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
    ld hl, sp+$0a
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
    ld c, e
    add sp, $03
    ld a, c
    cp $07
    jp nz, Jump_005_5fc9

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b880
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    dec hl
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
    ld hl, sp+$08
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
    ld c, e
    add sp, $03
    ld a, c
    and $1f
    ld hl, $c418
    ld [hl], a
    jp Jump_005_5fc9


Jump_005_5f2e:
    ld e, $83
    ld hl, $c92d
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_005_5fc9

    ld hl, $c41c
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_005_5f53

jr_005_5f4b:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_005_5f53:
    dec a
    jr nz, jr_005_5f4b

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ba80
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, $c92e
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$08
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
    ld hl, sp+$08
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
    ld c, e
    add sp, $03
    ld a, c
    cp $07
    jp nz, Jump_005_5fc9

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $bc80
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    dec hl
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
    ld hl, sp+$08
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
    ld c, e
    add sp, $03
    ld a, c
    and $1f
    ld hl, $c418
    ld [hl], a

Jump_005_5fc9:
    ld bc, $4287
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $2490
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_005_612a


Jump_005_5fe8:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_005_6128

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
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_005_612a


Jump_005_6010:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_6128

    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_005_6128

    ld a, $00
    push af
    inc sp
    call Call_005_6143
    add sp, $01
    ld e, $01
    jp Jump_005_612a


Jump_005_602f:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_005_6128

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_005_60f8

    ld hl, $c412
    ld a, [hl]
    cp $05
    jp nz, Jump_005_60f8

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c92d
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c92e
    ld c, [hl]
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$0d
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$0e
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
    ld hl, sp+$0e
    or [hl]
    jp nz, Jump_005_608e

    dec hl
    ld a, [hl]
    cp $0f
    jp z, Jump_005_60a5

Jump_005_608e:
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c92e
    ld [hl], $0f
    ld hl, $c40b
    ld [hl], $00
    call Call_005_66e3
    ld e, $01
    jp Jump_005_612a


Jump_005_60a5:
    ld hl, sp+$06
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
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
    ld hl, sp+$07
    or [hl]
    jp nz, Jump_005_60ce

    dec hl
    ld a, [hl]
    cp $05
    jp z, Jump_005_60e5

Jump_005_60ce:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c92d
    ld [hl], $05
    ld hl, $c40b
    ld [hl], $00
    call Call_005_66e3
    ld e, $01
    jp Jump_005_612a


Jump_005_60e5:
    ld hl, $c40b
    ld [hl], $00
    ld a, $00
    push af
    inc sp
    call Call_005_6143
    add sp, $01
    ld e, $01
    jp Jump_005_612a


Jump_005_60f8:
    ld hl, $613c
    push hl
    call Call_000_0dab
    add sp, $02
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c92d
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c92e
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $c40b
    ld [hl], $00
    ld e, $01
    jp Jump_005_612a


Jump_005_6128:
    ld e, $00

Jump_005_612a:
    add sp, $0f
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, jr_005_6189

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

Call_005_6143:
    push bc
    add sp, -$0a
    ld hl, $c412
    ld a, [hl]
    cp $05
    jp z, Jump_005_6152

    jp Jump_005_640f


Jump_005_6152:
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_6161

    ld de, $6413
    ld c, e
    ld b, d
    jp Jump_005_6166


Jump_005_6161:
    ld de, $6417
    ld c, e
    ld b, d

Jump_005_6166:
    push bc
    call Call_000_0dab
    add sp, $02
    ld hl, $c414
    ld [hl], $02
    ld hl, $c92d
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, $c92e
    ld a, [hl]
    ld hl, $c411
    ld [hl], a
    ld hl, $c410
    push hl
    ld hl, $c40e
    push hl

jr_005_6189:
    call Call_000_0d7a
    add sp, $04
    ld hl, $c411
    push hl
    ld hl, $c40f
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c40e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_61a8

    ld hl, $c40e
    dec [hl]

Jump_005_61a8:
    ld hl, $c40e
    ld a, [hl]
    cp $05
    jp nz, Jump_005_61b5

    ld hl, $c40e
    dec [hl]

Jump_005_61b5:
    ld hl, $c410
    ld a, [hl]
    cp $02
    jp nz, Jump_005_61c2

    ld hl, $c410
    inc [hl]

Jump_005_61c2:
    ld hl, $c410
    ld a, [hl]
    cp $04
    jp nz, Jump_005_61cf

    ld hl, $c410
    inc [hl]

Jump_005_61cf:
    ld hl, $c410
    inc [hl]
    ld hl, $c411
    inc [hl]
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$09
    ld [hl], a

Jump_005_61de:
    xor a
    ld hl, sp+$09
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_005_63ee

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$08
    ld [hl+], a
    ld a, [hl]
    cp $06
    jp nz, Jump_005_61fa

    ld a, $01
    jr jr_005_61fb

Jump_005_61fa:
    xor a

jr_005_61fb:
    ld hl, sp+$07
    ld [hl], a
    xor a
    ld a, $05
    inc hl
    inc hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$06
    ld [hl], a

Jump_005_620a:
    xor a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_005_63e8

    xor a
    ld hl, sp+$07
    or [hl]
    jp z, Jump_005_6227

    xor a
    inc hl
    or [hl]
    jp nz, Jump_005_63de

Jump_005_6227:
    ld hl, sp+$09
    ld a, [hl]
    ld hl, $c92d
    ld [hl], a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, $c92e
    ld [hl], a
    call Call_005_45f1
    xor a
    ld hl, sp+$06
    or [hl]
    jp nz, Jump_005_63de

    ld hl, sp+$09
    ld e, [hl]
    ld d, $00
    ld hl, $624b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_625d


    jp Jump_005_6293


    jp Jump_005_62c9


    jp Jump_005_630f


    jp Jump_005_6355


    jp Jump_005_639b


Jump_005_625d:
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_44e8
    ld hl, sp+$06
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    jp Jump_005_63de


Jump_005_6293:
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_459e
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    jp Jump_005_63de


Jump_005_62c9:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld hl, sp+$04
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    jp Jump_005_63de


Jump_005_630f:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$03
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    jp Jump_005_63de


Jump_005_6355:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_42e7
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    jp Jump_005_63de


Jump_005_639b:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_005_453b
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_63de

    ld a, $00
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02

Jump_005_63de:
    ld hl, sp+$08
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_005_620a


Jump_005_63e8:
    ld hl, sp+$09
    inc [hl]
    jp Jump_005_61de


Jump_005_63ee:
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c92d
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c92e
    ld [hl], a
    ld c, $7c
    ld b, $71
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_005_4762

Jump_005_640f:
    add sp, $0a
    pop bc
    ret


    ld b, e
    ld d, l
    ld d, h
    nop
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    nop

Call_005_641c:
    push bc
    add sp, -$0f
    ld hl, sp+$0c
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld hl, $c412
    ld a, [hl]
    cp $01
    jp nz, Jump_005_6452

    ld hl, $c40e
    ld a, [hl]
    cp $03
    jp nz, Jump_005_6441

    ld hl, $c410
    ld a, [hl]
    cp $05
    jp z, Jump_005_6444

Jump_005_6441:
    jp Jump_005_66d9


Jump_005_6444:
    ld hl, sp+$0b
    ld [hl], $01
    ld hl, $c40e
    ld [hl], $02
    ld hl, $c410
    ld [hl], $04

Jump_005_6452:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld b, a
    xor a
    ld a, $01
    sbc b
    jp nc, Jump_005_646b

    ld hl, $66dd
    push hl
    call Call_000_0dab
    add sp, $02

Jump_005_646b:
    ld hl, $c40e
    ld a, [hl]
    cp $02
    jp nz, Jump_005_6486

    ld hl, $c92d
    ld a, [hl]
    cp $04
    jp z, Jump_005_6482

    cp $05
    jp nz, Jump_005_6486

Jump_005_6482:
    ld hl, sp+$0c
    ld [hl], $01

Jump_005_6486:
    ld hl, $c40e
    ld a, [hl]
    cp $04
    jp nz, Jump_005_64a0

    ld hl, $c92d
    ld a, [hl]
    cp $02
    jp z, Jump_005_649d

    cp $03
    jp nz, Jump_005_64a0

Jump_005_649d:
    ld hl, sp+$0c
    inc [hl]

Jump_005_64a0:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a

Jump_005_64a7:
    xor a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_005_66c8

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$0b
    ld a, [hl]
    add $02
    ld hl, sp+$08
    ld [hl], a
    ld hl, sp+$0b
    ld a, [hl]
    add $03
    dec hl
    dec hl
    ld [hl], a

Jump_005_64c9:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$03
    ld [hl], a
    or a
    jp z, Jump_005_66b9

    ld hl, sp+$0e
    ld a, [hl]
    cp $06
    jp nz, Jump_005_64e7

    ld a, $01
    jr jr_005_64e8

Jump_005_64e7:
    xor a

jr_005_64e8:
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_005_64f6

    xor a
    ld hl, sp+$0d
    or [hl]
    jp nz, Jump_005_66af

Jump_005_64f6:
    xor a
    ld a, $05
    ld hl, sp+$0e
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_005_66af

    ld hl, sp+$0e
    ld e, [hl]
    ld d, $00
    ld hl, $6512
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_6524


    jp Jump_005_6546


    jp Jump_005_6568


    jp Jump_005_65cd


    jp Jump_005_661a


    jp Jump_005_6666


Jump_005_6524:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$07
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_4360
    add sp, $02
    jp Jump_005_66af


Jump_005_6546:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$06
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_4491
    add sp, $02
    jp Jump_005_66af


Jump_005_6568:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$0c
    ld [hl], e
    add sp, $02
    xor a
    inc hl
    inc hl
    or [hl]
    jp z, Jump_005_65aa

    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    ld hl, sp+$0a
    ld a, [hl]
    cp $0a
    jp nz, Jump_005_659d

    ld a, $01
    jr jr_005_659e

Jump_005_659d:
    xor a

jr_005_659e:
    ld c, a
    or c
    jp z, Jump_005_65ba

    ld hl, sp+$0a
    ld [hl], $00
    jp Jump_005_65ba


Jump_005_65aa:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8

Jump_005_65ba:
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    jp Jump_005_66af


Jump_005_65cd:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_005_65e7

    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc
    jp Jump_005_65f7


Jump_005_65e7:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8

Jump_005_65f7:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0a
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
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02
    jp Jump_005_66af


Jump_005_661a:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_005_6634

    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_6644


Jump_005_6634:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_6644:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_43b7
    add sp, $02
    jp Jump_005_66af


Jump_005_6666:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_005_6680

    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $b8
    jp Jump_005_6690


Jump_005_6680:
    ld hl, $c448
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, $c44a
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_005_6690:
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$02
    ld [hl], e
    add sp, $02
    ld a, e
    push af
    inc sp
    ld hl, $c92e
    ld a, [hl]
    push af
    inc sp
    call Call_005_442a
    add sp, $02

Jump_005_66af:
    ld hl, sp+$0e
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_005_64c9


Jump_005_66b9:
    ld hl, $c92e
    inc [hl]
    ld c, [hl]
    ld a, c
    and $0f
    ld [hl], a
    ld hl, sp+$0d
    inc [hl]
    jp Jump_005_64a7


Jump_005_66c8:
    xor a
    ld hl, sp+$0b
    or [hl]
    jp z, Jump_005_66d9

    ld hl, $c40e
    ld [hl], $03
    ld hl, $c410
    ld [hl], $05

Jump_005_66d9:
    add sp, $0f
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop

Call_005_66e3:
    push bc
    add sp, -$19
    ld hl, $c412
    ld a, [hl]
    cp $05
    jp z, Jump_005_66f2

    jp Jump_005_6932


Jump_005_66f2:
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$16
    ld [hl], a
    ld hl, $c92d
    ld c, [hl]
    ld hl, sp+$14
    ld [hl], c
    ld hl, sp+$14
    ld d, h
    ld e, l
    ld hl, sp+$11
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$16
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$11
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$14
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$15
    ld [hl], a
    ld hl, $c92e
    ld b, [hl]
    ld hl, sp+$13
    ld [hl], b
    ld hl, sp+$13
    ld d, h
    ld e, l
    ld hl, sp+$11
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$15
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$11
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$13
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    xor a
    ld hl, sp+$16
    or [hl]
    jp z, Jump_005_6760

    ld a, [hl]
    add $ff
    ld b, a
    jp Jump_005_6762


Jump_005_6760:
    ld b, $00

Jump_005_6762:
    ld hl, sp+$18
    ld [hl], b
    ld hl, sp+$14
    ld a, [hl]
    add $01
    ld hl, sp+$11
    ld [hl+], a
    inc hl
    ld a, [hl]
    add $01
    ld hl, sp+$10
    ld [hl], a
    ld hl, sp+$13
    ld a, [hl]
    cp $10
    jp nz, Jump_005_6780

    ld a, $01
    jr jr_005_6781

Jump_005_6780:
    xor a

jr_005_6781:
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$14
    ld a, [hl]
    cp $06
    jp nz, Jump_005_6790

    ld a, $01
    jr jr_005_6791

Jump_005_6790:
    xor a

jr_005_6791:
    ld hl, sp+$0f
    ld [hl], a

Jump_005_6794:
    xor a
    ld hl, sp+$0f
    or [hl]
    jp z, Jump_005_67a0

    ld b, $06
    jp Jump_005_67a3


Jump_005_67a0:
    ld hl, sp+$11
    ld b, [hl]

Jump_005_67a3:
    xor a
    ld hl, sp+$18
    ld a, [hl]
    sbc b
    jp nc, Jump_005_68a0

    xor a
    ld hl, sp+$15
    or [hl]
    jp z, Jump_005_67b9

    ld a, [hl]
    add $ff
    ld b, a
    jp Jump_005_67bb


Jump_005_67b9:
    ld b, $00

Jump_005_67bb:
    ld hl, sp+$17
    ld [hl], b
    xor a
    inc hl
    ld a, [hl]
    ld hl, sp+$14
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$18
    ld a, [hl]
    and $01
    ld b, a
    ld a, $01
    sub b
    ld hl, sp+$0d
    ld [hl], a
    ld de, $42db
    ld hl, sp+$18
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    ld de, $42d5
    ld hl, sp+$18
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d

Jump_005_67f4:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_005_6800

    ld c, $10
    jp Jump_005_6803


Jump_005_6800:
    ld hl, sp+$10
    ld c, [hl]

Jump_005_6803:
    xor a
    ld hl, sp+$17
    ld a, [hl]
    sbc c
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_005_689a

    xor a
    ld hl, sp+$18
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_005_684c

    xor a
    ld hl, sp+$0e
    or [hl]
    jp z, Jump_005_684c

    xor a
    ld hl, sp+$17
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$05
    ld [hl], a
    or a
    jp nz, Jump_005_684c

    xor a
    ld hl, sp+$17
    ld a, [hl]
    ld hl, sp+$13
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_005_6890

Jump_005_684c:
    xor a
    ld hl, sp+$18
    or [hl]
    jp z, Jump_005_685c

    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    jp Jump_005_6860


Jump_005_685c:
    ld hl, sp+$03
    ld [hl], $00

Jump_005_6860:
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$17
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_005_6890:
    ld hl, sp+$17
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_005_67f4


Jump_005_689a:
    ld hl, sp+$18
    inc [hl]
    jp Jump_005_6794


Jump_005_68a0:
    ld hl, sp+$16
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_005_68a5:
    xor a
    ld hl, sp+$18
    ld a, [hl]
    ld hl, sp+$14
    sbc [hl]
    jp nc, Jump_005_6932

    inc hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld de, $42db
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld de, $42d5
    ld hl, sp+$18
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d

Jump_005_68d0:
    xor a
    ld hl, sp+$17
    ld a, [hl]
    ld hl, sp+$13
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_005_692c

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_005_68ee

    ld hl, sp+$00
    ld [hl], $03
    jp Jump_005_68f2


Jump_005_68ee:
    ld hl, sp+$00
    ld [hl], $02

Jump_005_68f2:
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$17
    ld a, [hl]
    add $02
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$17
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_005_68d0


Jump_005_692c:
    ld hl, sp+$18
    inc [hl]
    jp Jump_005_68a5


Jump_005_6932:
    add sp, $19
    pop bc
    ret


    push bc
    add sp, -$02
    ld hl, sp+$00
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c428
    ld a, [hl]
    cp $01
    jp nz, Jump_005_6954

    ld de, $6eb1
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6954:
    xor a
    ld a, $03
    ld hl, sp+$06
    sbc [hl]
    jp c, Jump_005_6c88

    ld e, [hl]
    ld d, $00
    ld hl, $6967
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_6973


    jp Jump_005_6a3e


    jp Jump_005_6b1e


    jp Jump_005_6be9


Jump_005_6973:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_005_6c88

    xor a
    ld a, $0e
    sbc [hl]
    jp c, Jump_005_6c88

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $6991
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_69b8


    jp Jump_005_69c2


    jp Jump_005_69cc


    jp Jump_005_69d6


    jp Jump_005_69e1


    jp Jump_005_69eb


    jp Jump_005_69f5


    jp Jump_005_6a00


    jp Jump_005_6a0a


    jp Jump_005_6a14


    jp Jump_005_6a1f


    jp Jump_005_6a2a


    jp Jump_005_6a34


Jump_005_69b8:
    ld hl, sp+$00
    ld [hl], $9e
    inc hl
    ld [hl], $6c
    jp Jump_005_6c88


Jump_005_69c2:
    ld hl, sp+$00
    ld [hl], $eb
    inc hl
    ld [hl], $6c
    jp Jump_005_6c88


Jump_005_69cc:
    ld hl, sp+$00
    ld [hl], $38
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_69d6:
    ld de, $6ee5
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_69e1:
    ld hl, sp+$00
    ld [hl], $85
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_69eb:
    ld hl, sp+$00
    ld [hl], $9a
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_69f5:
    ld de, $6efe
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6a00:
    ld hl, sp+$00
    ld [hl], $ae
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6a0a:
    ld hl, sp+$00
    ld [hl], $2e
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6a14:
    ld de, $6f32
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6a1f:
    ld de, $6f44
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6a2a:
    ld hl, sp+$00
    ld [hl], $40
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6a34:
    ld hl, sp+$00
    ld [hl], $6a
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6a3e:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_005_6c88

    xor a
    ld a, $0d
    sbc [hl]
    jp c, Jump_005_6c88

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $6a5c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_6a80


    jp Jump_005_6a8a


    jp Jump_005_6a94


    jp Jump_005_6a9e


    jp Jump_005_6aa8


    jp Jump_005_6ab3


    jp Jump_005_6ae8


    jp Jump_005_6abd


    jp Jump_005_6af3


    jp Jump_005_6afe


    jp Jump_005_6b09


    jp Jump_005_6b14


Jump_005_6a80:
    ld hl, sp+$00
    ld [hl], $9a
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6a8a:
    ld hl, sp+$00
    ld [hl], $85
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6a94:
    ld hl, sp+$00
    ld [hl], $ae
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6a9e:
    ld hl, sp+$00
    ld [hl], $2e
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6aa8:
    ld de, $6f5d
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6ab3:
    ld hl, sp+$00
    ld [hl], $40
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6abd:
    ld a, $09
    push af
    inc sp
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld c, e
    add sp, $02
    ld a, c
    or a
    jp nz, Jump_005_6add

    ld de, $6f6c
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6add:
    ld de, $6f79
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6ae8:
    ld de, $6f9c
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6af3:
    ld de, $702e
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6afe:
    ld de, $7039
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6b09:
    ld de, $7049
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6b14:
    ld hl, sp+$00
    ld [hl], $6a
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6b1e:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_005_6c88

    xor a
    ld a, $10
    sbc [hl]
    jp c, Jump_005_6c88

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $6b3c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_6b69


    jp Jump_005_6b74


    jp Jump_005_6b7f


    jp Jump_005_6b89


    jp Jump_005_6b93


    jp Jump_005_6b9d


    jp Jump_005_6ba8


    jp Jump_005_6ba8


    jp Jump_005_6bb3


    jp Jump_005_6bb3


    jp Jump_005_6bbe


    jp Jump_005_6bbe


    jp Jump_005_6bc9


    jp Jump_005_6bd4


    jp Jump_005_6bdf


Jump_005_6b69:
    ld de, $705c
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6b74:
    ld de, $706e
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6b7f:
    ld hl, sp+$00
    ld [hl], $9a
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6b89:
    ld hl, sp+$00
    ld [hl], $85
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6b93:
    ld hl, sp+$00
    ld [hl], $ae
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6b9d:
    ld de, $7081
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6ba8:
    ld de, $708d
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6bb3:
    ld de, $70a7
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6bbe:
    ld de, $70c2
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6bc9:
    ld de, $7108
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6bd4:
    ld de, $7118
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6bdf:
    ld hl, sp+$00
    ld [hl], $6a
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6be9:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_005_6c88

    xor a
    ld a, $0b
    sbc [hl]
    jp c, Jump_005_6c88

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $6c07
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_6c25


    jp Jump_005_6c2f


    jp Jump_005_6c39


    jp Jump_005_6c43


    jp Jump_005_6c4d


    jp Jump_005_6c57


    jp Jump_005_6c62


    jp Jump_005_6c6d


    jp Jump_005_6c77


    jp Jump_005_6c81


Jump_005_6c25:
    ld hl, sp+$00
    ld [hl], $9e
    inc hl
    ld [hl], $6c
    jp Jump_005_6c88


Jump_005_6c2f:
    ld hl, sp+$00
    ld [hl], $eb
    inc hl
    ld [hl], $6c
    jp Jump_005_6c88


Jump_005_6c39:
    ld hl, sp+$00
    ld [hl], $38
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6c43:
    ld hl, sp+$00
    ld [hl], $85
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6c4d:
    ld hl, sp+$00
    ld [hl], $9a
    inc hl
    ld [hl], $6d
    jp Jump_005_6c88


Jump_005_6c57:
    ld de, $7147
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6c62:
    ld de, $716d
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_005_6c88


Jump_005_6c6d:
    ld hl, sp+$00
    ld [hl], $2e
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6c77:
    ld hl, sp+$00
    ld [hl], $40
    inc hl
    ld [hl], $6e
    jp Jump_005_6c88


Jump_005_6c81:
    ld hl, sp+$00
    ld [hl], $6a
    inc hl
    ld [hl], $6e

Jump_005_6c88:
    ld hl, sp+$00
    ld a, [hl+]
    or [hl]
    jp z, Jump_005_6c9a

    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_0dab
    add sp, $02

Jump_005_6c9a:
    add sp, $02
    pop bc
    ret


    ld b, l
    ld c, [hl]
    ld d, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    jr nz, jr_005_6cfb

    ld d, h
    ld b, c
    ld b, a
    ld b, l
    jr nz, jr_005_6cdf

    ld a, [hl-]
    jr nz, jr_005_6ce2

    ld d, e
    ld d, h
    jr nz, jr_005_6cf9

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld b, c
    ld c, l
    ld d, b
    ld c, h
    ld c, c
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    inc l
    jr nz, jr_005_6cf8

    ld c, [hl]
    ld b, h
    jr nz, jr_005_6d0e

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld d, b
    ld b, l
    ld b, l
    ld b, h
    jr nz, jr_005_6d31

    jr nc, jr_005_6d15

    ld c, a
    ld b, [hl]
    ld b, [hl]
    inc l
    ld sp, $463d

jr_005_6cdf:
    ld b, c
    ld d, e
    ld d, h

jr_005_6ce2:
    inc l
    ld b, [hl]
    dec a
    ld d, e
    ld c, h
    ld c, a
    ld d, a
    ld e, l
    nop
    ld b, l
    ld c, [hl]
    ld d, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    jr nz, jr_005_6d48

    ld d, h
    ld b, c
    ld b, a

jr_005_6cf8:
    ld b, l

jr_005_6cf9:
    jr nz, jr_005_6d2d

jr_005_6cfb:
    ld a, [hl-]
    jr nz, jr_005_6d2f

    ld d, e
    ld d, h
    jr nz, jr_005_6d46

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld b, c
    ld c, l
    ld d, b
    ld c, h
    ld c, c
    ld d, h
    ld d, l

jr_005_6d0e:
    ld b, h
    ld b, l
    inc l
    jr nz, jr_005_6d45

    ld c, [hl]
    ld b, h

jr_005_6d15:
    jr nz, jr_005_6d5b

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld d, b
    ld b, l
    ld b, l
    ld b, h
    jr nz, jr_005_6d7e

    jr nc, jr_005_6d62

    ld c, a
    ld b, [hl]
    ld b, [hl]
    inc l
    ld sp, $463d
    ld b, c

jr_005_6d2d:
    ld d, e
    ld d, h

jr_005_6d2f:
    inc l
    ld b, [hl]

jr_005_6d31:
    dec a
    ld d, e
    ld c, h
    ld c, a
    ld d, a
    ld e, l
    nop
    ld b, l
    ld c, [hl]
    ld d, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    jr nz, jr_005_6d95

    ld d, h
    ld b, c
    ld b, a

jr_005_6d45:
    ld b, l

jr_005_6d46:
    jr nz, jr_005_6d7b

jr_005_6d48:
    ld a, [hl-]
    jr nz, jr_005_6d7c

    ld d, e
    ld d, h
    jr nz, jr_005_6d93

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld b, c
    ld c, l
    ld d, b
    ld c, h
    ld c, c
    ld d, h
    ld d, l

jr_005_6d5b:
    ld b, h
    ld b, l
    inc l
    jr nz, jr_005_6d92

    ld c, [hl]
    ld b, h

jr_005_6d62:
    jr nz, jr_005_6da8

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld d, b
    ld b, l
    ld b, l
    ld b, h
    jr nz, jr_005_6dcb

    jr nc, jr_005_6daf

    ld c, a
    ld b, [hl]
    ld b, [hl]
    inc l
    ld sp, $463d
    ld b, c
    ld d, e

jr_005_6d7b:
    ld d, h

jr_005_6d7c:
    inc l
    ld b, [hl]

jr_005_6d7e:
    dec a
    ld d, e
    ld c, h
    ld c, a
    ld d, a
    ld e, l
    nop
    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    cpl
    ld d, d
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    cpl
    ld b, d
    ld c, a

jr_005_6d92:
    ld d, h

jr_005_6d93:
    ld c, b
    cpl

jr_005_6d95:
    ld c, [hl]
    ld c, a
    ld c, [hl]
    ld b, l
    nop
    ld c, h
    ld b, l
    ld c, [hl]
    ld b, a
    ld d, h
    ld c, b
    jr nz, jr_005_6dfd

    ld c, [hl]
    cpl
    ld [hl-], a
    dec [hl]
    ld [hl], $20

jr_005_6da8:
    ld d, e
    ld b, l
    ld b, e
    ld d, e
    ld e, l
    nop
    ld d, b

jr_005_6daf:
    cpl
    ld c, h
    cpl
    ld d, [hl]
    jr nz, jr_005_6df8

    ld c, l
    ld b, h
    ld d, e
    ld a, [hl-]
    jr nz, jr_005_6e01

    ld b, c
    ld d, e
    ld d, h
    dec a
    inc sp
    dec [hl]
    jr c, jr_005_6de3

    ld c, b
    ld e, d
    jr nz, jr_005_6e1c

    ld d, b
    ld b, h
    ld b, c
    ld d, h

jr_005_6dcb:
    ld b, l
    dec sp
    jr nz, jr_005_6e23

    ld c, c
    ld b, e
    ld c, e
    dec a
    ld b, d
    ld d, b
    ld c, l
    jr nz, jr_005_6e2b

    ld e, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld b, h
    jr nz, jr_005_6e35

    ld c, c
    ld b, d
    ld d, d
    ld b, c

jr_005_6de3:
    ld d, h
    ld c, a
    dec sp
    jr nz, jr_005_6e3b

    ld d, h
    ld b, l
    ld d, b
    dec a
    ld d, b
    jr nz, jr_005_6e38

    ld d, e
    jr nz, jr_005_6e42

    ld c, c
    ld d, h
    ld b, e
    ld c, b
    jr nz, jr_005_6e3b

jr_005_6df8:
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l

jr_005_6dfd:
    dec sp
    jr nz, jr_005_6e44

    ld d, d

jr_005_6e01:
    ld d, l
    ld c, l
    dec a
    ld c, [hl]
    ld c, c
    ld b, e
    ld b, l
    jr nz, jr_005_6e5d

    ld c, h
    ld c, a
    ld d, b
    ld b, l
    jr nz, jr_005_6e56

    ld c, a
    ld d, d
    jr nz, @+$46

    ld d, d
    ld d, l
    ld c, l
    ld d, e
    ld l, $20
    ld d, e
    ld c, b

jr_005_6e1c:
    ld b, c
    ld d, b
    ld b, l
    dec a
    ld d, [hl]
    ld c, c
    ld b, d

jr_005_6e23:
    ld d, d
    ld b, c
    ld d, h
    ld c, a
    jr nz, jr_005_6e7c

    ld c, b
    ld b, c

jr_005_6e2b:
    ld d, b
    ld b, l
    nop
    ld b, c
    ld c, h
    ld c, h
    ld c, a
    ld d, a
    jr nz, jr_005_6e89

jr_005_6e35:
    ld d, d
    ld b, c
    ld c, [hl]

jr_005_6e38:
    ld d, e
    ld d, b
    ld c, a

jr_005_6e3b:
    ld d, e
    ld b, l
    ld d, e
    ccf
    nop
    ld d, e
    ld c, h

jr_005_6e42:
    ld c, a
    ld d, a

jr_005_6e44:
    ld d, e
    jr nz, @+$45

    dec hl
    ld d, d
    jr nz, jr_005_6e8e

    ld c, a
    ld c, l
    ld c, l
    ld b, c
    ld c, [hl]
    ld b, h
    ld d, e
    inc l
    jr nz, @+$52

    dec hl

jr_005_6e56:
    ld d, [hl]
    jr nz, @+$56

    ld c, a
    ld c, a
    jr nz, jr_005_6ea6

jr_005_6e5d:
    ld b, [hl]
    jr nz, jr_005_6eb0

    ld c, c
    ld d, h
    ld b, e
    ld c, b
    dec a
    ld d, h
    ld c, c
    ld b, e
    ld c, e
    nop
    ld d, h
    ld b, c
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_005_6eb2

    ld b, h
    ld d, [hl]
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld a, [hl-]
    jr nz, jr_005_6ece

    ld c, c
    ld b, e

jr_005_6e7c:
    ld c, e
    dec a
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d
    ld e, c
    jr nz, jr_005_6ed9

    ld c, c
    ld b, e
    ld c, e
    inc l

jr_005_6e89:
    jr nz, @+$55

    ld d, h
    ld b, l
    ld d, b

jr_005_6e8e:
    dec a
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d
    ld e, c
    jr nz, jr_005_6ee4

    ld c, a
    ld d, h
    ld b, l
    nop
    ld b, c
    ld c, l
    ld d, b
    ld c, h
    ld c, c
    ld d, h
    ld d, l
    ld b, h
    ld b, l
    dec a
    jr nc, jr_005_6ed5

jr_005_6ea6:
    ld [hl-], a
    dec [hl]
    cpl
    dec [hl]
    jr nc, jr_005_6edb

    ld sp, $3030
    dec h

jr_005_6eb0:
    nop
    ld d, l

jr_005_6eb2:
    ld d, e
    ld b, l
    jr nz, jr_005_6f06

    ld d, l
    ld c, h
    ld d, e
    ld b, l
    jr nz, jr_005_6f05

    ld c, [hl]
    jr nz, jr_005_6f0f

    ld d, l
    ld sp, $502f
    ld d, l
    ld [hl-], a
    dec sp
    jr nz, jr_005_6f1f

    ld b, c
    ld d, [hl]
    ld b, l
    cpl
    ld c, e
    ld c, c

jr_005_6ece:
    ld d, h
    jr nz, jr_005_6f1a

    ld c, [hl]
    jr nz, jr_005_6f2b

    ld b, c

jr_005_6ed5:
    ld d, [hl]
    dec sp
    jr nz, jr_005_6f27

jr_005_6ed9:
    ld c, a
    ld c, c

jr_005_6edb:
    ld d, e
    ld b, l
    jr nz, jr_005_6f28

    ld c, [hl]
    jr nz, jr_005_6f30

    ld c, a
    ld c, c

jr_005_6ee4:
    nop
    ld d, b
    ld d, l
    ld c, h
    ld d, e
    ld b, l
    jr nz, jr_005_6f43

    ld c, c
    ld b, h
    ld d, h
    ld c, b
    jr nz, jr_005_6f23

    ld [hl-], a
    cpl
    ld [hl-], a
    dec [hl]
    cpl
    dec [hl]
    jr nc, jr_005_6f29

    scf
    dec [hl]
    dec h
    nop
    ld d, b
    ld d, l
    ld sp, $5020
    ld c, c
    ld d, h

jr_005_6f05:
    ld b, e

jr_005_6f06:
    ld c, b
    jr nz, @+$45

    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    ld a, [hl-]

jr_005_6f0f:
    jr nz, jr_005_6f42

    ld d, e
    ld d, h
    jr nz, jr_005_6f59

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a

jr_005_6f1a:
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    inc l

jr_005_6f1f:
    jr nz, jr_005_6f53

    ld c, [hl]
    ld b, h

jr_005_6f23:
    jr nz, jr_005_6f69

    ld c, c
    ld b, a

jr_005_6f27:
    ld c, c

jr_005_6f28:
    ld d, h

jr_005_6f29:
    dec a
    ld c, c

jr_005_6f2b:
    ld c, [hl]
    ld b, e
    cpl
    ld b, h
    ld b, l

jr_005_6f30:
    ld b, e
    nop
    ld d, h
    ld d, d
    ld b, c
    ld c, [hl]
    ld d, e
    ld d, b
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_005_6f83

    ld c, a
    ld d, d
    jr nz, jr_005_6f91

    ld d, l

jr_005_6f42:
    ld [hl-], a

jr_005_6f43:
    nop
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l
    ld d, e
    jr nz, jr_005_6f9d

    ld d, l
    ld sp, $4420
    ld c, a
    ld d, a

jr_005_6f53:
    ld c, [hl]
    inc l
    jr nz, jr_005_6fa7

    ld d, l
    ld [hl-], a

jr_005_6f59:
    jr nz, jr_005_6fb0

    ld d, b
    nop
    ld b, h
    ld b, l
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l
    jr nz, @+$57

    ld d, b
    cpl
    ld b, h
    ld c, a

jr_005_6f69:
    ld d, a
    ld c, [hl]
    nop
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_005_6fc6

    ld c, a
    jr nz, jr_005_6fc5

    ld c, h
    ld b, c
    ld e, c
    nop
    ld d, e
    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    jr nz, jr_005_6fd4

    ld c, a
    jr nz, jr_005_6fd3

jr_005_6f83:
    ld c, h
    ld b, c
    ld e, c
    ld l, $20
    ld d, e
    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    jr nz, jr_005_6fdd

    dec a
    ld d, a

jr_005_6f91:
    ld b, c
    ld d, [hl]
    ld b, l
    ld d, e
    jr nz, jr_005_6fe5

    jr nc, jr_005_6fc6

    ld c, [hl]
    ld b, [hl]
    nop
    ld c, l

jr_005_6f9d:
    ld b, c
    ld c, [hl]
    ld d, l
    ld b, c
    ld c, h
    dec a
    ld d, b
    ld c, h
    ld b, c
    ld e, c

jr_005_6fa7:
    jr nz, jr_005_6ffc

    ld c, c
    ld c, [hl]
    ld b, a
    ld c, h
    ld b, l
    jr nz, @+$59

jr_005_6fb0:
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_005_7010

    ld d, e
    ld d, h
    ld b, l
    ld d, b
    jr nz, jr_005_7012

    ld c, c
    ld d, h
    ld c, b
    jr nz, jr_005_7006

    jr nz, jr_005_7005

    ld c, l
    ld b, h
    ld e, l

jr_005_6fc5:
    dec sp

jr_005_6fc6:
    jr nz, jr_005_7017

    ld c, [hl]
    ld b, e
    ld b, l
    dec a
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_005_7027

jr_005_6fd3:
    ld c, a

jr_005_6fd4:
    jr nz, jr_005_701b

    ld c, [hl]
    ld b, h
    dec sp
    jr nz, jr_005_7027

    ld c, a
    ld c, a

jr_005_6fdd:
    ld d, b
    dec a
    ld c, h
    ld c, a
    ld c, a
    ld d, b
    jr nz, jr_005_702b

jr_005_6fe5:
    ld c, a
    ld d, d
    ld d, a
    ld b, c
    ld d, d
    ld b, h
    dec sp
    jr nz, jr_005_703e

    ld c, c
    ld c, [hl]
    ld b, a
    ld d, b
    ld c, a
    ld c, [hl]
    ld b, a
    dec a
    ld c, h
    ld c, a
    ld c, a
    ld d, b
    jr nz, jr_005_7042

jr_005_6ffc:
    ld c, a
    ld d, d
    ld d, a
    ld b, c
    ld d, d
    ld b, h
    jr nz, jr_005_7045

    ld c, [hl]

jr_005_7005:
    ld b, h

jr_005_7006:
    jr nz, jr_005_704a

    ld b, c
    ld b, e
    ld c, e
    dec sp
    jr nz, jr_005_7060

    ld b, l
    ld d, e

jr_005_7010:
    ld e, c
    ld c, [hl]

jr_005_7012:
    ld b, e
    dec a
    ld d, d
    ld b, l
    ld d, e

jr_005_7017:
    ld d, h
    ld b, c
    ld d, d
    ld d, h

jr_005_701b:
    jr nz, jr_005_7074

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_005_7071

    ld c, [hl]
    jr nz, jr_005_706a

    ld b, c
    ld b, e

jr_005_7027:
    ld c, b
    jr nz, jr_005_707d

    ld d, h

jr_005_702b:
    ld b, l
    ld d, b
    nop
    ld d, h
    ld c, c
    ld b, e
    ld c, e
    ld d, e
    cpl
    ld d, e
    ld d, h
    ld b, l
    ld d, b
    nop
    ld c, [hl]
    ld d, l
    ld c, l
    ld b, d
    ld b, l

jr_005_703e:
    ld d, d
    jr nz, jr_005_7090

    ld b, [hl]

jr_005_7042:
    jr nz, jr_005_7097

    ld d, h

jr_005_7045:
    ld b, l
    ld d, b
    ld d, e
    nop
    ld b, [hl]

jr_005_704a:
    ld c, c
    ld d, d
    ld d, e
    ld d, h
    jr nz, jr_005_70a3

    ld d, h
    ld b, l
    ld d, b
    jr nz, jr_005_70a9

    ld c, a
    jr nz, jr_005_70a4

    ld c, a
    ld c, a
    ld d, b
    nop
    ld d, e
    ld b, c
    ld c, l
    ld d, b

jr_005_7060:
    ld c, h
    ld b, l
    jr nz, jr_005_70af

    ld c, c
    ld d, h
    jr nz, jr_005_70c3

    ld c, h
    ld b, l

jr_005_706a:
    ld b, [hl]
    ld d, h
    ld e, l
    nop
    ld d, e
    ld b, c
    ld c, l

jr_005_7071:
    ld d, b
    ld c, h
    ld b, l

jr_005_7074:
    jr nz, jr_005_70c1

    ld c, c
    ld d, h
    jr nz, jr_005_70d5

    ld d, d
    ld c, c
    ld b, a

jr_005_707d:
    ld c, b
    ld d, h
    ld e, l
    nop
    ld d, b
    ld c, c
    ld d, h
    ld b, e
    ld c, b
    jr nz, jr_005_70db

    ld c, b
    ld c, c
    ld b, [hl]
    ld d, h
    nop
    ld d, e
    ld d, h
    ld b, c

jr_005_7090:
    ld d, d
    ld d, h
    jr nz, jr_005_70e4

    ld c, a
    ld d, e
    ld c, c

jr_005_7097:
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    cpl
    ld c, h
    ld c, a
    ld c, a
    ld d, b
    jr nz, jr_005_70f2

    ld c, a

jr_005_70a3:
    ld c, c

jr_005_70a4:
    ld c, [hl]
    ld d, h
    nop
    ld d, e
    ld c, a

jr_005_70a9:
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_005_70fa

    ld b, l

jr_005_70af:
    ld c, [hl]
    ld b, a
    ld d, h
    ld c, b
    dec sp
    jr nz, jr_005_70f7

    ld c, h
    ld c, h
    dec a
    ld d, b
    ld c, h
    ld b, c
    ld e, c
    jr nz, jr_005_7100

    ld c, h
    ld c, h

jr_005_70c1:
    nop
    ld c, a

jr_005_70c3:
    ld b, [hl]
    ld b, [hl]
    dec a
    ld c, [hl]
    ld c, a
    jr nz, jr_005_7116

    ld c, a
    ld c, a
    ld d, b
    dec sp
    jr nz, @+$51

    ld c, [hl]
    dec a
    ld c, h
    ld c, a
    ld c, a

jr_005_70d5:
    ld d, b
    inc l
    ld d, e
    ld d, h
    ld b, c
    ld d, d

jr_005_70db:
    ld d, h
    jr nz, jr_005_7124

    ld d, d
    ld c, a
    ld c, l
    jr nz, jr_005_7132

    ld b, [hl]

jr_005_70e4:
    ld b, [hl]
    ld d, e
    ld b, l
    ld d, h
    dec sp
    jr nz, jr_005_712c

    ld d, h
    ld c, e
    dec a
    ld c, h
    ld c, a
    ld c, a
    ld d, b

jr_005_70f2:
    inc l
    ld d, e
    ld d, h
    ld b, c
    ld d, d

jr_005_70f7:
    ld d, h
    jr nz, jr_005_7140

jr_005_70fa:
    ld d, d
    ld c, a
    ld c, l
    jr nz, @+$44

    ld b, l

jr_005_7100:
    ld b, a
    ld c, c
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld b, [hl]
    ld d, l
    ld c, h
    ld c, h
    cpl
    ld c, b
    ld b, c
    ld c, h
    ld b, [hl]
    jr nz, jr_005_7166

    ld d, b
    ld b, l
    ld b, l

jr_005_7116:
    ld b, h
    nop
    ld d, e
    ld b, c
    ld c, l
    ld d, b
    ld c, h
    ld b, l
    jr nz, jr_005_716d

    ld c, c
    ld e, b
    jr nz, jr_005_7171

jr_005_7124:
    ld c, a
    ld b, h
    ld b, l
    ld l, $20
    ld d, b
    ld d, d
    ld b, l

jr_005_712c:
    ld d, e
    ld d, e
    jr nz, jr_005_718b

    ld b, c
    dec hl

jr_005_7132:
    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    inc l
    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    ld e, l
    jr nz, @+$48

    ld c, a
    ld d, d

jr_005_7140:
    jr nz, jr_005_7190

    ld c, a
    ld c, c
    ld d, e
    ld b, l
    nop
    ld d, e
    ld b, c
    ld b, [hl]
    ld b, l
    dec a
    ld b, c
    ld d, [hl]
    ld c, a
    ld c, c
    ld b, h
    jr nz, jr_005_71a5

    ld b, c
    ld c, [hl]
    ld b, h
    ld c, a
    ld c, l
    jr nz, @+$4f

    ld d, l
    ld d, h
    ld b, l
    jr nz, jr_005_71ae

    ld c, [hl]
    jr nz, @+$46

    ld c, l
    ld b, a
    dec hl
    ld c, a

jr_005_7166:
    ld c, h
    ld b, h
    jr nz, @+$45

    ld b, a
    ld b, d
    nop

jr_005_716d:
    ld d, [hl]
    jr nz, @+$45

    ld c, l

jr_005_7171:
    ld b, h
    jr nz, @+$58

    ld c, c
    ld b, d
    ld d, d
    ld b, c
    ld d, h
    ld c, a
    jr nz, @+$55

    ld c, b
    ld b, c
    ld d, b
    ld b, l
    nop
    push bc
    ld bc, $0000
    xor a
    ld a, $0f
    ld hl, $c443

jr_005_718b:
    sbc [hl]
    jp c, Jump_005_7211

    ld e, [hl]

jr_005_7190:
    ld d, $00
    ld hl, $7199
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_005_71c9


    jp Jump_005_71d1


    jp Jump_005_71d9


    jp Jump_005_71e1


jr_005_71a5:
    jp Jump_005_71e9


    jp Jump_005_71f1


    jp Jump_005_71f9


jr_005_71ae:
    jp Jump_005_7201


    jp Jump_005_7209


    jp Jump_005_71e1


    jp Jump_005_71e9


    jp Jump_005_71f1


    jp Jump_005_71f9


    jp Jump_005_7201


    jp Jump_005_7209


    jp Jump_005_71e1


Jump_005_71c9:
    ld de, $721c
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71d1:
    ld de, $7252
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71d9:
    ld de, $727d
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71e1:
    ld de, $72da
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71e9:
    ld de, $72f5
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71f1:
    ld de, $7303
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_71f9:
    ld de, $731b
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_7201:
    ld de, $7354
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_7209:
    ld de, $7363
    ld c, e
    ld b, d
    jp Jump_005_7214


Jump_005_7211:
    call Call_000_144b

Jump_005_7214:
    push bc
    call Call_000_0dab
    add sp, $02
    pop bc
    ret


    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_005_727b

    ld b, c
    ld d, [hl]
    ld b, l
    ld l, $20
    ld d, a
    ld l, $46
    ld e, b
    jr nz, jr_005_7284

    ld d, e
    ld b, l
    ld d, e
    jr nz, jr_005_7275

    jr nz, jr_005_728d

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_005_7284

    ld c, [hl]
    jr nz, jr_005_7290

    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_005_728a

    jr nc, jr_005_7273

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_005_728b

    ld d, e
    jr nz, jr_005_7296

    ld c, [hl]
    ld d, b
    ld d, l
    ld d, h
    nop
    ld c, h
    ld c, a
    ld d, a
    dec l
    ld d, b
    ld b, c
    ld d, e
    ld d, e
    inc l
    jr nz, jr_005_72a5

    ld c, c
    ld b, a
    ld c, b
    dec l
    ld d, b
    ld b, c
    ld d, e
    ld d, e
    inc l
    jr nz, jr_005_72aa

    ld b, c
    ld c, [hl]
    ld b, h
    dec l
    ld d, b
    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_005_72c1

    ld d, d

jr_005_7273:
    jr nz, @+$43

jr_005_7275:
    ld c, h
    ld c, h
    dec l
    ld d, b
    ld b, c
    ld d, e

jr_005_727b:
    ld d, e
    nop
    ld b, h
    ld c, c
    ld d, e
    ld d, h
    ld c, a
    ld d, d
    ld d, h

jr_005_7284:
    ld c, c
    ld c, a
    ld c, [hl]
    ld l, $20
    ld b, e

jr_005_728a:
    ld c, h

jr_005_728b:
    ld c, c
    ld d, b

jr_005_728d:
    jr nz, @+$56

    ld d, d

jr_005_7290:
    ld d, l
    ld c, [hl]
    ld b, e
    ld b, c
    ld d, h
    ld b, l

jr_005_7296:
    ld d, e
    jr nz, jr_005_72ed

    ld c, a
    jr nz, @+$4e

    ld c, c
    ld c, l
    ld c, c
    ld d, h
    inc l
    jr nz, jr_005_72e9

    ld c, a
    ld c, h

jr_005_72a5:
    ld b, h
    jr nz, jr_005_72f5

    ld c, c
    ld d, d

jr_005_72aa:
    ld d, d
    ld c, a
    ld d, d
    ld d, e
    jr nz, jr_005_72f1

    ld d, d
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_005_7303

    ld c, c
    ld c, l
    ld c, c
    ld d, h
    inc l
    jr nz, jr_005_7315

    ld d, d
    ld b, c
    ld d, b

jr_005_72c1:
    jr nz, jr_005_731a

    ld d, d
    ld b, c
    ld d, b
    ld d, e
    jr nz, @+$43

    ld d, d
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_005_7326

    ld b, l
    ld d, d
    ld d, h
    ld c, c
    ld b, e
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    nop
    ld b, e
    ld c, a
    ld c, l
    ld d, b
    ld d, d
    ld b, l
    ld d, e
    ld d, e
    jr nz, jr_005_733b

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_005_7331

jr_005_72e9:
    ld c, a
    ld d, d
    ld c, c
    ld e, d

jr_005_72ed:
    ld c, a
    ld c, [hl]
    ld d, h
    ld b, c

jr_005_72f1:
    ld c, h
    ld c, h
    ld e, c
    nop

jr_005_72f5:
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_005_7353

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    nop

jr_005_7303:
    ld b, [hl]
    ld c, c
    ld c, h
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_005_734e

    ld d, l
    ld d, h
    ld c, a
    ld b, [hl]
    ld b, [hl]
    jr nz, jr_005_7358

    ld d, d
    ld b, l
    ld d, c

jr_005_7315:
    ld d, l
    ld b, l
    ld c, [hl]
    ld b, e
    ld e, c

jr_005_731a:
    nop
    ld d, d
    ld b, l
    ld d, e
    ld c, a
    ld c, [hl]
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    jr nz, @+$45

jr_005_7326:
    ld c, a
    ld c, [hl]
    ld d, h
    ld d, d
    ld c, a
    ld c, h
    ld l, $20
    ld b, d
    ld c, a
    ld c, a

jr_005_7331:
    ld d, e
    ld d, h
    ld d, e
    jr nz, jr_005_7389

    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c
    ld c, h

jr_005_733b:
    jr nz, jr_005_737e

    ld d, d
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_005_7387

    ld d, l
    ld d, h
    ld c, a
    ld b, [hl]
    ld b, [hl]
    jr nz, jr_005_7391

    ld d, d
    ld b, l
    ld d, c

jr_005_734e:
    ld d, l
    ld b, l
    ld c, [hl]
    ld b, e
    ld e, c

jr_005_7353:
    nop
    ld d, [hl]
    ld b, l
    ld d, d
    ld d, h

jr_005_7358:
    ld c, c
    ld b, e
    ld b, c
    ld c, h
    jr nz, jr_005_73b1

    ld c, b
    ld c, c
    ld b, [hl]
    ld d, h
    nop
    ld c, h
    ld c, c
    ld c, l
    ld c, c
    ld d, h
    jr nz, @+$55

    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_005_73c7

    ld b, l
    ld d, d
    ld d, h
    ld c, c
    ld b, e
    ld b, c
    ld c, h
    ld c, h
    ld e, c
    jr nz, @+$57

    ld d, e
    ld c, c

jr_005_737e:
    ld c, [hl]
    ld b, a
    jr nz, @+$46

    ld c, c
    ld d, e
    ld d, h
    jr nz, jr_005_73d4

jr_005_7387:
    ld c, a
    ld b, h

jr_005_7389:
    ld b, l
    ld l, $20
    jr nc, jr_005_73bb

    ld b, [hl]
    jr nz, @+$4e

jr_005_7391:
    ld c, a
    ld d, a
    ld b, l
    ld d, d
    ld d, e
    jr nz, @+$58

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    inc l
    jr nz, @+$33

    jr nc, jr_005_73cf

    ld b, [hl]
    ld b, [hl]
    jr nz, jr_005_73fd

    ld d, d
    ld b, c
    ld d, b
    ld d, e
    jr nz, @+$4e

    ld c, a
    ld d, l
    ld b, h
    jr nz, @+$55

jr_005_73b1:
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, c
    ld c, h
    ld d, e
    nop
    ld hl, $c414

jr_005_73bb:
    ld a, [hl]
    ld hl, $cbd1
    ld [hl], a
    ld hl, $c412
    ld a, [hl]
    ld hl, $cbd2

jr_005_73c7:
    ld [hl], a
    ld hl, $c40e
    ld a, [hl]
    ld hl, $cbd3

jr_005_73cf:
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]

jr_005_73d4:
    ld hl, $cbd4
    ld [hl], a
    ld hl, $c410
    ld a, [hl]
    ld hl, $cbd5
    ld [hl], a
    ld hl, $c411
    ld a, [hl]
    ld hl, $cbd6
    ld [hl], a
    ld hl, $c414
    ld [hl], $04
    ld hl, $c402
    ld a, [hl]
    ld hl, $c412
    ld [hl], a
    ret


    ld hl, $cbd1
    ld a, [hl]
    ld hl, $c414

jr_005_73fd:
    ld [hl], a
    ld hl, $cbd2
    ld a, [hl]
    ld hl, $c412
    ld [hl], a
    ld hl, $cbd3
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $cbd4
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $cbd5
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, $cbd6
    ld a, [hl]
    ld hl, $c411
    ld [hl], a
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
