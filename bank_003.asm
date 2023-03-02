; disasSembly of "lsdj.gb"
SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

Call_003_4000:
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03
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
    call $55ce
    ld c, [hl]
    ld c, h
    ld c, c
    ld c, l
    nop
    ld [$0508], sp
    ld [$0b0b], sp
    dec bc
    ld [$070b], sp
    ld a, [bc]
    dec bc
    dec bc
    inc c
    ld b, $0b
    nop
    nop
    ld [$0908], sp
    dec bc
    rlca
    ld a, [bc]
    ld a, [bc]
    inc c
    dec b
    inc c
    dec bc
    inc c
    inc c
    ld b, $0b
    nop
    nop
    nop
    ld [$0408], sp
    inc b
    add hl, bc
    dec bc
    rlca
    dec bc
    ld [$060b], sp
    ld a, [bc]
    ld b, $0a
    add hl, bc
    ld [$0b06], sp
    ld [$0508], sp
    ld [$0b0b], sp
    ld [$0b09], sp
    ld a, [bc]
    inc c
    ld b, $0b
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld de, $0011
    nop
    ld [bc], a
    inc bc
    dec b
    dec b
    ld b, $07
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    ld de, $0011
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    ld b, $08
    ld [$0a09], sp
    dec bc
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0f
    ld de, $0211
    inc bc
    dec b
    dec b
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ld c, $0e
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld bc, $0204
    nop
    nop
    dec b
    dec b
    ld bc, $0602
    inc bc
    inc bc
    ld bc, $0108
    ld [bc], a
    ld bc, $0401
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld bc, $0602
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    inc bc
    ld bc, $0204
    db $10
    rrca
    ld [de], a
    dec c

Call_003_40f8:
    push bc
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    pop bc
    ret


Call_003_4105:
    push bc
    call Call_003_40f8
    ld c, e
    ld a, c
    or a
    jp nz, Jump_003_4113

    ld a, $01
    jr jr_003_4114

Jump_003_4113:
    xor a

jr_003_4114:
    ld c, a
    ld e, c
    pop bc
    ret


Call_003_4118:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_003_412e

    ld c, $01
    jp Jump_003_4130


Jump_003_412e:
    ld c, $00

Jump_003_4130:
    ld e, c
    pop bc
    ret


Call_003_4133:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    or $20
    ld c, a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    pop bc
    ret


Call_003_414f:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, $f4
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec c
    ld hl, $c428
    ld a, [hl]
    cp c
    jp nz, Jump_003_416b

    ld a, $01
    jr jr_003_416c

Jump_003_416b:
    xor a

jr_003_416c:
    ld c, a
    ld e, c
    pop bc
    ret


Call_003_4170:
    push bc
    add sp, -$07
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $03
    ld c, a
    cp $01
    jp nz, Jump_003_41be

    call Call_003_4105
    ld b, e
    xor a
    or b
    jp z, Jump_003_41be

    ld hl, $c428
    ld a, [hl]
    cp $09
    jp nz, Jump_003_41be

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_003_41a5

    ld b, $03
    jp Jump_003_41a7


Jump_003_41a5:
    ld b, $02

Jump_003_41a7:
    ld a, b
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_003_4253


Jump_003_41be:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_003_41cd

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_41d1


Jump_003_41cd:
    ld hl, sp+$06
    ld [hl], $02

Jump_003_41d1:
    ld a, $12
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $40b1
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$04
    ld [hl], a
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
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
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_003_4253:
    add sp, $07
    pop bc
    ret


Call_003_4257:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld c, $2d
    ld b, $52
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
    pop bc
    ret


Call_003_427b:
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    or $20
    ld c, a
    push af
    inc sp
    call Call_003_4257
    add sp, $01
    pop bc
    ret


Call_003_4293:
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $df
    ld c, a
    push af
    inc sp
    call Call_003_4257
    add sp, $01
    pop bc
    ret


Call_003_42ab:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld b, c
    ld c, $00
    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d

Jump_003_42be:
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$00
    ld b, [hl]
    ld a, b
    and $0f
    ld b, a
    ld a, $15
    add b
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    cp c
    jr nz, jr_003_42e5

    jp Jump_003_42ea


jr_003_42e5:
    ld e, $01
    jp Jump_003_42fb


Jump_003_42ea:
    ld hl, sp+$00
    inc [hl]
    jr nz, jr_003_42f1

    inc hl
    inc [hl]

jr_003_42f1:
    ld hl, sp+$00
    ld c, [hl]
    ld a, c
    or a
    jp nz, Jump_003_42be

    ld e, $00

Jump_003_42fb:
    add sp, $02
    pop bc
    ret


Call_003_42ff:
    push bc
    ld c, $00

Jump_003_4302:
    ld a, c
    cp $10
    jp nc, Jump_003_431d

    push af
    inc sp
    call Call_003_42ab
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_003_4319

    ld e, c
    jp Jump_003_4339


Jump_003_4319:
    inc c
    jp Jump_003_4302


Jump_003_431d:
    ld hl, $433b
    push hl
    ld hl, $c6a8
    push hl
    call Call_000_3834
    add sp, $04
    ld bc, $7500
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $ff

Jump_003_4339:
    pop bc
    ret


    ld c, a
    ld d, l
    ld d, h
    jr nz, @+$51

    ld b, [hl]
    jr nz, jr_003_4396

    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    ld d, e
    ld hl, $4320
    ld c, h
    ld b, l
    ld b, c
    ld c, [hl]
    jr nz, @+$4b

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    jr nz, jr_003_439b

    ld b, c
    ld d, h
    ld b, c
    jr nz, @+$4b

    ld c, [hl]
    jr nz, jr_003_43af

    ld d, d
    ld c, a
    ld c, d
    ld b, l
    ld b, e
    ld d, h
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    nop

Call_003_436d:
    push bc
    ld c, $8c
    ld b, $4b
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    ld a, c
    cp $ff
    jp nz, Jump_003_43a0

    ld hl, $43da
    push hl
    ld hl, $c6a8
    push hl
    call Call_000_3834
    add sp, $04
    ld hl, $7500
    push hl
    ld a, $01

jr_003_4396:
    push af
    inc sp
    call Call_000_1769

jr_003_439b:
    add sp, $03
    jp Jump_003_43d8


Jump_003_43a0:
    ld a, c
    or $20
    ld c, a
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b

jr_003_43af:
    and $d0
    ld a, c
    or a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_43d8:
    pop bc
    ret


    ld c, a
    ld d, l
    ld d, h
    jr nz, @+$51

    ld b, [hl]
    jr nz, jr_003_4436

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld d, e
    ld hl, $c500
    add sp, -$01
    call Call_003_42ff
    ld hl, sp+$00
    ld [hl], e
    ld a, e
    cp $ff
    jp nz, Jump_003_43fb

    jp Jump_003_443f


Jump_003_43fb:
    ld de, $4089
    ld a, [de]
    ld b, a
    ld de, $4046
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
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, sp+$00
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    push af
    inc sp

jr_003_4436:
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02

Jump_003_443f:
    add sp, $01
    pop bc
    ret


Call_003_4443:
    push bc
    add sp, -$13
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$12
    ld [hl], a
    call Call_003_42ff
    ld hl, sp+$11
    ld [hl], e
    ld a, e
    cp $ff
    jp nz, Jump_003_446b

    jp Jump_003_45bf


Jump_003_446b:
    ld hl, sp+$10
    ld [hl], $00
    inc hl
    inc hl
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$11
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld hl, sp+$09
    ld [hl], a

Jump_003_448f:
    ld hl, sp+$10
    ld a, [hl]
    cp $10
    jp nc, Jump_003_44ff

    ld hl, sp+$06
    ld a, [hl+]
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $beb2
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    inc hl
    inc hl
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
    ld hl, sp+$07
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
    dec hl
    dec hl
    ld c, [hl]
    ld b, $00
    ld a, c
    add $b2
    ld c, a
    ld a, b
    adc $be
    ld b, a
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$10
    inc [hl]
    jp Jump_003_448f


Jump_003_44ff:
    ld hl, sp+$10
    ld [hl], $00
    inc hl
    inc hl
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld [hl], a
    dec hl
    ld [hl], $00
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $a0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl+], a
    inc hl
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld [hl], a
    dec hl
    ld [hl], $00
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    dec hl
    dec hl
    ld a, [hl]
    or $a0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a

Jump_003_455e:
    ld hl, sp+$0e
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_003_4569

    inc hl
    inc [hl]

jr_003_4569:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$0d
    ld [hl], e
    add sp, $03
    inc hl
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_003_4581

    inc hl
    inc [hl]

jr_003_4581:
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$10
    inc [hl]
    xor a
    or [hl]
    jp nz, Jump_003_455e

    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld hl, sp+$09
    or [hl]
    ld c, a
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $45c3
    push hl
    call Call_000_0dab
    add sp, $02

Jump_003_45bf:
    add sp, $13
    pop bc
    ret


    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, jr_003_461e

    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    nop

Call_003_45d0:
    push bc
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_000_2c57
    call Call_000_308c
    pop bc
    ret


Call_003_45fc:
    push bc
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c577
    or [hl]
    jp z, Jump_003_4642

Jump_003_460d:
    xor a
    ld hl, $c577
    or [hl]
    jp z, Jump_003_4631

    dec [hl]
    ld c, [hl]
    ld b, $00
    ld a, c
    add $40
    ld c, a
    ld a, b

jr_003_461e:
    adc $a0
    ld b, a
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_460d

Jump_003_4631:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4e06

Jump_003_4642:
    pop bc
    ret


Call_003_4644:
    xor a
    ld hl, $c577
    or [hl]
    jp z, Jump_003_4660

    ld a, [hl]
    add $f0
    ld [hl], a
    xor a
    ld a, $40
    sbc [hl]
    jp nc, Jump_003_4659

    ld [hl], $00

Jump_003_4659:
    ld hl, $c577
    inc [hl]
    call Call_003_45fc

Jump_003_4660:
    ret


Call_003_4661:
    push bc
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_003_466a:
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp z, Jump_003_468f

    inc [hl]
    ld c, [hl]
    ld b, $00
    ld a, c
    add $40
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_466a

Jump_003_468f:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4e06
    pop bc
    ret


Call_003_46a2:
    push bc
    add sp, -$04
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $03
    ld c, a
    cp $01
    jp nz, Jump_003_46e2

    call Call_003_4105
    ld b, e
    xor a
    or b
    jp z, Jump_003_46e2

    ld hl, $c428
    ld a, [hl]
    cp $09
    jp nz, Jump_003_46e2

    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_003_4766


Jump_003_46e2:
    ld a, $12
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld de, $40b1
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$03
    add [hl]
    dec hl
    ld [hl], a
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
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
    ld a, [hl+]
    sub [hl]
    ld b, a
    ld a, $01
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_003_4766:
    add sp, $04
    pop bc
    ret


Call_003_476a:
    push bc
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    cp $0f
    jp nc, Jump_003_4790

    inc c
    ld a, c
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_4790:
    pop bc
    ret


Call_003_4792:
    push bc
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_003_47b7

    dec c
    ld a, c
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_47b7:
    pop bc
    ret


    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $08
    ld c, a
    ld e, c
    pop bc
    ret


Call_003_47cb:
    push bc
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_4855

    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 3, a
    jp z, Jump_003_4800

    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $f7
    ld c, a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_4819


Jump_003_4800:
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $df
    ld c, a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02

Jump_003_4819:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld c, $00
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    inc [hl]
    jr nz, jr_003_483b

    inc hl
    inc [hl]

jr_003_483b:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_4855:
    pop bc
    ret


