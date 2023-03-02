; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

Call_01d_4000:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    jr nz, jr_01d_400d

    jp Jump_01d_4010


jr_01d_400d:
    call Call_000_144b

Jump_01d_4010:
    ld hl, $c418
    ld a, [hl]
    cp $20
    jp c, Jump_01d_401c

    call Call_000_144b

Jump_01d_401c:
    ld hl, $c418
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_402b

jr_01d_4026:
    or a
    rl c
    rl b

jr_01d_402b:
    dec a
    jr nz, jr_01d_4026

    ld hl, $b090
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
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


    ld bc, $c500
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    jr nz, jr_01d_4067

    jp Jump_01d_406a


jr_01d_4067:
    call Call_000_144b

Jump_01d_406a:
    ld hl, $c418
    ld a, [hl]
    cp $20
    jp c, Jump_01d_4076

    call Call_000_144b

Jump_01d_4076:
    ld hl, $c418
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_4085

jr_01d_4080:
    or a
    rl c
    rl b

jr_01d_4085:
    dec a
    jr nz, jr_01d_4080

    ld hl, $b090
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_01d_40ae:
    push bc
    ld hl, $c9d3
    ld c, [hl]
    ld a, c
    and $f0
    jr nz, jr_01d_40bb

    jp Jump_01d_40be


jr_01d_40bb:
    call Call_000_144b

Jump_01d_40be:
    ld hl, $c9d3
    ld a, [hl]
    bit 1, a
    jp z, Jump_01d_40cc

    ld c, $00
    jp Jump_01d_40ce


Jump_01d_40cc:
    ld c, $01

Jump_01d_40ce:
    ld hl, $c9d3
    ld a, [hl]
    add $02
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


Call_01d_40ea:
    push bc
    add sp, -$02
    ld hl, $c418
    ld a, [hl]
    cp $20
    jp c, Jump_01d_40f9

    call Call_000_144b

Jump_01d_40f9:
    ld hl, $c418
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_4108

jr_01d_4103:
    or a
    rl c
    rl b

jr_01d_4108:
    dec a
    jr nz, jr_01d_4103

    ld a, c
    add $90
    ld c, a
    ld a, b
    adc $b0
    ld b, a
    ld hl, $c46e
    push hl
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld c, $00

Jump_01d_4123:
    ld a, c
    cp $10
    jp nc, Jump_01d_41ef

    add $02
    ld b, a
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $6e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_01d_4175

    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2f24
    ld hl, sp+$01
    ld [hl], c
    ld a, c
    bit 1, a
    jp nz, Jump_01d_4169

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_01d_4169:
    ld hl, $41f6
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_41a8


Jump_01d_4175:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_000_2f24
    ld hl, sp+$01
    ld [hl], c
    ld a, c
    bit 1, a
    jp nz, Jump_01d_4195

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_01d_4195:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $41fd
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01d_41a8:
    ld hl, $c9d3
    ld a, [hl]
    cp c
    jp nz, Jump_01d_41eb

    ld hl, $c9d3
    ld a, [hl]
    and $f0
    jr nz, jr_01d_41bb

    jp Jump_01d_41be


jr_01d_41bb:
    call Call_000_144b

Jump_01d_41be:
    ld hl, $c9d3
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_41d4

    ld b, $03
    jp Jump_01d_41d6


Jump_01d_41d4:
    ld b, $02

Jump_01d_41d6:
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01d_41eb:
    inc c
    jp Jump_01d_4123


Jump_01d_41ef:
    call Call_01d_4283
    add sp, $02
    pop bc
    ret


    dec l
    dec l
    jr nz, @+$22

    jr nz, @+$22

    nop
    jr nz, @+$22

    jr nz, jr_01d_4221

    nop

Call_01d_4202:
    push bc
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

jr_01d_4221:
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_000_2c57
    call Call_01d_40ea
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


    push bc
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_01d_4278

    ld hl, $c41e
    ld c, [hl]
    ld a, $50
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c418
    cp [hl]
    jp nz, Jump_01d_4278

    ld hl, $c41e
    ld c, [hl]
    ld a, $58
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3183
    add sp, $02
    jp Jump_01d_4281


Jump_01d_4278:
    ld a, $00
    push af
    inc sp
    call Call_000_313e
    add sp, $01

Jump_01d_4281:
    pop bc
    ret


Call_01d_4283:
    push bc
    add sp, -$07
    ld hl, sp+$06
    ld [hl], $00

Jump_01d_428a:
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp z, Jump_01d_437e

    xor a
    ld hl, $c9d4
    or [hl]
    jp z, Jump_01d_42c6

    ld de, $c9d5
    ld hl, sp+$06
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$04
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld a, [hl]
    add $01
    ld b, a
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld hl, sp+$02
    ld [hl], b
    inc hl
    ld [hl], $00
    jp Jump_01d_42ea


Jump_01d_42c6:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call $405a
    ld b, e
    add sp, $01
    ld hl, sp+$04
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld a, [hl]
    add $01
    ld b, a
    push af
    inc sp
    call $405a
    ld b, e
    add sp, $01
    ld hl, sp+$02
    ld [hl], b
    inc hl
    ld [hl], $00

Jump_01d_42ea:
    ld hl, sp+$02
    ld a, [hl+]
    or [hl]
    jp z, Jump_01d_4377

    ld hl, sp+$06
    ld a, [hl]
    add $02
    ld b, a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$06
    ld b, [hl]
    ld a, b
    bit 1, a
    jp z, Jump_01d_4316

    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    jp Jump_01d_4322


Jump_01d_4316:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_01d_4322:
    ld hl, $0064
    push hl
    ld hl, sp+$06
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
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $4382
    push hl
    call Call_000_35c5
    add sp, $04
    ld a, $25
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, c
    cp $0a
    jp nc, Jump_01d_4377

    call Call_000_2f24

Jump_01d_4377:
    ld hl, sp+$06
    inc [hl]
    inc [hl]
    jp Jump_01d_428a


Jump_01d_437e:
    add sp, $07
    pop bc
    ret


    dec h
    ld h, h
    nop

Call_01d_4385:
    push bc
    xor a
    ld hl, $c9d4
    or [hl]
    jp nz, Jump_01d_43ba

    ld [hl], $01
    ld c, $00

Jump_01d_4392:
    ld a, c
    cp $10
    jp z, Jump_01d_43ba

    ld a, $d5
    add c
    ld hl, $c9e5
    ld [hl], a
    ld a, $c9
    adc $00
    inc hl
    ld [hl], a
    ld a, c
    push af
    inc sp
    call $405a
    ld b, e
    add sp, $01
    ld hl, $c9e5
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    inc c
    jp Jump_01d_4392


Jump_01d_43ba:
    pop bc
    ret


Call_01d_43bc:
    push bc
    ld hl, $c9d3
    ld c, [hl]
    ld a, c
    and $f0
    jr nz, jr_01d_43c9

    jp Jump_01d_43cc


jr_01d_43c9:
    call Call_000_144b

Jump_01d_43cc:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_43d9

    ld c, $03
    jp Jump_01d_43db


Jump_01d_43d9:
    ld c, $02

Jump_01d_43db:
    ld hl, $c9d3
    ld a, [hl]
    add $02
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$08
    ld hl, $c9d3
    ld a, [hl]
    add $02
    ld hl, sp+$05
    ld [hl], a
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp z, Jump_01d_4515

    cp $08
    jp z, Jump_01d_4538

    cp $10
    jp z, Jump_01d_44cc

    cp $11
    jp z, Jump_01d_4574

    cp $12
    jp z, Jump_01d_462a

    cp $14
    jp z, Jump_01d_46db

    cp $18
    jp z, Jump_01d_46db

    cp $20
    jp z, Jump_01d_4aa7

    cp $21
    jp z, Jump_01d_4842

    cp $22
    jp z, Jump_01d_48a4

    cp $24
    jp z, Jump_01d_485c

    cp $28
    jp z, Jump_01d_4880

    cp $30
    jp z, Jump_01d_48bd

    cp $43
    jp z, Jump_01d_4475

    cp $44
    jp z, Jump_01d_4a7f

    cp $50
    jp z, Jump_01d_49d6

    cp $60
    jp z, Jump_01d_4ac6

    cp $80
    jp z, Jump_01d_4a34

    cp $c0
    jp z, Jump_01d_4a19

    jp Jump_01d_4b87


Jump_01d_4475:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_44c7

    ld hl, $c40f
    ld a, [hl]
    ld hl, $c9d3
    ld [hl], a
    ld hl, $73f6
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_44b8

    ld b, $ef
    ld c, $6c
    ld l, b
    ld h, c
    push hl
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

Jump_01d_44b8:
    call Call_01d_4202
    call Call_01d_43bc
    ld hl, $4b8d
    push hl
    call Call_000_0dab
    add sp, $02

Jump_01d_44c7:
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_44cc:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_4b87

    ld hl, $c9d3
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_01d_450d

    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $06
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c9d3
    ld c, [hl]
    ld a, $06
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_4000
    add sp, $02

Jump_01d_450d:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4515:
    call Call_01d_40ae
    xor a
    ld hl, $c9d3
    or [hl]
    jp z, Jump_01d_4521

    dec [hl]

Jump_01d_4521:
    call Call_01d_43bc
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4530

    call Call_01d_4ce5

Jump_01d_4530:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4538:
    call Call_01d_40ae
    ld hl, $c9d3
    inc [hl]
    ld a, [hl]
    cp $10
    jp z, Jump_01d_4559

    ld hl, $c9d3
    ld a, [hl]
    add $ff
    ld c, a
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_01d_455d

Jump_01d_4559:
    ld hl, $c9d3
    dec [hl]

Jump_01d_455d:
    call Call_01d_43bc
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_456c

    call Call_01d_4ce5

Jump_01d_456c:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4574:
    call Call_01d_4385
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_45bc

    xor a
    ld hl, $c40e
    or [hl]
    jp z, Jump_01d_4590

    xor a
    ld hl, $c410
    or [hl]
    jp nz, Jump_01d_45bc

Jump_01d_4590:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, sp+$06
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_01d_45ca


Jump_01d_45bc:
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$07
    ld [hl], c

Jump_01d_45ca:
    ld hl, sp+$06
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a

Jump_01d_45d1:
    xor a
    ld hl, sp+$07
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_01d_4622

    inc hl
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nc, Jump_01d_45f0

    inc [hl]

Jump_01d_45f0:
    ld hl, sp+$07
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a
    ld a, b
    add $02
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, b
    add $01
    ld hl, sp+$07
    ld [hl], a
    jp Jump_01d_45d1


Jump_01d_4622:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_462a:
    call Call_01d_4385
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4672

    xor a
    ld hl, $c40e
    or [hl]
    jp z, Jump_01d_4646

    xor a
    ld hl, $c410
    or [hl]
    jp nz, Jump_01d_4672

Jump_01d_4646:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, sp+$06
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_01d_4680


Jump_01d_4672:
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$07
    ld [hl], c

Jump_01d_4680:
    ld hl, sp+$06
    ld c, [hl]
    inc c

Jump_01d_4684:
    xor a
    ld hl, sp+$07
    ld a, [hl]
    sbc c
    jp nc, Jump_01d_46d3

    ld a, [hl]
    add $02
    ld b, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$07
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    xor a
    ld a, $01
    sbc [hl]
    jp nc, Jump_01d_46b3

    dec [hl]

Jump_01d_46b3:
    ld hl, sp+$07
    ld b, [hl]
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, b
    add $01
    ld hl, sp+$07
    ld [hl], a
    jp Jump_01d_4684


Jump_01d_46d3:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_46db:
    call Call_01d_4385
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4723

    xor a
    ld hl, $c40e
    or [hl]
    jp z, Jump_01d_46f7

    xor a
    ld hl, $c410
    or [hl]
    jp nz, Jump_01d_4723

Jump_01d_46f7:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, sp+$06
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    jp Jump_01d_4731


Jump_01d_4723:
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$07
    ld [hl], c

Jump_01d_4731:
    ld hl, sp+$07
    ld a, [hl]
    and $fe
    ld [hl], a
    dec hl
    ld a, [hl]
    and $fe
    ld c, a
    add $02
    ld [hl], a
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_01d_474b:
    ld hl, sp+$06
    ld a, [hl+]
    cp [hl]
    jr nz, jr_01d_4754

    jp Jump_01d_483a


jr_01d_4754:
    ld hl, sp+$07
    ld a, [hl]
    add $01
    ld b, a
    ld a, $d5
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    xor a
    or b
    jp nz, Jump_01d_4779

    ld b, [hl]

Jump_01d_4779:
    ld hl, $c576
    ld a, [hl]
    cp $14
    jp nz, Jump_01d_4789

    ld hl, sp+$05
    inc [hl]
    dec b
    jp Jump_01d_478d


Jump_01d_4789:
    ld hl, sp+$05
    dec [hl]
    inc b

Jump_01d_478d:
    xor a
    or b
    jp z, Jump_01d_4833

    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_01d_4833

    inc hl
    inc hl
    ld c, [hl]
    ld a, $d5
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a
    inc c
    inc c
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c9d3
    ld a, [hl]
    bit 0, a
    jp z, Jump_01d_47cf

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_01d_47db


Jump_01d_47cf:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a

