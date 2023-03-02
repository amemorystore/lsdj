; disasSembly of "lsdj.gb"
SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

Call_006_4000:
    push bc
    ld a, $0f
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_374f
    ld c, e
    add sp, $02
    ld a, c
    add $19
    ld c, a
    xor a
    ld a, $1a
    sbc c
    jp nc, Jump_006_401f

    ld a, c
    add $05
    ld c, a

Jump_006_401f:
    ld e, c
    pop bc
    ret


    ld [bc], a
    ld b, $03
    ld [bc], a

Call_006_4026:
    push bc
    ld de, $c933
    ld hl, sp+$04
    ld a, [hl]
    ld [de], a
    ld c, a
    dec c
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_375b
    ld b, e
    add sp, $02
    inc b
    ld a, c
    push af
    inc sp
    call Call_006_4000
    ld c, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


Call_006_405d:
    push bc
    add sp, -$02
    ld hl, $c42a
    ld c, [hl]
    ld b, $00
    ld a, $06
    jr jr_006_406f

jr_006_406a:
    or a
    rl c
    rl b

jr_006_406f:
    dec a
    jr nz, jr_006_406a

    ld hl, $b890
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c936
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
    ld hl, $c935
    ld a, [hl]
    add a
    ld c, a
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
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    add sp, $02
    pop bc
    ret


Call_006_40b3:
    push bc
    add sp, -$02
    ld hl, $c42a
    ld c, [hl]
    ld b, $00
    ld a, $06
    jr jr_006_40c5

jr_006_40c0:
    or a
    rl c
    rl b

jr_006_40c5:
    dec a
    jr nz, jr_006_40c0

    ld hl, $b890
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c936
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
    ld hl, $c935
    ld a, [hl]
    add a
    ld c, a
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
    add sp, $02
    pop bc
    ret


Call_006_410e:
    push bc
    add sp, -$01
    ld hl, $c936
    ld c, [hl]
    ld a, $24
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, $c935
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c936
    ld b, [hl]
    ld a, $22
    add b
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $01
    pop bc
    ret


Call_006_414f:
    push bc
    add sp, -$02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_415f

    ld c, $03
    jp Jump_006_4161


Jump_006_415f:
    ld c, $02

Jump_006_4161:
    ld hl, $c936
    ld b, [hl]
    ld a, $24
    add b
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c935
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c936
    ld b, [hl]
    ld a, $22
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
    add sp, $02
    pop bc
    ret


Call_006_41a2:
    push bc
    add sp, -$04
    ld c, $5c
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $42fb
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $03
    push af
    inc sp
    ld hl, $c42a
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld b, $00
    ld hl, $bdd0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_006_41ec:
    ld hl, sp+$01
    ld a, [hl]
    cp $03
    jp nc, Jump_006_421f

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp z, Jump_006_421f

    ld a, e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_006_4219

    inc hl
    inc [hl]

jr_006_4219:
    ld hl, sp+$01
    inc [hl]
    jp Jump_006_41ec


Jump_006_421f:
    call Call_000_2c57
    ld c, $f1
    ld b, $6f
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c42a
    ld c, [hl]
    ld b, $00
    ld a, $06
    jr jr_006_423f

jr_006_423a:
    or a
    rl c
    rl b

jr_006_423f:
    dec a
    jr nz, jr_006_423a

    ld hl, $b890
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_006_4250:
    ld hl, sp+$01
    ld a, [hl]
    cp $10
    jp nc, Jump_006_42f4

    add $02
    ld c, a
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_4279

    inc hl
    inc [hl]

jr_006_4279:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_006_42bb

    dec c
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_375b
    ld b, e
    add sp, $02
    inc b
    ld a, c
    push af
    inc sp
    call Call_006_4000
    ld c, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_000_2f24
    jp Jump_006_42c4


Jump_006_42bb:
    ld hl, $4301
    push hl
    call Call_000_2eda
    add sp, $02

Jump_006_42c4:
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_42db

    inc hl
    inc [hl]

jr_006_42db:
    push bc
    ld a, $00
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
    ld hl, sp+$01
    inc [hl]
    jp Jump_006_4250


Jump_006_42f4:
    call Call_006_414f
    add sp, $04
    pop bc
    ret


    ld d, a
    ld c, a
    ld d, d
    ld b, h
    jr nz, jr_006_4301

jr_006_4301:
    dec l
    dec l
    dec l
    jr nz, jr_006_4306

Call_006_4306:
jr_006_4306:
    ld hl, $c935
    ld a, [hl]
    cp $0f
    jp nz, Jump_006_4312

    jp Jump_006_431c


Jump_006_4312:
    call Call_006_410e
    ld hl, $c935
    inc [hl]
    call Call_006_414f

Jump_006_431c:
    ret


    push bc
    add sp, -$03
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c935
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c936
    ld a, [hl]
    add a
    add a
    ld b, a
    inc b
    inc b
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_006_43e5

    cp $02
    jp z, Jump_006_43d5

    cp $04
    jp z, Jump_006_43b6

    cp $08
    jp z, Jump_006_43cd

    cp $10
    jp z, Jump_006_44e5

    cp $11
    jp z, Jump_006_45ed

    cp $12
    jp z, Jump_006_4666

    cp $14
    jp z, Jump_006_46df

    cp $18
    jp z, Jump_006_4736

    cp $21
    jp z, Jump_006_479e

    cp $22
    jp z, Jump_006_478d

    cp $24
    jp z, Jump_006_47cf

    cp $28
    jp z, Jump_006_47b7

    cp $30
    jp z, Jump_006_43f5

    cp $42
    jp z, Jump_006_47e5

    cp $44
    jp z, Jump_006_480d

    cp $48
    jp z, Jump_006_4835

    cp $50
    jp z, Jump_006_449c

    cp $80
    jp z, Jump_006_487d

    cp $c0
    jp z, Jump_006_485d

    jp Jump_006_48a5


Jump_006_43b6:
    xor a
    ld hl, $c935
    or [hl]
    jp z, Jump_006_43c8

    call Call_006_410e
    ld hl, $c935
    dec [hl]
    call Call_006_414f

Jump_006_43c8:
    ld e, $01
    jp Jump_006_48a7


Jump_006_43cd:
    call Call_006_4306
    ld e, $01
    jp Jump_006_48a7


Jump_006_43d5:
    call Call_006_410e
    ld hl, $c936
    ld [hl], $00
    call Call_006_414f
    ld e, $01
    jp Jump_006_48a7


Jump_006_43e5:
    call Call_006_410e
    ld hl, $c936
    ld [hl], $01
    call Call_006_414f
    ld e, $01
    jp Jump_006_48a7


Jump_006_43f5:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_4402

    ld e, $00
    jp Jump_006_48a7


Jump_006_4402:
    ld hl, $c936
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c412
    ld a, [hl]
    cp $0c
    jp z, Jump_006_441e

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_441e

    call Call_000_144b

Jump_006_441e:
    ld hl, $c412
    ld [hl], $0c
    ld hl, $c414
    ld [hl], $02
    ld hl, $c936
    ld [hl], $00
    call Call_006_405d
    ld b, e
    ld de, $c933
    ld a, b
    ld [de], a
    call Call_006_405d
    ld b, e
    ld de, $c579
    ld a, b
    ld [de], a
    ld hl, $c936
    ld [hl], $01
    ld a, $33
    add $01
    ld hl, $c937
    ld [hl], a
    ld a, $c9
    adc $00
    inc hl
    ld [hl], a
    call Call_006_405d
    ld c, e
    ld hl, $c937
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $79
    add $01
    dec hl
    ld [hl], a
    ld a, $c5
    adc $00
    inc hl
    ld [hl], a
    call Call_006_405d
    ld c, e
    ld hl, $c937
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld a, $00
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, $c936
    ld [hl], $00
    ld a, $00
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c936
    ld [hl], a
    call Call_006_41a2
    ld e, $01
    jp Jump_006_48a7


Jump_006_449c:
    ld hl, $c412
    ld a, [hl]
    cp $0c
    jp z, Jump_006_44aa

    ld e, $00
    jp Jump_006_48a7


Jump_006_44aa:
    ld hl, $c936
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c936
    ld [hl], $00
    ld de, $c579
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, $c936
    ld [hl], $01
    ld de, $c57a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c936
    ld [hl], a
    call Call_006_41a2
    call Call_006_4306
    ld e, $01
    jp Jump_006_48a7


Jump_006_44e5:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_44f2

    ld e, $00
    jp Jump_006_48a7


Jump_006_44f2:
    ld hl, $c936
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    xor a
    ld hl, $c936
    or [hl]
    jp nz, Jump_006_45ac

    call Call_006_405d
    ld b, e
    xor a
    or b
    jp nz, Jump_006_45a2

    ld de, $c933
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_006_45a2

    ld a, b
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, $c936
    ld [hl], $01
    ld de, $c934
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, sp+$02
    ld [hl], b
    dec [hl]
    ld a, $0f
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_375b
    ld b, e
    add sp, $02
    ld a, b
    add $01
    ld hl, $c937
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_4000
    ld b, e
    add sp, $01
    ld hl, $c937
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_000_2f24
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
    ld hl, sp+$01
    ld a, [hl]
    ld hl, $c936
    ld [hl], a
    call Call_006_414f
    ld e, $01
    jp Jump_006_48a7


Jump_006_45a2:
    ld hl, sp+$01
    ld a, [hl]
    ld hl, $c936
    ld [hl], a
    jp Jump_006_45e8


Jump_006_45ac:
    call Call_006_405d
    ld c, e
    xor a
    or c
    jp nz, Jump_006_45e8

    ld de, $c934
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $06
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
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_006_48a7


Jump_006_45e8:
    ld e, $00
    jp Jump_006_48a7


Jump_006_45ed:
    call Call_006_405d
    ld hl, sp+$02
    ld [hl], e
    xor a
    ld hl, $c936
    or [hl]
    jp z, Jump_006_4618

    ld hl, sp+$02
    ld a, [hl]
    cp $ff
    jp nc, Jump_006_4604

    inc [hl]

Jump_006_4604:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld de, $c934
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    jp Jump_006_4657


Jump_006_4618:
    ld hl, sp+$02
    ld a, [hl]
    cp $3b
    jp z, Jump_006_4657

    ld a, $0f
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_375b
    ld c, e
    add sp, $02
    inc c
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_4000
    ld b, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, sp+$02
    inc [hl]
    ld de, $c933
    ld a, [hl]
    ld [de], a
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02

Jump_006_4657:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld e, $01
    jp Jump_006_48a7


Jump_006_4666:
    call Call_006_405d
    ld hl, sp+$02
    ld [hl], e
    xor a
    ld hl, $c936
    or [hl]
    jp z, Jump_006_4690

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_006_467c

    dec [hl]

Jump_006_467c:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld de, $c934
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    jp Jump_006_46d0


Jump_006_4690:
    xor a
    ld a, $01
    ld hl, sp+$02
    sbc [hl]
    jp nc, Jump_006_46d0

    dec [hl]
    dec [hl]
    ld a, $0f
    push af
    inc sp
    ld a, [hl]
    push af
    inc sp
    call Call_000_375b
    ld c, e
    add sp, $02
    inc c
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_4000
    ld b, e
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    ld hl, sp+$02
    inc [hl]
    ld de, $c933
    ld a, [hl]
    ld [de], a
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02

Jump_006_46d0:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld e, $01
    jp Jump_006_48a7


Jump_006_46df:
    call Call_006_405d
    ld c, e
    ld a, c
    add $10
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, $c936
    or [hl]
    jp z, Jump_006_4712

    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_006_46fe

    ld e, $00
    jp Jump_006_48a7


Jump_006_46fe:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld de, $c934
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    jp Jump_006_4727


Jump_006_4712:
    xor a
    ld a, $3b
    ld hl, sp+$02
    sbc [hl]
    jp nc, Jump_006_471d

    ld [hl], $3b

Jump_006_471d:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_4026
    add sp, $01

Jump_006_4727:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld e, $01
    jp Jump_006_48a7


Jump_006_4736:
    call Call_006_405d
    ld c, e
    ld a, c
    add $f0
    ld hl, sp+$02
    ld [hl], a
    xor a
    ld hl, $c936
    or [hl]
    jp z, Jump_006_4769

    ld hl, sp+$02
    ld a, [hl]
    cp $f0
    jp c, Jump_006_4755

    ld e, $00
    jp Jump_006_48a7


Jump_006_4755:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld de, $c934
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    jp Jump_006_477e


Jump_006_4769:
    xor a
    ld a, $80
    ld hl, sp+$02
    sbc [hl]
    jp nc, Jump_006_4774

    ld [hl], $01

Jump_006_4774:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_4026
    add sp, $01

Jump_006_477e:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_006_40b3
    add sp, $01
    ld e, $01
    jp Jump_006_48a7


Jump_006_478d:
    xor a
    ld hl, $c42a
    or [hl]
    jp z, Jump_006_4799

    dec [hl]
    call Call_006_41a2

Jump_006_4799:
    ld e, $01
    jp Jump_006_48a7


Jump_006_479e:
    ld hl, $c42a
    ld c, [hl]
    ld b, $00
    ld hl, $fff3
    add hl, bc
    jp c, Jump_006_47b2

    ld hl, $c42a
    inc [hl]
    call Call_006_41a2

Jump_006_47b2:
    ld e, $01
    jp Jump_006_48a7


Jump_006_47b7:
    ld hl, $c42a
    ld a, [hl]
    add $f4
    ld [hl], a
    xor a
    ld a, $80
    sbc [hl]
    jp nc, Jump_006_47c7

    ld [hl], $00

