; disasSembly of "lsdj.gb"
SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

Call_001_4000:
    push bc
    add sp, -$07
    ld hl, $1234
    push hl
    call Call_000_3829
    add sp, $02
    ld hl, $0000
    ld [hl], $0a
    ld hl, sp+$06
    ld [hl], $00

Jump_001_4015:
    ld hl, sp+$06
    ld a, [hl]
    cp $04
    jp nc, Jump_001_406c

    dec hl
    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $a0
    inc hl
    ld a, [hl]
    ld hl, $4000
    ld [hl], a

Jump_001_402a:
    ld hl, sp+$04
    ld a, [hl]
    or a
    jp nz, Jump_001_403c

    inc hl
    ld a, [hl]
    cp $c0
    jp nz, Jump_001_403c

    ld a, $01
    jr jr_001_403d

Jump_001_403c:
    xor a

jr_001_403d:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_001_4066

    call Call_000_33fc
    ld hl, sp+$02
    ld [hl], e
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld b, l
    ld c, h
    ld hl, sp+$04
    ld [hl], b
    inc hl
    ld [hl], c
    jp Jump_001_402a


Jump_001_4066:
    ld hl, sp+$06
    inc [hl]
    jp Jump_001_4015


Jump_001_406c:
    ld hl, $1234
    push hl
    call Call_000_3829
    add sp, $02
    ld hl, sp+$06
    ld [hl], $00

Jump_001_4079:
    ld hl, sp+$06
    ld a, [hl]
    cp $04
    jp nc, Jump_001_40df

    dec hl
    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $a0
    inc hl
    ld a, [hl]
    ld hl, $4000
    ld [hl], a

Jump_001_408e:
    ld hl, sp+$04
    ld a, [hl]
    or a
    jp nz, Jump_001_40a0

    inc hl
    ld a, [hl]
    cp $c0
    jp nz, Jump_001_40a0

    ld a, $01
    jr jr_001_40a1

Jump_001_40a0:
    xor a

jr_001_40a1:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp nz, Jump_001_40d9

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    call Call_000_33fc
    ld hl, sp+$00
    ld [hl], e
    ld a, [hl+]
    inc hl
    cp [hl]
    jr nz, jr_001_40bf

    ld a, $01
    jr jr_001_40c0

jr_001_40bf:
    xor a

jr_001_40c0:
    ld hl, sp+$01
    ld [hl], a
    or a
    jp nz, Jump_001_40cc

    ld e, $00
    jp Jump_001_40e6


Jump_001_40cc:
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc bc
    dec hl
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_408e


Jump_001_40d9:
    ld hl, sp+$06
    inc [hl]
    jp Jump_001_4079


Jump_001_40df:
    ld hl, $0000
    ld [hl], $00
    ld e, $01

Jump_001_40e6:
    add sp, $07
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
    call Call_000_2cce
    nop
    sbc l
    nop
    rlca
    ld bc, $016b
    ret


    ld bc, $0223
    ld [hl], a
    ld [bc], a
    rst $00
    ld [bc], a
    ld [de], a
    inc bc
    ld e, b
    inc bc
    sbc e
    inc bc
    jp c, Jump_000_1603

    inc b
    ld c, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    push hl
    inc b
    ld de, $3b05
    dec b
    ld h, e
    dec b
    adc c
    dec b
    xor h
    dec b
    adc $05
    db $ed
    dec b
    dec bc
    ld b, $27
    ld b, $42
    ld b, $5b
    ld b, $72
    ld b, $89
    ld b, $9e
    ld b, $b2
    ld b, $c4
    ld b, $d6
    ld b, $e7
    ld b, $f7
    ld b, $06
    rlca
    inc d
    rlca
    ld hl, $2d07
    rlca
    add hl, sp
    rlca
    ld b, h
    rlca
    ld c, a
    rlca
    ld e, c
    rlca
    ld h, d
    rlca
    ld l, e
    rlca
    ld [hl], e
    rlca
    ld a, e
    rlca
    add e
    rlca
    adc d
    rlca
    sub b
    rlca
    sub a
    rlca
    sbc l
    rlca
    and d
    rlca
    and a
    rlca
    xor h
    rlca
    or c
    rlca
    or [hl]
    rlca
    cp d
    rlca
    cp [hl]
    rlca
    pop bc
    rlca
    push bc
    rlca
    ret z

    rlca
    rlc a
    adc $07
    pop de
    rlca
    call nc, $d607
    rlca
    reti


    rlca
    db $db
    rlca
    db $dd
    rlca
    rst $18
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    db $e4
    rlca
    and $07
    rst $20
    rlca
    jp hl


    rlca
    ld [$eb07], a
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    ld a, [c]
    rlca
    di
    rlca
    db $f4
    rlca
    db $f4
    rlca
    push af
    rlca
    or $07
    or $07
    rst $30
    rlca
    rst $30
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fb07]
    rlca
    ei
    rlca
    ei
    rlca
    db $fc
    rlca
    db $fc
    rlca
    nop
    nop
    ld l, a
    nop
    call c, Call_001_4200
    ld bc, $01a3
    rst $38
    ld bc, $0255
    and [hl]
    ld [bc], a
    di
    ld [bc], a
    inc a
    inc bc
    add b
    inc bc
    pop bc
    inc bc
    cp $03
    scf
    inc b
    ld l, [hl]
    inc b
    and c
    inc b
    jp nc, $ff04

    inc b
    ld a, [hl+]
    dec b
    ld d, e
    dec b
    ld a, d
    dec b
    sbc [hl]
    dec b
    ret nz

    dec b

Call_001_4200:
    ldh [rTIMA], a
    rst $38
    dec b
    inc e
    ld b, $37
    ld b, $51
    ld b, $69
    ld b, $80
    ld b, $95
    ld b, $aa
    ld b, $bd
    ld b, $cf
    ld b, $e0
    ld b, $f0
    ld b, $ff
    ld b, $0e
    rlca
    dec de
    rlca
    jr z, jr_001_4229

    inc [hl]
    rlca
    ld b, b
    rlca
    ld c, e
    rlca
    ld d, l

jr_001_4229:
    rlca
    ld e, [hl]
    rlca
    ld h, a
    rlca
    ld [hl], b
    rlca
    ld a, b
    rlca
    add b
    rlca
    add a
    rlca
    adc [hl]
    rlca
    sub h
    rlca
    sbc d
    rlca
    and b
    rlca
    and l
    rlca
    xor d
    rlca
    xor a
    rlca
    or h
    rlca
    cp b
    rlca
    cp h
    rlca
    ret nz

    rlca
    jp $c707


    rlca
    jp z, $cd07

    rlca
    ret nc

    rlca
    db $d3
    rlca
    push de
    rlca
    ret c

    rlca
    jp c, $dc07

    rlca
    sbc $07
    ldh [rTAC], a
    ld [c], a
    rlca
    db $e3
    rlca
    push hl
    rlca
    rst $20
    rlca
    add sp, $07
    jp hl


    rlca
    db $eb
    rlca
    db $ec
    rlca
    db $ed
    rlca
    xor $07
    rst $28
    rlca
    ldh a, [rTAC]
    pop af
    rlca
    ld a, [c]
    rlca
    di
    rlca
    di
    rlca
    db $f4
    rlca
    push af
    rlca
    push af
    rlca
    or $07
    or $07
    rst $30
    rlca
    rst $30
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fb07]
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    db $fc
    rlca
    ld [bc], a
    ld [$130d], sp
    rla
    inc e
    ld hl, $2925
    inc l
    jr nc, jr_001_42e9

    ld [hl], $39
    inc a
    ccf
    ld b, c
    ld b, e
    ld b, [hl]
    ld c, b
    ld c, d
    ld c, h
    ld c, l
    ld c, a
    ld d, c
    ld d, d
    ld d, e
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld l, b
    ld l, b

jr_001_42e9:
    ld l, b

jr_001_42ea:
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d

jr_001_4309:
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, e
    ld l, e
    ld d, b
    dec [hl]
    jp z, $f200

    and c
    dec c
    dec [hl]
    jr z, jr_001_42ea

    ld d, b
    and c
    cp h
    xor a
    ld a, c
    add hl, de
    sub h
    push hl
    ld a, [de]
    inc sp
    jr z, jr_001_432c

jr_001_432c:
    jp z, Jump_000_006b

    ld [hl], e
    rst $10
    jr z, jr_001_4391

    sub h
    xor a
    cp h
    xor a
    and c
    add b
    ld d, b
    ld a, [de]
    rst $10
    add [hl]
    jr z, jr_001_4309

    ld e, [hl]
    ld a, [c]
    ld a, c
    ld a, [c]
    ld l, e
    rst $10
    ld b, e
    xor a
    dec c
    ld e, [hl]
    cp h
    inc c
    ld c, h
    adc h
    call z, Call_001_500d
    add [hl]
    cp h
    push hl
    ld a, [de]
    ld b, e
    ld l, e
    sub h
    cp h
    push hl
    nop
    jr z, jr_001_439f

    ld e, [hl]
    ld a, c
    sub h
    and c
    cp h
    rst $10
    push hl
    nop
    dec c
    ld a, [de]
    jr z, jr_001_439d

    ld b, e
    ld d, b
    ld e, [hl]
    ld l, e
    ld a, c
    add [hl]
    sub h
    sub h
    and c
    xor a
    xor a
    cp h
    cp h
    jp z, $d7ca

    rst $10
    rst $10
    push hl
    push hl
    push hl
    ld a, [c]
    ld a, [c]
    ld a, [c]
    nop
    nop
    nop
    dec b
    dec bc
    db $10
    dec d
    ld a, [de]
    rra
    inc hl
    daa
    dec hl
    ld l, $32
    dec [hl]
    jr c, jr_001_43cc

jr_001_4391:
    ld a, $40
    ld b, d
    ld b, l
    ld b, a
    ld c, c
    ld c, e
    ld c, l
    ld c, [hl]
    ld d, b
    ld d, c
    ld d, e

jr_001_439d:
    ld d, h
    ld d, l

jr_001_439f:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld e, a
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c

jr_001_43cc:
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d

jr_001_43d5:
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, d
    ld l, e
    nop
    jp z, $d786

    ld a, [c]
    cp h
    ld b, e
    ld a, c
    add [hl]
    ld e, c
    push hl
    ld d, b
    add b
    ld a, c
    ld e, [hl]
    dec c
    sub h
    ld a, [c]
    dec [hl]
    ld e, [hl]
    ld e, [hl]
    ld b, e
    dec c
    cp h
    ld e, [hl]
    push hl
    ld b, e
    and c
    push hl
    ld a, [de]
    dec [hl]
    ld d, b
    ld d, b
    ld b, e
    ld h, $f3
    cp h
    add [hl]
    dec [hl]
    push hl
    add [hl]
    jr z, jr_001_43d5

    ld b, e
    cp h
    dec [hl]
    xor a
    ld a, [de]
    add [hl]
    push hl
    ld b, e
    sub h
    push hl
    inc sp
    ld [hl], e
    or e
    di
    dec [hl]
    ld l, e
    and c
    rst $10
    nop
    dec [hl]
    ld e, [hl]
    add [hl]
    xor a
    rst $10
    ld a, [c]
    ld a, [de]
    dec [hl]
    ld d, b
    ld l, e
    add [hl]
    and c
    xor a
    jp z, $f2e5

    nop
    ld a, [de]
    jr z, jr_001_4475

    ld b, e
    ld d, b
    ld e, [hl]
    ld l, e
    ld a, c
    add [hl]
    add [hl]
    sub h
    and c
    and c
    xor a
    xor a
    cp h
    cp h
    jp z, $d7ca

    rst $10
    push hl
    push hl
    push hl
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    nop

Call_001_445a:
    push bc
    ld hl, $0000
    ld [hl], $0a
    ld c, $04

Jump_001_4462:
    ld a, c
    cp $10
    jp nc, Jump_001_447e

    ld hl, $4000
    ld [hl], c
    call Call_000_207b
    ld b, e
    xor a
    or b
    jp z, Jump_001_447a

jr_001_4475:
    ld e, $00
    jp Jump_001_4485


Jump_001_447a:
    inc c
    jp Jump_001_4462


Jump_001_447e:
    ld hl, $0000
    ld [hl], $00
    ld e, $01

Jump_001_4485:
    pop bc
    ret


    push bc
    ld hl, $c574
    ld [hl], $20
    inc hl
    ld [hl], $98
    ld hl, $4557
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $60
    inc hl
    ld [hl], $98
    ld hl, $4566
    push hl
    call Call_000_2eda
    add sp, $02
    ld c, $8c
    ld b, $1f
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_001_44ca

    ld hl, $456d
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_44f8


Jump_001_44ca:
    ld hl, $4571
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $98
    ld hl, $4577
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $a0
    inc hl
    ld [hl], $98
    ld hl, $4589
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_44f5:
    jp Jump_001_44f5


Jump_001_44f8:
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $98
    ld hl, $4599
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_001_4000
    ld c, e
    xor a
    or c
    jp z, Jump_001_4527

    call Call_001_445a
    ld c, e
    xor a
    or c
    jp z, Jump_001_4527

    ld hl, $45a1
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_4555


Jump_001_4527:
    ld hl, $45a5
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $a0
    inc hl
    ld [hl], $98
    ld hl, $45ab
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $c0
    inc hl
    ld [hl], $98
    ld hl, $45bd
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_4552:
    jp Jump_001_4552


