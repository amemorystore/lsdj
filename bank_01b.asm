; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    ld a, [c]
    swap a
    ld l, a
    and $f0
    ld b, a
    ld a, [de]
    and $0f
    add b
    ld b, a
    ld a, l
    and $0f
    ld l, a
    ld a, [de]
    and $f0
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld l, b
    add [hl]
    ld [c], a

Call_01b_401b:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00

Jump_01b_4022:
    ld hl, sp+$00
    ld a, [hl]
    add a
    ld b, a
    ld a, $58
    add b
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld a, b
    or c
    jp z, Jump_01b_4054

    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld l, b
    ld h, c
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$00
    inc [hl]
    jp Jump_01b_4022


Jump_01b_4054:
    add sp, $01
    pop bc
    ret


    sbc b
    ld b, b
    and [hl]
    ld b, b
    and a
    ld b, b
    or b
    ld b, b
    or c
    ld b, b
    or [hl]
    ld b, b
    cp h
    ld b, b
    jp $c940


    ld b, b
    ret nc

    ld b, b
    push de
    ld b, b
    sub $40
    db $e3
    ld b, b
    db $e4
    ld b, b
    xor $40
    nop
    ld b, c
    nop
    nop
    ld c, $41
    ld c, b
    ld b, d
    ld c, $43
    ld a, [de]
    ld b, h
    add hl, hl
    ld b, l
    inc de
    ld b, [hl]
    ld a, a
    ld b, [hl]
    cpl
    ld b, a
    dec hl
    ld c, b
    ld [hl], c
    ld c, c
    inc b
    dec b
    ld b, $07
    ld [$0b09], sp
    dec c
    ld c, $0f
    ld c, b
    ld b, l
    ld c, h
    ld d, b
    jr nz, jr_01b_40cd

    jr nz, jr_01b_40f6

    add hl, sp
    ld l, $32
    ld l, $4c
    nop
    nop
    ld d, e
    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld d, e
    ld a, [hl-]
    nop
    nop
    ld d, e
    ld c, a
    ld c, [hl]
    ld b, a
    nop
    ld b, e
    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    nop
    ld d, b
    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    nop
    ld c, c
    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    nop
    ld b, a
    ld d, d
    ld c, a
    ld c, a

jr_01b_40cd:
    ld d, [hl]
    ld b, l
    nop
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    nop
    nop
    ld b, e
    ld c, a
    ld c, l
    ld c, l
    ld b, c
    ld c, [hl]
    ld b, h
    jr nz, jr_01b_412b

    ld c, c
    ld d, e
    ld d, h
    nop
    nop
    ld c, h
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_4137

    ld c, a
    ld b, h
    ld b, l
    nop
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    cpl
    ld b, e

jr_01b_40f6:
    ld c, a
    ld d, b
    ld e, c
    cpl
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop
    ld c, l
    ld d, l
    ld d, h
    ld b, l
    cpl
    ld d, e
    ld c, a
    ld c, h
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, [hl]
    nop
    ld d, e
    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, c
    ld c, [hl]
    ld d, e
    ld b, l
    ld d, d
    ld d, h

jr_01b_412b:
    jr nz, jr_01b_4170

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld b, h
    ld d, b

jr_01b_4137:
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $43
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_4187

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld b, c
    inc l
    ld b, c
    ld a, $2e
    ld l, $2e
    ld c, l
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_01b_41a5

    ld b, l
    ld d, a
    jr nz, jr_01b_419e

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, d
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld b, l
    ld b, h
    ld c, c
    ld d, h

jr_01b_4170:
    jr nz, jr_01b_41b5

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $43
    ld d, l
    ld d, h

jr_01b_4187:
    jr nz, jr_01b_41cc

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $50
    ld b, c
    ld d, e
    ld d, h
    ld b, l

jr_01b_419e:
    jr nz, @+$45

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]

jr_01b_41a5:
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, c
    ld e, l
    ld a, $20
    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]

jr_01b_41b5:
    ld b, l
    jr nz, jr_01b_41fb

    ld c, b
    ld c, [hl]
    ld l, $0a
    ld a, [bc]
    inc a
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld d, e
    ld d, h
    ld b, c

jr_01b_41cc:
    ld d, d
    ld d, h
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld l, $52
    ld b, l
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, [bc]
    inc a
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld l, $51
    ld d, l
    ld b, l

jr_01b_41fb:
    ld d, l
    ld b, l
    jr nz, jr_01b_4251

    ld c, a
    ld d, a
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld c, h
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $4c
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_4262

    ld c, a
    ld b, h
    ld b, l
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, d
    inc l
    ld b, d
    inc l
    ld b, d
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, l
    ld b, c
    ld d, d
    ld c, e
    jr nz, jr_01b_4280

    ld c, a
    ld d, a
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld d, l
    cpl
    ld b, h
    ld a, $2e
    ld l, $2e
    ld d, b
    ld b, c
    ld b, a
    ld b, l
    jr nz, jr_01b_4296

    ld d, b
    cpl
    ld b, h
    ld c, a
    ld d, a
    ld c, [hl]
    nop
    ld c, h
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_429b

    ld c, a
    ld b, h
    ld b, l

jr_01b_4251:
    ld a, [bc]
    ld a, [bc]
    ld c, c
    ld c, [hl]
    jr nz, jr_01b_42aa

    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [hl-]

jr_01b_4262:
    ld a, [bc]
    ld a, [bc]
    inc a
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld l, $51
    ld d, l
    ld b, l
    ld d, l
    ld b, l
    jr nz, jr_01b_42b9

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl

jr_01b_4280:
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $20
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_42d0

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld d, h
    ld b, c

jr_01b_4296:
    ld d, d
    ld d, h
    inc l
    ld d, e
    ld d, h

jr_01b_429b:
    ld b, c
    ld d, d
    ld d, h
    ld a, $0a
    jr nz, jr_01b_42c2

    jr nz, jr_01b_42c4

    ld d, c
    ld d, l
    ld c, c
    ld b, e
    ld c, e
    ld d, e

jr_01b_42aa:
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_01b_42f3

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h

jr_01b_42b9:
    dec hl
    ld e, e
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    inc l
    ld d, e

jr_01b_42c2:
    ld d, h
    ld b, c

jr_01b_42c4:
    ld d, d
    ld d, h
    ld e, l
    ld a, $0a
    jr nz, @+$22

    jr nz, jr_01b_42ed

    jr nz, jr_01b_4320

    ld d, l

jr_01b_42d0:
    ld c, c
    ld b, e
    ld c, e
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_431c

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld a, [bc]
    inc a
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld l, $51
    ld d, l

jr_01b_42ed:
    ld b, l
    ld d, l
    ld b, l
    jr nz, jr_01b_4344

    ld c, a

jr_01b_42f3:
    ld d, a
    ld a, [bc]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld c, h
    ld a, $20
    ld b, l
    ld e, b
    ld c, c
    ld d, h
    jr nz, jr_01b_4350

    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_4356

    ld c, a
    ld b, h
    ld b, l
    ld a, [bc]
    nop
    ld b, e
    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]

jr_01b_431c:
    inc a
    ld b, c
    ld a, $2e

jr_01b_4320:
    ld l, $2e
    ld l, $2e
    ld l, $49
    ld c, [hl]
    ld d, e
    ld b, l
    ld d, d
    ld d, h
    jr nz, @+$52

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld b, c
    inc l
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, [hl]
    ld b, l
    ld d, a
    jr nz, jr_01b_4394

jr_01b_4344:
    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld b, h
    ld d, b
    ld b, c

jr_01b_4350:
    ld b, h
    ld a, $20
    ld b, e
    ld c, b
    ld b, c

jr_01b_4356:
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_43ab

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, d
    ld a, $2e
    ld l, $2e
    ld l, $45
    ld b, h
    ld c, c
    ld d, h
    jr nz, jr_01b_43c2

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld d, l
    ld d, h
    jr nz, jr_01b_43d9

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl

jr_01b_4394:
    ld b, c
    ld a, $2e
    ld l, $2e
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    jr nz, jr_01b_43f0

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl

jr_01b_43ab:
    ld e, e
    ld b, d
    inc l
    ld b, c
    ld e, l
    ld a, $20
    ld b, e
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    jr nz, jr_01b_4409

    ld c, b
    ld d, d
    ld l, $0a
    ld a, [bc]
    inc a
    ld d, e
    ld d, h
    ld b, c

jr_01b_43c2:
    ld d, d
    ld d, h
    ld a, $0a
    jr nz, @+$22

    jr nz, @+$22

    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_4419

    ld c, b
    ld b, c
    ld c, c

jr_01b_43d9:
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $0a
    jr nz, jr_01b_4409

    jr nz, @+$22

    jr nz, jr_01b_4440

    ld d, h
    ld b, c
    ld d, d

jr_01b_43f0:
    ld d, h
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_444b

    ld c, a
    ld c, [hl]
    ld b, a
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $0a
    jr nz, jr_01b_444c

    ld b, h
    ld c, c

jr_01b_4409:
    ld d, h
    jr nz, jr_01b_445a

    ld b, l
    ld c, c
    ld b, a
    ld c, b
    ld b, d
    ld c, a
    ld d, d
    jr nz, jr_01b_4458

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]

jr_01b_4419:
    nop
    ld d, b
    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $49
    ld c, [hl]
    ld d, e
    ld b, l
    ld d, d
    ld d, h
    jr nz, jr_01b_4486

    ld c, a
    ld d, h
    ld b, l
    cpl
    ld b, e
    ld c, l
    ld b, h
    ld a, [bc]

jr_01b_4440:
    inc a
    ld b, c
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $2e

jr_01b_444b:
    ld b, e

jr_01b_444c:
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_44a1

    ld c, a
    ld d, h
    ld b, l
    ld a, [bc]
    inc a

jr_01b_4458:
    ld b, d
    dec hl

jr_01b_445a:
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld d, l
    ld d, h
    jr nz, jr_01b_44b8

    ld c, a
    ld d, h
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    jr nz, jr_01b_44cf

    ld c, a
    ld d, h
    ld b, l
    ld a, [bc]
    ld a, [bc]

jr_01b_4486:
    inc a
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $0a
    jr nz, @+$22

    jr nz, jr_01b_44e5

    ld d, h
    ld b, c
    ld d, d
    ld d, h
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_44ed

    ld c, b
    ld d, d
    ld b, c
    ld d, e

jr_01b_44a1:
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $0a
    jr nz, jr_01b_44d1

    jr nz, jr_01b_44d3

    jr nz, jr_01b_4508

    ld d, h
    ld b, c
    ld d, d

jr_01b_44b8:
    ld d, h
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_01b_4513

    ld c, a
    ld c, [hl]
    ld b, a
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $0a
    ld b, l
    ld b, h

jr_01b_44cf:
    ld c, c
    ld d, h

jr_01b_44d1:
    jr nz, jr_01b_4521

jr_01b_44d3:
    ld b, l
    ld c, c
    ld b, a
    ld c, b
    ld b, d
    ld c, a
    ld d, d
    jr nz, jr_01b_452c

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    ld a, [bc]
    inc a
    ld d, e

jr_01b_44e5:
    ld b, l
    ld c, h
    dec hl
    ld d, d
    ld a, $2e
    ld l, $2e

jr_01b_44ed:
    ld l, $2e
    ld b, l
    ld b, h
    ld c, c
    ld d, h
    jr nz, jr_01b_453e

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, c
    ld e, l
    ld a, $20
    ld b, e
    ld c, h

jr_01b_4508:
    ld c, a
    ld c, [hl]
    ld b, l
    jr nz, jr_01b_4556

    ld c, [hl]
    ld d, e
    ld d, h
    ld a, [bc]
    ld a, [bc]
    inc a

jr_01b_4513:
    ld b, c
    inc l
    ld b, c
    jr nz, jr_01b_4567

    ld c, [hl]
    jr nz, jr_01b_455e

    ld c, l
    ld b, h
    ld a, $2e
    ld l, $2e

jr_01b_4521:
    ld l, $2e
    ld l, $48
    ld b, l
    ld c, h
    ld d, b
    nop
    ld c, c
    ld c, [hl]
    ld d, e

jr_01b_452c:
    ld d, h
    ld d, d
    jr nz, @+$55

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h

jr_01b_453e:
    ld a, $2e
    ld l, $43
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_459f

    ld b, c
    ld c, h
    ld d, l
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, d
    ld a, $2e