Call_003_4857:
    push bc
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_48c4

    call Call_003_4118
    ld c, e
    xor a
    or c
    jp z, Jump_003_4885

    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    or $08
    ld c, a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_4888


Jump_003_4885:
    call Call_003_4133

Jump_003_4888:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld c, $00
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    inc [hl]
    jr nz, jr_003_48aa

    inc hl
    inc [hl]

jr_003_48aa:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_48c4:
    pop bc
    ret


Call_003_48c6:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_003_48fd

    and $1f
    ld b, a
    cp $1f
    jp nz, Jump_003_48e2

    jp Jump_003_48fd


Jump_003_48e2:
    inc c
    ld a, c
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_48fd:
    pop bc
    ret


Call_003_48ff:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_003_494b

    and $1f
    jp nz, Jump_003_4930

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_494b

    call Call_003_47cb
    call Call_003_47cb
    call Call_003_46a2
    ld hl, $c428
    dec [hl]
    call Call_003_4170
    jp Jump_003_494b


Jump_003_4930:
    dec c
    ld a, c
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_494b:
    pop bc
    ret


Call_003_494d:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_003_4983

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_4983

    ld a, c
    or $10
    ld c, a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_4983:
    pop bc
    ret


Call_003_4985:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_003_49b2

    and $ef
    ld c, a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld c, $9c
    ld b, $40
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_49b2:
    pop bc
    ret


Call_003_49b4:
    push bc
    ld hl, $c574
    ld [hl], $cc
    inc hl
    ld [hl], $99
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_49d2

    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_49de


Jump_003_49d2:
    call Call_003_4b13
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_49de:
    pop bc
    ret


Call_003_49e0:
    push bc
    ld hl, $c574
    ld [hl], $ab
    inc hl
    ld [hl], $99
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_49fe

    ld hl, $4a0d
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_4a0b


Jump_003_49fe:
    call Call_003_4aee
    ld c, e
    inc c
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_003_4a0b:
    pop bc
    ret


    dec l
    dec l
    nop

Call_003_4a10:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld c, a
    ld a, $0f
    xor c
    ld c, a
    ld e, c
    pop bc
    ret


Call_003_4a26:
    push bc
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $99
    call Call_003_40f8
    ld c, e
    ld a, c
    cp $02
    jp z, Jump_003_4a43

    cp $03
    jp z, Jump_003_4a43

    cp $04
    jp nz, Jump_003_4a58

Jump_003_4a43:
    call Call_003_4b13
    ld c, e
    call Call_003_4a10
    ld b, e
    ld a, c
    sub b
    ld c, a
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_003_4a61


Jump_003_4a58:
    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_003_4a61:
    pop bc
    ret


Call_003_4a63:
    ld hl, sp+$02
    ld a, [hl]
    cp $d0
    jp z, Jump_003_4a86

    ld hl, sp+$02
    ld a, [hl]
    cp $d1
    jp z, Jump_003_4a92

    ld hl, sp+$02
    ld a, [hl]
    cp $d2
    jp z, Jump_003_4a9e

    ld hl, sp+$02
    ld a, [hl]
    cp $d3
    jp z, Jump_003_4aaa

    jp Jump_003_4ab6


Jump_003_4a86:
    ld hl, $4ad3
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_4ad2


Jump_003_4a92:
    ld hl, $4ad9
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_4ad2


Jump_003_4a9e:
    ld hl, $4adf
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_4ad2


Jump_003_4aaa:
    ld hl, $4ae5
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_4ad2


Jump_003_4ab6:
    ld a, $3f
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $4aeb
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_4ad2:
    ret


    jr nz, @+$4a

    ld b, c
    ld d, d
    ld b, h
    nop
    jr nz, @+$55

    ld c, a
    ld b, [hl]
    ld d, h
    nop
    jr nz, jr_003_4b27

    ld c, a
    ld c, h
    ld b, h
    nop
    jr nz, @+$59

    ld d, d
    ld b, c
    ld d, b
    nop
    jr nc, @+$32

    nop

Call_003_4aee:
    push bc
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    inc c
    inc c
    inc c
    ld e, c
    pop bc
    ret


Call_003_4aff:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    add $fd
    ld c, a
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    pop bc
    ret


Call_003_4b13:
    push bc
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld c, a
    ld a, $0f
    sub c
    ld c, a
    ld e, c

jr_003_4b27:
    pop bc
    ret


Call_003_4b29:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $10
    jp c, Jump_003_4b35

    call Call_000_144b

Jump_003_4b35:
    ld a, $0f
    ld hl, sp+$04
    sub [hl]
    ld c, a
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    pop bc
    ret


Call_003_4b48:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    ld hl, sp+$04
    or [hl]
    ld c, a
    ld a, $0f
    xor c
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    pop bc
    ret


Call_003_4b6b:
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $07
    ld c, a
    ld e, c
    pop bc
    ret


Call_003_4b7d:
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld b, c
    ld a, b
    and $f8
    ld c, a
    ld hl, sp+$04
    ld a, [hl]
    or c
    ld [hl], a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    cp $03
    jp nz, Jump_003_4bb4

    ld b, $08
    ld c, $52
    jp Jump_003_4bb8


Jump_003_4bb4:
    ld b, $8c
    ld c, $51

Jump_003_4bb8:
    ld hl, sp+$04
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
    pop bc
    ret


Call_003_4bcb:
    push bc
    call Call_003_4b6b
    ld c, e
    ld a, c
    cp $05
    jp nc, Jump_003_4be8

    inc c
    inc c
    ld a, c
    cp $06
    jp nz, Jump_003_4be0

    ld c, $01

Jump_003_4be0:
    ld a, c
    push af
    inc sp
    call Call_003_4b7d
    add sp, $01

Jump_003_4be8:
    pop bc
    ret


Call_003_4bea:
    push bc
    call Call_003_4b6b
    ld c, e
    xor a
    or c
    jp z, Jump_003_4c06

    dec c
    dec c
    ld a, c
    cp $ff
    jp nz, Jump_003_4bfe

    ld c, $04

Jump_003_4bfe:
    ld a, c
    push af
    inc sp
    call Call_003_4b7d
    add sp, $01

Jump_003_4c06:
    pop bc
    ret


Call_003_4c08:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    dec c
    dec c
    ld e, c
    pop bc
    ret


Call_003_4c18:
    push bc
    add sp, -$01
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    bit 7, a
    jp nz, Jump_003_4c7f

    ld hl, sp+$00
    ld a, [hl]
    bit 4, a
    jp z, Jump_003_4c3c

    ld a, $90
    xor [hl]
    ld [hl], a
    jp Jump_003_4c5c


Jump_003_4c3c:
    ld hl, sp+$00
    ld a, [hl]
    bit 6, a
    jp z, Jump_003_4c56

    call Call_003_4c08
    ld b, e
    xor a
    or b
    jp z, Jump_003_4c56

    ld a, $40
    ld hl, sp+$00
    xor [hl]
    ld [hl], a
    jp Jump_003_4c5c


Jump_003_4c56:
    ld hl, sp+$00
    ld a, [hl]
    or $10
    ld [hl], a

Jump_003_4c5c:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld b, $8c
    ld c, $51
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
    call Call_000_178a
    add sp, $04

Jump_003_4c7f:
    add sp, $01
    pop bc
    ret


Call_003_4c83:
    push bc
    add sp, -$01
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    bit 7, a
    jp z, Jump_003_4c9f

    ld a, $90
    xor [hl]
    ld [hl], a
    jp Jump_003_4cd1


Jump_003_4c9f:
    ld hl, sp+$00
    ld a, [hl]
    bit 4, a
    jp z, Jump_003_4cc2

    call Call_003_4c08
    ld b, e
    xor a
    or b
    jp z, Jump_003_4cb9

    ld hl, sp+$00
    ld a, [hl]
    and $af
    ld [hl], a
    jp Jump_003_4cd1


Jump_003_4cb9:
    ld a, $10
    ld hl, sp+$00
    xor [hl]
    ld [hl], a
    jp Jump_003_4cd1


Jump_003_4cc2:
    call Call_003_4c08
    ld b, e
    xor a
    or b
    jp z, Jump_003_4cd1

    ld hl, sp+$00
    ld a, [hl]
    or $40
    ld [hl], a

Jump_003_4cd1:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld b, $8c
    ld c, $51
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
    call Call_000_178a
    add sp, $04
    add sp, $01
    pop bc
    ret


Call_003_4cf8:
    push bc
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld hl, $c574
    ld [hl], $0a
    inc hl
    ld [hl], $99
    ld a, c
    bit 7, a
    jp z, Jump_003_4d27

    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    xor a
    sbc c
    ld b, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_4d32


Jump_003_4d27:
    call Call_000_2f24
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_003_4d32:
    pop bc
    ret


Call_003_4d34:
    push bc
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $99
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_4d93

    ld hl, $4dea
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $8b
    inc hl
    ld [hl], $99
    ld a, $01
    push af
    inc sp
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_4de8


Jump_003_4d93:
    ld hl, $4df0
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $8b
    inc hl
    ld [hl], $99
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld a, $20
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_4de8:
    pop bc
    ret


    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_003_4df0

jr_003_4df0:
    ld d, e
    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    nop

Call_003_4df6:
    push bc
    ld bc, $754f
    push bc
    ld a, $1b
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_003_4e06:
    push bc
    add sp, -$04
    xor a
    ld a, $40
    ld hl, $c577
    sbc [hl]
    jp nc, Jump_003_4e16

    call Call_000_144b

Jump_003_4e16:
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nz, Jump_003_4e30

    ld c, $87
    ld b, $70
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_003_4fdf


Jump_003_4e30:
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    ld hl, $4929
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$03
    ld [hl], e
    add sp, $01
    ld a, e
    cp $04
    jp c, Jump_003_4e64

    ld a, $00
    push af
    inc sp
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$02
    ld [hl], $00

Jump_003_4e64:
    ld de, $40f4
    ld hl, sp+$02
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, $c903
    ld [hl], a
    xor a
    ld hl, $c428
    ld a, [hl]
    ld hl, $c903
    sbc [hl]
    jp c, Jump_003_4e87

    ld a, [hl]
    add $ff
    ld hl, $c428
    ld [hl], a

Jump_003_4e87:
    call Call_003_45d0
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld a, $12
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld hl, sp+$03
    ld [hl], e
    add sp, $02
    ld de, $406e
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld c, $3b
    ld b, $49
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$03
    ld [hl], $00

Jump_003_4ee5:
    ld hl, sp+$03
    ld a, [hl]
    cp $05
    jp nc, Jump_003_4f0c

    ld de, $c432
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_003_4efe

    ld b, $20

Jump_003_4efe:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$03
    inc [hl]
    jp Jump_003_4ee5


Jump_003_4f0c:
    ld de, $406e
    ld hl, sp+$01
    ld l, [hl]
    ld h, $00
    add hl, de
    ld b, l
    ld c, h
    ld e, b
    ld d, c
    inc de
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld b, l
    ld c, h
    ld e, b
    ld d, c
    inc de
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $06
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld a, $e3
    add c
    ld c, a
    ld a, $4f
    adc $00
    ld b, a
    push bc
    call Call_000_2eda
    add sp, $02
    xor a
    ld a, $03
    ld hl, sp+$02
    sbc [hl]
    jp c, Jump_003_4f90

    ld e, [hl]
    ld d, $00
    ld hl, $4f6b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_4f77


    jp Jump_003_4f7e


    jp Jump_003_4f8c


    jp Jump_003_4f85


Jump_003_4f77:
    ld c, $3d
    ld b, $42
    jp Jump_003_4f90


Jump_003_4f7e:
    ld c, $4e
    ld b, $47
    jp Jump_003_4f90


Jump_003_4f85:
    ld c, $99
    ld b, $43
    jp Jump_003_4f90