Jump_006_47c7:
    call Call_006_41a2
    ld e, $01
    jp Jump_006_48a7


Jump_006_47cf:
    ld hl, $c42a
    ld a, [hl]
    add $0c
    ld [hl], a
    cp $0e
    jp c, Jump_006_47dd

    ld [hl], $0d

Jump_006_47dd:
    call Call_006_41a2
    ld e, $01
    jp Jump_006_48a7


Jump_006_47e5:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_48a5

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
    jp Jump_006_48a7


Jump_006_480d:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_48a5

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
    ld e, $01
    jp Jump_006_48a7


Jump_006_4835:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_48a5

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
    ld e, $01
    jp Jump_006_48a7


Jump_006_485d:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_486a

    ld e, $01
    jp Jump_006_48a7


Jump_006_486a:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_48a7


Jump_006_487d:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_488d

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_4892

Jump_006_488d:
    ld e, $01
    jp Jump_006_48a7


Jump_006_4892:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_48a7


Jump_006_48a5:
    ld e, $00

Jump_006_48a7:
    add sp, $03
    pop bc
    ret


Call_006_48ab:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    bit 3, a
    jp z, Jump_006_48c6

    ld hl, sp+$00
    ld [hl], $c4
    inc hl
    ld [hl], $bf
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    jp Jump_006_48d3


Jump_006_48c6:
    ld hl, sp+$00
    ld [hl], $c5
    inc hl
    ld [hl], $bf
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_006_48d3:
    ld hl, sp+$00
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, sp+$08
    ld a, [hl]
    cp $10
    jp c, Jump_006_48e3

    call Call_000_144b

Jump_006_48e3:
    ld e, c
    ld d, b
    add sp, $04
    pop bc
    ret


Call_006_48e9:
    push bc
    add sp, -$03
    ld hl, $c42b
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_006_48ab
    ld hl, sp+$02
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
    ld b, e
    add sp, $03
    ld hl, sp+$02
    ld [hl], c
    ld a, c
    and $07
    inc a
    ld c, $01
    jr jr_006_4921

jr_006_491e:
    or a
    rl c

jr_006_4921:
    dec a
    jr nz, jr_006_491e

    ld a, b
    or c
    ld b, a
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
    add sp, $03
    pop bc
    ret


Call_006_493c:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $20
    jp c, Jump_006_494a

    call Call_000_144b

Jump_006_494a:
    ld hl, sp+$06
    ld a, [hl]
    add $01
    and $1f
    ld [hl], a
    ld hl, $c42b
    ld b, [hl]
    ld c, $00
    ld a, $05
    jr jr_006_4961

jr_006_495c:
    or a
    rl b
    rl c

jr_006_4961:
    dec a
    jr nz, jr_006_495c

    ld e, b
    ld d, c
    ld hl, $a000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    srl c
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
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
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$06
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_49a3

    ld a, c
    and $0f
    ld c, a
    jp Jump_006_49ab


Jump_006_49a3:
    srl c
    srl c
    srl c
    srl c

Jump_006_49ab:
    ld a, $0f
    xor c
    ld c, a
    ld e, c
    add sp, $02
    pop bc
    ret


Call_006_49b4:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    cp $20
    jp c, Jump_006_49c2

    call Call_000_144b

Jump_006_49c2:
    ld hl, $c42b
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_006_49d1

jr_006_49cc:
    or a
    rl c
    rl b

jr_006_49d1:
    dec a
    jr nz, jr_006_49cc

    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    call Call_006_48e9
    ld a, $0f
    ld hl, sp+$08
    xor [hl]
    ld [hl], a
    dec hl
    ld a, [hl]
    add $01
    and $1f
    ld [hl], a
    ld c, a
    srl c
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$03
    ld [hl], e
    add sp, $03
    ld hl, sp+$07
    ld a, [hl]
    bit 0, a
    jp z, Jump_006_4a2d

    ld hl, sp+$00
    ld a, [hl]
    and $f0
    ld [hl], a
    ld hl, sp+$08
    ld a, [hl]
    and $0f
    ld hl, sp+$00
    or [hl]
    ld hl, sp+$08
    ld [hl], a
    jp Jump_006_4a47


Jump_006_4a2d:
    ld hl, sp+$00
    ld a, [hl]
    and $0f
    ld [hl], a
    ld hl, sp+$08
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld [hl], a
    ld hl, sp+$00
    or [hl]
    ld hl, sp+$08
    ld [hl], a

Jump_006_4a47:
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
    add sp, $03
    pop bc
    ret


Call_006_4a5a:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $03

Jump_006_4a61:
    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl]
    cp $0b
    jp nz, Jump_006_4a76

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_006_4a92

Jump_006_4a76:
    ld hl, sp+$02
    ld a, [hl]
    add a
    add a
    ld b, a
    inc b
    ld c, $00
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    jp Jump_006_4a61


Jump_006_4a92:
    ld hl, sp+$02
    ld c, [hl]
    ld b, $00
    ld a, c
    cp $13
    jp nz, Jump_006_4aa2

    ld a, b
    or a
    jp z, Jump_006_4abc

Jump_006_4aa2:
    ld hl, sp+$02
    ld a, [hl]
    add a
    add a
    ld c, a
    inc c
    ld b, $00
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    jp Jump_006_4a92


Jump_006_4abc:
    add sp, $03
    pop bc
    ret


Call_006_4ac0:
    push bc
    ld hl, $c42c
    ld a, [hl]
    add a
    add a
    add $18
    ld c, a
    ld hl, $c939
    ld a, [hl]
    add a
    add a
    add $18
    ld b, a
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_006_4add

    ld b, c

Jump_006_4add:
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_006_4a5a
    add sp, $02
    pop bc
    ret


Call_006_4aea:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c42c
    ld a, [hl]
    ld [de], a
    ld hl, sp+$0a
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c42c
    ld a, [hl]
    ld [de], a
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_4b3b

    xor a
    ld hl, $c939
    ld a, [hl]
    ld hl, $c42c
    sbc [hl]
    jp nc, Jump_006_4b31

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c939
    ld a, [hl]
    ld [de], a
    jp Jump_006_4b3b


Jump_006_4b31:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c939
    ld a, [hl]
    ld [de], a

Jump_006_4b3b:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    add $01
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    add sp, $04
    pop bc
    ret


Call_006_4b51:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld [hl], $0c
    inc hl
    ld [hl], $40

Jump_006_4b5b:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl]
    cp $80
    jp nz, Jump_006_4b70

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_006_4baa

Jump_006_4b70:
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld b, $00
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld a, $05
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld a, $82
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$03
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_006_4b5b


Jump_006_4baa:
    ld hl, sp+$03
    ld [hl], $40

Jump_006_4bae:
    ld hl, sp+$03
    ld c, [hl]
    ld b, $00
    ld a, c
    cp $80
    jp nz, Jump_006_4bbe

    ld a, b
    or a
    jp z, Jump_006_4bf8

Jump_006_4bbe:
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld b, $00
    inc hl
    ld a, [hl]
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld a, $05
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld a, $82
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$03
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_006_4bae


Jump_006_4bf8:
    call Call_006_4ac0
    add sp, $04
    pop bc
    ret


Call_006_4bff:
    push bc
    add sp, -$08
    ld hl, sp+$0c
    ld a, [hl]
    add a
    ld c, a
    push af
    inc sp
    call Call_006_493c
    ld hl, sp+$08
    ld [hl], e
    add sp, $01
    inc c
    ld a, c
    push af
    inc sp
    call Call_006_493c
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    inc hl
    ld a, [hl]
    srl a
    dec hl
    dec hl
    ld [hl+], a
    ld a, [hl]
    srl a
    dec hl
    dec hl
    ld [hl], a
    ld a, $0d
    inc hl
    sub [hl]
    ld b, a
    ld hl, sp+$0c
    ld a, [hl]
    add $02
    ld c, a
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3201
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    ld hl, $0008
    push hl
    ld a, $01
    push af
    inc sp
    ld hl, $c93b
    push hl
    call Call_000_3892
    add sp, $05
    ld de, $c93b
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a
    ld de, $c93b
    ld hl, sp+$04
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld [de], a
    ld hl, sp+$04
    ld a, [hl+]
    cp [hl]
    jp nz, Jump_006_4cf8

    ld hl, sp+$07
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_4cb2

    dec hl
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_4c9d

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4c95

    ld b, $54
    jp Jump_006_4c97


Jump_006_4c95:
    ld b, $de

Jump_006_4c97:
    ld hl, sp+$01
    ld [hl], b
    jp Jump_006_4caf


Jump_006_4c9d:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4caa

    ld b, $55
    jp Jump_006_4cac


Jump_006_4caa:
    ld b, $df

Jump_006_4cac:
    ld hl, sp+$01
    ld [hl], b

Jump_006_4caf:
    jp Jump_006_4ce6


Jump_006_4cb2:
    ld hl, sp+$06
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_4cd0

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4cc8

    ld b, $56
    jp Jump_006_4cca


Jump_006_4cc8:
    ld b, $e0

Jump_006_4cca:
    ld hl, sp+$00
    ld [hl], b
    jp Jump_006_4ce2


Jump_006_4cd0:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4cdd

    ld b, $57
    jp Jump_006_4cdf


Jump_006_4cdd:
    ld b, $e1

Jump_006_4cdf:
    ld hl, sp+$00
    ld [hl], b

Jump_006_4ce2:
    ld hl, sp+$00
    ld a, [hl+]
    ld [hl], a

Jump_006_4ce6:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_17bb
    add sp, $03
    jp Jump_006_4d8d


Jump_006_4cf8:
    ld hl, sp+$07
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_4d16

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4d0e

    ld b, $50
    jp Jump_006_4d10


Jump_006_4d0e:
    ld b, $da

Jump_006_4d10:
    ld hl, sp+$00
    ld [hl], b
    jp Jump_006_4d28


Jump_006_4d16:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4d23

    ld b, $53
    jp Jump_006_4d25


Jump_006_4d23:
    ld b, $dd

Jump_006_4d25:
    ld hl, sp+$00
    ld [hl], b

Jump_006_4d28:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_17bb
    add sp, $03
    ld a, $0d
    ld hl, sp+$04
    sub [hl]
    ld b, a
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3201
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    ld hl, sp+$06
    ld b, [hl]
    ld a, b
    bit 0, a
    jp z, Jump_006_4d6b

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4d63

    ld b, $51
    jp Jump_006_4d65


Jump_006_4d63:
    ld b, $db

Jump_006_4d65:
    ld hl, sp+$00
    ld [hl], b
    jp Jump_006_4d7d


Jump_006_4d6b:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_4d78

    ld b, $52
    jp Jump_006_4d7a


Jump_006_4d78:
    ld b, $dc

Jump_006_4d7a:
    ld hl, sp+$00
    ld [hl], b

Jump_006_4d7d:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_17bb
    add sp, $03

Jump_006_4d8d:
    ld a, $06
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_3201
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    ld hl, sp+$05
    ld [hl], $07

Jump_006_4da2:
    ld de, $c93b
    ld hl, sp+$05
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_006_4dc2

    ld a, $03
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_17bb
    add sp, $03

Jump_006_4dc2:
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_006_4dde

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0020
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    inc hl
    inc hl
    dec [hl]
    jp Jump_006_4da2


Jump_006_4dde:
    ld hl, sp+$0c
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_006_4df6

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_006_4e02


Jump_006_4df6:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a

Jump_006_4e02:
    ld b, c
    ld a, b
    bit 3, a
    jp z, Jump_006_4e1c

    add a
    add $f2
    ld b, a
    ld a, $0e
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    jp Jump_006_4e2d


Jump_006_4e1c:
    ld a, c
    add a
    ld b, a
    inc b
    inc b
    ld a, $05
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_33bc
    add sp, $02

Jump_006_4e2d:
    ld a, c
    add a
    ld c, a
    push af
    inc sp
    call Call_006_493c
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    inc c
    ld a, c
    push af
    inc sp
    call Call_006_493c
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    add sp, $08
    pop bc
    ret


Call_006_4e56:
    push bc
    ld hl, $c42c
    ld c, [hl]
    srl c
    ld a, c
    push af
    inc sp
    call Call_006_4bff
    add sp, $01
    pop bc
    ret


Call_006_4e67:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$03
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
    call Call_006_4aea
    add sp, $04
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    and $fe
    ld [hl], a

Jump_006_4e8c:
    xor a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_006_4ea8

    inc hl
    ld c, [hl]
    srl c
    ld a, c
    push af
    inc sp
    call Call_006_4bff
    add sp, $01
    ld hl, sp+$03
    inc [hl]
    inc [hl]
    jp Jump_006_4e8c


Jump_006_4ea8:
    add sp, $04
    pop bc
    ret


Call_006_4eac:
    push bc
    ld c, $00

Jump_006_4eaf:
    ld a, c
    cp $10
    jp nc, Jump_006_4ec0

    push af
    inc sp
    call Call_006_4bff
    add sp, $01
    inc c
    jp Jump_006_4eaf


Jump_006_4ec0:
    pop bc
    ret


Call_006_4ec2:
    push bc
    call Call_006_4b51
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld c, $5c
    ld b, $6d
    push bc
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_006_4eac
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_006_4eec:
    push bc
    add sp, -$05
    ld hl, sp+$03
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$04
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
    call Call_006_4aea
    add sp, $04

Jump_006_4f0a:
    ld hl, sp+$03
    ld a, [hl]
    add $ff
    ld c, a
    ld [hl], c
    xor a
    inc hl
    ld a, [hl]
    sbc c
    jp nc, Jump_006_4f4c

    ld a, [hl]
    push af
    inc sp
    call Call_006_493c
    ld hl, sp+$03
    ld [hl], e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_006_493c
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    ld hl, sp+$04
    inc [hl]
    jp Jump_006_4f0a