Jump_001_4555:
    pop bc
    ret


    ld b, e
    ld b, c
    ld d, d
    ld d, h
    ld d, d
    ld c, c
    ld b, h
    ld b, a
    ld b, l
    jr nz, jr_001_45b6

    ld b, l
    ld d, e
    ld d, h
    nop
    ld d, d
    ld c, a
    ld c, l
    ld l, $2e
    ld l, $00
    ld c, a
    ld c, e
    ld hl, $4600
    ld b, c
    ld c, c
    ld c, h
    ld hl, $5400
    ld d, d
    ld e, c
    jr nz, jr_001_45bf

    ld c, h
    ld b, l
    ld b, c
    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_001_45d5

    ld c, c
    ld c, [hl]
    ld d, e
    nop
    ld c, a
    ld d, d
    jr nz, @+$48

    ld c, h
    ld b, c
    ld d, e
    ld c, b
    jr nz, jr_001_45d4

    ld b, a
    ld b, c
    ld c, c
    ld c, [hl]
    ld l, $00
    ld d, e
    ld d, d
    ld b, c
    ld c, l
    ld l, $2e
    ld l, $00
    ld c, a
    ld c, e
    ld hl, $4600
    ld b, c
    ld c, c
    ld c, h
    ld hl, $5400
    ld d, d
    ld e, c
    jr nz, jr_001_45f3

    ld c, h
    ld b, l
    ld b, c
    ld c, [hl]
    ld c, c
    ld c, [hl]

jr_001_45b6:
    ld b, a
    jr nz, @+$52

    ld c, c
    ld c, [hl]
    ld d, e
    nop
    ld c, a
    ld d, d

jr_001_45bf:
    jr nz, @+$54

    ld b, l
    ld d, b
    ld c, h
    ld b, c
    ld b, e
    ld b, l
    jr nz, jr_001_460b

    ld b, c
    ld d, h
    ld d, h
    ld b, l
    ld d, d
    ld e, c
    ld l, $00
    push bc
    add sp, -$07

jr_001_45d4:
    di

jr_001_45d5:
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $00
    call Call_001_7df7
    ld c, $ff
    ld b, $63
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld de, $be78

jr_001_45f3:
    ld a, $72
    ld [de], a
    ld de, $be79
    ld a, $62
    ld [de], a
    ld hl, sp+$05
    ld [hl], $90
    inc hl
    ld [hl], $b0

Jump_001_4603:
    ld hl, sp+$05
    ld a, [hl]
    cp $90
    jp nz, Jump_001_4612

jr_001_460b:
    inc hl
    ld a, [hl]
    cp $b2
    jp z, Jump_001_4639

Jump_001_4612:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $06
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_001_4620

    inc hl
    inc [hl]

jr_001_4620:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $06
    ld [de], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000f
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    jp Jump_001_4603


Jump_001_4639:
    ld hl, $0400
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $b290
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, sp+$05
    ld [hl], $d0
    inc hl
    ld [hl], $bd
    dec hl
    dec hl
    ld [hl], $00

Jump_001_4655:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $57
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_001_4663

    inc hl
    inc [hl]

jr_001_4663:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $2d
    ld [de], a
    dec hl
    inc [hl]
    jr nz, jr_001_4671

    inc hl
    inc [hl]

jr_001_4671:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    dec hl
    ld a, [hl]
    ld [de], a
    inc hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    cp $0a
    jp nc, Jump_001_4697

    ld c, $30
    jp Jump_001_4699


Jump_001_4697:
    ld c, $37

Jump_001_4699:
    ld hl, sp+$00
    ld a, [hl]
    add c
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_001_46aa

    inc hl
    inc [hl]

jr_001_46aa:
    ld hl, sp+$04
    inc [hl]
    inc hl
    ld a, [hl]
    cp $fa
    jp nz, Jump_001_4655

    inc hl
    ld a, [hl]
    cp $bd
    jp nz, Jump_001_4655

    ld hl, $4000
    ld [hl], $01
    ld de, $bfb6
    ld a, [de]
    ld c, a
    ld de, $bfb7
    ld a, [de]
    ld b, a
    ld de, $bfb8
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    call Call_001_7df7
    ld hl, $0004
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $bfc6
    push hl
    call Call_000_3892
    add sp, $05
    ld de, $bfb6
    ld a, c
    ld [de], a
    ld de, $bfb7
    ld a, b
    ld [de], a
    ld de, $bfb8
    ld hl, sp+$03
    ld a, [hl]
    ld [de], a
    ld de, $bfc3
    ld a, $01
    ld [de], a
    ld hl, $4000
    ld [hl], $03
    call Call_001_7df7
    ld hl, $0ff0
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $b000
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $4000
    ld [hl], $02
    call Call_001_7df7
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld de, $be80
    ld a, $72
    ld [de], a
    ld de, $be81
    ld a, $62
    ld [de], a
    ld de, $bfb4
    ld a, $80
    ld [de], a
    ld de, $bfba
    ld a, $07
    ld [de], a
    ld de, $bfbb
    ld a, $02
    ld [de], a
    ld hl, $c530
    ld [hl], $00
    ld hl, $0800
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $a080
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, sp+$05
    ld [hl], $b2
    inc hl
    ld [hl], $be

Jump_001_4763:
    ld hl, sp+$05
    ld a, [hl]
    cp $b2
    jp nz, Jump_001_4772

    inc hl
    ld a, [hl]
    cp $bf
    jp z, Jump_001_47b8

Jump_001_4772:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0005
    add hl, de
    ld e, l
    ld d, h
    ld a, $10
    ld [de], a
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0009
    add hl, de
    ld e, l
    ld d, h
    ld [de], a
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0006
    add hl, de
    ld e, l
    ld d, h
    ld a, $ff
    ld [de], a
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000a
    add hl, de
    ld e, l
    ld d, h
    ld [de], a
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    jp Jump_001_4763


Jump_001_47b8:
    ld hl, $4000
    ld [hl], $03
    ld de, $bff0
    ld a, $72
    ld [de], a
    ld de, $bff1
    ld a, $62
    ld [de], a
    ld hl, sp+$05
    ld [hl], $00
    inc hl
    ld [hl], $a0

Jump_001_47d0:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $5000
    add hl, de
    jp c, Jump_001_4801

    ld hl, sp+$05
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0010
    push hl
    ld hl, $40ea
    push hl
    push bc
    call Call_000_3846
    add sp, $06
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    jp Jump_001_47d0


Jump_001_4801:
    ld de, $bfff
    ld a, $16
    ld [de], a
    ei
    ld hl, $0000
    ld [hl], $00
    add sp, $07
    pop bc
    ret


    push bc
    ld hl, $a13e
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $6a
    jp z, Jump_001_482b

    ld e, $00
    jp Jump_001_4846


Jump_001_482b:
    ld hl, $a13f
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $6b
    jp z, Jump_001_4844

    ld e, $00
    jp Jump_001_4846


Jump_001_4844:
    ld e, $01

Jump_001_4846:
    pop bc
    ret


    push bc
    ld hl, $be78
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp nz, Jump_001_4876

    ld hl, $be79
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp nz, Jump_001_4876

    ld e, $01
    jp Jump_001_48d2


Jump_001_4876:
    ld hl, $bff0
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp nz, Jump_001_48a3

    ld hl, $bff1
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp nz, Jump_001_48a3

    ld e, $01
    jp Jump_001_48d2


Jump_001_48a3:
    ld hl, $be80
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $72
    jp nz, Jump_001_48d0

    ld hl, $be81
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $62
    jp nz, Jump_001_48d0

    ld e, $01
    jp Jump_001_48d2


Jump_001_48d0:
    ld e, $00

Jump_001_48d2:
    pop bc
    ret


    ld a, $72
    push af
    inc sp
    ld hl, $be78
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $62
    push af
    inc sp
    ld hl, $be79
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $72
    push af
    inc sp
    ld hl, $be80
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $62
    push af
    inc sp
    ld hl, $be81
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $72
    push af
    inc sp
    ld hl, $bff0
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $62
    push af
    inc sp
    ld hl, $bff1
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ret


Call_001_493b:
    push bc
    add sp, -$04
    xor a
    ld a, $40
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_001_494a

    call Call_000_144b

Jump_001_494a:
    ld hl, sp+$08
    ld a, [hl]
    cp $40
    jp nz, Jump_001_4962

    ld hl, $4a44
    push hl
    ld hl, $c432
    push hl
    call Call_000_3834
    add sp, $04
    jp Jump_001_4a40


Jump_001_4962:
    ld hl, sp+$08
    ld c, [hl]
    ld b, $00
    ld hl, $0005
    push hl
    push bc
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $be7a
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    inc hl
    inc [hl]
    jr nz, jr_001_498a

    inc hl
    inc [hl]

jr_001_498a:
    ld hl, sp+$00
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
    ld de, $c432
    ld a, c
    ld [de], a
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_001_49b3

    inc hl
    inc [hl]

jr_001_49b3:
    push bc
    ld a, $00
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
    ld de, $c432
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_001_49dc

    inc hl
    inc [hl]

jr_001_49dc:
    push bc
    ld a, $00
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
    ld de, $c432
    ld hl, $0003
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_001_4a05

    inc hl
    inc [hl]

jr_001_4a05:
    push bc
    ld a, $00
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
    ld de, $c432
    ld hl, $0004
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    inc hl
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
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c437
    ld a, $00
    ld [de], a

Jump_001_4a40:
    add sp, $04
    pop bc
    ret


    ld d, e
    ld d, b
    ld b, e
    ld c, b
    nop

Call_001_4a49:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    cp $40
    jp c, Jump_001_4a57

    call Call_000_144b

Jump_001_4a57:
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld hl, $0005
    push hl
    push bc
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $be7a
    add hl, bc
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
    jr nz, jr_001_4a82

    inc hl
    inc [hl]

jr_001_4a82:
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
    jr nz, jr_001_4aa3

    inc hl
    inc [hl]

jr_001_4aa3:
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
    inc [hl]
    jr nz, jr_001_4ac4

    inc hl
    inc [hl]

jr_001_4ac4:
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
    ld de, $c435
    ld a, [de]
    ld hl, sp+$00
    ld [hl+], a
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_001_4ae5

    inc hl
    inc [hl]

jr_001_4ae5:
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
    ld de, $c436
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
    add sp, $03
    pop bc
    ret


Call_001_4b15:
    push bc
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_001_4b26

    ld de, $4382
    ld c, e
    ld b, d
    jp Jump_001_4b2b


Jump_001_4b26:
    ld de, $42aa
    ld c, e
    ld b, d

Jump_001_4b2b:
    ld hl, $00d8
    push hl
    push bc
    ld hl, $cd28
    push hl
    call Call_000_3846
    add sp, $06
    xor a
    ld hl, $c403
    or [hl]
    jp z, Jump_001_4b49

    ld de, $41d2
    ld c, e
    ld b, d
    jp Jump_001_4b4e


Jump_001_4b49:
    ld de, $40fa
    ld c, e
    ld b, d

Jump_001_4b4e:
    ld hl, $00d8
    push hl
    push bc
    ld hl, $cf28
    push hl
    call Call_000_3846
    add sp, $06
    pop bc
    ret


Call_001_4b5e:
    push bc
    add sp, -$06
    ld hl, $00a0
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $dd00
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $cbd0
    ld [hl], $01
    ld hl, sp+$04
    ld [hl], $00
    inc hl
    ld [hl], $80

Jump_001_4b7e:
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
    ld hl, sp+$00
    ld a, [hl]
    cp $30
    jp nz, Jump_001_4baa

    inc hl
    ld a, [hl]
    cp $80
    jp nz, Jump_001_4baa

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_001_4baa

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_001_4bce

Jump_001_4baa:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld a, $00
    push af
    inc sp
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_17bb
    add sp, $03
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_001_4bcb

    inc hl
    inc [hl]

jr_001_4bcb:
    jp Jump_001_4b7e


Jump_001_4bce:
    ld hl, sp+$04
    ld [hl], $50
    inc hl
    ld [hl], $80

Jump_001_4bd5:
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
    ld hl, sp+$00
    ld a, [hl]
    cp $60
    jp nz, Jump_001_4c01

    inc hl
    ld a, [hl]
    cp $80
    jp nz, Jump_001_4c01

    inc hl
    ld a, [hl]
    or a
    jp nz, Jump_001_4c01

    inc hl
    ld a, [hl]
    or a
    jp z, Jump_001_4c31

Jump_001_4c01:
    ld hl, sp+$04
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    bit 1, a
    jp z, Jump_001_4c11

    ld [hl], $60
    jp Jump_001_4c15


Jump_001_4c11:
    ld hl, sp+$00
    ld [hl], $00

Jump_001_4c15:
    ld hl, sp+$04
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call Call_000_17bb
    add sp, $03
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_001_4c2e

    inc hl
    inc [hl]

jr_001_4c2e:
    jp Jump_001_4bd5


Jump_001_4c31:
    ld de, $dd01
    ld a, $90
    ld [de], a
    ld de, $dd05
    ld a, $98
    ld [de], a
    ld de, $dd06
    ld a, $01
    ld [de], a
    ld de, $dd09
    ld a, $a0
    ld [de], a
    ld de, $dd0a
    ld a, $02
    ld [de], a

Jump_001_4c4f:
    xor a
    ld hl, $cbd0
    or [hl]
    jp nz, Jump_001_4c4f

    ldh a, [rLCDC]
    or $02
    ldh [rLCDC], a
    add sp, $06
    pop bc
    ret


Call_001_4c61:
    push bc
    ld hl, $cbd8
    ld a, [hl]
    cp $11
    jp nz, Jump_001_4cd9

    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a
    ld a, $14
    push af
    inc sp
    ld hl, $c530
    ld a, [hl]
    push af
    inc sp
    call Call_000_38a5
    ld c, e
    add sp, $02
    ld a, c
    add a
    ld c, a
    ld a, $bf
    add c
    ld c, a
    ld a, $56
    adc $00
    ld b, a
    push bc
    ld a, $05
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_38db
    add sp, $04
    push bc
    ld a, $02
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_001_7ee1
    add sp, $04
    ld a, c
    add $0a
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld hl, $0008
    push hl
    push bc
    ld hl, $c69f
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, $c69f
    push hl
    ld a, $01
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_001_7ee1
    add sp, $04
    ldh a, [rLCDC]
    or $80
    ldh [rLCDC], a
    jp Jump_001_4cef