Jump_01d_47db:
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$07
    ld a, [hl]
    add $01
    ld c, a
    ld a, $d5
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, b
    ld [de], a
    ld a, [hl]
    add $02
    ld c, a
    inc c
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c9d3
    ld a, [hl]
    bit 0, a
    jp z, Jump_01d_481f

    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    jp Jump_01d_482b


Jump_01d_481f:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_01d_482b:
    ld a, b
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_01d_4833:
    ld hl, sp+$07
    inc [hl]
    inc [hl]
    jp Jump_01d_474b


Jump_01d_483a:
    call Call_01d_4283
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4842:
    ld hl, $c418
    ld a, [hl]
    cp $1f
    jp nc, Jump_01d_484c

    inc [hl]

Jump_01d_484c:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_01d_4202
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_485c:
    ld hl, $c418
    ld a, [hl]
    cp $10
    jp nc, Jump_01d_486b

    add $10
    ld [hl], a
    jp Jump_01d_4870


Jump_01d_486b:
    ld hl, $c418
    ld [hl], $1f

Jump_01d_4870:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_01d_4202
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4880:
    ld hl, $c418
    ld a, [hl]
    bit 4, a
    jp z, Jump_01d_488f

    add $f0
    ld [hl], a
    jp Jump_01d_4894


Jump_01d_488f:
    ld hl, $c418
    ld [hl], $00

Jump_01d_4894:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_01d_4202
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_48a4:
    xor a
    ld hl, $c418
    or [hl]
    jp z, Jump_01d_48ad

    dec [hl]

Jump_01d_48ad:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_01d_4202
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_48bd:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_4b87

    ld [hl], $00
    ld hl, $c9d3
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01d_4b87

    call Call_01d_40ae
    ld hl, $c414
    ld [hl], $02
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $01
    ld hl, $c9d3
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    add $01
    ld hl, $c411
    ld [hl], a
    ld hl, $c412
    ld [hl], $02
    ld hl, $c9d3
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    ld hl, $c9d3
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
    ld hl, $c9d3
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_4000
    add sp, $02
    ld hl, sp+$07
    ld [hl], $00

Jump_01d_4932:
    ld hl, sp+$07
    ld a, [hl]
    cp $0f
    jp nc, Jump_01d_49b2

    push af
    inc sp
    call $405a
    ld hl, sp+$06
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp nz, Jump_01d_49a8

    inc hl
    inc hl
    ld a, [hl]
    dec hl
    ld [hl], a

Jump_01d_494e:
    ld hl, sp+$06
    ld a, [hl]
    cp $0f
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01d_49a8

    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld hl, sp+$03
    ld [hl], a
    push af
    inc sp
    call $405a
    ld hl, sp+$03
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_01d_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    cp $0e
    jp nz, Jump_01d_4988

    ld a, $01
    jr jr_01d_4989

Jump_01d_4988:
    xor a

jr_01d_4989:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_01d_499d

    ld a, $00
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    call Call_01d_4000
    add sp, $02

Jump_01d_499d:
    ld hl, sp+$06
    ld b, [hl]
    ld a, b
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01d_494e


Jump_01d_49a8:
    ld hl, sp+$07
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_01d_4932


Jump_01d_49b2:
    ld a, $00
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_01d_49ce

    ld a, $06
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_4000
    add sp, $02

Jump_01d_49ce:
    call Call_01d_4202
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_49d6:
    ld hl, $c414
    ld a, [hl]
    cp $01
    jp z, Jump_01d_4b87

    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_01d_4b87

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4a01

    ld hl, $c40b
    ld [hl], $00
    ld a, $01
    push af
    inc sp
    call Call_01d_4ba2
    add sp, $01
    jp Jump_01d_4b87


Jump_01d_4a01:
    ld hl, $c40b
    ld [hl], $00
    xor a
    ld hl, $c40e
    or [hl]
    jp nz, Jump_01d_4b87

    call Call_01d_40ae
    call Call_01d_4c6a
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4a19:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_4a2f

    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01d_4a2f:
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4a34:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_4a44

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_01d_4a49

Jump_01d_4a44:
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4a49:
    ld hl, $c8fd
    ld c, [hl]
    ld a, c
    or a
    jp z, Jump_01d_4a5a

    cp $01
    jp z, Jump_01d_4a62

    jp Jump_01d_4a67


Jump_01d_4a5a:
    ld hl, $c402
    ld [hl], $04
    jp Jump_01d_4a67


Jump_01d_4a62:
    ld hl, $c402
    ld [hl], $03

Jump_01d_4a67:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c402
    ld [hl], $02
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4a7f:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_4b87

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
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4aa7:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4b87

    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_4b87

    ld a, $00
    push af
    inc sp
    call Call_01d_4ba2
    add sp, $01
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4ac6:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_01d_4b87

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_4b5a

    ld hl, $c412
    ld a, [hl]
    cp $02
    jp nz, Jump_01d_4b5a

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c9d3
    ld c, [hl]
    ld hl, sp+$06
    ld [hl], c
    ld hl, sp+$06
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$07
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$03
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
    jp nz, Jump_01d_4b17

    dec hl
    ld a, [hl]
    cp $0f
    jp z, Jump_01d_4b4c

Jump_01d_4b17:
    ld hl, $c9d3
    ld [hl], $0f

Jump_01d_4b1c:
    xor a
    ld hl, $c9d3
    or [hl]
    jp z, Jump_01d_4b3a

    ld c, [hl]
    ld a, c
    push af
    inc sp
    call $405a
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_01d_4b3a

    ld hl, $c9d3
    dec [hl]
    jp Jump_01d_4b1c


Jump_01d_4b3a:
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c40b
    ld [hl], $00
    call Call_01d_4ce5
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4b4c:
    ld a, $00
    push af
    inc sp
    call Call_01d_4ba2
    add sp, $01
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4b5a:
    ld hl, $4b9b
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
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c9d3
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $c40b
    ld [hl], $00
    ld e, $01
    jp Jump_01d_4b89


Jump_01d_4b87:
    ld e, $00

Jump_01d_4b89:
    add sp, $08
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, @+$55

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

Call_01d_4ba2:
    push bc
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01d_4bb2

    ld de, $4c61
    ld c, e
    ld b, d
    jp Jump_01d_4bb7


Jump_01d_4bb2:
    ld de, $4c65
    ld c, e
    ld b, d

Jump_01d_4bb7:
    push bc
    call Call_000_0dab
    add sp, $02
    ld hl, $c414
    ld [hl], $02
    ld hl, $c412
    ld [hl], $02
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $01
    ld hl, $c9d3
    ld a, [hl]
    ld hl, $c411
    ld [hl], a
    push hl
    ld hl, $c40f
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c411
    inc [hl]
    ld hl, $c40f
    ld c, [hl]

Jump_01d_4beb:
    xor a
    ld a, c
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_01d_4c2a

    ld hl, $c9d3
    ld [hl], c
    call Call_01d_40ae
    ld a, c
    push af
    inc sp
    call $405a
    ld b, e
    add sp, $01
    ld a, b
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
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01d_4c26

    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_4000
    add sp, $02

Jump_01d_4c26:
    inc c
    jp Jump_01d_4beb


Jump_01d_4c2a:
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01d_4c46

    xor a
    ld hl, $c40f
    or [hl]
    jp nz, Jump_01d_4c46

    ld a, $06
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_4000
    add sp, $02

Jump_01d_4c46:
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c9d3
    ld [hl], a
    ld c, $7c
    ld b, $71
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01d_40ea
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

Call_01d_4c6a:
    push bc
    add sp, -$01
    ld hl, $c412
    ld a, [hl]
    cp $02
    jp z, Jump_01d_4c79

    jp Jump_01d_4cdb


Jump_01d_4c79:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_01d_4c92

    ld hl, $4cdf
    push hl
    call Call_000_0dab
    add sp, $02

Jump_01d_4c92:
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a

Jump_01d_4c99:
    xor a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_01d_4cd8

    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld b, e
    add sp, $02
    ld hl, $c9d3
    ld c, [hl]
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_4000
    add sp, $02
    ld hl, $c9d3
    inc [hl]
    ld c, [hl]
    ld a, c
    cp $10
    jp nz, Jump_01d_4cd2

    ld hl, $c9d3
    ld [hl], $00

Jump_01d_4cd2:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01d_4c99


Jump_01d_4cd8:
    call Call_01d_40ea

Jump_01d_4cdb:
    add sp, $01
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop

Call_01d_4ce5:
    push bc
    add sp, -$02
    ld hl, $c412
    ld a, [hl]
    cp $02
    jp z, Jump_01d_4cf4

    jp Jump_01d_4d5b


Jump_01d_4cf4:
    ld hl, $c9d3
    ld c, [hl]
    xor a
    ld hl, $c40f
    ld a, [hl]
    sbc c
    jp nc, Jump_01d_4d0e

    ld c, [hl]
    ld hl, $c9d3
    ld a, [hl]
    add $01
    ld hl, sp+$01
    ld [hl], a
    jp Jump_01d_4d1b


Jump_01d_4d0e:
    ld hl, $c40f
    ld a, [hl]
    add $01
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c9d3
    ld c, [hl]

Jump_01d_4d1b:
    xor a
    ld a, c
    ld hl, sp+$01
    sbc [hl]
    jp nc, Jump_01d_4d5b

    ld a, c
    add $02
    dec hl
    ld [hl], a
    ld a, c
    and $f0
    jr nz, jr_01d_4d30

    jp Jump_01d_4d33


jr_01d_4d30:
    call Call_000_144b

Jump_01d_4d33:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_4d40

    ld b, $03
    jp Jump_01d_4d42


Jump_01d_4d40:
    ld b, $02

Jump_01d_4d42:
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    inc c
    jp Jump_01d_4d1b


Jump_01d_4d5b:
    add sp, $02
    pop bc
    ret


    push bc
    ld hl, $c9d4
    ld [hl], $00
    ld c, $00

Jump_01d_4d67:
    ld a, c
    cp $10
    jp z, Jump_01d_4d86

    ld a, $d5
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_4000
    add sp, $02
    inc c
    jp Jump_01d_4d67


Jump_01d_4d86:
    pop bc
    ret


Call_01d_4d88:
    push bc
    add sp, -$0c
    ld hl, $c9e7
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$0b
    ld [hl], a
    ld hl, $c9ec
    ld a, [hl]
    cp $02
    jp nz, Jump_01d_4da7

    ld a, $01
    jr jr_01d_4da8

Jump_01d_4da7:
    xor a

jr_01d_4da8:
    ld b, a
    or b
    jp z, Jump_01d_4db8

    ld de, $50f7
    ld hl, sp+$08
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_01d_4dc0


Jump_01d_4db8:
    ld de, $4ef7
    ld hl, sp+$08
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01d_4dc0:
    xor a
    ld hl, $c9ec
    or [hl]
    jp z, Jump_01d_4de0

    ld hl, sp+$0b
    ld a, [hl]
    and $0e
    ld [hl], a
    xor a
    or b
    jp z, Jump_01d_4de0

    ld a, [hl]
    srl a
    ld [hl], a
    xor a
    ld a, $04
    sbc [hl]
    jp nc, Jump_01d_4de0

    ld [hl], $04

Jump_01d_4de0:
    ld hl, sp+$0a
    ld [hl], $00

Jump_01d_4de4:
    xor a
    ld hl, sp+$0a
    ld a, [hl+]
    sbc [hl]
    jp nc, Jump_01d_4e00

    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0020
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    inc hl
    inc [hl]
    jp Jump_01d_4de4


Jump_01d_4e00:
    xor a
    ld hl, $c9ec
    or [hl]
    jp z, Jump_01d_4e16

    ld hl, $c9e7
    ld a, [hl]
    and $1f
    ld hl, sp+$0b
    srl a
    ld [hl], a
    jp Jump_01d_4e1f


Jump_01d_4e16:
    ld hl, $c9e7
    ld a, [hl]
    and $0f
    ld hl, sp+$0b
    ld [hl], a

Jump_01d_4e1f:
    xor a
    ld hl, sp+$0b
    or [hl]
    jp z, Jump_01d_4ef3

    ld hl, sp+$10
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld hl, sp+$0d
    ld [hl], e
    add sp, $02
    dec hl
    ld [hl], $00

Jump_01d_4e3b:
    ld hl, sp+$0a
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_4ef3

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld hl, sp+$06
    ld [hl], c
    rla
    sbc a
    inc hl
    ld [hl], a
    ld hl, sp+$0b
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$0b
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    inc hl
    ld b, [hl]
    ld a, b
    bit 7, a
    jp z, Jump_01d_4ea4

    ld a, $05
    jr jr_01d_4e7c

jr_01d_4e74:
    or a
    ld hl, sp+$07
    rr [hl]
    dec hl
    rr [hl]

jr_01d_4e7c:
    dec a
    jr nz, jr_01d_4e74

    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $f0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    jp Jump_01d_4eb3


Jump_01d_4ea4:
    ld a, $05
    jr jr_01d_4eb0

jr_01d_4ea8:
    or a
    ld hl, sp+$07
    rr [hl]
    dec hl
    rr [hl]

jr_01d_4eb0:
    dec a
    jr nz, jr_01d_4ea8