Jump_006_4f4c:
    call Call_006_4e67
    add sp, $05
    pop bc
    ret


Call_006_4f53:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$03
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
    call Call_006_4aea
    add sp, $04

Jump_006_4f71:
    xor a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_006_4f9e

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_006_493c
    ld c, e
    add sp, $01
    ld a, $0f
    sub c
    ld c, a
    push af
    inc sp
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_4f71


Jump_006_4f9e:
    call Call_006_4e67
    add sp, $04
    pop bc
    ret


Call_006_4fa5:
    push bc
    add sp, -$04
    ld hl, sp+$02
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$03
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
    call Call_006_4aea
    add sp, $04

Jump_006_4fc3:
    xor a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    sbc [hl]
    jp nc, Jump_006_4ff1

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_006_493c
    ld c, e
    add sp, $01
    ld a, c
    ld hl, sp+$08
    add [hl]
    ld c, a
    push af
    inc sp
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    ld hl, sp+$03
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_4fc3


Jump_006_4ff1:
    call Call_006_4e67
    add sp, $04
    pop bc
    ret


Call_006_4ff8:
    push bc
    ld hl, $c42c
    ld a, [hl]
    ld hl, sp+$04
    add [hl]
    and $1f
    ld c, a
    ld hl, $c42c
    ld a, [hl]
    push af
    inc sp
    call Call_006_493c
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    call Call_006_4e56
    ld hl, $c42c
    ld [hl], c
    call Call_006_4e56
    call Call_006_4ac0
    pop bc
    ret


    push bc
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_006_50c4

    cp $02
    jp z, Jump_006_50e6

    cp $04
    jp z, Jump_006_5107

    cp $08
    jp z, Jump_006_5115

    cp $11
    jp z, Jump_006_5140

    cp $12
    jp z, Jump_006_5123

    cp $14
    jp z, Jump_006_515d

    cp $18
    jp z, Jump_006_515d

    cp $20
    jp z, Jump_006_52cd

    cp $21
    jp z, Jump_006_5165

    cp $22
    jp z, Jump_006_5179

    cp $24
    jp z, Jump_006_518d

    cp $28
    jp z, Jump_006_51a4

    cp $42
    jp z, Jump_006_5203

    cp $43
    jp z, Jump_006_5095

    cp $48
    jp z, Jump_006_5245

    cp $50
    jp z, Jump_006_52f3

    cp $60
    jp z, Jump_006_5272

    cp $80
    jp z, Jump_006_51db

    cp $c0
    jp z, Jump_006_51bb

    jp Jump_006_5329


Jump_006_5095:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_50bf

    ld hl, $c939
    ld a, [hl]
    ld hl, $c42c
    ld [hl], a
    ld bc, $73f6
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_006_4ec2
    ld hl, $532d
    push hl
    call Call_000_0dab
    add sp, $02

Jump_006_50bf:
    ld e, $01
    jp Jump_006_532b


Jump_006_50c4:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_50d5

    ld hl, $c42c
    ld a, [hl]
    cp $1f
    jp z, Jump_006_50e1

Jump_006_50d5:
    ld hl, $c42c
    inc [hl]
    ld c, [hl]
    ld a, c
    and $1f
    ld [hl], a
    call Call_006_4ac0

Jump_006_50e1:
    ld e, $01
    jp Jump_006_532b


Jump_006_50e6:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_50f6

    xor a
    ld hl, $c42c
    or [hl]
    jp z, Jump_006_5102

Jump_006_50f6:
    ld hl, $c42c
    dec [hl]
    ld c, [hl]
    ld a, c
    and $1f
    ld [hl], a
    call Call_006_4ac0

Jump_006_5102:
    ld e, $01
    jp Jump_006_532b


Jump_006_5107:
    ld a, $01
    push af
    inc sp
    call Call_006_4fa5
    add sp, $01
    ld e, $01
    jp Jump_006_532b


Jump_006_5115:
    ld a, $ff
    push af
    inc sp
    call Call_006_4fa5
    add sp, $01
    ld e, $01
    jp Jump_006_532b


Jump_006_5123:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_5132

    call Call_006_4eec
    jp Jump_006_513b


Jump_006_5132:
    ld a, $ff
    push af
    inc sp
    call Call_006_4ff8
    add sp, $01

Jump_006_513b:
    ld e, $01
    jp Jump_006_532b


Jump_006_5140:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_514f

    call Call_006_4eec
    jp Jump_006_5158


Jump_006_514f:
    ld a, $01
    push af
    inc sp
    call Call_006_4ff8
    add sp, $01

Jump_006_5158:
    ld e, $01
    jp Jump_006_532b


Jump_006_515d:
    call Call_006_4f53
    ld e, $01
    jp Jump_006_532b


Jump_006_5165:
    ld hl, $c42b
    inc [hl]
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_006_4ec2
    ld e, $01
    jp Jump_006_532b


Jump_006_5179:
    ld hl, $c42b
    dec [hl]
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_006_4ec2
    ld e, $01
    jp Jump_006_532b


Jump_006_518d:
    ld hl, $c42b
    ld a, [hl]
    add $10
    ld [hl], a
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_006_4ec2
    ld e, $01
    jp Jump_006_532b


Jump_006_51a4:
    ld hl, $c42b
    ld a, [hl]
    add $f0
    ld [hl], a
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    call Call_006_4ec2
    ld e, $01
    jp Jump_006_532b


Jump_006_51bb:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_51c8

    ld e, $01
    jp Jump_006_532b


Jump_006_51c8:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_532b


Jump_006_51db:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_51eb

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_51f0

Jump_006_51eb:
    ld e, $01
    jp Jump_006_532b


Jump_006_51f0:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_532b


Jump_006_5203:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_5210

    ld e, $00
    jp Jump_006_532b


Jump_006_5210:
    ld hl, $c42b
    ld a, [hl]
    cp $f0
    jp nc, Jump_006_5225

    srl a
    srl a
    srl a
    srl a
    ld hl, $c442
    ld [hl], a

Jump_006_5225:
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
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_532b


Jump_006_5245:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_5252

    ld e, $00
    jp Jump_006_532b


Jump_006_5252:
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
    jp Jump_006_532b


Jump_006_5272:
    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_006_527f

    ld e, $00
    jp Jump_006_532b


Jump_006_527f:
    ld hl, $c40b
    ld [hl], $00
    ld hl, $c414
    ld a, [hl]
    cp $01
    jp z, Jump_006_529a

    cp $02
    jp z, Jump_006_529a

    cp $04
    jp z, Jump_006_52bb

    jp Jump_006_52c5


Jump_006_529a:
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c42c
    ld a, [hl]
    ld hl, $c939
    ld [hl], a
    ld hl, $533b
    push hl
    call Call_000_0dab
    add sp, $02
    jp Jump_006_52c5


Jump_006_52bb:
    ld hl, $c939
    ld [hl], $00
    ld hl, $c42c
    ld [hl], $1f

Jump_006_52c5:
    call Call_006_4ac0
    ld e, $01
    jp Jump_006_532b


Jump_006_52cd:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp z, Jump_006_52db

    ld e, $00
    jp Jump_006_532b


Jump_006_52db:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_52e8

    ld e, $00
    jp Jump_006_532b


Jump_006_52e8:
    call Call_006_5342
    call Call_006_4ac0
    ld e, $01
    jp Jump_006_532b


Jump_006_52f3:
    ld hl, $c414
    ld a, [hl]
    cp $02
    jp z, Jump_006_5301

    ld e, $00
    jp Jump_006_532b


Jump_006_5301:
    ld hl, $c412
    ld a, [hl]
    cp $08
    jp z, Jump_006_530f

    ld e, $00
    jp Jump_006_532b


Jump_006_530f:
    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_006_531c

    ld e, $00
    jp Jump_006_532b


Jump_006_531c:
    ld hl, $c40b
    ld [hl], $00
    call Call_006_5416
    ld e, $01
    jp Jump_006_532b


Jump_006_5329:
    ld e, $00

Jump_006_532b:
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, jr_006_5388

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

Call_006_5342:
    push bc
    add sp, -$01
    ld hl, $c412
    ld a, [hl]
    cp $08
    jp z, Jump_006_5351

    call Call_000_144b

Jump_006_5351:
    ld hl, $5411
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c42c
    ld a, [hl]
    ld hl, $c93a
    ld [hl], a
    ld hl, $c939
    ld a, [hl]
    ld hl, $c42c
    ld [hl], a
    ld hl, $c93a
    push hl
    ld hl, $c939
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c93a
    inc [hl]
    ld c, $00

Jump_006_537d:
    ld a, c
    cp $20
    jp nc, Jump_006_53c0

    push af
    inc sp
    call Call_006_493c

jr_006_5388:
    ld b, e
    add sp, $01
    ld a, b
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld hl, sp+$00
    ld [hl], a
    ld a, c
    add $01
    ld b, a
    push af
    inc sp
    call Call_006_493c
    ld b, e
    add sp, $01
    ld hl, sp+$00
    ld a, [hl]
    or b
    ld [hl], a
    ld b, c
    srl b
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
    inc c
    inc c
    jp Jump_006_537d


Jump_006_53c0:
    ld hl, $c939
    ld a, [hl]
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c93a
    ld a, [hl]
    push af
    inc sp
    ld a, $11
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $01
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c411
    ld [hl], $12
    ld hl, $c414
    ld [hl], $02
    ld c, $7c
    ld b, $71
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    add sp, $01
    pop bc
    ret


    ld b, e
    ld c, a
    ld d, b
    ld e, c
    nop

Call_006_5416:
    push bc
    add sp, -$01
    ld a, $10
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld hl, $c939
    ld [hl], e
    add sp, $02
    ld a, $11
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld hl, $c93a
    ld [hl], e
    add sp, $02
    ld hl, $c939
    ld c, [hl]

Jump_006_543f:
    ld hl, $c93a
    ld a, [hl]
    cp c
    jr nz, jr_006_5449

    jp Jump_006_548b


jr_006_5449:
    ld b, c
    srl b
    ld a, b
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld b, e
    add sp, $02
    ld hl, sp+$00
    ld [hl], c
    ld a, c
    bit 0, a
    jp nz, Jump_006_546d

    srl b
    srl b
    srl b
    srl b
    jp Jump_006_5471


Jump_006_546d:
    ld a, b
    and $0f
    ld b, a

Jump_006_5471:
    ld a, b
    push af
    inc sp
    ld hl, $c42c
    ld a, [hl]
    push af
    inc sp
    call Call_006_49b4
    add sp, $02
    inc c
    ld hl, $c42c
    inc [hl]
    ld a, [hl]
    and $1f
    ld [hl], a
    jp Jump_006_543f


Jump_006_548b:
    ld hl, $549e
    push hl
    call Call_000_0dab
    add sp, $02
    call Call_006_4eac
    call Call_006_4ac0
    add sp, $01
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop

Call_006_54a4:
    push bc
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
    pop bc
    ret


    ld [bc], a
    dec b

Call_006_54bb:
    push bc
    add sp, -$01
    ld hl, $c41b
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a

Jump_006_54c5:
    ld b, $87
    ld c, $6e
    ld hl, sp+$00
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
    jp z, Jump_006_54f7

    ld hl, $c415
    ld [hl], c
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    ld e, $01
    jp Jump_006_5509


Jump_006_54f7:
    xor a
    ld hl, sp+$00
    or [hl]
    jp nz, Jump_006_5503

    ld e, $00
    jp Jump_006_5509


Jump_006_5503:
    ld hl, sp+$00
    dec [hl]
    jp Jump_006_54c5


Jump_006_5509:
    add sp, $01
    pop bc
    ret


Call_006_550d:
    push bc
    add sp, -$02
    ld hl, $c419
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    cp $04
    jp c, Jump_006_5529

    call Call_000_144b

Jump_006_5529:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_006_556a

    ld hl, sp+$06
    ld b, [hl]
    ld a, $e0
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_006_556a

    ld a, $70
    add b
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c419
    ld [hl], a
    ld a, $00
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c41f
    ld [hl], a
    jp Jump_006_55a4


Jump_006_556a:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, $c419
    ld [hl], e
    add sp, $02

Jump_006_557e:
    ld hl, $c419
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_55a4

    xor a
    ld hl, $c41f
    or [hl]
    jp z, Jump_006_55a4

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, $c419
    ld [hl], e
    add sp, $02
    jp Jump_006_557e


Jump_006_55a4:
    ld hl, $c419
    ld a, [hl]
    bit 7, a
    jp z, Jump_006_55c0

    ld hl, sp+$01
    ld a, [hl]
    ld hl, $c419
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a
    ld e, $00
    jp Jump_006_55cc


Jump_006_55c0:
    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    call Call_006_58e8
    ld e, $01

Jump_006_55cc:
    add sp, $02
    pop bc
    ret


Call_006_55d0:
    push bc
    ld hl, $c574
    ld [hl], $51
    inc hl
    ld [hl], $98
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $55fc
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    pop bc
    ret


    ld b, e
    ld d, b
    nop

Call_006_55ff:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $80
    jp c, Jump_006_560d

    call Call_000_144b

Jump_006_560d:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_006_5618

    call Call_000_144b

Jump_006_5618:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_006_5626

jr_006_5621:
    or a
    rl c
    rl b

jr_006_5626:
    dec a
    jr nz, jr_006_5621

    ld hl, $a880
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
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    add sp, $02
    pop bc
    ret


Call_006_5654:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $80
    jp c, Jump_006_5662

    call Call_000_144b