jr_01b_4556:
    ld l, $2e
    ld l, $2e
    ld b, l
    ld b, h
    ld c, c
    ld d, h

jr_01b_455e:
    jr nz, jr_01b_45b4

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld a, [bc]
    inc a
    ld d, e

jr_01b_4567:
    ld b, l
    ld c, h
    dec hl
    ld b, d
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    jr nz, jr_01b_45c0

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $50
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    jr nz, @+$4b

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, c
    ld e, l
    ld a, $0a

jr_01b_459f:
    jr nz, jr_01b_45c1

    jr nz, jr_01b_45e6

    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    jr nz, jr_01b_45fc

    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    cpl
    ld d, h
    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld a, [bc]

jr_01b_45b4:
    ld a, [bc]
    inc a
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $2e
    ld l, $2e
    ld d, e

jr_01b_45c0:
    ld d, h

jr_01b_45c1:
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_01b_4616

    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $20
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_01b_4632

    ld c, a
    ld c, [hl]
    ld b, a
    ld a, [bc]
    inc a
    ld b, d
    dec hl

jr_01b_45e6:
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $43
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_463e

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    ld a, [bc]
    ld a, [bc]
    inc a

jr_01b_45fc:
    ld b, c
    inc l
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, b
    ld b, l
    ld c, h
    ld d, b
    ld a, [bc]
    nop
    ld b, a
    ld d, d
    ld c, a

jr_01b_4616:
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_466e

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld c, h
    cpl
    ld d, d
    ld a, $2e
    ld l, $2e
    ld l, $43
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a

jr_01b_4632:
    ld b, l
    jr nz, jr_01b_4688

    ld d, h
    ld b, l
    ld d, b
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld d, l
    cpl

jr_01b_463e:
    ld b, h
    ld a, $2e
    ld l, $2e
    ld b, e
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_469e

    ld d, a
    ld c, c
    ld c, [hl]
    ld b, a
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld d, l
    ld d, h
    jr nz, jr_01b_46b7

    ld d, h
    ld b, l
    ld d, b
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c

jr_01b_466e:
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    jr nz, jr_01b_46ce

    ld d, h
    ld b, l
    ld d, b
    nop
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_46d8

    ld b, e
    ld d, d
    ld b, l

jr_01b_4688:
    ld b, l
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld d, l
    cpl
    ld b, h
    ld a, $2e
    ld l, $2e
    ld l, $43
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_46f0

    ld b, c

jr_01b_469e:
    ld c, l
    ld d, b
    ld c, h
    ld b, l
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld d, l
    cpl
    ld b, h
    ld a, $2e
    ld l, $2e
    ld l, $46
    ld c, h
    ld c, c
    ld d, b
    jr nz, jr_01b_4707

    ld b, c
    ld c, l
    ld d, b

jr_01b_46b7:
    ld c, h
    ld b, l
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld c, h
    cpl
    ld d, d
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $44
    ld d, d
    ld b, c
    ld d, a
    jr nz, jr_01b_4719

    ld c, c

jr_01b_46ce:
    ld c, [hl]
    ld b, l
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, h
    ld d, b
    ld b, c

jr_01b_46d8:
    ld b, h
    ld a, $2e
    ld l, $2e
    ld b, e
    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_473c

    ld b, c
    ld d, [hl]
    ld b, l
    ld a, [bc]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, d

jr_01b_46f0:
    ld a, $2e
    ld l, $2e
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_01b_474e

    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l
    ld a, [bc]
    inc a
    ld b, d
    ld a, $2e
    ld l, $2e

jr_01b_4707:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    ld a, [bc]
    inc a

jr_01b_4719:
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $50
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop
    inc a
    ld b, c
    ld a, $20
    ld d, d
    ld d, l
    ld c, [hl]
    jr nz, jr_01b_478c

    ld b, c
    ld b, d
    ld c, h
    ld b, l

jr_01b_473c:
    ld a, [bc]
    inc a
    ld b, d
    ld a, $20
    ld c, l
    ld b, c
    ld e, c
    ld b, d
    ld b, l
    ld a, [bc]
    inc a
    ld b, e
    ld a, $20
    ld b, e
    ld c, b
    ld c, a

jr_01b_474e:
    ld d, d
    ld b, h
    ld a, [bc]
    inc a
    ld b, h
    ld a, $20
    ld b, h
    ld b, l
    ld c, h
    ld b, c
    ld e, c
    ld a, [bc]
    inc a
    ld b, l
    ld a, $20
    ld b, c
    ld c, l
    ld d, b
    ld l, $20
    ld b, l
    ld c, [hl]
    ld d, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    ld a, [bc]
    inc a
    ld b, [hl]
    ld a, $20
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01b_47bd

    ld d, d
    ld b, c
    ld c, l
    ld b, l
    ld a, [bc]
    inc a
    ld b, a
    ld a, $20
    ld b, a
    ld d, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld b, l
    ld a, [bc]
    inc a
    ld c, b
    ld a, $20
    ld c, b

jr_01b_478c:
    ld c, a
    ld d, b
    cpl
    ld d, e
    ld d, h
    ld c, a
    ld d, b
    ld a, [bc]
    inc a
    ld c, e
    ld a, $20
    ld c, e
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_01b_47ec

    ld c, a
    ld d, h
    ld b, l
    ld a, [bc]
    inc a
    ld c, h
    ld a, $20
    ld d, e
    ld c, h
    ld c, c
    ld b, h
    ld b, l
    jr nz, jr_01b_4808

    ld c, h
    ld b, l
    ld b, a
    ld b, c
    ld d, h
    ld c, a
    ld e, l
    ld a, [bc]
    inc a
    ld c, l
    ld a, $20
    ld c, l
    ld b, c
    ld d, e
    ld d, h

jr_01b_47bd:
    ld b, l
    ld d, d
    jr nz, @+$58

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    ld a, [bc]
    inc a
    ld c, a
    ld a, $20
    ld c, a
    ld d, l
    ld d, h
    ld d, b
    ld d, l
    ld d, h
    jr nz, jr_01b_482e

    ld d, b
    ld b, c
    ld c, [hl]
    ld e, l
    ld a, [bc]
    inc a
    ld d, b
    ld a, $20
    ld d, b
    ld c, c
    ld d, h
    ld b, e
    ld c, b
    jr nz, jr_01b_4825

    ld b, l
    ld c, [hl]
    ld b, h
    cpl
    ld d, e
    ld c, b
    ld c, c
    ld b, [hl]
    ld d, h

jr_01b_47ec:
    ld a, [bc]
    inc a
    ld d, d
    ld a, $20
    ld d, d
    ld b, l
    ld d, h
    ld d, d
    ld c, c
    ld b, a
    ld a, [bc]
    inc a
    ld d, e
    ld a, $20
    ld d, e
    ld d, a
    ld b, l
    ld b, l
    ld d, b
    cpl
    ld d, e
    ld c, b
    ld b, c
    ld d, b
    ld b, l
    ld a, [bc]

jr_01b_4808:
    inc a
    ld d, [hl]
    ld a, $20
    ld d, [hl]
    ld c, c
    ld b, d
    ld d, d
    ld b, c
    ld d, h
    ld c, a
    ld a, [bc]
    inc a
    ld d, a
    ld a, $20
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    ld a, [bc]
    inc a
    ld e, d
    ld a, $20
    ld d, d
    ld b, c
    ld c, [hl]
    ld b, h

jr_01b_4825:
    ld c, a
    ld c, l
    ld c, c
    ld e, d
    ld b, l
    nop
    ld d, e
    ld b, l
    ld c, h

jr_01b_482e:
    ld b, l
    ld b, e
    ld d, h
    cpl
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    cpl
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, d
    ld a, $2e
    ld l, $2e
    ld d, e
    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, @+$44

    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, d
    ld e, l
    ld a, $0a
    jr nz, @+$22

    jr nz, jr_01b_48b7

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_01b_48bd

    ld c, a
    ld d, a
    cpl
    ld b, e
    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, d
    inc l
    ld b, d
    ld e, l
    ld a, $0a
    jr nz, jr_01b_48a5

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01b_48de

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_01b_48e5

    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld e, e
    ld b, d
    inc l
    ld b, d
    inc l
    ld b, d
    inc l
    ld b, d

jr_01b_48a5:
    ld e, l
    ld a, $0a
    jr nz, jr_01b_48ca

    jr nz, jr_01b_48cc

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01b_48f5

    ld c, a
    ld d, b
    ld e, c
    jr nz, @+$55

jr_01b_48b7:
    ld b, e
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    ld a, [bc]

jr_01b_48bd:
    ld a, [bc]
    ld d, a
    ld c, b
    ld c, c
    ld c, h
    ld b, l
    jr nz, jr_01b_4918

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h

jr_01b_48ca:
    ld c, c
    ld c, [hl]

jr_01b_48cc:
    ld b, a
    ld l, $2e
    ld l, $0a
    inc a
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $47

jr_01b_48de:
    ld d, d
    ld c, a
    ld d, a
    jr nz, jr_01b_4925

    ld c, h
    ld c, a

jr_01b_48e5:
    ld b, e
    ld c, e
    ld a, [bc]
    inc a
    ld b, c
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $43
    ld c, b
    ld b, c

jr_01b_48f5:
    ld c, [hl]
    ld b, a
    ld b, l
    jr nz, jr_01b_493c

    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld a, [bc]
    inc a
    ld b, d
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld b, e
    ld c, a
    ld d, b
    ld e, c
    jr nz, jr_01b_4953

    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld a, [bc]
    inc a
    ld d, e

jr_01b_4918:
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $43
    ld d, l

jr_01b_4925:
    ld d, h
    jr nz, jr_01b_496a

    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    ld a, $2e
    ld l, $2e
    ld l, $43
    ld b, c
    ld c, [hl]
    ld b, e
    ld b, l
    ld c, h

jr_01b_493c:
    jr nz, jr_01b_4991

    ld b, l
    ld c, h
    ld b, l
    ld b, e
    ld d, h
    ld a, [bc]
    ld a, [bc]
    ld d, a
    ld c, b
    ld b, l
    ld c, [hl]
    jr nz, jr_01b_4999

    ld c, a
    ld d, h
    jr nz, jr_01b_49a2

    ld b, l
    ld c, h
    ld b, l
    ld b, e

jr_01b_4953:
    ld d, h
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $2e
    ld a, [bc]
    inc a
    ld d, e
    ld b, l
    ld c, h
    dec hl
    ld b, c
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e

jr_01b_496a:
    ld l, $50
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    nop
    ld c, l
    ld d, l
    ld d, h
    ld b, l
    cpl
    ld d, e
    ld c, a
    ld c, h
    ld c, a
    cpl
    ld d, b
    ld b, c
    ld c, [hl]
    ld a, [bc]
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld d, e
    ld b, l
    ld c, h
    ld a, $2e
    ld l, $2e
    ld c, l
    ld d, l
    ld d, h
    ld b, l
    jr nz, jr_01b_49d3

    ld c, b

jr_01b_4991:
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, h
    ld a, [bc]
    inc a
    ld b, d

jr_01b_4999:
    ld a, $2e
    ld l, $2e
    ld l, $2e
    ld d, l
    ld c, [hl]
    ld c, l

jr_01b_49a2:
    ld d, l
    ld d, h
    ld b, l
    jr nz, jr_01b_49ea

    ld c, b
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, h
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, h
    ld a, $20
    ld d, e
    ld c, a
    ld c, h
    ld c, a
    jr nz, jr_01b_4a01

    ld c, b
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, h
    ld a, [bc]
    inc a
    ld b, d
    dec hl
    ld b, h
    ld d, b
    ld b, c
    ld b, h
    ld a, $2e
    ld l, $2e
    ld d, b
    ld b, c
    ld c, [hl]

jr_01b_49d3:
    jr nz, jr_01b_4a18

    ld c, b
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, h
    ld a, [bc]
    ld a, [bc]
    ld d, d
    ld b, l
    ld c, h
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    jr nz, @+$3e

    ld b, d
    ld a, $20
    ld b, [hl]

jr_01b_49ea:
    ld c, c
    ld d, d
    ld d, e
    ld d, h
    ld a, [bc]
    ld d, h
    ld c, a
    jr nz, jr_01b_4a3f

    ld c, a
    ld b, e
    ld c, e
    ld hl, $c500
    add sp, -$01
    ld hl, $c932
    ld c, [hl]
    ld a, $8e