Jump_01d_4eb3:
    ld hl, sp+$0a
    ld a, [hl]
    add a
    ld c, a
    ld de, $c9f3
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ld hl, sp+$08
    inc [hl]
    jr nz, jr_01d_4eed

    inc hl
    inc [hl]

jr_01d_4eed:
    ld hl, sp+$0a
    inc [hl]
    jp Jump_01d_4e3b


Jump_01d_4ef3:
    add sp, $0c
    pop bc
    ret


    nop
    inc c
    jr @+$25

    inc l
    inc [hl]
    ld a, [hl-]
    dec a
    ccf
    dec a
    ld a, [hl-]
    inc [hl]
    inc l
    inc hl
    jr jr_01d_4f13

    nop
    db $f4
    add sp, -$23
    call nc, $c6cc
    jp $c3c1


    add $cc

jr_01d_4f13:
    call nc, $e8dd
    db $f4
    nop
    inc c
    ld d, $1d
    rra
    dec e
    ld d, $0c
    nop
    db $f4
    ld [$e1e3], a
    db $e3
    ld [$00f4], a
    inc c
    ld d, $1d
    rra
    dec e
    ld d, $0c
    nop
    db $f4
    ld [$e1e3], a
    db $e3
    ld [$00f4], a
    dec bc
    inc de
    inc d
    ld c, $04
    ld hl, sp-$11
    db $eb
    rst $28
    ld hl, sp+$04
    ld c, $14
    inc de
    dec bc
    nop
    push af
    db $ed
    db $ec
    ld a, [c]
    db $fc
    ld [$1411], sp
    ld de, $fc08
    ld a, [c]
    db $ec
    db $ed
    push af
    nop
    dec bc
    rrca
    dec bc
    nop
    push af
    pop af
    push af
    nop
    dec bc
    rrca
    dec bc
    nop
    push af
    pop af
    push af
    nop
    dec bc
    rrca
    dec bc
    nop
    push af
    pop af
    push af
    nop
    dec bc
    rrca
    dec bc
    nop
    push af
    pop af
    push af
    nop
    ld a, [bc]
    dec bc
    ld [bc], a
    ld hl, sp-$0c
    db $fc
    rlca
    inc c
    rlca
    db $fc
    db $f4
    ld hl, sp+$02
    dec bc
    ld a, [bc]
    nop
    or $f5
    cp $08
    inc c
    inc b
    ld sp, hl
    db $f4
    ld sp, hl
    inc b
    inc c
    ld [$f5fe], sp
    or $00
    add hl, bc
    rlca
    db $fc
    or $fc
    rlca
    add hl, bc
    nop
    rst $30
    ld sp, hl
    inc b
    ld a, [bc]
    inc b
    ld sp, hl
    rst $30
    nop
    add hl, bc
    rlca
    db $fc
    or $fc
    rlca
    add hl, bc
    nop
    rst $30
    ld sp, hl
    inc b
    ld a, [bc]
    inc b
    ld sp, hl
    rst $30
    nop
    ld [$f903], sp
    ld a, [$0805]
    rst $38
    ld hl, sp-$01
    ld [$fa05], sp
    ld sp, hl
    inc bc
    ld [$f800], sp
    db $fd
    rlca
    ld b, $fb
    ld hl, sp+$01
    ld [$f801], sp
    ei
    ld b, $07
    db $fd
    ld hl, sp+$00
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    rlca
    nop
    ld sp, hl
    nop
    ld b, $fe
    ei
    inc b
    inc bc
    ld a, [$06ff]
    rst $38
    ld a, [$0403]
    ei
    cp $06
    nop
    ld a, [$0502]
    db $fc
    db $fd
    ld b, $01
    ld a, [$0601]
    db $fd
    db $fc
    dec b
    ld [bc], a
    ld a, [$0500]
    db $fc
    cp $06
    cp $fc
    dec b
    nop
    ei
    inc b
    ld [bc], a
    ld a, [$0402]
    ei
    nop
    dec b
    db $fc
    cp $06
    cp $fc
    dec b
    nop
    ei
    inc b
    ld [bc], a
    ld a, [$0402]
    ei
    nop
    inc b
    ei
    ld bc, $fb04
    ld [bc], a
    inc bc
    ei
    inc bc
    ld [bc], a
    ei
    inc b
    ld bc, $04fb
    nop
    db $fc
    dec b
    rst $38
    db $fc
    dec b
    cp $fd
    dec b
    db $fd
    cp $05
    db $fc
    rst $38
    dec b
    db $fc
    nop
    inc bc
    ei
    inc bc
    nop
    db $fd
    dec b
    db $fd
    nop
    inc bc
    ei
    inc bc
    nop
    db $fd
    dec b
    db $fd
    nop
    inc bc
    ei
    inc bc
    nop
    db $fd
    dec b
    db $fd
    nop
    inc bc
    ei
    inc bc
    nop
    db $fd
    dec b
    db $fd
    nop
    ld [bc], a
    db $fc
    inc b
    db $fd
    nop
    ld bc, $04fc
    db $fc
    ld bc, $fd00
    inc b
    db $fc
    ld [bc], a
    nop
    cp $04
    db $fc
    inc bc
    nop
    rst $38
    inc b
    db $fc
    inc b
    rst $38
    nop
    inc bc
    db $fc
    inc b
    cp $00
    ld bc, $04fd
    db $fc
    inc b
    db $fd
    ld bc, $ff00
    inc bc
    db $fc
    inc b
    db $fc
    inc bc
    rst $38
    nop
    ld bc, $04fd
    db $fc
    inc b
    db $fd
    ld bc, $ff00
    inc bc
    db $fc
    inc b
    db $fc
    inc bc
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    cp $03
    db $fd
    inc b
    db $fc
    inc b
    db $fd
    inc bc
    cp $02
    rst $38
    nop
    nop
    nop
    ld bc, $02fe
    db $fd
    inc bc
    db $fc
    inc b
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
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
    inc c
    jr jr_01d_511e

    inc l
    inc [hl]
    ld a, [hl-]
    dec a
    ccf
    dec a
    ld a, [hl-]
    inc [hl]
    inc l
    inc hl
    jr jr_01d_5113

    nop
    db $f4
    add sp, -$23
    call nc, $c6cc
    jp $c3c1


    add $cc

jr_01d_5113:
    call nc, $e8dd
    db $f4
    nop
    db $fd
    ld a, [$fcfa]
    rst $38
    ld [bc], a

jr_01d_511e:
    dec b
    rlca
    dec b
    ld [bc], a
    rst $38
    db $fc
    ld a, [$fdfa]
    nop
    inc bc
    ld b, $06
    inc b
    ld bc, $fbfe
    ld a, [$fefb]
    ld bc, $0604
    ld b, $03
    nop
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    cp $00
    ld bc, $0102
    nop
    cp $ff
    nop
    ld [bc], a
    ld [bc], a
    nop
    cp $fe
    nop
    ld bc, $0002
    rst $38
    cp $ff
    nop
    ld [bc], a
    ld bc, $fe00
    cp $00
    rst $38
    nop
    ld bc, $0000
    rst $38
    nop
    ld bc, $ff00
    nop
    nop
    ld bc, $ff00
    nop
    ld bc, $ff00
    nop
    nop
    ld bc, $ff00
    nop
    ld bc, $0000
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_01d_5197:
    push bc
    add sp, -$0c
    ld hl, $c9ec
    ld a, [hl]
    cp $02
    jp nz, Jump_01d_51a7

    ld a, $01
    jr jr_01d_51a8

Jump_01d_51a7:
    xor a

jr_01d_51a8:
    ld c, a
    or c
    jp z, Jump_01d_51b8

    ld de, $50f7
    ld hl, sp+$08
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_01d_51c0


Jump_01d_51b8:
    ld de, $4ef7
    ld hl, sp+$08
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01d_51c0:
    xor a
    ld hl, $c9ec
    or [hl]
    jp z, Jump_01d_51f8

    ld hl, $c9e7
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$0a
    ld [hl], a
    or a
    jp z, Jump_01d_5326

    ld hl, sp+$0a
    dec [hl]
    ld a, [hl]
    add a
    ld [hl], a
    xor a
    or c
    jp z, Jump_01d_520e

    ld a, [hl]
    srl a
    ld [hl], a
    xor a
    ld a, $04
    sbc [hl]
    jp nc, Jump_01d_520e

    ld [hl], $04
    jp Jump_01d_520e


Jump_01d_51f8:
    ld hl, $c9e7
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$0a
    ld [hl], a
    or a
    jp z, Jump_01d_5326

    ld hl, sp+$0a
    dec [hl]

Jump_01d_520e:
    ld hl, sp+$0b
    ld [hl], $00

Jump_01d_5212:
    xor a
    ld hl, sp+$0b
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_01d_5230

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0020
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    inc hl
    inc hl
    inc [hl]
    jp Jump_01d_5212


Jump_01d_5230:
    xor a
    ld hl, $c9ec
    or [hl]
    jp z, Jump_01d_5246

    ld hl, $c9e7
    ld a, [hl]
    and $1f
    ld hl, sp+$0a
    srl a
    ld [hl], a
    jp Jump_01d_524f


Jump_01d_5246:
    ld hl, $c9e7
    ld a, [hl]
    and $0f
    ld hl, sp+$0a
    ld [hl], a

Jump_01d_524f:
    ld a, $0f
    ld hl, sp+$0a
    xor [hl]
    ld [hl], a
    or a
    jp z, Jump_01d_5326

    ld hl, sp+$10
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld hl, sp+$0c
    ld [hl], e
    add sp, $02
    inc hl
    ld [hl], $00

Jump_01d_526e:
    ld hl, sp+$0b
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5326

    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld hl, sp+$06
    ld [hl], c
    rla
    sbc a
    inc hl
    ld [hl], a
    ld hl, sp+$0a
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$0b
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    inc hl
    ld b, [hl]
    ld a, b
    bit 7, a
    jp z, Jump_01d_52d7

    ld a, $05
    jr jr_01d_52af

jr_01d_52a7:
    or a
    ld hl, sp+$07
    rr [hl]
    dec hl
    rr [hl]

jr_01d_52af:
    dec a
    jr nz, jr_01d_52a7

    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $f0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    jp Jump_01d_52e6


Jump_01d_52d7:
    ld a, $05
    jr jr_01d_52e3

jr_01d_52db:
    or a
    ld hl, sp+$07
    rr [hl]
    dec hl
    rr [hl]

jr_01d_52e3:
    dec a
    jr nz, jr_01d_52db

Jump_01d_52e6:
    ld hl, sp+$0b
    ld a, [hl]
    add a
    ld c, a
    ld de, $c9f3
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ld hl, sp+$08
    inc [hl]
    jr nz, jr_01d_5320

    inc hl
    inc [hl]

jr_01d_5320:
    ld hl, sp+$0b
    inc [hl]
    jp Jump_01d_526e


Jump_01d_5326:
    add sp, $0c
    pop bc
    ret


Call_01d_532a:
    push bc
    add sp, -$1e
    ld de, $ca33
    ld hl, sp+$1c
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c9ef
    ld c, [hl]
    ld a, $a3
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, $00
    ld de, $0010
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld hl, sp+$1a
    ld [hl], a
    dec hl
    ld [hl], e
    ld a, e
    ld hl, sp+$11
    ld [hl], a
    ld hl, sp+$1a
    ld a, [hl]
    ld hl, sp+$12
    ld [hl], a
    or a
    rr [hl]
    dec hl
    rr [hl]
    ld a, [hl]
    ld hl, sp+$17
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$18
    ld [hl], a
    ld a, $05
    jr jr_01d_5379

jr_01d_5371:
    or a
    ld hl, sp+$17
    rl [hl]
    inc hl
    rl [hl]

jr_01d_5379:
    dec a
    jr nz, jr_01d_5371

    ld hl, sp+$19
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    or a
    rr b
    rr c
    ld a, $05
    jr jr_01d_5390

jr_01d_538b:
    or a
    rl c
    rl b

jr_01d_5390:
    dec a
    jr nz, jr_01d_538b

    ld de, $0100
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld hl, sp+$16
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, sp+$1b
    ld [hl], $00
    ld hl, sp+$17
    ld a, [hl]
    dec hl
    dec hl
    cp [hl]
    jr nz, jr_01d_53b8

    ld hl, sp+$18
    ld a, [hl]
    dec hl
    dec hl
    cp [hl]
    jr nz, jr_01d_53b8

    ld a, $01
    jr jr_01d_53b9

jr_01d_53b8:
    xor a

jr_01d_53b9:
    ld hl, sp+$11
    ld [hl], a
    ld hl, sp+$15
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld hl, sp+$16
    ld a, [hl]
    ld hl, sp+$10
    ld [hl], a
    or a
    dec hl
    rl [hl]
    inc hl
    rl [hl]
    ld hl, sp+$15
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0d
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$17
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a
    ld hl, sp+$18
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    or a
    dec hl
    rl [hl]
    inc hl
    rl [hl]
    ld hl, sp+$15
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$15
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d

Jump_01d_540f:
    ld hl, sp+$1b
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5698

    add a
    ld c, a
    ld a, $f3
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$13
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c9ee
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$15
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$18
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld a, $05
    jr jr_01d_544d

jr_01d_5445:
    or a
    ld hl, sp+$14
    rr [hl]
    dec hl
    rr [hl]