Jump_003_4f8c:
    ld c, $dd
    ld b, $44

Jump_003_4f90:
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_003_4fd9

    ld hl, $c428
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, $c428
    ld [hl], $00

Jump_003_4fbc:
    xor a
    ld hl, $c428
    ld a, [hl]
    ld hl, $c903
    sbc [hl]
    jp nc, Jump_003_4fd2

    call Call_003_46a2
    ld hl, $c428
    inc [hl]
    jp Jump_003_4fbc


Jump_003_4fd2:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c428
    ld [hl], a

Jump_003_4fd9:
    call Call_003_4170
    call Call_003_4df6

Jump_003_4fdf:
    add sp, $04
    pop bc
    ret


    ld d, b
    ld d, l
    ld c, h
    ld d, e
    ld b, l
    nop
    jr nz, jr_003_5042

    ld b, c
    ld d, [hl]
    ld b, l
    nop
    jr nz, jr_003_5011

    ld c, e
    ld c, c
    ld d, h
    nop
    ld c, [hl]
    ld c, a
    ld c, c
    ld d, e
    ld b, l
    nop

Call_003_4ffb:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_0d3b
    add sp, $01
    ld hl, sp+$04
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_000_2de6

jr_003_5011:
    add sp, $01
    call Call_000_2f24
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


Call_003_5021:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    rla
    sbc a
    ld a, c
    and $c0
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, c
    ld hl, sp+$00

jr_003_5042:
    or [hl]
    ld c, a
    ld a, b
    inc hl
    or [hl]
    ld b, a
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    add sp, $02
    pop bc
    ret


Call_003_5059:
    push bc
    add sp, -$02
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp nz, Jump_003_506a

    ld c, $02
    jp Jump_003_506c


Jump_003_506a:
    ld c, $09

Jump_003_506c:
    ld hl, sp+$01
    ld [hl], c
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $3f
    ld b, a
    ld hl, sp+$00
    ld [hl], b

Jump_003_507f:
    xor a
    or b
    jp nz, Jump_003_508a

    ld hl, sp+$00
    ld e, [hl]
    jp Jump_003_50a7


Jump_003_508a:
    dec b
    ld a, b
    push af
    inc sp
    call Call_000_0ced
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_003_507f

    ld a, b
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_003_5021
    add sp, $02
    ld e, b

Jump_003_50a7:
    add sp, $02
    pop bc
    ret


Call_003_50ab:
    push bc
    add sp, -$02
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp nz, Jump_003_50bc

    ld c, $02
    jp Jump_003_50be


Jump_003_50bc:
    ld c, $09

Jump_003_50be:
    ld hl, sp+$01
    ld [hl], c
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $3f
    ld b, a
    ld hl, sp+$00
    ld [hl], b

Jump_003_50d1:
    ld a, b
    cp $3f
    jp nz, Jump_003_50dd

    ld hl, sp+$00
    ld e, [hl]
    jp Jump_003_50fa


Jump_003_50dd:
    inc b
    ld a, b
    push af
    inc sp
    call Call_000_0ced
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_003_50d1

    ld a, b
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_003_5021
    add sp, $02
    ld e, b

Jump_003_50fa:
    add sp, $02
    pop bc
    ret


Call_003_50fe:
    push bc
    add sp, -$01
    ld c, $00

Jump_003_5103:
    ld a, c
    cp $02
    jp nc, Jump_003_5143

    or c
    jp z, Jump_003_5112

    ld b, $02
    jp Jump_003_5114


Jump_003_5112:
    ld b, $09

Jump_003_5114:
    ld hl, sp+$00
    ld [hl], b
    ld a, b
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $3f
    ld b, a
    push af
    inc sp
    call Call_000_0ced
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_003_513f

    ld a, $00
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_003_5021
    add sp, $02

Jump_003_513f:
    inc c
    jp Jump_003_5103


Jump_003_5143:
    add sp, $01
    pop bc
    ret


Call_003_5147:
    push bc
    add sp, -$01
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_519c

    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld de, $40f4
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    xor a
    ld hl, $c428
    ld a, [hl]
    sbc b
    jp c, Jump_003_5170

    ld a, b
    add $ff
    ld [hl], a

Jump_003_5170:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_003_4000
    add sp, $02
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
    ld hl, sp+$00
    ld a, [hl]
    cp $02
    jp nz, Jump_003_5199

    call Call_003_50fe

Jump_003_5199:
    call Call_003_4e06

Jump_003_519c:
    add sp, $01
    pop bc
    ret


Call_003_51a0:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld b, a
    cp $0f
    jp nz, Jump_003_51b8

    jp Jump_003_51d9


Jump_003_51b8:
    inc c
    ld a, c
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld bc, $418a
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4170
    call Call_003_4df6

Jump_003_51d9:
    pop bc
    ret


Call_003_51db:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    jp nz, Jump_003_51f0

    jp Jump_003_5211


Jump_003_51f0:
    dec c
    ld a, c
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld bc, $418a
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4170
    call Call_003_4df6

Jump_003_5211:
    pop bc
    ret


Call_003_5213:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    ld b, a
    cp $f0
    jp nz, Jump_003_522b

    jp Jump_003_524e


Jump_003_522b:
    ld a, c
    add $10
    ld c, a
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld bc, $418a
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4170
    call Call_003_4df6

Jump_003_524e:
    pop bc
    ret


Call_003_5250:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $f0
    jp nz, Jump_003_5265

    jp Jump_003_5288


Jump_003_5265:
    ld a, c
    add $f0
    ld c, a
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld bc, $418a
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_003_4170
    call Call_003_4df6

Jump_003_5288:
    pop bc
    ret


Call_003_528a:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 6, a
    jp z, Jump_003_52a4

    dec c
    ld a, c
    cp $3f
    jp nz, Jump_003_52a4

    ld c, $00

Jump_003_52a4:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    bit 6, a
    jp z, Jump_003_52cf

    ld hl, $52da
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    sub c
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_52d8


Jump_003_52cf:
    ld hl, $4025
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_52d8:
    pop bc
    ret


    jr nz, @+$22

    jr nz, jr_003_52de

Call_003_52de:
jr_003_52de:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 6, a
    jp nz, Jump_003_52f7

    and $80
    add $40
    ld c, a
    jp Jump_003_5301


Jump_003_52f7:
    ld a, c
    and $3f
    ld b, a
    cp $3f
    jp z, Jump_003_5301

    inc c

Jump_003_5301:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    bit 6, a
    jp z, Jump_003_532c

    ld hl, $5337
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    sub c
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_5335


Jump_003_532c:
    ld hl, $4025
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_5335:
    pop bc
    ret


    jr nz, jr_003_5359

    jr nz, jr_003_533b

Call_003_533b:
jr_003_533b:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 6, a
    jp z, Jump_003_535f

    and $3f
    ld b, a
    xor a
    ld a, $0f
    sbc b
    jp nc, Jump_003_535d

    ld a, c
    add $f0

jr_003_5359:
    ld c, a
    jp Jump_003_535f


Jump_003_535d:
    ld c, $00

Jump_003_535f:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    bit 6, a
    jp z, Jump_003_538a

    ld hl, $5395
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    sub c
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_5393


Jump_003_538a:
    ld hl, $4025
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_5393:
    pop bc
    ret


    jr nz, @+$22

    jr nz, jr_003_5399

Call_003_5399:
jr_003_5399:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 6, a
    jp nz, Jump_003_53af

    ld c, $4f
    jp Jump_003_53c3


Jump_003_53af:
    ld a, c
    and $3f
    ld b, a
    cp $30
    jp nc, Jump_003_53bf

    ld a, c
    add $10
    ld c, a
    jp Jump_003_53c3


Jump_003_53bf:
    ld a, c
    or $3f
    ld c, a

Jump_003_53c3:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, c
    bit 6, a
    jp z, Jump_003_53ee

    ld hl, $53f9
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    sub c
    and $3f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_53f7


Jump_003_53ee:
    ld hl, $4025
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_53f7:
    pop bc
    ret


    jr nz, jr_003_541b

    jr nz, jr_003_53fd

jr_003_53fd:
    push bc
    add sp, -$07
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nz, Jump_003_541b

    ld c, $cc
    ld b, $71
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    jp Jump_003_7a35


Jump_003_541b:
jr_003_541b:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$06
    ld [hl], e
    add sp, $01
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_003_5440

    ld hl, $c904
    ld [hl], $00

Jump_003_5440:
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_003_544d

    ld a, $01
    jr jr_003_544e

Jump_003_544d:
    xor a

jr_003_544e:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_003_545a

    ld hl, $c406
    ld [hl], $00

Jump_003_545a:
    ld hl, $c576
    ld a, [hl]
    bit 4, a
    jp z, Jump_003_547d

    ld hl, $c577
    ld c, [hl]
    ld b, $00
    ld a, c
    add $40
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld a, $01
    push af
    inc sp
    push bc
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_003_547d:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_003_57f6

    cp $02
    jp z, Jump_003_5745

    cp $04
    jp z, Jump_003_54f3

    cp $08
    jp z, Jump_003_5600

    xor a
    ld hl, sp+$04
    or [hl]
    jp nz, Jump_003_76d5

    ld hl, $c576
    ld a, [hl]
    cp $11
    jp z, Jump_003_5907

    cp $12
    jp z, Jump_003_61c9

    cp $14
    jp z, Jump_003_6aa4

    cp $18
    jp z, Jump_003_70c3

    cp $21
    jp z, Jump_003_7866

    cp $22
    jp z, Jump_003_786e

    cp $24
    jp z, Jump_003_7876

    cp $28
    jp z, Jump_003_788e

    cp $41
    jp z, Jump_003_792c

    cp $42
    jp z, Jump_003_7904

    cp $44
    jp z, Jump_003_7896

    cp $48
    jp z, Jump_003_78de

    cp $50
    jp z, Jump_003_796c

    cp $60
    jp z, Jump_003_7a1b

    cp $80
    jp z, Jump_003_79f3

    cp $c0
    jp z, Jump_003_79d3

    jp Jump_003_7a33


Jump_003_54f3:
    xor a
    ld hl, $c428
    or [hl]
    jp z, Jump_003_7a33

    call Call_003_46a2
    ld hl, $c428
    dec [hl]
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_55f8

    ld e, [hl]
    ld d, $00
    ld hl, $5515
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_5521


    jp Jump_003_5553


    jp Jump_003_5593


    jp Jump_003_55c9


Jump_003_5521:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_553c

    cp $03
    jp z, Jump_003_553c

    cp $04
    jp z, Jump_003_5544

    cp $0e
    jp z, Jump_003_554c

    jp Jump_003_55f8


Jump_003_553c:
    ld hl, $c428
    ld [hl], $01
    jp Jump_003_55f8


Jump_003_5544:
    ld hl, $c428
    dec [hl]
    dec [hl]
    jp Jump_003_55f8


Jump_003_554c:
    ld hl, $c428
    dec [hl]
    jp Jump_003_55f8


Jump_003_5553:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_5569

    cp $0c
    jp z, Jump_003_5574

    cp $0d
    jp z, Jump_003_5570

    jp Jump_003_55f8


Jump_003_5569:
    ld hl, $c428
    dec [hl]
    jp Jump_003_55f8


Jump_003_5570:
    ld hl, $c428
    dec [hl]

Jump_003_5574:
    call Call_003_40f8
    ld c, e
    ld a, c
    or a
    jp z, Jump_003_5589

    cp $01
    jp nz, Jump_003_55f8

    ld hl, $c428
    dec [hl]
    jp Jump_003_55f8


Jump_003_5589:
    ld hl, $c428
    ld a, [hl]
    add $fd
    ld [hl], a
    jp Jump_003_55f8