Jump_006_5662:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_006_5670

jr_006_566b:
    or a
    rl c
    rl b

jr_006_5670:
    dec a
    jr nz, jr_006_566b

    ld hl, $a880
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


Call_006_569a:
    push bc
    add sp, -$16
    ld hl, sp+$1a
    ld c, [hl]
    ld b, $00
    ld hl, sp+$04
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_006_56b3

jr_006_56ab:
    or a
    ld hl, sp+$04
    rl [hl]
    inc hl
    rl [hl]

jr_006_56b3:
    dec a
    jr nz, jr_006_56ab

    ld hl, sp+$1b
    ld c, [hl]
    ld b, $00
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_006_56cc

jr_006_56c4:
    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]

jr_006_56cc:
    dec a
    jr nz, jr_006_56c4

    ld hl, $583a
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, sp+$1a
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_56e3

    call Call_000_144b

Jump_006_56e3:
    ld hl, sp+$1b
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_56ee

    call Call_000_144b

Jump_006_56ee:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$14
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$14
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $aff0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$12
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $aff0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$00
    ld [hl], $00

Jump_006_575c:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_006_5836

    ld hl, sp+$14
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_576f

    inc hl
    inc [hl]

jr_006_576f:
    ld l, b
    ld h, c
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld hl, sp+$12
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_5789

    inc hl
    inc [hl]

jr_006_5789:
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
    ld hl, sp+$10
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_57a5

    inc hl
    inc [hl]

jr_006_57a5:
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld hl, sp+$0e
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_57bd

    inc hl
    inc [hl]

jr_006_57bd:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$0c
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_57d7

    inc hl
    inc [hl]

jr_006_57d7:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld hl, sp+$0a
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_57ef

    inc hl
    inc [hl]

jr_006_57ef:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$08
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_5809

    inc hl
    inc [hl]

jr_006_5809:
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$04
    ld [hl], e
    add sp, $03
    ld hl, sp+$06
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_006_5821

    inc hl
    inc [hl]

jr_006_5821:
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$00
    inc [hl]
    jp Jump_006_575c


Jump_006_5836:
    add sp, $16
    pop bc
    ret


    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, jr_006_5892

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    nop

Call_006_5848:
    push bc
    add sp, -$01
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    and $f0
    jr nz, jr_006_5857

    jp Jump_006_585a


jr_006_5857:
    call Call_000_144b

Jump_006_585a:
    ld hl, $c41a
    ld c, [hl]
    xor a
    or c
    jr z, jr_006_5867

    xor a
    ld hl, $ff90
    or [hl]

jr_006_5867:
    jr z, jr_006_586b

    ld a, $01

jr_006_586b:
    ld c, a
    ld hl, $c41b
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c41a
    ld b, [hl]
    ld a, $b9
    add b
    ld e, a
    ld a, $54
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af

jr_006_5892:
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $01
    pop bc
    ret


Call_006_589c:
    push bc
    add sp, -$02
    ld hl, $c419
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_006_58ae

jr_006_58a9:
    or a
    rl c
    rl b

jr_006_58ae:
    dec a
    jr nz, jr_006_58a9

    ld hl, $a080
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
    adc $a8
    ld b, a
    ld hl, $c46e
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
    ld hl, $c47e
    push hl
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    add sp, $02
    pop bc
    ret


Call_006_58e8:
    push bc
    add sp, -$01
    ld hl, $c419
    ld a, [hl]
    bit 7, a
    jp z, Jump_006_58f7

    call Call_000_144b

Jump_006_58f7:
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
    call Call_000_2c57
    call Call_006_55d0
    call Call_006_589c
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $41
    inc hl
    ld [hl], $98
    ld c, $00

Jump_006_5936:
    ld a, $6e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $ff
    jp nz, Jump_006_5952

    ld hl, $59ff
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_595d


Jump_006_5952:
    call Call_000_2f24
    ld a, b
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_006_595d:
    ld a, c
    cp $0f
    jp z, Jump_006_5972

    ld hl, $c574
    ld a, [hl]
    add $1d
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    inc c
    jp Jump_006_5936


Jump_006_5972:
    ld hl, $c574
    ld [hl], $45
    inc hl
    ld [hl], $98
    ld c, $00

Jump_006_597c:
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
    ld a, c
    cp $0f
    jp z, Jump_006_59a3

    ld hl, $c574
    ld a, [hl]
    add $1e
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    inc c
    jp Jump_006_597c


Jump_006_59a3:
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    and $f0
    jr nz, jr_006_59af

    jp Jump_006_59b2


jr_006_59af:
    call Call_000_144b

Jump_006_59b2:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_59bf

    ld c, $03
    jp Jump_006_59c1


Jump_006_59bf:
    ld c, $02

Jump_006_59c1:
    ld hl, $c41b
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c41a
    ld b, [hl]
    ld a, $b9
    add b
    ld e, a
    ld a, $54
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
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
    add sp, $01
    pop bc
    ret


    jr nz, jr_006_5a2e

    dec l
    nop
    push bc
    ld hl, $c4d3
    ld a, [hl]
    cp $04
    jp z, Jump_006_5a12

    cp $03
    jp nz, Jump_006_5a54

Jump_006_5a12:
    ld hl, $c41e
    ld c, [hl]
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_006_5a54

    ld c, [hl]
    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00

jr_006_5a2e:
    ld d, a
    ld a, [de]
    ld hl, $c419
    cp [hl]
    jp nz, Jump_006_5a54

    ld hl, $c41e
    ld c, [hl]
    ld a, $7c
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
    jp Jump_006_5a5d


Jump_006_5a54:
    ld a, $00
    push af
    inc sp
    call Call_000_313e
    add sp, $01

Jump_006_5a5d:
    pop bc
    ret


Call_006_5a5f:
    push bc
    add sp, -$01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_5a6f

    ld c, $03
    jp Jump_006_5a71


Jump_006_5a6f:
    ld c, $02

Jump_006_5a71:
    ld hl, $c41b
    ld a, [hl]
    add $02
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c41a
    ld b, [hl]
    ld a, $b9
    add b
    ld e, a
    ld a, $54
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $01
    pop bc
    ret


    push bc
    add sp, -$22
    ld hl, $c419
    ld a, [hl]
    bit 7, a
    jp z, Jump_006_5ab0

    call Call_000_144b

Jump_006_5ab0:
    ld hl, $c576
    ld a, [hl]
    cp $10
    jp nz, Jump_006_5abd

    ld a, $01
    jr jr_006_5abe

Jump_006_5abd:
    xor a

jr_006_5abe:
    ld c, a
    or c
    jp nz, Jump_006_5ac8

    ld hl, $c406
    ld [hl], $00

Jump_006_5ac8:
    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_006_5ad5

    ld a, $01
    jr jr_006_5ad6

Jump_006_5ad5:
    xor a

jr_006_5ad6:
    ld hl, sp+$17
    ld [hl], a
    or a
    jp z, Jump_006_5b39

    ld hl, $c576
    ld a, [hl]
    cp $43
    jp nz, Jump_006_5b39

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41a
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41b
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
    jp z, Jump_006_5b25

    ld hl, $6cef
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $4040
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_006_5b25:
    call Call_006_58e8
    ld hl, $6cb1
    push hl
    call Call_000_0dab
    add sp, $02
    call Call_006_5a5f
    ld e, $01
    jp Jump_006_6cad


Jump_006_5b39:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_006_5cc4

    xor a
    or c
    jp z, Jump_006_5cc4

    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5b5a

    ld e, $00
    jp Jump_006_6cad


Jump_006_5b5a:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c41b
    ld a, [hl]
    add $02
    ld hl, sp+$18
    ld [hl], a
    ld hl, $c41a
    ld c, [hl]
    ld a, $b9
    add c
    ld e, a
    ld a, $54
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld hl, sp+$18
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $c41a
    ld a, [hl]
    or a
    jp z, Jump_006_5b9b

    cp $01
    jp z, Jump_006_5c84

    jp Jump_006_5cc4


Jump_006_5b9b:
    ld hl, $c406
    ld c, [hl]
    inc [hl]
    xor a
    or c
    jp z, Jump_006_5bc6

    xor a
    ld hl, $c944
    or [hl]
    jp z, Jump_006_5bc6

    ld c, $b3
    ld b, $4e
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$1f
    ld [hl], e
    add sp, $03
    ld hl, $c406
    ld [hl], $00
    jp Jump_006_5c3b


Jump_006_5bc6:
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
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp nz, Jump_006_5bef

    ld a, $01
    jr jr_006_5bf0

Jump_006_5bef:
    xor a

jr_006_5bf0:
    ld hl, $c944
    ld [hl], a
    or a
    jp z, Jump_006_5c3b

    ld hl, $c41e
    ld c, [hl]
    ld a, $54
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$1c
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_5c28

    ld c, $b3
    ld b, $4e
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$1f
    ld [hl], e
    add sp, $03
    ld hl, $c944
    ld [hl], $00
    jp Jump_006_5c3b


Jump_006_5c28:
    ld c, $fb
    ld b, $4c
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_006_5c3b:
    ld hl, sp+$1c
    ld a, [hl]
    cp $ff
    jp z, Jump_006_5c7f

    ld b, $c4
    ld c, $48
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
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
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c41e
    ld c, [hl]
    ld a, $54
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$1c
    ld a, [hl]
    ld [de], a

Jump_006_5c7f:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5c84:
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld c, e
    add sp, $02
    xor a
    or c
    jp nz, Jump_006_5cc4

    ld hl, $c41b
    ld c, [hl]
    ld hl, $c943
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03
    ld hl, $c943
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_006_6cad


Jump_006_5cc4:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp nz, Jump_006_5cfe

    ld hl, $c41a
    ld a, [hl]
    cp $01
    jp nz, Jump_006_5cdb

    ld e, $00
    jp Jump_006_6cad


Jump_006_5cdb:
    xor a
    ld hl, sp+$17
    or [hl]
    jp nz, Jump_006_5ce5

    call Call_006_5848

Jump_006_5ce5:
    ld hl, $c41a
    inc [hl]
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5cf6

    call Call_006_6f77
    jp Jump_006_5cf9


Jump_006_5cf6:
    call Call_006_5a5f

Jump_006_5cf9:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5cfe:
    ld hl, $c576
    ld a, [hl]
    cp $02
    jp nz, Jump_006_5d37

    xor a
    ld hl, $c41a
    or [hl]
    jp nz, Jump_006_5d14

    ld e, $00
    jp Jump_006_6cad


Jump_006_5d14:
    xor a
    ld hl, sp+$17
    or [hl]
    jp nz, Jump_006_5d1e

    call Call_006_5848

Jump_006_5d1e:
    ld hl, $c41a
    dec [hl]
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5d2f

    call Call_006_6f77
    jp Jump_006_5d32


Jump_006_5d2f:
    call Call_006_5a5f

Jump_006_5d32:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5d37:
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp nz, Jump_006_5d73

    xor a
    ld hl, $c41b
    or [hl]
    jp nz, Jump_006_5d4d

    ld e, $00
    jp Jump_006_6cad


Jump_006_5d4d:
    xor a
    ld hl, sp+$17
    or [hl]
    jp nz, Jump_006_5d57

    call Call_006_5848

Jump_006_5d57:
    ld hl, $c41b
    dec [hl]
    call Call_006_55d0
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5d6b

    call Call_006_6f77
    jp Jump_006_5d6e


Jump_006_5d6b:
    call Call_006_5a5f

Jump_006_5d6e:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5d73:
    ld hl, $c576
    ld a, [hl]
    cp $08
    jp nz, Jump_006_5db0

    ld hl, $c41b
    ld a, [hl]
    cp $0f
    jp nz, Jump_006_5d8a

    ld e, $00
    jp Jump_006_6cad


Jump_006_5d8a:
    xor a
    ld hl, sp+$17
    or [hl]
    jp nz, Jump_006_5d94

    call Call_006_5848

Jump_006_5d94:
    ld hl, $c41b
    inc [hl]
    call Call_006_55d0
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5da8

    call Call_006_6f77
    jp Jump_006_5dab


Jump_006_5da8:
    call Call_006_5a5f

Jump_006_5dab:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5db0:
    ld hl, $c576
    ld a, [hl]
    cp $11
    jp nz, Jump_006_5fa2

    ld hl, $c41a
    ld c, [hl]
    ld hl, sp+$1f
    ld [hl], c
    ld hl, $c41b
    ld b, [hl]
    ld hl, sp+$1d
    ld [hl], b
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5ddf

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$21
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$1e
    ld [hl], a
    jp Jump_006_5de5


Jump_006_5ddf:
    ld hl, sp+$21
    ld [hl], c
    ld hl, sp+$1e
    ld [hl], b

Jump_006_5de5:
    ld hl, sp+$1f
    ld d, h
    ld e, l
    ld hl, sp+$15
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$21
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$15
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$15
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$15
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$1f
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    dec hl
    dec hl
    ld b, [hl]
    ld a, b
    add $01
    ld [hl], a
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c404
    ld [hl], $01
    ld de, $54b9
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$15
    ld [hl+], a
    ld [hl], d

Jump_006_5e47:
    xor a
    ld hl, sp+$21
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    jp nc, Jump_006_5f9d

    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_006_5e55:
    xor a
    ld hl, sp+$20
    ld a, [hl]
    ld hl, sp+$1d
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$13
    ld [hl], a
    or a
    jp z, Jump_006_5f93

    ld hl, sp+$21
    ld a, [hl]
    or a
    jp nz, Jump_006_5e71

    ld a, $01
    jr jr_006_5e72

Jump_006_5e71:
    xor a