Jump_001_4cd9:
    ld hl, $c530
    ld c, [hl]
    ld a, c
    bit 0, a
    jp z, Jump_001_4ce8

    ld c, $1b
    jp Jump_001_4cea


Jump_001_4ce8:
    ld c, $e4

Jump_001_4cea:
    ld a, c
    ldh [rBGP], a
    ldh [rOBP0], a

Jump_001_4cef:
    pop bc
    ret


    call Call_001_4c61
    call Call_001_4b5e
    call Call_001_4b15
    ret


Call_001_4cfb:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4d09

    call Call_000_144b

Jump_001_4d09:
    ld hl, sp+$08
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $be82
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld a, c
    and $07
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
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
    ld hl, sp+$08
    ld a, [hl]
    inc a
    ld b, $01
    jr jr_001_4d4c

jr_001_4d49:
    or a
    rl b

jr_001_4d4c:
    dec a
    jr nz, jr_001_4d49

    ld a, c
    or b
    ld c, a
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
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    cp $80
    jp c, Jump_001_4d75

    call Call_000_144b

Jump_001_4d75:
    ld hl, sp+$08
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $bea2
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld a, c
    and $07
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
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
    ld hl, sp+$08
    ld a, [hl]
    inc a
    ld b, $01
    jr jr_001_4db8

jr_001_4db5:
    or a
    rl b

jr_001_4db8:
    dec a
    jr nz, jr_001_4db5

    ld a, c
    or b
    ld c, a
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
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4de1

    call Call_000_144b

Jump_001_4de1:
    ld hl, sp+$08
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $be82
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld a, c
    and $07
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
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
    ld hl, sp+$08
    ld a, [hl]
    inc a
    ld b, $01
    jr jr_001_4e24

jr_001_4e21:
    or a
    rl b

jr_001_4e24:
    dec a
    jr nz, jr_001_4e21

    ld a, $ff
    sub b
    ld b, a
    ld a, c
    and b
    ld c, a
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
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    cp $80
    jp c, Jump_001_4e51

    call Call_000_144b

Jump_001_4e51:
    ld hl, sp+$08
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $bea2
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$08
    ld c, [hl]
    ld a, c
    and $07
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
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
    ld hl, sp+$08
    ld a, [hl]
    inc a
    ld b, $01
    jr jr_001_4e94

jr_001_4e91:
    or a
    rl b

jr_001_4e94:
    dec a
    jr nz, jr_001_4e91

    ld a, $ff
    sub b
    ld b, a
    ld a, c
    and b
    ld c, a
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
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, $c41e
    ld c, [hl]
    ld a, $54
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4ed1

    ld hl, sp+$00
    ld [hl], $00

Jump_001_4ed1:
    ld hl, sp+$00
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a

Jump_001_4ed7:
    ld hl, sp+$03
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $be82
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
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$03
    ld b, [hl]
    ld a, b
    and $07
    inc a
    ld b, $01
    jr jr_001_4f0a

jr_001_4f07:
    or a
    rl b

jr_001_4f0a:
    dec a
    jr nz, jr_001_4f07

    ld a, c
    and b
    ld c, a
    or c
    jp nz, Jump_001_4f2f

    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    call Call_001_4cfb
    add sp, $01
    ld hl, sp+$03
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4f29

    call Call_000_144b

Jump_001_4f29:
    ld hl, sp+$03
    ld e, [hl]
    jp Jump_001_4f55


Jump_001_4f2f:
    ld hl, sp+$03
    inc [hl]
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4f3c

    ld hl, sp+$03
    ld [hl], $00

Jump_001_4f3c:
    ld hl, sp+$00
    ld a, [hl]
    ld hl, sp+$03
    cp [hl]
    jp nz, Jump_001_4ed7

    ld c, $c6
    ld b, $75
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $ff

Jump_001_4f55:
    add sp, $04
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $80
    jp c, Jump_001_4f65

    call Call_000_144b

Jump_001_4f65:
    ld hl, sp+$04
    ld c, [hl]
    srl c
    srl c
    srl c
    ld a, c
    add $a2
    ld c, a
    ld a, $00
    adc $be
    ld b, a
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
    jr jr_001_4f90

jr_001_4f8d:
    or a
    rl b

jr_001_4f90:
    dec a
    jr nz, jr_001_4f8d

    ld a, c
    and b
    ld c, a
    ld e, c
    pop bc
    ret


    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nz, Jump_001_4fa7

    call Call_000_144b

Jump_001_4fa7:
    ld hl, sp+$06
    ld c, [hl]
    srl c
    srl c
    srl c
    ld e, c
    ld d, $00
    ld hl, $be82
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    ld a, c
    and $07
    ld [hl], a
    ld hl, sp+$00
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld hl, sp+$06
    ld a, [hl]
    inc a
    ld b, $01
    jr jr_001_4fe1

jr_001_4fde:
    or a
    rl b

jr_001_4fe1:
    dec a
    jr nz, jr_001_4fde

    ld a, c
    and b
    ld c, a
    ld e, c
    add sp, $02
    pop bc
    ret


    push bc
    xor a
    ld hl, $c4d3
    or [hl]
    jp nz, Jump_001_4ffd

    ld hl, $c6a7
    ld [hl], $00
    jp Jump_001_5097


Jump_001_4ffd:
    ld hl, $c6a7
    inc [hl]
    ld a, [hl]
    cp $3c
    jp z, Jump_001_500a

    jp Jump_001_5097


Jump_001_500a:
    ld hl, $c554

Call_001_500d:
    inc [hl]
    ld a, [hl]
    cp $3c
    jp nz, Jump_001_501d

    ld hl, $c554
    ld [hl], $00
    ld hl, $c553
    inc [hl]

Jump_001_501d:
    ld hl, $c6a7
    ld [hl], $00
    ld hl, $c554
    ld c, [hl]
    ld a, c
    and $03
    jp nz, Jump_001_5031

    ld hl, $c6a7
    ld [hl], $01

Jump_001_5031:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_001_5097

    ld hl, $c402
    ld a, [hl]
    cp $09
    jp nz, Jump_001_5097

    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $05
    inc hl
    ld [hl], $9a
    ld hl, $c553
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, $5099
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c9a5
    ld [hl], $0c
    xor a
    ld a, $09
    ld hl, $c553
    sbc [hl]
    jp nc, Jump_001_5075

    ld hl, $c9a5
    inc [hl]

Jump_001_5075:
    ld hl, $c554
    ld a, [hl]
    cp $0a
    jp nc, Jump_001_5087

    ld a, $30
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_001_5087:
    ld hl, $c554
    ld c, [hl]
    ld b, $00
    push bc
    ld hl, $509d
    push hl
    call Call_000_35c5
    add sp, $04

Jump_001_5097:
    pop bc
    ret


    dec h
    ld h, h
    ld a, [hl-]
    nop
    dec h
    ld h, h
    nop
    push bc
    ld hl, $bfb3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    inc c
    ld a, c
    cp $3c
    jp nz, Jump_001_50e9

    ld a, $00
    push af
    inc sp
    ld hl, $bfb3
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
    inc c
    ld a, c
    push af
    inc sp
    ld hl, $bfb2
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    jp Jump_001_50f9


Jump_001_50e9:
    ld a, c
    push af
    inc sp
    ld hl, $bfb3
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_001_50f9:
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    inc c
    ld a, c
    cp $3c
    jp nz, Jump_001_517a

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
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    inc c
    ld a, c
    cp $18
    jp nz, Jump_001_5167

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
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    inc c
    ld a, c
    push af
    inc sp
    ld hl, $bfb6
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    jp Jump_001_518a


Jump_001_5167:
    ld a, c
    push af
    inc sp
    ld hl, $bfb7
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    jp Jump_001_518a


Jump_001_517a:
    ld a, c
    push af
    inc sp
    ld hl, $bfb8
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_001_518a:
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld a, [hl]
    bit 7, a
    jp z, Jump_001_51a1

    ld hl, $51f4
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_51e2


Jump_001_51a1:
    ld hl, sp+$04
    ld a, [hl]
    bit 4, a
    jp z, Jump_001_51b5

    ld hl, $51f9
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_51e2


Jump_001_51b5:
    ld hl, sp+$04
    ld a, [hl]
    bit 6, a
    jp z, Jump_001_51d9

    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    cp $02
    jp z, Jump_001_51d9

    ld hl, $51fe
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_51e2


Jump_001_51d9:
    ld hl, $5203
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_51e2:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    call Call_001_5208
    add sp, $01
    pop bc
    ret


    ld l, e
    ld l, h
    ld l, c
    ld l, d
    ld l, l
    ld l, [hl]
    ld d, e
    ld d, h
    ld b, l
    ld d, b
    nop
    ld d, h
    ld c, c
    ld b, e
    ld c, e
    nop
    ld b, h
    ld d, d
    ld d, l
    ld c, l
    nop
    ld b, [hl]
    ld b, c
    ld d, e
    ld d, h
    nop

Call_001_5208:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, c
    and $07
    ld c, a
    ld a, $ee
    add c
    ld e, a
    ld a, $51
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld b, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    pop bc
    ret


    push bc
    ld hl, sp+$04
    ld a, [hl]
    bit 5, a
    jp z, Jump_001_523e

    ld de, $524b
    ld c, e
    ld b, d
    jp Jump_001_5243


Jump_001_523e:
    ld de, $524f
    ld c, e
    ld b, d

Jump_001_5243:
    push bc
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_001_52a0

    ld c, [hl]
    nop
    push bc
    ld hl, $52de
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c412
    ld [hl], $06
    ld hl, $c414
    ld [hl], $02
    ld c, $00

Jump_001_5269:
    ld a, c
    cp $10
    jp nc, Jump_001_528a

    push af
    inc sp
    call Call_000_0ad1
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
    inc c
    jp Jump_001_5269


Jump_001_528a:
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_001_493b
    add sp, $01
    ld c, $00

Jump_001_5297:
    ld a, c
    cp $05
    jp nc, Jump_001_52ba

    ld a, $32
    add c

jr_001_52a0:
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
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
    inc c
    jp Jump_001_5297


Jump_001_52ba:
    ld hl, $c40e
    ld [hl], $00
    ld hl, $c410
    ld [hl], $02
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
    pop bc
    ret


    ld b, e
    ld c, a
    ld d, b
    ld c, c
    ld b, l
    ld b, h
    jr nz, jr_001_532f

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    nop

Call_001_52eb:
    push bc
    ld c, $00

Jump_001_52ee:
    ld a, c
    cp $10
    jp nc, Jump_001_532a

    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, b
    push af
    inc sp
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_001_531f

    inc hl
    inc [hl]

jr_001_531f:
    ld hl, sp+$07
    inc [hl]
    jr nz, jr_001_5326

    inc hl
    inc [hl]

jr_001_5326:
    inc c
    jp Jump_001_52ee


Jump_001_532a:
    pop bc
    ret


    rrca
    ld c, $11

jr_001_532f:
    inc c
    rst $38

Call_001_5331:
    push bc
    add sp, -$18
    ld hl, sp+$1c
    ld c, [hl]
    ld b, $00
    ld hl, sp+$16
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $05
    jr jr_001_534a

jr_001_5342:
    or a
    ld hl, sp+$16
    rl [hl]
    inc hl
    rl [hl]

jr_001_534a:
    dec a
    jr nz, jr_001_5342

    ld hl, sp+$1d
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_001_535b

jr_001_5356:
    or a
    rl c
    rl b

jr_001_535b:
    dec a
    jr nz, jr_001_5356

    ld hl, sp+$16
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b680
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$14
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b880
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$12
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$16
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ba80
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$10
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$16
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $bc80
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$16
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b480
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0c
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$16
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b690
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0a
    ld [hl+], a
    ld [hl], d
    ld hl, $b680
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], d
    ld hl, $b880
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, $ba80
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $bc80
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, $b480
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, c
    add $90
    ld c, a
    ld a, b
    adc $b6
    ld b, a
    ld hl, sp+$08
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$16
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$14
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$12
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$10
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    push bc
    ld hl, sp+$0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_001_52eb
    add sp, $05
    add sp, $18
    pop bc
    ret


    push bc
    add sp, -$01
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $03
    ld c, a
    ld a, $2c
    add c
    ld e, a
    ld a, $53
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c428
    cp [hl]
    jr nz, jr_001_5492

    jp Jump_001_5495


jr_001_5492:
    jp Jump_001_54fb


Jump_001_5495:
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    bit 5, a
    jp z, Jump_001_54fb

    ld hl, sp+$00
    ld a, [hl]
    and $1f
    ld [hl], a
    ld b, $8c
    ld c, $4b
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
    jp nz, Jump_001_54d0

    ld hl, $54ff
    push hl
    call Call_000_0dab
    add sp, $02
    jp Jump_001_54fb


Jump_001_54d0:
    ld hl, $550e
    push hl
    call Call_000_0dab
    add sp, $02
    ld a, c
    push af
    inc sp
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_001_5331
    add sp, $02
    ld a, c
    or $20
    ld c, a
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03

Jump_001_54fb:
    add sp, $01
    pop bc
    ret


    ld c, a
    ld d, l
    ld d, h
    jr nz, jr_001_5553

    ld b, [hl]
    jr nz, jr_001_555b

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld d, e
    ld hl, $4300
    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld b, h
    jr nz, jr_001_556a

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    nop
    push bc
    add sp, -$02
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nz, Jump_001_552a

    jp Jump_001_55d0


Jump_001_552a:
    ld hl, $c414
    ld a, [hl]
    cp $02
    jp z, Jump_001_5536

    jp Jump_001_55d0


Jump_001_5536:
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_001_55d0

    ld hl, $c412
    ld a, [hl]
    cp $06
    jp z, Jump_001_554a

    jp Jump_001_55d0


Jump_001_554a:
    ld c, $00

Jump_001_554c:
    ld a, c
    cp $10
    jp nc, Jump_001_5573

    push af

jr_001_5553:
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2

jr_001_555b:
    ld b, e
    add sp, $02
    ld a, b
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp

jr_001_556a:
    call Call_000_0942
    add sp, $03
    inc c
    jp Jump_001_554c


Jump_001_5573:
    ld c, $00

Jump_001_5575:
    ld a, c
    cp $05
    jp nc, Jump_001_55a0

    ld de, $c432
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_07d2
    ld b, e
    add sp, $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    ld [de], a
    inc c
    jp Jump_001_5575


Jump_001_55a0:
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_001_4a49
    add sp, $01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_55b6

    call Call_000_17ca

Jump_001_55b6:
    call Call_001_6cef
    ld c, $06
    ld b, $4e
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $55d4
    push hl
    call Call_000_0dab
    add sp, $02

Jump_001_55d0:
    add sp, $02
    pop bc
    ret


    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld b, h
    jr nz, jr_001_5625

    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    nop

Call_001_55e1:
    push bc
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp z, Jump_001_5625

    cp $02
    jp z, Jump_001_562b

    cp $03
    jp z, Jump_001_5631

    cp $04
    jp z, Jump_001_5637

    cp $05
    jp z, Jump_001_563d

    cp $06
    jp z, Jump_001_5643

    cp $08
    jp z, Jump_001_5696

    cp $09
    jp z, Jump_001_569c

    cp $0a
    jp z, Jump_001_56a2

    cp $0b
    jp z, Jump_001_56a8

    cp $0c
    jp z, Jump_001_56ae

    cp $0d
    jp z, Jump_001_56b4

    jp Jump_001_56ba


Jump_001_5625:
jr_001_5625:
    ld de, $5aa7
    jp Jump_001_56bd


Jump_001_562b:
    ld de, $5c0f
    jp Jump_001_56bd


Jump_001_5631:
    ld de, $57d7
    jp Jump_001_56bd


Jump_001_5637:
    ld de, $5edf
    jp Jump_001_56bd


Jump_001_563d:
    ld de, $593f
    jp Jump_001_56bd


Jump_001_5643:
    ld hl, $c577
    ld a, [hl]
    cp $40
    jp nc, Jump_001_568a

    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    xor a
    ld a, $03
    sbc c
    jp c, Jump_001_5690

    ld d, $00
    ld hl, $5666
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_001_5672


    jp Jump_001_5678


    jp Jump_001_567e


    jp Jump_001_5684


Jump_001_5672:
    ld de, $6047
    jp Jump_001_56bd


Jump_001_5678:
    ld de, $61af
    jp Jump_001_56bd


Jump_001_567e:
    ld de, $6317
    jp Jump_001_56bd


Jump_001_5684:
    ld de, $647f
    jp Jump_001_56bd


Jump_001_568a:
    ld de, $65e7
    jp Jump_001_56bd


Jump_001_5690:
    ld de, $0000
    jp Jump_001_56bd


Jump_001_5696:
    ld de, $674f
    jp Jump_001_56bd


Jump_001_569c:
    ld de, $5d77
    jp Jump_001_56bd


Jump_001_56a2:
    ld de, $68b7
    jp Jump_001_56bd


Jump_001_56a8:
    ld de, $65e7
    jp Jump_001_56bd


Jump_001_56ae:
    ld de, $6a1f
    jp Jump_001_56bd


Jump_001_56b4:
    ld de, $6b87
    jp Jump_001_56bd


Jump_001_56ba:
    ld de, $0000

Jump_001_56bd:
    pop bc
    ret


    nop
    ld d, h
    xor l
    ld [hl], c
    call nz, $ff19
    ld a, a
    nop
    inc [hl]
    rst $28
    ld e, c
    nop
    nop
    rst $38
    ld a, a
    cp h
    add hl, bc
    inc de
    dec b
    inc de
    dec b
    nop
    nop
    cp h
    add hl, bc
    inc de
    dec b
    inc de
    dec b
    nop
    nop
    nop
    nop
    db $10
    ld b, d
    call nz, $ff19
    ld a, a
    nop

jr_001_56e8:
    nop
    and b
    ld bc, $0000
    db $e3
    rrca
    ld b, b
    ld bc, $0240
    sub h
    ld d, d
    db $e3
    rrca
    db $e3
    rrca
    add b
    ld [bc], a
    add b
    ld [bc], a
    nop
    nop
    db $e3
    rrca
    add b
    ld [bc], a
    add b
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    ld [bc], a
    sub h
    ld d, d
    db $e3
    rrca
    rst $38
    ld a, a
    sub h
    ld d, d
    nop
    nop
    nop
    nop
    db $d3
    ld a, a
    adc d
    ld d, d
    nop
    nop
    nop
    nop
    rst $38
    ld a, h
    ld e, a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc a
    inc e
    ccf
    ld b, [hl]
    ccf
    ld b, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, h
    ld e, a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld hl, $d028
    inc h
    ret nc

    inc h
    ld a, a
    ld hl, $7f18
    sub e
    ld c, c
    sub e
    ld c, c
    rrca
    jr jr_001_56e8

    ld c, b
    ld c, b
    ld c, d
    ld c, b
    ld c, d
    ldh a, [rVBK]
    xor d
    ld a, l
    ret


    inc a
    ret


    inc a
    add hl, bc
    nop
    ldh a, [rVBK]
    ld c, b
    ld c, d
    ld c, b
    ld c, d
    and b
    ld c, b
    ld l, e
    ld a, [hl]
    dec h
    dec a
    dec h
    dec a
    nop
    nop
    rst $38
    rrca
    ld d, h
    ld l, $54
    ld l, $0b
    ld b, h
    dec de
    jr z, jr_001_5788

    ld c, d
    ld d, $4a
    ldh a, [$7f]
    ldh a, [$7f]
    ld d, h
    ld d, d
    ld d, h
    ld d, d
    dec de
    jr z, jr_001_57ea

    dec hl
    and l
    dec d
    and l
    dec d
    nop
    nop
    inc [hl]

jr_001_5788:
    ld a, a
    adc d
    dec a
    adc d
    dec a
    nop
    nop
    nop
    ld d, b
    ld l, $59
    ld l, $59
    ld a, l
    ld h, d
    nop
    ld h, h
    rst $28
    ld [hl], c
    rst $28
    ld [hl], c
    rst $38
    ld a, a
    sbc a
    inc bc
    rst $08
    ld bc, $01cf
    nop
    nop
    inc c
    nop
    inc [hl]
    ld sp, $3134
    ld a, l
    ld h, d
    rst $38
    ld d, a
    rst $28
    add hl, hl
    rst $28
    add hl, hl
    nop
    nop
    nop
    ld a, h
    rst $28
    ld a, l
    rst $28
    ld a, l
    rst $38
    ld a, a
    ldh [$03], a
    ldh [rSB], a
    ldh [rSB], a
    nop
    nop
    sbc a
    ld a, [bc]
    ld c, a
    dec b
    ld c, a
    dec b
    nop
    nop
    rst $18
    jr jr_001_5831

    ld c, d
    ld e, a
    ld c, d
    rst $38
    ld a, a
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
    ld c, b
    ld c, b

jr_001_57ea:
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc [hl]
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc a
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    sub b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop

jr_001_5831:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4848
    ld c, b
    sub c
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, l
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, a
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld d, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    sub [hl]
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sub a
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sbc b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sbc c
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, l
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, [hl]
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, a
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    adc l
    ld c, b
    ld c, b
    ld c, b
    ld e, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    ld bc, $4848
    ld c, b
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc [hl]
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
    ld c, b
    ld c, b
    ld c, b
    adc a
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
    ld c, b
    ld c, b
    ld c, b
    sub b
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
    ld bc, $4848
    ld c, b
    sub c
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
    ld c, b
    ld c, b
    ld c, b
    ld c, l
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
    ld c, b
    ld c, b
    ld c, b
    ld c, [hl]
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
    ld c, b
    ld c, b
    ld c, b
    ld c, a
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
    ld c, b
    ld c, b
    ld c, b
    ld d, b
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
    ld c, b
    ld c, b
    ld c, b
    sub [hl]
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
    sub a
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
    sbc b
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
    sbc c
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
    ld d, l
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
    ld d, [hl]
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
    ld d, a
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
    ld c, b
    ld c, b
    adc l
    ld c, b
    ld c, b
    ld e, b
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
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc [hl]
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    adc a
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    sub b
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
    ld bc, $4848
    ld c, b
    sub c
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
    ld c, b
    ld c, b
    ld c, b
    ld c, l
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, [hl]
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, a
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
    ld c, b
    ld c, b
    ld c, b
    ld d, b
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
    ld c, b
    ld c, b
    ld c, b
    sub [hl]
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    sub a
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    sbc b
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
    sbc c
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
    ld d, l
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld d, [hl]
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld d, a
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
    ld e, b
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
    ld hl, $1a12
    dec e
    inc e
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld hl, $0e1f
    dec de
    jr nz, jr_001_5dd6

    inc e
    jr nz, jr_001_5dce

    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_001_5def

    dec de
    stop
    ld c, b
    ld c, b

jr_001_5dce:
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop

jr_001_5dd6:
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

jr_001_5def:
    db $10
    add hl, de
    inc e
    dec de
    ld [de], a
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    add hl, de
    inc e
    inc e
    jr jr_001_5e08

jr_001_5e08:
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_001_5e2b

    ld h, $00
    ld de, $1912
    ld c, $26
    ld b, a
    rra
    ld [de], a
    dec e
    ld [de], a
    ld c, $21
    nop
    ld c, b
    ld c, b
    ld c, b

jr_001_5e2b:
    dec e
    rra
    ld [de], a
    add hl, de
    ld d, $20
    ld hl, $1b12
    nop
    ld c, b
    ld c, b
    ld c, b
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
    dec d
    ld [de], a
    add hl, de
    dec e
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
    db $10
    add hl, de
    ld [de], a
    ld c, $1b
    inc bc
    jr nz, @+$1e

    dec de
    inc d
    inc bc
    ld de, $210e
    ld c, $00
    nop
    nop
    nop
    nop
    db $10
    add hl, de
    ld [de], a
    ld c, $1b
    inc bc
    ld d, $1b
    jr nz, jr_001_5ea6

    rra
    inc bc
    ld de, $210e
    ld c, $00
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

jr_001_5ea6:
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
    nop
    nop
    nop
    ld hl, $211c
    ld c, $19
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    dec de
    ld c, $1a
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    ld hl, $1d26
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
    ld [de], a
    dec de
    inc hl
    cpl
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    inc h
    ld c, $23
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    inc e
    ld [hl+], a
    ld hl, $221d
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    add hl, de
    ld [de], a
    dec de
    inc d
    ld hl, $0015
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
    ld c, b
    ld c, b
    ld c, b
    jr nz, jr_001_6135

    ld [de], a
    ld [de], a
    dec e
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
    dec e
    ld d, $21
    db $10
    dec d
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

jr_001_6135:
    nop
    nop
    ld hl, $0e1f
    dec de
    jr nz, jr_001_615a

    cpl
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
    dec e
    ld [hl+], a
    ld b, $00
    ld hl, $1d20
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_615a:
    nop
    nop
    nop
    nop
    nop
    inc de
    ld d, $1b
    ld [de], a
    ld hl, $1b22
    ld [de], a
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
    db $10
    ld a, [de]
    ld de, $1f47
    ld c, $21
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld c, b
    ld hl, $0f0e
    add hl, de
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    dec de
    ld c, $1a
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    ld hl, $1d26
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
    inc hl
    inc e
    add hl, de
    ld [hl+], a
    ld a, [de]
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    dec e
    ld d, $21
    db $10
    dec d
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
    ld c, b
    ld c, b
    ld c, b
    ld hl, $0e1f
    dec de
    jr nz, jr_001_625e

    cpl
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
    ld c, b
    ld c, b
    ld c, b
    inc de
    ld d, $1b
    ld [de], a
    ld hl, $1b22
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_625e:
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    db $10
    ld a, [de]
    ld de, $1f47
    ld c, $21
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    dec e
    add hl, de
    ld c, $26
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
    nop
    nop
    jr nz, jr_001_62d2

    ld [de], a
    ld [de], a
    ld de, $0000
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
    add hl, de
    ld [de], a
    dec de
    inc d
    ld hl, $0015
    nop
    nop
    nop
    nop

jr_001_62d2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    inc e
    inc e
    dec e
    nop
    dec e
    inc e
    jr nz, jr_001_62e4

jr_001_62e4:
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
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld c, b
    ld hl, $0f0e
    add hl, de
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    dec de
    ld c, $1a
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    ld hl, $1d26
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
    jr jr_001_6393

    ld hl, $0000
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
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop

jr_001_6393:
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    inc hl
    inc e
    add hl, de
    ld [hl+], a
    ld a, [de]
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    dec e
    ld d, $21
    db $10
    dec d
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
    ld c, b
    ld c, b
    ld c, b
    inc de
    ld d, $1b
    ld [de], a
    ld hl, $1b22
    ld [de], a
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
    inc e
    inc de
    inc de
    jr nz, jr_001_640a

    ld hl, $0000
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
    add hl, de
    ld [de], a
    dec de