Jump_003_5593:
    ld hl, $c428
    ld a, [hl]
    cp $10
    jp nz, Jump_003_55a3

    ld hl, $c428
    dec [hl]
    jp Jump_003_55f8


Jump_003_55a3:
    ld hl, $c428
    ld a, [hl]
    ld hl, $c429
    add [hl]
    ld c, a
    dec c
    ld a, c
    cp $04
    jp z, Jump_003_55c2

    cp $08
    jp z, Jump_003_55c2

    cp $0a
    jp z, Jump_003_55c2

    cp $0c
    jp nz, Jump_003_55f8

Jump_003_55c2:
    ld hl, $c428
    dec [hl]
    jp Jump_003_55f8


Jump_003_55c9:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_55e4

    cp $03
    jp z, Jump_003_55e4

    cp $04
    jp z, Jump_003_55ec

    cp $0b
    jp z, Jump_003_55f4

    jp Jump_003_55f8


Jump_003_55e4:
    ld hl, $c428
    ld [hl], $01
    jp Jump_003_55f8


Jump_003_55ec:
    ld hl, $c428
    dec [hl]
    dec [hl]
    jp Jump_003_55f8


Jump_003_55f4:
    ld hl, $c428
    dec [hl]

Jump_003_55f8:
    call Call_003_4170
    ld e, $01
    jp Jump_003_7a35


Jump_003_5600:
    call Call_003_46a2
    ld de, $40f4
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, $c428
    sub [hl]
    ld c, a
    dec c
    xor a
    or c
    jp z, Jump_003_573d

    ld hl, sp+$05
    ld a, [hl]
    cp $01
    jp nz, Jump_003_5671

    ld hl, $c428
    ld a, [hl]
    cp $01
    jp z, Jump_003_563f

    cp $02
    jp z, Jump_003_563f

    cp $09
    jp z, Jump_003_5661

    cp $0b
    jp z, Jump_003_5646

    cp $0c
    jp nz, Jump_003_5671

Jump_003_563f:
    ld hl, $c428
    inc [hl]
    jp Jump_003_5671


Jump_003_5646:
    call Call_003_40f8
    ld c, e
    ld a, c
    or a
    jp z, Jump_003_5659

    call Call_003_40f8
    ld c, e
    ld a, c
    cp $01
    jp nz, Jump_003_5671

Jump_003_5659:
    ld hl, $c428
    inc [hl]
    inc [hl]
    jp Jump_003_5671


Jump_003_5661:
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_5671

    ld hl, $c428
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

Jump_003_5671:
    ld hl, $c428
    inc [hl]
    ld hl, sp+$05
    ld a, [hl]
    or a
    jp z, Jump_003_568f

    ld hl, sp+$05
    ld a, [hl]
    cp $02
    jp z, Jump_003_56b4

    ld hl, sp+$05
    ld a, [hl]
    cp $03
    jp z, Jump_003_571b

    jp Jump_003_573d


Jump_003_568f:
    ld hl, $c428
    ld a, [hl]
    cp $03
    jp z, Jump_003_56a5

    cp $04
    jp z, Jump_003_56a5

    cp $0e
    jp z, Jump_003_56ad

    jp Jump_003_573d


Jump_003_56a5:
    ld hl, $c428
    ld [hl], $05
    jp Jump_003_573d


Jump_003_56ad:
    ld hl, $c428
    inc [hl]
    jp Jump_003_573d


Jump_003_56b4:
    ld hl, $c428
    ld a, [hl]
    cp $04
    jp z, Jump_003_570c

    cp $05
    jp z, Jump_003_5705

    cp $08
    jp z, Jump_003_570c

    ld c, a
    ld b, $00
    cp $09
    jp nz, Jump_003_56d4

    ld a, b
    or a
    jp z, Jump_003_5705

Jump_003_56d4:
    ld hl, $c428
    ld a, [hl]
    cp $0a
    jp z, Jump_003_5705

    ld a, c
    cp $0b
    jp nz, Jump_003_56e8

    ld a, b
    or a
    jp z, Jump_003_5705

Jump_003_56e8:
    ld hl, $c428
    ld a, [hl]
    cp $0c
    jp z, Jump_003_5705

    ld a, c
    cp $0d
    jp nz, Jump_003_56fc

    ld a, b
    or a
    jp z, Jump_003_5705

Jump_003_56fc:
    ld hl, $c428
    ld a, [hl]
    cp $10
    jp nz, Jump_003_573d

Jump_003_5705:
    ld hl, $c428
    inc [hl]
    jp Jump_003_573d


Jump_003_570c:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_573d

    ld hl, $c428
    inc [hl]
    jp Jump_003_573d


Jump_003_571b:
    ld hl, $c428
    ld a, [hl]
    cp $03
    jp z, Jump_003_5731

    cp $04
    jp z, Jump_003_5731

    cp $0b
    jp z, Jump_003_5739

    jp Jump_003_573d


Jump_003_5731:
    ld hl, $c428
    ld [hl], $05
    jp Jump_003_573d


Jump_003_5739:
    ld hl, $c428
    inc [hl]

Jump_003_573d:
    call Call_003_4170
    ld e, $01
    jp Jump_003_7a35


Jump_003_5745:
    call Call_003_46a2
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_57ee

    ld e, [hl]
    ld d, $00
    ld hl, $575b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_5767


    jp Jump_003_5781


    jp Jump_003_5796


    jp Jump_003_57d7


Jump_003_5767:
    ld hl, $c428
    ld a, [hl]
    cp $03
    jp z, Jump_003_577a

    cp $04
    jp z, Jump_003_577a

    cp $0f
    jp nz, Jump_003_57ee

Jump_003_577a:
    ld hl, $c428
    dec [hl]
    jp Jump_003_57ee


Jump_003_5781:
    ld hl, $c428
    ld a, [hl]
    cp $03
    jp z, Jump_003_578f

    cp $0e
    jp nz, Jump_003_57ee

Jump_003_578f:
    ld hl, $c428
    dec [hl]
    jp Jump_003_57ee


Jump_003_5796:
    ld hl, $c428
    ld a, [hl]
    cp $05
    jp z, Jump_003_57cb

    ld c, a
    ld b, $00
    cp $09
    jp nz, Jump_003_57ac

    ld a, b
    or a
    jp z, Jump_003_57cb

Jump_003_57ac:
    ld a, c
    cp $0b
    jp nz, Jump_003_57b7

    ld a, b
    or a
    jp z, Jump_003_57cb

Jump_003_57b7:
    ld a, c
    cp $0d
    jp nz, Jump_003_57c2

    ld a, b
    or a
    jp z, Jump_003_57cb

Jump_003_57c2:
    ld hl, $c428
    ld a, [hl]
    cp $11
    jp nz, Jump_003_57ee

Jump_003_57cb:
    ld hl, $c428
    dec [hl]
    ld hl, $c429
    ld [hl], $00
    jp Jump_003_57ee


Jump_003_57d7:
    ld hl, $c428
    ld a, [hl]
    cp $03
    jp z, Jump_003_57ea

    cp $04
    jp z, Jump_003_57ea

    cp $0c
    jp nz, Jump_003_57ee

Jump_003_57ea:
    ld hl, $c428
    dec [hl]

Jump_003_57ee:
    call Call_003_4170
    ld e, $01
    jp Jump_003_7a35


Jump_003_57f6:
    call Call_003_46a2
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_58ff

    ld e, [hl]
    ld d, $00
    ld hl, $580c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_5818


    jp Jump_003_5869


    jp Jump_003_5888


    jp Jump_003_58b1


Jump_003_5818:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_582e

    cp $03
    jp z, Jump_003_5848

    cp $0e
    jp z, Jump_003_5862

    jp Jump_003_58ff


Jump_003_582e:
    ld bc, $4157
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_58ff

    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_5848:
    ld bc, $4169
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_58ff

    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_5862:
    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_5869:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_587a

    cp $0d
    jp z, Jump_003_5881

    jp Jump_003_58ff


Jump_003_587a:
    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_5881:
    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_5888:
    ld hl, $c428
    ld a, [hl]
    cp $04
    jp z, Jump_003_58a5

    cp $08
    jp z, Jump_003_58a5

    cp $0a
    jp z, Jump_003_58a5

    cp $0c
    jp z, Jump_003_58a5

    cp $10
    jp nz, Jump_003_58ff

Jump_003_58a5:
    ld hl, $c428
    inc [hl]
    ld hl, $c429
    ld [hl], $01
    jp Jump_003_58ff


Jump_003_58b1:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_58c7

    cp $03
    jp z, Jump_003_58e1

    cp $0b
    jp z, Jump_003_58fb

    jp Jump_003_58ff


Jump_003_58c7:
    ld bc, $4157
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_58ff

    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_58e1:
    ld bc, $4169
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_003_58ff

    ld hl, $c428
    inc [hl]
    jp Jump_003_58ff


Jump_003_58fb:
    ld hl, $c428
    inc [hl]

Jump_003_58ff:
    call Call_003_4170
    ld e, $01
    jp Jump_003_7a35


Jump_003_5907:
    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
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
    ld hl, $c428
    ld a, [hl]
    cp $01
    jp nz, Jump_003_5981

    ld hl, sp+$05
    ld a, [hl]
    cp $03
    jp nc, Jump_003_597c

    add $01
    ld c, a
    push af
    inc sp
    call Call_003_5147
    add sp, $01

Jump_003_597c:
    ld e, $01
    jp Jump_003_7a35


Jump_003_5981:
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_61c4

    ld e, [hl]
    ld d, $00
    ld hl, $5994
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_59a0


    jp Jump_003_5b3a


    jp Jump_003_5dd2


    jp Jump_003_60df


Jump_003_59a0:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_61c4

    xor a
    ld a, $0f
    sbc [hl]
    jp c, Jump_003_61c4

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $59be
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_59e8


    jp Jump_003_59f4


    jp Jump_003_5a00


    jp Jump_003_5a0c


    jp Jump_003_5a4c


    jp Jump_003_5a92


    jp Jump_003_5a98


    jp Jump_003_5ac6


    jp Jump_003_5ad4


    jp Jump_003_5ae0


    jp Jump_003_5b06


    jp Jump_003_5ada


    jp Jump_003_5b2e


    jp Jump_003_5b34


Jump_003_59e8:
    ld a, $01
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_59f4:
    ld a, $09
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_5a00:
    ld a, $0a
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_5a0c:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $c0
    ld b, a
    cp $c0
    jp z, Jump_003_61c4

    ld hl, sp+$06
    ld a, [hl]
    add $40
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld b, [hl]
    srl b
    srl b
    srl b
    srl b
    srl b
    srl b
    ld a, b
    push af
    inc sp
    call Call_000_2cd5
    add sp, $01
    jp Jump_003_61c4


Jump_003_5a4c:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld b, e
    ld a, b
    and $03
    ld b, a
    cp $01
    jp nz, Jump_003_5a6b

    ld hl, sp+$06
    ld a, [hl]
    or $03
    ld [hl], a
    jp Jump_003_5a73


Jump_003_5a6b:
    ld hl, sp+$06
    ld a, [hl]
    and $fc
    or $02
    ld [hl], a

Jump_003_5a73:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_61c4


Jump_003_5a92:
    call Call_003_528a
    jp Jump_003_61c4


Jump_003_5a98:
    ld a, $04
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $7f
    jp nc, Jump_003_5aab

    inc [hl]

Jump_003_5aab:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_61c4


Jump_003_5ac6:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_61c4

    call Call_003_4bcb
    jp Jump_003_61c4


Jump_003_5ad4:
    call Call_003_4293
    jp Jump_003_61c4


Jump_003_5ada:
    call Call_003_476a
    jp Jump_003_61c4


