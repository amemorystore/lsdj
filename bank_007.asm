; disasSembly of "lsdj.gb"
SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Call_007_4000:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4a70
    add hl, de
    jp nc, Jump_007_400f

    call Call_000_144b

Jump_007_400f:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4d70
    add hl, de
    jp c, Jump_007_401e

    call Call_000_144b

Jump_007_401e:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4d70
    add hl, de
    jp c, Jump_007_402d

    call Call_000_144b

Jump_007_402d:
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_007_73c4
    add sp, $04
    ret


    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    ld b, $09
    inc c

Call_007_404b:
    push bc
    ld de, $c0e0
    ld a, [de]
    ld c, a
    ld de, $c0e1
    ld a, [de]
    ld b, a
    xor a
    or c
    jr nz, jr_007_405c

    xor a
    or b

jr_007_405c:
    jr z, jr_007_4060

    ld a, $01

jr_007_4060:
    ld c, a
    ld de, $c0e2
    ld a, [de]
    ld b, a
    xor a
    or c
    jr nz, jr_007_406c

    xor a
    or b

jr_007_406c:
    jr z, jr_007_4070

    ld a, $01

jr_007_4070:
    ld c, a
    ld de, $c0e3
    ld a, [de]
    ld b, a
    xor a
    or c
    jr nz, jr_007_407c

    xor a
    or b

jr_007_407c:
    jr z, jr_007_4080

    ld a, $01

jr_007_4080:
    ld c, a
    ld e, c
    pop bc
    ret


Call_007_4084:
    push bc
    add sp, -$01
    ld hl, $c41e
    ld c, [hl]
    ld a, $47
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c41f
    ld a, [hl]
    add $02
    ld hl, $c41d
    sub [hl]
    ld b, a
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, b
    cp $12
    jp c, Jump_007_40b8

    call Call_000_144b

Jump_007_40b8:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $02
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
    add sp, $01
    pop bc
    ret


Call_007_40d0:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $04
    jp c, Jump_007_40de

    call Call_000_144b

Jump_007_40de:
    xor a
    ld a, $bf
    ld hl, sp+$07
    sbc [hl]
    jp nc, Jump_007_40ea

    call Call_000_144b

Jump_007_40ea:
    ld hl, sp+$08
    ld a, [hl]
    cp $ff
    jp z, Jump_007_40fd

    ld hl, sp+$08
    ld a, [hl]
    cp $80
    jp c, Jump_007_40fd

    call Call_000_144b

Jump_007_40fd:
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, $03
    jr jr_007_410b

jr_007_4106:
    or a
    rl c
    rl b

jr_007_410b:
    dec a
    jr nz, jr_007_4106

    ld hl, $b290
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
    ld hl, sp+$08
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


Call_007_4139:
    push bc
    add sp, -$0c
    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $bb
    ld b, $4b
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$0e
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp nz, Jump_007_4165

    ld e, $ff
    jp Jump_007_434d


Jump_007_4165:
    ld hl, sp+$0a
    ld [hl], $00
    ld de, $c533
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld de, $c533
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d

Jump_007_4183:
    ld hl, sp+$0a
    ld a, [hl]
    cp $10
    jp nc, Jump_007_4319

    ld c, $87
    ld b, $6e
    push af
    inc sp
    ld hl, sp+$11
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$0e
    ld [hl], e
    add sp, $05
    xor a
    ld hl, $c532
    or [hl]
    jp nz, Jump_007_42c4

    ld de, $c533
    ld hl, sp+$0a
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$09
    ld a, [hl]
    ld [de], a
    cp $ff
    jp z, Jump_007_42a6

    ld hl, sp+$07
    ld [hl], $ff
    inc hl
    ld [hl], $00

Jump_007_41c6:
    xor a
    ld hl, sp+$08
    ld a, [hl+]
    inc hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_007_420b

    ld de, $c533
    ld hl, sp+$08
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, sp+$09
    sub [hl]
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_007_4201

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$08
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$07
    ld [hl], a
    jp Jump_007_420b


Jump_007_4201:
    ld hl, sp+$08
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_007_41c6


Jump_007_420b:
    ld hl, sp+$07
    ld a, [hl]
    cp $ff
    jp z, Jump_007_4232

    ld c, $c4
    ld b, $48
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_007_42df


Jump_007_4232:
    ld c, $b3
    ld b, $4e
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$09
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp nz, Jump_007_425e

    ld b, $c6
    ld c, $75
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $ff
    jp Jump_007_434d


Jump_007_425e:
    ld c, $9a
    ld b, $56
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0c49
    add sp, $05
    ld c, $c4
    ld b, $48
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0a
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld hl, sp+$06
    ld a, [hl]
    ld [de], a
    jp Jump_007_42df


Jump_007_42a6:
    ld c, $c4
    ld b, $48
    ld a, $ff
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_007_42df


Jump_007_42c4:
    ld c, $c4
    ld b, $48
    ld hl, sp+$09
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
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06

Jump_007_42df:
    ld c, $54
    ld b, $56
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$11
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$0e
    ld [hl], e
    add sp, $05
    ld c, $ff
    ld b, $55
    ld a, e
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
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$0a
    inc [hl]
    jp Jump_007_4183


Jump_007_4319:
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    xor a
    ld hl, $c532
    or [hl]
    jp z, Jump_007_433f

    ld de, $4351
    ld c, e
    ld b, d
    jp Jump_007_4344


Jump_007_433f:
    ld de, $435e
    ld c, e
    ld b, d

Jump_007_4344:
    push bc
    call Call_000_0dab
    add sp, $02
    ld hl, sp+$0b
    ld e, [hl]

Jump_007_434d:
    add sp, $0c
    pop bc
    ret


    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, @+$45

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    nop
    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, jr_007_43a9

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    dec hl
    ld d, b
    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld d, e
    nop

Call_007_4373:
    push bc
    add sp, -$01
    ld hl, $c41f
    ld a, [hl]
    add $02
    ld c, a
    ld hl, $c41d
    sub [hl]
    ld hl, sp+$00
    ld [hl], a
    cp $12
    jp c, Jump_007_438c

    call Call_000_144b

Jump_007_438c:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_4399

    ld b, $03
    jp Jump_007_439b


Jump_007_4399:
    ld b, $02

Jump_007_439b:
    ld hl, $c41e
    ld c, [hl]
    ld a, $47
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]

jr_007_43a9:
    ld c, a
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
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $01
    pop bc
    ret


Call_007_43c2:
    push bc
    add sp, -$02
    ld hl, $c41d
    ld c, [hl]
    ld b, $00
    ld a, $03
    jr jr_007_43d4

jr_007_43cf:
    or a
    rl c
    rl b

jr_007_43d4:
    dec a
    jr nz, jr_007_43cf

    ld a, c
    add $90
    ld c, a
    ld a, b
    adc $b2
    ld b, a
    ld hl, $c46e
    push hl
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $0010
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c47e
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, $0020
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c48e
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld a, c
    add $30
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $c49e
    push hl
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    add sp, $02
    pop bc
    ret


Call_007_4441:
    push bc
    add sp, -$02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_44a6

    ld hl, $c41d
    ld c, [hl]
    ld hl, sp+$01
    ld [hl], $02

Jump_007_4454:
    ld hl, sp+$01
    ld a, [hl]
    cp $12
    jp z, Jump_007_44a6

    ld hl, sp+$00
    ld [hl], c
    ld a, c
    bit 2, a
    jp z, Jump_007_446a

    ld b, $01
    jp Jump_007_446c


Jump_007_446a:
    ld b, $02

Jump_007_446c:
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld a, c
    push af
    inc sp
    call Call_007_62e2
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$01
    inc [hl]
    inc c
    jp Jump_007_4454


Jump_007_44a6:
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld hl, $c41d
    ld c, [hl]
    ld hl, sp+$01
    ld [hl], $10

Jump_007_44b6:
    ld hl, sp+$01
    ld b, [hl]
    dec [hl]
    xor a
    or b
    jp z, Jump_007_44f8

    ld b, c
    ld a, b
    bit 2, a
    jp z, Jump_007_44d5

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_007_44e1


Jump_007_44d5:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a

Jump_007_44e1:
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld a, [hl]
    add $1e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    inc c
    jp Jump_007_44b6


Jump_007_44f8:
    add sp, $02
    pop bc
    ret


Call_007_44fc:
    call Call_007_43c2
    call Call_007_4441
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $42
    inc hl
    ld [hl], $98
    call $718e
    call Call_007_4373
    ld hl, $c56e
    ld [hl], $01
    ret


Call_007_451e:
    push bc
    xor a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    sbc [hl]
    jp nc, Jump_007_4536

    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    ld [hl], a
    jp Jump_007_4550


Jump_007_4536:
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    and $f0
    jr nz, jr_007_4546

    jp Jump_007_4550


jr_007_4546:
    ld hl, $c41f
    ld a, [hl]
    add $f1
    ld hl, $c41d
    ld [hl], a

Jump_007_4550:
    pop bc
    ret


Call_007_4552:
    push bc
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $02
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $05
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $08
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $0b
    push af
    inc sp
    ld a, $03
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
    ld a, $03
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $02
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $05
    push af
    inc sp
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $08
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $0b
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_000_3155
    add sp, $02
    ld a, $04
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $05
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $06
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    ld a, $07
    push af
    inc sp
    call Call_000_31bc
    add sp, $01
    call Call_007_451e
    call Call_007_44fc
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_000_2c57
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_007_4635:
    push bc
    add sp, -$05
    ld hl, $c94e
    inc [hl]
    ld hl, sp+$04
    ld [hl], $00

Jump_007_4640:
    ld hl, sp+$04
    ld a, [hl]
    cp $04
    jp nc, Jump_007_4784

    ld de, $c2fc
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld de, $c200
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c300
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_007_4679

    ld b, $04
    jp Jump_007_467b


Jump_007_4679:
    ld b, $08

Jump_007_467b:
    ld hl, $c94e
    ld a, [hl]
    and b
    ld hl, sp+$01
    ld [hl+], a
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_007_46cf

    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_007_46cf

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    add $04
    ld b, a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_3183
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_46dc

    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_31ea
    add sp, $02
    jp Jump_007_46dc


Jump_007_46cf:
    ld hl, sp+$04
    ld a, [hl]
    add $04
    ld c, a
    push af
    inc sp
    call Call_000_313e
    add sp, $01

Jump_007_46dc:
    ld de, $c0e0
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_007_46fa

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    jp Jump_007_477e


Jump_007_46fa:
    ld hl, sp+$02
    ld a, [hl+]
    cp [hl]
    jp nz, Jump_007_470e

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    jp Jump_007_477e


Jump_007_470e:
    ld de, $c304
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_007_4740

    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_007_4733

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_31d3
    add sp, $01
    jp Jump_007_474a


Jump_007_4733:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    jp Jump_007_477e


Jump_007_4740:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_31bc
    add sp, $01

Jump_007_474a:
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_3183
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_477e

    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_31ea
    add sp, $02

Jump_007_477e:
    ld hl, sp+$04
    inc [hl]
    jp Jump_007_4640


Jump_007_4784:
    add sp, $05
    pop bc
    ret


    push bc
    ld hl, $c4d3
    ld a, [hl]
    cp $04
    jp nz, Jump_007_4798

    call Call_007_4635
    jp Jump_007_47ab


Jump_007_4798:
    ld c, $00

Jump_007_479a:
    ld a, c
    cp $08
    jp z, Jump_007_47ab

    push af
    inc sp
    call Call_000_313e
    add sp, $01
    inc c
    jp Jump_007_479a


Jump_007_47ab:
    pop bc
    ret


Call_007_47ad:
    push bc
    add sp, -$03
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld hl, sp+$03
    ld [hl], e
    add sp, $01
    ld hl, $c41d
    ld a, [hl]
    ld hl, sp+$07
    add [hl]
    ld b, a
    dec b
    dec b
    ld a, b
    and $04
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_007_47e1

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_007_47ed


Jump_007_47e1:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a

Jump_007_47ed:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_480e

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_007_4816


Jump_007_480e:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a

Jump_007_4816:
    ld c, $00

Jump_007_4818:
    ld a, c
    cp $04
    jp nc, Jump_007_489a

    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld a, $20
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c41e
    ld a, [hl]
    cp c
    jr nz, jr_007_4843

    ld a, $01
    jr jr_007_4844

jr_007_4843:
    xor a

jr_007_4844:
    ld b, a
    or b
    jp z, Jump_007_4855

    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a

Jump_007_4855:
    ld hl, sp+$01
    ld a, [hl]
    bit 7, a
    jp z, Jump_007_4869

    ld hl, $4908
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_4873


Jump_007_4869:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_007_4873:
    xor a
    or b
    jp z, Jump_007_4896

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_488e

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_007_4896


Jump_007_488e:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a

Jump_007_4896:
    inc c
    jp Jump_007_4818


Jump_007_489a:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_4904

    xor a
    ld hl, sp+$00
    or [hl]
    jp z, Jump_007_48ae

    ld c, $01
    jp Jump_007_48b0


Jump_007_48ae:
    ld c, $02

Jump_007_48b0:
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld a, $03
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    inc c
    inc c
    inc c
    ld a, $03
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_007_4904:
    add sp, $03
    pop bc
    ret


    dec l
    dec l
    nop

Call_007_490b:
    push bc
    ld hl, $c41f
    ld a, [hl]
    add $02
    ld hl, $c41d
    sub [hl]
    ld c, a
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, c
    push af
    inc sp
    call Call_007_47ad
    add sp, $01
    pop bc
    ret


Call_007_492c:
    call Call_007_7290
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_493a

    call Call_007_7245