jr_001_640a:
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
    add hl, de
    inc e
    inc e
    dec e
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
    jr nz, jr_001_644e

    ld [de], a
    ld [de], a
    ld de, $0000
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
    db $10
    add hl, de
    ld d, $1d
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_644e:
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
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld c, b
    ld hl, $0f0e
    add hl, de
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    dec de
    ld c, $1a
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    ld hl, $1d26
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
    ld [de], a
    dec de
    inc hl
    cpl
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    inc e
    ld [hl+], a
    ld hl, $221d
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    add hl, de
    ld [de], a
    dec de
    inc d
    ld hl, $0015
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
    ld c, b
    ld c, b
    ld c, b
    dec e
    ld d, $21
    db $10
    dec d
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
    ld c, b
    ld c, b
    ld c, b
    inc hl
    ld d, $0f
    rra
    ld c, $21
    inc e
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
    ld hl, $0e1f
    dec de
    jr nz, jr_001_657e

    cpl
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
    db $10
    ld a, [de]
    ld de, $1f47
    ld c, $21
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_657e:
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
    ld hl, $0f0e
    add hl, de
    ld [de], a
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
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld bc, $4848
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld c, b
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
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    adc l
    adc l
    adc l
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    adc l
    adc l
    adc l
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
    adc l
    adc l
    adc l
    adc l
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
    adc l
    adc l
    adc l
    adc l
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
    adc l
    adc l
    adc l
    adc l
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
    adc l
    adc l
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    adc l
    adc l
    adc l
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    adc l
    adc l
    adc l
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    adc l
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
    adc l
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
    adc l
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    jr nz, @+$18

    inc d
    dec de
    ld c, $19
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    inc de
    ld d, $19
    ld hl, $1f12
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld de, $2016
    ld hl, $0000
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    ld bc, $4848
    ld c, b
    dec e
    dec d
    ld c, $20
    ld [de], a
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    inc h
    ld c, $23
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc b
    jr z, jr_001_694f

jr_001_694f:
    inc de
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    inc hl
    inc e
    add hl, de
    ld [hl+], a
    ld a, [de]
    ld [de], a
    nop
    nop
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    db $10
    ld [hl+], a
    ld hl, $131c
    inc de
    nop
    nop
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    jr nz, @+$17

    ld d, $13
    ld hl, $0000
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld d, $1a
    ld d, $21
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    dec d
    ld c, $20
    ld [de], a
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    adc a
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    sub b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4848
    ld c, b
    sub c
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, l
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sub a
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sbc b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    sbc c
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld d, a
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc l
    ld e, b
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    nop
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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

Call_001_6cef:
    push bc
    add sp, -$02
    call Call_001_55e1
    ld b, d
    ld c, e
    ld a, c
    or b
    jp nz, Jump_001_6d0a

    ld a, $01
    ldh [rVBK], a
    call Call_000_17ca
    ld a, $00
    ldh [rVBK], a
    jp Jump_001_6d37


Jump_001_6d0a:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $00
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_6d31

    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_001_7e09
    add sp, $02
    jp Jump_001_6d37


Jump_001_6d31:
    push bc
    call Call_001_7e5c
    add sp, $02

Jump_001_6d37:
    add sp, $02
    pop bc
    ret


    push bc
    call Call_001_55e1
    ld b, d
    ld c, e
    xor a
    ld hl, $ff90
    or [hl]
    jp nz, Jump_001_6d4c

    call Call_000_144b

Jump_001_6d4c:
    ld a, c
    or b
    jp nz, Jump_001_6d54

    call Call_000_144b

Jump_001_6d54:
    push bc
    call Call_001_7e09
    add sp, $02
    pop bc
    ret


Call_001_6d5c:
    push bc
    add sp, -$06
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp nz, Jump_001_6f83

    ld hl, $c402
    ld a, [hl]
    cp $0d
    jp nz, Jump_001_6d84

    ld a, $01
    jr jr_001_6d85

Jump_001_6d84:
    xor a

jr_001_6d85:
    ld hl, sp+$04
    ld [hl], a
    or a
    jp nz, Jump_001_6dba

    ld hl, $c402
    ld a, [hl]
    cp $09
    jp z, Jump_001_6dba

    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_6dba

    ld a, $01
    ldh [rVBK], a
    ld hl, $74a1
    push hl
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a

Jump_001_6dba:
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp z, Jump_001_6e40

    cp $02
    jp z, Jump_001_6f28

    cp $03
    jp z, Jump_001_6e29

    cp $04
    jp z, Jump_001_6dfd

    cp $05
    jp z, Jump_001_6e57

    cp $06
    jp z, Jump_001_6ee3

    cp $08
    jp z, Jump_001_6efa

    cp $09
    jp z, Jump_001_6e6e

    cp $0a
    jp z, Jump_001_6f11

    xor a
    ld hl, sp+$04
    or [hl]
    jp nz, Jump_001_6e99

    jp Jump_001_6f3c


Jump_001_6dfd:
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_001_6e11

    ld de, $74b5
    ld hl, $c7ac
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_001_6e1a


Jump_001_6e11:
    ld de, $74ba
    ld hl, $c7ac
    ld [hl], e
    inc hl
    ld [hl], d

Jump_001_6e1a:
    ld hl, $c7ac
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_6f3c


Jump_001_6e29:
    ld hl, $74bf
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6e40:
    ld hl, $74c6
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6e57:
    ld hl, $74ce
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c41c
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6e6e:
    ld hl, $74d5
    push hl
    call Call_000_2eda
    add sp, $02
    ld b, $57
    ld c, $40
    ld l, b
    ld h, c
    push hl
    ld a, $1c
    push af
    inc sp
    call Call_000_0bed
    ld c, e
    add sp, $03
    xor a
    or c
    jp z, Jump_001_6f3c

    ld hl, $c556
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_6f3c


Jump_001_6e99:
    ld hl, $74de
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c556
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$05
    ld [hl], $00

Jump_001_6eaf:
    ld hl, $c556
    push hl
    call Call_000_36e0
    ld c, d
    ld b, e
    add sp, $02
    ld a, $0c
    sub b
    ld hl, $c7ac
    ld [hl], a
    ld a, $00
    sbc c
    inc hl
    ld [hl], a
    ld hl, sp+$05
    ld c, [hl]
    ld b, $00
    ld hl, $c7ac
    ld a, [hl]
    cp c
    jr nz, jr_001_6eda

    inc hl
    ld a, [hl]
    cp b
    jr nz, jr_001_6eda

    jp Jump_001_6f3c


jr_001_6eda:
    call Call_000_2f24
    ld hl, sp+$05
    inc [hl]
    jp Jump_001_6eaf


Jump_001_6ee3:
    ld hl, $74e4
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c577
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6efa:
    ld hl, $74eb
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c42b
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6f11:
    ld hl, $74f1
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c442
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6f28:
    ld hl, $74f8
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c418
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_001_6f3c:
    ld hl, $c574
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c575
    ld a, [hl]
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, sp+$00
    ld a, [hl]
    sbc $11
    inc hl
    ld a, [hl]
    sbc $98
    inc hl
    ld a, [hl]
    sbc $00
    inc hl
    ld a, [hl]
    sbc $00
    jp nc, Jump_001_6f70

    ld a, $20
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_001_6f3c


Jump_001_6f70:
    ld hl, $c402
    ld a, [hl]
    cp $09
    jp z, Jump_001_6f83

    xor a
    ld hl, sp+$04
    or [hl]
    jp nz, Jump_001_6f83

    call Call_000_2c79

Jump_001_6f83:
    add sp, $06
    pop bc
    ret


    ld c, h
    ld c, c
    ld d, h
    ld d, h
    ld c, h
    ld b, l
    jr nz, jr_001_6fe2

    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_001_6fd9

    ld c, d
    jr nz, jr_001_6fee

    add hl, sp
    ld l, $32
    ld l, $4c
    jr nz, jr_001_6fbf

    ld [hl+], a
    jr nz, @+$34

    jr nc, @+$32

    jr nc, jr_001_6fc6

    ld c, d
    ld c, a
    ld c, b
    ld b, c
    ld c, [hl]
    jr nz, @+$4d

    ld c, a
    ld d, h
    ld c, h
    ld c, c
    ld c, [hl]
    ld d, e
    ld c, e
    ld c, c
    nop
    nop
    ld d, h
    ld c, a
    ld c, a
    jr nz, jr_001_6ffe

    ld d, l
    ld d, e
    ld e, c

jr_001_6fbf:
    ld hl, $4100
    ld a, [hl-]
    jr nz, jr_001_7017

    ld d, l

jr_001_6fc6:
    ld c, [hl]
    jr nz, jr_001_701d

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_001_702a

    jr nc, jr_001_7001

    dec l
    ld sp, $3d46
    ld d, b
    ld c, h
    ld b, c
    ld e, c

jr_001_6fd9:
    inc l
    jr nz, jr_001_700e

    jr nc, jr_001_701b

    ld d, e
    ld d, h
    ld c, a
    ld d, b

jr_001_6fe2:
    ld e, l
    nop
    ld b, d
    ld a, [hl-]
    jr nz, jr_001_7035

    ld b, c
    ld e, c
    ld b, d
    ld b, l
    jr nz, jr_001_703e

jr_001_6fee:
    ld c, h
    ld b, c
    ld e, c
    jr nz, jr_001_7041

    ld c, a
    ld d, h
    ld b, l
    dec sp
    jr nz, jr_001_703d

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    ld d, e

jr_001_6ffe:
    dec a
    ld d, b
    ld d, d

jr_001_7001:
    ld c, a
    ld b, d
    ld b, c
    ld b, d
    ld c, c
    ld c, h
    ld c, c
    ld d, h
    ld e, c
    jr nz, jr_001_7067

    jr nc, jr_001_704b

jr_001_700e:
    ld c, [hl]
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d
    inc l
    jr nz, @+$48

    dec a

jr_001_7017:
    ld b, c
    ld c, h
    ld d, a
    ld b, c

jr_001_701b:
    ld e, c
    ld d, e

jr_001_701d:
    ld e, l
    nop
    ld b, d
    ld a, [hl-]
    jr nz, @+$4f

    ld b, c
    ld e, c
    ld b, d
    ld b, l
    jr nz, jr_001_7071

    ld c, a

jr_001_702a:
    ld d, b
    dec sp
    jr nz, jr_001_705f

    ld d, e
    ld d, h
    jr nz, @+$46

    ld c, c
    ld b, a
    ld c, c

jr_001_7035:
    ld d, h
    dec a
    ld d, b
    ld d, d
    ld c, a
    ld b, d
    ld b, c
    ld b, d

jr_001_703d:
    ld c, c

jr_001_703e:
    ld c, h
    ld c, c
    ld d, h

jr_001_7041:
    ld e, c
    jr nz, jr_001_709f

    jr nc, jr_001_7083

    ld c, [hl]
    ld b, l
    ld d, [hl]
    ld b, l
    ld d, d

jr_001_704b:
    inc l
    jr nz, jr_001_7094

    dec a
    ld c, h
    ld c, c
    ld c, e
    ld b, l
    ld c, h
    ld e, c
    ld e, l
    inc l
    jr nz, jr_001_708b

    ld c, [hl]
    ld b, h
    jr nz, jr_001_70a1

    ld c, c
    ld b, a

jr_001_705f:
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld d, h
    ld b, l
    ld d, b
    nop

jr_001_7067:
    ld b, e
    ld a, [hl-]
    jr nz, @+$45

    ld c, b
    ld c, a
    ld d, d
    ld b, h
    jr nz, jr_001_70cc

jr_001_7071:
    ld b, l
    ld b, c
    ld b, e
    ld c, b
    jr nz, jr_001_70bb

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld b, l
    ld c, l
    ld c, c
    ld d, h
    ld c, a
    ld c, [hl]

jr_001_7083:
    ld b, l
    ld d, e
    jr nz, jr_001_70db

    ld c, a
    jr nz, jr_001_70cb

    ld b, h

jr_001_708b:
    ld b, h
    ld e, l
    nop
    ld b, h
    ld a, [hl-]
    jr nz, jr_001_70d6

    ld b, l
    ld c, h

jr_001_7094:
    ld b, c
    ld e, c
    jr nz, jr_001_70e6

    ld c, a
    ld d, h
    ld b, l
    jr nz, jr_001_70f8

    ld d, h
    ld c, c

jr_001_709f:
    ld b, e
    ld c, e

jr_001_70a1:
    ld d, e
    ld e, l
    nop
    ld b, l
    ld a, [hl-]
    jr nz, @+$58

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    jr nz, jr_001_70f4

    ld c, [hl]
    ld d, [hl]
    ld b, l
    ld c, h
    ld c, a
    ld d, b
    ld b, l
    dec sp
    jr nz, jr_001_70ea

    ld d, e
    ld d, h

jr_001_70bb:
    jr nz, @+$46

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld b, c
    ld d, h
    ld d, h
    ld b, c
    ld b, e
    ld c, e
    inc l
    jr nz, jr_001_70fd

jr_001_70cb:
    ld c, [hl]

jr_001_70cc:
    ld b, h
    jr nz, jr_001_7113

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, d
    ld b, l

jr_001_70d6:
    ld c, h
    ld b, l
    ld b, c
    ld d, e
    ld b, l

jr_001_70db:
    jr nz, @+$5d

    ld sp, $372d
    dec a
    ld d, d
    ld c, c
    ld d, e
    ld b, l
    inc l

jr_001_70e6:
    jr nz, jr_001_712e

    dec l
    add hl, sp

jr_001_70ea:
    dec a
    ld b, h
    ld b, l
    ld b, e
    ld b, c
    ld e, c
    inc l
    jr nz, jr_001_7123

    dec a

jr_001_70f4:
    ld d, e
    ld d, l
    ld d, e
    ld d, h

jr_001_70f8:
    ld b, c
    ld c, c
    ld c, [hl]
    ld e, l
    dec sp

jr_001_70fd:
    jr nz, jr_001_7148

    ld c, [hl]
    jr nz, @+$59

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_001_714a

    ld c, b
    ld b, c
    ld c, [hl]
    ld c, [hl]
    ld b, l
    ld c, h
    inc l
    jr nz, jr_001_7155

    jr nz, jr_001_7165

    ld b, l

jr_001_7113:
    ld d, h
    ld d, e
    jr nz, jr_001_716d

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    jr nz, jr_001_7179

    jr nc, jr_001_715d

    ld c, l
    ld c, c
    ld c, [hl]

jr_001_7123:
    inc l
    jr nz, @+$35

    dec a
    ld c, l
    ld b, c
    ld e, b
    ld e, l
    nop
    ld b, [hl]
    ld a, [hl-]