jr_01b_4a01:
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    add a
    ld b, a
    ld a, $58
    add b
    ld e, a
    ld a, $40
    adc $00
    ld d, a

jr_01b_4a18:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld c, a
    ld l, b
    ld h, c
    push hl
    call Call_000_36e0
    ld b, d
    ld c, e
    add sp, $02
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_01b_4a33

    ld b, $00
    jp Jump_01b_4a35


Jump_01b_4a33:
    ld b, $02

Jump_01b_4a35:
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af

jr_01b_4a3f:
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    add sp, $01
    pop bc
    ret


Call_01b_4a4d:
    ld hl, $c931
    ld a, [hl]
    or a
    jp z, Jump_01b_4a58

    jp Jump_01b_4a61


Jump_01b_4a58:
    ld a, $00
    push af
    inc sp
    call $49f8
    add sp, $01

Jump_01b_4a61:
    ret


Call_01b_4a62:
    push bc
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_401b
    call Call_01b_4a4d
    pop bc
    ret


Call_01b_4a79:
    push bc
    ld hl, $c932
    ld c, [hl]
    ld b, $00
    ld a, c
    cp $09
    jp nz, Jump_01b_4a8e

    ld a, b
    or a
    jp nz, Jump_01b_4a8e

    jp Jump_01b_4aa4


Jump_01b_4a8e:
    ld a, $01
    push af
    inc sp
    call $49f8
    add sp, $01
    ld hl, $c932
    inc [hl]
    ld a, $00
    push af
    inc sp
    call $49f8
    add sp, $01

Jump_01b_4aa4:
    pop bc
    ret


Call_01b_4aa6:
    xor a
    ld hl, $c932
    or [hl]
    jp z, Jump_01b_4ac4

    ld a, $01
    push af
    inc sp
    call $49f8
    add sp, $01
    ld hl, $c932
    dec [hl]
    ld a, $00
    push af
    inc sp
    call $49f8
    add sp, $01

Jump_01b_4ac4:
    ret


Call_01b_4ac5:
    push bc
    ld hl, $c402
    ld [hl], $09
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Call_01b_4adb:
    ld hl, $c931
    ld [hl], $00
    call Call_000_17ca
    call Call_01b_4a62
    ret


Call_01b_4ae7:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $00
    dec hl
    ld [hl], $00
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98

Jump_01b_4af9:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_01b_4b69

    ld a, b
    cp $0a
    jp z, Jump_01b_4b17

    cp $3c
    jp z, Jump_01b_4b2d

    cp $3e
    jp z, Jump_01b_4b35

    jp Jump_01b_4b54


Jump_01b_4b17:
    ld hl, sp+$02
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$01
    ld [hl], $00
    jp Jump_01b_4b5f


Jump_01b_4b2d:
    ld hl, sp+$01
    ld a, [hl]
    dec hl
    ld [hl], a
    jp Jump_01b_4b5f


Jump_01b_4b35:
    ld hl, sp+$01
    ld a, [hl]
    dec hl
    sub [hl]
    ld c, a
    ld a, $01
    push af
    inc sp
    ld a, c
    push af
    inc sp
    inc hl
    inc hl
    ld a, [hl]
    push af
    inc sp
    dec hl
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_01b_4b5f


Jump_01b_4b54:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$01
    inc [hl]

Jump_01b_4b5f:
    ld hl, sp+$07
    inc [hl]
    jr nz, jr_01b_4b66

    inc hl
    inc [hl]

jr_01b_4b66:
    jp Jump_01b_4af9


Jump_01b_4b69:
    add sp, $03
    pop bc
    ret


Call_01b_4b6d:
    push bc
    ld a, $01
    push af
    inc sp
    call $49f8
    add sp, $01
    call Call_000_17ca
    ld hl, $c932
    ld c, [hl]
    ld a, $8e
    add c
    ld e, a
    ld a, $40
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c931
    ld [hl], a
    ld hl, $c932
    ld a, [hl]
    add a
    ld c, a
    ld a, $af
    add c
    ld e, a
    ld a, $4b
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld e, c
    ld d, b
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    push bc
    call Call_01b_4ae7
    add sp, $02
    pop bc
    ret


    ld a, d
    ld b, b
    ld a, [hl]
    ld b, b
    add b
    ld b, b
    add d
    ld b, b
    add h
    ld b, b
    add [hl]
    ld b, b
    adc b
    ld b, b
    ld a, h
    ld b, b
    adc d
    ld b, b
    adc h
    ld b, b
    push bc
    ld hl, $c931
    ld a, [hl]
    or a
    jp nz, Jump_01b_4bd0

    ld a, $01
    jr jr_01b_4bd1

Jump_01b_4bd0:
    xor a

jr_01b_4bd1:
    ld c, a
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp z, Jump_01b_4bf8

    cp $08
    jp z, Jump_01b_4bed

    cp $10
    jp z, Jump_01b_4c03

    cp $20
    jp z, Jump_01b_4c16

    jp Jump_01b_4c2c


Jump_01b_4bed:
    xor a
    or c
    jp z, Jump_01b_4c2c

    call Call_01b_4a79
    jp Jump_01b_4c2c


Jump_01b_4bf8:
    xor a
    or c
    jp z, Jump_01b_4c2c

    call Call_01b_4aa6
    jp Jump_01b_4c2c


Jump_01b_4c03:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01b_4c2c

    xor a
    or c
    jp z, Jump_01b_4c2c

    call Call_01b_4b6d
    jp Jump_01b_4c2c


Jump_01b_4c16:
    xor a
    ld hl, $c40a
    or [hl]
    jp z, Jump_01b_4c2c

    xor a
    or c
    jp z, Jump_01b_4c29

    call Call_01b_4ac5
    jp Jump_01b_4c2c


Jump_01b_4c29:
    call Call_01b_4adb

Jump_01b_4c2c:
    ld e, $01
    pop bc
    ret


Call_01b_4c30:
    push bc
    add sp, -$01
    ld hl, $c42e
    ld a, [hl]
    add $05
    ld c, a
    ld hl, $c42f
    ld a, [hl]
    add $08
    ld hl, sp+$00
    ld [hl], a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_4c50

    ld b, $03
    jp Jump_01b_4c52


Jump_01b_4c50:
    ld b, $02

Jump_01b_4c52:
    ld a, b
    push af
    inc sp
    ld a, $01
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


    jr nc, jr_01b_4c9d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01b_4cad

    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld a, b
    jr nz, jr_01b_4cd2

    ld [hl], a
    nop

Call_01b_4c96:
    push bc
    ld hl, $c42f
    ld a, [hl]
    add $08

jr_01b_4c9d:
    ld c, a
    ld hl, $c42e
    ld a, [hl]
    add $05
    ld b, a
    ld a, $00
    push af
    inc sp
    ld a, $01
    push af
    inc sp

jr_01b_4cad:
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


Call_01b_4cba:
    push bc
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

jr_01b_4cd2:
    ld [hl+], a
    ld a, [hl]
    add $ff
    ld c, a

Jump_01b_4cd7:
    xor a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$0a
    sbc [hl]
    jp nc, Jump_01b_4e70

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0d
    cp [hl]
    jr nz, jr_01b_4cf3

    ld a, $01
    jr jr_01b_4cf4

jr_01b_4cf3:
    xor a

jr_01b_4cf4:
    ld hl, sp+$09
    ld [hl+], a
    ld a, [hl]
    add $ff
    ld b, a
    ld hl, sp+$0d
    ld a, [hl]
    cp b
    jp nz, Jump_01b_4d06

    ld a, $01
    jr jr_01b_4d07

Jump_01b_4d06:
    xor a

jr_01b_4d07:
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

Jump_01b_4d18:
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
    jp z, Jump_01b_4e6a

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
    ld hl, $c565
    ld [hl], $b7
    inc hl
    ld [hl], $08
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_4d63

    ld hl, sp+$06
    ld [hl], $48
    jp Jump_01b_4d67


Jump_01b_4d63:
    ld hl, sp+$06
    ld [hl], $d2

Jump_01b_4d67:
    ld hl, sp+$06
    ld a, [hl]
    ldh [$8c], a
    xor a
    ld hl, sp+$09
    or [hl]
    jp z, Jump_01b_4dbe

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01b_4d7f

    ld a, $01
    jr jr_01b_4d80

jr_01b_4d7f:
    xor a

jr_01b_4d80:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_01b_4d93

    ld a, $00
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4d93:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01b_4d9e

    ld a, $01
    jr jr_01b_4d9f

Jump_01b_4d9e:
    xor a

jr_01b_4d9f:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp z, Jump_01b_4db2

    ld a, $03
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4db2:
    ld a, $07
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4dbe:
    xor a
    ld hl, sp+$08
    or [hl]
    jp z, Jump_01b_4e10

    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01b_4dd1

    ld a, $01
    jr jr_01b_4dd2

jr_01b_4dd1:
    xor a

jr_01b_4dd2:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp z, Jump_01b_4de5

    ld a, $01
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4de5:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01b_4df0

    ld a, $01
    jr jr_01b_4df1

Jump_01b_4df0:
    xor a

jr_01b_4df1:
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01b_4e04

    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4e04:
    ld a, $05
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4e10:
    ld hl, sp+$13
    ld a, [hl]
    ld hl, sp+$0c
    cp [hl]
    jr nz, jr_01b_4e1c

    ld a, $01
    jr jr_01b_4e1d

jr_01b_4e1c:
    xor a

jr_01b_4e1d:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp z, Jump_01b_4e30

    ld a, $04
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4e30:
    ld hl, sp+$0c
    ld a, [hl]
    cp c
    jp nz, Jump_01b_4e3b

    ld a, $01
    jr jr_01b_4e3c

Jump_01b_4e3b:
    xor a

jr_01b_4e3c:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01b_4e4f

    ld a, $06
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01b_4e60


Jump_01b_4e4f:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $02
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01b_4e60:
    ld hl, sp+$0c
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01b_4d18


Jump_01b_4e6a:
    ld hl, sp+$0d
    inc [hl]
    jp Jump_01b_4cd7


Jump_01b_4e70:
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


    push bc
    add sp, -$01
    call Call_000_308c
    ld hl, $c402
    ld a, [hl]
    ld hl, $c430
    ld [hl], a
    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_4eb4

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

Jump_01b_4eb4:
    ld hl, $c42d
    ld [hl], $00

Jump_01b_4eb9:
    ld hl, $c42d
    ld c, [hl]
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_01b_4ee7

    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_4ed9

    ld c, $04
    jp Jump_01b_4edb


Jump_01b_4ed9:
    ld c, $02

Jump_01b_4edb:
    ld hl, $c42d
    ld a, [hl]
    cp c
    jp z, Jump_01b_4ee7

    inc [hl]
    jp Jump_01b_4eb9


Jump_01b_4ee7:
    ld hl, $c402
    ld a, [hl]
    cp $0d
    jp nz, Jump_01b_4ef4

    ld a, $01
    jr jr_01b_4ef5

Jump_01b_4ef4:
    xor a

jr_01b_4ef5:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01b_4f2b

    ld a, $09
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld hl, $c574
    ld [hl], $a5
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $5117
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_4f40


Jump_01b_4f2b:
    ld a, $08
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04

Jump_01b_4f40:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    xor a
    ld hl, sp+$00
    or [hl]
    jp z, Jump_01b_4f8a

    ld hl, $c574
    ld [hl], $c5
    inc hl
    ld [hl], $98
    ld hl, $c432
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c432
    push hl
    call Call_000_36e0
    ld c, d
    ld b, e
    add sp, $02
    ld hl, $c42d
    ld [hl], b
    ld a, [hl]
    cp $08
    jp nz, Jump_01b_4f7d

    ld hl, $c42d
    dec [hl]

Jump_01b_4f7d:
    ld hl, $c42e
    ld [hl], $09
    ld hl, $c42f
    ld [hl], $03
    jp Jump_01b_4fdf


Jump_01b_4f8a:
    ld hl, $c574
    ld [hl], $ca
    inc hl
    ld [hl], $98
    ld c, $00

Jump_01b_4f94:
    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_4fa1

    ld b, $05
    jp Jump_01b_4fa3


Jump_01b_4fa1:
    ld b, $03

Jump_01b_4fa3:
    xor a
    ld a, c
    sbc b
    jp nc, Jump_01b_4fc6

    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_01b_4fba

    ld b, $20

Jump_01b_4fba:
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    inc c
    jp Jump_01b_4f94