Jump_007_493a:
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld a, $02
    push af
    inc sp
    call Call_007_47ad
    add sp, $01
    ld hl, $c56e
    ld [hl], $01
    ret


Call_007_4951:
    call Call_007_732a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_495f

    call Call_007_71fa

Jump_007_495f:
    ld hl, $c574
    ld [hl], $20
    inc hl
    ld [hl], $9a
    ld a, $11
    push af
    inc sp
    call Call_007_47ad
    add sp, $01
    ld hl, $c56e
    ld [hl], $01
    ret


Call_007_4976:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $01

Jump_007_497d:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_007_49b1

    ld hl, $c41f
    add [hl]
    ld b, a
    or a
    jp nz, Jump_007_4996

    ld hl, $c41f
    ld [hl], $ff
    jp Jump_007_49c1


Jump_007_4996:
    ld a, b
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_007_49ab

    ld hl, $c41f
    ld [hl], b
    jp Jump_007_49c1


Jump_007_49ab:
    ld hl, sp+$00
    inc [hl]
    jp Jump_007_497d


Jump_007_49b1:
    ld hl, $c41f
    ld a, [hl]
    add $10
    ld [hl], a
    xor a
    ld a, $bf
    sbc [hl]
    jp nc, Jump_007_49c1

    ld [hl], $bf

Jump_007_49c1:
    add sp, $01
    pop bc
    ret


Call_007_49c5:
    push bc
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_007_49d4

    ld e, $00
    jp Jump_007_4a01


Jump_007_49d4:
    call Call_007_4084
    call Call_007_4976
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    cp $10
    jp c, Jump_007_49fc

    ld a, [hl]
    add $10
    ld [hl], a
    and $f0
    ld c, a
    cp $b0
    jp c, Jump_007_49f6

    ld [hl], $b0

Jump_007_49f6:
    call Call_007_44fc
    jp Jump_007_49ff


Jump_007_49fc:
    call Call_007_4373

Jump_007_49ff:
    ld e, $01

Jump_007_4a01:
    pop bc
    ret


Call_007_4a03:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $01

Jump_007_4a0a:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_007_4a42

    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$00
    sub [hl]
    ld b, a
    cp $ff
    jp nz, Jump_007_4a27

    ld hl, $c41f
    ld [hl], $00
    jp Jump_007_4a53


Jump_007_4a27:
    ld a, b
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_007_4a3c

    ld hl, $c41f
    ld [hl], b
    jp Jump_007_4a53


Jump_007_4a3c:
    ld hl, sp+$00
    inc [hl]
    jp Jump_007_4a0a


Jump_007_4a42:
    ld hl, $c41f
    ld a, [hl]
    add $f0
    ld [hl], a
    cp $ff
    jp nz, Jump_007_4a53

    ld hl, $c41f
    ld [hl], $00

Jump_007_4a53:
    add sp, $01
    pop bc
    ret


Call_007_4a57:
    push bc
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_007_4a66

    ld e, $00
    jp Jump_007_4a94


Jump_007_4a66:
    call Call_007_4084
    call Call_007_4a03
    xor a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    sbc [hl]
    jp nc, Jump_007_4a8f

    ld a, [hl]
    add $f0
    ld [hl], a
    and $f0
    ld c, a
    cp $f0
    jp nz, Jump_007_4a89

    ld hl, $c41d
    ld [hl], $00

Jump_007_4a89:
    call Call_007_44fc
    jp Jump_007_4a92


Jump_007_4a8f:
    call Call_007_4373

Jump_007_4a92:
    ld e, $01

Jump_007_4a94:
    pop bc
    ret


Call_007_4a96:
    push bc
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c950
    ld [hl], a
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c41e
    ld [hl], $03
    ld c, $31
    ld b, $6d
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c950
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    pop bc
    ret


    push bc
    add sp, -$0d
    ld hl, $c41f
    ld a, [hl]
    add $02
    ld hl, $c41d
    sub [hl]
    ld c, a
    ld hl, $c41e
    ld b, [hl]
    ld a, $47
    add b
    ld e, a
    ld a, $40
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
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_007_4b1c

    ld a, $01
    jr jr_007_4b1d

Jump_007_4b1c:
    xor a

jr_007_4b1d:
    ld c, a
    or c
    jp nz, Jump_007_4b27

    ld hl, $c406
    ld [hl], $00

Jump_007_4b27:
    ld hl, $c576
    ld a, [hl]
    cp $20
    jp nz, Jump_007_4b34

    ld a, $01
    jr jr_007_4b35

Jump_007_4b34:
    xor a

jr_007_4b35:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_007_4b41

    ld hl, $c94f
    ld [hl], $00

Jump_007_4b41:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_007_4b4e

    ld a, $01
    jr jr_007_4b4f

Jump_007_4b4e:
    xor a

jr_007_4b4f:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_007_4b90

    ld hl, $c576
    ld a, [hl]
    cp $43
    jp nz, Jump_007_4b90

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a
    ld hl, $73f6
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_007_451e
    call Call_007_44fc
    ld hl, $56c0
    push hl
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_007_56bc


Jump_007_4b90:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_007_4ca8

    xor a
    or c
    jp z, Jump_007_4ca8

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4ba9

    ld e, $00
    jp Jump_007_56bc


Jump_007_4ba9:
    ld hl, $c406
    ld c, [hl]
    inc [hl]
    xor a
    or c
    jp z, Jump_007_4bd4

    xor a
    ld hl, $c951
    or [hl]
    jp z, Jump_007_4bd4

    ld c, $bb
    ld b, $4b
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$0e
    ld [hl], e
    add sp, $03
    ld hl, $c406
    ld [hl], $00
    jp Jump_007_4c6d


Jump_007_4bd4:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $ff
    jp nz, Jump_007_4bf2

    ld a, $01
    jr jr_007_4bf3

Jump_007_4bf2:
    xor a

jr_007_4bf3:
    ld hl, $c951
    ld [hl], a
    or a
    jp z, Jump_007_4c6d

    ld hl, $c41e
    ld b, [hl]
    ld a, $50
    add b
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$0b
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp z, Jump_007_4c2a

    ld b, $67
    ld c, $4d
    ld hl, sp+$0b
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
    jp Jump_007_4c6d


Jump_007_4c2a:
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a

Jump_007_4c31:
    ld hl, sp+$0c
    ld a, [hl]
    or a
    jp nz, Jump_007_4c53

    ld b, $bb
    ld c, $4b
    ld l, b
    ld h, c
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$0e
    ld [hl], e
    add sp, $03
    ld hl, $c951
    ld [hl], $00
    jp Jump_007_4c6d


Jump_007_4c53:
    ld hl, sp+$0c
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $ff
    jp z, Jump_007_4c31

Jump_007_4c6d:
    ld hl, sp+$0b
    ld a, [hl]
    cp $ff
    jp z, Jump_007_4ca3

    ld hl, $c41e
    ld c, [hl]
    ld a, $50
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03

Jump_007_4ca3:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4ca8:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp nz, Jump_007_4cfd

    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp z, Jump_007_4cc2

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_007_4cc7

Jump_007_4cc2:
    ld e, $00
    jp Jump_007_56bc


Jump_007_4cc7:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4cd1

    call Call_007_4084

Jump_007_4cd1:
    ld hl, $c41e
    inc [hl]
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_007_4ce8

    xor a
    ld hl, $c7a8
    or [hl]
    jp nz, Jump_007_4ce8

    call Call_000_2c79

Jump_007_4ce8:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4cf5

    call Call_007_5adf
    jp Jump_007_4cf8


Jump_007_4cf5:
    call Call_007_4373

Jump_007_4cf8:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4cfd:
    ld hl, $c576
    ld a, [hl]
    cp $02
    jp nz, Jump_007_4d51

    xor a
    ld hl, $c41e
    or [hl]
    jp z, Jump_007_4d16

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_007_4d1b

Jump_007_4d16:
    ld e, $00
    jp Jump_007_56bc


Jump_007_4d1b:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4d25

    call Call_007_4084

Jump_007_4d25:
    ld hl, $c41e
    dec [hl]
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_007_4d3c

    xor a
    ld hl, $c7a8
    or [hl]
    jp nz, Jump_007_4d3c

    call Call_000_2c79

Jump_007_4d3c:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4d49

    call Call_007_5adf
    jp Jump_007_4d4c


Jump_007_4d49:
    call Call_007_4373

Jump_007_4d4c:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4d51:
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp nz, Jump_007_4dca

    xor a
    ld hl, $c41f
    or [hl]
    jp nz, Jump_007_4d67

    ld e, $00
    jp Jump_007_56bc


Jump_007_4d67:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4d81

    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41f
    sub [hl]
    ld c, a
    cp $29
    jp nz, Jump_007_4d81

    ld e, $00
    jp Jump_007_56bc


Jump_007_4d81:
    xor a
    ld hl, $c41f
    or [hl]
    jp nz, Jump_007_4d8e

    ld e, $00
    jp Jump_007_56bc


Jump_007_4d8e:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4d98

    call Call_007_4084

Jump_007_4d98:
    ld hl, $c41f
    dec [hl]
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    cp $ff
    jp nz, Jump_007_4db1

    ld hl, $c41d
    dec [hl]
    call Call_007_492c
    jp Jump_007_4dbb


Jump_007_4db1:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4dbb

    call Call_007_4373

Jump_007_4dbb:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4dc5

    call Call_007_5adf

Jump_007_4dc5:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4dca:
    ld hl, $c576
    ld a, [hl]
    cp $08
    jp nz, Jump_007_4e37

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4ded

    ld hl, $c41f
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld c, a
    cp $29
    jp nz, Jump_007_4ded

    ld e, $00
    jp Jump_007_56bc


Jump_007_4ded:
    ld hl, $c41f
    ld a, [hl]
    cp $bf
    jp nz, Jump_007_4dfb

    ld e, $00
    jp Jump_007_56bc


Jump_007_4dfb:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4e05

    call Call_007_4084

Jump_007_4e05:
    ld hl, $c41f
    inc [hl]
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    cp $10
    jp nz, Jump_007_4e1e

    ld hl, $c41d
    inc [hl]
    call Call_007_4951
    jp Jump_007_4e28


Jump_007_4e1e:
    xor a
    ld hl, sp+$02
    or [hl]
    jp nz, Jump_007_4e28

    call Call_007_4373

Jump_007_4e28:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4e32

    call Call_007_5adf

Jump_007_4e32:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4e37:
    ld hl, $c576
    ld a, [hl]
    cp $28
    jp nz, Jump_007_4e47

    call Call_007_49c5
    ld c, e
    jp Jump_007_56bc


Jump_007_4e47:
    ld hl, $c576
    ld a, [hl]
    cp $24
    jp nz, Jump_007_4e57

    call Call_007_4a57
    ld c, e
    jp Jump_007_56bc


Jump_007_4e57:
    ld hl, $c576
    ld a, [hl]
    cp $42
    jp nz, Jump_007_4f7a

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_007_4e6d

    ld e, $00
    jp Jump_007_56bc


Jump_007_4e6d:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_4e7a

    ld e, $01
    jp Jump_007_56bc


Jump_007_4e7a:
    xor a
    ld hl, $c529
    or [hl]
    sub $01
    ld a, $00
    rla
    ld [hl], a
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp z, Jump_007_4e9f

    ld hl, $c531
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $00

Jump_007_4e9f:
    xor a
    ld hl, $c529
    or [hl]
    jp nz, Jump_007_4eef

    ld a, $04
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    ld a, $05
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    ld a, $06
    push af
    inc sp
    call Call_000_313e
    add sp, $01
    ld a, $07
    push af
    inc sp
    call Call_000_313e
    add sp, $01
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
    ld a, $03
    push af
    inc sp
    call Call_000_31bc
    add sp, $01

Jump_007_4eef:
    ld hl, $0004
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $c2fc
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0004
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c300
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0004
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c304
    push hl
    call Call_000_3892
    add sp, $05
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_007_4f68

    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_007_4f68

    ld a, [hl]
    cp $04
    jp z, Jump_007_4f68

    ld hl, $c94a
    ld c, [hl]
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, $c94b
    ld a, [hl]
    ld [de], a
    ld hl, $c4d3
    ld a, [hl]
    cp $03
    jp z, Jump_007_4f63

    ld hl, $c94a
    ld c, [hl]
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_007_4f63:
    ld hl, $c4d3
    ld [hl], $04

Jump_007_4f68:
    call Call_007_4552
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4f75

    call Call_007_5adf

Jump_007_4f75:
    ld e, $01
    jp Jump_007_56bc


Jump_007_4f7a:
    ld hl, $c576
    ld a, [hl]
    cp $11
    jp nz, Jump_007_4fd7

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4f8f

    ld e, $00
    jp Jump_007_56bc


Jump_007_4f8f:
    ld hl, $c405
    ld [hl], $01
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0e
    ld [hl], e
    add sp, $02
    ld a, e
    cp $7f
    jp nc, Jump_007_4faf

    inc [hl]

Jump_007_4faf:
    ld hl, sp+$0c
    ld a, [hl]
    and $7f
    ld [hl], a
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_007_56bc


Jump_007_4fd7:
    ld hl, $c576
    ld a, [hl]
    cp $14
    jp nz, Jump_007_5035

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_4fec

    ld e, $00
    jp Jump_007_56bc


Jump_007_4fec:
    ld hl, $c405
    ld [hl], $01
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld a, c
    add $10
    ld hl, sp+$0c
    ld [hl], a
    bit 7, a
    jp z, Jump_007_5010

    ld [hl], $7f

Jump_007_5010:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_007_56bc


Jump_007_5035:
    ld hl, $c576
    ld a, [hl]
    cp $12
    jp nz, Jump_007_5094

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_504a

    ld e, $00
    jp Jump_007_56bc