jr_01d_544d:
    dec a
    jr nz, jr_01d_5445

    ld hl, sp+$13
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    bit 3, a
    jp z, Jump_01d_547c

    dec hl
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$14
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $f0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$13
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$14
    ld [hl], a

Jump_01d_547c:
    ld hl, sp+$13
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0080
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], d
    ld hl, $c9e9
    ld c, [hl]
    ld b, $00
    ld hl, sp+$13
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], d
    ld hl, $c9ed
    ld a, [hl]
    or a
    jp z, Jump_01d_54b2

    cp $01
    jp z, Jump_01d_54f3

    cp $02
    jp z, Jump_01d_55a0

    jp Jump_01d_5674


Jump_01d_54b2:
    ld hl, sp+$14
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, sp+$18
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$17
    sbc [hl]
    ld a, e
    sbc d
    jp nc, Jump_01d_54d2

    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    jp Jump_01d_5674


Jump_01d_54d2:
    ld hl, sp+$16
    ld a, [hl]
    xor $80
    ld e, a
    dec hl
    dec hl
    ld a, [hl]
    xor $80
    ld d, a
    inc hl
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, e
    sbc d
    jp nc, Jump_01d_5674

    inc hl
    inc hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    jp Jump_01d_5674


Jump_01d_54f3:
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$14
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$03
    ld a, [hl]
    and $f0
    ld [hl+], a
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$13
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$14
    ld [hl], a
    xor a
    ld hl, sp+$11
    or [hl]
    jp z, Jump_01d_552e

    ld hl, sp+$15
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    jp Jump_01d_5674


Jump_01d_552e:
    ld hl, sp+$14
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, sp+$0e
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0d
    sbc [hl]
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_01d_5569

    ld hl, sp+$0f
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$13
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$02
    ld [hl], a
    dec hl
    ld [hl], e
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    jp Jump_01d_552e


Jump_01d_5569:
    ld hl, sp+$14
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, sp+$18
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$17
    sbc [hl]
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01d_5674

    ld hl, sp+$0b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$13
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld c, a
    ld b, e
    ld hl, sp+$13
    ld [hl], b
    inc hl
    ld [hl], c
    jp Jump_01d_552e


Jump_01d_55a0:
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$14
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$03
    ld a, [hl]
    and $f0
    ld [hl+], a
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$13
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$14
    ld [hl], a
    xor a
    ld hl, sp+$11
    or [hl]
    jp z, Jump_01d_55db

    ld hl, sp+$15
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    jp Jump_01d_5674


Jump_01d_55db:
    ld hl, sp+$16
    ld a, [hl]
    xor $80
    ld e, a
    dec hl
    dec hl
    ld a, [hl]
    xor $80
    ld d, a
    inc hl
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01d_5626

    ld hl, sp+$13
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$02
    ld [hl], a
    dec hl
    ld [hl], e
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$17
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$13
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_55db


Jump_01d_5626:
    ld hl, sp+$14
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, sp+$18
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$17
    sbc [hl]
    ld a, e
    sbc d
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01d_5674

    ld hl, sp+$13
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$13
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$17
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld b, a
    ld c, e
    ld hl, sp+$13
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_5626


Jump_01d_5674:
    ld hl, sp+$13
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $05
    jr jr_01d_5682

jr_01d_567d:
    or a
    rr b
    rr c

jr_01d_5682:
    dec a
    jr nz, jr_01d_567d

    ld hl, sp+$1c
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_01d_5692

    inc hl
    inc [hl]

jr_01d_5692:
    ld hl, sp+$1b
    inc [hl]
    jp Jump_01d_540f


Jump_01d_5698:
    add sp, $1e
    pop bc
    ret


Call_01d_569c:
    push bc
    add sp, -$06
    ld hl, $c9ef
    ld c, [hl]
    ld a, $93
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$05
    ld [hl], a
    xor a
    ld a, $03
    ld hl, $c9e8
    sbc [hl]
    jp c, Jump_01d_58dd

    ld e, [hl]
    ld d, $00
    ld hl, $56c4
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_56d0


    jp Jump_01d_578a


    jp Jump_01d_583f


    jp Jump_01d_588b


Jump_01d_56d0:
    ld hl, $c9ec
    ld a, [hl]
    cp $01
    jp z, Jump_01d_570f

    cp $02
    jp z, Jump_01d_5739

    ld hl, $c9e7
    ld a, [hl]
    and $f0
    ld b, a
    ld hl, sp+$02
    ld [hl], b
    inc hl
    ld [hl], $00
    dec hl
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    or a
    dec hl
    rl [hl]
    inc hl
    rl [hl]
    ld de, $71ec
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_5760


Jump_01d_570f:
    ld hl, $c9e7
    ld a, [hl]
    and $e0
    ld c, a
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], $00
    or a
    rr [hl]
    dec hl
    rr [hl]
    ld c, [hl]
    inc hl
    ld b, [hl]
    or a
    rl c
    rl b
    ld a, $ec
    add c
    ld c, a
    ld a, $73
    adc b
    ld b, a
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_5760


Jump_01d_5739:
    ld hl, $c9e7
    ld a, [hl]
    and $e0
    ld c, a
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], $00
    or a
    rr [hl]
    dec hl
    rr [hl]
    ld c, [hl]
    inc hl
    ld b, [hl]
    or a
    rl c
    rl b
    ld a, $ec
    add c
    ld c, a
    ld a, $77
    adc b
    ld b, a
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b

Jump_01d_5760:
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_0b43
    add sp, $02
    ld hl, sp+$05
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_01d_4d88
    add sp, $01
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_01d_58dd

    ld a, [hl]
    push af
    inc sp
    call Call_01d_5197
    add sp, $01
    jp Jump_01d_58dd


Jump_01d_578a:
    ld hl, $c9ec
    ld a, [hl]
    or a
    jp z, Jump_01d_579f

    cp $01
    jp z, Jump_01d_57c4

    cp $02
    jp z, Jump_01d_57ee

    jp Jump_01d_5815


Jump_01d_579f:
    ld hl, $c9e7
    ld a, [hl]
    and $f0
    ld c, a
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], $00
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    or a
    rl c
    rl b
    ld a, $ec
    add c
    ld c, a
    ld a, $74
    adc b
    ld b, a
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_5815


Jump_01d_57c4:
    ld hl, $c9e7
    ld a, [hl]
    and $e0
    ld c, a
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], $00
    or a
    rr [hl]
    dec hl
    rr [hl]
    ld c, [hl]
    inc hl
    ld b, [hl]
    or a
    rl c
    rl b
    ld a, $ec
    add c
    ld c, a
    ld a, $76
    adc b
    ld b, a
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_5815


Jump_01d_57ee:
    ld hl, $c9e7
    ld a, [hl]
    and $e0
    ld c, a
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], $00
    or a
    rr [hl]
    dec hl
    rr [hl]
    ld c, [hl]
    inc hl
    ld b, [hl]
    or a
    rl c
    rl b
    ld a, $ec
    add c
    ld c, a
    ld a, $78
    adc b
    ld b, a
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b

Jump_01d_5815:
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_0b43
    add sp, $02
    ld hl, sp+$05
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_01d_5197
    add sp, $01
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_01d_58dd

    ld a, [hl]
    push af
    inc sp
    call Call_01d_4d88
    add sp, $01
    jp Jump_01d_58dd


Jump_01d_583f:
    ld hl, sp+$04
    ld [hl], $20

Jump_01d_5843:
    ld hl, sp+$04
    ld a, [hl]
    add $ff
    ld b, a
    add a
    ld c, a
    ld a, $f3
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    inc de
    ld [de], a
    ld [hl], b
    ld a, b
    or b
    jp nz, Jump_01d_5843

    xor a
    inc hl
    or [hl]
    jp z, Jump_01d_5869

    ld c, [hl]
    jp Jump_01d_586b


Jump_01d_5869:
    ld c, $01

Jump_01d_586b:
    ld a, c
    push af
    inc sp
    call Call_01d_4d88
    add sp, $01
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_01d_587e

    ld c, [hl]
    jp Jump_01d_5880


Jump_01d_587e:
    ld c, $01

Jump_01d_5880:
    ld a, c
    push af
    inc sp
    call Call_01d_5197
    add sp, $01
    jp Jump_01d_58dd


Jump_01d_588b:
    ld hl, $c9ec
    ld a, [hl]
    or a
    jp z, Jump_01d_58a0

    cp $01
    jp z, Jump_01d_58ab

    cp $02
    jp z, Jump_01d_58b6

    jp Jump_01d_58be


Jump_01d_58a0:
    ld bc, $72dc
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_58be


Jump_01d_58ab:
    ld bc, $745c
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_01d_58be


Jump_01d_58b6:
    ld bc, $785c
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b

Jump_01d_58be:
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_0b43
    add sp, $02
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_01d_4d88
    add sp, $01
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_01d_5197
    add sp, $01

Jump_01d_58dd:
    add sp, $06
    pop bc
    ret


Call_01d_58e1:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add $01
    and $1f
    ld c, a
    ld e, c
    pop bc
    ret


Call_01d_58ed:
    push bc
    add sp, -$12
    ld hl, sp+$10
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c9eb
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    srl c
    ld a, [hl]
    add c
    ld c, a
    xor a
    sbc c
    ld hl, sp+$0f
    ld [hl], a
    ld hl, $0040
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $cab7
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0040
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $caf7
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, sp+$0e
    ld [hl], $00

Jump_01d_5933:
    ld hl, sp+$0e
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5afa

    ld hl, sp+$11
    ld c, [hl]
    ld b, $00
    ld hl, sp+$0d
    ld [hl], c
    ld hl, sp+$10
    ld c, [hl]
    ld hl, sp+$0b
    ld [hl], c
    inc hl
    ld [hl], $00
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld a, $33
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], $00
    ld hl, sp+$0d
    ld a, [hl]
    add $01
    and $1f
    ld c, a
    add a
    ld hl, sp+$04
    ld [hl], a
    ld de, $cab7
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $cb37
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $cb39
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$07
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, $cb39
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $cb37
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $caf7
    inc hl
    ld l, [hl]
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
    ld hl, $cb39
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, $cb39
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $cb39
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $0100
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$0c
    ld [hl], a
    dec hl
    ld [hl], e
    inc hl
    inc hl
    ld a, [hl]
    add a
    ld hl, $cb39
    ld [hl], a
    ld de, $cab7
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
    ld hl, $cb37
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$0b
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
    ld hl, $cb37
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
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $caf7
    ld hl, $cb39
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld hl, $c9ea
    ld a, [hl]
    or a
    jp z, Jump_01d_5aae

    ld hl, sp+$0e
    ld a, [hl]
    cp $0f
    jp nc, Jump_01d_5aca

Jump_01d_5aae:
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$10
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
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    jp Jump_01d_5af4


Jump_01d_5aca:
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld de, $0200
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld [hl], e
    ld hl, sp+$10
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
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d

Jump_01d_5af4:
    ld hl, sp+$0e
    inc [hl]
    jp Jump_01d_5933


Jump_01d_5afa:
    ld hl, sp+$0e
    ld [hl], $00

Jump_01d_5afe:
    ld hl, sp+$0e
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5bc0

    add a
    ld c, a
    ld a, $b7
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$07
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, $f7
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$05
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c9ea
    ld a, [hl]
    or a
    jp nz, Jump_01d_5b84

    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0100
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld [hl], e
    inc hl
    ld a, [hl]
    bit 7, a
    jp z, Jump_01d_5b84

    ld de, $0100
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$01
    ld [hl], a
    dec hl
    ld [hl], e
    ld a, $04
    jr jr_01d_5b69

jr_01d_5b61:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_01d_5b69:
    dec a
    jr nz, jr_01d_5b61

    ld hl, sp+$07
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
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$05
    ld [hl], $00
    inc hl
    ld [hl], $01

Jump_01d_5b84:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld de, $ca33
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, sp+$07
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$0e
    inc [hl]
    jp Jump_01d_5afe


Jump_01d_5bc0:
    add sp, $12
    pop bc
    ret


Call_01d_5bc4:
    push bc
    add sp, -$10
    ld hl, sp+$0e
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c9eb
    sbc [hl]
    ld hl, sp+$0d
    ld [hl], a
    dec hl
    ld [hl], $00
    dec hl
    ld [hl], $20
    ld hl, $0040
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $cab7
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0040
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $caf7
    push hl
    call Call_000_3892
    add sp, $05

Jump_01d_5bfe:
    ld hl, sp+$0d
    ld a, [hl]
    cp $80
    jp nc, Jump_01d_5c5c

    ld hl, sp+$0a
    ld [hl], $00
    ld hl, sp+$0d
    ld a, [hl]
    add a
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    srl a
    ld [hl+], a
    ld [hl], $00

Jump_01d_5c17:
    xor a
    ld hl, sp+$0c
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_01d_5bfe

    ld de, $ca33
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $cb3b
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0a
    ld b, [hl]
    inc [hl]
    ld a, $33
    add b
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    inc [hl]
    ld a, $33
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    add b
    ld b, a
    srl b
    ld hl, $cb3b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    ld hl, sp+$0c
    inc [hl]
    jp Jump_01d_5c17


Jump_01d_5c5c:
    ld hl, sp+$0b
    dec [hl]