Jump_003_5ae0:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_61c4


Jump_003_5b06:
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    add $01
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5b2e:
    call Call_003_4857
    jp Jump_003_61c4


Jump_003_5b34:
    call Call_003_48c6
    jp Jump_003_61c4


Jump_003_5b3a:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_61c4

    xor a
    ld a, $0e
    sbc [hl]
    jp c, Jump_003_61c4

    ld a, [hl]
    add $fe
    ld b, a
    ld e, b
    ld d, $00
    ld hl, $5b58
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_5b7f


    jp Jump_003_5bf8


    jp Jump_003_5c38


    jp Jump_003_5d91


    jp Jump_003_5d9d


    jp Jump_003_5d97


    jp Jump_003_5ca7


    jp Jump_003_5c3e


    jp Jump_003_5d6c


    jp Jump_003_5d1a


    jp Jump_003_5d4d


    jp Jump_003_5dc6


    jp Jump_003_5dcc


Jump_003_5b7f:
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $60
    ld hl, sp+$06
    ld [hl], a
    or a
    jp z, Jump_003_5bae

    ld hl, sp+$06
    ld a, [hl]
    cp $20
    jp z, Jump_003_5bbe

    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp z, Jump_003_5bca

    ld hl, sp+$06
    ld a, [hl]
    cp $60
    jp z, Jump_003_5bda

    jp Jump_003_5be7


Jump_003_5bae:
    ld hl, sp+$06
    ld [hl], $60
    ld a, $31
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5be7


Jump_003_5bbe:
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5be7


Jump_003_5bca:
    ld hl, sp+$06
    ld [hl], $20
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5be7


Jump_003_5bda:
    ld hl, sp+$06
    ld [hl], $40
    ld a, $32
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_003_5be7:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5bf8:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld b, e
    ld a, b
    and $03
    ld b, a
    cp $01
    jp nz, Jump_003_5c15

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_5c19


Jump_003_5c15:
    ld hl, sp+$06
    ld [hl], $02

Jump_003_5c19:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_61c4


Jump_003_5c38:
    call Call_003_4bcb
    jp Jump_003_61c4


Jump_003_5c3e:
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    call Call_003_4105
    ld b, e
    xor a
    or b
    jp z, Jump_003_5c74

    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp z, Jump_003_5c96

    ld hl, $c574
    ld a, [hl]
    add $ff
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld hl, sp+$06
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_5c96


Jump_003_5c74:
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    ld b, a
    cp $f0
    jp z, Jump_003_5c96

    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a
    ld b, a
    srl b
    srl b
    srl b
    srl b
    ld a, b
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_5c96:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5ca7:
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $04
    jp nc, Jump_003_61c4

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $09
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld b, e
    add sp, $02
    ld a, $31
    add b
    ld b, a
    ld a, $08
    adc $00
    ld c, a
    ld l, b
    ld h, c
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
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
    call Call_003_4000
    add sp, $02
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_003_49e0
    call Call_003_49b4
    call Call_003_4a26
    call Call_003_4d34
    jp Jump_003_61c4


Jump_003_5d1a:
    call Call_003_4b13
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    cp $0f
    jp z, Jump_003_61c4

    ld hl, sp+$06
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4b29
    add sp, $01
    ld hl, sp+$06
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
    call Call_003_4a26
    jp Jump_003_61c4


Jump_003_5d4d:
    call Call_003_4a10
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    and $0f
    jr nz, jr_003_5d5b

    jp Jump_003_61c4


jr_003_5d5b:
    ld hl, sp+$06
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4b48
    add sp, $01
    call Call_003_4a26
    jp Jump_003_61c4


Jump_003_5d6c:
    call Call_003_4aee
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    cp $fe
    jp nc, Jump_003_61c4

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4aff
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_61c4


Jump_003_5d91:
    call Call_003_4293
    jp Jump_003_61c4


Jump_003_5d97:
    call Call_003_476a
    jp Jump_003_61c4


Jump_003_5d9d:
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $01
    ld hl, sp+$06
    ld [hl], a
    cp $80
    jp z, Jump_003_61c4

    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    call Call_003_4cf8
    jp Jump_003_61c4


Jump_003_5dc6:
    call Call_003_4857
    jp Jump_003_61c4


Jump_003_5dcc:
    call Call_003_48c6
    jp Jump_003_61c4


Jump_003_5dd2:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_61c4

    xor a
    ld a, $11
    sbc [hl]
    jp c, Jump_003_61c4

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $5df0
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_5e20


    jp Jump_003_5e20


    jp Jump_003_5e2f


    jp Jump_003_5ea8


    jp Jump_003_60cd


    jp Jump_003_5ee8


    jp Jump_003_5fc0


    jp Jump_003_5fc0


    jp Jump_003_600a


    jp Jump_003_600a


    jp Jump_003_5f0e


    jp Jump_003_5f67


    jp Jump_003_6057


    jp Jump_003_607e


    jp Jump_003_60d3


    jp Jump_003_60d9


Jump_003_5e20:
    call Call_003_50ab
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_003_4ffb
    add sp, $01
    jp Jump_003_61c4


Jump_003_5e2f:
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $60
    ld hl, sp+$06
    ld [hl], a
    or a
    jp z, Jump_003_5e5e

    ld hl, sp+$06
    ld a, [hl]
    cp $20
    jp z, Jump_003_5e6e

    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp z, Jump_003_5e7a

    ld hl, sp+$06
    ld a, [hl]
    cp $60
    jp z, Jump_003_5e8a

    jp Jump_003_5e97


Jump_003_5e5e:
    ld hl, sp+$06
    ld [hl], $60
    ld a, $31
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5e97


Jump_003_5e6e:
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5e97


Jump_003_5e7a:
    ld hl, sp+$06
    ld [hl], $20
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_5e97


Jump_003_5e8a:
    ld hl, sp+$06
    ld [hl], $40
    ld a, $32
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_003_5e97:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5ea8:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $01
    jp nz, Jump_003_5ec5

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_5ec9


Jump_003_5ec5:
    ld hl, sp+$06
    ld [hl], $02

Jump_003_5ec9:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_61c4


Jump_003_5ee8:
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5f0e:
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    bit 6, a
    jp nz, Jump_003_5f3e

    or $40
    ld [hl], a
    ld hl, $7a39
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5f3e:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld a, e
    or $80
    ld [hl], a
    ld hl, $7a3d
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5f67:
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    bit 5, a
    jp nz, Jump_003_5f97

    or $20
    ld [hl], a
    ld hl, $7a41
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5f97:
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld a, e
    or $80
    ld [hl], a
    ld hl, $7a45
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_5fc0:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_5fcd

    ld c, $0d
    jp Jump_003_5fcf


Jump_003_5fcd:
    ld c, $0c

Jump_003_5fcf:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $ff
    jp nc, Jump_003_5fe1

    inc [hl]

Jump_003_5fe1:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_5ff8

    ld c, $0d
    jp Jump_003_5ffa


Jump_003_5ff8:
    ld c, $0c

Jump_003_5ffa:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_600a:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6017

    ld c, $0b
    jp Jump_003_6019


Jump_003_6017:
    ld c, $03

Jump_003_6019:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $ff
    jp nc, Jump_003_602b

    inc [hl]

Jump_003_602b:
    call Call_000_2f24
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6045

    ld c, $0b
    jp Jump_003_6047


Jump_003_6045:
    ld c, $03

Jump_003_6047:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_61c4


Jump_003_6057:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $bf
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $7a49
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_61c4


Jump_003_607e:
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $d3
    jp nz, Jump_003_6098

    xor a
    ld hl, $c902
    or [hl]
    jp nz, Jump_003_60b9

Jump_003_6098:
    ld hl, sp+$06
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4a63
    add sp, $01
    ld hl, $c902
    ld [hl], $03
    jp Jump_003_61c4


Jump_003_60b9:
    xor a
    ld hl, $c40d
    or [hl]
    jp z, Jump_003_61c4

    ld hl, $c902
    dec [hl]
    ld hl, $c40d
    ld [hl], $00
    jp Jump_003_61c4


Jump_003_60cd:
    call Call_003_4bcb
    jp Jump_003_61c4


Jump_003_60d3:
    call Call_003_4857
    jp Jump_003_61c4


Jump_003_60d9:
    call Call_003_48c6
    jp Jump_003_61c4


Jump_003_60df:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_61c4

    xor a
    ld a, $0c
    sbc [hl]
    jp c, Jump_003_61c4

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $60fd
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_611e


    jp Jump_003_612a


    jp Jump_003_6136


    jp Jump_003_6142


    jp Jump_003_6182


    jp Jump_003_6196


    jp Jump_003_6188


    jp Jump_003_61af


    jp Jump_003_61b5


    jp Jump_003_61bb


    jp Jump_003_61c1


Jump_003_611e:
    ld a, $01
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_612a:
    ld a, $09
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_6136:
    ld a, $0a
    push af
    inc sp
    call Call_003_51a0
    add sp, $01
    jp Jump_003_61c4


Jump_003_6142:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $01
    jp nz, Jump_003_615f

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_6163


Jump_003_615f:
    ld hl, sp+$06
    ld [hl], $02

Jump_003_6163:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_61c4


Jump_003_6182:
    call Call_003_528a
    jp Jump_003_61c4


Jump_003_6188:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_61c4

    call Call_003_4bcb
    jp Jump_003_61c4


Jump_003_6196:
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $7a4d
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_61c4


Jump_003_61af:
    call Call_003_4293
    jp Jump_003_61c4


Jump_003_61b5:
    call Call_003_476a
    jp Jump_003_61c4


Jump_003_61bb:
    call Call_003_4857
    jp Jump_003_61c4


Jump_003_61c1:
    call Call_003_48c6

Jump_003_61c4:
    ld e, $01
    jp Jump_003_7a35


Jump_003_61c9:
    ld hl, $c428
    ld a, [hl]
    cp $01
    jp nz, Jump_003_61e9

    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_003_61e4

    ld a, [hl]
    add $ff
    ld c, a
    push af
    inc sp
    call Call_003_5147
    add sp, $01

Jump_003_61e4:
    ld e, $01
    jp Jump_003_7a35


Jump_003_61e9:
    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld c, [hl]
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_6a9f

    ld e, [hl]
    ld d, $00
    ld hl, $6256
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_6262


    jp Jump_003_63fd


    jp Jump_003_668e


    jp Jump_003_69ba


Jump_003_6262:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_6a9f

    xor a
    ld a, $0f
    sbc [hl]
    jp c, Jump_003_6a9f

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $6280
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_62aa


    jp Jump_003_62b6


    jp Jump_003_62c2


    jp Jump_003_62ce


    jp Jump_003_6310


    jp Jump_003_6356


    jp Jump_003_635c


    jp Jump_003_6389


    jp Jump_003_6397


    jp Jump_003_63a3


    jp Jump_003_63c9


    jp Jump_003_639d


    jp Jump_003_63f1


    jp Jump_003_63f7


Jump_003_62aa:
    ld a, $01
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_62b6:
    ld a, $09
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_62c2:
    ld a, $0a
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_62ce:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $c0
    jr nz, jr_003_62e2

    jp Jump_003_6a9f


jr_003_62e2:
    ld hl, sp+$06
    ld a, [hl]
    add $c0
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    and $c0
    ld c, a
    srl c
    srl c
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2cd5
    add sp, $01
    jp Jump_003_6a9f


Jump_003_6310:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $02
    jp nz, Jump_003_632f

    ld hl, sp+$06
    ld a, [hl]
    or $03
    ld [hl], a
    jp Jump_003_6337


Jump_003_632f:
    ld hl, sp+$06
    ld a, [hl]
    and $fc
    or $01
    ld [hl], a