Jump_007_504a:
    ld hl, $c405
    ld [hl], $01
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0e
    ld [hl], e
    add sp, $02
    ld a, e
    or e
    jp z, Jump_007_508f

    ld a, e
    cp $ff
    jp z, Jump_007_508f

    ld hl, sp+$0c
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_007_508f:
    ld e, $01
    jp Jump_007_56bc


Jump_007_5094:
    ld hl, $c576
    ld a, [hl]
    cp $18
    jp nz, Jump_007_510d

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_50a9

    ld e, $00
    jp Jump_007_56bc


Jump_007_50a9:
    ld hl, $c405
    ld [hl], $01
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0e
    ld [hl], e
    add sp, $02
    ld a, e
    cp $ff
    jp nz, Jump_007_50cf

    ld hl, sp+$0c
    ld [hl], $00
    jp Jump_007_50e8


Jump_007_50cf:
    ld hl, sp+$0c
    ld a, [hl]
    and $f0
    jr nz, jr_007_50d9

    jp Jump_007_50e4


jr_007_50d9:
    ld hl, sp+$0c
    ld a, [hl]
    add $f0
    and $7f
    ld [hl], a
    jp Jump_007_50e8


Jump_007_50e4:
    ld hl, sp+$0c
    ld [hl], $00

Jump_007_50e8:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_007_56bc


Jump_007_510d:
    ld hl, $c576
    ld a, [hl]
    cp $44
    jp nz, Jump_007_5143

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_5123

    ld e, $00
    jp Jump_007_56bc


Jump_007_5123:
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
    jp Jump_007_56bc


Jump_007_5143:
    ld hl, $c576
    ld a, [hl]
    cp $48
    jp nz, Jump_007_5179

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_5159

    ld e, $00
    jp Jump_007_56bc


Jump_007_5159:
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
    jp Jump_007_56bc


Jump_007_5179:
    ld hl, $c576
    ld a, [hl]
    cp $30
    jp nz, Jump_007_5289

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_007_5197

    xor a
    ld hl, $c40c
    or [hl]
    jp nz, Jump_007_5197

    ld e, $00
    jp Jump_007_56bc


Jump_007_5197:
    ld hl, $c40c
    ld [hl], $00
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0c
    ld [hl], e
    add sp, $02
    ld hl, $c414
    ld [hl], $02
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    add $01
    ld hl, $c410
    ld [hl], a
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c411
    ld [hl], $01
    ld hl, $c412
    ld [hl], $04
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$0a
    ld a, [hl]
    bit 7, a
    jp z, Jump_007_525b

    ld hl, $c41f
    ld b, [hl]
    ld c, $00
    ld a, $03
    jr jr_007_5201

jr_007_51fc:
    or a
    rl b
    rl c

jr_007_5201:
    dec a
    jr nz, jr_007_51fc

    ld e, b
    ld d, c
    ld hl, $b290
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, $c41e
    ld c, [hl]
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0004
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_007_4000
    add sp, $04
    ld a, $ff
    push af
    inc sp
    ld a, $bf
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    jp Jump_007_5281


Jump_007_525b:
    ld hl, $c41e
    ld c, [hl]
    ld a, $50
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$0a
    ld a, [hl]
    ld [de], a
    ld a, $ff
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03

Jump_007_5281:
    call Call_007_44fc
    ld e, $01
    jp Jump_007_56bc


Jump_007_5289:
    ld hl, $c576
    ld a, [hl]
    cp $50
    jp nz, Jump_007_534b

    ld hl, $c414
    ld a, [hl]
    cp $01
    jp nz, Jump_007_52a0

    ld e, $00
    jp Jump_007_56bc


Jump_007_52a0:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_007_52b0

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_52b5

Jump_007_52b0:
    ld e, $00
    jp Jump_007_56bc


Jump_007_52b5:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_532f

    ld hl, $c40b
    ld [hl], $00
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_007_52e1

    ld hl, $c41e
    ld a, [hl]
    ld hl, $c40e
    cp [hl]
    jp nz, Jump_007_52e1

    ld hl, $c41f
    ld a, [hl]
    ld hl, $c40f
    cp [hl]
    jr nz, jr_007_52e1

    jp Jump_007_52ed


Jump_007_52e1:
jr_007_52e1:
    ld a, $01
    push af
    inc sp
    call Call_007_56f8
    add sp, $01
    jp Jump_007_532a


Jump_007_52ed:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld a, c
    cp $ff
    jp nz, Jump_007_530a

    ld e, $00
    jp Jump_007_56bc


Jump_007_530a:
    ld a, c
    and $7f
    ld c, a
    call Call_007_4084
    ld a, c
    push af
    inc sp
    call Call_007_4139
    ld c, e
    add sp, $01
    ld a, c
    cp $ff
    jp z, Jump_007_5327

    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_007_5327:
    call Call_007_4373

Jump_007_532a:
    ld e, $00
    jp Jump_007_56bc


Jump_007_532f:
    ld hl, $c412
    ld a, [hl]
    cp $04
    jp z, Jump_007_533d

    ld e, $00
    jp Jump_007_56bc


Jump_007_533d:
    call Call_007_4084
    call Call_007_5932
    call Call_007_44fc
    ld e, $01
    jp Jump_007_56bc


Jump_007_534b:
    ld hl, $c576
    ld a, [hl]
    cp $c0
    jp nz, Jump_007_53bc

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_5371

    xor a
    ld hl, $c529
    or [hl]
    jp nz, Jump_007_536c

    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_007_5371

Jump_007_536c:
    ld e, $01
    jp Jump_007_56bc


Jump_007_5371:
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_007_5393

    call Call_007_404b
    ld c, e
    xor a
    or c
    jp z, Jump_007_53b7

    ld c, $46
    ld b, $6d
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_007_53b7


Jump_007_5393:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_007_53a9

    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_007_53a9:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_007_53b7:
    ld e, $01
    jp Jump_007_56bc


Jump_007_53bc:
    ld hl, $c576
    ld a, [hl]
    cp $80
    jp nz, Jump_007_5434

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_007_53d5

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_007_53e8

Jump_007_53d5:
    ld hl, $c56b
    ld a, [hl]
    cp $02
    jp nz, Jump_007_53e3

    ld hl, $c56b
    ld [hl], $01

Jump_007_53e3:
    ld e, $01
    jp Jump_007_56bc


Jump_007_53e8:
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_007_5401

    ld c, $31
    ld b, $6d
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_007_542f


Jump_007_5401:
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_007_5421

    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_007_5421

    ld hl, $cb68
    ld a, [hl]
    cp $ff
    jp z, Jump_007_5421

    call Call_007_4a96
    jp Jump_007_542f


Jump_007_5421:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_007_542f:
    ld e, $01
    jp Jump_007_56bc


Jump_007_5434:
    ld hl, $c576
    ld a, [hl]
    cp $82
    jp nz, Jump_007_544d

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_007_5448

    call Call_007_4a96

Jump_007_5448:
    ld e, $01
    jp Jump_007_56bc


Jump_007_544d:
    ld hl, $c576
    ld a, [hl]
    cp $41
    jp nz, Jump_007_5500

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_007_5463

    ld e, $00
    jp Jump_007_56bc


Jump_007_5463:
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a

Jump_007_546a:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0d
    ld [hl], e
    add sp, $02
    ld a, e
    cp $80
    jp nc, Jump_007_5491

    ld hl, $c419
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a
    jp Jump_007_54b1


Jump_007_5491:
    xor a
    ld hl, sp+$0c
    or [hl]
    jp nz, Jump_007_54ab

    ld c, $01
    ld b, $76
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $00
    jp Jump_007_56bc


Jump_007_54ab:
    ld hl, sp+$0c
    dec [hl]
    jp Jump_007_546a


Jump_007_54b1:
    xor a
    ld hl, $c41b
    or [hl]
    jp z, Jump_007_54e0

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
    ld c, e
    add sp, $05
    ld a, c
    cp $ff
    jp nz, Jump_007_54e0

    ld hl, $c41b
    dec [hl]
    jp Jump_007_54b1


Jump_007_54e0:
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
    jp Jump_007_56bc


Jump_007_5500:
    xor a
    ld hl, sp+$03
    or [hl]
    jp z, Jump_007_558f

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_007_5514

    ld e, $00
    jp Jump_007_56bc


Jump_007_5514:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_5529

    ld a, $00
    push af
    inc sp
    call Call_007_56f8
    add sp, $01
    ld e, $01
    jp Jump_007_56bc


Jump_007_5529:
    ld hl, $c94f
    ld a, [hl]
    or a
    jp z, Jump_007_553e

    cp $01
    jp z, Jump_007_5548

    cp $02
    jp z, Jump_007_5567

    jp Jump_007_558a


Jump_007_553e:
    ld hl, $c94f
    ld [hl], $01
    ld e, $00
    jp Jump_007_56bc


Jump_007_5548:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_007_5562

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_007_5562

    ld hl, $c94f
    ld [hl], $02
    ld e, $01
    jp Jump_007_56bc


Jump_007_5562:
    ld e, $00
    jp Jump_007_56bc


Jump_007_5567:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_007_558a

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_007_558a

    ld hl, $c94f
    ld [hl], $00
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    call Call_007_63d5
    add sp, $01
    call Call_007_490b

Jump_007_558a:
    ld e, $01
    jp Jump_007_56bc


Jump_007_558f:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_007_56ba

    ld hl, $c576
    ld a, [hl]
    cp $60
    jp nz, Jump_007_56ba

    ld hl, $c40b
    ld [hl], $00
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_5668

    ld hl, $c412
    ld a, [hl]
    cp $04
    jp nz, Jump_007_5668

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$06
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, $c413
    ld [hl], $01
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
    jp nz, Jump_007_55ff

    dec hl
    ld a, [hl]
    cp $03
    jp z, Jump_007_5611

Jump_007_55ff:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c41e
    ld [hl], $03
    call Call_007_5adf
    ld e, $01
    jp Jump_007_56bc


Jump_007_5611:
    ld hl, sp+$04
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
    call Call_000_0d7a
    add sp, $04
    ld hl, $c41d
    ld a, [hl]
    ld hl, sp+$05
    cp [hl]
    jp nz, Jump_007_5644

    ld hl, $c41d
    ld a, [hl]
    add $0f
    ld hl, sp+$04
    cp [hl]
    jr nz, jr_007_5644

    jp Jump_007_565a


Jump_007_5644:
jr_007_5644:
    ld hl, $c41d
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    add $0f
    ld hl, $c41f
    ld [hl], a
    call Call_007_5adf
    ld e, $01
    jp Jump_007_56bc


Jump_007_565a:
    ld a, $00
    push af
    inc sp
    call Call_007_56f8
    add sp, $01
    ld e, $01
    jp Jump_007_56bc


Jump_007_5668:
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c413
    ld [hl], $00
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c949
    ld [hl], a
    ld hl, $c41d
    ld a, [hl]
    ld hl, $c948
    ld [hl], a
    xor a
    ld hl, $c532
    or [hl]
    jp z, Jump_007_56aa

    ld de, $56ce
    ld c, e
    ld b, d
    jp Jump_007_56af


Jump_007_56aa:
    ld de, $56e3
    ld c, e
    ld b, d

Jump_007_56af:
    push bc
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_007_56bc


Jump_007_56ba:
    ld e, $00

Jump_007_56bc:
    add sp, $0d
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, jr_007_571b

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
    jr nz, @+$31

    jr nz, @+$55

    ld c, h
    ld c, c
    ld c, l
    jr nz, jr_007_5720

    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    jr nz, jr_007_56e3

jr_007_56e3:
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, @+$31

    jr nz, jr_007_5731

    ld b, l
    ld b, l
    ld d, b
    jr nz, @+$45

    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    jr nz, jr_007_56f8

Call_007_56f8:
jr_007_56f8:
    push bc
    add sp, -$0e
    ld hl, $c412
    ld a, [hl]
    cp $04
    jp z, Jump_007_5707

    jp Jump_007_5915


Jump_007_5707:
    ld hl, $c414
    ld [hl], $02
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c411

jr_007_571b:
    ld [hl], a
    ld hl, $c410
    push hl

jr_007_5720:
    ld hl, $c40e
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c411
    push hl
    ld hl, $c40f
    push hl

jr_007_5731:
    call Call_000_0d7a
    add sp, $04
    ld hl, $c410

Call_007_5739:
    ld a, [hl]
    ld hl, $c40e
    sub [hl]
    ld c, a
    cp $06
    jp c, Jump_007_5747

    call Call_000_144b

Jump_007_5747:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld c, a
    cp $2a
    jp c, Jump_007_5758

    call Call_000_144b

Jump_007_5758:
    ld hl, $c410
    inc [hl]
    ld hl, $c411
    inc [hl]
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a

Jump_007_5768:
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c410
    sub [hl]
    ld c, a
    or c
    jp z, Jump_007_58ae

    ld hl, $c41e
    ld a, [hl]
    cp $06
    jp c, Jump_007_5781

    call Call_000_144b

Jump_007_5781:
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a

Jump_007_5789:
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c411
    sub [hl]
    ld hl, sp+$08
    ld [hl], a
    or a
    jp z, Jump_007_57ef

    ld hl, $c41f
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld hl, sp+$04
    ld [hl], a
    cp $10
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_007_57b2

    call Call_007_4084

Jump_007_57b2:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$08
    ld [hl], e
    add sp, $02
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld hl, sp+$05
    ld [hl+], a
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c41f
    ld a, [hl]
    add $01
    ld c, a
    ld b, c
    ld [hl], b
    jp Jump_007_5789


Jump_007_57ef:
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_007_58a7

    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld hl, $c40f
    ld b, [hl]
    ld c, $00
    ld a, $03
    jr jr_007_5810