Jump_01b_4fc6:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $c5
    inc hl
    ld [hl], $98
    ld hl, $5120
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_4fdf:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $05
    inc hl
    ld [hl], $99
    ld hl, $4c6a
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $25
    inc hl
    ld [hl], $99
    ld bc, $4c75
    push bc
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $45
    inc hl
    ld [hl], $99
    ld bc, $4c80
    push bc
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $65
    inc hl
    ld [hl], $99
    ld bc, $4c8b
    push bc
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, sp+$00
    or [hl]
    jp z, Jump_01b_5081

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_503f

    ld c, $03
    jp Jump_01b_5041


Jump_01b_503f:
    ld c, $02

Jump_01b_5041:
    ld a, c
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_5062

    ld c, $04
    jp Jump_01b_5064


Jump_01b_5062:
    ld c, $01

Jump_01b_5064:
    ld hl, $c42d
    ld a, [hl]
    add $05
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_01b_50db


Jump_01b_5081:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_508e

    ld c, $03
    jp Jump_01b_5090


Jump_01b_508e:
    ld c, $02

Jump_01b_5090:
    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_509d

    ld b, $05
    jp Jump_01b_509f


Jump_01b_509d:
    ld b, $03

Jump_01b_509f:
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $0a
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_50bf

    ld c, $04
    jp Jump_01b_50c1


Jump_01b_50bf:
    ld c, $01

Jump_01b_50c1:
    ld hl, $c42d
    ld a, [hl]
    add $0a
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_50db:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_50e8

    ld c, $03
    jp Jump_01b_50ea


Jump_01b_50e8:
    ld c, $02

Jump_01b_50ea:
    ld hl, $c42f
    ld a, [hl]
    add $08
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c42e
    ld a, [hl]
    add $05
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
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
    ld hl, $c402
    ld [hl], $07
    add sp, $01
    pop bc
    ret


    ld d, e
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, @+$43

    ld d, e
    ld a, [hl-]
    nop
    ld c, [hl]
    ld b, c
    ld c, l
    ld b, l
    ld a, [hl-]
    nop

Call_01b_5126:
    push bc
    add sp, -$03
    ld hl, $c430
    ld a, [hl]
    cp $0d
    jp nz, Jump_01b_5227

    ld c, $98
    ld b, $50
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c996
    ld [hl], $00
    ld a, $04
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld hl, $c574
    ld [hl], $e3
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $52d8
    push hl
    call Call_000_2eda
    add sp, $02
    ld c, $10
    ld b, $4e
    ld hl, $c997
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    ld a, c
    or a
    jp z, Jump_01b_519a

    cp $01
    jp z, Jump_01b_51d1

    cp $02
    jp z, Jump_01b_51fc

    jp Jump_01b_521f


Jump_01b_519a:
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld hl, $52e2
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $03
    inc hl
    ld [hl], $99
    ld hl, $52e8
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_51bc:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_51bc

Jump_01b_51c5:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_521f

    jp Jump_01b_51c5


Jump_01b_51d1:
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld hl, $52f7
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_51f0

    ld bc, $05dc
    jp Jump_01b_51f3


Jump_01b_51f0:
    ld bc, $02ee

Jump_01b_51f3:
    push bc
    call Call_000_3986
    add sp, $02
    jp Jump_01b_521f


Jump_01b_51fc:
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $98
    ld hl, $52fd
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_520d:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_520d

Jump_01b_5216:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_5216

Jump_01b_521f:
    ld hl, $c56d
    ld [hl], $00
    jp Jump_01b_52be


Jump_01b_5227:
    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_5246

    ld c, $49
    ld b, $4a
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
    jp Jump_01b_52be


Jump_01b_5246:
    ld a, $03
    push af
    inc sp
    ld hl, $c42a
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    add sp, $02
    ld d, $00
    ld hl, $bdd0
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    ld de, $c432
    ld a, [de]
    dec hl
    dec hl
    ld [hl+], a
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01b_5271

    inc hl
    inc [hl]

jr_01b_5271:
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
    ld de, $c433
    ld a, [de]
    ld hl, sp+$00
    ld [hl+], a
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01b_5292

    inc hl
    inc [hl]

jr_01b_5292:
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
    ld de, $c434
    ld a, [de]
    ld hl, sp+$00
    ld [hl+], a
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    dec hl
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

Jump_01b_52be:
    ld hl, $c430
    ld a, [hl]
    ld hl, $c402
    ld [hl], a
    ld c, $90
    ld b, $24
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    add sp, $03
    pop bc
    ret


    ld d, e
    ld b, c
    ld d, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    ld l, $2e
    ld l, $00
    ld b, [hl]
    ld b, c
    ld c, c
    ld c, h
    ld hl, $4f00
    ld d, l
    ld d, h
    jr nz, @+$51

    ld b, [hl]
    jr nz, jr_01b_533d

    ld b, l
    ld c, l
    ld c, a
    ld d, d
    ld e, c
    ld hl, $4f00
    ld c, e
    ld hl, $2020
    nop
    ld b, [hl]
    ld b, c
    ld c, c
    ld c, h
    ld hl, $c500
    add sp, -$01
    ld hl, sp+$06
    ld a, [hl]
    ld hl, $c42d
    cp [hl]
    jp nz, Jump_01b_532b

    ld hl, sp+$06
    ld c, [hl]
    ld a, $32
    add c
    ld c, a
    ld a, $c4
    adc $00
    ld b, a
    ld a, [bc]
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_01b_532b

    ld a, $00
    ld [bc], a
    jp Jump_01b_5398


Jump_01b_532b:
    xor a
    ld hl, $c42d
    or [hl]
    jp z, Jump_01b_5398

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_5340

    ld c, $03

jr_01b_533d:
    jp Jump_01b_5342


Jump_01b_5340:
    ld c, $02

Jump_01b_5342:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c42d
    add [hl]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c42d
    dec [hl]
    ld c, [hl]
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_537b

    ld c, $04
    jp Jump_01b_537d


Jump_01b_537b:
    ld c, $01

Jump_01b_537d:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c42d
    add [hl]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_5398:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c42d
    add [hl]
    ld c, a
    ld a, $06
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
    ld hl, $c42d
    ld c, [hl]
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_01b_53da

    ld c, [hl]
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    jp Jump_01b_53dc


Jump_01b_53da:
    ld c, $20

Jump_01b_53dc:
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    add sp, $01
    pop bc
    ret


    push bc
    add sp, -$05
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_53f8

    ld hl, $c9a0
    ld [hl], $00

Jump_01b_53f8:
    ld hl, $c430
    ld a, [hl]
    cp $0d
    jp nz, Jump_01b_540b

    ld hl, sp+$03
    ld [hl], $05
    dec hl
    ld [hl], $07
    jp Jump_01b_5421


Jump_01b_540b:
    ld hl, sp+$03
    ld [hl], $0a
    xor a
    ld hl, $c431
    or [hl]
    jp z, Jump_01b_541c

    ld b, $04
    jp Jump_01b_541e


Jump_01b_541c:
    ld b, $02

Jump_01b_541e:
    ld hl, sp+$02
    ld [hl], b

Jump_01b_5421:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_01b_55de

    cp $02
    jp z, Jump_01b_5647

    cp $04
    jp z, Jump_01b_5613

    cp $08
    jp z, Jump_01b_55a9

    cp $10
    jp z, Jump_01b_5450

    cp $20
    jp z, Jump_01b_567b

    cp $40
    jp z, Jump_01b_558e

    cp $80
    jp z, Jump_01b_55a1

    jp Jump_01b_5696


Jump_01b_5450:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01b_545d

    ld e, $00
    jp Jump_01b_5698


Jump_01b_545d:
    ld hl, $c42f
    ld a, [hl]
    cp $03
    jp nz, Jump_01b_5492

    ld hl, $c42e
    ld a, [hl]
    cp $08
    jp z, Jump_01b_5477

    cp $09
    jp z, Jump_01b_548a

    jp Jump_01b_5492


Jump_01b_5477:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call $5303
    add sp, $02
    ld e, $01
    jp Jump_01b_5698


Jump_01b_548a:
    call Call_01b_5126
    ld e, $01
    jp Jump_01b_5698


Jump_01b_5492:
    ld a, $0b
    push af
    inc sp
    ld hl, $c42f
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld b, e
    add sp, $02
    ld de, $4c6a
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c42e
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
    ld hl, sp+$04
    ld [hl], a
    ld a, $32
    add $01
    ld b, a
    ld a, $c4
    adc $00
    ld c, a
    ld e, b
    xor $80
    ld d, a
    ld hl, $8000
    add hl, de
    jp nc, Jump_01b_54da

    call Call_000_144b

Jump_01b_54da:
    ld hl, $c42d
    ld c, [hl]
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld hl, sp+$04
    ld c, [hl]
    ld a, c
    ld [de], a
    ld hl, $c42d
    ld a, [hl]
    add $01
    ld c, a
    ld a, $32
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c42d
    add [hl]
    ld hl, sp+$00
    ld [hl], a
    ld a, $06
    push af
    inc sp
    ld a, [hl]
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
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c42d
    cp [hl]
    jr nz, jr_01b_5537

    jp Jump_01b_5589


jr_01b_5537:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_5544

    ld b, $03
    jp Jump_01b_5546


Jump_01b_5544:
    ld b, $02

Jump_01b_5546:
    ld a, b
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld hl, $c42d
    ld [hl], c
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_556c

    ld c, $04
    jp Jump_01b_556e


Jump_01b_556c:
    ld c, $01

Jump_01b_556e:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c42d
    add [hl]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_5589:
    ld e, $01
    jp Jump_01b_5698


Jump_01b_558e:
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call $5303
    add sp, $02
    ld e, $01
    jp Jump_01b_5698


Jump_01b_55a1:
    call Call_01b_5126
    ld e, $01
    jp Jump_01b_5698


Jump_01b_55a9:
    call Call_01b_4c96
    ld hl, $c42f
    ld a, [hl]
    cp $03
    jp z, Jump_01b_55c4

    xor a
    ld hl, $c9a0
    or [hl]
    jp nz, Jump_01b_55c4

    ld hl, $c42f
    inc [hl]
    jp Jump_01b_55d6


Jump_01b_55c4:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_55d6

    ld hl, $c42f
    ld [hl], $00
    ld hl, $c9a0
    ld [hl], $01

Jump_01b_55d6:
    call Call_01b_4c30
    ld e, $01
    jp Jump_01b_5698


Jump_01b_55de:
    call Call_01b_4c96
    ld hl, $c42e
    ld a, [hl]
    cp $09
    jp z, Jump_01b_55f9

    xor a
    ld hl, $c9a0
    or [hl]
    jp nz, Jump_01b_55f9

    ld hl, $c42e
    inc [hl]
    jp Jump_01b_560b


Jump_01b_55f9:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_560b

    ld hl, $c42e
    ld [hl], $00
    ld hl, $c9a0
    ld [hl], $01

Jump_01b_560b:
    call Call_01b_4c30
    ld e, $01
    jp Jump_01b_5698


Jump_01b_5613:
    call Call_01b_4c96
    xor a
    ld hl, $c42f
    or [hl]
    jp z, Jump_01b_562d

    xor a
    ld hl, $c9a0
    or [hl]
    jp nz, Jump_01b_562d

    ld hl, $c42f
    dec [hl]
    jp Jump_01b_563f


Jump_01b_562d:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_563f

    ld hl, $c42f
    ld [hl], $03
    ld hl, $c9a0
    ld [hl], $01

Jump_01b_563f:
    call Call_01b_4c30
    ld e, $01
    jp Jump_01b_5698


Jump_01b_5647:
    call Call_01b_4c96
    xor a
    ld hl, $c42e
    or [hl]
    jp z, Jump_01b_5661

    xor a
    ld hl, $c9a0
    or [hl]
    jp nz, Jump_01b_5661

    ld hl, $c42e
    dec [hl]
    jp Jump_01b_5673


Jump_01b_5661:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_5673

    ld hl, $c42e
    ld [hl], $09
    ld hl, $c9a0
    ld [hl], $01

Jump_01b_5673:
    call Call_01b_4c30
    ld e, $01
    jp Jump_01b_5698


Jump_01b_567b:
    ld hl, $c430
    ld a, [hl]
    ld hl, $c402
    ld [hl], a
    ld c, $90
    ld b, $24
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01b_5698


Jump_01b_5696:
    ld e, $00

Jump_01b_5698:
    add sp, $05
    pop bc
    ret