jr_001_712e:
    jr nz, jr_001_7176

    ld c, c
    ld c, [hl]
    ld b, l
    ld d, h
    ld d, l
    ld c, [hl]
    ld b, l
    jr nz, @+$5d

    ld d, b
    ld d, l
    ld [hl-], a
    jr nz, jr_001_7192

    ld d, l
    ld c, [hl]
    ld b, l
    inc l
    ld b, [hl]
    ld c, c
    ld c, [hl]
    ld b, l
    ld d, h
    ld d, l

jr_001_7148:
    ld c, [hl]
    ld b, l

jr_001_714a:
    ld e, l
    nop
    ld b, [hl]
    ld a, [hl-]
    jr nz, @+$4d

    ld c, c
    ld d, h
    cpl
    ld d, e
    ld e, c

jr_001_7155:
    ld c, [hl]
    ld d, h
    ld c, b
    jr nz, jr_001_71a9

    ld b, [hl]
    ld b, [hl]
    ld d, e

jr_001_715d:
    ld b, l
    ld d, h
    dec sp
    jr nz, jr_001_7192

    ld sp, $372d

jr_001_7165:
    ld b, [hl]
    dec a
    ld c, c
    ld c, [hl]
    ld b, e
    ld d, d
    ld b, l
    ld b, c

jr_001_716d:
    ld d, e
    ld b, l
    inc l
    jr nz, jr_001_71b8

    ld b, [hl]
    dec l
    jr c, jr_001_71a6

jr_001_7176:
    dec a
    ld b, h
    ld b, l

jr_001_7179:
    ld b, e
    ld d, d
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    nop
    ld b, a
    ld a, [hl-]
    jr nz, jr_001_71d7

    ld b, l
    ld d, h
    jr nz, jr_001_71cf

    ld d, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_001_71ea

    jr nc, jr_001_71c1

    dec l

jr_001_7192:
    ld sp, $5d46
    nop
    ld c, b
    jr nc, jr_001_71f1

    ld a, [hl-]
    jr nz, jr_001_71e4

    ld c, a
    ld d, b
    jr nz, jr_001_71f4

    ld c, a
    jr nz, jr_001_71f1

    ld b, l
    ld e, b
    ld d, h

jr_001_71a6:
    jr nz, jr_001_71f8

    ld c, b

jr_001_71a9:
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    dec sp
    jr nz, @+$5a

    dec a
    ld b, h
    ld d, e
    ld d, h
    ld l, $53
    ld d, h
    ld b, l

jr_001_71b8:
    ld d, b
    ld l, $20
    ld c, b
    ld sp, $2d30
    ld c, b
    ld b, [hl]

jr_001_71c1:
    ld b, l
    ld a, [hl-]
    jr nz, jr_001_7211

    ld c, a
    ld c, a
    ld d, b
    dec sp
    jr nz, jr_001_71fc

    ld d, e
    ld d, h
    jr nz, jr_001_7213

jr_001_71cf:
    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, h
    ld c, c
    ld c, l

jr_001_71d7:
    ld b, l
    ld d, e
    inc l
    jr nz, jr_001_720e

    ld c, [hl]
    ld b, h
    jr nz, jr_001_7224

    ld c, c
    ld b, a
    ld c, c
    ld d, h

jr_001_71e4:
    dec a
    ld b, h
    ld d, e
    ld d, h
    ld l, $53

jr_001_71ea:
    ld d, h
    ld b, l
    ld d, b
    ld l, $20
    ld c, b
    ld b, [hl]

jr_001_71f1:
    ld b, [hl]
    dec a
    ld d, e

jr_001_71f4:
    ld d, h
    ld c, a
    ld d, b
    nop

jr_001_71f8:
    ld c, b
    ld a, [hl-]
    jr nz, jr_001_7244

jr_001_71fc:
    ld c, a
    ld d, b
    jr nz, jr_001_7254

    ld c, a
    jr nz, @+$55

    ld d, h
    ld b, l
    ld d, b
    dec sp
    jr nz, jr_001_723a

    ld d, e
    ld d, h
    jr nz, jr_001_7251

    ld c, c

jr_001_720e:
    ld b, a
    ld c, c
    ld d, h

jr_001_7211:
    dec a
    ld d, h

jr_001_7213:
    ld c, c
    ld c, l
    ld b, l
    ld d, e
    jr nz, jr_001_7274

    jr nc, @+$3f

    ld c, h
    ld c, a
    ld c, a
    ld d, b
    ld e, l
    inc l
    jr nz, jr_001_7255

    ld c, [hl]

jr_001_7224:
    ld b, h
    jr nz, jr_001_726b

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld d, e
    ld d, h
    ld b, l
    ld d, b
    ld l, $20
    ld c, b
    ld b, [hl]
    ld b, [hl]
    dec a
    ld d, e
    ld d, h
    ld c, a
    ld d, b

jr_001_723a:
    jr nz, @+$52

    ld c, h
    ld b, c
    ld e, c
    ld c, c
    ld c, [hl]
    ld b, a
    nop
    ld c, e

jr_001_7244:
    ld a, [hl-]
    jr nz, @+$4d

    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$50

    ld c, a
    ld d, h
    ld b, l
    jr nz, @+$43

jr_001_7251:
    ld b, [hl]
    ld d, h
    ld b, l

jr_001_7254:
    ld d, d

jr_001_7255:
    jr nz, jr_001_72a5

    jr nz, jr_001_72ad

    ld c, c
    ld b, e
    ld c, e
    ld d, e
    nop
    ld c, h
    ld a, [hl-]
    jr nz, jr_001_72b5

    ld c, h
    ld c, c
    ld b, h
    ld b, l
    jr nz, jr_001_72bc

    ld c, a
    jr nz, jr_001_72b9

jr_001_726b:
    ld c, a
    ld d, h
    ld b, l
    inc l
    jr nz, jr_001_72b5

    ld c, c
    ld b, a
    ld c, c

jr_001_7274:
    ld d, h
    ld d, e
    dec a
    ld d, h
    ld c, c
    ld c, l
    ld b, l
    ld l, $20
    ld c, c
    ld c, [hl]
    jr nz, @+$56

    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld d, e
    inc l
    jr nz, jr_001_72de

    ld d, e
    ld b, l
    jr nz, jr_001_72d2

    ld l, $47
    ld l, $20
    jr nc, @+$37

    ld c, h
    jr nc, jr_001_72ce

    jr nz, jr_001_72ec

    ld c, a
    jr nz, jr_001_72ee

    ld c, h
    ld c, c
    ld b, h
    ld b, l
    jr nz, jr_001_72d6

    jr nz, jr_001_72f1

    ld c, a
    ld d, h

jr_001_72a5:
    ld b, l
    ld d, e
    jr nz, jr_001_72fe

    ld d, b
    jr nz, jr_001_72f5

    ld c, [hl]

jr_001_72ad:
    jr nz, jr_001_72e7

    jr nz, @+$56

    ld c, c
    ld b, e
    ld c, e
    ld d, e

jr_001_72b5:
    ld l, $00
    ld c, l
    ld a, [hl-]

jr_001_72b9:
    jr nz, jr_001_7308

    ld b, c

jr_001_72bc:
    ld d, e
    ld d, h
    ld b, l
    ld d, d
    jr nz, jr_001_7318

    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    jr nz, jr_001_7324

    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    inc l

jr_001_72ce:
    ld d, d
    ld c, c
    ld b, a
    ld c, b

jr_001_72d2:
    ld d, h
    ld e, l
    jr nz, @+$5d

jr_001_72d6:
    jr nc, @+$2f

    scf
    dec a
    ld b, c
    ld b, d
    ld d, e
    ld c, a

jr_001_72de:
    ld c, h
    ld d, l
    ld d, h
    ld b, l
    jr nz, jr_001_733a

    ld b, c
    ld c, h
    ld d, l

jr_001_72e7:
    ld b, l
    inc l
    jr nz, jr_001_7323

    dec a

jr_001_72ec:
    ld c, [hl]
    ld c, a

jr_001_72ee:
    jr nz, jr_001_7333

    ld c, b

jr_001_72f1:
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l

jr_001_72f5:
    inc l
    jr nz, @+$3b

    dec l
    ld b, d
    dec a
    ld c, c
    ld c, [hl]
    ld b, e

jr_001_72fe:
    ld d, d
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    inc l
    jr nz, jr_001_734c

    dec l
    ld b, e

jr_001_7308:
    dec a
    ld b, h
    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    ld e, l
    nop
    ld c, a
    ld a, [hl-]
    jr nz, @+$55

    ld b, l

jr_001_7318:
    ld d, h
    jr nz, @+$51

    ld d, l
    ld d, h
    ld d, b
    ld d, l
    ld d, h
    jr nz, jr_001_737d

    ld c, h

jr_001_7323:
    ld b, l

jr_001_7324:
    ld b, [hl]
    ld d, h
    cpl
    ld d, d
    ld c, c
    ld b, a
    ld c, b
    ld d, h
    ld e, l
    nop
    ld d, b
    ld a, [hl-]
    jr nz, jr_001_7382

    ld c, c

jr_001_7333:
    ld d, h
    ld b, e
    ld c, b
    jr nz, jr_001_737a

    ld b, l
    ld c, [hl]

jr_001_733a:
    ld b, h
    jr nz, jr_001_7398

    jr nc, jr_001_7370

    dec l
    scf
    ld b, [hl]
    dec a
    ld d, l
    ld d, b
    inc l
    jr nz, jr_001_738e

    ld b, [hl]
    dec l
    jr c, jr_001_737c

jr_001_734c:
    dec a
    ld b, h
    ld c, a
    ld d, a
    ld c, [hl]
    inc l
    jr nz, jr_001_7384

    jr nc, jr_001_7393

    ld c, a
    ld b, [hl]
    ld b, [hl]
    ld e, l
    nop
    ld d, d
    ld a, [hl-]
    jr nz, jr_001_73b1

    ld b, l
    ld d, h
    ld d, d
    ld c, c
    ld b, a
    dec sp
    jr nz, jr_001_7398

    ld d, e
    ld d, h
    jr nz, jr_001_73af

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a

jr_001_7370:
    ld d, [hl]
    ld c, a
    ld c, h
    ld d, l
    ld c, l
    ld b, l
    jr nz, jr_001_73bb

    ld c, b
    ld b, c

jr_001_737a:
    ld c, [hl]
    ld b, a

jr_001_737c:
    ld b, l

jr_001_737d:
    jr nz, jr_001_73da

    jr nc, jr_001_73be

    ld c, a

jr_001_7382:
    ld b, [hl]
    ld b, [hl]

jr_001_7384:
    inc l
    jr nz, @+$33

    dec l
    scf
    dec a
    ld c, c
    ld c, [hl]
    ld b, e
    inc l

jr_001_738e:
    jr nz, jr_001_73c9

    dec l
    ld b, [hl]
    dec a

jr_001_7393:
    ld b, h
    ld b, l
    ld b, e
    ld e, l
    inc l

jr_001_7398:
    jr nz, @+$34

    ld c, [hl]
    ld b, h
    jr nz, jr_001_73e2

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
    dec sp
    jr nz, jr_001_73fd

    jr c, jr_001_7405

    dec a
    ld d, d

jr_001_73af:
    ld b, l
    ld d, e

jr_001_73b1:
    ld e, c
    ld c, [hl]
    ld b, e
    dec sp
    jr nz, jr_001_7409

    jr c, jr_001_73ff

    dec a
    ld d, d

jr_001_73bb:
    ld b, l
    ld d, e
    ld e, c

jr_001_73be:
    ld c, [hl]
    ld b, e
    jr nz, @+$51

    ld b, [hl]
    ld b, [hl]
    nop
    ld d, h
    ld a, [hl-]
    jr nz, jr_001_741c

jr_001_73c9:
    ld b, l
    ld d, h
    jr nz, jr_001_7421

    ld b, l
    ld c, l
    ld d, b
    ld c, a
    dec sp
    jr nz, jr_001_7406

    jr c, jr_001_7403

    ld b, [hl]
    ld b, [hl]
    dec a
    inc [hl]

jr_001_73da:
    jr nc, jr_001_7409

    ld [hl-], a
    dec [hl]
    dec [hl]
    jr nz, jr_001_7423

    ld d, b

jr_001_73e2:
    ld c, l
    inc l
    jr nz, jr_001_7416

    jr nc, jr_001_7415

    ld [hl-], a
    scf
    dec a
    ld [hl-], a
    dec [hl]
    ld [hl], $2d
    ld [hl-], a
    add hl, sp
    dec [hl]
    jr nz, jr_001_7436

    ld d, b
    ld c, l
    nop
    ld d, [hl]
    ld a, [hl-]
    jr nz, jr_001_7451

    ld c, c
    ld b, d

jr_001_73fd:
    ld d, d
    ld b, c

jr_001_73ff:
    ld d, h
    ld c, a
    jr nz, jr_001_745e

jr_001_7403:
    ld d, e
    ld d, b

jr_001_7405:
    ld b, l

jr_001_7406:
    ld b, l
    ld b, h
    inc l

jr_001_7409:
    ld b, h
    ld b, l
    ld d, b
    ld d, h
    ld c, b
    ld e, l
    dec sp
    jr nz, jr_001_7468

    jr nc, jr_001_7444

    dec a

jr_001_7415:
    ld d, e

jr_001_7416:
    ld d, h
    ld c, a
    ld d, b
    nop
    ld d, a
    ld a, [hl-]

jr_001_741c:
    jr nz, @+$59

    ld b, c
    ld d, [hl]
    ld b, l

jr_001_7421:
    nop
    ld d, a

jr_001_7423:
    ld a, [hl-]
    jr nz, jr_001_747d

    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_001_7486

    ld d, e
    ld d, b
    ld b, l
    ld b, l
    ld b, h
    inc l
    ld c, h
    ld b, l
    ld c, [hl]
    ld b, a
    ld d, h

jr_001_7436:
    ld c, b
    ld e, l
    jr nz, jr_001_746a

    dec a
    ld c, [hl]
    ld c, a
    jr nz, jr_001_7482

    ld c, b
    ld b, c
    ld c, [hl]
    ld b, a
    ld b, l