jr_007_580b:
    or a
    rl b
    rl c

jr_007_5810:
    dec a
    jr nz, jr_007_580b

    ld e, b
    ld d, c
    ld hl, $b290
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ld hl, $c41e
    ld c, [hl]
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0d
    ld c, [hl]
    ld b, $00
    ld a, $03

Call_007_5839:
    jr jr_007_5840

jr_007_583b:
    or a
    rl c
    rl b

jr_007_5840:
    dec a
    jr nz, jr_007_583b

    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$0b
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$0a
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$0b
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_007_4000
    add sp, $04

Jump_007_586c:
    xor a
    ld hl, sp+$0d
    or [hl]
    jp z, Jump_007_58a7

    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld de, $00c0
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$03
    ld [hl], a
    dec hl
    ld [hl], e
    ld c, e
    ld a, $ff
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0d
    ld a, [hl]
    add $ff
    ld b, a
    ld [hl], b
    jp Jump_007_586c


Jump_007_58a7:
    ld hl, $c41e
    inc [hl]
    jp Jump_007_5768


Jump_007_58ae:
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_007_58d7

    xor a
    ld hl, $c40e
    or [hl]
    jp nz, Jump_007_58d7

    ld hl, $c410
    ld a, [hl]
    cp $04
    jp nz, Jump_007_58d7

    ld hl, $c411
    ld a, [hl]
    push af
    inc sp
    ld hl, $c40f
    ld a, [hl]
    push af
    inc sp
    call Call_007_6411
    add sp, $02

Jump_007_58d7:
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_007_58e6

    ld de, $5919
    ld c, e
    ld b, d
    jp Jump_007_58eb


Jump_007_58e6:
    ld de, $5924
    ld c, e
    ld b, d

Jump_007_58eb:
    push bc
    call Call_000_0dab
    add sp, $02
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_007_5907

    ld hl, $c40f
    ld c, [hl]
    jp Jump_007_590b


Jump_007_5907:
    ld hl, $c949
    ld c, [hl]

Jump_007_590b:
    ld hl, $c41f
    ld [hl], c
    call Call_007_451e
    call Call_007_44fc

Jump_007_5915:
    add sp, $0e
    pop bc
    ret


    ld b, e
    ld d, l
    ld d, h
    jr nz, @+$45

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    nop
    ld b, e
    ld c, a
    ld d, b
    ld c, c
    ld b, l
    ld b, h
    jr nz, @+$45

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    nop

Call_007_5932:
    push bc
    add sp, -$0c
    ld hl, sp+$09
    ld [hl], $00
    ld hl, $c410
    ld a, [hl]
    ld hl, $c40e
    sub [hl]
    ld hl, sp+$03
    ld [hl], a
    cp $01
    jp nz, Jump_007_5954

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41e
    sub [hl]
    ld hl, sp+$09
    ld [hl], a

Jump_007_5954:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld hl, sp+$08
    ld [hl], a
    xor a
    ld hl, $c40e
    or [hl]
    jp nz, Jump_007_5985

    ld hl, $c410
    ld a, [hl]
    cp $04
    jp nz, Jump_007_5985

    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$08
    add [hl]
    ld c, a
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    call Call_007_648c
    add sp, $02

Jump_007_5985:
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$08
    add [hl]
    ld c, a
    cp $bf
    jp nc, Jump_007_5a35

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a

Jump_007_5999:
    xor a
    ld hl, sp+$0b
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_007_5a35

    ld hl, sp+$0b
    ld a, [hl]
    dec hl
    dec hl
    sub [hl]
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $b58c
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld b, [hl]
    ld c, $00
    ld a, $03
    jr jr_007_59c6

jr_007_59c1:
    or a
    rl b
    rl c

jr_007_59c6:
    dec a
    jr nz, jr_007_59c1

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, c
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$07
    ld [hl], a
    dec hl
    ld [hl], e
    dec hl
    dec hl
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4d70
    add hl, de
    jp c, Jump_007_59f4

    call Call_000_144b

Jump_007_59f4:
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4a70
    add hl, de
    jp nc, Jump_007_5a03

    call Call_000_144b

Jump_007_5a03:
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$08
    add [hl]
    ld c, a
    ld b, $00
    ld a, $c0
    sub c
    ld c, a
    ld a, $00
    sbc b
    inc hl
    inc hl
    ld [hl], c
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld l, b
    ld h, c
    push hl
    call Call_007_73f1
    add sp, $05
    ld hl, sp+$0b
    inc [hl]
    jp Jump_007_5999


Jump_007_5a35:
    ld hl, sp+$0a
    ld [hl], $00

Jump_007_5a39:
    xor a
    ld hl, sp+$0a
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    jp nc, Jump_007_5ab2

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a

Jump_007_5a4a:
    xor a
    ld hl, sp+$0b
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_007_5a91

    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld hl, sp+$0b
    ld a, [hl]
    dec hl
    dec hl
    sub [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_007_40d0
    add sp, $03
    ld hl, sp+$0b
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_007_5a4a


Jump_007_5a91:
    ld hl, $c41f
    ld a, [hl]
    cp $bf
    jp z, Jump_007_5ab2

    inc [hl]
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    and $f0
    jr nz, jr_007_5aa8

    jp Jump_007_5aac


jr_007_5aa8:
    ld hl, $c41d
    inc [hl]

Jump_007_5aac:
    ld hl, sp+$0a
    inc [hl]
    jp Jump_007_5a39


Jump_007_5ab2:
    xor a
    ld a, $01
    ld hl, sp+$03
    sbc [hl]
    jp c, Jump_007_5ac4

    xor a
    ld a, $01
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_007_5acd

Jump_007_5ac4:
    ld hl, $5ad1
    push hl
    call Call_000_0dab
    add sp, $02

Jump_007_5acd:
    add sp, $0c
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld b, h
    jr nz, jr_007_5b1c

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    nop

Call_007_5adf:
    push bc
    add sp, -$14
    ld hl, $c412
    ld a, [hl]
    cp $04
    jp z, Jump_007_5aee

    jp Jump_007_5d76


Jump_007_5aee:
    ld hl, $c40e
    ld a, [hl]
    cp $04
    jp c, Jump_007_5afa

    call Call_000_144b

Jump_007_5afa:
    ld hl, $c41e
    ld a, [hl]
    cp $04
    jp c, Jump_007_5b06

    call Call_000_144b

Jump_007_5b06:
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$12
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$10
    ld [hl], a
    ld hl, sp+$10
    ld d, h
    ld e, l
    ld hl, sp+$0c
    ld [hl], e
    inc hl

jr_007_5b1c:
    ld [hl], d
    ld hl, sp+$12
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$11
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld hl, sp+$0f
    ld d, h
    ld e, l
    ld hl, sp+$0c
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$11
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    xor a
    ld hl, sp+$11
    ld a, [hl]
    ld hl, $c41d
    sbc [hl]
    jp nc, Jump_007_5b6a

    ld hl, sp+$11
    ld [hl], $00
    jp Jump_007_5b74


Jump_007_5b6a:
    ld hl, sp+$11
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld hl, sp+$11
    ld [hl], a

Jump_007_5b74:
    ld hl, $c41d
    ld a, [hl]
    add $0f
    ld c, a
    xor a
    ld a, c
    ld hl, sp+$0f
    sbc [hl]
    jp nc, Jump_007_5b88

    ld [hl], $10
    jp Jump_007_5b95


Jump_007_5b88:
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    add $01
    ld hl, sp+$0f
    ld [hl], a

Jump_007_5b95:
    ld hl, sp+$10
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c94c
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c94d
    ld [hl], a
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_007_5bba

    ld a, [hl]
    add $ff
    ld b, a
    jp Jump_007_5bbc


Jump_007_5bba:
    ld b, $00

Jump_007_5bbc:
    ld hl, $c41e
    ld [hl], b
    ld hl, sp+$10
    ld a, [hl]
    add $01
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$10
    ld a, [hl]
    cp $04
    jp nz, Jump_007_5bd4

    ld a, $01
    jr jr_007_5bd5

Jump_007_5bd4:
    xor a

jr_007_5bd5:
    ld hl, sp+$0b
    ld [hl], a

Jump_007_5bd8:
    xor a
    ld hl, sp+$0b
    or [hl]
    jp z, Jump_007_5be4

    ld c, $04
    jp Jump_007_5be7


Jump_007_5be4:
    ld hl, sp+$0c
    ld c, [hl]

Jump_007_5be7:
    xor a
    ld hl, $c41e
    ld a, [hl]
    sbc c
    jp nc, Jump_007_5cba

    xor a
    ld hl, sp+$11
    or [hl]
    jp z, Jump_007_5bfe

    ld a, [hl]
    add $ff
    ld c, a
    jp Jump_007_5c00


Jump_007_5bfe:
    ld c, $00

Jump_007_5c00:
    ld hl, $c41d
    ld a, [hl]
    add c
    ld hl, $c41f
    ld [hl], a

Jump_007_5c09:
    ld hl, sp+$0f
    ld a, [hl]
    cp $10
    jp nz, Jump_007_5c15

    ld a, $01
    jr jr_007_5c16

Jump_007_5c15:
    xor a

jr_007_5c16:
    ld hl, sp+$08
    ld [hl], a
    or a
    jp z, Jump_007_5c24

    inc hl
    inc hl
    ld [hl], $10
    jp Jump_007_5c2e


Jump_007_5c24:
    ld hl, sp+$0f
    ld a, [hl]
    add $01
    ld hl, sp+$09
    ld [hl], a
    ld a, [hl+]
    ld [hl], a

Jump_007_5c2e:
    ld hl, $c41d
    ld a, [hl]
    ld hl, sp+$0a
    add [hl]
    ld hl, sp+$04
    ld [hl], a
    xor a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$04
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_007_5cb3

    xor a
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$12
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_007_5ca4

    xor a
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$10
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_007_5ca4

    ld hl, $c41d
    ld a, [hl]
    ld hl, sp+$11
    add [hl]
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$02
    sbc [hl]
    ld a, $00
    rla
    inc hl
    ld [hl], a
    or a
    jp nz, Jump_007_5ca4

    ld hl, $c41d
    ld a, [hl]
    ld hl, sp+$0f
    add [hl]
    ld hl, sp+$00
    ld [hl], a
    xor a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$00
    sbc [hl]
    ld a, $00
    rla
    inc hl
    ld [hl], a
    or a
    jp nz, Jump_007_5ca7

Jump_007_5ca4:
    call Call_007_4084

Jump_007_5ca7:
    ld hl, $c41f
    ld a, [hl]
    add $01
    ld c, a
    ld b, c
    ld [hl], b
    jp Jump_007_5c09


Jump_007_5cb3:
    ld hl, $c41e
    inc [hl]
    jp Jump_007_5bd8


Jump_007_5cba:
    ld hl, $c94c
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    ld hl, $c94d
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl+]
    ld [hl], a

Jump_007_5cce:
    xor a
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$10
    sbc [hl]
    jp nc, Jump_007_5d76

    inc hl
    ld a, [hl]
    add $02
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$13
    ld a, [hl]
    cp $04
    jp c, Jump_007_5cea

    call Call_000_144b

Jump_007_5cea:
    ld hl, sp+$0e
    ld a, [hl]
    cp $12
    jp c, Jump_007_5cf5

    call Call_000_144b

Jump_007_5cf5:
    ld hl, sp+$0e
    ld a, [hl+]
    add [hl]
    inc hl
    inc hl
    sub [hl]
    ld c, a
    dec c
    ld a, c
    cp $12
    jp c, Jump_007_5d07

    call Call_000_144b

Jump_007_5d07:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_5d45

    ld a, $01
    ldh [rVBK], a
    ld hl, sp+$0f
    ld a, [hl+]
    inc hl
    sub [hl]
    ld c, a
    ld de, $4047
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld hl, $5d7a
    push hl
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$12
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a
    jp Jump_007_5d70


Jump_007_5d45:
    ld hl, sp+$0f
    ld a, [hl+]
    inc hl
    sub [hl]
    ld c, a
    ld de, $4047
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld a, $02
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$11
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_2e64
    add sp, $05

Jump_007_5d70:
    ld hl, sp+$13
    inc [hl]
    jp Jump_007_5cce


Jump_007_5d76:
    add sp, $14
    pop bc
    ret


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    push bc
    add sp, -$02
    xor a
    ld hl, $c52b
    or [hl]
    jp z, Jump_007_5dbd

    ld a, $04
    sub [hl]
    ld c, a
    ld b, $00
    push bc
    ld hl, $0800
    push hl
    call Call_000_38b1
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    jp Jump_007_5dfc


Jump_007_5dbd:
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_007_5dcd

    ld de, $600b
    ld c, e
    ld b, d
    jp Jump_007_5dd2


Jump_007_5dcd:
    ld de, $5e0b
    ld c, e
    ld b, d

Jump_007_5dd2:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $c52a
    ld a, [hl]
    add $d8
    ld c, a
    ld b, $00
    or a
    rl c
    rl b
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
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    dec hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a