Call_01b_569c:
    push bc
    add sp, -$02
    ld a, $05
    push af
    inc sp
    ld hl, $c52f
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld a, $07
    add c
    ld c, a
    ld a, $57
    adc $00
    ld b, a
    push bc
    call Call_000_2eda
    add sp, $02
    ld a, $2f
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $23
    push af
    inc sp
    ldh a, [$90]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld de, $5716
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $05
    push af
    inc sp
    ld hl, $c530
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
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
    call Call_000_2eda
    add sp, $02
    add sp, $02
    pop bc
    ret


    ld e, c
    ld [hl-], a
    ld c, e
    jr nz, jr_01b_570c

jr_01b_570c:
    ld e, d
    ld b, l
    ld d, d
    ld c, a
    nop
    ld c, e
    ld c, c
    ld c, e
    ld c, a
    nop
    ld b, c
    ld c, c
    ld d, d
    ld e, c
    nop
    ld b, h
    ld b, c
    ld d, d
    ld c, e
    nop
    ld c, e
    ld c, c
    ld d, a
    ld c, c
    nop
    ld c, [hl]
    ld c, a
    ld d, d
    ld c, c
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
    ld b, c
    ld c, l
    ld c, c
    nop
    nop
    ld b, e
    ld d, d
    ld d, h
    jr nz, jr_01b_5743

jr_01b_5743:
    ld b, e
    ld d, l
    ld d, h
    ld b, l
    nop
    ld b, d
    ld c, a
    ld d, d
    ld d, h
    nop
    ld b, e
    ld c, a
    ld c, h
    ld d, d
    nop
    ld b, h
    ld b, l
    ld b, c
    ld d, h
    nop
    ld b, a
    ld c, a
    ld c, a
    ld b, h
    nop
    ld b, $0a
    dec b
    dec bc
    ld b, $05
    ld de, $000a
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0b09], sp
    inc c
    dec c
    ld c, $10
    ld de, $0203
    ld b, $02
    inc b
    add hl, bc
    inc bc
    inc bc
    inc b
    rrca
    db $10
    inc c

Call_01b_5782:
    ld hl, $cb65
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
    ret


Call_01b_5796:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $cb66
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $cb66
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
    ret


Call_01b_57c1:
    push bc
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_01b_57cf

    ld a, $01
    jr jr_01b_57d0

Jump_01b_57cf:
    xor a

jr_01b_57d0:
    ld c, a
    xor a
    ld hl, $cb6a
    or [hl]
    sub $01
    ld a, $00
    rla
    ld b, a
    xor a
    or c
    jr z, jr_01b_57e2

    xor a
    or b

jr_01b_57e2:
    jr z, jr_01b_57e6

    ld a, $01

jr_01b_57e6:
    ld c, a
    ld hl, $cb65
    ld a, [hl]
    cp $03
    jp nz, Jump_01b_57f4

    ld a, $01
    jr jr_01b_57f5

Jump_01b_57f4:
    xor a

jr_01b_57f5:
    ld b, a
    xor a
    or c
    jr nz, jr_01b_57fc

    xor a
    or b

jr_01b_57fc:
    jr z, jr_01b_5800

    ld a, $01

jr_01b_5800:
    ld c, a
    ld hl, $cb65
    ld a, [hl]
    cp $06
    jp nz, Jump_01b_580e

    ld a, $01
    jr jr_01b_580f

Jump_01b_580e:
    xor a

jr_01b_580f:
    ld b, a
    xor a
    or c
    jr nz, jr_01b_5816

    xor a
    or b

jr_01b_5816:
    jr z, jr_01b_581a

    ld a, $01

jr_01b_581a:
    ld c, a
    xor a
    ld hl, $c4d3
    or [hl]
    jr z, jr_01b_5824

    xor a
    or c

jr_01b_5824:
    jr z, jr_01b_5828

    ld a, $01

jr_01b_5828:
    ld c, a
    ld e, c
    pop bc
    ret


Call_01b_582c:
    ld hl, $c52a
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfb4
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $c52b
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfcc
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ret


Call_01b_5853:
    push bc
    call Call_000_2b77
    ld b, d
    ld c, e
    push bc
    call Call_000_2bef
    add sp, $02
    pop bc
    ret


Call_01b_5861:
Jump_01b_5861:
    ld hl, $c56d
    ld a, [hl]
    cp $06
    jp c, Jump_01b_5861

    ld hl, $c574
    ld [hl], $46
    inc hl
    ld [hl], $98
    call Call_01b_5853
    ret


Call_01b_5876:
    ld hl, $c52c
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
    ld hl, $c52d
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ret


Call_01b_5896:
    ld hl, $cb65
    ld a, [hl]
    cp $05
    jp z, Jump_01b_58a9

    cp $06
    jp z, Jump_01b_58a9

    cp $07
    jp nz, Jump_01b_58ae

Jump_01b_58a9:
    ld e, $01
    jp Jump_01b_58b0


Jump_01b_58ae:
    ld e, $00

Jump_01b_58b0:
    ret


Call_01b_58b1:
    push bc
    ld hl, $c574
    ld [hl], $85
    inc hl
    ld [hl], $98
    ld hl, $cb65
    ld a, [hl]
    or a
    jp z, Jump_01b_58de

    cp $01
    jp z, Jump_01b_58ea

    cp $03
    jp z, Jump_01b_58f6

    cp $05
    jp z, Jump_01b_5902

    cp $06
    jp z, Jump_01b_590e

    cp $07
    jp z, Jump_01b_591a

    jp Jump_01b_5923


Jump_01b_58de:
    ld hl, $59b7
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5923


Jump_01b_58ea:
    ld hl, $59be
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5923


Jump_01b_58f6:
    ld hl, $59c5
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5923


Jump_01b_5902:
    ld hl, $59cc
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5923


Jump_01b_590e:
    ld hl, $59d3
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5923


Jump_01b_591a:
    ld hl, $59da
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_5923:
    ld hl, $c574
    ld [hl], $a0
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_01b_5896
    ld c, e
    xor a
    or c
    jp z, Jump_01b_598f

    ld hl, $cb65
    ld a, [hl]
    cp $05
    jp nz, Jump_01b_594d

    ld de, $59e1
    ld c, e
    ld b, d
    jp Jump_01b_5952


Jump_01b_594d:
    ld de, $59ed
    ld c, e
    ld b, d

Jump_01b_5952:
    push bc
    call Call_000_2eda
    add sp, $02
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $cb66
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_59b5

    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    jp Jump_01b_59b5


Jump_01b_598f:
    ld hl, $59f9
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_59b5

    ld a, $00
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    ld a, $0b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_59b5:
    pop bc
    ret


    ld c, a
    ld b, [hl]
    ld b, [hl]
    jr nz, jr_01b_59dc

    jr nz, jr_01b_59be

jr_01b_59be:
    ld c, h
    ld d, e
    ld b, h
    ld c, d
    jr nz, jr_01b_59e4

    nop
    ld c, l
    ld c, c
    ld b, h
    ld c, c
    jr nz, jr_01b_59eb

    nop
    ld c, e
    ld b, l
    ld e, c
    ld b, d
    ld b, h
    jr nz, jr_01b_59d3

jr_01b_59d3:
    ld b, c
    ld c, [hl]
    ld b, c
    ld l, $49
    ld c, [hl]
    nop
    ld b, c
    ld c, [hl]

jr_01b_59dc:
    ld l, $4f
    ld d, l
    ld d, h
    nop
    ld d, b
    ld d, e
    cpl

jr_01b_59e4:
    ld [hl-], a
    jr nz, jr_01b_5a2b

    ld b, l
    ld c, h
    ld b, c
    ld e, c

jr_01b_59eb:
    jr nz, jr_01b_59ed

jr_01b_59ed:
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
    jr nz, jr_01b_59f9

jr_01b_59f9:
    jr nz, @+$22

    jr nz, jr_01b_5a1d

    jr nz, jr_01b_5a1f

    jr nz, jr_01b_5a21

    jr nz, jr_01b_5a23

    jr nz, @+$22

    jr nz, jr_01b_5a07

Call_01b_5a07:
jr_01b_5a07:
    push bc
    ld hl, $c9a2
    ld c, [hl]
    ld a, $76
    add c
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, [hl]
    cp $0b
    jp nz, Jump_01b_5a21

jr_01b_5a1d:
    ld a, $01

jr_01b_5a1f:
    jr jr_01b_5a22

Jump_01b_5a21:
jr_01b_5a21:
    xor a

jr_01b_5a22:
    ld b, a

jr_01b_5a23:
    xor a
    ld hl, $c9a1
    or [hl]
    jr z, jr_01b_5a2c

    xor a

jr_01b_5a2b:
    or b

jr_01b_5a2c:
    jr z, jr_01b_5a30

    ld a, $01

jr_01b_5a30:
    ld b, a
    or b
    jp z, Jump_01b_5a3a

    ld b, $02
    jp Jump_01b_5a3c


Jump_01b_5a3a:
    ld b, $00

Jump_01b_5a3c:
    ld a, c
    add b
    ld c, a
    ld e, c
    pop bc
    ret


Call_01b_5a42:
    push bc
    add sp, -$01
    ld hl, $c9a2
    ld a, [hl]
    cp $08
    ld a, $00
    rla
    ld c, a
    call Call_01b_5a07
    ld hl, $c9a6
    ld [hl], e
    ld hl, $c9a2
    ld b, [hl]
    ld a, $68
    add b
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c9a2
    ld b, [hl]
    ld a, $5c
    add b
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld hl, $c9a6
    ld a, [hl]
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


Call_01b_5a90:
    push bc
    add sp, -$01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_5aa0

    ld c, $03
    jp Jump_01b_5aa2


Jump_01b_5aa0:
    ld c, $02

Jump_01b_5aa2:
    call Call_01b_5a07
    ld hl, $c9a7
    ld [hl], e
    ld hl, $c9a2
    ld b, [hl]
    ld a, $68
    add b
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c9a2
    ld b, [hl]
    ld a, $5c
    add b
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld hl, $c9a7
    ld a, [hl]
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


Call_01b_5ae3:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $0a
    jp nc, Jump_01b_5af5

    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01b_5af5:
    ld hl, sp+$04
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, $5b06
    push hl
    call Call_000_35c5
    add sp, $04
    pop bc
    ret


    dec h
    ld h, h
    nop

Call_01b_5b09:
    ld hl, $cb65
    ld a, [hl]
    or a
    jp z, Jump_01b_5b1b

    cp $01
    jp z, Jump_01b_5b1b

    cp $05
    jp nz, Jump_01b_5b20

Jump_01b_5b1b:
    ld e, $01
    jp Jump_01b_5b22


Jump_01b_5b20:
    ld e, $00

Jump_01b_5b22:
    ret


Call_01b_5b23:
    push bc
    call Call_01b_5b09
    ld c, e
    xor a
    or c
    jp z, Jump_01b_5b4b

    xor a
    ld hl, $c56f
    or [hl]
    jp z, Jump_01b_5b3d

    ld de, $5b56
    ld c, e
    ld b, d
    jp Jump_01b_5b42


Jump_01b_5b3d:
    ld de, $5b5a
    ld c, e
    ld b, d

Jump_01b_5b42:
    push bc
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5b54


Jump_01b_5b4b:
    ld hl, $5b5e
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_5b54:
    pop bc
    ret


    ld c, a
    ld c, [hl]
    jr nz, jr_01b_5b5a

jr_01b_5b5a:
    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop
    ld c, [hl]
    cpl
    ld b, c
    nop

Call_01b_5b62:
    ld hl, $c574
    ld [hl], $2a
    inc hl
    ld [hl], $99
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_01b_5b23
    ret


Call_01b_5b7a:
    push bc
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $9a
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_01b_5bd1

    ld hl, $c553
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, $5c03
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c554
    ld a, [hl]
    push af
    inc sp
    call Call_01b_5ae3
    add sp, $01
    ld hl, $c9a5
    ld [hl], $0c
    xor a
    ld a, $09
    ld hl, $c553
    sbc [hl]
    jp nc, Jump_01b_5bc5

    ld hl, $c9a5
    ld [hl], $0d
    jp Jump_01b_5bc8


Jump_01b_5bc5:
    call Call_000_2f24

Jump_01b_5bc8:
    call Call_000_2f24
    call Call_000_2f24
    jp Jump_01b_5c01


Jump_01b_5bd1:
    ld hl, $bfb2
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld b, $00
    push bc
    ld hl, $5c0c
    push hl
    call Call_000_35c5
    add sp, $04
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
    call Call_01b_5ae3
    add sp, $01