Jump_003_6337:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6356:
    call Call_003_52de
    jp Jump_003_6a9f


Jump_003_635c:
    ld a, $04
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_003_636e

    dec [hl]

Jump_003_636e:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_6a9f


Jump_003_6389:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_6a9f

    call Call_003_4bea
    jp Jump_003_6a9f


Jump_003_6397:
    call Call_003_427b
    jp Jump_003_6a9f


Jump_003_639d:
    call Call_003_4792
    jp Jump_003_6a9f


Jump_003_63a3:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_6a9f


Jump_003_63c9:
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $ff
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_63f1:
    call Call_003_47cb
    jp Jump_003_6a9f


Jump_003_63f7:
    call Call_003_48ff
    jp Jump_003_6a9f


Jump_003_63fd:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_6a9f

    xor a
    ld a, $0e
    sbc [hl]
    jp c, Jump_003_6a9f

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $641b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_6442


    jp Jump_003_64bb


    jp Jump_003_64fb


    jp Jump_003_664d


    jp Jump_003_6659


    jp Jump_003_6653


    jp Jump_003_6568


    jp Jump_003_6501


    jp Jump_003_6629


    jp Jump_003_65bf


    jp Jump_003_6608


    jp Jump_003_6682


    jp Jump_003_6688


Jump_003_6442:
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $60
    ld hl, sp+$06
    ld [hl], a
    or a
    jp z, Jump_003_6471

    ld hl, sp+$06
    ld a, [hl]
    cp $20
    jp z, Jump_003_647d

    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp z, Jump_003_648d

    ld hl, sp+$06
    ld a, [hl]
    cp $60
    jp z, Jump_003_649d

    jp Jump_003_64aa


Jump_003_6471:
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_64aa


Jump_003_647d:
    ld hl, sp+$06
    ld [hl], $40
    ld a, $32
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_64aa


Jump_003_648d:
    ld hl, sp+$06
    ld [hl], $60
    ld a, $31
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_64aa


Jump_003_649d:
    ld hl, sp+$06
    ld [hl], $00
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_003_64aa:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_64bb:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $02
    jp nz, Jump_003_64d8

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_64dc


Jump_003_64d8:
    ld hl, sp+$06
    ld [hl], $01

Jump_003_64dc:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_6a9f


Jump_003_64fb:
    call Call_003_4bea
    jp Jump_003_6a9f


Jump_003_6501:
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_6536

    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_003_6557

    ld hl, $c574
    ld a, [hl]
    add $ff
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld hl, sp+$06
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_6557


Jump_003_6536:
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    jr nz, jr_003_6540

    jp Jump_003_6557


jr_003_6540:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a
    ld c, a
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_003_6557:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6568:
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_003_6a9f

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $09
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld a, $31
    add c
    ld c, a
    ld a, $08
    adc $00
    ld b, a
    push bc
    call Call_000_2eda
    add sp, $02
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_003_49e0
    call Call_003_49b4
    call Call_003_4a26
    call Call_003_4d34
    jp Jump_003_6a9f


Jump_003_65bf:
    call Call_003_4b13
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    and $0f
    jr nz, jr_003_65cd

    jp Jump_003_6a9f


jr_003_65cd:
    ld hl, sp+$06
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4b29
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    call Call_003_4a10
    ld c, e
    xor a
    ld hl, sp+$06
    ld a, [hl]
    sbc c
    jp nc, Jump_003_65f6

    ld a, [hl]
    push af
    inc sp
    call Call_003_4b48
    add sp, $01

Jump_003_65f6:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_003_4a26
    jp Jump_003_6a9f


Jump_003_6608:
    call Call_003_4a10
    ld hl, sp+$06
    ld [hl], e
    call Call_003_4b13
    ld c, e
    xor a
    ld hl, sp+$06
    ld a, [hl]
    sbc c
    jp nc, Jump_003_6a9f

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4b48
    add sp, $01
    call Call_003_4a26
    jp Jump_003_6a9f


Jump_003_6629:
    call Call_003_4aee
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    or e
    jp z, Jump_003_6a9f

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_003_4aff
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_6a9f


Jump_003_664d:
    call Call_003_427b
    jp Jump_003_6a9f


Jump_003_6653:
    call Call_003_4792
    jp Jump_003_6a9f


Jump_003_6659:
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $ff
    ld hl, sp+$06
    ld [hl], a
    cp $7f
    jp z, Jump_003_6a9f

    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    call Call_003_4cf8
    jp Jump_003_6a9f


Jump_003_6682:
    call Call_003_47cb
    jp Jump_003_6a9f


Jump_003_6688:
    call Call_003_48ff
    jp Jump_003_6a9f


Jump_003_668e:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_6a9f

    xor a
    ld a, $11
    sbc [hl]
    jp c, Jump_003_6a9f

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $66ac
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_66dc


    jp Jump_003_66dc


    jp Jump_003_66eb


    jp Jump_003_6764


    jp Jump_003_69a8


    jp Jump_003_67a4


    jp Jump_003_688a


    jp Jump_003_688a


    jp Jump_003_68d3


    jp Jump_003_68d3


    jp Jump_003_67ca


    jp Jump_003_682a


    jp Jump_003_6932


    jp Jump_003_6959


    jp Jump_003_69ae


    jp Jump_003_69b4


Jump_003_66dc:
    call Call_003_5059
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_003_4ffb
    add sp, $01
    jp Jump_003_6a9f


Jump_003_66eb:
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $60
    ld hl, sp+$06
    ld [hl], a
    or a
    jp z, Jump_003_671a

    ld hl, sp+$06
    ld a, [hl]
    cp $20
    jp z, Jump_003_6726

    ld hl, sp+$06
    ld a, [hl]
    cp $40
    jp z, Jump_003_6736

    ld hl, sp+$06
    ld a, [hl]
    cp $60
    jp z, Jump_003_6746

    jp Jump_003_6753


Jump_003_671a:
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_6753


Jump_003_6726:
    ld hl, sp+$06
    ld [hl], $40
    ld a, $32
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_6753


Jump_003_6736:
    ld hl, sp+$06
    ld [hl], $60
    ld a, $31
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_003_6753


Jump_003_6746:
    ld hl, sp+$06
    ld [hl], $00
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_003_6753:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6764:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $02
    jp nz, Jump_003_6781

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_6785


Jump_003_6781:
    ld hl, sp+$06
    ld [hl], $01

Jump_003_6785:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_6a9f


Jump_003_67a4:
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_67ca:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    bit 7, a
    jp z, Jump_003_67fa

    and $7f
    ld [hl], a
    ld hl, $7a52
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_67fa:
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld c, e
    ld a, c
    rla
    sbc a
    ld a, c
    and $bf
    ld c, a
    ld b, $00
    ld [hl], c
    ld hl, $7a56
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_682a:
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    bit 7, a
    jp z, Jump_003_685a

    and $7f
    ld [hl], a
    ld hl, $7a5a
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_685a:
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld c, e
    ld a, c
    rla
    sbc a
    ld a, c
    and $df
    ld c, a
    ld b, $00
    ld [hl], c
    ld hl, $7a5e
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_688a:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6897

    ld c, $0d
    jp Jump_003_6899


Jump_003_6897:
    ld c, $0c

Jump_003_6899:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_003_68aa

    dec [hl]

Jump_003_68aa:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_68c1

    ld c, $0d
    jp Jump_003_68c3


Jump_003_68c1:
    ld c, $0c

Jump_003_68c3:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_68d3:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_68e0

    ld c, $0b
    jp Jump_003_68e2


Jump_003_68e0:
    ld c, $03

Jump_003_68e2:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_003_68f3

    dec [hl]

Jump_003_68f3:
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_003_690a

    call Call_000_2f24
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_6913


Jump_003_690a:
    ld hl, $7a62
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_6913:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6920

    ld c, $0b
    jp Jump_003_6922


Jump_003_6920:
    ld c, $03

Jump_003_6922:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6932:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    or $40
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $7a66
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6959:
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $d0
    jp nz, Jump_003_6973

    xor a
    ld hl, $c902
    or [hl]
    jp nz, Jump_003_6994

Jump_003_6973:
    ld hl, sp+$06
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4a63
    add sp, $01
    ld hl, $c902
    ld [hl], $03
    jp Jump_003_6a9f


Jump_003_6994:
    xor a
    ld hl, $c40d
    or [hl]
    jp z, Jump_003_6a9f

    ld hl, $c902
    dec [hl]
    ld hl, $c40d
    ld [hl], $00
    jp Jump_003_6a9f


Jump_003_69a8:
    call Call_003_4bea
    jp Jump_003_6a9f


Jump_003_69ae:
    call Call_003_47cb
    jp Jump_003_6a9f


Jump_003_69b4:
    call Call_003_48ff
    jp Jump_003_6a9f


Jump_003_69ba:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp c, Jump_003_6a9f

    xor a
    ld a, $0c
    sbc [hl]
    jp c, Jump_003_6a9f

    ld a, [hl]
    add $fe
    ld c, a
    ld e, c
    ld d, $00
    ld hl, $69d8
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_69f9


    jp Jump_003_6a05


    jp Jump_003_6a11


    jp Jump_003_6a1d


    jp Jump_003_6a5d


    jp Jump_003_6a71


    jp Jump_003_6a63


    jp Jump_003_6a8a


    jp Jump_003_6a90


    jp Jump_003_6a96


    jp Jump_003_6a9c


Jump_003_69f9:
    ld a, $01
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_6a05:
    ld a, $09
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_6a11:
    ld a, $0a
    push af
    inc sp
    call Call_003_51db
    add sp, $01
    jp Jump_003_6a9f


Jump_003_6a1d:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld c, e
    ld a, c
    and $03
    ld c, a
    cp $02
    jp nz, Jump_003_6a3a

    ld hl, sp+$06
    ld [hl], $03
    jp Jump_003_6a3e


Jump_003_6a3a:
    ld hl, sp+$06
    ld [hl], $01

Jump_003_6a3e:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6a5d:
    call Call_003_52de
    jp Jump_003_6a9f


Jump_003_6a63:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_6a9f

    call Call_003_4bea
    jp Jump_003_6a9f


Jump_003_6a71:
    ld a, $00
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, $7a6a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_003_6a9f


Jump_003_6a8a:
    call Call_003_427b
    jp Jump_003_6a9f


Jump_003_6a90:
    call Call_003_4792
    jp Jump_003_6a9f


Jump_003_6a96:
    call Call_003_47cb
    jp Jump_003_6a9f


Jump_003_6a9c:
    call Call_003_48ff

Jump_003_6a9f:
    ld e, $01
    jp Jump_003_7a35


Jump_003_6aa4:
    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld c, [hl]
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_70be

    ld e, [hl]
    ld d, $00
    ld hl, $6b11
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_6b1d


    jp Jump_003_6c99


    jp Jump_003_6e1d


    jp Jump_003_7036


Jump_003_6b1d:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_6b60

    cp $03
    jp z, Jump_003_6b6c

    cp $04
    jp z, Jump_003_6b78

    cp $05
    jp z, Jump_003_6b84

    cp $06
    jp z, Jump_003_6bc4

    cp $07
    jp z, Jump_003_6bee

    cp $08
    jp z, Jump_003_6bf4

    cp $09
    jp z, Jump_003_6c2a

    cp $0b
    jp z, Jump_003_6c30

    cp $0c
    jp z, Jump_003_6c57

    cp $0e
    jp z, Jump_003_6c7f

    cp $0f
    jp z, Jump_003_6c93

    jp Jump_003_70be


Jump_003_6b60:
    ld a, $01
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_6b6c:
    ld a, $09
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_6b78:
    ld a, $0a
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_6b84:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $c0
    ld c, a
    cp $c0
    jp z, Jump_003_70be

    ld hl, sp+$06
    ld a, [hl]
    add $40
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2cd5
    add sp, $01
    jp Jump_003_70be