Jump_01d_5c5f:
    ld hl, sp+$0f
    ld c, [hl]
    ld hl, sp+$09
    ld [hl], c
    ld hl, sp+$0e
    ld b, [hl]
    ld hl, sp+$07
    ld [hl], b
    inc hl
    ld [hl], $00
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld a, $33
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$05
    ld [hl], c
    inc hl
    ld [hl], $00
    ld hl, sp+$09
    ld a, [hl]
    cp $20
    jp nz, Jump_01d_5cfc

    ld hl, sp+$0c
    ld [hl], $00

Jump_01d_5c96:
    ld hl, sp+$0c
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5cf9

    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld a, $33
    add c
    ld hl, $cb3b
    ld [hl], a
    ld a, $ca
    adc $00
    inc hl
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    add a
    ld hl, sp+$04
    ld [hl], a
    ld de, $cab7
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, $cb3d
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld de, $caf7
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push bc
    ld hl, $cb3d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $cb3b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$0c
    inc [hl]
    jp Jump_01d_5c96


Jump_01d_5cf9:
    jp Jump_01d_5e56


Jump_01d_5cfc:
    ld hl, sp+$09
    ld a, [hl]
    add $01
    and $1f
    ld c, a
    add a
    ld hl, sp+$04
    ld [hl], a
    ld de, $cab7
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $cb3d
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $cb3b
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$07
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld hl, $cb3b
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $cb3d
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $caf7
    inc hl
    ld l, [hl]
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
    ld hl, $cb3d
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, $cb3d
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $cb3d
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $0100
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$08
    ld [hl], a
    dec hl
    ld [hl], e
    inc hl
    inc hl
    ld a, [hl]
    add a
    ld hl, $cb3d
    ld [hl], a
    ld de, $cab7
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
    ld hl, $cb3b
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$07
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
    ld hl, $cb3b
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
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$00
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld de, $caf7
    ld hl, $cb3d
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0e
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
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0c
    inc [hl]
    ld a, [hl]
    dec hl
    and [hl]
    inc hl
    ld [hl], a
    jp Jump_01d_5c5f


Jump_01d_5e56:
    add sp, $10
    pop bc
    ret


Call_01d_5e5a:
    push bc
    add sp, -$05
    ld hl, $c9eb
    ld c, [hl]
    srl c
    srl c
    srl c
    ld a, $20
    sub c
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00

Jump_01d_5e6f:
    ld hl, sp+$04
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5ef2

    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $06
    jr jr_01d_5e89

jr_01d_5e84:
    or a
    rl c
    rl b

jr_01d_5e89:
    dec a
    jr nz, jr_01d_5e84

    ld hl, $0010
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    inc hl
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $0020
    push hl
    push bc
    call Call_000_3777
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$02
    ld [hl], c
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld de, $cb3f
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01d_58e1
    ld c, e
    add sp, $01
    ld a, $33
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, sp+$04
    inc [hl]
    jp Jump_01d_5e6f


Jump_01d_5ef2:
    ld hl, $0020
    push hl
    ld hl, $cb3f
    push hl
    ld hl, $ca33
    push hl
    call Call_000_3846
    add sp, $06
    add sp, $05
    pop bc
    ret


Call_01d_5f07:
    xor a
    ld hl, $c9eb
    or [hl]
    jp z, Jump_01d_5f2f

    ld hl, $c9ea
    ld a, [hl]
    cp $02
    jp z, Jump_01d_5f20

    cp $03
    jp z, Jump_01d_5f26

    jp Jump_01d_5f2c


Jump_01d_5f20:
    call Call_01d_5bc4
    jp Jump_01d_5f2f


Jump_01d_5f26:
    call Call_01d_5e5a
    jp Jump_01d_5f2f


Jump_01d_5f2c:
    call Call_01d_58ed

Jump_01d_5f2f:
    ret


Call_01d_5f30:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00

Jump_01d_5f37:
    ld hl, sp+$00
    ld a, [hl]
    cp $20
    jp nc, Jump_01d_5f93

    ld de, $ca33
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld hl, $cb5f
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    add $01
    ld b, a
    ld a, $33
    add b
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $cb5f
    add [hl]
    ld b, a
    ld a, $ff
    xor b
    ld [hl], a
    ld hl, $c9f1
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_5f7c

    inc hl
    inc [hl]

jr_01d_5f7c:
    ld hl, $cb5f
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$00
    inc [hl]
    inc [hl]
    jp Jump_01d_5f37


Jump_01d_5f93:
    add sp, $01
    pop bc
    ret


Call_01d_5f97:
    push bc
    add sp, -$05
    ld c, $00
    ld hl, $c442
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    jr jr_01d_5fb1

jr_01d_5fa9:
    or a
    ld hl, sp+$03
    rl [hl]
    inc hl
    rl [hl]

jr_01d_5fb1:
    dec a
    jr nz, jr_01d_5fa9

    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $af00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d

Jump_01d_5fc3:
    ld a, c
    cp $20
    jp z, Jump_01d_6038

    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, $ff
    xor b
    ld hl, sp+$02
    ld [hl], a
    and $f0
    add $88
    ld b, a
    dec hl
    dec hl
    ld [hl], b
    rla
    sbc a
    inc hl
    ld [hl], a
    ld b, c
    inc c
    ld a, b
    add a
    ld b, a
    ld a, $f3
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    inc hl
    ld b, [hl]
    ld a, b
    and $0f
    rl a
    rl a
    rl a
    rl a
    and $f0
    add $88
    ld b, a
    dec hl
    dec hl
    ld [hl], b
    rla
    sbc a
    inc hl
    ld [hl], a
    ld b, c
    inc c
    ld a, b
    add a
    ld b, a
    ld a, $f3
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    dec hl
    ld a, [hl]
    ld [de], a
    inc de
    inc hl
    ld a, [hl]
    ld [de], a
    inc hl
    inc hl
    inc [hl]
    jr nz, jr_01d_6035

    inc hl
    inc [hl]

jr_01d_6035:
    jp Jump_01d_5fc3


Jump_01d_6038:
    add sp, $05
    pop bc
    ret


    push bc
    ld hl, $c9ef
    ld a, [hl]
    cp $10
    jp c, Jump_01d_6049

    call Call_000_144b

Jump_01d_6049:
    ld hl, $c9ef
    ld c, [hl]
    ld a, $83
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9ee
    ld [hl], a
    ld hl, $c9ef
    ld c, [hl]
    ld a, $73
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9e7
    ld [hl], a
    ld hl, $c9ef
    ld c, [hl]
    ld a, $53
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9e9
    ld [hl], a
    ld hl, $c9ef
    ld c, [hl]
    ld a, $63
    add c
    ld e, a
    ld a, $ca
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9eb
    ld [hl], a
    ld hl, $c9ec
    ld a, [hl]
    cp $03
    jp nz, Jump_01d_60a0

    call Call_01d_5f97
    jp Jump_01d_60a3


Jump_01d_60a0:
    call Call_01d_569c

Jump_01d_60a3:
    call Call_01d_532a
    call Call_01d_5f07
    call Call_01d_5f30
    pop bc
    ret


Call_01d_60ae:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    bit 3, a
    jp z, Jump_01d_60c9

    ld hl, sp+$00
    ld [hl], $c4
    inc hl
    ld [hl], $bf
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    jp Jump_01d_60d6


Jump_01d_60c9:
    ld hl, sp+$00
    ld [hl], $c5
    inc hl
    ld [hl], $bf
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_01d_60d6:
    ld hl, sp+$00
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$08
    ld a, [hl]
    cp $10
    jp c, Jump_01d_60e6

    call Call_000_144b

Jump_01d_60e6:
    ld e, c
    ld d, b
    add sp, $04
    pop bc
    ret


    ld [bc], a
    inc bc
    inc b
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    ld [$0709], sp
    ld [$0908], sp
    ld [$0808], sp
    dec bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    inc b
    dec b
    inc b
    ld b, $02
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a

Call_01d_611c:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_01d_60ae
    ld b, d
    ld c, e
    add sp, $01
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$04
    ld b, [hl]
    ld a, b
    and $07
    inc a
    ld b, $01
    jr jr_01d_6142

jr_01d_613f:
    or a
    rl b

jr_01d_6142:
    dec a
    jr nz, jr_01d_613f

    ld a, c
    and b
    ld c, a
    ld e, c
    pop bc
    ret


Call_01d_614b:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_01d_60ae
    ld hl, sp+$03
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    ld hl, sp+$07
    ld a, [hl]
    and $07
    ld [hl], a
    inc a
    ld c, $01
    jr jr_01d_617b

jr_01d_6178:
    or a
    rl c

jr_01d_617b:
    dec a
    jr nz, jr_01d_6178

    ld a, c
    cpl
    ld c, a
    ld hl, sp+$00
    ld a, [hl]
    and c
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
    add sp, $03
    pop bc
    ret


Call_01d_619a:
    push bc
    add sp, -$07
    xor a
    ld hl, sp+$0c
    ld a, [hl]
    dec hl
    sbc [hl]
    jp c, Jump_01d_621f

    inc hl
    ld a, [hl]
    dec hl
    sub [hl]
    ld c, a
    inc hl
    ld [hl], c
    cp $ff
    jp nc, Jump_01d_61b5

    add $01
    ld [hl], a

Jump_01d_61b5:
    ld hl, sp+$06
    ld [hl], $00

Jump_01d_61b9:
    ld hl, sp+$06
    ld a, [hl]
    cp $10
    jp nc, Jump_01d_62ab

    ld hl, sp+$0d
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], e
    inc hl
    ld a, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0c
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_01d_61f4

jr_01d_61ec:
    or a
    ld hl, sp+$03
    rr [hl]
    dec hl
    rr [hl]

jr_01d_61f4:
    dec a
    jr nz, jr_01d_61ec

    ld hl, sp+$0b
    ld c, [hl]
    ld b, $00
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0d
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    inc [hl]
    jp Jump_01d_61b9


Jump_01d_621f:
    ld hl, sp+$0b
    ld a, [hl+]
    sub [hl]
    ld c, a
    dec hl
    ld [hl], c
    cp $ff
    jp nc, Jump_01d_622e

    add $01
    ld [hl], a

Jump_01d_622e:
    ld hl, sp+$06
    ld [hl], $0f

Jump_01d_6232:
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp z, Jump_01d_62ab

    ld hl, sp+$0d
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$06
    ld a, [hl]
    dec hl
    dec hl
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0b
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$06
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
    ld a, $05
    jr jr_01d_6273

jr_01d_626b:
    or a
    ld hl, sp+$01
    rr [hl]
    dec hl
    rr [hl]

jr_01d_6273:
    dec a
    jr nz, jr_01d_626b

    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
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
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0d
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    dec [hl]
    jp Jump_01d_6232


Jump_01d_62ab:
    add sp, $07
    pop bc
    ret


Call_01d_62af:
    xor a
    ld a, $03
    ld hl, sp+$02
    sbc [hl]
    jp c, Jump_01d_62fb

    ld e, [hl]
    ld d, $00
    ld hl, $62c2
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_62ce


    jp Jump_01d_62da


    jp Jump_01d_62e6


    jp Jump_01d_62f2


Jump_01d_62ce:
    ld hl, $62fc
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_62fb


Jump_01d_62da:
    ld hl, $6303
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_62fb


Jump_01d_62e6:
    ld hl, $630a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_62fb


Jump_01d_62f2:
    ld hl, $6311
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01d_62fb:
    ret


    jr nz, @+$52

    ld c, c
    ld c, [hl]
    ld b, e
    ld c, b
    nop
    jr nz, jr_01d_6325

    ld d, a
    ld b, c
    ld d, d
    ld d, b
    nop
    ld d, d
    ld b, l
    ld d, e
    ld e, c
    ld c, [hl]
    ld b, e
    nop
    ld d, d
    ld b, l
    ld d, e
    ld e, c
    ld c, [hl]
    ld [hl-], a
    nop

Call_01d_6318:
    push bc
    add sp, -$02
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_632a

jr_01d_6325:
    or a
    rl c
    rl b

jr_01d_632a:
    dec a
    jr nz, jr_01d_6325

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
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
    add sp, $02
    pop bc
    ret


Call_01d_635b:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    cp $03
    jp nz, Jump_01d_6370

    ld a, $01
    jr jr_01d_6371

Jump_01d_6370:
    xor a

jr_01d_6371:
    ld c, a
    ld e, c
    pop bc
    ret


Call_01d_6375:
    push bc
    ld hl, $c574
    ld [hl], $68
    inc hl
    ld [hl], $98
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_6393

    ld hl, $63f7
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_63f5


Jump_01d_6393:
    ld a, $01
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    xor a
    ld a, $04
    sbc c
    jp c, Jump_01d_63f5

    ld d, $00
    ld hl, $63ad
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_63bc


    jp Jump_01d_63c8


    jp Jump_01d_63d4


    jp Jump_01d_63e0


    jp Jump_01d_63ec


Jump_01d_63bc:
    ld hl, $63fd
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_63f5


Jump_01d_63c8:
    ld hl, $6403
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_63f5


Jump_01d_63d4:
    ld hl, $6409
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_63f5


Jump_01d_63e0:
    ld hl, $640f
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_63f5