Jump_01b_5c01:
    pop bc
    ret


    ld d, b
    ld c, h
    ld b, c
    ld e, c
    jr nz, jr_01b_5c2e

    ld h, h
    ld a, [hl-]
    nop
    ld d, a
    ld c, a
    ld d, d
    ld c, e
    ld b, l
    ld b, h
    jr nz, @+$27

    ld h, h
    ld a, [hl-]
    nop

Call_01b_5c17:
    push bc
    add sp, -$02
    ld c, $57
    ld b, $40
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_0bed
    ld hl, $c9a1
    ld [hl], e
    add sp, $03
    ld c, $5c

jr_01b_5c2e:
    ld b, $6d
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    ld [hl], $46
    inc hl
    ld [hl], $98
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_01b_5853
    ld hl, $c574
    ld [hl], $6a
    inc hl
    ld [hl], $98
    ld hl, $c445
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $e5
    inc hl
    ld [hl], $98
    call Call_01b_569c
    ld hl, $c574
    ld [hl], $c6
    inc hl
    ld [hl], $98
    xor a
    ld hl, $c532
    or [hl]
    jp nz, Jump_01b_5c8b

    ld hl, $5d4f
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5c94


Jump_01b_5c8b:
    ld hl, $5d54
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_5c94:
    ld hl, $c574
    ld [hl], $11
    inc hl
    ld [hl], $99
    call Call_01b_5876
    ld hl, $c574
    ld [hl], $2a
    inc hl
    ld [hl], $99
    call Call_01b_5b23
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $c0
    inc hl
    ld [hl], $99
    xor a
    ld hl, $c9a1
    or [hl]
    jp z, Jump_01b_5cce

    ld hl, $5d59
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01b_5cd7


Jump_01b_5cce:
    ld hl, $5d68
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_5cd7:
    ld hl, $c574
    ld [hl], $85
    inc hl
    ld [hl], $98
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    call Call_01b_58b1
    call Call_01b_5b7a
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    ld hl, $bfb7
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
    ld hl, $bfb6
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
    push hl
    push bc
    ld hl, $5d75
    push hl
    call Call_000_35c5
    add sp, $06
    ld hl, $bfb8
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
    call Call_01b_5ae3
    add sp, $01
    call Call_01b_5a90
    ld hl, $c9a9
    ld [hl], $ff
    add sp, $02
    pop bc
    ret


    ld b, h
    ld b, l
    ld b, l
    ld d, b
    nop
    ld d, e
    ld c, h
    ld c, c
    ld c, l
    nop
    ld c, h
    ld c, a
    ld b, c
    ld b, h
    cpl
    ld d, e
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, @+$55

    ld c, a
    ld c, [hl]
    ld b, a
    nop
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, @+$4f

    ld b, l
    ld c, l
    ld c, a
    ld d, d
    ld e, c
    nop
    dec h
    ld h, h
    ld a, [hl-]
    dec h
    ld h, h
    ld a, [hl-]
    nop

Call_01b_5d7c:
    push bc

Jump_01b_5d7d:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_5d7d

Jump_01b_5d86:
    call Call_000_1ca1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_5d86

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_5d9a

    call Call_000_17ca

Jump_01b_5d9a:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5c17
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c56d
    ld [hl], $00
    pop bc
    ret


    push bc
    ld hl, $c9a2
    ld c, [hl]
    ld a, $68
    add c
    ld e, a
    ld a, $57
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, [hl]
    ld a, $5c
    add b
    ld e, a
    ld a, $57
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
    jp nz, Jump_01b_5dff

    ld a, $01
    jr jr_01b_5e00

Jump_01b_5dff:
    xor a

jr_01b_5e00:
    ld c, a
    or c
    jp nz, Jump_01b_5e0a

    ld hl, $c9a9
    ld [hl], $ff

Jump_01b_5e0a:
    ld hl, $c576
    ld a, [hl]
    cp $01
    jp z, Jump_01b_5ee1

    cp $02
    jp z, Jump_01b_5eee

    cp $04
    jp z, Jump_01b_6587

    cp $08
    jp z, Jump_01b_64fb

    xor a
    or c
    jp nz, Jump_01b_66ae

    ld a, [hl]
    cp $11
    jp z, Jump_01b_5efb

    cp $12
    jp z, Jump_01b_6103

    cp $14
    jp z, Jump_01b_62e7

    cp $18
    jp z, Jump_01b_63f2

    cp $20
    jp z, Jump_01b_69e1

    cp $41
    jp z, Jump_01b_5e99

    cp $48
    jp z, Jump_01b_5e5d

    cp $70
    jp z, Jump_01b_6612

    cp $80
    jp z, Jump_01b_6a19

    cp $c0
    jp z, Jump_01b_6a19

    jp Jump_01b_6a58


Jump_01b_5e5d:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_01b_5e6d

    xor a
    ld hl, $c9a3
    or [hl]
    jp z, Jump_01b_5e72

Jump_01b_5e6d:
    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_5e72:
    ld hl, $c40b
    ld [hl], $00
    ei
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
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ei
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5e99:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_01b_5ea9

    xor a
    ld hl, $c9a3
    or [hl]
    jp z, Jump_01b_5eae

Jump_01b_5ea9:
    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_5eae:
    ld hl, $c8fd
    ld c, [hl]
    xor a
    or c
    jp nz, Jump_01b_5ebc

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_5ebc:
    ld hl, $c40b
    ld [hl], $00
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
    jp Jump_01b_6a5a


Jump_01b_5ee1:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_6545

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_5eee:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_65d0

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_5efb:
    xor a
    ld a, $07
    ld hl, $c9a2
    sbc [hl]
    jp c, Jump_01b_6a58

    ld e, [hl]
    ld d, $00
    ld hl, $5f0f
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01b_5f27


    jp Jump_01b_5f78


    jp Jump_01b_5f9d


    jp Jump_01b_5fe9


    jp Jump_01b_5ffb


    jp Jump_01b_6022


    jp Jump_01b_60a4


    jp Jump_01b_60e3


Jump_01b_5f27:
    call Call_01b_57c1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_5f48

    ld hl, $cb6f
    inc [hl]
    call Call_000_2b77
    ld b, d
    ld c, e
    inc bc
    push bc
    call Call_000_2bef
    add sp, $02
    call Call_01b_5861
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5f48:
    ld hl, $c52a
    ld a, [hl]
    cp $27
    jp z, Jump_01b_5f55

    inc [hl]
    jp Jump_01b_5f5f


Jump_01b_5f55:
    ld hl, $c52b
    ld a, [hl]
    cp $03
    jp nc, Jump_01b_5f5f

    inc [hl]

Jump_01b_5f5f:
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5853
    call Call_01b_582c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5f78:
    xor a
    ld hl, $c446
    or [hl]
    jp nz, Jump_01b_5f8c

    ld hl, $c445
    ld a, [hl]
    ld hl, $c447
    ld [hl], a
    ld hl, $c446
    inc [hl]

Jump_01b_5f8c:
    ld hl, $c447
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5f9d:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_5faa

    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5faa:
    ld hl, $cb65
    ld a, [hl]
    cp $07
    jp nc, Jump_01b_5fca

    inc [hl]
    ld a, [hl]
    cp $04
    jp z, Jump_01b_5fc3

    ld hl, $cb65
    ld a, [hl]
    cp $02
    jp nz, Jump_01b_5fc7

Jump_01b_5fc3:
    ld hl, $cb65
    inc [hl]

Jump_01b_5fc7:
    call Call_01b_5782

Jump_01b_5fca:
    ld hl, $cbdd
    ld [hl], $00
    call Call_000_1ebd
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    call Call_01b_58b1
    call Call_01b_5b62
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5fe9:
    ld hl, $cb66
    ld a, [hl]
    cp $ff
    jp nc, Jump_01b_5ff6

    inc [hl]
    call Call_01b_5796

Jump_01b_5ff6:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_5ffb:
    xor a
    ld hl, $c532
    or [hl]
    jp nz, Jump_01b_601d

    ld [hl], $01
    ld a, $01
    push af
    inc sp
    ld hl, $bfc0
    push hl
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $6a5c
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_601d:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6022:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_602f

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_602f:
    xor a
    ld hl, $ff90
    or [hl]
    jp nz, Jump_01b_6045

    ld hl, $c530
    ld a, [hl]
    cp $03
    jp nz, Jump_01b_6045

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_6045:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_605b

    ld hl, $c530
    ld a, [hl]
    cp $06
    jp nz, Jump_01b_605b

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_605b:
    ld hl, $c530
    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbe
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call Call_01b_569c
    ld c, $61
    ld b, $4c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    xor a
    ld hl, $ff90
    or [hl]
    jp nz, Jump_01b_609f

    ld hl, $c530
    ld a, [hl]
    cp $02
    jp nz, Jump_01b_609f

    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_609f:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_60a4:
    ld hl, $c52d
    ld a, [hl]
    cp $0f
    jp z, Jump_01b_60b5

    xor a
    ld hl, $c40d
    or [hl]
    jp nz, Jump_01b_60ba

Jump_01b_60b5:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_60ba:
    ld hl, $c40d
    ld [hl], $00
    ld hl, $c407
    ld [hl], $01
    ld hl, $c52d
    inc [hl]
    call Call_01b_5876
    ld hl, $c52d
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
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_60e3:
    ld hl, $c56f
    ld [hl], $01
    call Call_01b_5b23
    ld hl, $c56f
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfc3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6103:
    xor a
    ld a, $07
    ld hl, $c9a2
    sbc [hl]
    jp c, Jump_01b_6a58

    ld e, [hl]
    ld d, $00
    ld hl, $6117
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01b_618d


    jp Jump_01b_61dd


    jp Jump_01b_6202


    jp Jump_01b_624d


    jp Jump_01b_6260


    jp Jump_01b_612f


    jp Jump_01b_6289


    jp Jump_01b_62c7


Jump_01b_612f:
    xor a
    ld hl, $c530
    or [hl]
    jp z, Jump_01b_613f

    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_6144

Jump_01b_613f:
    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_6144:
    ld hl, $c530
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbe
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld c, $61
    ld b, $4c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_569c
    xor a
    ld hl, $ff90
    or [hl]
    jp nz, Jump_01b_6188

    ld hl, $c530
    ld a, [hl]
    cp $01
    jp nz, Jump_01b_6188

    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_6188:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_618d:
    call Call_01b_57c1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_61ae

    ld hl, $cb6e
    inc [hl]
    call Call_000_2b77
    ld b, d
    ld c, e
    dec bc
    push bc
    call Call_000_2bef
    add sp, $02
    call Call_01b_5861
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_61ae:
    xor a
    ld hl, $c52b
    or [hl]
    jp z, Jump_01b_61ba

    dec [hl]
    jp Jump_01b_61c4


Jump_01b_61ba:
    ld hl, $c52a
    ld a, [hl]
    cp $28
    jp z, Jump_01b_61c4

    dec [hl]

Jump_01b_61c4:
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5853
    call Call_01b_582c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_61dd:
    xor a
    ld hl, $c446
    or [hl]
    jp nz, Jump_01b_61f1

    ld hl, $c445
    ld a, [hl]
    ld hl, $c447
    ld [hl], a
    ld hl, $c446
    inc [hl]

Jump_01b_61f1:
    ld hl, $c447
    dec [hl]
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6202:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_620f

    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_620f:
    ld hl, $cb65
    ld a, [hl]
    or a
    jp z, Jump_01b_622e

    dec [hl]
    ld a, [hl]
    cp $04
    jp z, Jump_01b_6227

    ld hl, $cb65
    ld a, [hl]
    cp $02
    jp nz, Jump_01b_622b

Jump_01b_6227:
    ld hl, $cb65
    dec [hl]

Jump_01b_622b:
    call Call_01b_5782

Jump_01b_622e:
    ld hl, $cbdd
    ld [hl], $00
    call Call_000_1ebd
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    call Call_01b_58b1
    call Call_01b_5b62
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_624d:
    xor a
    ld a, $01
    ld hl, $cb66
    sbc [hl]
    jp nc, Jump_01b_625b

    dec [hl]
    call Call_01b_5796

Jump_01b_625b:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6260:
    xor a
    ld hl, $c532
    or [hl]
    jp z, Jump_01b_6284

    ld [hl], $00
    ld a, $00
    push af
    inc sp
    ld hl, $bfc0
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, $6a61
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01b_6284:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6289:
    xor a
    ld hl, $c52d
    or [hl]
    jp z, Jump_01b_6299

    xor a
    ld hl, $c40d
    or [hl]
    jp nz, Jump_01b_629e