Jump_003_6bc4:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld a, e
    or $03
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $03
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_70be


Jump_003_6bee:
    call Call_003_533b
    jp Jump_003_70be


Jump_003_6bf4:
    ld a, $04
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $70
    ld c, a
    cp $70
    jp z, Jump_003_6c0f

    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a

Jump_003_6c0f:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_70be


Jump_003_6c2a:
    call Call_003_4c83
    jp Jump_003_70be


Jump_003_6c30:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld a, e
    add $0c
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6c57:
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $10
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_70be


Jump_003_6c7f:
    call Call_003_4857
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_4857
    jp Jump_003_70be


Jump_003_6c93:
    call Call_003_494d
    jp Jump_003_70be


Jump_003_6c99:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_6cd2

    cp $03
    jp z, Jump_003_6ceb

    cp $04
    jp z, Jump_003_6d08

    cp $06
    jp z, Jump_003_6dd3

    cp $09
    jp z, Jump_003_6d34

    cp $0a
    jp z, Jump_003_6d0e

    cp $0b
    jp z, Jump_003_6d78

    cp $0c
    jp z, Jump_003_6dc4

    cp $0d
    jp z, Jump_003_6e03

    cp $0e
    jp z, Jump_003_6e17

    jp Jump_003_70be


Jump_003_6cd2:
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $20
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6ceb:
    ld a, $03
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $03
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_70be


Jump_003_6d08:
    call Call_003_4c83
    jp Jump_003_70be


Jump_003_6d0e:
    call Call_003_4aee
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    cp $ef
    jp nc, Jump_003_70be

    add $10
    ld [hl], a
    push af
    inc sp
    call Call_003_4aff
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_70be


Jump_003_6d34:
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_70be

    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $f0
    jp nc, Jump_003_70be

    ld hl, $c574
    ld a, [hl]
    add $ff
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6d78:
    call Call_003_4b13
    ld c, e
    ld a, $0f
    sub c
    ld hl, sp+$06
    ld [hl], a
    ld a, $0f
    push af
    inc sp
    call Call_003_4b29
    add sp, $01
    ld a, $46
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    call Call_003_4a10
    ld c, e
    ld a, c
    ld hl, sp+$06
    add [hl]
    ld [hl], a
    and $f0
    jr nz, jr_003_6da4

    jp Jump_003_6da8


jr_003_6da4:
    ld hl, sp+$06
    ld [hl], $0f

Jump_003_6da8:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4b48
    add sp, $01
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_003_4a26
    jp Jump_003_70be


Jump_003_6dc4:
    ld a, $00
    push af
    inc sp
    call Call_003_4b48
    add sp, $01
    call Call_003_4a26
    jp Jump_003_70be


Jump_003_6dd3:
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $10
    ld hl, sp+$06
    ld [hl], a
    and $f0
    ld c, a
    cp $80
    jp nz, Jump_003_6def

    ld hl, sp+$06
    ld [hl], $7f

Jump_003_6def:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    call Call_003_4cf8
    jp Jump_003_70be


Jump_003_6e03:
    call Call_003_4857
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_4857
    jp Jump_003_70be


Jump_003_6e17:
    call Call_003_494d
    jp Jump_003_70be


Jump_003_6e1d:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_6e7b

    cp $03
    jp z, Jump_003_6e7b

    cp $04
    jp z, Jump_003_6e9b

    cp $05
    jp z, Jump_003_6eb4

    cp $06
    jp z, Jump_003_7016

    cp $07
    jp z, Jump_003_6ed1

    cp $08
    jp z, Jump_003_6ef9

    ld c, a
    ld b, $00
    cp $09
    jp nz, Jump_003_6e51

    ld a, b
    or a
    jp z, Jump_003_6ef9

Jump_003_6e51:
    ld hl, $c428
    ld a, [hl]
    cp $0a
    jp z, Jump_003_6f52

    ld a, c
    cp $0b
    jp nz, Jump_003_6e65

    ld a, b
    or a
    jp z, Jump_003_6f52

Jump_003_6e65:
    ld hl, $c428
    ld a, [hl]
    cp $0f
    jp z, Jump_003_6fae

    cp $10
    jp z, Jump_003_701c

    cp $11
    jp z, Jump_003_7030

    jp Jump_003_70be


Jump_003_6e7b:
    ld hl, sp+$06
    ld [hl], $10

Jump_003_6e7f:
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_003_6e90

    call Call_003_50ab
    ld c, e
    ld hl, sp+$06
    dec [hl]
    jp Jump_003_6e7f


Jump_003_6e90:
    ld a, c
    push af
    inc sp
    call Call_003_4ffb
    add sp, $01
    jp Jump_003_70be


Jump_003_6e9b:
    ld a, $33
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $20
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6eb4:
    ld a, $03
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $03
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_70be


Jump_003_6ed1:
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $10
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6ef9:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6f06

    ld c, $0d
    jp Jump_003_6f08


Jump_003_6f06:
    ld c, $0c

Jump_003_6f08:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld c, a
    cp $f0
    jp z, Jump_003_6f25

    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a
    jp Jump_003_6f29


Jump_003_6f25:
    ld hl, sp+$06
    ld [hl], $ff

Jump_003_6f29:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6f40

    ld c, $0d
    jp Jump_003_6f42


Jump_003_6f40:
    ld c, $0c

Jump_003_6f42:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6f52:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6f5f

    ld c, $0b
    jp Jump_003_6f61


Jump_003_6f5f:
    ld c, $03

Jump_003_6f61:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    ld c, a
    cp $f0
    jp z, Jump_003_6f7e

    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a
    jp Jump_003_6f82


Jump_003_6f7e:
    ld hl, sp+$06
    ld [hl], $ff

Jump_003_6f82:
    call Call_000_2f24
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_6f9c

    ld c, $0b
    jp Jump_003_6f9e


Jump_003_6f9c:
    ld c, $03

Jump_003_6f9e:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_70be


Jump_003_6fae:
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $d3
    jp nz, Jump_003_6fc8

    xor a
    ld hl, $c902
    or [hl]
    jp nz, Jump_003_7002

Jump_003_6fc8:
    xor a
    ld a, $c2
    ld hl, sp+$06
    sbc [hl]
    jp nc, Jump_003_6fdc

    ld a, [hl]
    cp $d3
    jp nc, Jump_003_6fdc

    ld [hl], $d3
    jp Jump_003_6fe2


Jump_003_6fdc:
    ld hl, sp+$06
    ld a, [hl]
    add $10
    ld [hl], a

Jump_003_6fe2:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4a63
    add sp, $01
    ld hl, $c902
    ld [hl], $03
    jp Jump_003_70be


Jump_003_7002:
    xor a
    ld hl, $c40d
    or [hl]
    jp z, Jump_003_70be

    ld hl, $c902
    dec [hl]
    ld hl, $c40d
    ld [hl], $00
    jp Jump_003_70be


Jump_003_7016:
    call Call_003_4c83
    jp Jump_003_70be


Jump_003_701c:
    call Call_003_4857
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_4857
    jp Jump_003_70be


Jump_003_7030:
    call Call_003_494d
    jp Jump_003_70be


Jump_003_7036:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_7060

    cp $03
    jp z, Jump_003_706c

    cp $04
    jp z, Jump_003_7078

    cp $05
    jp z, Jump_003_7084

    cp $06
    jp z, Jump_003_70a1

    cp $0b
    jp z, Jump_003_70a7

    cp $0c
    jp z, Jump_003_70bb

    jp Jump_003_70be


Jump_003_7060:
    ld a, $01
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_706c:
    ld a, $09
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_7078:
    ld a, $0a
    push af
    inc sp
    call Call_003_5213
    add sp, $01
    jp Jump_003_70be


Jump_003_7084:
    ld a, $03
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $03
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_70be


Jump_003_70a1:
    call Call_003_533b
    jp Jump_003_70be


Jump_003_70a7:
    call Call_003_4857
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_4857
    jp Jump_003_70be


Jump_003_70bb:
    call Call_003_494d

Jump_003_70be:
    ld e, $01
    jp Jump_003_7a35


Jump_003_70c3:
    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld c, [hl]
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    xor a
    ld a, $03
    ld hl, sp+$05
    sbc [hl]
    jp c, Jump_003_76d0

    ld e, [hl]
    ld d, $00
    ld hl, $7130
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_003_713c


    jp Jump_003_72ba


    jp Jump_003_741e


    jp Jump_003_7648


Jump_003_713c:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_717f

    cp $03
    jp z, Jump_003_718b

    cp $04
    jp z, Jump_003_7197

    cp $05
    jp z, Jump_003_71a3

    cp $06
    jp z, Jump_003_71e5

    cp $07
    jp z, Jump_003_7210

    cp $08
    jp z, Jump_003_7216

    cp $09
    jp z, Jump_003_724b

    cp $0b
    jp z, Jump_003_7251

    cp $0c
    jp z, Jump_003_7278

    cp $0e
    jp z, Jump_003_72a0

    cp $0f
    jp z, Jump_003_72b4

    jp Jump_003_76d0


Jump_003_717f:
    ld a, $01
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_718b:
    ld a, $09
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_7197:
    ld a, $0a
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_71a3:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $c0
    jr nz, jr_003_71b7

    jp Jump_003_76d0


jr_003_71b7:
    ld hl, sp+$06
    ld a, [hl]
    add $c0
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    and $c0
    ld c, a
    srl c
    srl c
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2cd5
    add sp, $01
    jp Jump_003_76d0


Jump_003_71e5:
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $fc
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $00
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_76d0


Jump_003_7210:
    call Call_003_5399
    jp Jump_003_76d0


Jump_003_7216:
    ld a, $04
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    jr nz, jr_003_722a

    jp Jump_003_7230


jr_003_722a:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a

Jump_003_7230:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_76d0


Jump_003_724b:
    call Call_003_4c18
    jp Jump_003_76d0


Jump_003_7251:
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    add sp, $01
    ld a, e
    add $f4
    ld [hl], a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_76d0


Jump_003_7278:
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $f0
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_72a0:
    call Call_003_47cb
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_47cb
    jp Jump_003_76d0


Jump_003_72b4:
    call Call_003_4985
    jp Jump_003_76d0


Jump_003_72ba:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_72f3

    cp $03
    jp z, Jump_003_730c

    cp $04
    jp z, Jump_003_7329

    cp $06
    jp z, Jump_003_73d4

    cp $09
    jp z, Jump_003_7390

    cp $0a
    jp z, Jump_003_735f

    cp $0b
    jp z, Jump_003_732f

    cp $0c
    jp z, Jump_003_734d

    cp $0d
    jp z, Jump_003_7404

    cp $0e
    jp z, Jump_003_7418

    jp Jump_003_76d0


Jump_003_72f3:
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_730c:
    ld a, $00
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $00
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_76d0


Jump_003_7329:
    call Call_003_4c18
    jp Jump_003_76d0


Jump_003_732f:
    ld a, $00
    push af
    inc sp
    call Call_003_4b29
    add sp, $01
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a

Jump_003_734d:
    call Call_003_4b13
    ld c, e
    ld a, c
    push af
    inc sp
    call Call_003_4b48
    add sp, $01
    call Call_003_4a26
    jp Jump_003_76d0


Jump_003_735f:
    call Call_003_4aee
    ld hl, sp+$06
    ld [hl], e
    ld a, e
    cp $10
    jp nc, Jump_003_7370

    ld [hl], $00
    jp Jump_003_7376


Jump_003_7370:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a

Jump_003_7376:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4aff
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_76d0