Jump_01d_63ec:
    ld hl, $6415
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01d_63f5:
    pop bc
    ret


    dec l
    dec l
    dec l
    dec l
    dec l
    nop
    jr nz, @+$4e

    ld c, a
    ld d, a
    ld d, b
    nop
    ld c, b
    ld c, c
    ld b, a
    ld c, b
    ld d, b
    nop
    ld b, d
    ld b, c
    ld c, [hl]
    ld b, h
    ld d, b
    nop
    jr nz, @+$43

    ld c, h
    ld c, h
    ld d, b
    nop
    ld c, [hl]
    ld c, a
    ld d, h
    ld b, e
    ld c, b
    nop

Call_01d_641b:
    push bc
    ld hl, $c574
    ld [hl], $49
    inc hl
    ld [hl], $98
    ld a, $00
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    xor a
    ld a, $03
    sbc c
    jp c, Jump_01d_6485

    ld d, $00
    ld hl, $643e
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_644a


    jp Jump_01d_6456


    jp Jump_01d_6462


    jp Jump_01d_646e


Jump_01d_644a:
    ld hl, $6490
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_648e


Jump_01d_6456:
    ld hl, $6495
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_648e


Jump_01d_6462:
    ld hl, $649a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_648e


Jump_01d_646e:
    ld hl, $649f
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_648e


Jump_01d_6485:
    ld hl, $64a3
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01d_648e:
    pop bc
    ret


    ld l, c
    ld l, c
    ld l, c
    ld l, c
    nop
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    nop
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    nop
    ld d, a
    ld l, $46
    nop
    ccf
    ccf
    nop

Call_01d_64a6:
    push bc
    add sp, -$01
    ld hl, $c443
    ld c, [hl]
    ld a, $fc
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a

Jump_01d_64ba:
    ld hl, $c443
    ld b, [hl]
    ld a, $fc
    add b
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    ld a, $0c
    add c
    ld e, a
    ld a, $61
    adc $00
    ld d, a
    ld a, [de]
    add b
    ld b, a
    xor a
    ld hl, sp+$00
    ld a, [hl]
    sbc b
    jp nc, Jump_01d_6506

    ld hl, $c443
    ld c, [hl]
    ld a, $ec
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, $01
    push af
    inc sp
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$00
    inc [hl]
    jp Jump_01d_64ba


Jump_01d_6506:
    add sp, $01
    pop bc
    ret


Call_01d_650a:
    push bc
    add sp, -$01
    ld hl, $c443
    ld c, [hl]
    ld a, $fc
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a

Jump_01d_651e:
    ld hl, $c443
    ld b, [hl]
    ld a, $fc
    add b
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    ld a, $0c
    add c
    ld e, a
    ld a, $61
    adc $00
    ld d, a
    ld a, [de]
    add b
    ld b, a
    xor a
    ld hl, sp+$00
    ld a, [hl]
    sbc b
    jp nc, Jump_01d_657a

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_654f

    ld c, $03
    jp Jump_01d_6551


Jump_01d_654f:
    ld c, $02

Jump_01d_6551:
    ld hl, $c443
    ld b, [hl]
    ld a, $ec
    add b
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$00
    inc [hl]
    jp Jump_01d_651e


Jump_01d_657a:
    add sp, $01
    pop bc
    ret


Call_01d_657e:
    ld hl, sp+$02
    ld a, [hl]
    or a
    jp z, Jump_01d_6598

    ld hl, sp+$02
    ld a, [hl]
    cp $01
    jp z, Jump_01d_65a4

    ld hl, sp+$02
    ld a, [hl]
    cp $02
    jp z, Jump_01d_65b0

    jp Jump_01d_65b9


Jump_01d_6598:
    ld hl, $65ba
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_65b9


Jump_01d_65a4:
    ld hl, $65bf
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_65b9


Jump_01d_65b0:
    ld hl, $65c4
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01d_65b9:
    ret


    ld b, e
    ld c, h
    ld c, c
    ld d, b
    nop
    ld b, [hl]
    ld c, a
    ld c, h
    ld b, h
    nop
    ld d, a
    ld d, d
    ld b, c
    ld d, b
    nop

Call_01d_65c9:
    push bc
    add sp, -$05
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_65db

jr_01d_65d6:
    or a
    rl c
    rl b

jr_01d_65db:
    dec a
    jr nz, jr_01d_65d6

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $e8
    inc hl
    ld [hl], $98
    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $c574
    ld [hl], $eb
    inc hl
    ld [hl], $98
    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_01d_641b
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01d_662c

    inc hl
    inc [hl]

jr_01d_662c:
    call Call_01d_6375
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01d_6636

    inc hl
    inc [hl]

jr_01d_6636:
    ld hl, sp+$03
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    inc hl
    inc hl
    inc [hl]
    jr nz, jr_01d_6645

    inc hl
    inc [hl]

jr_01d_6645:
    ld hl, sp+$00
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
    ld hl, $c574
    ld [hl], $69
    inc hl
    ld [hl], $99
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_6674

    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6687


Jump_01d_6674:
    ld hl, sp+$02
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

Jump_01d_6687:
    ld hl, $c574
    ld [hl], $6c
    inc hl
    ld [hl], $99
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_66a4

    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_66b1


Jump_01d_66a4:
    ld hl, sp+$02
    ld a, [hl]
    and $0f
    ld c, a
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_01d_66b1:
    ld hl, $c574
    ld [hl], $89
    inc hl
    ld [hl], $98
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_66c4

    inc hl
    inc [hl]

jr_01d_66c4:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_01d_657e
    add sp, $01
    ld hl, $c574
    ld [hl], $a7
    inc hl
    ld [hl], $98
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_66ea

    inc hl
    inc [hl]

jr_01d_66ea:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_01d_62af
    add sp, $01
    ld hl, $c574
    ld [hl], $28
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6710

    inc hl
    inc [hl]

jr_01d_6710:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $48
    inc hl
    ld [hl], $99
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_6740

    ld hl, $68ac
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_6758


Jump_01d_6740:
    ld hl, sp+$03
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
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_01d_6758:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01d_675f

    inc hl
    inc [hl]

jr_01d_675f:
    ld hl, $c574
    ld [hl], $c8
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6772

    inc hl
    inc [hl]

jr_01d_6772:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $88
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6798

    inc hl
    inc [hl]

jr_01d_6798:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $2b
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_67be

    inc hl
    inc [hl]

jr_01d_67be:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $4b
    inc hl
    ld [hl], $99
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_67ee

    ld hl, $68af
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01d_6806


Jump_01d_67ee:
    ld hl, sp+$03
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
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_01d_6806:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01d_680d

    inc hl
    inc [hl]

jr_01d_680d:
    ld hl, $c574
    ld [hl], $cb
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6820

    inc hl
    inc [hl]

jr_01d_6820:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $8b
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6846

    inc hl
    inc [hl]

jr_01d_6846:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $a8
    inc hl
    ld [hl], $99
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_686c

    inc hl
    inc [hl]

jr_01d_686c:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    add $0f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $ab
    inc hl
    ld [hl], $99
    ld hl, sp+$03
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
    add $0f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    call Call_01d_650a
    add sp, $05
    pop bc
    ret


    dec l
    dec l
    nop
    dec l
    dec l
    nop

Call_01d_68b2:
    push bc
    ld hl, $c42b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, $c442
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, $c42b
    ld a, [hl]
    add c
    ld [hl], a
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_000_2c57
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01d_65c9
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_01d_6900:
    push bc
    add sp, -$06
    ld hl, $c442
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $05
    jr jr_01d_6920

jr_01d_6918:
    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]

jr_01d_6920:
    dec a
    jr nz, jr_01d_6918

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $beb2
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
    dec hl
    inc [hl]
    jr nz, jr_01d_693c

    inc hl
    inc [hl]

jr_01d_693c:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9ec
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6955

    inc hl
    inc [hl]

jr_01d_6955:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9e8
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_696e

    inc hl
    inc [hl]

jr_01d_696e:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    and $0f
    ld b, a
    srl c
    srl c
    srl c
    srl c
    ld hl, $ca93
    push hl
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_699e

    inc hl
    inc [hl]

jr_01d_699e:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9ed
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_69b7

    inc hl
    inc [hl]

jr_01d_69b7:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9ea
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_69d0

    inc hl
    inc [hl]

jr_01d_69d0:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9ee
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_69e9

    inc hl
    inc [hl]

jr_01d_69e9:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9e7
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6a02

    inc hl
    inc [hl]

jr_01d_6a02:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld hl, $c9eb
    ld [hl], a
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6a25

    inc hl
    inc [hl]

jr_01d_6a25:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld hl, $c9e9
    ld [hl], e
    add sp, $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6a3e

    inc hl
    inc [hl]

jr_01d_6a3e:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, $ca83
    push hl
    ld a, c
    push af
    inc sp
    ld hl, $c9ee
    ld a, [hl]
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6a66

    inc hl
    inc [hl]

jr_01d_6a66:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, $ca73
    push hl
    ld a, c
    push af
    inc sp
    ld hl, $c9e7
    ld a, [hl]
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6a8e

    inc hl
    inc [hl]

jr_01d_6a8e:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    rl a
    rl a
    rl a
    and $f8
    ld c, a
    ld hl, $ca63
    push hl
    push af
    inc sp
    ld hl, $c9eb
    ld a, [hl]
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6abf

    inc hl
    inc [hl]

jr_01d_6abf:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, $ca53
    push hl
    ld a, c
    push af
    inc sp
    ld hl, $c9e9
    ld a, [hl]
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01d_6ae7

    inc hl
    inc [hl]

jr_01d_6ae7:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, b
    add $0f
    ld b, a
    ld a, c
    add $0f
    ld c, a
    ld hl, $caa3
    push hl
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01d_619a
    add sp, $04
    ld hl, sp+$00
    ld b, [hl]
    ld c, $00
    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, $c9f1
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $c9ef
    ld [hl], $00
    ld hl, $c9f0
    ld [hl], $01
    add sp, $06
    pop bc
    ret


Call_01d_6b3a:
    push bc
    add sp, -$0e
    ld hl, sp+$0d
    ld [hl], $03

Jump_01d_6b41:
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $fff1
    add hl, de
    jp c, Jump_01d_6cfc

    ld hl, sp+$0c
    ld [hl], $04
    inc hl
    ld a, [hl]
    cp $03
    jp nz, Jump_01d_6b63

    ld a, $01
    jr jr_01d_6b64

Jump_01d_6b63:
    xor a

jr_01d_6b64:
    ld hl, sp+$09
    ld [hl+], a
    ld a, [hl]
    cp $0e
    jp nz, Jump_01d_6b77

    ld a, $00
    or a
    jp nz, Jump_01d_6b77

    ld a, $01
    jr jr_01d_6b78

Jump_01d_6b77:
    xor a

jr_01d_6b78:
    ld hl, sp+$0a
    ld [hl], a
    ld a, $5e
    add $e0
    ld hl, $c565
    ld [hl], a
    ld a, $08
    adc $ff
    inc hl
    ld [hl], a

Jump_01d_6b89:
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $fff5
    add hl, de
    ld a, $00
    rla
    xor $01
    ld hl, sp+$08
    ld [hl], a
    or a
    jp z, Jump_01d_6cf6

    ld hl, $c565
    ld [hl], $b7
    inc hl
    ld [hl], $08
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_6bba

    ld c, $48
    jp Jump_01d_6bbc


Jump_01d_6bba:
    ld c, $d2

Jump_01d_6bbc:
    ld a, c
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
    jp z, Jump_01d_6c3c

    ld hl, sp+$0c
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_6bf6

    ld a, $01
    jr jr_01d_6bf7

Jump_01d_6bf6:
    xor a

jr_01d_6bf7:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_01d_6c0a

    ld a, $00
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c0a:
    ld hl, sp+$06
    ld a, [hl]
    cp $0a
    jp nz, Jump_01d_6c1c

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01d_6c1c

    ld a, $01
    jr jr_01d_6c1d

Jump_01d_6c1c:
    xor a

jr_01d_6c1d:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01d_6c30

    ld a, $03
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c30:
    ld a, $07
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c3c:
    xor a
    ld hl, sp+$0a
    or [hl]
    jp z, Jump_01d_6c95

    inc hl
    inc hl
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_6c4f

    ld a, $01
    jr jr_01d_6c50

Jump_01d_6c4f:
    xor a

jr_01d_6c50:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp z, Jump_01d_6c63

    ld a, $01
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c63:
    ld hl, sp+$06
    ld a, [hl]
    cp $0a
    jp nz, Jump_01d_6c75

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01d_6c75

    ld a, $01
    jr jr_01d_6c76

Jump_01d_6c75:
    xor a

jr_01d_6c76:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01d_6c89

    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c89:
    ld a, $05
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6c95:
    ld hl, sp+$0c
    ld a, [hl]
    cp $04
    jp nz, Jump_01d_6ca1

    ld a, $01
    jr jr_01d_6ca2

Jump_01d_6ca1:
    xor a

jr_01d_6ca2:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_01d_6cb5

    ld a, $04
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6cb5:
    ld hl, sp+$06
    ld a, [hl]
    cp $0a
    jp nz, Jump_01d_6cc7

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_01d_6cc7

    ld a, $01
    jr jr_01d_6cc8

Jump_01d_6cc7:
    xor a