Jump_01b_6299:
    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_629e:
    ld hl, $c40d
    ld [hl], $00
    ld hl, $c407
    ld [hl], $01
    ld hl, $c52d
    dec [hl]
    call Call_01b_5876
    ld hl, $c52d
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
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_62c7:
    ld hl, $c56f
    ld [hl], $00
    call Call_01b_5b23
    ld hl, $c56f
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfc3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_62e7:
    ld hl, $c9a2
    ld a, [hl]
    or a
    jp z, Jump_01b_633e

    cp $01
    jp z, Jump_01b_6378

    cp $05
    jp z, Jump_01b_6301

    cp $06
    jp z, Jump_01b_63b3

    jp Jump_01b_6a58


Jump_01b_6301:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_630e

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_630e:
    ld hl, $c52f
    ld a, [hl]
    cp $02
    jp z, Jump_01b_6339

    inc [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbc
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call Call_01b_5c17
    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_6339:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_633e:
    call Call_01b_57c1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_634c

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_634c:
    ld hl, $c52a
    ld a, [hl]
    add $0a
    ld [hl], a
    cp $28
    jp c, Jump_01b_635f

    cp $32
    jp nc, Jump_01b_635f

    ld [hl], $27

Jump_01b_635f:
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5853
    call Call_01b_582c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6378:
    xor a
    ld hl, $c446
    or [hl]
    jp nz, Jump_01b_638c

    ld hl, $c445
    ld a, [hl]
    ld hl, $c447
    ld [hl], a
    ld hl, $c446
    inc [hl]

Jump_01b_638c:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $6a
    inc hl
    ld [hl], $98
    ld hl, $c447
    ld a, [hl]
    add $0c
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_63b3:
    ld hl, $c52c
    ld a, [hl]
    cp $0f
    jp z, Jump_01b_63c4

    xor a
    ld hl, $c40d
    or [hl]
    jp nz, Jump_01b_63c9

Jump_01b_63c4:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_63c9:
    ld hl, $c40d
    ld [hl], $00
    ld hl, $c407
    ld [hl], $01
    ld hl, $c52c
    inc [hl]
    call Call_01b_5876
    ld hl, $c52c
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
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_63f2:
    ld hl, $c9a2
    ld a, [hl]
    or a
    jp z, Jump_01b_640c

    cp $01
    jp z, Jump_01b_6446

    cp $05
    jp z, Jump_01b_6481

    cp $06
    jp z, Jump_01b_64bd

    jp Jump_01b_6a58


Jump_01b_640c:
    call Call_01b_57c1
    ld c, e
    xor a
    or c
    jp z, Jump_01b_641a

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_641a:
    ld hl, $c52a
    ld a, [hl]
    add $f6
    ld [hl], a
    cp $1e
    jp c, Jump_01b_642d

    cp $28
    jp nc, Jump_01b_642d

    ld [hl], $28

Jump_01b_642d:
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5853
    call Call_01b_582c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6446:
    xor a
    ld hl, $c446
    or [hl]
    jp nz, Jump_01b_645a

    ld hl, $c445
    ld a, [hl]
    ld hl, $c447
    ld [hl], a
    ld hl, $c446
    inc [hl]

Jump_01b_645a:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $6a
    inc hl
    ld [hl], $98
    ld hl, $c447
    ld a, [hl]
    add $f4
    ld [hl], a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6481:
    xor a
    ld hl, $c409
    or [hl]
    jp z, Jump_01b_648e

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_648e:
    xor a
    ld hl, $c52f
    or [hl]
    jp z, Jump_01b_64b8

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    ld hl, $bfbc
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    call Call_01b_5c17
    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_64b8:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_64bd:
    xor a
    ld hl, $c52c
    or [hl]
    jp z, Jump_01b_64cd

    xor a
    ld hl, $c40d
    or [hl]
    jp nz, Jump_01b_64d2

Jump_01b_64cd:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_64d2:
    ld hl, $c40d
    ld [hl], $00
    ld hl, $c407
    ld [hl], $01
    ld hl, $c52c
    dec [hl]
    call Call_01b_5876
    ld hl, $c52c
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
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_64fb:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_6545

    call Call_01b_5a42
    ld hl, $c9a2
    ld a, [hl]
    cp $0b
    jp nc, Jump_01b_6510

    inc [hl]

Jump_01b_6510:
    ld hl, $c9a2
    ld a, [hl]
    cp $07
    jp nz, Jump_01b_6529

    call Call_01b_5b09
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_6529

    ld hl, $c9a2
    inc [hl]
    jp Jump_01b_653f


Jump_01b_6529:
    ld hl, $c9a2
    ld a, [hl]
    cp $03
    jp nz, Jump_01b_653f

    call Call_01b_5896
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_653f

    ld hl, $c9a2
    inc [hl]

Jump_01b_653f:
    call Call_01b_5a90
    jp Jump_01b_6582


Jump_01b_6545:
    ld hl, $c9a4
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
    ld a, $05
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_656c

    ld c, $03
    jp Jump_01b_656e


Jump_01b_656c:
    ld c, $02

Jump_01b_656e:
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_6582:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6587:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_65d0

    call Call_01b_5a42
    xor a
    ld hl, $c9a2
    or [hl]
    jp z, Jump_01b_659b

    dec [hl]

Jump_01b_659b:
    ld hl, $c9a2
    ld a, [hl]
    cp $07
    jp nz, Jump_01b_65b4

    call Call_01b_5b09
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_65b4

    ld hl, $c9a2
    dec [hl]
    jp Jump_01b_65ca


Jump_01b_65b4:
    ld hl, $c9a2
    ld a, [hl]
    cp $03
    jp nz, Jump_01b_65ca

    call Call_01b_5896
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_65ca

    ld hl, $c9a2
    dec [hl]

Jump_01b_65ca:
    call Call_01b_5a90
    jp Jump_01b_660d


Jump_01b_65d0:
    ld hl, $c9a4
    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_65e2

    ld c, $03
    jp Jump_01b_65e4


Jump_01b_65e2:
    ld c, $02

Jump_01b_65e4:
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $05
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
    ld a, $0c
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01b_660d:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6612:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01b_661f

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_661f:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_6630

    ld hl, $c9a2
    ld a, [hl]
    cp $0b
    jp z, Jump_01b_6814

Jump_01b_6630:
    xor a
    ld hl, $c9a3
    or [hl]
    jp z, Jump_01b_6a58

    xor a
    ld hl, $c9a4
    or [hl]
    jp nz, Jump_01b_6a58

    ld a, $00
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $05
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
    ld a, $0c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld c, $b1
    ld b, $47
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $00
    push af
    inc sp
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    jp Jump_01b_68cd


Jump_01b_66ae:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01b_66bb

    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_66bb:
    ld hl, $c9a2
    ld a, [hl]
    or a
    jp z, Jump_01b_66df

    cp $03
    jp z, Jump_01b_6794

    cp $08
    jp z, Jump_01b_677c

    cp $09
    jp z, Jump_01b_6704

    cp $0a
    jp z, Jump_01b_6740

    cp $0b
    jp z, Jump_01b_67ce

    jp Jump_01b_69dc


Jump_01b_66df:
    call Call_01b_57c1
    ld c, e
    xor a
    or c
    jp nz, Jump_01b_69dc

    call $6a8c
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5853
    call Call_01b_582c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6704:
    ld c, $98
    ld b, $50
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5a42
    ld a, $08
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld c, $78
    ld b, $62
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5d7c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6740:
    ld c, $98
    ld b, $50
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5a42
    ld a, $09
    push af
    inc sp
    ld a, $0f
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld c, $4c
    ld b, $63
    push bc
    ld a, $1f
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5d7c
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_677c:
    ld hl, $c402
    ld [hl], $0e
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6794:
    ld hl, $cb65
    ld a, [hl]
    cp $05
    jp nz, Jump_01b_67c9

    ld c, $98
    ld b, $50
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $7059
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5796
    ld c, $90
    ld b, $24
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_67c9:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_67ce:
    xor a
    ld hl, $c9a1
    or [hl]
    jp z, Jump_01b_680c

    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_6896

    ld hl, $c402
    ld [hl], $0d
    ld hl, $c990
    ld [hl], $00
    ld hl, $c996
    ld [hl], $00
    ld c, $97
    ld b, $55
    push bc
    ld a, $1c
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
    jp Jump_01b_69d7


Jump_01b_680c:
    xor a
    ld hl, $c9a3
    or [hl]
    jp nz, Jump_01b_6896

Jump_01b_6814:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $05
    push af
    inc sp
    ld a, $12
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld hl, $c9a3
    ld [hl], $01
    ld hl, $c9a4
    ld [hl], $01
    ld hl, $c574
    ld [hl], $e2
    inc hl
    ld [hl], $98
    ld hl, $6a66
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $25
    inc hl
    ld [hl], $99
    ld hl, $6a77
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $2c
    inc hl
    ld [hl], $99
    ld hl, $6a7b
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_687b

    ld c, $03
    jp Jump_01b_687d


Jump_01b_687b:
    ld c, $02

Jump_01b_687d:
    ld a, c
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6896:
    ld hl, $c9a3
    ld [hl], $00
    ld a, $00
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, $09
    push af
    inc sp
    ld a, $05
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
    ld a, $0c
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    xor a
    ld hl, $c9a4
    or [hl]
    jp nz, Jump_01b_69a0

Jump_01b_68cd:
    ld c, $98
    ld b, $50
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    xor a
    ld hl, $c9a1
    or [hl]
    jp z, Jump_01b_6924

    ld a, $00
    push af
    inc sp
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $00
    push af
    inc sp
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld c, $b1
    ld b, $47
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_6924:
    ld c, $d1
    ld b, $45
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $ff
    push af
    inc sp
    ld hl, $a140
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld c, $46
    ld b, $4a
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $03
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    ld a, $07
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_01b_4cba
    add sp, $04
    ld hl, $c574
    ld [hl], $03
    inc hl
    ld [hl], $99
    ld hl, $6a7e
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_6985

    ld bc, $07d0
    jp Jump_01b_6988


Jump_01b_6985:
    ld bc, $03e8

Jump_01b_6988:
    push bc
    call Call_000_3986
    add sp, $02
    ld c, $94
    ld b, $7c
    ld a, $00
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_01b_69a0:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_69ae

    call Call_000_17ca
    jp Jump_01b_69bc


Jump_01b_69ae:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_69bc:
    ld c, $90
    ld b, $24
    push bc
    ld a, $00
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

Jump_01b_69d7:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_69dc:
    ld e, $00
    jp Jump_01b_6a5a


Jump_01b_69e1:
    xor a
    ld hl, $c9a3
    or [hl]
    jp z, Jump_01b_6a14

    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01b_69f6

    call Call_000_17ca

Jump_01b_69f6:
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01b_5c17
    ld bc, $4040
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01b_6a14:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6a19:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01b_6a29

    xor a
    ld hl, $c40c
    or [hl]
    jp z, Jump_01b_6a2e

Jump_01b_6a29:
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6a2e:
    di
    ld hl, $c402
    ld [hl], $04
    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c402
    ld [hl], $09
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_01b_6a52

    call Call_01b_5b7a

Jump_01b_6a52:
    ei
    ld e, $01
    jp Jump_01b_6a5a


Jump_01b_6a58:
    ld e, $00

Jump_01b_6a5a:
    pop bc
    ret


    ld d, e
    ld c, h
    ld c, c
    ld c, l
    nop
    ld b, h
    ld b, l
    ld b, l
    ld d, b
    nop
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_01b_6ab0

    ld b, c
    ld d, d
    ld d, h
    ld d, d
    ld c, c
    ld b, h
    ld b, a
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
    ld d, d
    ld b, l
    ld d, e
    ld b, l
    ld d, h
    jr nz, jr_01b_6ad2

    ld b, l
    ld c, l
    ld c, a
    ld d, d
    ld e, c
    ld hl, $c500
    add sp, -$03
    ld hl, sp+$01
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c9a9
    ld a, [hl]
    cp $ff
    jp z, Jump_01b_6aa8

    ld hl, $c9a8
    ld a, [hl]
    cp $80
    jp nz, Jump_01b_6ab5

Jump_01b_6aa8:
    ld hl, $c9a9
    ld [hl], $00
    ld hl, $c9a8

jr_01b_6ab0:
    ld [hl], $00
    jp Jump_01b_6b76


Jump_01b_6ab5:
    ld hl, $c9a9
    ld a, [hl]
    cp $08
    jp nz, Jump_01b_6ad3

    ld bc, $c9ab
    ld hl, $0007
    push hl
    push bc
    ld hl, $c9aa
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, $c9a9

jr_01b_6ad2:
    dec [hl]

Jump_01b_6ad3:
    ld hl, $c9a9
    ld c, [hl]
    ld a, $aa
    add c
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld hl, $c9a8
    ld a, [hl]
    ld [de], a
    ld [hl], $00
    ld hl, $c9a9
    inc [hl]
    ld a, [hl]
    cp $03
    jp nc, Jump_01b_6af4

    jp Jump_01b_6b76


Jump_01b_6af4:
    ld hl, sp+$00
    ld [hl], $00

Jump_01b_6af8:
    xor a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c9a9
    sbc [hl]
    jp nc, Jump_01b_6b26

    ld de, $c9aa
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld b, a
    ld c, $00
    ld hl, sp+$01
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, c
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    inc [hl]
    jp Jump_01b_6af8


Jump_01b_6b26:
    ld a, $04
    jr jr_01b_6b32

jr_01b_6b2a:
    or a
    ld hl, sp+$01
    rl [hl]
    inc hl
    rl [hl]

jr_01b_6b32:
    dec a
    jr nz, jr_01b_6b2a

    ld hl, $c9a9
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$03
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, sp+$06
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $6ffe
    push hl
    call Call_000_3766
    ld hl, sp+$06
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    inc hl
    ld d, [hl]
    ld hl, $ff00
    add hl, de
    jp c, Jump_01b_6b6f

    ld hl, sp+$01
    ld c, [hl]
    inc hl
    ld b, [hl]
    jp Jump_01b_6b72


Jump_01b_6b6f:
    ld bc, $00ff

Jump_01b_6b72:
    ld hl, $c52a
    ld [hl], c

Jump_01b_6b76:
    add sp, $03
    pop bc
    ret


    push bc
    add sp, -$0c
    ld hl, sp+$0a
    ld [hl], $80
    inc hl
    ld [hl], $d4
    ld hl, $0480
    push hl
    ld hl, $6c38
    push hl
    ld hl, $d000
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, sp+$07
    ld [hl], $00

Jump_01b_6b99:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp z, Jump_01b_6c2c

    ld c, $00
    ld b, $40
    ld hl, sp+$08
    ld [hl], c
    inc hl
    ld [hl], b

Jump_01b_6baa:
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$06
    ld a, [hl]
    ld [de], a
    ld hl, sp+$0a
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
    ld e, [hl]
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$08
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], e
    ld c, $1b
    ld b, $40
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    ld a, [hl]
    ld hl, sp+$08
    cp [hl]
    jp nz, Jump_01b_6baa

    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$09
    cp [hl]
    jp nz, Jump_01b_6baa

    ld hl, sp+$07
    ld a, [hl]
    cp $0f
    jp z, Jump_01b_6c26

    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $0c
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_01b_6c18

    inc hl
    inc [hl]