Jump_003_7390:
    call Call_003_4105
    ld c, e
    xor a
    or c
    jp z, Jump_003_76d0

    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $10
    jp c, Jump_003_76d0

    ld hl, $c574
    ld a, [hl]
    add $ff
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_73d4:
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $f0
    ld hl, sp+$06
    ld [hl], a
    and $f0
    ld c, a
    cp $70
    jp nz, Jump_003_73f0

    ld hl, sp+$06
    ld [hl], $80

Jump_003_73f0:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    call Call_003_4cf8
    jp Jump_003_76d0


Jump_003_7404:
    call Call_003_47cb
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_47cb
    jp Jump_003_76d0


Jump_003_7418:
    call Call_003_4985
    jp Jump_003_76d0


Jump_003_741e:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_747c

    cp $03
    jp z, Jump_003_747c

    cp $04
    jp z, Jump_003_749c

    cp $05
    jp z, Jump_003_74b5

    cp $06
    jp z, Jump_003_7628

    cp $07
    jp z, Jump_003_74d2

    cp $08
    jp z, Jump_003_74fa

    ld c, a
    ld b, $00
    cp $09
    jp nz, Jump_003_7452

    ld a, b
    or a
    jp z, Jump_003_74fa

Jump_003_7452:
    ld hl, $c428
    ld a, [hl]
    cp $0a
    jp z, Jump_003_7552

    ld a, c
    cp $0b
    jp nz, Jump_003_7466

    ld a, b
    or a
    jp z, Jump_003_7552

Jump_003_7466:
    ld hl, $c428
    ld a, [hl]
    cp $0f
    jp z, Jump_003_75c0

    cp $10
    jp z, Jump_003_762e

    cp $11
    jp z, Jump_003_7642

    jp Jump_003_76d0


Jump_003_747c:
    ld hl, sp+$06
    ld [hl], $10

Jump_003_7480:
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_003_7491

    call Call_003_5059
    ld c, e
    ld hl, sp+$06
    dec [hl]
    jp Jump_003_7480


Jump_003_7491:
    ld a, c
    push af
    inc sp
    call Call_003_4ffb
    add sp, $01
    jp Jump_003_76d0


Jump_003_749c:
    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_74b5:
    ld a, $00
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $00
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_76d0


Jump_003_74d2:
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    add $f0
    ld hl, sp+$06
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $08
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_74fa:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_7507

    ld c, $0d
    jp Jump_003_7509


Jump_003_7507:
    ld c, $0c

Jump_003_7509:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    jr nz, jr_003_751c

    jp Jump_003_7525


jr_003_751c:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a
    jp Jump_003_7529


Jump_003_7525:
    ld hl, sp+$06
    ld [hl], $00

Jump_003_7529:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_7540

    ld c, $0d
    jp Jump_003_7542


Jump_003_7540:
    ld c, $0c

Jump_003_7542:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_7552:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_755f

    ld c, $0b
    jp Jump_003_7561


Jump_003_755f:
    ld c, $03

Jump_003_7561:
    ld a, c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    and $f0
    jr nz, jr_003_7574

    jp Jump_003_757d


jr_003_7574:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a
    jp Jump_003_7581


Jump_003_757d:
    ld hl, sp+$06
    ld [hl], $00

Jump_003_7581:
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_003_7598

    call Call_000_2f24
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_003_75a1


Jump_003_7598:
    ld hl, $7a6f
    push hl
    call Call_000_2eda
    add sp, $02

Jump_003_75a1:
    xor a
    ld hl, $c429
    or [hl]
    jp z, Jump_003_75ae

    ld c, $0b
    jp Jump_003_75b0


Jump_003_75ae:
    ld c, $03

Jump_003_75b0:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    jp Jump_003_76d0


Jump_003_75c0:
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    cp $d0
    jp nz, Jump_003_75da

    xor a
    ld hl, $c902
    or [hl]
    jp nz, Jump_003_7614

Jump_003_75da:
    xor a
    ld a, $d0
    ld hl, sp+$06
    sbc [hl]
    jp nc, Jump_003_75ee

    ld a, [hl]
    cp $e0
    jp nc, Jump_003_75ee

    ld [hl], $d0
    jp Jump_003_75f4


Jump_003_75ee:
    ld hl, sp+$06
    ld a, [hl]
    add $f0
    ld [hl], a

Jump_003_75f4:
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_003_4a63
    add sp, $01
    ld hl, $c902
    ld [hl], $03
    jp Jump_003_76d0


Jump_003_7614:
    xor a
    ld hl, $c40d
    or [hl]
    jp z, Jump_003_76d0

    ld hl, $c902
    dec [hl]
    ld hl, $c40d
    ld [hl], $00
    jp Jump_003_76d0


Jump_003_7628:
    call Call_003_4c18
    jp Jump_003_76d0


Jump_003_762e:
    call Call_003_47cb
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_47cb
    jp Jump_003_76d0


Jump_003_7642:
    call Call_003_4985
    jp Jump_003_76d0


Jump_003_7648:
    ld hl, $c428
    ld a, [hl]
    cp $02
    jp z, Jump_003_7672

    cp $03
    jp z, Jump_003_767e

    cp $04
    jp z, Jump_003_768a

    cp $05
    jp z, Jump_003_7696

    cp $06
    jp z, Jump_003_76b3

    cp $0b
    jp z, Jump_003_76b9

    cp $0c
    jp z, Jump_003_76cd

    jp Jump_003_76d0


Jump_003_7672:
    ld a, $01
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_767e:
    ld a, $09
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_768a:
    ld a, $0a
    push af
    inc sp
    call Call_003_5250
    add sp, $01
    jp Jump_003_76d0


Jump_003_7696:
    ld a, $00
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    call Call_003_4000
    add sp, $02
    ld a, $00
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    jp Jump_003_76d0


Jump_003_76b3:
    call Call_003_5399
    jp Jump_003_76d0


Jump_003_76b9:
    call Call_003_47cb
    ld hl, $c574
    ld a, [hl]
    add $f9
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a
    call Call_003_47cb
    jp Jump_003_76d0


Jump_003_76cd:
    call Call_003_4985

Jump_003_76d0:
    ld e, $01
    jp Jump_003_7a35


Jump_003_76d5:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_003_7861

    xor a
    ld hl, $c428
    or [hl]
    jp nz, Jump_003_76fb

    ld hl, $c431
    ld [hl], $01
    ld c, $8a
    ld b, $4e
    push bc
    ld a, $1b
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_003_7861


Jump_003_76fb:
    ld hl, $c406
    ld c, [hl]
    inc [hl]
    ld a, c
    cp $01
    jp nz, Jump_003_77ad

    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_414f
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_003_7776

    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld b, [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld de, $402b
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld c, [hl]
    ld hl, sp+$02
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
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    call Call_003_436d
    jp Jump_003_7798


Jump_003_7776:
    ld hl, sp+$05
    ld a, [hl]
    cp $01
    jp nz, Jump_003_7798

    ld hl, $c428
    ld a, [hl]
    cp $09
    jp nz, Jump_003_7798

    call Call_003_4105
    ld c, e
    xor a
    or c
    jp nz, Jump_003_7798

    call $43e9
    ld e, $01
    jp Jump_003_7a35


Jump_003_7798:
    ld bc, $6936
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    jp Jump_003_7861


Jump_003_77ad:
    ld hl, $c406
    ld a, [hl]
    cp $01
    jp nz, Jump_003_7861

    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_003_414f
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_003_7861

    call Call_003_4118
    ld c, e
    xor a
    or c
    jp nz, Jump_003_7861

    call Call_003_4133
    ld a, $12
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $406e
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c428
    ld a, [hl]
    add $ff
    ld hl, sp+$02
    ld [hl], a
    dec hl
    dec hl
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
    ld a, $2b
    add c
    ld c, a
    ld a, $40
    adc $00
    ld b, a
    inc hl
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, bc
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, c
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
    ld bc, $4000
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    inc [hl]
    jr nz, jr_003_7848

    inc hl
    inc [hl]

jr_003_7848:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld bc, $409c
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_7861:
    ld e, $01
    jp Jump_003_7a35


Jump_003_7866:
    call Call_003_4661
    ld e, $01
    jp Jump_003_7a35


Jump_003_786e:
    call Call_003_45fc
    ld e, $01
    jp Jump_003_7a35


Jump_003_7876:
    ld hl, $c577
    ld a, [hl]
    add $0f
    ld [hl], a
    xor a
    ld a, $40
    sbc [hl]
    jp nc, Jump_003_7886

    ld [hl], $40

Jump_003_7886:
    call Call_003_4661
    ld e, $01
    jp Jump_003_7a35


Jump_003_788e:
    call Call_003_4644
    ld e, $01
    jp Jump_003_7a35


Jump_003_7896:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_7a33

    ld hl, sp+$05
    ld a, [hl]
    cp $01
    jp nz, Jump_003_78c0

    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, $c42b
    ld [hl], e
    add sp, $01
    ld a, e
    srl a
    srl a
    srl a
    srl a
    ld hl, $c442
    ld [hl], a

Jump_003_78c0:
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
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_003_7a33


Jump_003_78de:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_7a33

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
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_003_7a33


Jump_003_7904:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_7a33

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
    jp Jump_003_7a35


Jump_003_792c:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_7a33

    ld bc, $4253
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    bit 5, a
    jp z, Jump_003_7959

    and $1f
    ld hl, $c41c
    ld [hl], a

Jump_003_7959:
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_003_7a35


Jump_003_796c:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_003_7979

    ld e, $01
    jp Jump_003_7a35


Jump_003_7979:
    xor a
    ld hl, $c904
    or [hl]
    jp z, Jump_003_79bd

    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $03
    ld c, a
    cp $01
    jp nz, Jump_003_79ac

    ld hl, $c428
    ld a, [hl]
    cp $09
    jp nz, Jump_003_79ac

    call Call_003_4105
    ld c, e
    xor a
    or c
    jp nz, Jump_003_79ac

    call Call_003_4443
    jp Jump_003_79cb


Jump_003_79ac:
    ld c, $6e
    ld b, $54
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    jp Jump_003_79cb


Jump_003_79bd:
    ld c, $1b
    ld b, $55
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_003_79cb:
    call Call_003_4e06
    ld e, $01
    jp Jump_003_7a35


Jump_003_79d3:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_003_79e0

    ld e, $01
    jp Jump_003_7a35


Jump_003_79e0:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_003_7a35


Jump_003_79f3:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_003_7a03

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_003_7a08

Jump_003_7a03:
    ld e, $01
    jp Jump_003_7a35


Jump_003_7a08:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_003_7a35


Jump_003_7a1b:
    ld c, $53
    ld b, $52
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c904
    ld [hl], $01
    ld e, $01
    jp Jump_003_7a35


Jump_003_7a33:
    ld e, $00

Jump_003_7a35:
    add sp, $07
    pop bc
    ret


    jr nz, jr_003_7a8a

    ld c, [hl]
    nop
    ld b, c
    ld d, h
    ld c, e
    nop
    jr nz, jr_003_7a92

    ld c, [hl]
    nop
    ld b, c
    ld d, h
    ld c, e
    nop
    jr nz, jr_003_7a6b

    ld sp, $5300
    ld b, c
    ld b, [hl]
    ld b, l
    nop
    jr nz, jr_003_7aa3

    ld c, [hl]
    nop
    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_003_7aab

    ld c, [hl]
    nop
    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop
    ld b, c
    ld c, h
    ld c, h
    nop
    jr nc, jr_003_7a96

    dec [hl]
    nop
    ld b, [hl]

jr_003_7a6b:
    ld d, d
    ld b, l
    ld b, l
    nop
    ld b, c
    ld c, h
    ld c, h
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

jr_003_7a8a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7a92:
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7a96:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7aa3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_7aab:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