jr_01d_6cc8:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01d_6cdb

    ld a, $06
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01d_6cec


Jump_01d_6cdb:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01d_6cec:
    ld hl, sp+$0c
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01d_6b89


Jump_01d_6cf6:
    ld hl, sp+$0d
    inc [hl]
    jp Jump_01d_6b41


Jump_01d_6cfc:
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


Call_01d_6d16:
    push bc
    add sp, -$02
    xor a
    ld hl, $cb61
    or [hl]
    jp z, Jump_01d_6d2f

    ld c, $0b
    ld hl, sp+$01
    ld [hl], $04
    dec hl
    ld [hl], $02
    ld b, $03
    jp Jump_01d_6d3a


Jump_01d_6d2f:
    ld c, $04
    ld hl, sp+$01
    ld [hl], $0b
    dec hl
    ld [hl], $03
    ld b, $02

Jump_01d_6d3a:
    ld a, $00
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01d_6d5c

    ld b, $03
    jp Jump_01d_6d5e


Jump_01d_6d5c:
    ld b, $02

Jump_01d_6d5e:
    ld a, b
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_01d_6d76:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_01d_6b3a
    ld hl, $cb60
    ld [hl], $01
    ld hl, $cb61
    ld [hl], $01
    ld hl, $c574
    ld [hl], $a4
    inc hl
    ld [hl], $98
    ld hl, $6de4
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $c4
    inc hl
    ld [hl], $98
    ld hl, $6dee
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $e4
    inc hl
    ld [hl], $98
    ld hl, $6df9
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $24
    inc hl
    ld [hl], $99
    ld hl, $6e00
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $2b
    inc hl
    ld [hl], $99
    ld hl, $6e04
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_01d_6d16
    ret


    ld c, a
    ld d, [hl]
    ld b, l
    ld d, d
    ld d, a
    ld d, d
    ld c, c
    ld d, h
    ld b, l
    nop
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, h
    dec l
    ld b, h
    ld d, d
    ld b, c
    ld d, a
    ld c, [hl]
    nop
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    ld d, e
    ccf
    nop
    ld e, c
    ld b, l
    ld d, e
    nop
    ld c, [hl]
    ld c, a
    nop

Call_01d_6e07:
    push bc
    ld c, $90
    ld b, $24
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_01d_6e18:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_6e74

    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_01d_6e4e

    cp $02
    jp z, Jump_01d_6e43

    cp $10
    jp z, Jump_01d_6e59

    cp $20
    jp nz, Jump_01d_6e74

    ld hl, $cb60
    ld [hl], $00
    call Call_01d_6e07
    jp Jump_01d_6e74


Jump_01d_6e43:
    ld hl, $cb61
    ld [hl], $00
    call Call_01d_6d16
    jp Jump_01d_6e74


Jump_01d_6e4e:
    ld hl, $cb61
    ld [hl], $01
    call Call_01d_6d16
    jp Jump_01d_6e74


Jump_01d_6e59:
    xor a
    ld hl, $cb61
    or [hl]
    jp nz, Jump_01d_6e6c

    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_01d_614b
    add sp, $01

Jump_01d_6e6c:
    ld hl, $cb60
    ld [hl], $00
    call Call_01d_6e07

Jump_01d_6e74:
    ret


Call_01d_6e75:
    push bc
    add sp, -$02
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_6e87

jr_01d_6e82:
    or a
    rl c
    rl b

jr_01d_6e87:
    dec a
    jr nz, jr_01d_6e82

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
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
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_01d_6ebd:
    push bc
    add sp, -$04
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_6ecf

jr_01d_6eca:
    or a
    rl c
    rl b

jr_01d_6ecf:
    dec a
    jr nz, jr_01d_6eca

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    ld hl, sp+$0a
    ld c, [hl]
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
    ld hl, sp+$09
    ld c, [hl]
    xor a
    ld a, c
    ld hl, sp+$00
    sbc [hl]
    ld a, b
    inc hl
    sbc [hl]
    jp nc, Jump_01d_6f25

    dec hl
    ld [hl], c
    inc hl
    ld [hl], b

Jump_01d_6f25:
    ld hl, sp+$00
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $04
    pop bc
    ret


Call_01d_6f46:
    push bc
    add sp, -$04
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_6f58

jr_01d_6f53:
    or a
    rl c
    rl b

jr_01d_6f58:
    dec a
    jr nz, jr_01d_6f53

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    ld hl, sp+$09
    ld c, [hl]
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
    ld a, [hl]
    bit 7, a
    jp z, Jump_01d_6faa

    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_01d_6faa:
    ld hl, sp+$00
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $04
    pop bc
    ret


Call_01d_6fcb:
    push bc
    add sp, -$02
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_6fdd

jr_01d_6fd8:
    or a
    rl c
    rl b

jr_01d_6fdd:
    dec a
    jr nz, jr_01d_6fd8

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
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
    ld hl, sp+$07
    ld a, [hl]
    cp c
    jr nz, jr_01d_7013

    jp Jump_01d_702e


jr_01d_7013:
    inc c
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01d_702e:
    add sp, $02
    pop bc
    ret


Call_01d_7032:
    push bc
    add sp, -$02
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_7044

jr_01d_703f:
    or a
    rl c
    rl b

jr_01d_7044:
    dec a
    jr nz, jr_01d_703f

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
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
    xor a
    or c
    jp z, Jump_01d_7091

    dec c
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01d_7091:
    add sp, $02
    pop bc
    ret


Call_01d_7095:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    ld b, a
    cp $f0
    jp z, Jump_01d_70b8

    ld a, c
    add $10
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02

Jump_01d_70b8:
    srl c
    srl c
    srl c
    srl c
    ld e, c
    pop bc
    ret


Call_01d_70c3:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld b, a
    cp $0f
    jp z, Jump_01d_70e4

    inc c
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02

Jump_01d_70e4:
    ld a, c
    and $0f
    ld c, a
    ld e, c
    pop bc
    ret


Call_01d_70eb:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    jr nz, jr_01d_70fe

    jp Jump_01d_710d


jr_01d_70fe:
    ld a, c
    add $f0
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02

Jump_01d_710d:
    srl c
    srl c
    srl c
    srl c
    ld e, c
    pop bc
    ret


Call_01d_7118:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    jr nz, jr_01d_712b

    jp Jump_01d_7138


jr_01d_712b:
    dec c
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02

Jump_01d_7138:
    ld a, c
    and $0f
    ld c, a
    ld e, c
    pop bc
    ret


    push bc
    add sp, -$05
    ld hl, $c576
    ld a, [hl]
    bit 4, a
    jp z, Jump_01d_7174

    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_01d_611c
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01d_7174

    xor a
    ld hl, $cb60
    or [hl]
    jp nz, Jump_01d_7174

    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_716f

    call Call_01d_6d76

Jump_01d_716f:
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7174:
    xor a
    ld hl, $cb60
    or [hl]
    jp z, Jump_01d_7184

    call Call_01d_6e18
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7184:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_01d_719d

    ld a, $01
    jr jr_01d_719e

Jump_01d_719d:
    xor a

jr_01d_719e:
    ld c, a
    or c
    jp nz, Jump_01d_71a8

    ld hl, $c406
    ld [hl], $00

Jump_01d_71a8:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_01d_7336

    cp $02
    jp z, Jump_01d_72ef

    cp $04
    jp z, Jump_01d_7238

    cp $08
    jp z, Jump_01d_728c

    xor a
    or c
    jp nz, Jump_01d_7214

    ld a, [hl]
    cp $11
    jp z, Jump_01d_737d

    cp $12
    jp z, Jump_01d_75ed

    cp $14
    jp z, Jump_01d_782e

    cp $18
    jp z, Jump_01d_79d1

    cp $21
    jp z, Jump_01d_7b5a

    cp $22
    jp z, Jump_01d_7b74

    cp $24
    jp z, Jump_01d_7b5a

    cp $28
    jp z, Jump_01d_7b74

    cp $41
    jp z, Jump_01d_7c19

    cp $42
    jp z, Jump_01d_7bf7

    cp $48
    jp z, Jump_01d_7bd5

    cp $50
    jp z, Jump_01d_7d0e

    cp $60
    jp z, Jump_01d_7c7f

    cp $80
    jp z, Jump_01d_7bad

    cp $c0
    jp z, Jump_01d_7b8d

    jp Jump_01d_7d8c


Jump_01d_7214:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01d_7233

    ld hl, $c406
    inc [hl]
    ld a, [hl]
    cp $02
    jp nz, Jump_01d_7233

    ld bc, $7181
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01d_7233:
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7238:
    xor a
    ld hl, $c443
    or [hl]
    jp z, Jump_01d_7d8c

    call Call_01d_64a6
    ld hl, $c443
    ld a, [hl]
    cp $02
    jp z, Jump_01d_7273

    cp $07
    jp z, Jump_01d_7266

    cp $0a
    jp z, Jump_01d_725e

    cp $0d
    jp z, Jump_01d_7266

    jp Jump_01d_7280


Jump_01d_725e:
    ld hl, $c443
    ld [hl], $03
    jp Jump_01d_7284


Jump_01d_7266:
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_7273

    ld hl, $c443
    dec [hl]

Jump_01d_7273:
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_7280

    ld hl, $c443
    dec [hl]

Jump_01d_7280:
    ld hl, $c443
    dec [hl]

Jump_01d_7284:
    call Call_01d_650a
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_728c:
    call Call_01d_64a6
    ld hl, $c443
    ld a, [hl]
    or a
    jp z, Jump_01d_72d6

    cp $03
    jp z, Jump_01d_72b3

    cp $04
    jp z, Jump_01d_72c9

    cp $09
    jp z, Jump_01d_72e7

    cp $0a
    jp z, Jump_01d_72c9

    cp $0f
    jp z, Jump_01d_72e7

    jp Jump_01d_72e3


Jump_01d_72b3:
    xor a
    ld hl, $cb62
    or [hl]
    jp z, Jump_01d_72c0

    ld c, $04
    jp Jump_01d_72c2


Jump_01d_72c0:
    ld c, $0a

Jump_01d_72c2:
    ld hl, $c443
    ld [hl], c
    jp Jump_01d_72e7


Jump_01d_72c9:
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_72d6

    ld hl, $c443
    inc [hl]

Jump_01d_72d6:
    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_72e3

    ld hl, $c443
    inc [hl]

Jump_01d_72e3:
    ld hl, $c443
    inc [hl]

Jump_01d_72e7:
    call Call_01d_650a
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_72ef:
    ld hl, $cb62
    ld [hl], $01
    call Call_01d_64a6
    ld hl, $c443
    ld a, [hl]
    cp $0a
    jp c, Jump_01d_732e

    xor a
    ld a, $0f
    sbc [hl]
    jp c, Jump_01d_732e

    ld a, [hl]
    add $f6
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $7315
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_7327


    jp Jump_01d_7327


    jp Jump_01d_7327


    jp Jump_01d_7327


    jp Jump_01d_7327


    jp Jump_01d_7327


Jump_01d_7327:
    ld hl, $c443
    ld a, [hl]
    add $fa
    ld [hl], a

Jump_01d_732e:
    call Call_01d_650a
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7336:
    ld hl, $cb62
    ld [hl], $00
    call Call_01d_64a6
    ld hl, $c443
    ld a, [hl]
    cp $04
    jp c, Jump_01d_7375

    xor a
    ld a, $09
    sbc [hl]
    jp c, Jump_01d_7375

    ld a, [hl]
    add $fc
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $735c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_736e


    jp Jump_01d_736e


    jp Jump_01d_736e


    jp Jump_01d_736e


    jp Jump_01d_736e


    jp Jump_01d_736e


Jump_01d_736e:
    ld hl, $c443
    ld a, [hl]
    add $06
    ld [hl], a

Jump_01d_7375:
    call Call_01d_650a
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_737d:
    ld hl, $c443
    ld c, [hl]
    ld a, $ec
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, [hl]
    ld a, $fc
    add b
    ld e, a
    ld a, $60
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
    xor a
    ld a, $0f
    ld hl, $c443
    sbc [hl]
    jp c, Jump_01d_75e5

    ld e, [hl]
    ld d, $00
    ld hl, $73b7
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_73e7


    jp Jump_01d_744b


    jp Jump_01d_747a


    jp Jump_01d_7516


    jp Jump_01d_7568


    jp Jump_01d_7588


    jp Jump_01d_754a


    jp Jump_01d_75a8


    jp Jump_01d_74ae


    jp Jump_01d_75c8


    jp Jump_01d_7578


    jp Jump_01d_7598


    jp Jump_01d_7559


    jp Jump_01d_75b8


    jp Jump_01d_74e2


    jp Jump_01d_75d8


Jump_01d_73e7:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_75e5

    ld a, $00
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    or a
    jp z, Jump_01d_7406

    cp $01
    jp z, Jump_01d_7416

    jp Jump_01d_7426


Jump_01d_7406:
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7445


Jump_01d_7416:
    ld a, $02
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7445


Jump_01d_7426:
    ld a, $03
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    call Call_01d_68b2
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    call Call_01d_641b

Jump_01d_7445:
    call Call_01d_641b
    jp Jump_01d_75e5