jr_001_7444:
    nop
    ld e, d
    ld a, [hl-]
    jr nz, jr_001_749b

    ld b, c
    ld c, [hl]
    ld b, h
    ld c, a
    ld c, l
    ld c, c
    ld e, d
    ld b, l

jr_001_7451:
    dec sp
    jr nz, jr_001_74a6

    ld b, l
    ld b, h
    ld c, a
    jr nz, jr_001_74a5

    ld b, c
    ld d, e
    ld d, h
    jr nz, jr_001_74a1

jr_001_745e:
    ld c, l
    ld b, h
    jr nz, jr_001_74b9

    ld c, c
    ld d, h
    ld c, b
    jr nz, jr_001_74b9

    ld b, c

jr_001_7468:
    ld c, [hl]
    ld b, h

jr_001_746a:
    ld c, a
    ld c, l
    jr nz, jr_001_74c4

    ld b, c
    ld c, h
    ld d, l
    ld b, l
    jr nz, jr_001_74c2

    jr nz, jr_001_74b7

    ld b, h
    ld b, h
    ld b, l
    ld b, h
    jr nz, jr_001_74d0

    ld c, a

jr_001_747d:
    jr nz, jr_001_74cb

    ld b, c
    ld d, e
    ld d, h

jr_001_7482:
    jr nz, jr_001_74c7

    ld c, l
    ld b, h

jr_001_7486:
    jr nz, jr_001_74de

    ld b, c
    ld c, h
    ld d, l
    ld b, l
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_001_749b:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_001_74a1:
    nop
    nop
    nop
    nop

jr_001_74a5:
    nop

jr_001_74a6:
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
    ld bc, $0101
    ld c, h
    ld c, c

jr_001_74b7:
    ld d, [hl]
    ld b, l

jr_001_74b9:
    nop
    ld d, e
    ld c, a
    ld c, [hl]
    ld b, a
    nop
    ld b, e
    ld c, b
    ld b, c

jr_001_74c2:
    ld c, c
    ld c, [hl]

jr_001_74c4:
    jr nz, jr_001_74c6

jr_001_74c6:
    ld d, b

jr_001_74c7:
    ld c, b
    ld d, d
    ld b, c
    ld d, e

jr_001_74cb:
    ld b, l
    jr nz, jr_001_74ce

jr_001_74ce:
    ld d, h
    ld b, c

jr_001_74d0:
    ld b, d
    ld c, h
    ld b, l
    jr nz, jr_001_74d5

jr_001_74d5:
    ld d, b
    ld d, d
    ld c, a
    ld c, d
    ld b, l
    ld b, e
    ld d, h
    jr nz, jr_001_74de

jr_001_74de:
    ld b, [hl]
    ld c, c
    ld c, h
    ld b, l
    jr nz, jr_001_74e4

jr_001_74e4:
    ld c, c
    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    jr nz, jr_001_74eb

jr_001_74eb:
    ld d, a
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_001_74f1

jr_001_74f1:
    ld d, e
    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    jr nz, jr_001_74f8

jr_001_74f8:
    ld b, a
    ld d, d
    ld c, a
    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_001_7500

jr_001_7500:
    push bc
    add sp, -$02
    ld hl, $c7ab
    ld [hl], $00
    ld de, $c6a8
    ld hl, $c7a9
    ld [hl], e
    inc hl
    ld [hl], d
    ld c, $00

Jump_001_7513:
    ld a, c
    cp $14
    jp nc, Jump_001_7552

    ld a, $a8
    add c
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp nz, Jump_001_754e

Jump_001_7528:
    ld a, c
    cp $14
    jp nc, Jump_001_753f

    ld b, c
    inc c
    ld a, $a8
    add b
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, $20
    ld [de], a
    jp Jump_001_7528


Jump_001_753f:
    ld a, $a8
    add c
    ld e, a
    ld a, $c6
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_001_7552


Jump_001_754e:
    inc c
    jp Jump_001_7513


Jump_001_7552:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_7577

    ld a, $01
    ldh [rVBK], a
    ld hl, $748d
    push hl
    push af
    inc sp
    ld a, $14
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a

Jump_001_7577:
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld c, $00

Jump_001_7596:
    ld a, c
    cp $14
    jp nc, Jump_001_75b4

    ld hl, $c7a9
    ld a, [hl]
    add c
    ld e, a
    inc hl
    ld a, [hl]
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    inc c
    jp Jump_001_7596


Jump_001_75b4:
    ld hl, sp+$00
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c574
    ld [hl+], a
    ld [hl], e
    ld hl, $c7a8
    ld [hl], $32
    add sp, $02
    pop bc
    ret


    ld hl, $75d0
    push hl
    call Call_000_0dab
    add sp, $02
    ret


    ld c, a
    ld d, l
    ld d, h
    jr nz, @+$51

    ld b, [hl]
    jr nz, @+$4f

    ld b, l
    ld c, l
    ld c, a
    ld d, d
    ld e, c
    ld l, $20
    ld b, e
    ld c, h
    ld b, l
    ld b, c
    ld c, [hl]
    jr nz, jr_001_7639

    ld c, a
    ld c, [hl]
    ld b, a
    jr nz, @+$46

    ld b, c
    ld d, h
    ld b, c
    jr nz, jr_001_7639

    ld c, [hl]
    jr nz, @+$52

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
    ld hl, $760b
    push hl
    call Call_000_0dab
    add sp, $02
    ret


    ld d, h
    ld b, c
    ld d, b
    jr nz, jr_001_7651

    jr nz, @+$56

    ld c, a
    jr nz, jr_001_7656

    ld b, h
    ld b, h
    jr nz, jr_001_765c

    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld hl, $2100
    add hl, hl
    db $76
    push hl
    call Call_000_0dab
    add sp, $02
    ret


    ld d, h
    ld b, c
    ld d, b
    jr nz, @+$43

    jr nz, jr_001_7684

    ld c, a
    jr nz, jr_001_7674

    ld b, h
    ld b, h
    jr nz, jr_001_7687

    ld c, b
    ld d, d

jr_001_7639:
    ld b, c
    ld d, e
    ld b, l
    ld hl, $2100
    ld c, b
    db $76
    push hl
    call Call_000_0dab
    add sp, $02
    ret


    ld c, l
    ld b, c
    ld e, b
    jr nz, jr_001_767e

    ld [hl], $20
    ld c, l
    ld b, c

jr_001_7651:
    ld d, d
    ld c, e
    ld d, e
    nop
    push bc

jr_001_7656:
    add sp, -$04
    ld hl, $c574
    ld a, [hl+]

jr_001_765c:
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    xor a
    ld hl, sp+$08
    or [hl]
    jp z, Jump_001_7773

    xor a
    ld a, $13
    ld hl, sp+$08
    sbc [hl]
    jp nc, Jump_001_7674

    call Call_000_144b

Jump_001_7674:
jr_001_7674:
    ld hl, sp+$08
    ld a, [hl]
    cp $02
    jp z, Jump_001_769f

    ld hl, sp+$08

jr_001_767e:
    ld a, [hl]
    cp $06
    jp z, Jump_001_76db

jr_001_7684:
    ld hl, sp+$08
    ld a, [hl]

jr_001_7687:
    cp $08
    jp z, Jump_001_76bd

    ld hl, sp+$08
    ld a, [hl]
    cp $0f
    jp z, Jump_001_76f9

    ld hl, sp+$08
    ld a, [hl]
    cp $12
    jp z, Jump_001_772b

    jp Jump_001_7749


Jump_001_769f:
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp nz, Jump_001_76b0

    ld de, $6fe4
    ld c, e
    ld b, d
    jp Jump_001_76b5


Jump_001_76b0:
    ld de, $701f
    ld c, e
    ld b, d

Jump_001_76b5:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_775f


Jump_001_76bd:
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp nz, Jump_001_76ce

    ld de, $7196
    ld c, e
    ld b, d
    jp Jump_001_76d3


Jump_001_76ce:
    ld de, $71f8
    ld c, e
    ld b, d

Jump_001_76d3:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_775f


Jump_001_76db:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_001_76ec

    ld de, $714c
    ld c, e
    ld b, d
    jp Jump_001_76f1


Jump_001_76ec:
    ld de, $712c
    ld c, e
    ld b, d

Jump_001_76f1:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_775f


Jump_001_76f9:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp z, Jump_001_770a

    cp $03
    jp z, Jump_001_7715

    jp Jump_001_7720


Jump_001_770a:
    ld de, $779f
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_001_775f


Jump_001_7715:
    ld de, $77e8
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_001_775f


Jump_001_7720:
    ld de, $7816
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_001_775f


Jump_001_772b:
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_001_773c

    ld de, $7422
    ld c, e
    ld b, d
    jp Jump_001_7741


Jump_001_773c:
    ld de, $741a
    ld c, e
    ld b, d

Jump_001_7741:
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_775f


Jump_001_7749:
    ld hl, sp+$08
    ld a, [hl]
    add a
    ld c, a
    ld a, $77
    add c
    ld e, a
    ld a, $77
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a

Jump_001_775f:
    ld hl, sp+$00
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_0dab
    add sp, $02
    ld hl, sp+$02
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c574
    ld [hl+], a
    ld [hl], e

Jump_001_7773:
    add sp, $04
    pop bc
    ret


    daa
    ld a, b
    pop bc
    ld l, a
    nop
    nop
    ld h, a
    ld [hl], b
    adc [hl]
    ld [hl], b
    and h
    ld [hl], b
    nop
    nop
    add b
    ld [hl], c
    nop
    nop
    ld b, e
    ld [hl], d
    ld e, [hl]
    ld [hl], d
    or a
    ld [hl], d
    inc de
    ld [hl], e
    ld l, $73
    ld e, e
    ld [hl], e
    nop
    nop
    push bc
    ld [hl], e
    rst $30
    ld [hl], e
    nop
    nop
    ld b, l
    ld [hl], h
    ld d, e
    ld a, [hl-]
    jr nz, jr_001_77f0

    ld c, a
    ld d, [hl]
    ld b, l
    jr nz, jr_001_77f3

    ld c, c
    ld d, h
    jr nz, @+$4e

    ld c, a
    ld c, a
    ld d, b
    jr nz, jr_001_7801

    ld c, a
    ld c, c
    ld c, [hl]
    ld d, h
    ld d, e
    dec sp
    jr nz, jr_001_77ea

    ld d, e
    ld d, h
    jr nz, jr_001_7801

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld c, c
    ld c, [hl]
    inc l
    jr nz, jr_001_77f9

    ld c, [hl]
    ld b, h
    jr nz, jr_001_780f

    ld c, c
    ld b, a
    ld c, c
    ld d, h
    dec a
    ld c, a
    ld d, l
    ld d, h
    jr nz, jr_001_7830

    ld sp, $372d
    dec a
    ld b, [hl]
    ld d, a
    ld b, h
    inc l
    jr nz, jr_001_7825

    dec l
    jr c, jr_001_781f

    ld b, d
    ld b, c
    ld b, e
    ld c, e
    ld e, l
    nop
    ld d, e
    ld a, [hl-]

jr_001_77ea:
    jr nz, @+$43

    ld b, h
    ld b, h
    jr nz, @+$56

jr_001_77f0:
    ld c, a
    jr nz, jr_001_7841

jr_001_77f3:
    ld c, a
    ld c, c
    ld d, e
    ld b, l
    jr nz, jr_001_784c

jr_001_77f9:
    ld c, b
    ld b, c
    ld d, b
    ld b, l
    dec sp
    jr nz, @+$46

    ld c, c

jr_001_7801:
    ld b, a
    ld c, c
    ld d, h
    ld d, e
    jr nz, @+$43

    ld d, d
    ld b, l
    jr nz, @+$4b

    ld c, [hl]
    ld b, h
    ld b, l
    ld d, b

jr_001_780f:
    ld b, l
    ld c, [hl]
    ld b, h
    ld b, l
    ld c, [hl]
    ld d, h
    nop
    ld d, e
    ld a, [hl-]
    jr nz, jr_001_786d

    ld b, l
    ld d, h
    jr nz, jr_001_786e

    ld d, l

jr_001_781f:
    ld sp, $5320
    ld d, a
    ld b, l
    ld b, l

jr_001_7825:
    ld d, b
    nop
    nop
    push bc
    ld c, $00
    ld hl, $c7a9
    ld [hl], $00

jr_001_7830:
    inc hl
    ld [hl], $00
    ld hl, $c574
    ld [hl], $8f
    inc hl
    ld [hl], $99
    ld a, $04
    ldh [$8d], a
    ld a, $01

jr_001_7841:
    ldh [$8c], a

Jump_001_7843:
    ld a, $3b
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a

jr_001_784c:
    ld a, [de]
    ld b, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld b, c
    inc c
    ld a, b
    cp $04
    jp nz, Jump_001_7843

    ld hl, $c7a8
    ld [hl], $64
    ld hl, $c7ab
    ld [hl], $01
    pop bc
    ret


    push bc
    ld hl, $c7a8

jr_001_786d:
    ld c, [hl]

jr_001_786e:
    ld b, $00
    ld a, c
    or b
    jr nz, jr_001_7879

    ld hl, $c7a9
    ld a, [hl+]
    or [hl]

jr_001_7879:
    jr z, jr_001_787d

    ld a, $01

jr_001_787d:
    ld c, a
    ld e, c
    pop bc
    ret


    push bc
    xor a
    ld hl, $c40b
    or [hl]
    jp z, Jump_001_7892

    xor a
    ld hl, $c531
    or [hl]
    jp z, Jump_001_794c

Jump_001_7892:
    ld hl, $c7a9
    ld a, [hl+]
    or [hl]
    jp z, Jump_001_7917

    xor a
    ld hl, $c7a8
    or [hl]
    jp nz, Jump_001_7910

    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $00
    inc hl
    ld [hl], $98
    ld c, $00