jr_01b_6c18:
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $1c
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_01b_6c26

    inc hl
    inc [hl]

Jump_01b_6c26:
jr_01b_6c26:
    ld hl, sp+$07
    inc [hl]
    jp Jump_01b_6b99


Jump_01b_6c2c:
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $c9
    ld [de], a
    add sp, $0c
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld bc, $0202
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    inc bc
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $03
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0607], sp
    dec b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld b, $05
    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0506], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0509], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc bc
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $02
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0d
    inc c
    dec bc
    ld a, [bc]
    add hl, bc
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0b0a], sp
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rrca
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0403
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0402
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    ld bc, $0002
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    inc b
    dec b
    ld b, $07
    nop
    ld bc, $0302
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    dec b
    ld b, $07
    rlca
    ld bc, $0302
    inc b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, $07
    rlca
    rlca
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc b
    dec b
    ld b, $c5
    add sp, -$0b
    ld hl, sp+$09
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$09
    ld [hl], e
    add sp, $01
    ld a, e
    srl a
    srl a
    srl a
    srl a
    dec hl
    ld [hl+], a
    ld a, [hl]
    and $0f
    ld c, a
    ld a, $af
    add c
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_01b_71f7

    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$05
    ld [hl], a
    ld a, b
    and $0f
    ld b, a
    ld a, $af
    add b
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    ld [hl+], a
    ld a, [hl+]
    inc hl
    sub [hl]
    ld b, a
    rla
    sbc a
    ld c, a
    ld l, b
    ld h, c
    push hl
    call Call_000_3442
    ld hl, sp+$0c
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    ld a, [hl+]
    or [hl]
    jp nz, Jump_01b_7134

    dec hl
    ld [hl], $01
    inc hl
    ld [hl], $00

Jump_01b_7134:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$0b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld hl, sp+$0e
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01b_71f7

    ld a, $0a
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
    ld hl, sp+$03
    ld [hl], a
    ld a, c
    and $0f
    ld c, a
    ld a, $af
    add c
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    ld [hl+], a
    ld a, [hl+]
    inc hl
    sub [hl]
    ld c, a
    ld hl, sp+$00
    ld [hl], c
    rla
    sbc a
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3442
    ld b, d
    ld c, e
    add sp, $02
    ld a, c
    or b
    jp z, Jump_01b_71a6

    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3442
    ld hl, sp+$03
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    jp Jump_01b_71ad


Jump_01b_71a6:
    ld hl, sp+$00
    ld [hl], $01
    inc hl
    ld [hl], $00

Jump_01b_71ad:
    ld hl, sp+$04
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    rla
    sbc a
    dec hl
    dec hl
    ld [hl+], a
    ld c, [hl]
    ld b, $00
    push bc
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d

Jump_01b_71f7:
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    add sp, $0b
    pop bc
    ret


Call_01b_7200:
    push bc
    add sp, -$01
    xor a
    ld a, $3f
    ld hl, sp+$05
    sbc [hl]
    jp nc, Jump_01b_720e

    ld [hl], $3f

Jump_01b_720e:
    ld hl, $cbd7
    ld a, [hl]
    add $01
    ld b, a
    xor a
    ld a, b
    ld hl, sp+$05
    sbc [hl]
    jp nc, Jump_01b_723e

    ld hl, $cbd7
    ld [hl], b
    ld a, b
    cp $40
    jp c, Jump_01b_722a

    call Call_000_144b

Jump_01b_722a:
    ld hl, $cbd7
    ld b, [hl]
    ld a, b
    add $00
    ld e, a
    ld a, $00
    adc $da
    ld d, a
    ld hl, sp+$06
    ld a, [hl]
    ld [de], a
    jp Jump_01b_720e


Jump_01b_723e:
    ld hl, sp+$05
    ld b, [hl]
    ld a, b
    add $00
    ld b, a
    ld a, $00
    adc $da
    ld c, a
    ld e, b
    ld d, c
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    xor $80
    ld e, a
    ld hl, sp+$06
    ld a, [hl]
    xor $80
    ld d, a
    ld a, e
    sbc d
    jp nc, Jump_01b_7263

    ld e, b
    ld d, c
    ld a, [hl]
    ld [de], a

Jump_01b_7263:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $cbd7
    ld [hl], a
    add sp, $01
    pop bc
    ret


Call_01b_726e:
    push bc
    add sp, -$0e
    ld hl, sp+$0c
    ld [hl], $00
    inc hl
    ld [hl], $00
    call $70b8
    ld hl, sp+$0b
    ld [hl], d
    dec hl
    ld [hl], e
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$0a
    ld [hl], e
    add sp, $01
    ld a, e
    srl a
    srl a
    srl a
    srl a
    dec hl
    ld [hl+], a
    ld a, [hl]
    and $0f
    ld b, a
    ld a, $af
    add b
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$0a
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $fe0c
    add hl, de
    jp c, Jump_01b_72bb

    ld hl, sp+$0a
    ld [hl], $f4
    inc hl
    ld [hl], $01

Jump_01b_72bb:
    ld a, $04
    jr jr_01b_72c7

jr_01b_72bf:
    or a
    ld hl, sp+$0b
    rr [hl]
    dec hl
    rr [hl]

jr_01b_72c7:
    dec a
    jr nz, jr_01b_72bf

    ld hl, $00c0
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $da00
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    xor a
    ld hl, sp+$07
    or [hl]
    jp z, Jump_01b_748d

    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$07
    ld [hl], e
    add sp, $01
    ld a, e
    srl a
    srl a
    srl a
    srl a
    dec hl
    ld [hl+], a
    ld a, [hl]
    and $0f
    ld b, a
    ld a, $af
    add b
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a

Jump_01b_7318:
    ld hl, sp+$07
    ld b, [hl]
    ld c, $00
    ld hl, sp+$0c
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, c
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $04
    jr jr_01b_7338

jr_01b_7333:
    or a
    rl c
    rl b

jr_01b_7338:
    dec a
    jr nz, jr_01b_7333

    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push bc
    call Call_000_3766
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    xor a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_01b_7364

    dec [hl]
    jp Jump_01b_7371


Jump_01b_7364:
    xor a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, sp+$05
    sbc [hl]
    jp nc, Jump_01b_7371

    ld hl, sp+$08
    inc [hl]

Jump_01b_7371:
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$08
    cp [hl]
    jp nz, Jump_01b_7318

    xor a
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01b_748d

    ld a, $0a
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
    ld hl, sp+$03
    ld [hl], a
    ld a, c
    and $0f
    ld c, a
    ld a, $af
    add c
    ld e, a
    ld a, $2f
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    ld [hl], a

Jump_01b_73a7:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0c
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
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld a, $04
    jr jr_01b_73d7

jr_01b_73cf:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_01b_73d7:
    dec a
    jr nz, jr_01b_73cf

    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    xor a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_01b_740c

    dec [hl]
    jp Jump_01b_7419


Jump_01b_740c:
    xor a
    ld hl, sp+$08
    ld a, [hl]
    ld hl, sp+$03
    sbc [hl]
    jp nc, Jump_01b_7419

    ld hl, sp+$08
    inc [hl]

Jump_01b_7419:
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$08
    cp [hl]
    jp nz, Jump_01b_73a7

    xor a
    ld hl, sp+$02
    or [hl]
    jp z, Jump_01b_748d

Jump_01b_7429:
    xor a
    ld hl, sp+$08
    or [hl]
    jp z, Jump_01b_748d

    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$0c
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
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld a, $04
    jr jr_01b_7460

jr_01b_7458:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_01b_7460:
    dec a
    jr nz, jr_01b_7458

    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    ld hl, sp+$08
    dec [hl]
    jp Jump_01b_7429


Jump_01b_748d:
    ld hl, sp+$0c
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0d
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld a, $04
    jr jr_01b_74a5

jr_01b_749d:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_01b_74a5:
    dec a
    jr nz, jr_01b_749d

    ld hl, sp+$0a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_3766
    ld hl, sp+$05
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $04
    ld c, e
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    ld a, $3f
    push af
    inc sp
    call Call_01b_7200
    add sp, $02
    call Call_000_3264
    call Call_000_329b
    add sp, $0e
    pop bc
    ret


Call_01b_74e4:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $00

Jump_01b_74eb:
    ld hl, sp+$02
    ld a, [hl]
    cp $08
    jp z, Jump_01b_754b

    ld hl, sp+$02
    ld a, [hl]
    add a
    add a
    dec hl
    ld [hl], a
    add $0c
    ld c, a
    ld b, $00
    ld a, $40
    push af
    inc sp
    push bc
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    ld a, [hl]
    rl a
    rl a
    rl a
    and $f8
    add $30
    dec hl
    dec hl
    ld [hl+], a
    ld a, [hl]
    add $0d
    ld b, a
    ld c, $00
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call Call_000_30f4
    add sp, $03
    ld hl, sp+$02
    ld a, [hl]
    add $06
    dec hl
    dec hl
    ld [hl+], a
    ld a, [hl]
    add $0e
    ld b, a
    ld c, $00
    dec hl
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
    jp Jump_01b_74eb


Jump_01b_754b:
    add sp, $03
    pop bc
    ret


    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    cp $01
    jp z, Jump_01b_7565

    cp $02
    jp nz, Jump_01b_7568

Jump_01b_7565:
    jp Jump_01b_756e


Jump_01b_7568:
    call Call_01b_726e
    call Call_01b_74e4

Jump_01b_756e:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