Jump_007_5dfc:
    di
    ld hl, sp+$00
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c952
    ld [hl+], a
    ld [hl], e
    ei
    add sp, $02
    pop bc
    ret


    cpl
    or e
    ret nc

    xor [hl]
    and [hl]
    xor d
    xor [hl]
    and [hl]
    push hl
    and d
    ld b, [hl]
    sbc a
    ret nc

    sbc e
    ld a, a
    sbc b
    ld d, d
    sub l
    ld b, l
    sub d
    ld e, c
    adc a
    adc c
    adc h
    push de
    adc c
    dec sp
    add a
    cp d
    add h
    ld d, c
    add d
    db $fd
    ld a, a
    cp [hl]
    ld a, l
    sub e
    ld a, e
    ld a, e
    ld a, c
    ld [hl], h
    ld [hl], a
    ld a, a
    ld [hl], l
    sbc d
    ld [hl], e
    call nz, $fd71
    ld l, a
    ld b, h
    ld l, [hl]
    sbc b
    ld l, h
    ld a, [$676a]
    ld l, c
    ldh [$67], a
    ld h, h
    ld h, [hl]
    di
    ld h, h
    adc h
    ld h, e
    cpl
    ld h, d
    db $db
    ld h, b
    sub b
    ld e, a
    ld c, [hl]
    ld e, [hl]
    dec d
    ld e, l
    db $e3
    ld e, e
    cp d
    ld e, d
    sub a
    ld e, c
    ld a, h
    ld e, b
    ld l, b
    ld d, a
    ld e, d
    ld d, [hl]
    ld d, e
    ld d, l
    ld d, d
    ld d, h
    ld d, a
    ld d, e
    ld h, d
    ld d, d
    ld [hl], d
    ld d, c
    adc b
    ld d, b
    and e
    ld c, a
    jp $e84e


    ld c, l
    ld de, $3f4d
    ld c, h
    ld [hl], d
    ld c, e
    xor c
    ld c, d
    db $e4
    ld c, c
    inc hl
    ld c, c
    ld h, [hl]
    ld c, b
    xor h
    ld b, a
    rst $30
    ld b, [hl]
    ld b, l
    ld b, [hl]
    sub [hl]
    ld b, l
    db $eb
    ld b, h
    ld b, e
    ld b, h
    sbc [hl]
    ld b, e
    db $fc
    ld b, d
    ld e, l
    ld b, d
    pop bc
    ld b, c
    jr z, jr_007_5eda

    sub d
    ld b, b
    cp $3f
    ld l, l
    ccf
    rst $18
    ld a, $53
    ld a, $c9
    dec a
    ld b, d
    dec a
    cp l
    inc a
    dec sp
    inc a
    cp d
    dec sp
    inc a
    dec sp
    ret nz

jr_007_5eb0:
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    call Call_007_5739
    add hl, sp
    ld [c], a
    jr c, jr_007_5f29

    jr c, @+$01

    scf
    adc a
    scf
    ld [hl+], a
    scf
    or [hl]
    ld [hl], $4c
    ld [hl], $e4
    dec [hl]
    ld a, l
    dec [hl]
    rla
    dec [hl]
    or e
    inc [hl]
    ld d, c
    inc [hl]
    ldh a, [$33]
    sub b
    inc sp
    ld [hl-], a
    inc sp

jr_007_5ed5:
    push de
    ld [hl-], a
    ld a, c
    ld [hl-], a
    rra

jr_007_5eda:
    ld [hl-], a
    add $31
    ld l, [hl]
    ld sp, $3117
    jp nz, $6d30

    jr nc, @+$1c

    jr nc, jr_007_5eb0

    cpl
    ld [hl], a
    cpl
    daa
    cpl
    ret c

    ld l, $8a
    ld l, $3e
    ld l, $f2
    dec l

jr_007_5ef5:
    and a
    dec l
    ld e, l
    dec l
    inc d
    dec l
    call z, $842c
    inc l
    ld a, $2c
    ld sp, hl
    dec hl
    or h
    dec hl
    ld [hl], b
    dec hl
    dec l

jr_007_5f08:
    dec hl
    db $eb
    ld a, [hl+]
    xor d
    ld a, [hl+]
    ld l, c
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    ld [$ac29], a
    add hl, hl
    ld l, [hl]
    add hl, hl
    ld sp, $f529
    jr z, jr_007_5ed5

    jr z, jr_007_5f9c

    jr z, @+$46

    jr z, jr_007_5f2c

    jr z, jr_007_5ef5

    daa
    sbc c
    daa
    ld h, c
    daa

jr_007_5f29:
    ld a, [hl+]
    daa
    db $f4

jr_007_5f2c:
    ld h, $be
    ld h, $89
    ld h, $54
    ld h, $20
    ld h, $ec
    dec h
    cp c
    dec h
    add [hl]
    dec h
    ld d, h
    dec h
    inc hl
    dec h
    ld a, [c]
    inc h
    pop bc
    inc h
    sub c
    inc h
    ld h, d
    inc h
    inc sp
    inc h
    inc b
    inc h
    sub $23
    xor c
    inc hl
    ld a, e
    inc hl
    ld c, a
    inc hl
    ld [hl+], a
    inc hl
    or $22
    sla d
    and b
    ld [hl+], a
    ld [hl], l
    ld [hl+], a
    ld c, e
    ld [hl+], a
    ld hl, $f822
    ld hl, $21cf
    and [hl]
    ld hl, $217e
    ld d, [hl]
    ld hl, $212f
    rlca
    ld hl, $20e1
    cp d
    jr nz, jr_007_5f08

    jr nz, @+$70

    jr nz, jr_007_5fc1

    jr nz, jr_007_5f9e

    jr nz, @+$01

    rra
    db $db
    rra
    or a
    rra
    sub e
    rra
    ld l, a
    rra
    ld c, h
    rra
    ld a, [hl+]
    rra
    rlca
    rra
    push hl
    ld e, $c3
    ld e, $a1

jr_007_5f90:
    ld e, $80
    ld e, $5f
    ld e, $3e
    ld e, $1d
    ld e, $fd
    dec e
    db $dd

jr_007_5f9c:
    dec e
    cp l

jr_007_5f9e:
    dec e
    sbc [hl]
    dec e
    ld a, a
    dec e

jr_007_5fa3:
    ld h, b
    dec e
    ld b, c
    dec e
    inc hl
    dec e
    inc b
    dec e
    rst $20
    inc e
    ret


    inc e
    xor e
    inc e
    adc [hl]

jr_007_5fb2:
    inc e
    ld [hl], c
    inc e
    ld d, h
    inc e

jr_007_5fb7:
    jr c, jr_007_5fd5

    dec de
    inc e
    rst $38
    dec de
    db $e3
    dec de
    ret z

    dec de

jr_007_5fc1:
    xor h
    dec de
    sub c
    dec de
    db $76
    dec de
    ld e, e
    dec de
    ld b, c
    dec de

jr_007_5fcb:
    ld h, $1b
    inc c
    dec de
    ld a, [c]
    ld a, [de]
    ret c

    ld a, [de]
    cp [hl]
    ld a, [de]

jr_007_5fd5:
    and l
    ld a, [de]
    adc h
    ld a, [de]
    ld [hl], e
    ld a, [de]
    ld e, d
    ld a, [de]
    ld b, c
    ld a, [de]

jr_007_5fdf:
    jr z, @+$1c

    db $10
    ld a, [de]
    ld hl, sp+$19
    ldh [rNR24], a
    ret z

    add hl, de
    or b
    add hl, de
    sbc c
    add hl, de
    add d
    add hl, de
    ld l, d
    add hl, de
    ld d, e
    add hl, de
    dec a
    add hl, de
    ld h, $19
    rrca
    add hl, de
    ld sp, hl
    jr jr_007_5fdf

    jr jr_007_5fcb

    jr jr_007_5fb7

    jr jr_007_5fa3

    jr jr_007_5f90

    jr jr_007_607c

    jr jr_007_6069

    jr jr_007_6056

    jr @-$7d

    or a
    rlca
    or e
    call nz, $b3ae
    xor d
    jp nc, Jump_000_1da6

    and e
    sub d
    sbc a
    inc l
    sbc h
    db $eb
    sbc b
    call $ce95
    sub d
    db $ed
    adc a
    jr z, jr_007_5fb2

    ld a, [hl]
    adc d
    xor $87
    ld [hl], l
    add l
    inc de
    add e
    add $80
    adc [hl]
    ld a, [hl]
    ld l, c
    ld a, h
    ld d, [hl]
    ld a, d
    ld d, l
    ld a, b
    ld h, h
    db $76
    add e
    ld [hl], h
    or c
    ld [hl], d
    db $ed
    ld [hl], b
    scf
    ld l, a
    adc [hl]
    ld l, l
    pop af
    ld l, e
    ld h, c
    ld l, d
    call c, Call_007_6268
    ld h, a
    ld a, [c]
    ld h, l
    adc l
    ld h, h
    ld sp, $de63
    ld h, c
    sub l
    ld h, b
    ld d, h

jr_007_6056:
    ld e, a
    dec de
    ld e, [hl]
    ld [$c05c], a
    ld e, e
    sbc [hl]
    ld e, d

jr_007_605f:
    add h
    ld e, c
    ld l, a
    ld e, b
    ld h, d
    ld d, a
    ld e, e
    ld d, [hl]
    ld e, d
    ld d, l

jr_007_6069:
    ld e, a
    ld d, h
    ld l, c
    ld d, e
    ld a, c
    ld d, d
    adc a
    ld d, c
    xor c
    ld d, b
    ret


    ld c, a
    db $ed
    ld c, [hl]
    ld d, $4e
    ld b, h
    ld c, l
    db $76

jr_007_607c:
    ld c, h
    xor h
    ld c, e
    and $4a
    dec h
    ld c, d
    ld h, a
    ld c, c
    xor l
    ld c, b
    or $47
    ld b, e
    ld b, a
    sub h
    ld b, [hl]
    add sp, $45
    ccf
    ld b, l
    sbc c
    ld b, h
    rst $30
    ld b, e
    ld d, a
    ld b, e
    cp e
    ld b, d
    ld hl, $8942
    ld b, c
    push af
    ld b, b
    ld h, e
    ld b, b
    call nc, $473f
    ccf
    cp h
    ld a, $34
    ld a, $af
    dec a
    dec hl
    dec a
    xor d
    inc a
    ld a, [hl+]
    inc a
    xor l
    dec sp
    ld [hl-], a

jr_007_60b4:
    dec sp
    cp c
    ld a, [hl-]
    ld b, c
    ld a, [hl-]
    call z, Call_007_5839
    add hl, sp
    and $38
    db $76
    jr c, jr_007_60ca

    jr c, jr_007_605f

    scf
    jr nc, jr_007_60fe

    rst $00
    ld [hl], $5f

jr_007_60ca:
    ld [hl], $f9
    dec [hl]
    sub h
    dec [hl]
    ld sp, $cf35
    inc [hl]
    ld l, [hl]
    inc [hl]
    rrca
    inc [hl]
    or c
    inc sp
    ld d, h
    inc sp
    ld sp, hl
    ld [hl-], a
    sbc a
    ld [hl-], a
    ld b, [hl]
    ld [hl-], a
    rst $28
    ld sp, $3198
    ld b, e
    ld sp, $30ef
    sbc h
    jr nc, @+$4c

    jr nc, @-$04

    cpl
    xor d
    cpl
    ld e, e
    cpl
    dec c
    cpl
    pop bc
    ld l, $75
    ld l, $2a
    ld l, $e0
    dec l
    sub a

jr_007_60fe:
    dec l
    ld c, a
    dec l
    ld [$c22d], sp
    inc l
    ld a, h
    inc l
    jr c, jr_007_6135

    db $f4
    dec hl
    or c
    dec hl
    ld l, a
    dec hl
    dec l

jr_007_6110:
    dec hl
    db $ed
    ld a, [hl+]
    xor l
    ld a, [hl+]
    ld l, [hl]
    ld a, [hl+]
    cpl
    ld a, [hl+]
    ld a, [c]
    add hl, hl
    or l
    add hl, hl

jr_007_611d:
    ld a, b
    add hl, hl
    dec a
    add hl, hl
    ld [bc], a
    add hl, hl
    rst $00
    jr z, jr_007_60b4

    jr z, @+$57

    jr z, jr_007_6146

    jr z, jr_007_6110

    daa
    xor l
    daa
    ld [hl], a
    daa
    ld b, c
    daa
    dec bc
    daa

jr_007_6135:
    sub $26
    and d
    ld h, $6e
    ld h, $3b
    ld h, $08
    ld h, $d6
    dec h
    and h
    dec h
    ld [hl], e
    dec h
    ld b, d

jr_007_6146:
    dec h
    ld [de], a
    dec h
    db $e3
    inc h
    or e
    inc h
    add l
    inc h
    ld d, [hl]
    inc h
    add hl, hl
    inc h
    ei
    inc hl
    adc $23
    and d
    inc hl
    db $76
    inc hl
    ld c, d
    inc hl
    rra
    inc hl
    db $f4
    ld [hl+], a
    jp z, $a022

    ld [hl+], a
    db $76
    ld [hl+], a
    ld c, l
    ld [hl+], a
    inc h
    ld [hl+], a
    ei
    ld hl, $21d3
    xor h
    ld hl, $2184
    ld e, l
    ld hl, $2137
    db $10
    ld hl, $20ea
    push bc
    jr nz, jr_007_611d

    jr nz, jr_007_61fb

    jr nz, @+$58

    jr nz, jr_007_61b6

    jr nz, jr_007_6194

    jr nz, @-$14

    rra
    rst $00
    rra
    and e
    rra
    add c
    rra
    ld e, [hl]
    rra
    inc a
    rra
    ld a, [de]

jr_007_6194:
    rra
    ld sp, hl
    ld e, $d7
    ld e, $b6
    ld e, $95
    ld e, $75
    ld e, $55
    ld e, $35
    ld e, $15
    ld e, $f6
    dec e
    rst $10
    dec e
    cp b
    dec e
    sbc c
    dec e
    ld a, d
    dec e
    ld e, h
    dec e
    ld a, $1d
    ld hl, $031d