jr_006_5e72:
    ld hl, sp+$18
    ld [hl], a
    or a
    jp nz, Jump_006_5e90

    ld hl, sp+$21
    ld a, [hl]
    cp $01
    jp nz, Jump_006_5e85

    ld a, $01
    jr jr_006_5e86

Jump_006_5e85:
    xor a

jr_006_5e86:
    ld hl, sp+$14
    ld [hl], a
    or a
    jp nz, Jump_006_5f32

    jp Jump_006_5f89


Jump_006_5e90:
    ld hl, sp+$0f
    ld [hl], $87
    inc hl
    ld [hl], $6e
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$13
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld a, e
    cp $fe
    jp nz, Jump_006_5ec6

    ld a, $01
    jr jr_006_5ec7

Jump_006_5ec6:
    xor a

jr_006_5ec7:
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp nz, Jump_006_5f89

    ld hl, sp+$1c
    ld a, [hl]
    add $01
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a
    ld hl, sp+$09
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$05
    ld [hl], a
    ld de, $54b9
    ld a, [de]
    ld hl, sp+$08
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_006_5f89


Jump_006_5f32:
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$15
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$06
    ld [hl+], a
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld b, e
    add sp, $02
    ld a, b
    add $01
    ld hl, sp+$1c
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$1c
    ld a, [hl]
    ld hl, $c943
    ld [hl], a

Jump_006_5f89:
    ld hl, sp+$20
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_006_5e55


Jump_006_5f93:
    ld hl, sp+$21
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_5e47


Jump_006_5f9d:
    ld e, $01
    jp Jump_006_6cad


Jump_006_5fa2:
    ld hl, $c576
    ld a, [hl]
    cp $14
    jp nz, Jump_006_61ec

    ld hl, $c41a
    ld c, [hl]
    ld hl, sp+$1f
    ld [hl], c
    ld hl, $c41b
    ld b, [hl]
    ld hl, sp+$1d
    ld [hl], b
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_5fd1

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$21
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$1e
    ld [hl], a
    jp Jump_006_5fd7


Jump_006_5fd1:
    ld hl, sp+$21
    ld [hl], c
    ld hl, sp+$1e
    ld [hl], b

Jump_006_5fd7:
    ld hl, sp+$1f
    ld d, h
    ld e, l
    ld hl, sp+$09
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$21
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$09
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1e
    ld d, h
    ld e, l
    ld c, e
    ld b, d
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_0d7a
    add sp, $04
    ld hl, sp+$1f
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    dec hl
    dec hl
    ld b, [hl]
    ld a, b
    add $01
    ld [hl], a
    ld hl, $c404
    ld [hl], $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld de, $54b9
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d

Jump_006_6039:
    xor a
    ld hl, sp+$21
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    jp nc, Jump_006_61e7

    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_006_6047:
    xor a
    ld hl, sp+$20
    ld a, [hl]
    ld hl, sp+$1d
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_006_61dd

    ld hl, sp+$21
    ld a, [hl]
    or a
    jp nz, Jump_006_6063

    ld a, $01
    jr jr_006_6064

Jump_006_6063:
    xor a

jr_006_6064:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp nz, Jump_006_6082

    ld hl, sp+$21
    ld a, [hl]
    cp $01
    jp nz, Jump_006_6077

    ld a, $01
    jr jr_006_6078

Jump_006_6077:
    xor a

jr_006_6078:
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_006_6157

    jp Jump_006_61d3


Jump_006_6082:
    ld hl, sp+$0f
    ld [hl], $87
    inc hl
    ld [hl], $6e
    dec hl
    ld a, [hl]
    ld hl, sp+$0b
    ld [hl], a
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp nz, Jump_006_60bb

    ld a, $01
    jr jr_006_60bc

Jump_006_60bb:
    xor a

jr_006_60bc:
    ld hl, sp+$11
    ld [hl], a
    or a
    jp z, Jump_006_60da

    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    ld de, $c454
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$1c
    ld [hl], a
    jp Jump_006_60fb


Jump_006_60da:
    ld hl, sp+$1c
    ld a, [hl]
    cp $ef
    ld a, $00
    rla
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp nz, Jump_006_60f0

    ld hl, sp+$1c
    ld [hl], $fe
    jp Jump_006_60fb


Jump_006_60f0:
    ld hl, sp+$1c
    ld a, [hl]
    add $10
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a

Jump_006_60fb:
    ld hl, sp+$03
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl]
    ld hl, sp+$15
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$16
    ld [hl], a
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$18
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    ld de, $54b9
    ld a, [de]
    ld hl, sp+$13
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$14
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_006_61d3


Jump_006_6157:
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$14
    ld [hl], a
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$18
    ld [hl], a
    ld hl, sp+$14
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$19
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld hl, sp+$1e
    ld [hl], e
    add sp, $02
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_006_6197

    ld a, $01
    jr jr_006_6198

Jump_006_6197:
    xor a

jr_006_6198:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_006_61a4

    ld b, $04
    jp Jump_006_61a6


Jump_006_61a4:
    ld b, $0c

Jump_006_61a6:
    ld hl, sp+$1c
    ld a, [hl]
    add b
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$1c
    ld a, [hl]
    ld hl, $c943
    ld [hl], a

Jump_006_61d3:
    ld hl, sp+$20
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_006_6047


Jump_006_61dd:
    ld hl, sp+$21
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_6039


Jump_006_61e7:
    ld e, $01
    jp Jump_006_6cad


Jump_006_61ec:
    ld hl, $c576
    ld a, [hl]
    cp $12
    jp nz, Jump_006_63d6

    ld hl, $c41a
    ld c, [hl]
    ld hl, sp+$1f
    ld [hl], c
    ld hl, $c41b
    ld b, [hl]
    ld hl, sp+$1d
    ld [hl], b
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_621b

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$21
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$1e
    ld [hl], a
    jp Jump_006_6221


Jump_006_621b:
    ld hl, sp+$21
    ld [hl], c
    ld hl, sp+$1e
    ld [hl], b

Jump_006_6221:
    ld hl, sp+$1f
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$21
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
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1e
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
    ld hl, sp+$1f
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    dec hl
    dec hl
    ld b, [hl]
    ld a, b
    add $01
    ld [hl], a
    ld hl, $c404
    ld [hl], $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld de, $54b9
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d

Jump_006_6283:
    xor a
    ld hl, sp+$21
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    jp nc, Jump_006_63d1

    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_006_6291:
    xor a
    ld hl, sp+$20
    ld a, [hl]
    ld hl, sp+$1d
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_006_63c7

    ld hl, sp+$21
    ld a, [hl]
    or a
    jp nz, Jump_006_62ad

    ld a, $01
    jr jr_006_62ae

Jump_006_62ad:
    xor a

jr_006_62ae:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_006_62cc

    ld hl, sp+$21
    ld a, [hl]
    cp $01
    jp nz, Jump_006_62c1

    ld a, $01
    jr jr_006_62c2

Jump_006_62c1:
    xor a

jr_006_62c2:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp nz, Jump_006_6365

    jp Jump_006_63bd


Jump_006_62cc:
    ld hl, sp+$0b
    ld [hl], $87
    inc hl
    ld [hl], $6e
    dec hl
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld a, e
    or e
    jp z, Jump_006_63bd

    ld a, e
    add $ff
    ld hl, sp+$05
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a
    ld hl, sp+$11
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$12
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$0d
    ld [hl], a
    ld de, $54b9
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_006_63bd


Jump_006_6365:
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$08
    ld [hl], a
    dec hl
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld b, e
    add sp, $02
    ld a, b
    add $ff
    ld hl, sp+$1c
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$1c
    ld a, [hl]
    ld hl, $c943
    ld [hl], a

Jump_006_63bd:
    ld hl, sp+$20
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_006_6291


Jump_006_63c7:
    ld hl, sp+$21
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_6283


Jump_006_63d1:
    ld e, $01
    jp Jump_006_6cad


Jump_006_63d6:
    ld hl, $c576
    ld a, [hl]
    cp $18
    jp nz, Jump_006_661f

    ld hl, $c41a
    ld c, [hl]
    ld hl, sp+$1f
    ld [hl], c
    ld hl, $c41b
    ld b, [hl]
    ld hl, sp+$1d
    ld [hl], b
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_6405

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$21
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$1e
    ld [hl], a
    jp Jump_006_640b


Jump_006_6405:
    ld hl, sp+$21
    ld [hl], c
    ld hl, sp+$1e
    ld [hl], b

Jump_006_640b:
    ld hl, sp+$1f
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$21
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
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1e
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
    ld hl, sp+$1f
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    dec hl
    dec hl
    ld b, [hl]
    ld a, b
    add $01
    ld [hl], a
    ld hl, $c404
    ld [hl], $01
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld de, $54b9
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d

Jump_006_646d:
    xor a
    ld hl, sp+$21
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    jp nc, Jump_006_661a

    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_006_647b:
    xor a
    ld hl, sp+$20
    ld a, [hl]
    ld hl, sp+$1d
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$06
    ld [hl], a
    or a
    jp z, Jump_006_6610

    ld hl, sp+$21
    ld a, [hl]
    or a
    jp nz, Jump_006_6497

    ld a, $01
    jr jr_006_6498

Jump_006_6497:
    xor a

jr_006_6498:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_006_64b6

    ld hl, sp+$21
    ld a, [hl]
    cp $01
    jp nz, Jump_006_64ab

    ld a, $01
    jr jr_006_64ac

Jump_006_64ab:
    xor a

jr_006_64ac:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp nz, Jump_006_658b

    jp Jump_006_6606


Jump_006_64b6:
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$02
    ld [hl], a
    ld de, $54b9
    ld a, [de]
    ld hl, sp+$05
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$0b
    ld [hl], $87
    inc hl
    ld [hl], $6e
    dec hl
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp nz, Jump_006_650d

    ld a, $01
    jr jr_006_650e

Jump_006_650d:
    xor a

jr_006_650e:
    ld hl, sp+$0e
    ld [hl], a
    or a
    jp z, Jump_006_652c

    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ld de, $c454
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$1c
    ld [hl], a
    jp Jump_006_654d


Jump_006_652c:
    ld hl, sp+$1c
    ld a, [hl]
    cp $10
    ld a, $00
    rla
    ld hl, sp+$08
    ld [hl], a
    or a
    jp z, Jump_006_6542

    ld hl, sp+$1c
    ld [hl], $00
    jp Jump_006_654d


Jump_006_6542:
    ld hl, sp+$1c
    ld a, [hl]
    add $f0
    ld hl, sp+$0d
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a

Jump_006_654d:
    ld hl, sp+$11
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$12
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_006_6606


Jump_006_658b:
    ld hl, sp+$20
    ld a, [hl]
    add $02
    ld hl, sp+$15
    ld [hl], a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$13
    ld [hl+], a
    inc hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$20
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld hl, sp+$1e
    ld [hl], e
    add sp, $02
    ld hl, $c41e
    ld a, [hl]
    cp $03
    jp nz, Jump_006_65ca

    ld a, $01
    jr jr_006_65cb

Jump_006_65ca:
    xor a

jr_006_65cb:
    ld hl, sp+$14
    ld [hl], a
    or a
    jp z, Jump_006_65d7

    ld b, $04
    jp Jump_006_65d9


Jump_006_65d7:
    ld b, $0c

Jump_006_65d9:
    ld hl, sp+$1c
    ld a, [hl]
    sub b
    ld hl, sp+$18
    ld [hl], a
    ld hl, sp+$1c
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$21
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$1c
    ld a, [hl]
    ld hl, $c943
    ld [hl], a

Jump_006_6606:
    ld hl, sp+$20
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_006_647b


Jump_006_6610:
    ld hl, sp+$21
    ld c, [hl]
    ld a, c
    add $01
    ld [hl], a
    jp Jump_006_646d


Jump_006_661a:
    ld e, $01
    jp Jump_006_6cad


Jump_006_661f:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_6663

    ld hl, $c576
    ld a, [hl]
    cp $21
    jp nz, Jump_006_6663

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c41e
    ld a, [hl]
    add $01
    ld hl, sp+$21
    ld [hl], a

Jump_006_663e:
    ld hl, sp+$21
    ld a, [hl]
    cp $04
    jp nc, Jump_006_665e

    push af
    inc sp
    call Call_006_550d
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_006_6658

    ld e, $01
    jp Jump_006_6cad


Jump_006_6658:
    ld hl, sp+$21
    inc [hl]
    jp Jump_006_663e


Jump_006_665e:
    ld e, $00
    jp Jump_006_6cad


Jump_006_6663:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_66a7

    ld hl, $c576
    ld a, [hl]
    cp $22
    jp nz, Jump_006_66a7

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c41e
    ld a, [hl]
    add $ff
    ld hl, sp+$21
    ld [hl], a

Jump_006_6682:
    ld hl, sp+$21
    ld a, [hl]
    cp $04
    jp nc, Jump_006_66a2

    push af
    inc sp
    call Call_006_550d
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_006_669c

    ld e, $01
    jp Jump_006_6cad


Jump_006_669c:
    ld hl, sp+$21
    dec [hl]
    jp Jump_006_6682


Jump_006_66a2:
    ld e, $00
    jp Jump_006_6cad


Jump_006_66a7:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_6711

    ld hl, $c576
    ld a, [hl]
    cp $24
    jp nz, Jump_006_6711

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c41f
    or [hl]
    jp nz, Jump_006_66e5

    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_006_66e0

    call Call_006_5848
    ld hl, $c41b
    ld [hl], $00
    call Call_006_58e8

Jump_006_66e0:
    ld e, $00
    jp Jump_006_6cad