Jump_001_78b8:
    ld a, c
    cp $14
    jp nc, Jump_001_78d6

    ld hl, $c7a9
    ld a, [hl]
    add c
    ld e, a
    inc hl
    ld a, [hl]
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    inc c
    jp Jump_001_78b8


Jump_001_78d6:
    ld hl, $c7a8
    ld [hl], $0a
    ld hl, $c7a9
    ld a, [hl]
    add $14
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_001_7905

    ld hl, $c531
    ld [hl], $00
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    ld hl, $c7a8
    ld [hl], $96
    jp Jump_001_7910


Jump_001_7905:
    ld hl, $c7a9
    ld a, [hl]
    add $ed
    ld [hl+], a
    ld a, [hl]
    adc $ff
    ld [hl], a

Jump_001_7910:
    ld hl, $c7a8
    dec [hl]
    jp Jump_001_794c


Jump_001_7917:
    xor a
    ld hl, $c7a8
    or [hl]
    jp z, Jump_001_794c

    dec [hl]
    xor a
    or [hl]
    jp nz, Jump_001_794c

    xor a
    ld hl, $c7ab
    or [hl]
    jp z, Jump_001_7949

    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $8f
    inc hl
    ld [hl], $99
    ld hl, $794e
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_001_794c


Jump_001_7949:
    call Call_001_6d5c

Jump_001_794c:
    pop bc
    ret


    jr nz, jr_001_7970

    jr nz, @+$22

    jr nz, jr_001_7954

jr_001_7954:
    di
    ld hl, $0000
    ld [hl], $00
    call Call_001_7e82
    ret


Jump_001_795e:
    push bc
    add sp, -$06
    call Call_000_17ca
    ldh a, [rLCDC]
    ld c, a
    and $fd
    ldh [rLCDC], a
    ld hl, $c574
    ld [hl], $00

jr_001_7970:
    inc hl
    ld [hl], $98
    ld hl, $7b88
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld hl, $7b94
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $60
    inc hl
    ld [hl], $98
    ld hl, $7ba5
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $80
    inc hl
    ld [hl], $98
    ld hl, $7bb5
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $c1
    inc hl
    ld [hl], $98
    ld hl, $7bc7
    push hl
    call Call_000_2eda
    add sp, $02
    ldh a, [$8e]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $07
    inc hl
    ld [hl], $99
    ld hl, $7bcc
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c7c4
    ld c, [hl]
    ld b, $00
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c7c3
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $67
    inc hl
    ld [hl], $99
    ld hl, $7bd1
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c4d3
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $c574
    ld [hl], $87
    inc hl
    ld [hl], $99
    ld hl, $7bd6
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c402
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_7a45

    ld hl, $c574
    ld [hl], $a7
    inc hl
    ld [hl], $99
    ld hl, $7bdb
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_7a45:
    xor a
    ld hl, $cbd9
    or [hl]
    jp z, Jump_001_7a5e

    ld hl, $c574
    ld [hl], $c7
    inc hl
    ld [hl], $99
    ld hl, $7bdf
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_7a5e:
    ld hl, $c574
    ld [hl], $07
    inc hl
    ld [hl], $9a
    ld hl, $7be3
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $cb65
    ld a, [hl]
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    xor a
    ld hl, $c7ae
    or [hl]
    jp z, Jump_001_7a93

    ld hl, $c574
    ld [hl], $27
    inc hl
    ld [hl], $9a
    ld hl, $7be8
    push hl
    call Call_000_2eda
    add sp, $02

Jump_001_7a93:
    ld hl, sp+$04
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_001_7a9a:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, $7ff6
    add hl, de
    jp c, Jump_001_7b18

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0008
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    dec hl
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$04
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    dec hl
    dec hl
    ld [hl], a
    or a
    dec hl
    rl [hl]
    inc hl
    rl [hl]
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld de, $c7af
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld de, $c7af
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_001_7b15

    inc hl
    inc [hl]

jr_001_7b15:
    jp Jump_001_7a9a


Jump_001_7b18:
    ld hl, $c574
    ld [hl], $c9
    inc hl
    ld [hl], $98
    ld de, $6f97
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $6f98
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $6f99
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $6f9a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $6f9b
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $6f9c
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $00
    ldh [rSCY], a
    ldh [rSCX], a
    call Call_000_1454
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_001_7b81

    ld hl, $c402
    ld [hl], $06
    call Call_001_6cef

Jump_001_7b81:
    jp Jump_001_7b81


    add sp, $06
    pop bc
    ret


    ld b, h
    ld c, a
    ld c, [hl]
    ld d, h
    jr nz, jr_001_7bde

    ld b, c
    ld c, [hl]
    ld c, c
    ld b, e
    ld hl, $5000
    ld c, h
    ld b, l
    ld b, c
    ld d, e
    ld b, l
    jr nz, jr_001_7be9

    ld b, c
    ld c, c
    ld c, h
    jr nz, @+$56

    ld c, b
    ld c, c
    ld d, e
    nop
    ld b, h
    ld b, c
    ld d, h
    ld b, c
    jr nz, @+$56

    ld c, a
    jr nz, jr_001_7bf7

    ld c, [hl]
    ld b, [hl]
    ld c, a
    jr nz, @+$43

    ld d, h
    nop
    ld c, h
    ld c, c
    ld d, h
    ld d, h
    ld c, h
    ld b, l
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld b, h
    ld c, d
    ld l, $43
    ld c, a
    ld c, l
    nop
    ld d, d
    ld c, a
    ld c, l
    ld a, [hl-]
    nop
    ld d, e
    ld d, h
    ld c, e
    ld a, [hl-]
    nop
    ld d, b
    ld c, h
    ld e, c
    ld a, [hl-]
    nop
    ld b, e
    ld d, [hl]
    ld d, a
    ld a, [hl-]
    nop
    ld b, e
    ld b, a
    ld b, d

jr_001_7bde:
    nop
    ld b, a
    ld b, d
    ld b, c
    nop
    ld d, e
    ld e, c
    ld c, [hl]
    ld a, [hl-]
    nop
    ld b, c

jr_001_7be9:
    ld d, e
    ld d, h
    nop

Call_001_7bec:
    push bc
    add sp, -$06
    ld hl, $c40e
    ld c, [hl]
    ld hl, $c40f
    ld a, [hl]

jr_001_7bf7:
    ld hl, sp+$05
    ld [hl], a
    ld hl, $c410
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, $c411
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld hl, $c412
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c413
    ld a, [hl]
    ld hl, sp+$01
    ld [hl], a
    ld hl, $c414
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld hl, $c529
    ld b, [hl]
    xor a
    ld hl, sp+$0a
    or [hl]
    jp z, Jump_001_7c39

    ld hl, $00fc
    push hl
    ld hl, $c579
    push hl
    ld hl, $c7c5
    push hl
    call Call_000_3846
    add sp, $06

Jump_001_7c39:
    ld hl, $0000
    ld [hl], $0a
    call Call_000_3a36
    ld hl, $0000
    ld [hl], $00
    xor a
    ld hl, sp+$0a
    or [hl]
    jp z, Jump_001_7c90

    ld hl, $00fc
    push hl
    ld hl, $c7c5
    push hl
    ld hl, $c579
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, $c40e
    ld [hl], c
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, sp+$05
    ld a, [hl]
    ld hl, $c40f
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c411
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c412
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, $c413
    ld [hl], a
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c414
    ld [hl], a
    ld hl, $c529
    ld [hl], b

Jump_001_7c90:
    add sp, $06
    pop bc
    ret


    push bc
    add sp, -$03
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    call Call_001_7bec
    add sp, $01
    ld a, $00
    ldh [rNR52], a
    ldh [rNR51], a
    ldh [rNR50], a
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld de, $bfbc
    ld a, [de]
    ld hl, $c52f
    ld [hl], a
    xor a
    ld a, $02
    sbc [hl]
    jp nc, Jump_001_7cc8

    ld [hl], $00
    ld a, $00
    ld [de], a

Jump_001_7cc8:
    call Call_000_1cb6
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld de, $bfc0
    ld a, [de]
    ld hl, $c532
    ld [hl], a
    ld de, $bfbe
    ld a, [de]
    ld hl, $c530
    ld [hl], a
    xor a
    ld hl, $ff90
    or [hl]
    jp nz, Jump_001_7cf9

    xor a
    ld a, $03
    ld hl, $c530
    sbc [hl]
    jp nc, Jump_001_7cf9

    ld [hl], $00

Jump_001_7cf9:
    ld hl, $0000
    ld [hl], $00
    ld c, $a0
    ld b, $7a
    push bc
    ld a, $1e
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    call Call_001_4c61
    ld a, $00
    ldh [$8b], a
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld de, $bfb4
    ld a, [de]
    ld hl, $c52a
    ld [hl], a
    ld de, $bfcc
    ld a, [de]
    ld hl, $c52b
    ld [hl], a
    ld de, $bfb5
    ld a, [de]
    ld hl, $c445
    ld [hl], a
    ld hl, $0004
    push hl
    ld hl, $bfc6
    push hl
    ld hl, $c469
    push hl
    call Call_000_3846
    add sp, $06
    ld hl, sp+$02
    ld [hl], $04

Jump_001_7d53:
    ld hl, sp+$02
    ld a, [hl]
    add $ff
    ld b, a
    ld de, $c469
    ld l, b
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
    ld c, a
    xor a
    ld a, $40
    sbc c
    jp nc, Jump_001_7d81

    ld a, c
    cp $ff
    jp z, Jump_001_7d81

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a

Jump_001_7d81:
    ld hl, sp+$02
    ld [hl], b
    ld a, b
    or b
    jp nz, Jump_001_7d53

    ld de, $bfba
    ld a, [de]
    and $0f
    ld hl, $c52c
    ld [hl], a
    ld de, $bfbb
    ld a, [de]
    and $0f
    ld hl, $c52d
    ld [hl], a
    ld hl, $0000
    ld [hl], $00
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c52c
    ld a, [hl]
    ld hl, $c407
    ld [hl], a
    ld hl, $c52d
    ld a, [hl]
    ld hl, $c408
    ld [hl], a
    ld c, $46
    ld b, $4a
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld c, $75
    ld b, $6f
    push bc
    ld a, $1c
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $cb65
    ld a, [hl]
    cp $05
    jp nz, Jump_001_7df3

    ld c, $05
    ld b, $65
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_001_7df3:
    add sp, $03
    pop bc
    ret


Call_001_7df7:
    ld hl, $a000

jr_001_7dfa:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, h
    cp $c0
    jr nz, jr_001_7dfa

    ret


Call_001_7e09:
    push bc
    ld hl, sp+$04
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $9800
    ld b, $12

jr_001_7e14:
    push bc
    ld c, $14

jr_001_7e17:
    ld a, [de]
    cp $48
    jr nc, jr_001_7e20

    ld b, $00
    jr jr_001_7e2a

jr_001_7e20:
    cp $8d
    jr nc, jr_001_7e28

    ld b, $01
    jr jr_001_7e2a

jr_001_7e28:
    ld b, $02

jr_001_7e2a:
    ld a, $01
    ldh [rVBK], a

jr_001_7e2e:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_001_7e2e

    ld [hl], b
    xor a
    ldh [rVBK], a
    ld a, [de]
    cp $48
    jr c, jr_001_7e45

    sub $45
    cp $45
    jr c, jr_001_7e45

    sub $45

jr_001_7e45:
    ld b, a

jr_001_7e46:
    ldh a, [rSTAT]
    bit 1, a
    jr nz, jr_001_7e46

    ld [hl], b
    inc hl
    inc de
    dec c
    jr nz, jr_001_7e17

    ld bc, $000c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_001_7e14

    pop bc
    ret


Call_001_7e5c:
    push bc
    ld hl, sp+$04
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $9800
    ld b, $12

jr_001_7e67:
    push bc
    ld c, $14

jr_001_7e6a:
    ld a, [de]
    ld b, a

jr_001_7e6c:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_7e6c

    ld [hl], b
    inc l
    inc de
    dec c
    jr nz, jr_001_7e6a

    ld bc, $000c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_001_7e67

    pop bc
    ret


Call_001_7e82:
    ld hl, $0004
    add hl, sp
    ld a, l
    ld [$c7c3], a
    ld a, h
    ld [$c7c4], a
    ld a, [hl+]
    ld [$c7af], a
    ld a, [hl+]
    ld [$c7b0], a
    ld a, [hl+]
    ld [$c7b1], a
    ld a, [hl+]
    ld [$c7b2], a
    ld a, [hl+]
    ld [$c7b3], a
    ld a, [hl+]
    ld [$c7b4], a
    ld a, [hl+]
    ld [$c7b5], a
    ld a, [hl+]
    ld [$c7b6], a
    ld a, [hl+]
    ld [$c7b7], a
    ld a, [hl+]
    ld [$c7b8], a
    ld a, [hl+]
    ld [$c7b9], a
    ld a, [hl+]
    ld [$c7ba], a
    ld a, [hl+]
    ld [$c7bb], a
    ld a, [hl+]
    ld [$c7bc], a
    ld a, [hl+]
    ld [$c7bd], a
    ld a, [hl+]
    ld [$c7be], a
    ld a, [hl+]
    ld [$c7bf], a
    ld a, [hl+]
    ld [$c7c0], a
    ld a, [hl+]
    ld [$c7c1], a
    ld a, [hl+]
    ld [$c7c2], a
    jp Jump_001_795e


Call_001_7ee1:
    push bc
    push de
    ld hl, sp+$09
    ld b, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld d, [hl]
    dec hl
    ld e, [hl]
    ld a, d
    add e
    add a
    add a
    add a
    ld d, a
    ld a, e
    add a
    add a
    add a
    ld e, a

jr_001_7ef7:
    ldh a, [rSTAT]
    and $02
    jr nz, jr_001_7ef7

    ld a, e
    ldh [rOCPS], a
    ld a, [bc]
    ldh [rOCPD], a
    inc bc
    inc e
    ld a, e
    cp d
    jr nz, jr_001_7ef7

    pop de
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