jr_007_61b6:
    dec e
    and $1c
    ret


    inc e
    xor h
    inc e
    sub b
    inc e
    ld [hl], e
    inc e
    ld d, a
    inc e
    dec sp
    inc e
    jr nz, jr_007_61e3

    inc b
    inc e
    jp hl


    dec de
    adc $1b
    or e
    dec de
    sbc b
    dec de
    ld a, [hl]
    dec de
    ld h, e
    dec de
    ld c, c
    dec de
    jr nc, jr_007_61f4

    ld d, $1b
    db $fc
    ld a, [de]
    db $e3
    ld a, [de]
    jp z, $b11a

    ld a, [de]

jr_007_61e3:
    sbc b
    ld a, [de]
    add b
    ld a, [de]
    ld h, a
    ld a, [de]
    ld c, a
    ld a, [de]
    scf

jr_007_61ec:
    ld a, [de]
    rra
    ld a, [de]
    rlca
    ld a, [de]
    ldh a, [rNR24]
    ret c

jr_007_61f4:
    add hl, de
    pop bc
    add hl, de
    xor d
    add hl, de
    sub e
    add hl, de

jr_007_61fb:
    ld a, l
    add hl, de
    ld h, [hl]
    add hl, de
    ld d, b
    add hl, de
    add hl, sp
    add hl, de
    inc hl

jr_007_6204:
    add hl, de
    dec c
    add hl, de
    rst $30
    jr jr_007_61ec

    jr jr_007_6204

    ld [bc], a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $5010
    add hl, de
    jp c, Jump_007_621a

    call Call_000_144b

Jump_007_621a:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $5000
    add hl, de
    jp nc, Jump_007_6229

    call Call_000_144b

Jump_007_6229:
    ld hl, sp+$04
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
    ret


Call_007_623e:
    push bc
    add sp, -$0c

Jump_007_6241:
    ld hl, sp+$0a
    ld [hl], $0f
    inc hl
    ld [hl], $00

Jump_007_6248:
    ld hl, sp+$0a
    ld e, [hl]
    ld d, $00
    ld hl, $aff0
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
    ld hl, $0001
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$03
    ld [hl], a
    dec hl
    ld [hl], e

Call_007_6268:
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
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
    ld hl, sp+$0c
    ld [hl], e
    add sp, $03
    ld hl, sp+$06
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$07
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
    ld hl, sp+$0b
    ld [hl], e
    add sp, $03
    xor a
    ld a, [hl+]
    sbc [hl]
    ld a, $00
    rla
    ld b, a
    or b
    jp z, Jump_007_62cc

    inc hl
    inc hl
    ld [hl], $01
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call $620b
    add sp, $03
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call $620b
    add sp, $03

Jump_007_62cc:
    ld hl, sp+$0a
    ld a, [hl]
    add $ff
    ld c, a
    ld [hl], c
    xor a
    or [hl]
    jp nz, Jump_007_6248

    xor a
    inc hl
    or [hl]
    jp nz, Jump_007_6241

    add sp, $0c
    pop bc
    ret


Call_007_62e2:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $00
    ld hl, sp+$07
    ld a, [hl]
    cp $ff
    jp nz, Jump_007_62f6

    ld e, $00
    jp Jump_007_633a


Jump_007_62f6:
    ld hl, sp+$02
    ld e, [hl]
    ld d, $00
    ld hl, $aff0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    ld hl, sp+$07
    ld a, [hl]
    sbc c
    jp nc, Jump_007_6323

    ld e, $00
    jp Jump_007_633a


Jump_007_6323:
    ld hl, sp+$07
    ld a, [hl]
    cp c
    jp nz, Jump_007_632f

    ld e, $01
    jp Jump_007_633a


Jump_007_632f:
    ld hl, sp+$02
    inc [hl]
    ld a, [hl]
    cp $10
    jp c, Jump_007_62f6

    ld e, $00

Jump_007_633a:
    add sp, $03
    pop bc
    ret


Call_007_633e:
    push bc
    ld hl, $afff
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $ff
    jp z, Jump_007_6364

    ld c, $3e
    ld b, $76
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_007_6375


Jump_007_6364:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld hl, $afff
    push hl
    call $620b
    add sp, $03
    call Call_007_623e

Jump_007_6375:
    pop bc
    ret


Call_007_6377:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_007_63d1

    ld hl, sp+$02
    ld [hl], $00

Jump_007_638e:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_007_63ce

    ld e, a
    ld d, $00
    ld hl, $aff0
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
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$07
    ld a, [hl]
    cp c
    jp nz, Jump_007_63c8

    ld a, $ff
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call $620b
    add sp, $03

Jump_007_63c8:
    ld hl, sp+$02
    inc [hl]
    jp Jump_007_638e


Jump_007_63ce:
    call Call_007_623e

Jump_007_63d1:
    add sp, $03
    pop bc
    ret


Call_007_63d5:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_007_62e2
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_007_63f3

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_007_6377
    add sp, $01
    jp Jump_007_63fd


Jump_007_63f3:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_007_633e
    add sp, $01

Jump_007_63fd:
    pop bc
    ret


    ld hl, $0010
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $aff0
    push hl
    call Call_000_3892
    add sp, $05
    ret


Call_007_6411:
    push bc
    add sp, -$04
    ld hl, sp+$03
    ld [hl], $0f

Jump_007_6418:
    ld hl, sp+$03
    ld e, [hl]
    ld d, $00
    ld hl, $aff0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp z, Jump_007_647c

    xor a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, sp+$08
    sbc [hl]
    jp c, Jump_007_647c

    xor a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, sp+$09
    sbc [hl]
    jp nc, Jump_007_6463

    ld a, $ff
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call $620b
    add sp, $03
    jp Jump_007_647c