Jump_006_66e5:
    ld hl, $c41f
    dec [hl]
    call Call_006_54a4
    ld hl, $c419
    ld [hl], e
    ld a, e
    bit 7, a
    jp z, Jump_006_6709

    ld hl, $c41f
    inc [hl]
    call Call_006_54a4
    ld hl, $c419
    ld [hl], e
    ld a, e
    bit 7, a
    jp z, Jump_006_6709

    ld [hl], $00

Jump_006_6709:
    call Call_006_58e8
    ld e, $01
    jp Jump_006_6cad


Jump_006_6711:
    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_6780

    ld hl, $c576
    ld a, [hl]
    cp $28
    jp nz, Jump_006_6780

    ld hl, $c40c
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c41f
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_673d

    ld e, $00
    jp Jump_006_6cad


Jump_006_673d:
    ld hl, $c41f
    inc [hl]
    ld a, [hl]
    ld hl, $c41d
    sub [hl]
    ld c, a
    and $f0
    jr nz, jr_006_674e

    jp Jump_006_6758


jr_006_674e:
    ld hl, $c41f
    ld a, [hl]
    and $f0
    ld hl, $c41d
    ld [hl], a

Jump_006_6758:
    call Call_006_54a4
    ld hl, $c419
    ld [hl], e
    ld a, e
    bit 7, a
    jp z, Jump_006_6778

    ld hl, $c41f
    dec [hl]
    call Call_006_54a4
    ld hl, $c419
    ld [hl], e
    ld a, e
    bit 7, a
    jp z, Jump_006_6778

    ld [hl], $00

Jump_006_6778:
    call Call_006_58e8
    ld e, $01
    jp Jump_006_6cad


Jump_006_6780:
    ld hl, $c576
    ld a, [hl]
    cp $30
    jp nz, Jump_006_6882

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_6796

    ld e, $00
    jp Jump_006_6cad


Jump_006_6796:
    ld hl, $c40a
    ld [hl], $00
    ld hl, $c414
    ld [hl], $02
    ld hl, $c41a
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c410
    ld [hl], $02
    ld hl, $c41b
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    add $01
    ld hl, $c411
    ld [hl], a
    ld hl, $c412
    ld [hl], $03
    xor a
    ld hl, $c41a
    or [hl]
    jp nz, Jump_006_680d

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
    ld hl, sp+$21
    ld [hl], e
    add sp, $05
    ld hl, $c41e
    ld c, [hl]
    ld a, $54
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$1c
    ld a, [hl]
    ld [de], a
    ld hl, $c41b
    ld c, [hl]
    ld hl, sp+$1c
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

Jump_006_680d:
    ld hl, $c41b
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld hl, $c943
    ld [hl], e
    add sp, $02
    ld hl, $c41b
    ld c, [hl]
    ld hl, $c943
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
    xor a
    ld hl, $c41a
    or [hl]
    jp nz, Jump_006_6864

    ld b, $c4
    ld c, $48
    ld a, $ff
    push af
    inc sp
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
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_006_687a


Jump_006_6864:
    ld hl, $c41b
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03

Jump_006_687a:
    call Call_006_58e8
    ld e, $01
    jp Jump_006_6cad


Jump_006_6882:
    ld hl, $c576
    ld a, [hl]
    cp $50
    jp nz, Jump_006_69ba

    ld hl, $c414
    ld a, [hl]
    cp $01
    jp nz, Jump_006_6899

    ld e, $00
    jp Jump_006_6cad


Jump_006_6899:
    ld hl, $c412
    ld a, [hl]
    cp $03
    jp z, Jump_006_68a7

    ld e, $00
    jp Jump_006_6cad


Jump_006_68a7:
    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_006_68b4

    ld e, $00
    jp Jump_006_6cad


Jump_006_68b4:
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_69ac

    ld hl, $c40b
    ld [hl], $00
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_68e0

    ld hl, $c41a
    ld a, [hl]
    ld hl, $c40e
    cp [hl]
    jp nz, Jump_006_68e0

    ld hl, $c41b
    ld a, [hl]
    ld hl, $c40f
    cp [hl]
    jr nz, jr_006_68e0

    jp Jump_006_68ec


Jump_006_68e0:
jr_006_68e0:
    ld a, $01
    push af
    inc sp
    call Call_006_6cc6
    add sp, $01
    jp Jump_006_69a7


Jump_006_68ec:
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
    ld hl, sp+$20
    ld [hl], e
    add sp, $05
    ld hl, $73f6
    push hl
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, sp+$1b
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_6925

    ld e, $00
    jp Jump_006_6cad


Jump_006_6925:
    ld b, $b3
    ld c, $4e
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_0bed
    ld hl, sp+$21
    ld [hl], e
    add sp, $03
    ld a, e
    cp $ff
    jp z, Jump_006_6999

    ld hl, sp+$1e
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$1c
    ld a, [hl]
    push af
    inc sp
    call Call_006_569a
    add sp, $02
    ld b, $c4
    ld c, $48
    ld hl, sp+$1e
    ld a, [hl]
    push af
    inc sp
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
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, $c41b
    ld a, [hl]
    add $02
    ld c, a
    push af
    inc sp
    ld a, $02
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
    ld hl, sp+$1e
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_006_69a7


Jump_006_6999:
    ld c, $c6
    ld b, $75
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_006_69a7:
    ld e, $00
    jp Jump_006_6cad


Jump_006_69ac:
    call Call_006_5848
    call Call_006_6e7e
    call Call_006_58e8
    ld e, $01
    jp Jump_006_6cad


Jump_006_69ba:
    ld hl, $c576
    ld a, [hl]
    cp $c0
    jp nz, Jump_006_69e3

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_69d0

    ld e, $01
    jp Jump_006_6cad


Jump_006_69d0:
    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_6cad


Jump_006_69e3:
    ld hl, $c576
    ld a, [hl]
    cp $80
    jp nz, Jump_006_6a7a

    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_006_69fc

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_006_6a0f

Jump_006_69fc:
    ld hl, $c56b
    ld a, [hl]
    cp $02
    jp nz, Jump_006_6a0a

    ld hl, $c56b
    ld [hl], $01

Jump_006_6a0a:
    ld e, $01
    jp Jump_006_6cad


Jump_006_6a0f:
    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_006_6a67

    ld b, $87
    ld c, $6e
    ld hl, sp+$03
    ld [hl], b
    inc hl
    ld [hl], c
    ld hl, $c41b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld c, e
    add sp, $05
    ld a, c
    cp $ff
    jp nz, Jump_006_6a67

    ld a, $00
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld c, e
    add sp, $05
    ld a, c
    cp $ff
    jp nz, Jump_006_6a67

    ld e, $00
    jp Jump_006_6cad


Jump_006_6a67:
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_006_6cad


Jump_006_6a7a:
    ld hl, $c576
    ld a, [hl]
    cp $41
    jp nz, Jump_006_6acc

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_6a90

    ld e, $00
    jp Jump_006_6cad


Jump_006_6a90:
    call Call_006_54bb
    ld c, e
    xor a
    or c
    jp nz, Jump_006_6aac

    ld c, $1f
    ld b, $76
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $00
    jp Jump_006_6cad


Jump_006_6aac:
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
    jp Jump_006_6cad


Jump_006_6acc:
    ld hl, $c576
    ld a, [hl]
    cp $42
    jp nz, Jump_006_6b02

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_6ae2

    ld e, $00
    jp Jump_006_6cad


Jump_006_6ae2:
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
    jp Jump_006_6cad


Jump_006_6b02:
    ld hl, $c576
    ld a, [hl]
    cp $44
    jp nz, Jump_006_6b3b

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_6b18

    ld e, $00
    jp Jump_006_6cad


Jump_006_6b18:
    call Call_006_54bb
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
    jp Jump_006_6cad


Jump_006_6b3b:
    ld hl, $c576
    ld a, [hl]
    cp $48
    jp nz, Jump_006_6b71

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_006_6b51

    ld e, $00
    jp Jump_006_6cad


Jump_006_6b51:
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
    jp Jump_006_6cad


Jump_006_6b71:
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_6b9c

    ld hl, $c576
    ld a, [hl]
    cp $20
    jp nz, Jump_006_6b9c

    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_006_6b8e

    ld e, $00
    jp Jump_006_6cad


Jump_006_6b8e:
    ld a, $00
    push af
    inc sp
    call Call_006_6cc6
    add sp, $01
    ld e, $01
    jp Jump_006_6cad


Jump_006_6b9c:
    ld hl, $c576
    ld a, [hl]
    cp $60
    jp nz, Jump_006_6cab

    xor a
    ld hl, $c40b
    or [hl]
    jp nz, Jump_006_6bb2

    ld e, $00
    jp Jump_006_6cad


Jump_006_6bb2:
    xor a
    ld hl, sp+$17
    or [hl]
    jp z, Jump_006_6c76

    ld hl, $c412
    ld a, [hl]
    cp $03
    jp nz, Jump_006_6c76

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$1a
    ld [hl], a
    ld hl, $c41a
    ld c, [hl]
    ld hl, sp+$19
    ld [hl], c
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$1e
    ld [hl], a
    ld hl, $c41b
    ld c, [hl]
    ld hl, sp+$1d
    ld [hl], c
    ld hl, $c413
    ld [hl], $01
    ld hl, sp+$1d
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1e
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
    ld hl, sp+$1e
    or [hl]
    jp nz, Jump_006_6c0c

    dec hl
    ld a, [hl]
    cp $0f
    jp z, Jump_006_6c23

Jump_006_6c0c:
    ld hl, $c40f
    ld [hl], $00
    ld hl, $c41b
    ld [hl], $0f
    ld hl, $c40b
    ld [hl], $00
    call Call_006_6f77
    ld e, $01
    jp Jump_006_6cad


Jump_006_6c23:
    ld hl, sp+$19
    ld d, h
    ld e, l
    ld hl, sp+$03
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$1a
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
    ld hl, sp+$1a
    or [hl]
    jp nz, Jump_006_6c4c

    dec hl
    ld a, [hl]
    cp $01
    jp z, Jump_006_6c63

Jump_006_6c4c:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c41a
    ld [hl], $01
    ld hl, $c40b
    ld [hl], $00
    call Call_006_6f77
    ld e, $01
    jp Jump_006_6cad


Jump_006_6c63:
    ld hl, $c40b
    ld [hl], $00
    ld a, $00
    push af
    inc sp
    call Call_006_6cc6
    add sp, $01
    ld e, $01
    jp Jump_006_6cad


Jump_006_6c76:
    ld bc, $73b8
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c413
    ld [hl], $00
    ld hl, $c41a
    ld a, [hl]
    ld hl, $c40e
    ld [hl], a
    ld hl, $c41b
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, $c40b
    ld [hl], $00
    ld hl, $6cbf
    push hl
    call Call_000_0dab
    add sp, $02
    ld e, $01
    jp Jump_006_6cad


Jump_006_6cab:
    ld e, $00

Jump_006_6cad:
    add sp, $22
    pop bc
    ret


    ld b, e
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h
    jr nz, jr_006_6d0c

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

Call_006_6cc6:
    push bc
    add sp, -$0e
    ld hl, $c412
    ld a, [hl]
    cp $03
    jp z, Jump_006_6cd5

    jp Jump_006_6e70


Jump_006_6cd5:
    ld hl, $c414
    ld [hl], $02
    ld hl, $c41a
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, $c41b
    ld a, [hl]
    ld hl, $c411
    ld [hl], a
    ld hl, $c410
    push hl
    ld hl, $c40e
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c411
    push hl
    ld hl, $c40f
    push hl
    call Call_000_0d7a
    add sp, $04
    ld hl, $c410
    inc [hl]
    ld hl, $c411
    inc [hl]

jr_006_6d0c:
    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a

Jump_006_6d13:
    xor a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    jp nc, Jump_006_6e35

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl+], a
    ld a, [hl]
    or a
    jp nz, Jump_006_6d2e

    ld a, $01
    jr jr_006_6d2f

Jump_006_6d2e:
    xor a

jr_006_6d2f:
    ld hl, sp+$0b
    ld [hl+], a
    inc hl
    ld a, [hl]
    cp $01
    jp nz, Jump_006_6d3d

    ld a, $01
    jr jr_006_6d3e

Jump_006_6d3d:
    xor a

jr_006_6d3e:
    ld hl, sp+$0a
    ld [hl], a

Jump_006_6d41:
    xor a
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$09
    ld [hl], a
    or a
    jp z, Jump_006_6e2f

    ld hl, sp+$0d
    ld a, [hl]
    ld hl, $c41a
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    call Call_006_5848
    xor a
    ld hl, sp+$0b
    or [hl]
    jp nz, Jump_006_6d74

    xor a
    dec hl
    or [hl]
    jp nz, Jump_006_6de8

    jp Jump_006_6e25


Jump_006_6d74:
    ld hl, sp+$05
    ld [hl], $87
    inc hl
    ld [hl], $6e
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$09
    ld [hl], e
    add sp, $05
    ld a, e
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_006_6e25

    ld hl, sp+$00
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $ff
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_006_6e25


Jump_006_6de8:
    ld hl, sp+$0c
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_5654
    ld c, e
    add sp, $02
    ld a, c
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_006_6e25

    ld a, $00
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03

Jump_006_6e25:
    ld hl, sp+$0c
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_006_6d41


Jump_006_6e2f:
    ld hl, sp+$0d
    inc [hl]
    jp Jump_006_6d13


Jump_006_6e35:
    ld c, $7c
    ld b, $71
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41a
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    xor a
    ld hl, sp+$12
    or [hl]
    jp z, Jump_006_6e62

    ld de, $6e74
    ld c, e
    ld b, d
    jp Jump_006_6e67