Jump_01d_744b:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_75e5

    ld a, $01
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    cp $03
    jp z, Jump_01d_75e5

    ld hl, sp+$04
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    call Call_01d_6375
    jp Jump_01d_75e5


Jump_01d_747a:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_75e5

    ld a, $03
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    cp $02
    jp nc, Jump_01d_75e5

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_01d_657e
    add sp, $01
    jp Jump_01d_75e5


Jump_01d_74ae:
    ld a, $0d
    push af
    inc sp
    call Call_01d_6318
    ld b, e
    add sp, $01
    ld a, b
    add $0f
    ld hl, sp+$04
    ld [hl], a
    cp $ff
    jp z, Jump_01d_75e5

    ld hl, sp+$04
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld b, a
    push af
    inc sp
    ld a, $0d
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_74e2:
    ld a, $0e
    push af
    inc sp
    call Call_01d_6318
    ld b, e
    add sp, $01
    ld a, b
    add $0f
    ld hl, sp+$04
    ld [hl], a
    cp $ff
    jp z, Jump_01d_75e5

    ld hl, sp+$04
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld b, a
    push af
    inc sp
    ld a, $0e
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_7516:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_75e5

    ld a, $04
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    cp $03
    jp nc, Jump_01d_75e5

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_01d_62af
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_754a:
    call Call_01d_7095
    ld b, e
    ld a, b
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_75e5


Jump_01d_7559:
    call Call_01d_70c3
    ld b, e
    ld a, b
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_75e5


Jump_01d_7568:
    ld a, $ff
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_7578:
    ld a, $ff
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_7588:
    ld a, $ff
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_7598:
    ld a, $ff
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_75a8:
    ld a, $ff
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_75b8:
    ld a, $ff
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_75c8:
    ld a, $1f
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02
    jp Jump_01d_75e5


Jump_01d_75d8:
    ld a, $1f
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01d_6fcb
    add sp, $02

Jump_01d_75e5:
    call Call_01d_6900
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_75ed:
    ld hl, $c443
    ld b, [hl]
    ld a, $ec
    add b
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld c, [hl]
    ld a, $fc
    add c
    ld e, a
    ld a, $60
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
    xor a
    ld a, $0f
    ld hl, $c443
    sbc [hl]
    jp c, Jump_01d_7826

    ld e, [hl]
    ld d, $00
    ld hl, $7627
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_7657


    jp Jump_01d_76b7


    jp Jump_01d_76e3


    jp Jump_01d_7778


    jp Jump_01d_77c9


    jp Jump_01d_77e1


    jp Jump_01d_77ab


    jp Jump_01d_77f9


    jp Jump_01d_7716


    jp Jump_01d_7811


    jp Jump_01d_77d5


    jp Jump_01d_77ed


    jp Jump_01d_77ba


    jp Jump_01d_7805


    jp Jump_01d_7747


    jp Jump_01d_781d


Jump_01d_7657:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_7826

    ld a, $00
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    cp $02
    jp z, Jump_01d_7682

    cp $03
    jp z, Jump_01d_7692

    ld a, $00
    push af
    inc sp
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_76b1


Jump_01d_7682:
    ld a, $01
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_76b1


Jump_01d_7692:
    ld a, $02
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    call Call_01d_68b2
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    call Call_01d_641b

Jump_01d_76b1:
    call Call_01d_641b
    jp Jump_01d_7826


Jump_01d_76b7:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_7826

    ld a, $01
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01d_7826

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    call Call_01d_6375
    jp Jump_01d_7826


Jump_01d_76e3:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_7826

    ld a, $03
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01d_7826

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_01d_657e
    add sp, $01
    jp Jump_01d_7826


Jump_01d_7716:
    ld a, $0d
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01d_7826

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0d
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7826


Jump_01d_7747:
    ld a, $0e
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01d_7826

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0e
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7826


Jump_01d_7778:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_7826

    ld a, $04
    push af
    inc sp
    call Call_01d_6318
    ld hl, sp+$05
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01d_7826

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_01d_62af
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7826


Jump_01d_77ab:
    call Call_01d_70eb
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77ba:
    call Call_01d_7118
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77c9:
    ld a, $05
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77d5:
    ld a, $09
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77e1:
    ld a, $06
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77ed:
    ld a, $0a
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_77f9:
    ld a, $08
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_7805:
    ld a, $0c
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_7811:
    ld a, $07
    push af
    inc sp
    call Call_01d_7032
    add sp, $01
    jp Jump_01d_7826


Jump_01d_781d:
    ld a, $0b
    push af
    inc sp
    call Call_01d_7032
    add sp, $01

Jump_01d_7826:
    call Call_01d_6900
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_782e:
    ld hl, $c443
    ld c, [hl]
    ld a, $ec
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, [hl]
    ld a, $fc
    add b
    ld e, a
    ld a, $60
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
    ld hl, $c443
    ld a, [hl]
    cp $04
    jp c, Jump_01d_79c9

    xor a
    ld a, $0f
    sbc [hl]
    jp c, Jump_01d_79c9

    ld a, [hl]
    add $fc
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $7872
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_78e2


    jp Jump_01d_797c


    jp Jump_01d_7896


    jp Jump_01d_79a4


    jp Jump_01d_790a


    jp Jump_01d_78ba


    jp Jump_01d_78f6


    jp Jump_01d_7990


    jp Jump_01d_78a8


    jp Jump_01d_79b8


    jp Jump_01d_7943


    jp Jump_01d_78ce


Jump_01d_7896:
    call Call_01d_7095
    call Call_01d_7095
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_79c9


Jump_01d_78a8:
    call Call_01d_70c3
    call Call_01d_70c3
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_79c9


Jump_01d_78ba:
    ld a, $08
    push af
    inc sp
    ld a, $1f
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_78ce:
    ld a, $08
    push af
    inc sp
    ld a, $1f
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_78e2:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_78f6:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_790a:
    ld a, $0d
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    add $10
    ld [hl], a
    and $f0
    jp nz, Jump_01d_7925

    ld hl, sp+$04
    ld [hl], $ff

Jump_01d_7925:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0d
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_79c9


Jump_01d_7943:
    ld a, $0e
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    add $10
    ld [hl], a
    and $f0
    jp nz, Jump_01d_795e

    ld hl, sp+$04
    ld [hl], $ff

Jump_01d_795e:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0e
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_79c9


Jump_01d_797c:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_7990:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_79a4:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03
    jp Jump_01d_79c9


Jump_01d_79b8:
    ld a, $10
    push af
    inc sp
    ld a, $ff
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_01d_6ebd
    add sp, $03

Jump_01d_79c9:
    call Call_01d_6900
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_79d1:
    ld hl, $c443
    ld c, [hl]
    ld a, $ec
    add c
    ld e, a
    ld a, $60
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, [hl]
    ld a, $fc
    add b
    ld e, a
    ld a, $60
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
    ld hl, $c443
    ld a, [hl]
    cp $04
    jp c, Jump_01d_7b52

    xor a
    ld a, $0f
    sbc [hl]
    jp c, Jump_01d_7b52

    ld a, [hl]
    add $fc
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $7a15
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01d_7a7d


    jp Jump_01d_7b15


    jp Jump_01d_7a39


    jp Jump_01d_7b35


    jp Jump_01d_7a9d


    jp Jump_01d_7a5d


    jp Jump_01d_7a8d


    jp Jump_01d_7b25


    jp Jump_01d_7a4b


    jp Jump_01d_7b45


    jp Jump_01d_7ad9


    jp Jump_01d_7a6d


Jump_01d_7a39:
    call Call_01d_70eb
    call Call_01d_70eb
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_7b52


Jump_01d_7a4b:
    call Call_01d_7118
    call Call_01d_7118
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_01d_7b52


Jump_01d_7a5d:
    ld a, $08
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7a6d:
    ld a, $08
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7a7d:
    ld a, $10
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7a8d:
    ld a, $10
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7a9d:
    ld a, $0d
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    add $f0
    ld [hl], a
    and $f0
    ld c, a
    cp $f0
    jp nz, Jump_01d_7abb

    ld hl, sp+$04
    ld [hl], $00

Jump_01d_7abb:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0d
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7ad9:
    ld a, $0e
    push af
    inc sp
    call Call_01d_6318
    ld c, e
    add sp, $01
    ld a, c
    add $0f
    ld hl, sp+$04
    add $f0
    ld [hl], a
    and $f0
    ld c, a
    cp $f0
    jp nz, Jump_01d_7af7

    ld hl, sp+$04
    ld [hl], $00

Jump_01d_7af7:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $f1
    ld c, a
    push af
    inc sp
    ld a, $0e
    push af
    inc sp
    call Call_01d_6e75
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7b15:
    ld a, $10
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7b25:
    ld a, $10
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7b35:
    ld a, $10
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02
    jp Jump_01d_7b52


Jump_01d_7b45:
    ld a, $10
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_01d_6f46
    add sp, $02

Jump_01d_7b52:
    call Call_01d_6900
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7b5a:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c442
    ld a, [hl]
    cp $0f
    jp z, Jump_01d_7b6f

    inc [hl]
    call Call_01d_68b2

Jump_01d_7b6f:
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7b74:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c442
    or [hl]
    jp z, Jump_01d_7b88

    dec [hl]
    call Call_01d_68b2

Jump_01d_7b88:
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7b8d:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01d_7b9a

    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7b9a:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7bad:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01d_7bbd

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_01d_7bc2

Jump_01d_7bbd:
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7bc2:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7bd5:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01d_7be2

    ld e, $00
    jp Jump_01d_7d8e


Jump_01d_7be2:
    ld bc, $4287
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01d_6e07
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7bf7:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01d_7c04

    ld e, $00
    jp Jump_01d_7d8e


Jump_01d_7c04:
    ld bc, $4233
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01d_6e07
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7c19:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01d_7c26

    ld e, $00
    jp Jump_01d_7d8e


Jump_01d_7c26:
    ld hl, $c443
    ld a, [hl]
    or a
    jp nz, Jump_01d_7c44

    call Call_01d_635b
    ld c, e
    xor a
    or c
    jp z, Jump_01d_7c44

    ld hl, $c442
    ld a, [hl]
    add $f0
    ld hl, $c42b
    ld [hl], a
    jp Jump_01d_7c60


Jump_01d_7c44:
    ld hl, $c42b
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, $c442
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, $c42b
    ld a, [hl]
    add c
    ld [hl], a

Jump_01d_7c60:
    ld bc, $4253
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $2490
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7c7f:
    ld hl, $7d92
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c414
    ld [hl], $02
    ld hl, $c412
    ld [hl], $0a
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_7ca1

jr_01d_7c9c:
    or a
    rl c
    rl b

jr_01d_7ca1:
    dec a
    jr nz, jr_01d_7c9c

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    inc hl
    ld [hl], $00

Jump_01d_7cb1:
    ld hl, sp+$04
    ld a, [hl]
    cp $10
    jp nc, Jump_01d_7ce7

    dec hl
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
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01d_7ce1

    inc hl
    inc [hl]

jr_01d_7ce1:
    ld hl, sp+$04
    inc [hl]
    jp Jump_01d_7cb1


Jump_01d_7ce7:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $01
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c411
    ld [hl], $10
    ld c, $7c
    ld b, $71
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7d0e:
    ld hl, $c414
    ld a, [hl]
    cp $01
    jp z, Jump_01d_7d20

    ld hl, $c412
    ld a, [hl]
    cp $0a
    jp z, Jump_01d_7d25

Jump_01d_7d20:
    ld e, $00
    jp Jump_01d_7d8e


Jump_01d_7d25:
    ld hl, $7d9f
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c442
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01d_7d3d

jr_01d_7d38:
    or a
    rl c
    rl b

jr_01d_7d3d:
    dec a
    jr nz, jr_01d_7d38

    ld hl, $beb2
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    ld [hl], $00

Jump_01d_7d4e:
    ld hl, sp+$04
    ld a, [hl]
    cp $10
    jp nc, Jump_01d_7d81

    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld c, e
    add sp, $02
    ld a, c
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$00
    inc [hl]
    jr nz, jr_01d_7d7b

    inc hl
    inc [hl]

jr_01d_7d7b:
    ld hl, sp+$04
    inc [hl]
    jp Jump_01d_7d4e


Jump_01d_7d81:
    call Call_01d_6900
    call Call_01d_65c9
    ld e, $01
    jp Jump_01d_7d8e


Jump_01d_7d8c:
    ld e, $00

Jump_01d_7d8e:
    add sp, $05
    pop bc
    ret


    ld b, e
    ld c, a
    ld d, b
    ld c, c
    ld b, l
    ld b, h
    jr nz, jr_01d_7ded

    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    nop
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld b, h
    jr nz, jr_01d_7dfa

    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    nop
    push bc
    push hl
    ld hl, $cab5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld c, a
    ld a, h
    ld b, a
    ld a, e
    dec a

jr_01d_7dba:
    jr z, jr_01d_7dc0

    add hl, bc
    dec a
    jr jr_01d_7dba

jr_01d_7dc0:
    ld l, a
    swap a
    and $0f
    ld l, a
    ld a, h
    swap a
    and $f0
    or l
    ld l, a
    ld a, h
    swap a
    and $0f
    ld h, a
    ld a, h
    ld b, a
    ld a, l
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add l
    pop hl
    pop bc
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

jr_01d_7ded:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_7dfa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