Jump_007_6463:
    ld hl, sp+$02
    ld a, [hl]
    ld hl, sp+$09
    sub [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$08
    add [hl]
    ld hl, sp+$02
    ld [hl], a
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call $620b
    add sp, $03

Jump_007_647c:
    ld hl, sp+$03
    ld c, [hl]
    dec [hl]
    xor a
    or c
    jp nz, Jump_007_6418

    call Call_007_623e
    add sp, $04
    pop bc
    ret


Call_007_648c:
    push bc
    add sp, -$04
    ld hl, sp+$03
    ld [hl], $0f

Jump_007_6493:
    ld hl, sp+$03
    ld e, [hl]
    ld d, $00
    ld hl, $aff0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp z, Jump_007_64f8

    xor a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, sp+$08
    sbc [hl]
    jp c, Jump_007_64f8

    ld hl, sp+$02
    ld a, [hl]
    ld hl, sp+$08
    sub [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$09
    add [hl]
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, sp+$02
    sbc [hl]
    jp nc, Jump_007_64ec

    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call $620b
    add sp, $03
    jp Jump_007_64f8


Jump_007_64ec:
    ld a, $ff
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call $620b
    add sp, $03

Jump_007_64f8:
    ld hl, sp+$03
    ld c, [hl]
    dec [hl]
    xor a
    or c
    jp nz, Jump_007_6493

    add sp, $04
    pop bc
    ret


Call_007_6505:
    push bc
    add sp, -$04
    ld de, $cb95
    ld a, $00
    ld [de], a
    ld hl, $0001
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
    ld a, $00
    ld [de], a
    ld de, $cb95
    ld hl, $0002
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
    ld a, $01
    ld [de], a
    ld de, $cb98
    ld a, $00
    ld [de], a
    ld hl, $cb93
    ld [hl], $00
    ld hl, $cb92
    ld a, [hl]
    cp $40
    jp nc, Jump_007_65c4

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
    or a
    jp z, Jump_007_6566

    cp $02
    jp z, Jump_007_65b4

    cp $03
    jp z, Jump_007_65bc

    jp Jump_007_65c4


Jump_007_6566:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld hl, $cb7e
    ld a, [hl]
    or a
    jp z, Jump_007_6583

    cp $01
    jp z, Jump_007_6594

    cp $02
    jp z, Jump_007_65a5

    jp Jump_007_65c4


Jump_007_6583:
    ld de, $cb95
    ld a, $01
    ld [de], a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    jp Jump_007_65c4


Jump_007_6594:
    ld de, $cb95
    ld a, $00
    ld [de], a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    jp Jump_007_65c4


Jump_007_65a5:
    ld de, $cb95
    ld a, $01
    ld [de], a
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    jp Jump_007_65c4


Jump_007_65b4:
    ld hl, $cb93
    ld [hl], $01
    jp Jump_007_65c4


Jump_007_65bc:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a

Jump_007_65c4:
    ld hl, $c574
    ld [hl], $91
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $49
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $cb92
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    add sp, $04
    pop bc
    ret


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
    ld [bc], a
    nop
    nop
    nop
    ld e, $14
    nop
    nop
    ld hl, $000a
    nop
    inc de
    rla
    nop
    nop
    nop
    dec de
    nop
    nop
    nop
    ld b, $00
    ld bc, $0b00
    nop
    nop
    inc d
    add hl, bc
    nop
    inc b
    nop
    rrca
    nop
    nop
    dec e
    inc de
    nop
    nop
    nop
    jr jr_007_6624

jr_007_6624:
    ld c, $00
    ld d, $00
    ld de, $0000
    nop
    nop
    db $10
    ld [$0003], sp
    nop
    dec c
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    db $10
    ld [hl+], a
    add hl, de
    nop
    rrca
    jr nz, jr_007_665c

    nop
    ld [de], a
    nop
    ld a, [de]
    nop
    nop
    inc e
    rlca
    nop
    nop
    nop
    inc c
    nop
    nop
    ld de, $0000
    dec b
    inc hl
    ld c, $00

jr_007_665c:
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
    ldh a, [$50]
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld b, $00
    ld bc, $0c00
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    nop
    sub b
    nop
    nop
    nop
    ld [hl], b
    nop
    jr nz, jr_007_66aa

jr_007_66aa:
    nop
    nop
    nop
    dec c
    dec b
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    rrca
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
    stop
    and b
    nop
    nop
    jr nz, jr_007_6727

    nop
    jr nc, jr_007_66ca

jr_007_66ca:
    or b
    nop
    nop
    ret nc

    inc b
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    ld c, $00
    nop
    ld [bc], a
    nop
    dec bc
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

Call_007_66ec:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, $fe
    add c
    ld e, a
    ld a, $66
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld e, c
    pop bc
    ret


    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_007_6741

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop

Call_007_670f:
    push bc
    add sp, -$03
    call Call_007_6505
    ld c, $3b
    ld b, $49
    ld hl, $cb92
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a

jr_007_6727:
    add sp, $04
    ld de, $c432
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_007_6769

    ld hl, sp+$02
    ld [hl], $00

Jump_007_6736:
    ld hl, sp+$02
    ld a, [hl]
    cp $05
    jp nc, Jump_007_67c2

    ld de, $c43b

jr_007_6741:
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld de, $c432
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_007_675d

    ld b, $20

Jump_007_675d:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    inc hl
    inc [hl]
    jp Jump_007_6736


Jump_007_6769:
    ld de, $c43b
    ld a, $49
    ld [de], a
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $cb92
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_007_66ec
    ld c, e
    add sp, $01
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c43b
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $cb92
    ld a, [hl]
    and $0f
    ld c, a
    push af
    inc sp
    call Call_007_66ec
    ld c, e
    add sp, $01
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c43e
    ld a, $20
    ld [de], a
    ld de, $c43f
    ld [de], a

Jump_007_67c2:
    ld c, $28
    ld b, $78
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    add sp, $03
    pop bc
    ret


Call_007_67d4:
    ld hl, $c574
    ld [hl], $b0
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $cb90
    ld a, [hl]
    cp $09
    jp z, Jump_007_6828

    cp $15
    jp z, Jump_007_681c

    cp $21
    jp z, Jump_007_6810

    cp $2d
    jp z, Jump_007_6804

    cp $fd
    jp z, Jump_007_6834

    jp Jump_007_683d


Jump_007_6804:
    ld hl, $684b
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_683d


Jump_007_6810:
    ld hl, $6850
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_683d


Jump_007_681c:
    ld hl, $6855
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_683d


Jump_007_6828:
    ld hl, $685a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_683d


Jump_007_6834:
    ld hl, $685f
    push hl
    call Call_000_2eda
    add sp, $02

Jump_007_683d:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $64
    ret


    ld c, a
    scf
    dec l
    jr c, jr_007_6850

jr_007_6850:
    ld c, a
    ld [hl], $2d
    scf
    nop
    ld c, a
    dec [hl]
    dec l
    ld [hl], $00
    ld c, a
    inc [hl]
    dec l
    dec [hl]
    nop
    ld c, a
    inc sp
    dec l
    inc [hl]
    nop
    push bc
    add sp, -$04
    ld hl, $cb7f
    ld c, [hl]
    ld a, $80
    add c
    ld e, a
    ld a, $cb
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $cba0
    ld a, [hl]
    ld hl, $cb9e
    add [hl]
    ld hl, sp+$03
    ld [hl], a
    ld a, c
    ld hl, $cb9f
    or [hl]
    ld hl, sp+$02
    ld [hl], a
    ld a, c
    bit 7, a
    jp z, Jump_007_6894

    inc hl
    ld a, [hl]
    or $04
    ld [hl], a

Jump_007_6894:
    ld hl, $cb7f
    inc [hl]
    ld a, [hl]
    and $0f
    ld [hl], a
    ld a, c
    cp $03
    jp z, Jump_007_68af

    cp $07
    jp z, Jump_007_68b9

    cp $14
    jp z, Jump_007_68c8

    jp Jump_007_68e5


Jump_007_68af:
    ld hl, $cb9e
    ld [hl], $01
    ld e, $ff
    jp Jump_007_6dea


Jump_007_68b9:
    xor a
    ld hl, $cb9f
    or [hl]
    jp nz, Jump_007_68e5

    ld [hl], $80
    ld e, $ff
    jp Jump_007_6dea


Jump_007_68c8:
    xor a
    ld hl, $cb9f
    or [hl]
    jp z, Jump_007_68d5

    ld c, $00
    jp Jump_007_68d7


Jump_007_68d5:
    ld c, $02

Jump_007_68d7:
    ld hl, $cba0
    ld [hl], c
    ld hl, $cb9f
    ld [hl], $00
    ld e, $ff
    jp Jump_007_6dea


Jump_007_68e5:
    ld hl, $cb9f
    ld [hl], $00
    ld hl, $cb9e
    ld [hl], $00
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 2, a
    jp z, Jump_007_69fe

    xor a
    ld a, $a0
    dec hl
    sbc [hl]
    jp c, Jump_007_6912

    ld a, [hl]
    cp $80
    jp c, Jump_007_6912

    add $80
    ld hl, $cb92
    ld [hl], a
    call Call_007_670f
    jp Jump_007_69f9


Jump_007_6912:
    ld hl, sp+$02
    ld a, [hl]
    cp $b3
    jp z, Jump_007_693d

    ld hl, sp+$02
    ld a, [hl]
    cp $b4
    jp z, Jump_007_694a

    ld hl, sp+$02
    ld a, [hl]
    cp $b5
    jp z, Jump_007_6957

    ld hl, sp+$02
    ld a, [hl]
    cp $b6
    jp z, Jump_007_6964

    ld hl, sp+$02
    ld a, [hl]
    cp $b7
    jp z, Jump_007_6971

    jp Jump_007_697e


Jump_007_693d:
    ld hl, $cb90
    ld [hl], $fd
    call Call_007_67d4
    ld e, $ff
    jp Jump_007_6dea


Jump_007_694a:
    ld hl, $cb90
    ld [hl], $09
    call Call_007_67d4
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6957:
    ld hl, $cb90
    ld [hl], $15
    call Call_007_67d4
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6964:
    ld hl, $cb90
    ld [hl], $21
    call Call_007_67d4
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6971:
    ld hl, $cb90
    ld [hl], $2d
    call Call_007_67d4
    ld e, $ff
    jp Jump_007_6dea


Jump_007_697e:
    ld hl, $c574
    ld [hl], $af
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$02
    ld a, [hl]
    cp $a1
    jp z, Jump_007_69a9

    ld hl, sp+$02
    ld a, [hl]
    cp $a2
    jp z, Jump_007_69c1

    ld hl, sp+$02
    ld a, [hl]
    cp $a3
    jp z, Jump_007_69d9

    jp Jump_007_69ec


Jump_007_69a9:
    ld de, $cb95
    ld a, $01
    ld [de], a
    ld de, $cb96
    ld a, $00
    ld [de], a
    ld hl, $6dee
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_69ec


Jump_007_69c1:
    ld de, $cb95
    ld a, $00
    ld [de], a
    ld de, $cb96
    ld a, $01
    ld [de], a
    ld hl, $6df4
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_69ec


Jump_007_69d9:
    ld de, $cb95
    ld a, $01
    ld [de], a
    ld de, $cb96
    ld [de], a
    ld hl, $6dfa
    push hl
    call Call_000_2eda
    add sp, $02

Jump_007_69ec:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $64

Jump_007_69f9:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_69fe:
    ld hl, sp+$02
    ld a, [hl]
    cp $07
    jp z, Jump_007_6dcb

    ld hl, sp+$02
    ld a, [hl]
    cp $0f
    jp z, Jump_007_6d86

    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp z, Jump_007_6b6d

    ld hl, sp+$02
    ld a, [hl]
    cp $17
    jp z, Jump_007_6b25

    ld hl, sp+$02
    ld a, [hl]
    cp $18
    jp z, Jump_007_6b86

    ld hl, sp+$02
    ld a, [hl]
    cp $27
    jp z, Jump_007_6b55

    ld hl, sp+$02
    ld a, [hl]
    cp $28
    jp z, Jump_007_6c93

    ld hl, sp+$02
    ld a, [hl]
    cp $2d
    jp z, Jump_007_6af5

    ld hl, sp+$02
    ld a, [hl]
    cp $2f
    jp z, Jump_007_6aeb

    ld hl, sp+$02
    ld a, [hl]
    cp $30
    jp z, Jump_007_6c7f

    ld hl, sp+$02
    ld a, [hl]
    cp $40
    jp z, Jump_007_6d38

    ld hl, sp+$02
    ld a, [hl]
    cp $48
    jp z, Jump_007_6d5f

    ld hl, sp+$02
    ld a, [hl]
    cp $4a
    jp z, Jump_007_6c05

    ld hl, sp+$02
    ld a, [hl]
    cp $50
    jp z, Jump_007_6c6b

    ld hl, sp+$02
    ld a, [hl]
    cp $57
    jp z, Jump_007_6b3d

    ld hl, sp+$02
    ld a, [hl]
    cp $5f
    jp z, Jump_007_6ae1

    ld hl, sp+$02
    ld a, [hl]
    cp $60
    jp z, Jump_007_6ba0

    ld hl, sp+$02
    ld a, [hl]
    cp $68
    jp z, Jump_007_6bd2

    ld hl, sp+$02
    ld a, [hl]
    cp $6b
    jp z, Jump_007_6b0d

    ld hl, sp+$02
    ld a, [hl]
    cp $70
    jp z, Jump_007_6dad

    ld hl, sp+$02
    ld a, [hl]
    cp $8f
    jp z, Jump_007_6d7d

    ld hl, sp+$02
    ld a, [hl]
    cp $9b
    jp z, Jump_007_6dd5

    ld hl, sp+$02
    ld a, [hl]
    cp $c0
    jp z, Jump_007_6d2f

    ld hl, sp+$02
    ld a, [hl]
    cp $c7
    jp z, Jump_007_6dd0

    ld hl, sp+$02
    ld a, [hl]
    cp $c8
    jp z, Jump_007_6d56

    ld hl, sp+$02
    ld a, [hl]
    cp $ca
    jp z, Jump_007_6c54

    ld hl, sp+$02
    ld a, [hl]
    cp $cb
    jp z, Jump_007_6dda

    ld hl, sp+$02
    ld a, [hl]
    cp $f0
    jp z, Jump_007_6da4

    jp Jump_007_6ddf


Jump_007_6ae1:
    ld hl, $c40c
    ld [hl], $01
    ld e, $24
    jp Jump_007_6dea


Jump_007_6aeb:
    ld hl, $c40c
    ld [hl], $01
    ld e, $28
    jp Jump_007_6dea


Jump_007_6af5:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_007_6b08

    ld hl, $c40b
    ld [hl], $01
    ld e, $c0
    jp Jump_007_6dea


Jump_007_6b08:
    ld e, $80
    jp Jump_007_6dea


Jump_007_6b0d:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 0, a
    jp nz, Jump_007_6b20

    ld hl, $c40b
    ld [hl], $01
    ld e, $42
    jp Jump_007_6dea


Jump_007_6b20:
    ld e, $02
    jp Jump_007_6dea


Jump_007_6b25:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 0, a
    jp nz, Jump_007_6b38

    ld hl, $c40b
    ld [hl], $01
    ld e, $41
    jp Jump_007_6dea


Jump_007_6b38:
    ld e, $01
    jp Jump_007_6dea


Jump_007_6b3d:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 0, a
    jp nz, Jump_007_6b50

    ld hl, $c40b
    ld [hl], $01
    ld e, $44
    jp Jump_007_6dea


Jump_007_6b50:
    ld e, $04
    jp Jump_007_6dea


Jump_007_6b55:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 0, a
    jp nz, Jump_007_6b68

    ld hl, $c40b
    ld [hl], $01
    ld e, $48
    jp Jump_007_6dea


Jump_007_6b68:
    ld e, $08
    jp Jump_007_6dea


Jump_007_6b6d:
    xor a
    ld hl, $cb92
    or [hl]
    jp z, Jump_007_6b81

    ld hl, $cb91
    ld [hl], $00
    ld hl, $cb92
    dec [hl]
    call Call_007_670f

Jump_007_6b81:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6b86:
    ld hl, $cb92
    ld a, [hl]
    cp $40
    jp z, Jump_007_6b9b

    ld hl, $cb91
    ld [hl], $00
    ld hl, $cb92
    inc [hl]
    call Call_007_670f

Jump_007_6b9b:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6ba0:
    xor a
    ld hl, $cb94
    or [hl]
    jp z, Jump_007_6bcd

    ld hl, $c574
    ld [hl], $91
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $41
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $cb94
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_007_6bcd:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6bd2:
    ld hl, $cb94
    ld a, [hl]
    cp $40
    jp z, Jump_007_6c00

    ld hl, $c574
    ld [hl], $91
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $41
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $cb94
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_007_6c00:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6c05:
    di
    ld a, $00
    ldh [$8b], a

Jump_007_6c0a:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_007_6c4e

    ld c, a
    ld a, $95
    add c
    ld e, a
    ld a, $cb
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_007_6c45

    ldh a, [$8b]
    ld c, a
    ld a, $9a
    add c
    ld e, a
    ld a, $cb
    adc $00
    ld d, a
    ld hl, $cb94
    ld a, [hl]
    or $80
    ld [de], a
    ld a, [hl]
    ldh [$8f], a
    ld c, $79
    ld b, $46
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_178a
    add sp, $03

Jump_007_6c45:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_007_6c0a


Jump_007_6c4e:
    ei
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6c54:
    ld de, $cb9a
    ld a, $00
    ld [de], a
    ld de, $cb9b
    ld [de], a
    ld de, $cb9c
    ld [de], a
    ld de, $cb9d
    ld [de], a
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6c6b:
    ld hl, $cb90
    ld a, [hl]
    cp $fd
    jp z, Jump_007_6c7a

    add $f4
    ld [hl], a
    call Call_007_67d4

Jump_007_6c7a:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6c7f:
    ld hl, $cb90
    ld a, [hl]
    cp $2d
    jp z, Jump_007_6c8e

    add $0c
    ld [hl], a
    call Call_007_67d4

Jump_007_6c8e:
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6c93:
    ld hl, $cb91
    ld [hl], $00
    ld hl, $c574
    ld [hl], $af
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld de, $cb95
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_007_6cd7

    ld a, $95
    add $01
    ld b, a
    ld a, $cb
    adc $00
    ld c, a
    ld e, b
    ld d, c
    ld a, [de]
    dec hl
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_007_6cd7

    ld a, $00
    ld [de], a
    ld hl, $6e00
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_6d1d


Jump_007_6cd7:
    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_007_6cfe

    ld bc, $cb96
    ld a, [bc]
    dec hl
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_007_6cfe

    ld de, $cb95
    ld a, $00
    ld [de], a
    ld a, $01
    ld [bc], a
    ld hl, $6e06
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_007_6d1d


Jump_007_6cfe:
    xor a
    ld hl, sp+$01
    or [hl]
    jp nz, Jump_007_6d1d

    ld de, $cb96
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_007_6d1d

    ld de, $cb95
    ld a, $01
    ld [de], a
    ld hl, $6e0c
    push hl
    call Call_000_2eda
    add sp, $02

Jump_007_6d1d:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $64
    ld e, $ff
    jp Jump_007_6dea


Jump_007_6d2f:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_007_6ddf

Jump_007_6d38:
    ld hl, $cb99
    ld [hl], $00
    ld de, $c0a0
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_007_6d4c

    ld e, $20
    jp Jump_007_6dea


Jump_007_6d4c:
    ld hl, $c40c
    ld [hl], $01
    ld e, $60
    jp Jump_007_6dea


Jump_007_6d56:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_007_6ddf

Jump_007_6d5f:
    ld hl, $cb99
    ld [hl], $01
    ld de, $c0a1
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_007_6d73

    ld e, $20
    jp Jump_007_6dea


Jump_007_6d73:
    ld hl, $c40c
    ld [hl], $01
    ld e, $60
    jp Jump_007_6dea


Jump_007_6d7d:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_007_6ddf

Jump_007_6d86:
    ld hl, $cb99
    ld [hl], $02
    ld de, $c0a2
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_007_6d9a

    ld e, $20
    jp Jump_007_6dea


Jump_007_6d9a:
    ld hl, $c40c
    ld [hl], $01
    ld e, $60
    jp Jump_007_6dea


Jump_007_6da4:
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_007_6ddf

Jump_007_6dad:
    ld hl, $cb99
    ld [hl], $03
    ld de, $c0a3
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_007_6dc1

    ld e, $20
    jp Jump_007_6dea


Jump_007_6dc1:
    ld hl, $c40c
    ld [hl], $01
    ld e, $60
    jp Jump_007_6dea


Jump_007_6dcb:
    ld e, $0d
    jp Jump_007_6dea


Jump_007_6dd0:
    ld e, $0c
    jp Jump_007_6dea


Jump_007_6dd5:
    ld e, $0e
    jp Jump_007_6dea


Jump_007_6dda:
    ld e, $0f
    jp Jump_007_6dea


Jump_007_6ddf:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_007_6e12
    ld c, e
    add sp, $01

Jump_007_6dea:
    add sp, $04
    pop bc
    ret


    ld d, b
    ld d, l
    ld sp, $2020
    nop
    ld d, b
    ld d, l
    jr nz, jr_007_6e18

    ld [hl-], a
    nop
    ld d, b
    ld d, l
    ld sp, $322b
    nop
    ld d, b
    ld d, l
    ld sp, $2020
    nop
    ld d, b
    ld d, l
    jr nz, jr_007_6e2a

    ld [hl-], a
    nop
    ld d, b
    ld d, l
    ld sp, $322b
    nop

Call_007_6e12:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]

jr_007_6e18:
    bit 7, a
    jp nz, Jump_007_6f38

    ld hl, sp+$01
    ld [hl], $00
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_007_6e3b

    xor a

jr_007_6e2a:
    ld hl, $cb7d
    or [hl]
    jp nz, Jump_007_6e3b

    ld hl, $cb93
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    jp Jump_007_6e8f


Jump_007_6e3b:
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp nz, Jump_007_6e8a

    ld hl, sp+$01
    ld [hl], $01
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_007_6e55

    ld a, $01
    jr jr_007_6e56

Jump_007_6e55:
    xor a

jr_007_6e56:
    ld hl, sp+$00
    ld [hl], a
    ld b, $aa
    ld c, $4c
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    xor a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    xor a
    ld hl, sp+$00
    or [hl]
    jr nz, jr_007_6e80

    xor a
    or c

jr_007_6e80:
    jr z, jr_007_6e84

    ld a, $01

jr_007_6e84:
    ld hl, sp+$02
    ld [hl], a
    jp Jump_007_6e8f


Jump_007_6e8a:
    ld e, $00
    jp Jump_007_6fd0


Jump_007_6e8f:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_6eb0

    ld hl, sp+$08
    ld c, [hl]
    ld a, $6c
    add c
    ld e, a
    ld a, $66
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_007_6ee0

    ld e, $00
    jp Jump_007_6fd0


Jump_007_6eb0:
    ld hl, sp+$08
    ld b, [hl]
    ld a, $ec
    add b
    ld e, a
    ld a, $65
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    xor a
    or [hl]
    jp nz, Jump_007_6eca

    ld e, $00
    jp Jump_007_6fd0


Jump_007_6eca:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $cb90
    add [hl]
    ld hl, sp+$03
    ld [hl], a
    xor a
    ld a, $6c
    sbc [hl]
    jp nc, Jump_007_6ee0

    ld e, $00
    jp Jump_007_6fd0


Jump_007_6ee0:
    xor a
    ld hl, sp+$01
    or [hl]
    jp z, Jump_007_6f07

    inc hl
    inc hl
    ld a, [hl]
    ld hl, $cb7d
    cp [hl]
    jr nz, jr_007_6ef3

    jp Jump_007_6fc0


jr_007_6ef3:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $cb7d
    ld [hl], a
    ld hl, $c40a
    ld [hl], $01
    ld hl, $c576
    ld [hl], $00
    jp Jump_007_6fc0


Jump_007_6f07:
    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_007_6f2e

    inc hl
    ld a, [hl]
    and $0f
    jr nz, jr_007_6f17

    jp Jump_007_6f1c


jr_007_6f17:
    ld b, $f0
    jp Jump_007_6f1e


Jump_007_6f1c:
    ld b, $0f

Jump_007_6f1e:
    ld hl, $cb91
    ld a, [hl]
    and b
    ld [hl], a
    ld hl, sp+$03
    or [hl]
    ld hl, $cb91
    ld [hl], a
    jp Jump_007_6fc0


Jump_007_6f2e:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $cb91
    ld [hl], a
    jp Jump_007_6fc0


Jump_007_6f38:
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp nz, Jump_007_6fc0

    ld hl, sp+$08
    ld a, [hl]
    and $7f
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_007_6f54

    ld a, $01
    jr jr_007_6f55

Jump_007_6f54:
    xor a

jr_007_6f55:
    ld hl, sp+$00
    ld [hl], a
    ld c, $aa
    ld b, $4c
    ld hl, $c417
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    xor a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    xor a
    ld hl, sp+$00
    or [hl]
    jr nz, jr_007_6f7d

    xor a
    or c

jr_007_6f7d:
    jr z, jr_007_6f81

    ld a, $01

jr_007_6f81:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_007_6f9a

    ld de, $666c
    ld hl, sp+$08
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    jp Jump_007_6fb1


Jump_007_6f9a:
    ld de, $65ec
    ld hl, sp+$08
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld a, [hl]
    ld hl, $cb90
    add [hl]
    ld hl, sp+$03
    ld [hl], a

Jump_007_6fb1:
    ld hl, $cb7d
    ld a, [hl]
    ld hl, sp+$03
    cp [hl]
    jp nz, Jump_007_6fc0

    ld hl, $cb7d
    ld [hl], $00

Jump_007_6fc0:
    xor a
    ld hl, $cb7d
    or [hl]
    jp z, Jump_007_6fcd

    ld c, $10
    jp Jump_007_6fcf


Jump_007_6fcd:
    ld c, $00

Jump_007_6fcf:
    ld e, c

Jump_007_6fd0:
    add sp, $04
    pop bc
    ret


Call_007_6fd4:
    push bc

Jump_007_6fd5:
    xor a
    ld hl, $cb7c
    or [hl]
    jp z, Jump_007_6fd5

    dec [hl]
    ld hl, $cb7f
    ld c, [hl]
    inc [hl]
    ld a, $80
    add c
    ld e, a
    ld a, $cb
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, [hl]
    and $0f
    ld [hl], a
    ld e, c
    pop bc
    ret


Call_007_6ff5:
    ld hl, $000a
    push hl
    call Call_000_3986
    add sp, $02

Jump_007_6ffe:
    xor a
    ld hl, $cb7c
    or [hl]
    jp z, Jump_007_700c

    call Call_007_6fd4
    jp Jump_007_6ffe


Jump_007_700c:
    call Call_000_347d
    ret


Call_007_7010:
    push bc
    call Call_007_6ff5
    ld c, $00

Jump_007_7016:
    ld a, c
    cp $14
    jp z, Jump_007_7055

    call Call_007_6fd4
    ld b, e
    ld a, b
    cp $03
    jp z, Jump_007_702b

    ld e, $00
    jp Jump_007_7057


Jump_007_702b:
    call Call_007_6fd4
    ld b, e
    ld a, b
    cp $07
    jp z, Jump_007_703d

    cp $27
    jp nz, Jump_007_704c

    jp Jump_007_7051


Jump_007_703d:
    call Call_007_6fd4
    ld b, e
    ld a, b
    cp $27
    jp z, Jump_007_7051

    ld e, $00
    jp Jump_007_7057


Jump_007_704c:
    ld e, $00
    jp Jump_007_7057


Jump_007_7051:
    inc c
    jp Jump_007_7016


Jump_007_7055:
    ld e, $01

Jump_007_7057:
    pop bc
    ret


    push bc
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_007_7074

    ld hl, $c402
    ld [hl], $0e
    ld bc, $6d3b
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_007_7074:
    call Call_000_17ca
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld hl, $7140
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld hl, $7155
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $60
    inc hl
    ld [hl], $98
    ld hl, $7168
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $98
    ld hl, $7179
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $a0
    inc hl
    ld [hl], $98
    ld hl, $cb66
    ld [hl], $04

Jump_007_70d0:
    call Call_007_7010
    ld c, e
    xor a
    or c
    jp nz, Jump_007_7106

    ld a, $2e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $cb66
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    xor a
    or [hl]
    jp nz, Jump_007_70d0

    ld hl, $7184
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $03e8
    push hl
    call Call_000_3986
    add sp, $02
    call Call_007_6ff5
    jp Jump_007_713e


Jump_007_7106:
    ld hl, $cb66
    ld a, [hl]
    cp $01
    jp z, Jump_007_7129

    dec [hl]
    ld a, $2e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    call Call_007_7010
    ld c, e
    xor a
    or c
    jp nz, Jump_007_7106

    ld hl, $cb66
    ld a, [hl]
    add $05
    ld [hl], a

Jump_007_7129:
    ld hl, $718a
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $03e8
    push hl
    call Call_000_3986
    add sp, $02
    call Call_007_6ff5

Jump_007_713e:
    pop bc
    ret


    ld c, e
    ld b, l
    ld e, c
    ld b, d
    ld c, a
    ld b, c
    ld d, d
    ld b, h
    jr nz, @+$45

    ld b, c
    ld c, h
    ld c, c
    ld b, d
    ld d, d
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    nop
    ld d, h
    ld b, c
    ld d, b
    jr nz, @+$46

    ld c, a
    ld d, a
    ld c, [hl]
    jr nz, jr_007_71a0

    ld d, d
    ld d, d
    ld c, a
    ld d, a
    jr nz, jr_007_71b0

    ld b, l
    ld e, c
    nop
    ld c, a
    ld c, [hl]
    jr nz, @+$52

    ld d, e
    cpl
    ld [hl-], a
    jr nz, @+$4d

    ld b, l
    ld e, c
    ld b, d
    ld c, a
    ld b, c
    ld d, d
    ld b, h
    nop
    ld c, l
    ld b, c
    ld c, [hl]
    ld e, c
    jr nz, @+$56

    ld c, c
    ld c, l
    ld b, l
    ld d, e
    nop
    ld b, [hl]
    ld b, c
    ld c, c
    ld c, h
    ld hl, $4f00
    ld c, e
    ld hl, $0100
    ld l, [hl]
    call nz, Call_000_1016

jr_007_7193:
    ld_long a, $ff90
    or a
    jr nz, jr_007_71be

    push de
    ld a, [$c41d]
    add $10
    sub d

jr_007_71a0:
    push af
    inc sp
    call Call_007_62e2
    inc sp
    ld a, e
    pop de
    ld hl, $ff8c
    or a
    jr nz, jr_007_71b7

    ld [hl], $01

jr_007_71b0:
    ld a, $04
    ld_long $ff8d, a
    jr jr_007_71be

jr_007_71b7:
    ld [hl], $46
    ld a, $49
    ld_long $ff8d, a

jr_007_71be:
    call Call_007_71d9
    call Call_007_71d9
    call Call_007_71d9
    call Call_007_71d9
    ld hl, $c574
    ld a, [hl]
    add $14
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    dec d
    jr nz, jr_007_7193

    ret


Call_007_71d9:
    ld a, $20
    call Call_000_2f26
    ld a, [bc]
    inc bc
    bit 7, a
    jp z, Jump_000_2de6

    ld a, $2d
    call Call_000_2f26
    ld a, $2d
    jp Jump_000_2f26


Call_007_71ef:
jr_007_71ef:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_71ef

    ld a, [de]
    ld [hl], a
    inc e
    inc l
    ret


Call_007_71fa:
    ld a, $01
    ldh [rVBK], a
    ld hl, $9840
    ld de, $9860
    ld b, $0f

jr_007_7206:
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    ld a, l
    add $12
    ld l, a
    jr nc, jr_007_7237

    inc h

jr_007_7237:
    ld a, e
    add $12
    ld e, a
    jr nc, jr_007_723e

    inc d

jr_007_723e:
    dec b
    jr nz, jr_007_7206

    xor a
    ldh [rVBK], a
    ret


Call_007_7245:
    ld a, $01
    ldh [rVBK], a
    ld hl, $9a20
    ld de, $9a00
    ld b, $0f

jr_007_7251:
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    call Call_007_71ef
    ld a, l
    sub $2e
    ld l, a
    jr nc, jr_007_7282

    dec h

jr_007_7282:
    ld a, e
    sub $2e
    ld e, a
    jr nc, jr_007_7289

    dec d

jr_007_7289:
    dec b
    jr nz, jr_007_7251

    xor a
    ldh [rVBK], a
    ret


Call_007_7290:
    push bc
    ld hl, $9a20
    ld de, $9a00
    ld c, $0f

Jump_007_7299:
jr_007_7299:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7299

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72a2:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72a2

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72ab:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72ab

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72b4:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72b4

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72bd:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72bd

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72c6:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72c6

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72cf:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72cf

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72d8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72d8

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72e1:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72e1

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72ea:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72ea

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72f3:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72f3

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_72fc:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_72fc

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7305:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7305

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_730e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_730e

    ld a, [de]
    ld [hl], a
    ld a, l
    sub $2d
    ld l, a
    jr nc, jr_007_731d

    dec h

jr_007_731d:
    ld a, e
    sub $2d
    ld e, a
    jr nc, jr_007_7324

    dec d

jr_007_7324:
    dec c
    jp nz, Jump_007_7299

    pop bc
    ret


Call_007_732a:
    push bc
    ld hl, $9840
    ld de, $9860
    ld c, $0f

Jump_007_7333:
jr_007_7333:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7333

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_733c:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_733c

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7345:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7345

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_734e:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_734e

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7357:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7357

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7360:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7360

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7369:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7369

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7372:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7372

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_737b:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_737b

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7384:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7384

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_738d:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_738d

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_7396:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_7396

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_739f:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_739f

    ld a, [de]
    ld [hl+], a
    inc e

jr_007_73a8:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_007_73a8

    ld a, [de]
    ld [hl], a
    ld a, l
    add $13
    ld l, a
    jr nc, jr_007_73b7

    inc h

jr_007_73b7:
    ld a, e
    add $13
    ld e, a
    jr nc, jr_007_73be

    inc d

jr_007_73be:
    dec c
    jp nz, Jump_007_7333

    pop bc
    ret


Call_007_73c4:
    ld hl, sp+$05
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    dec l
    ld a, [hl-]
    ld l, [hl]
    ld h, a

jr_007_73cd:
    ld a, h
    cp $b5
    jr nz, jr_007_73d6

    ld a, l
    cp $90
    ret nc

jr_007_73d6:
    xor a
    di
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, [hl]
    ld [de], a
    xor a
    ld [$0000], a
    ei
    inc hl
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de
    inc de
    jr jr_007_73cd

Call_007_73f1:
    ld hl, sp+$06
    ld a, [hl-]
    inc a
    ld b, a
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    dec l
    ld a, [hl-]
    ld l, [hl]
    ld h, a

jr_007_73fd:
    dec b
    ret z

    xor a
    di
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ld a, [hl]
    ld [de], a
    xor a
    ld [$0000], a
    ei
    dec hl
    dec hl
    dec hl
    dec hl
    dec de
    dec de
    dec de
    dec de
    jr jr_007_73fd

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