Jump_006_6e62:
    ld de, $6e79
    ld c, e
    ld b, d

Jump_006_6e67:
    push bc
    call Call_000_0dab
    add sp, $02
    call Call_006_58e8

Jump_006_6e70:
    add sp, $0e
    pop bc
    ret


    ld b, e
    ld d, l
    ld d, h
    jr nz, jr_006_6e79

jr_006_6e79:
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    nop

Call_006_6e7e:
    push bc
    add sp, -$0a
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a

Jump_006_6e88:
    xor a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_006_6f54

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$09
    ld [hl], a

Jump_006_6e9a:
    xor a
    ld hl, sp+$09
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$07
    ld [hl], a
    or a
    jp z, Jump_006_6f45

    inc hl
    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_006_6eb7

    ld a, $01
    jr jr_006_6eb8

Jump_006_6eb7:
    xor a

jr_006_6eb8:
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_006_6ed6

    ld hl, sp+$09
    ld a, [hl]
    cp $01
    jp nz, Jump_006_6ecb

    ld a, $01
    jr jr_006_6ecc

Jump_006_6ecb:
    xor a

jr_006_6ecc:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_006_6f18

    jp Jump_006_6f3b


Jump_006_6ed6:
    ld hl, sp+$08
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
    ld hl, sp+$00
    ld [hl], $c4
    inc hl
    ld [hl], $48
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl+], a
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $1f
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_006_6f3b


Jump_006_6f18:
    ld hl, sp+$08
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
    push af
    inc sp
    ld hl, $c41b
    ld a, [hl]
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_006_55ff
    add sp, $03

Jump_006_6f3b:
    ld hl, sp+$09
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_006_6e9a


Jump_006_6f45:
    ld hl, $c41b
    inc [hl]
    ld c, [hl]
    ld a, c
    and $0f
    ld [hl], a
    ld hl, sp+$08
    inc [hl]
    jp Jump_006_6e88


Jump_006_6f54:
    ld hl, $c411
    ld a, [hl]
    ld hl, $c40f
    sub [hl]
    ld c, a
    xor a
    ld a, $01
    sbc c
    jp nc, Jump_006_6f6d

    ld hl, $6f71
    push hl
    call Call_000_0dab
    add sp, $02

Jump_006_6f6d:
    add sp, $0a
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop

Call_006_6f77:
    push bc
    add sp, -$13
    ld hl, $c412
    ld a, [hl]
    cp $03
    jp z, Jump_006_6f86

    jp Jump_006_715a


Jump_006_6f86:
    ld hl, $c41a
    ld c, [hl]
    xor a
    ld hl, $c40e
    ld a, [hl]
    sbc c
    jp nc, Jump_006_6fa3

    ld a, [hl]
    ld hl, sp+$10
    ld [hl], a
    ld hl, $c41a
    ld a, [hl]
    add $01
    ld hl, sp+$0e
    ld [hl], a
    jp Jump_006_6fb3


Jump_006_6fa3:
    ld hl, $c40e
    ld a, [hl]
    add $01
    ld hl, sp+$0e
    ld [hl], a
    ld hl, $c41a
    ld a, [hl]
    ld hl, sp+$10
    ld [hl], a

Jump_006_6fb3:
    xor a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c41b
    sbc [hl]
    jp nc, Jump_006_6fd2

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    ld hl, $c41b
    ld a, [hl]
    add $01
    ld hl, sp+$0d
    ld [hl], a
    jp Jump_006_6fe2


Jump_006_6fd2:
    ld hl, $c40f
    ld a, [hl]
    add $01
    ld hl, sp+$0d
    ld [hl], a
    ld hl, $c41b
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a

Jump_006_6fe2:
    ld hl, sp+$12
    ld [hl], $00
    ld hl, sp+$0f
    ld a, [hl]
    add $ff
    ld hl, sp+$0c
    ld [hl+], a
    ld a, [hl]
    add $01
    dec hl
    dec hl
    ld [hl+], a
    inc hl
    ld a, [hl]
    cp $10
    jp nz, Jump_006_6fff

    ld a, $01
    jr jr_006_7000

Jump_006_6fff:
    xor a

jr_006_7000:
    ld hl, sp+$08
    ld [hl], a

Jump_006_7003:
    ld hl, sp+$12
    ld a, [hl]
    cp $02
    jp nc, Jump_006_70e0

    xor a
    ld hl, sp+$0f
    or [hl]
    jp z, Jump_006_701b

    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$11
    ld [hl], a
    jp Jump_006_701f


Jump_006_701b:
    ld hl, sp+$11
    ld [hl], $00

Jump_006_701f:
    xor a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0e
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$0a
    ld [hl], a
    xor a
    ld hl, sp+$12
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$09
    ld [hl], a
    ld de, $54b9
    ld hl, sp+$12
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d

Jump_006_7048:
    xor a
    ld hl, sp+$08
    or [hl]
    jp z, Jump_006_7054

    ld c, $10
    jp Jump_006_7057


Jump_006_7054:
    ld hl, sp+$0b
    ld c, [hl]

Jump_006_7057:
    xor a
    ld hl, sp+$11
    ld a, [hl]
    sbc c
    ld a, $00
    rla
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_006_70da

    xor a
    ld hl, sp+$09
    or [hl]
    jp nz, Jump_006_7095

    xor a
    inc hl
    or [hl]
    jp z, Jump_006_7095

    xor a
    ld hl, sp+$11
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_006_7095

    xor a
    ld hl, sp+$11
    ld a, [hl]
    ld hl, sp+$0d
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_006_70d0

Jump_006_7095:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_70a6

    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    jp Jump_006_70aa


Jump_006_70a6:
    ld hl, sp+$02
    ld [hl], $00

Jump_006_70aa:
    ld hl, sp+$11
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl+], a
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld a, $02
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

Jump_006_70d0:
    ld hl, sp+$11
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_006_7048


Jump_006_70da:
    ld hl, sp+$12
    inc [hl]
    jp Jump_006_7003


Jump_006_70e0:
    ld hl, sp+$10
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_006_70e5:
    xor a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0e
    sbc [hl]
    jp nc, Jump_006_715a

    inc hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld de, $54b9
    inc hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d

Jump_006_7101:
    xor a
    ld hl, sp+$11
    ld a, [hl]
    ld hl, sp+$0d
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_006_7154

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_006_711f

    ld hl, sp+$00
    ld [hl], $03
    jp Jump_006_7123


Jump_006_711f:
    ld hl, sp+$00
    ld [hl], $02

Jump_006_7123:
    ld hl, sp+$11
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld a, $02
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
    ld hl, sp+$11
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_006_7101


Jump_006_7154:
    ld hl, sp+$12
    inc [hl]
    jp Jump_006_70e5


Jump_006_715a:
    add sp, $13
    pop bc
    ret


Call_006_715e:
    push bc
    add sp, -$01
    ld hl, sp+$05
    ld a, [hl]
    add $06
    ld c, a
    push af
    inc sp
    ld a, $11
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    xor a
    ld hl, $c8f3
    or [hl]
    jp z, Jump_006_71ed

    ld hl, sp+$05
    ld a, [hl]
    cp $02
    jp nz, Jump_006_71ed

    ld de, $c43b
    ld a, $00
    ld [de], a
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    jr nz, jr_006_7192

    jp Jump_006_71ae


jr_006_7192:
    ld hl, sp+$06
    ld c, [hl]
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    ld hl, $c4f5
    ld a, [hl]
    push af
    inc sp
    call Call_000_172f
    add sp, $02
    jp Jump_006_71c1


Jump_006_71ae:
    ld hl, sp+$06
    ld a, [hl]
    and $0f
    ld c, a
    push af
    inc sp
    ld hl, $c4f6
    ld a, [hl]
    push af
    inc sp
    call Call_000_172f
    add sp, $02

Jump_006_71c1:
    ld bc, $c43c
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $2d
    jp nz, Jump_006_71d1

    ld a, $20
    ld [bc], a

Jump_006_71d1:
    ld bc, $c43d
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $2d
    jp nz, Jump_006_71e1

    ld a, $20
    ld [bc], a

Jump_006_71e1:
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7231


Jump_006_71ed:
    ld hl, sp+$05
    ld a, [hl]
    cp $01
    jp z, Jump_006_7212

    ld hl, sp+$05
    ld a, [hl]
    cp $03
    jp nz, Jump_006_721c

    ld de, $c2e7
    ld a, [de]
    ld c, a
    inc c
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_006_752b
    add sp, $02
    jp Jump_006_7231


Jump_006_7212:
    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c4d4
    add [hl]
    ld hl, sp+$06
    ld [hl], a

Jump_006_721c:
    xor a
    ld a, $6c
    ld hl, sp+$06
    sbc [hl]
    jp c, Jump_006_7231

    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_006_752b
    add sp, $02

Jump_006_7231:
    add sp, $01
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, sp+$03
    ld [hl], $00

Jump_006_7248:
    ld hl, sp+$03
    ld a, [hl]
    cp $04
    jp nc, Jump_006_730e

    ld de, $c0a0
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    and $80
    ld b, a
    ld de, $c0a4
    ld hl, sp+$03
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    xor a
    or b
    jr z, jr_006_7277

    xor a
    or c

jr_006_7277:
    jr z, jr_006_727b

    ld a, $01

jr_006_727b:
    ld b, a
    or b
    jp nz, Jump_006_7308

    ld de, $c420
    ld hl, sp+$03
    ld l, [hl]
    ld h, $00
    add hl, de
    ld c, l
    ld b, h
    ld a, [bc]
    ld hl, sp+$02
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_006_72bf

    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_006_715e
    add sp, $02
    ld a, $00
    ld [bc], a
    ld hl, sp+$03
    ld a, [hl]
    cp $02
    jp nz, Jump_006_72ae

    call Call_000_3116

Jump_006_72ae:
    ld de, $c424
    ld hl, sp+$03
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $19
    ld [de], a
    jp Jump_006_7308


Jump_006_72bf:
    ld de, $c424
    ld hl, sp+$03
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
    ld a, [hl]
    or a
    jp z, Jump_006_7308

    ld hl, sp+$02
    ld a, [hl]
    cp $01
    jp nz, Jump_006_72fc

    ld hl, sp+$03
    ld a, [hl]
    add $06
    ld c, a
    push af
    inc sp
    ld a, $11
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, $732d
    push hl
    call Call_000_2eda
    add sp, $02

Jump_006_72fc:
    ld hl, sp+$02
    ld a, [hl]
    add $ff
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_006_7308:
    ld hl, sp+$03
    inc [hl]
    jp Jump_006_7248


Jump_006_730e:
    ld hl, $c945
    ld a, [hl]
    ld hl, $c52a
    cp [hl]
    jr nz, jr_006_731b

    jp Jump_006_7326


jr_006_731b:
    ld hl, $c52a
    ld a, [hl]
    ld hl, $c945
    ld [hl], a
    call Call_000_2c57

Jump_006_7326:
    call Call_006_7829
    add sp, $04
    pop bc
    ret


    jr nz, @+$22

    jr nz, jr_006_7331

Call_006_7331:
jr_006_7331:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $b0
    inc hl
    ld [hl], $99
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    ret


Call_006_734d:
    push bc
    ld hl, $cb68
    ld a, [hl]
    and $f0
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld a, [hl]
    cp $ff
    jp nz, Jump_006_7366

    ld a, $01
    jr jr_006_7367

Jump_006_7366:
    xor a

jr_006_7367:
    ld b, a
    or b
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_006_7375

    xor a
    or b

jr_006_7375:
    jr z, jr_006_7379

    ld a, $01

jr_006_7379:
    ld c, a
    ld e, c
    pop bc
    ret


Call_006_737d:
    push bc
    xor a
    ld hl, $cb6b
    or [hl]
    jp z, Jump_006_7392

    ld hl, $73c6
    push hl
    call Call_006_7331
    add sp, $02
    jp Jump_006_73c4


Jump_006_7392:
    xor a
    ld hl, $cb6a
    or [hl]
    jp z, Jump_006_73a6

    ld hl, $73cb
    push hl
    call Call_006_7331
    add sp, $02
    jp Jump_006_73c4


Jump_006_73a6:
    call Call_006_734d
    ld c, e
    xor a
    or c
    jp z, Jump_006_73bb

    ld hl, $73d0
    push hl
    call Call_006_7331
    add sp, $02
    jp Jump_006_73c4


Jump_006_73bb:
    ld hl, $73d5
    push hl
    call Call_006_7331
    add sp, $02

Jump_006_73c4:
    pop bc
    ret


    ld d, a
    ld b, c
    ld c, c
    ld d, h
    nop
    ld c, h
    ld b, l
    ld b, c
    ld b, h
    nop
    ld d, e
    ld e, c
    ld c, [hl]
    ld b, e
    nop
    jr nz, @+$22

    jr nz, @+$22

    nop

Call_006_73da:
    push bc
    call Call_006_734d
    ld c, e
    xor a
    or c
    jp z, Jump_006_73f0

    ld hl, $740f
    push hl
    call Call_006_7331
    add sp, $02
    jp Jump_006_740d


Jump_006_73f0:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_006_7404

    ld hl, $7414
    push hl
    call Call_006_7331
    add sp, $02
    jp Jump_006_740d


Jump_006_7404:
    ld hl, $7419
    push hl
    call Call_006_7331
    add sp, $02

Jump_006_740d:
    pop bc
    ret


    ld d, e
    ld e, c
    ld c, [hl]
    ld b, e
    nop
    ld d, a
    ld b, c
    ld c, c
    ld d, h
    nop
    jr nz, @+$22

    jr nz, jr_006_743d

    nop
    push bc
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp z, Jump_006_743a

    cp $03
    jp z, Jump_006_7440

    cp $06
    jp z, Jump_006_7446

    cp $07
    jp z, Jump_006_7464

    jp Jump_006_747f


Jump_006_743a:
    call Call_006_737d

jr_006_743d:
    jp Jump_006_747f


Jump_006_7440:
    call Call_006_73da
    jp Jump_006_747f


Jump_006_7446:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_006_7456

    ld de, $7481
    ld c, e
    ld b, d
    jp Jump_006_745b


Jump_006_7456:
    ld de, $7486
    ld c, e
    ld b, d

Jump_006_745b:
    push bc
    call Call_006_7331
    add sp, $02
    jp Jump_006_747f


Jump_006_7464:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_006_7474

    ld de, $748b
    ld c, e
    ld b, d
    jp Jump_006_7479


Jump_006_7474:
    ld de, $7490
    ld c, e
    ld b, d

Jump_006_7479:
    push bc
    call Call_006_7331
    add sp, $02

Jump_006_747f:
    pop bc
    ret


    ld d, e
    ld e, c
    ld c, [hl]
    ld b, e
    nop
    jr nz, jr_006_74a8

    jr nz, @+$22

    nop
    ld c, h
    ld b, l
    ld b, c
    ld b, h
    nop
    jr nz, @+$22

    jr nz, jr_006_74b4

    nop

Call_006_7495:
    push bc
    add sp, -$01
    ld hl, sp+$05
    ld a, [hl]
    add $c4
    ld [hl], a
    add $01
    ld hl, sp+$00
    srl a
    srl a
    add $f7

jr_006_74a8:
    ld [hl], a
    bit 7, a
    jp z, Jump_006_74e5

    ld hl, sp+$05
    ld a, [hl]
    and $03
    add a

jr_006_74b4:
    ld c, a
    ld a, $17
    add c
    ld e, a
    ld a, $75
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld a, [bc]
    ld c, a
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    xor a
    ld hl, sp+$00
    sbc [hl]
    ld c, a
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_006_7513


Jump_006_74e5:
    ld hl, sp+$05
    ld c, [hl]
    ld a, c
    and $03
    add a
    ld c, a
    ld a, $17
    add c
    ld e, a
    ld a, $75
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c946
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01

Jump_006_7513:
    add sp, $01
    pop bc
    ret


    rra
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    dec h
    ld [hl], l
    jr z, @+$77

    ld b, h
    jr nz, jr_006_7522

jr_006_7522:
    ld b, [hl]
    jr nz, jr_006_7525

jr_006_7525:
    ld b, a
    inc hl
    nop
    ld b, e
    jr nz, jr_006_752b

Call_006_752b:
jr_006_752b:
    push bc
    add sp, -$04
    xor a
    ld hl, sp+$09
    or [hl]
    jp nz, Jump_006_7541

    ld hl, $779d
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_7541:
    ld hl, sp+$08
    ld a, [hl]
    cp $03
    jp nz, Jump_006_75de

    ld hl, sp+$09
    ld a, [hl]
    add $ff
    ld c, a
    cp $3c
    jp nc, Jump_006_7561

    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    call Call_000_2f24
    jp Jump_006_7651


Jump_006_7561:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ff88
    add hl, de
    jp c, Jump_006_75d2

    ld a, c
    cp $73
    jp z, Jump_006_7596

    cp $74
    jp z, Jump_006_75a2

    cp $75
    jp z, Jump_006_75ae

    cp $76
    jp z, Jump_006_75ba

    cp $77
    jp z, Jump_006_75c6

    push af
    inc sp
    call Call_006_7495
    add sp, $01
    jp Jump_006_7651


Jump_006_7596:
    ld hl, $77a1
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75a2:
    ld hl, $77a5
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75ae:
    ld hl, $77a9
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75ba:
    ld hl, $77ad
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75c6:
    ld hl, $77b1
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75d2:
    ld hl, $77b5
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_006_7651


Jump_006_75de:
    xor a
    ld a, $6c
    ld hl, sp+$09
    sbc [hl]
    jp c, Jump_006_7648

    ld c, [hl]
    ld b, $00
    ld hl, $0003
    push hl
    push bc
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $7655
    add hl, bc
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
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$08
    ld a, [hl]
    cp $02
    jp nz, Jump_006_7634

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld a, [de]
    ld c, a
    dec c
    jp Jump_006_763d


Jump_006_7634:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    inc de
    ld a, [de]
    ld c, a

Jump_006_763d:
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_006_7651


Jump_006_7648:
    ld hl, $77b9
    push hl
    call Call_000_2eda
    add sp, $02

Jump_006_7651:
    add sp, $04
    pop bc
    ret


    dec l
    dec l
    dec l
    ld b, e
    jr nz, @+$34

    ld b, e
    inc hl
    ld [hl-], a
    ld b, h
    jr nz, @+$34

    ld b, h
    inc hl
    ld [hl-], a
    ld b, l
    jr nz, @+$34

    ld b, [hl]
    jr nz, jr_006_769c

    ld b, [hl]
    inc hl
    ld [hl-], a
    ld b, a
    jr nz, @+$34

    ld b, a
    inc hl
    ld [hl-], a
    ld b, c
    jr nz, @+$34

    ld b, c
    inc hl
    ld [hl-], a
    ld b, d
    jr nz, @+$34

    ld b, e
    jr nz, jr_006_76b2

    ld b, e
    inc hl
    inc sp
    ld b, h
    jr nz, jr_006_76b8

    ld b, h
    inc hl
    inc sp
    ld b, l
    jr nz, jr_006_76be

    ld b, [hl]
    jr nz, jr_006_76c1

    ld b, [hl]
    inc hl
    inc sp
    ld b, a
    jr nz, jr_006_76c7

    ld b, a
    inc hl
    inc sp
    ld b, c
    jr nz, jr_006_76cd

    ld b, c
    inc hl

jr_006_769c:
    inc sp
    ld b, d
    jr nz, jr_006_76d3

    ld b, e
    jr nz, jr_006_76d7

    ld b, e
    inc hl
    inc [hl]
    ld b, h
    jr nz, jr_006_76dd

    ld b, h
    inc hl
    inc [hl]
    ld b, l
    jr nz, jr_006_76e3

    ld b, [hl]
    jr nz, jr_006_76e6

jr_006_76b2:
    ld b, [hl]
    inc hl
    inc [hl]
    ld b, a
    jr nz, jr_006_76ec

jr_006_76b8:
    ld b, a
    inc hl
    inc [hl]
    ld b, c
    jr nz, jr_006_76f2

jr_006_76be:
    ld b, c
    inc hl
    inc [hl]

jr_006_76c1:
    ld b, d
    jr nz, jr_006_76f8

    ld b, e
    jr nz, jr_006_76fc

jr_006_76c7:
    ld b, e
    inc hl
    dec [hl]
    ld b, h
    jr nz, jr_006_7702

jr_006_76cd:
    ld b, h
    inc hl
    dec [hl]
    ld b, l
    jr nz, jr_006_7708

jr_006_76d3:
    ld b, [hl]
    jr nz, @+$37

    ld b, [hl]

jr_006_76d7:
    inc hl
    dec [hl]
    ld b, a
    jr nz, jr_006_7711

    ld b, a

jr_006_76dd:
    inc hl
    dec [hl]
    ld b, c
    jr nz, jr_006_7717

    ld b, c

jr_006_76e3:
    inc hl
    dec [hl]
    ld b, d

jr_006_76e6:
    jr nz, @+$37

    ld b, e
    jr nz, jr_006_7721

    ld b, e

jr_006_76ec:
    inc hl
    ld [hl], $44
    jr nz, jr_006_7727

    ld b, h

jr_006_76f2:
    inc hl
    ld [hl], $45
    jr nz, jr_006_772d

    ld b, [hl]

jr_006_76f8:
    jr nz, jr_006_7730

    ld b, [hl]
    inc hl

jr_006_76fc:
    ld [hl], $47
    jr nz, @+$38

    ld b, a
    inc hl

jr_006_7702:
    ld [hl], $41
    jr nz, @+$38

    ld b, c
    inc hl

jr_006_7708:
    ld [hl], $42
    jr nz, jr_006_7742

    ld b, e
    jr nz, jr_006_7746

    ld b, e
    inc hl

jr_006_7711:
    scf
    ld b, h
    jr nz, jr_006_774c

    ld b, h
    inc hl

jr_006_7717:
    scf
    ld b, l
    jr nz, jr_006_7752

    ld b, [hl]
    jr nz, jr_006_7755

    ld b, [hl]
    inc hl
    scf

jr_006_7721:
    ld b, a
    jr nz, jr_006_775b

    ld b, a
    inc hl
    scf

jr_006_7727:
    ld b, c
    jr nz, jr_006_7761

    ld b, c
    inc hl
    scf

jr_006_772d:
    ld b, d
    jr nz, jr_006_7767

jr_006_7730:
    ld b, e
    jr nz, @+$3a

    ld b, e
    inc hl
    jr c, jr_006_777b

    jr nz, @+$3a

    ld b, h
    inc hl
    jr c, jr_006_7782

    jr nz, @+$3a

    ld b, [hl]
    jr nz, @+$3a

jr_006_7742:
    ld b, [hl]
    inc hl
    jr c, jr_006_778d

jr_006_7746:
    jr nz, @+$3a

    ld b, a
    inc hl
    jr c, jr_006_778d

jr_006_774c:
    jr nz, @+$3a

    ld b, c
    inc hl
    jr c, jr_006_7794

jr_006_7752:
    jr nz, jr_006_778c

    ld b, e

jr_006_7755:
    jr nz, jr_006_7790

    ld b, e
    inc hl
    add hl, sp
    ld b, h

jr_006_775b:
    jr nz, jr_006_7796

    ld b, h
    inc hl
    add hl, sp
    ld b, l

jr_006_7761:
    jr nz, jr_006_779c

    ld b, [hl]
    jr nz, jr_006_779f

    ld b, [hl]

jr_006_7767:
    inc hl
    add hl, sp
    ld b, a
    jr nz, jr_006_77a5

    ld b, a
    inc hl
    add hl, sp
    ld b, c
    jr nz, @+$3b

    ld b, c
    inc hl
    add hl, sp
    ld b, d
    jr nz, jr_006_77b1

    ld b, e
    jr nz, jr_006_77bc

jr_006_777b:
    ld b, e
    inc hl
    ld b, c
    ld b, h
    jr nz, jr_006_77c2

    ld b, h

jr_006_7782:
    inc hl
    ld b, c
    ld b, l
    jr nz, jr_006_77c8

    ld b, [hl]
    jr nz, jr_006_77cb

    ld b, [hl]
    inc hl

jr_006_778c:
    ld b, c

jr_006_778d:
    ld b, a
    jr nz, @+$43

jr_006_7790:
    ld b, a
    inc hl
    ld b, c
    ld b, c

jr_006_7794:
    jr nz, jr_006_77d7

jr_006_7796:
    ld b, c
    inc hl
    ld b, c
    ld b, d
    jr nz, @+$43

jr_006_779c:
    nop
    dec l
    dec l

jr_006_779f:
    dec l
    nop
    ld b, e
    jr nz, @+$37

    nop

jr_006_77a5:
    ld b, [hl]
    jr nz, @+$37

    nop
    ld b, e
    jr nz, @+$38

    nop
    ld b, e
    jr nz, @+$39

    nop

jr_006_77b1:
    ld b, e
    jr nz, jr_006_77ec

    nop
    ccf
    ccf
    ccf
    nop
    ccf
    ccf
    ccf

jr_006_77bc:
    nop

Call_006_77bd:
    ld h, d
    ld l, e
    ld a, [hl]
    sla a

jr_006_77c2:
    ld [hl+], a
    ld a, [hl]
    sla a
    ld [hl+], a
    ld a, [hl]

jr_006_77c8:
    sla a
    ld [hl+], a

jr_006_77cb:
    ld a, [hl]
    sla a
    ld [hl+], a
    ld a, [hl]
    sla a
    ld [hl+], a
    ld a, [hl]
    sla a
    ld [hl+], a

jr_006_77d7:
    ld a, [hl]
    sla a
    ld [hl+], a
    ld a, [hl]
    sla a
    ld [hl+], a
    ret


Call_006_77e0:
    call Call_006_77bd
    ld a, [c]
    and $f0
    swap a
    srl a
    add e
    ld l, a

jr_006_77ec:
    ld h, d
    ld a, [hl]
    or $01
    ld [hl], a
    call Call_006_77bd
    ld a, [c]
    and $0f
    srl a
    add e
    ld l, a
    ld h, d
    ld a, [hl]
    or $01
    ld [hl], a
    ret


jr_006_7801:
    xor a
    ld [hl], a
    ld hl, $cba3
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    inc a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc a
    ld [$cba1], a
    ret


Call_006_7829:
    ld a, [$cba1]
    or a
    ret nz

    ld hl, $cba2
    ld a, [hl]
    or a
    ret z

    cp $02
    jr z, jr_006_7801

    xor a
    ld [hl], a
    ld c, $a1
    ld de, $cba3
    call Call_006_77e0
    inc c
    call Call_006_77e0
    inc c
    call Call_006_77e0
    inc c
    inc c
    call Call_006_77e0
    inc c
    ld de, $cbab
    call Call_006_77e0
    inc c
    call Call_006_77e0
    inc c
    inc c
    call Call_006_77e0
    inc c
    call Call_006_77e0
    inc c
    ld de, $cbb3
    call Call_006_77e0
    inc c
    inc c
    call Call_006_77e0
    inc c
    call Call_006_77e0
    inc c
    call Call_006_77e0
    ld [$cba1], a
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
