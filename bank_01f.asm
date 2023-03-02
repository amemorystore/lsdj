; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

Call_01f_4000:
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    xor a
    ld a, $03
    sbc c
    jp c, Jump_01f_4050

    ld d, $00
    ld hl, $401b
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01f_4027


    jp Jump_01f_4032


    jp Jump_01f_403d


    jp Jump_01f_4048


Jump_01f_4027:
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    jp Jump_01f_4050


Jump_01f_4032:
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    jp Jump_01f_4050


Jump_01f_403d:
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    jp Jump_01f_4050


Jump_01f_4048:
    ld hl, $c574
    ld [hl], $c6
    inc hl
    ld [hl], $99

Jump_01f_4050:
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 5, a
    jp z, Jump_01f_4080

    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    bit 3, a
    jp z, Jump_01f_4078

    ld de, $408d
    ld c, e
    ld b, d
    jp Jump_01f_407d


Jump_01f_4078:
    ld de, $4092
    ld c, e
    ld b, d

Jump_01f_407d:
    jp Jump_01f_4085


Jump_01f_4080:
    ld de, $4097
    ld c, e
    ld b, d

Jump_01f_4085:
    push bc
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


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
    jr nz, jr_01f_40e8

    ld b, [hl]
    ld b, [hl]
    nop

Call_01f_409c:
    push bc
    ld a, $06
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld b, c
    ld a, b
    bit 5, a
    jp z, Jump_01f_40bc

    ld a, c
    and $1f
    ld c, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_01f_40c5


Jump_01f_40bc:
    ld hl, $40c7
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_40c5:
    pop bc
    ret


    dec l
    dec l
    nop

Call_01f_40ca:
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    ld hl, sp+$04
    and [hl]
    ld c, a
    or c
    jp z, Jump_01f_4108

    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01

jr_01f_40e8:
    ld a, c
    and $80
    ld c, a
    or c
    jp z, Jump_01f_40fc

    ld hl, $4113
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01f_4111


Jump_01f_40fc:
    ld hl, $4117
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01f_4111


Jump_01f_4108:
    ld hl, $411b
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_4111:
    pop bc
    ret


    ld b, c
    ld d, h
    ld c, e
    nop
    jr nz, jr_01f_4168

    ld c, [hl]
    nop
    ld c, a
    ld b, [hl]
    ld b, [hl]
    nop

Call_01f_411f:
    ld a, $02
    push af
    inc sp
    ld a, $40
    push af
    inc sp
    call Call_01f_40ca
    add sp, $02
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $2f
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
    ld a, $09
    push af
    inc sp
    ld a, $20
    push af
    inc sp
    call Call_01f_40ca
    add sp, $02
    ret


Call_01f_4157:
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $0f
    ld c, a
    ld e, c
    pop bc

jr_01f_4168:
    ret


Call_01f_4169:
    push bc
    call Call_01f_4157
    ld c, e
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $0f
    ld b, a
    xor a
    or c
    jr z, jr_01f_4182

    xor a
    or b

jr_01f_4182:
    jr z, jr_01f_4186

    ld a, $01

jr_01f_4186:
    ld c, a
    ld e, c
    pop bc
    ret


Call_01f_418a:
    push bc
    ld hl, $c574
    ld [hl], $a7
    inc hl
    ld [hl], $98
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $4236
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $a5
    inc hl
    ld [hl], $98
    ld a, $01
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
    call Call_01f_4157
    ld c, e
    xor a
    or c
    jp z, Jump_01f_4234

    ld hl, $c574
    ld [hl], $a8
    inc hl
    ld [hl], $98
    ld a, $09
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
    call Call_01f_4169
    ld c, e
    xor a
    or c
    jp z, Jump_01f_4234

    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld hl, $c574
    ld [hl], $ab
    inc hl
    ld [hl], $98
    ld a, c
    and $f0
    jr nz, jr_01f_4210

    jp Jump_01f_421b


jr_01f_4210:
    ld a, c
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_01f_4234


Jump_01f_421b:
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01f_4234:
    pop bc
    ret


    cpl
    dec l
    dec l
    cpl
    dec l
    dec l
    nop
    push bc
    add sp, -$01
    call Call_01f_418a
    ld hl, $c574
    ld [hl], $eb
    inc hl
    ld [hl], $98
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld b, e
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
    ld hl, $c574
    ld [hl], $0b
    inc hl
    ld [hl], $99
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld [hl], $28
    inc hl
    ld [hl], $99
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    bit 6, a
    jp nz, Jump_01f_42b0

    ld hl, $438f
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01f_42c8


Jump_01f_42b0:
    ld hl, $4395
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    ld hl, sp+$00
    sub [hl]
    and $3f
    ld b, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_01f_42c8:
    ld hl, $c574
    ld [hl], $4b
    inc hl
    ld [hl], $99
    ld a, $04
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $7f
    ld b, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $67
    inc hl
    ld [hl], $99
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld b, $8c
    ld c, $51
    ld a, e
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
    ld hl, $c574
    ld [hl], $8a
    inc hl
    ld [hl], $99
    ld c, $2d
    ld b, $52
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, $c574
    ld [hl], $ec
    inc hl
    ld [hl], $99
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $c574
    ld [hl], $ab
    inc hl
    ld [hl], $99
    ld a, $02
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
    ld hl, $c574
    ld [hl], $cb
    inc hl
    ld [hl], $99
    ld a, $0b
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
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    call Call_01f_4000
    ld hl, $c574
    inc [hl]
    jr nz, jr_01f_4388

    inc hl
    inc [hl]

jr_01f_4388:
    call Call_01f_409c
    add sp, $01
    pop bc
    ret


    ld d, l
    ld c, [hl]
    ld c, h
    ld c, c
    ld c, l
    nop
    jr nz, jr_01f_43b7

    jr nz, jr_01f_4399

jr_01f_4399:
    push bc
    add sp, -$01
    ld hl, $c574
    ld [hl], $a5
    inc hl
    ld [hl], $98
    call Call_01f_418a
    ld hl, $c574
    ld [hl], $eb
    inc hl
    ld [hl], $98
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld c, e

jr_01f_43b7:
    add sp, $01
    ld a, c
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld [hl], $08
    inc hl
    ld [hl], $99
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    bit 6, a
    jp nz, Jump_01f_43eb

    ld hl, $44a3
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01f_4403


Jump_01f_43eb:
    ld hl, $44a9
    push hl
    call Call_000_2eda
    add sp, $02
    ld a, $3f
    ld hl, sp+$00
    sub [hl]
    and $3f
    ld b, a
    push af
    inc sp
    call Call_000_2de6
    add sp, $01

Jump_01f_4403:
    ld hl, $c574
    ld [hl], $29
    inc hl
    ld [hl], $99
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_4422

    ld de, $44ad
    ld b, e
    ld c, d
    jp Jump_01f_4427


Jump_01f_4422:
    ld de, $44b2
    ld b, e
    ld c, d

Jump_01f_4427:
    ld l, b
    ld h, c
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $4b
    inc hl
    ld [hl], $99
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld c, $08
    ld b, $52
    ld a, e
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, $c574
    ld [hl], $6a
    inc hl
    ld [hl], $99
    ld c, $2d
    ld b, $52
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, $c574
    ld [hl], $8c
    inc hl
    ld [hl], $99
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld hl, $c574
    ld [hl], $c6
    inc hl
    ld [hl], $99
    call Call_01f_4000
    ld hl, $c574
    inc [hl]
    jr nz, jr_01f_449c

    inc hl
    inc [hl]

jr_01f_449c:
    call Call_01f_409c
    add sp, $01
    pop bc
    ret


    ld d, l
    ld c, [hl]
    ld c, h
    ld c, c
    ld c, l
    nop
    jr nz, @+$22

    jr nz, jr_01f_44ad

jr_01f_44ad:
    ld d, e
    ld b, c
    ld b, [hl]
    ld b, l
    nop
    ld b, [hl]
    ld d, d
    ld b, l
    ld b, l
    nop

Call_01f_44b7:
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
    add sp, $01
    call Call_000_2f24
    ld hl, $c43b
    push hl
    call Call_000_2eda
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$02
    ld hl, $c574
    ld [hl], $a4
    inc hl
    ld [hl], $98
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    and $3f
    ld hl, sp+$01
    ld [hl], a
    push af
    inc sp
    call Call_01f_44b7
    add sp, $01
    ld hl, $c574
    ld [hl], $c4
    inc hl
    ld [hl], $98
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $3f
    ld hl, sp+$01
    ld [hl], a
    push af
    inc sp
    call Call_01f_44b7
    add sp, $01
    ld hl, $c574
    ld [hl], $09
    inc hl
    ld [hl], $99
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    and $60
    ld b, a
    cp $20
    jp z, Jump_01f_4548

    cp $40
    jp z, Jump_01f_454f

    cp $60
    jp z, Jump_01f_4556

    jp Jump_01f_455d


Jump_01f_4548:
    ld hl, sp+$01
    ld [hl], $33
    jp Jump_01f_4561


Jump_01f_454f:
    ld hl, sp+$01
    ld [hl], $32
    jp Jump_01f_4561


Jump_01f_4556:
    ld hl, sp+$01
    ld [hl], $31
    jp Jump_01f_4561


Jump_01f_455d:
    ld hl, sp+$01
    ld [hl], $30

Jump_01f_4561:
    ld hl, sp+$01
    ld b, [hl]
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $2f
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
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld [hl], $a6
    inc hl
    ld [hl], $99
    call Call_01f_411f
    ld hl, $c574
    ld [hl], $c9
    inc hl
    ld [hl], $99
    ld a, $02
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    and $40
    ld b, a
    or b
    jp z, Jump_01f_45d0

    ld hl, $473e
    push hl
    call Call_000_2eda
    add sp, $02
    jp Jump_01f_45d9


Jump_01f_45d0:
    ld hl, $4742
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_45d9:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $58
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
    ld hl, $c574
    ld [hl], $e8
    inc hl
    ld [hl], $99
    ld a, $0a
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld b, $63
    ld c, $4a
    ld a, e
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, $c574
    ld [hl], $4b
    inc hl
    ld [hl], $99
    ld a, $08
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
    ld hl, $c574
    ld [hl], $68
    inc hl
    ld [hl], $99
    ld a, $0c
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $2f
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
    ld a, $0d
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, $c574
    ld [hl], $86
    inc hl
    ld [hl], $99
    ld a, $03
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01f_46ad

    call Call_000_2f24
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_01f_46b6


Jump_01f_46ad:
    ld hl, $4746
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_46b6:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $2f
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
    ld a, $0b
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$02
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01f_46f4

    call Call_000_2f24
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    jp Jump_01f_46fd


Jump_01f_46f4:
    ld hl, $474a
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_46fd:
    ld hl, $c574
    ld [hl], $27
    inc hl
    ld [hl], $99
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld b, $8c
    ld c, $51
    ld a, e
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
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    call Call_01f_4000
    ld hl, $c574
    inc [hl]
    jr nz, jr_01f_4737

    inc hl
    inc [hl]

jr_01f_4737:
    call Call_01f_409c
    add sp, $02
    pop bc
    ret


    jr nc, jr_01f_476e

    dec [hl]
    nop
    jr nz, @+$22

    ld sp, $4100
    ld c, h
    ld c, h
    nop
    ld b, c
    ld c, h
    ld c, h
    nop
    push bc
    add sp, -$01
    ld hl, $c574
    ld [hl], $a9
    inc hl
    ld [hl], $98
    ld a, $01
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld a, e
    and $60
    ld b, a
    cp $20
    jp z, Jump_01f_477b

jr_01f_476e:
    cp $40
    jp z, Jump_01f_4782

    cp $60
    jp z, Jump_01f_4789

    jp Jump_01f_4790


Jump_01f_477b:
    ld hl, sp+$00
    ld [hl], $33
    jp Jump_01f_4794


Jump_01f_4782:
    ld hl, sp+$00
    ld [hl], $32
    jp Jump_01f_4794


Jump_01f_4789:
    ld hl, sp+$00
    ld [hl], $31
    jp Jump_01f_4794


Jump_01f_4790:
    ld hl, sp+$00
    ld [hl], $30

Jump_01f_4794:
    ld hl, sp+$00
    ld b, [hl]
    ld a, b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld a, $2f
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
    ld a, $07
    push af
    inc sp
    call Call_000_0ad1
    ld b, e
    add sp, $01
    ld a, b
    push af
    inc sp
    ld a, $0c
    push af
    inc sp
    call Call_000_2d31
    add sp, $02
    ld hl, $c574
    ld [hl], $c7
    inc hl
    ld [hl], $98
    ld a, $05
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    ld b, $8c
    ld c, $51
    ld a, e
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
    ld hl, $c574
    ld [hl], $ea
    inc hl
    ld [hl], $98
    ld c, $2d
    ld b, $52
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, $c574
    ld [hl], $2c
    inc hl
    ld [hl], $99
    ld a, $08
    push af
    inc sp
    call Call_000_0ad1
    ld c, e
    add sp, $01
    ld a, c
    push af
    inc sp
    call Call_000_2e22
    add sp, $01
    ld bc, $4cf8
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $4d34
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $49b4
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $4a26
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld bc, $49e0
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld hl, $c574
    ld [hl], $65
    inc hl
    ld [hl], $99
    ld a, $09
    push af
    inc sp
    call Call_000_0ad1
    ld hl, sp+$01
    ld [hl], e
    add sp, $01
    xor a
    ld a, $04
    sbc [hl]
    jp nc, Jump_01f_488c

    ld [hl], $04

Jump_01f_488c:
    ld a, $09
    push af
    inc sp
    ld hl, sp+$01
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
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $9a
    call Call_01f_4000
    ld hl, $c574
    inc [hl]
    jr nz, jr_01f_48bd

    inc hl
    inc [hl]

jr_01f_48bd:
    call Call_01f_409c
    add sp, $01
    pop bc
    ret


Call_01f_48c4:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    bit 7, a
    jp z, Jump_01f_48d2

    call Call_000_144b

Jump_01f_48d2:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_01f_48dd

    call Call_000_144b

Jump_01f_48dd:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_48eb

jr_01f_48e6:
    or a
    rl c
    rl b

jr_01f_48eb:
    dec a
    jr nz, jr_01f_48e6

    ld hl, $a080
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
    add sp, -$08
    ld hl, sp+$0c
    ld a, [hl]
    cp $40
    jp c, Jump_01f_4937

    call Call_000_144b

Jump_01f_4937:
    ld hl, sp+$0c
    ld c, [hl]
    ld b, $00
    ld hl, $a040
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
    jp z, Jump_01f_495f

    ld e, $00
    jp Jump_01f_49fd


Jump_01f_495f:
    ld a, $01
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
    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp z, Jump_01f_4983

    cp $03
    jp z, Jump_01f_4995

    jp Jump_01f_49a7


Jump_01f_4983:
    ld de, $4a17
    ld hl, sp+$06
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$04
    ld [hl], $0e
    inc hl
    ld [hl], $00
    jp Jump_01f_49b6


Jump_01f_4995:
    ld de, $4a0c
    ld hl, sp+$06
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$04
    ld [hl], $0b
    inc hl
    ld [hl], $00
    jp Jump_01f_49b6


Jump_01f_49a7:
    ld de, $4a01
    ld hl, sp+$06
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, sp+$04
    ld [hl], $0b
    inc hl
    ld [hl], $00

Jump_01f_49b6:
    ld hl, sp+$02
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_01f_49bd:
    ld hl, sp+$04
    ld a, [hl]
    dec hl
    dec hl
    cp [hl]
    jr nz, jr_01f_49d0

    ld hl, sp+$05
    ld a, [hl]
    dec hl
    dec hl
    cp [hl]
    jr nz, jr_01f_49d0

    jp Jump_01f_49fb


jr_01f_49d0:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$02
    ld b, [hl]
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01f_49f8

    inc hl
    inc [hl]

jr_01f_49f8:
    jp Jump_01f_49bd


Jump_01f_49fb:
    ld e, $01

Jump_01f_49fd:
    add sp, $08
    pop bc
    ret


    nop
    adc b
    nop
    nop
    ld a, a
    ld bc, $0300
    nop
    nop
    nop
    inc bc
    adc b
    nop
    nop
    ld sp, $0001
    inc bc
    nop
    nop
    nop
    ld bc, $00a8
    nop
    rst $38
    ld bc, $0300
    nop
    nop
    ret nc

    nop
    nop
    nop
    push bc
    add sp, -$02
    ld c, $00

Jump_01f_4a2a:
    ld a, c
    cp $10
    jp z, Jump_01f_4a5b

    ld de, $c9b6
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
    ld b, a
    cp $40
    jp nc, Jump_01f_4a57

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $ff
    ld [de], a
    ld a, b
    push af
    inc sp
    call $4929
    add sp, $01

Jump_01f_4a57:
    inc c
    jp Jump_01f_4a2a


Jump_01f_4a5b:
    ld hl, $c9b5
    ld [hl], $00
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00

Jump_01f_4a6b:
    ld hl, sp+$00
    ld a, [hl]
    cp $40
    jp nc, Jump_01f_4aad

    push af
    inc sp
    call $4929
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_4aa7

    ld b, $f0
    ld c, $41
    ld hl, sp+$00
    ld a, [hl]
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
    ld l, b
    ld h, c
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$00
    ld e, [hl]
    jp Jump_01f_4aaf


Jump_01f_4aa7:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_4a6b


Jump_01f_4aad:
    ld e, $ff

Jump_01f_4aaf:
    add sp, $01
    pop bc
    ret


Call_01f_4ab3:
    push bc
    ld hl, $c46e
    push hl
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_000_14ca
    add sp, $05
    ld hl, sp+$04
    ld [hl], $00

Jump_01f_4acc:
    ld hl, sp+$04
    ld a, [hl]
    cp $10
    jp z, Jump_01f_4af4

    ld hl, sp+$04
    ld c, [hl]
    ld a, $6e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_01f_4aeb

    ld e, $00
    jp Jump_01f_4af6


Jump_01f_4aeb:
    ld a, c
    add $01
    ld hl, sp+$04
    ld [hl], a
    jp Jump_01f_4acc


Jump_01f_4af4:
    ld e, $01

Jump_01f_4af6:
    pop bc
    ret


Call_01f_4af8:
    push bc
    add sp, -$02
    ld a, $05
    jr jr_01f_4b07

jr_01f_4aff:
    or a
    ld hl, sp+$06
    rl [hl]
    inc hl
    rl [hl]

jr_01f_4b07:
    dec a
    jr nz, jr_01f_4aff

    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b480
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
    ld a, $01
    push af
    inc sp
    call Call_01f_4ab3
    ld c, e
    add sp, $03
    xor a
    or c
    jp nz, Jump_01f_4b32

    ld e, $00
    jp Jump_01f_4b88


Jump_01f_4b32:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b680
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01f_4ab3
    ld c, e
    add sp, $03
    xor a
    or c
    jp nz, Jump_01f_4b52

    ld e, $00
    jp Jump_01f_4b88


Jump_01f_4b52:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ba80
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $01
    push af
    inc sp
    call Call_01f_4ab3
    ld c, e
    add sp, $03
    xor a
    or c
    jp nz, Jump_01f_4b72

    ld e, $00
    jp Jump_01f_4b88


Jump_01f_4b72:
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b690
    add hl, de
    ld c, l
    ld b, h
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01f_4ab3
    ld c, e
    add sp, $03

Jump_01f_4b88:
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$02
    ld c, $00

Jump_01f_4b91:
    ld a, c
    cp $20
    jp z, Jump_01f_4bb5

    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01f_4af8
    ld b, e
    add sp, $02
    xor a
    or b
    jp z, Jump_01f_4bb1

    ld e, c
    jp Jump_01f_4bb7


Jump_01f_4bb1:
    inc c
    jp Jump_01f_4b91


Jump_01f_4bb5:
    ld e, $ff

Jump_01f_4bb7:
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$04
    ld hl, $c41e
    ld c, [hl]
    ld a, $50
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_01f_4bd7

    ld [hl], $00

Jump_01f_4bd7:
    ld hl, sp+$00
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a

Jump_01f_4bdd:
    ld hl, sp+$03
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
    jr jr_01f_4c10

jr_01f_4c0d:
    or a
    rl b

jr_01f_4c10:
    dec a
    jr nz, jr_01f_4c0d

    ld a, c
    and b
    ld c, a
    or c
    jp nz, Jump_01f_4c3e

    ld c, $67
    ld b, $4d
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
    ld hl, sp+$03
    ld a, [hl]
    cp $80
    jp c, Jump_01f_4c38

    call Call_000_144b

Jump_01f_4c38:
    ld hl, sp+$03
    ld e, [hl]
    jp Jump_01f_4c64


Jump_01f_4c3e:
    ld hl, sp+$03
    inc [hl]
    ld a, [hl]
    cp $80
    jp nz, Jump_01f_4c4b

    ld hl, sp+$03
    ld [hl], $00

Jump_01f_4c4b:
    ld hl, sp+$00
    ld a, [hl]
    ld hl, sp+$03
    cp [hl]
    jp nz, Jump_01f_4bdd

    ld c, $c6
    ld b, $75
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $ff

Jump_01f_4c64:
    add sp, $04
    pop bc
    ret


Call_01f_4c68:
    push bc
    add sp, -$17
    ld hl, sp+$15
    ld [hl], $40
    inc hl
    ld [hl], $a0
    ld hl, sp+$11
    ld [hl], $00
    di
    ld hl, sp+$14
    ld [hl], $00

Jump_01f_4c7b:
    ld hl, sp+$14
    ld a, [hl]
    cp $40
    jp nc, Jump_01f_4cba

    inc hl
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
    xor a
    or b
    jp z, Jump_01f_4c9a

    ld hl, sp+$11
    inc [hl]

Jump_01f_4c9a:
    ld a, $00
    push af
    inc sp
    ld hl, sp+$16
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$15
    inc [hl]
    jr nz, jr_01f_4cb4

    inc hl
    inc [hl]

jr_01f_4cb4:
    ld hl, sp+$14
    inc [hl]
    jp Jump_01f_4c7b


Jump_01f_4cba:
    ld hl, sp+$13
    ld [hl], $00

Jump_01f_4cbe:
    ld hl, sp+$13
    ld a, [hl]
    cp $ff
    jp nc, Jump_01f_4d47

    dec hl
    ld [hl], $00

Jump_01f_4cc9:
    ld hl, sp+$12
    ld a, [hl]
    cp $10
    ld a, $00
    rla
    ld hl, sp+$0d
    ld [hl], a
    or a
    jp z, Jump_01f_4d41

    ld hl, sp+$09
    ld [hl], $18
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$19
    ld [hl], e
    add sp, $05
    ld a, e
    cp $40
    ld a, $00
    rla
    ld hl, sp+$08
    ld [hl], a
    or a
    jp z, Jump_01f_4d37

    ld hl, sp+$14
    ld a, [hl]
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a040
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld a, $01
    push af
    inc sp
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

Jump_01f_4d37:
    ld hl, sp+$12
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_4cc9


Jump_01f_4d41:
    ld hl, sp+$13
    inc [hl]
    jp Jump_01f_4cbe


Jump_01f_4d47:
    ei
    ld hl, sp+$15
    ld [hl], $40
    inc hl
    ld [hl], $a0
    dec hl
    dec hl
    ld [hl], $00
    ld de, $c432
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld de, $c432
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld de, $c432
    ld hl, $0003
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ld de, $c432
    ld hl, $0004
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0b
    ld [hl+], a
    ld [hl], d

Jump_01f_4d87:
    ld hl, sp+$14
    ld a, [hl]
    cp $40
    jp nc, Jump_01f_4e8e

    di
    ld hl, sp+$15
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
    jp nz, Jump_01f_4e7d

    ld de, $c432
    ld a, $00
    ld [de], a
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld c, $49
    ld b, $4a
    ld hl, sp+$14
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$14
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    jr jr_01f_4de8

jr_01f_4de0:
    or a
    ld hl, sp+$0e
    rl [hl]
    inc hl
    rl [hl]

jr_01f_4de8:
    dec a
    jr nz, jr_01f_4de0

    ld hl, sp+$0e
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
    or $b0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$0e
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0f
    ld [hl], a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0080
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$0e
    ld [hl+], a
    ld [hl], d
    ld hl, $4000
    ld [hl], $01
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, sp+$0e
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0010
    push hl
    ld a, $00
    push af
    inc sp
    push bc
    call Call_000_3892
    add sp, $05
    ld hl, $0000
    ld [hl], $00
    ei
    ld hl, sp+$10
    ld [hl], $04

Jump_01f_4e43:
    ld hl, sp+$10
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
    ld hl, sp+$14
    ld a, [hl]
    cp a
    jr nz, jr_01f_4e64

    ld a, $01
    jr jr_01f_4e65

jr_01f_4e64:
    xor a

jr_01f_4e65:
    ld c, a
    or c
    jp z, Jump_01f_4e72

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $ff
    ld [de], a

Jump_01f_4e72:
    ld hl, sp+$10
    ld [hl], b
    ld a, b
    or b
    jp nz, Jump_01f_4e43

    jp Jump_01f_4e80


Jump_01f_4e7d:
    ld hl, sp+$11
    dec [hl]

Jump_01f_4e80:
    ei
    ld hl, sp+$15
    inc [hl]
    jr nz, jr_01f_4e88

    inc hl
    inc [hl]

jr_01f_4e88:
    ld hl, sp+$14
    inc [hl]
    jp Jump_01f_4d87


Jump_01f_4e8e:
    ld hl, sp+$11
    ld a, [hl]
    bit 7, a
    jp z, Jump_01f_4e98

    ld [hl], $00

Jump_01f_4e98:
    ld hl, sp+$11
    ld e, [hl]
    add sp, $17
    pop bc
    ret


Call_01f_4e9f:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    cp $20
    jp nc, Jump_01f_4eb5

    ld c, a
    ld a, $7e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_01f_4eb5:
    pop bc
    ret


Call_01f_4eb7:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld a, $7e
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld e, c
    pop bc
    ret


Call_01f_4ec9:
    push bc
    ld hl, sp+$04
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
    pop bc
    ret


Call_01f_4ee4:
    push bc
    add sp, -$05
    ld hl, sp+$09
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_4ef5

jr_01f_4ef0:
    or a
    rl c
    rl b

jr_01f_4ef5:
    dec a
    jr nz, jr_01f_4ef0

    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    ld hl, $aff0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_4f10:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_4f5c

    ld hl, sp+$03
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld a, c
    cp $01
    jp nz, Jump_01f_4f48

    ld hl, sp+$01
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
    ld a, c
    push af
    inc sp
    call Call_01f_4e9f
    add sp, $01

Jump_01f_4f48:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01f_4f4f

    inc hl
    inc [hl]

jr_01f_4f4f:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01f_4f56

    inc hl
    inc [hl]

jr_01f_4f56:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_4f10


Jump_01f_4f5c:
    add sp, $05
    pop bc
    ret


Call_01f_4f60:
    push bc
    add sp, -$09
    ld hl, sp+$0d
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_4f71

jr_01f_4f6c:
    or a
    rl c
    rl b

jr_01f_4f71:
    dec a
    jr nz, jr_01f_4f6c

    ld hl, $b680
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    ld hl, $b880
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    ld hl, $ba80
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    ld hl, $bc80
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_4fa0:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5028

    ld hl, sp+$07
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
    ld a, c
    cp $01
    jp nz, Jump_01f_4fd8

    ld hl, sp+$05
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
    ld a, c
    push af
    inc sp
    call Call_01f_4e9f
    add sp, $01

Jump_01f_4fd8:
    ld hl, sp+$03
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
    ld a, c
    cp $01
    jp nz, Jump_01f_5006

    ld hl, sp+$01
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
    ld a, c
    push af
    inc sp
    call Call_01f_4e9f
    add sp, $01

Jump_01f_5006:
    ld hl, sp+$07
    inc [hl]
    jr nz, jr_01f_500d

    inc hl
    inc [hl]

jr_01f_500d:
    ld hl, sp+$05
    inc [hl]
    jr nz, jr_01f_5014

    inc hl
    inc [hl]

jr_01f_5014:
    ld hl, sp+$03
    inc [hl]
    jr nz, jr_01f_501b

    inc hl
    inc [hl]

jr_01f_501b:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01f_5022

    inc hl
    inc [hl]

jr_01f_5022:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_4fa0


Jump_01f_5028:
    add sp, $09
    pop bc
    ret


Call_01f_502c:
    push bc
    ld c, $99
    ld b, $4f
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    pop bc
    ret


Call_01f_5043:
    push bc
    ld c, $00

Jump_01f_5046:
    ld a, c
    cp $ff
    jp nc, Jump_01f_5065

    push af
    inc sp
    call Call_01f_502c
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5061

    ld a, c
    push af
    inc sp
    call Call_01f_4ee4
    add sp, $01

Jump_01f_5061:
    inc c
    jp Jump_01f_5046


Jump_01f_5065:
    pop bc
    ret


Call_01f_5067:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00
    ld b, $00

Jump_01f_5070:
    ld a, b
    cp $20
    jp nc, Jump_01f_508a

    push af
    inc sp
    call Call_01f_4eb7
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01f_5086

    ld hl, sp+$00
    inc [hl]

Jump_01f_5086:
    inc b
    jp Jump_01f_5070


Jump_01f_508a:
    ld hl, sp+$00
    ld e, [hl]
    add sp, $01
    pop bc
    ret


Call_01f_5091:
    push bc
    add sp, -$01
    call Call_01f_5067
    ld hl, sp+$00
    ld [hl], e
    ld b, $00

Jump_01f_509c:
    ld a, b
    cp $20
    jp nc, Jump_01f_50bb

    push af
    inc sp
    call Call_01f_4eb7
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01f_50b7

    ld a, b
    push af
    inc sp
    call Call_01f_4f60
    add sp, $01

Jump_01f_50b7:
    inc b
    jp Jump_01f_509c


Jump_01f_50bb:
    call Call_01f_5067
    ld c, e
    ld hl, sp+$00
    ld a, [hl]
    cp c
    jp nz, Jump_01f_50ca

    ld a, $01
    jr jr_01f_50cb

Jump_01f_50ca:
    xor a

jr_01f_50cb:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    ld e, c
    add sp, $01
    pop bc
    ret


Call_01f_50d8:
    push bc
    ld a, $06
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
    bit 5, a
    jp z, Jump_01f_50f8

    and $1f
    ld c, a
    push af
    inc sp
    call Call_01f_4e9f
    add sp, $01

Jump_01f_50f8:
    pop bc
    ret


Call_01f_50fa:
    push bc
    ld c, $00

Jump_01f_50fd:
    ld a, c
    cp $40
    jp nc, Jump_01f_511c

    push af
    inc sp
    call Call_01f_4ec9
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5118

    ld a, c
    push af
    inc sp
    call Call_01f_50d8
    add sp, $01

Jump_01f_5118:
    inc c
    jp Jump_01f_50fd


Jump_01f_511c:
    pop bc
    ret


Call_01f_511e:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00

Jump_01f_5125:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5150

    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $00
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    ld hl, sp+$08
    ld a, [hl]
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01f_514a

    inc hl
    inc [hl]

jr_01f_514a:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_5125


Jump_01f_5150:
    add sp, $01
    pop bc
    ret


Call_01f_5154:
    push bc
    add sp, -$0a
    ld hl, sp+$0e
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_5165

jr_01f_5160:
    or a
    rl c
    rl b

jr_01f_5165:
    dec a
    jr nz, jr_01f_5160

    ld hl, sp+$0e
    ld a, [hl]
    cp $20
    jp c, Jump_01f_5173

    call Call_000_144b

Jump_01f_5173:
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
    ld a, $01
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    ld hl, sp+$06
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    push bc
    ld a, $00
    push af
    inc sp
    call Call_01f_511e
    add sp, $03
    add sp, $0a
    pop bc
    ret


Call_01f_5206:
    push bc
    add sp, -$03
    ld hl, sp+$02
    ld [hl], $00
    ld b, $00

Jump_01f_520f:
    ld a, b
    cp $20
    jp nc, Jump_01f_5247

    push af
    inc sp
    call Call_01f_4eb7
    ld c, e
    add sp, $01
    xor a
    or c
    jp nz, Jump_01f_5243

    ld hl, sp+$00
    ld [hl], b
    inc hl
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01f_4af8
    ld c, e
    add sp, $02
    xor a
    or c
    jp nz, Jump_01f_523b

    ld hl, sp+$02
    inc [hl]

Jump_01f_523b:
    ld a, b
    push af
    inc sp
    call Call_01f_5154
    add sp, $01

Jump_01f_5243:
    inc b
    jp Jump_01f_520f


Jump_01f_5247:
    ld hl, sp+$02
    ld e, [hl]
    add sp, $03
    pop bc
    ret


Call_01f_524e:
    push bc
    ld hl, $0020
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c47e
    push hl
    call Call_000_3892
    add sp, $05
    call Call_01f_50fa
    call Call_01f_5043

Jump_01f_5266:
    call Call_01f_5091
    ld c, e
    xor a
    or c
    jp nz, Jump_01f_5266

    call Call_01f_5206
    ld c, e
    pop bc
    ret


Call_01f_5275:
    push bc
    add sp, -$0b
    ld hl, $c41e
    ld a, [hl]
    ld hl, sp+$08
    ld [hl], a
    di
    ld hl, sp+$09
    ld [hl], $00

Jump_01f_5284:
    ld hl, sp+$09
    ld a, [hl]
    cp $80
    jp nc, Jump_01f_52a2

    ld c, $43
    ld b, $4e
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$09
    inc [hl]
    jp Jump_01f_5284


Jump_01f_52a2:
    ei
    di
    ld hl, $c41e
    ld [hl], $00

Jump_01f_52a9:
    ld hl, $c41e
    ld a, [hl]
    cp $04
    jp nc, Jump_01f_531b

    ld hl, sp+$0a
    ld [hl], $00

Jump_01f_52b6:
    ld hl, sp+$0a
    ld a, [hl]
    cp $c0
    jp nz, Jump_01f_52c2

    ld a, $01
    jr jr_01f_52c3

Jump_01f_52c2:
    xor a

jr_01f_52c3:
    ld hl, sp+$06
    ld [hl], a
    or a
    jp nz, Jump_01f_5314

    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    ld hl, $c41e
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$0b
    ld [hl], e
    add sp, $02
    ld a, e
    and $80
    dec hl
    dec hl
    ld [hl], a
    or a
    jp nz, Jump_01f_530a

    ld hl, sp+$02
    ld [hl], $67
    inc hl
    ld [hl], $4d
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$09
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04

Jump_01f_530a:
    ld hl, sp+$0a
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_52b6


Jump_01f_5314:
    ld hl, $c41e
    inc [hl]
    jp Jump_01f_52a9


Jump_01f_531b:
    ld hl, sp+$08
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    ei
    di
    ld hl, sp+$09
    ld [hl], $00

Jump_01f_5328:
    ld hl, sp+$09
    ld a, [hl]
    cp $80
    jp nc, Jump_01f_53a9

    ld c, $59
    ld b, $4f
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    xor a
    or c
    jp nz, Jump_01f_53a3

    ld hl, sp+$0a
    ld [hl], $00

Jump_01f_534a:
    ld hl, sp+$0a
    ld a, [hl]
    cp $10
    ld a, $00
    rla
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01f_53a3

    ld a, $ff
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_48c4
    add sp, $03
    ld hl, sp+$00
    ld [hl], $ff
    inc hl
    ld [hl], $55
    dec hl
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    ld a, $00
    push af
    inc sp
    ld hl, sp+$0b
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $06
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    ld hl, sp+$0a
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_534a


Jump_01f_53a3:
    ld hl, sp+$09
    inc [hl]
    jp Jump_01f_5328


Jump_01f_53a9:
    ei
    add sp, $0b
    pop bc
    ret


Call_01f_53ae:
    push bc
    add sp, -$02
    ld hl, sp+$01
    ld [hl], $00

Jump_01f_53b5:
    ld hl, sp+$01
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_53f8

    ld b, $87
    ld c, $6e
    push af
    inc sp
    ld hl, sp+$07
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
    ld hl, sp+$05
    ld [hl], e
    add sp, $05
    ld a, e
    cp $ff
    jp z, Jump_01f_53f2

    ld b, $fb
    ld c, $4c
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

Jump_01f_53f2:
    ld hl, sp+$01
    inc [hl]
    jp Jump_01f_53b5


Jump_01f_53f8:
    add sp, $02
    pop bc
    ret


Call_01f_53fc:
    push bc
    ld c, $59
    ld b, $4f
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_0c18
    ld c, e
    add sp, $04
    pop bc
    ret


Call_01f_5413:
    push bc
    ld c, $00

Jump_01f_5416:
    ld a, c
    cp $80
    jp nc, Jump_01f_5435

    push af
    inc sp
    call Call_01f_53fc
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5431

    ld a, c
    push af
    inc sp
    call Call_01f_53ae
    add sp, $01

Jump_01f_5431:
    inc c
    jp Jump_01f_5416


Jump_01f_5435:
    pop bc
    ret


Call_01f_5437:
    push bc
    add sp, -$0b
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    di
    ld hl, $0000
    ld [hl], $0a
    ld a, $05
    jr jr_01f_545c

jr_01f_5454:
    or a
    ld hl, sp+$05
    rl [hl]
    inc hl
    rl [hl]

jr_01f_545c:
    dec a
    jr nz, jr_01f_5454

    ld a, $05
    jr jr_01f_546b

jr_01f_5463:
    or a
    ld hl, sp+$03
    rl [hl]
    inc hl
    rl [hl]

jr_01f_546b:
    dec a
    jr nz, jr_01f_5463

    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$09
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a000
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $4000
    ld [hl], $00
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_54a1:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_54d3

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_54b6

    inc hl
    inc [hl]

jr_01f_54b6:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_54c3

    inc hl
    inc [hl]

jr_01f_54c3:
    ld a, b
    cp c
    jp z, Jump_01f_54cd

    ld e, $00
    jp Jump_01f_55db


Jump_01f_54cd:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_54a1


Jump_01f_54d3:
    ld hl, $4000
    ld [hl], $03
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b000
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b000
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_54fc:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_552e

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5511

    inc hl
    inc [hl]

jr_01f_5511:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_551e

    inc hl
    inc [hl]

jr_01f_551e:
    ld a, c
    cp b
    jp z, Jump_01f_5528

    ld e, $00
    jp Jump_01f_55db


Jump_01f_5528:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_54fc


Jump_01f_552e:
    ld hl, $4000
    ld [hl], $02
    ld hl, sp+$05
    ld c, [hl]
    inc hl
    ld a, [hl]
    or $a0
    ld b, a
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld c, [hl]
    inc hl
    ld a, [hl]
    or $a0
    ld b, a
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_5551:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5583

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5566

    inc hl
    inc [hl]

jr_01f_5566:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5573

    inc hl
    inc [hl]

jr_01f_5573:
    ld a, c
    cp b
    jp z, Jump_01f_557d

    ld e, $00
    jp Jump_01f_55db


Jump_01f_557d:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_5551


Jump_01f_5583:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $aff0
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $aff0
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_55a7:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_55d9

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_55bc

    inc hl
    inc [hl]

jr_01f_55bc:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_55c9

    inc hl
    inc [hl]

jr_01f_55c9:
    ld a, c
    cp b
    jp z, Jump_01f_55d3

    ld e, $00
    jp Jump_01f_55db


Jump_01f_55d3:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_55a7


Jump_01f_55d9:
    ld e, $01

Jump_01f_55db:
    add sp, $0b
    pop bc
    ret


Call_01f_55df:
    push bc
    add sp, -$0b
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    di
    ld hl, $0000
    ld [hl], $0a
    ld a, $05
    jr jr_01f_5604

jr_01f_55fc:
    or a
    ld hl, sp+$05
    rl [hl]
    inc hl
    rl [hl]

jr_01f_5604:
    dec a
    jr nz, jr_01f_55fc

    ld a, $05
    jr jr_01f_5613

jr_01f_560b:
    or a
    ld hl, sp+$03
    rl [hl]
    inc hl
    rl [hl]

jr_01f_5613:
    dec a
    jr nz, jr_01f_560b

    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a080
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$09
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a080
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $4000
    ld [hl], $01
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_5649:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_567b

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_565e

    inc hl
    inc [hl]

jr_01f_565e:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_566b

    inc hl
    inc [hl]

jr_01f_566b:
    ld a, b
    cp c
    jp z, Jump_01f_5675

    ld e, $00
    jp Jump_01f_56d3


Jump_01f_5675:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_5649


Jump_01f_567b:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a880
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $a880
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_569f:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_56d1

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_56b4

    inc hl
    inc [hl]

jr_01f_56b4:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_56c1

    inc hl
    inc [hl]

jr_01f_56c1:
    ld a, c
    cp b
    jp z, Jump_01f_56cb

    ld e, $00
    jp Jump_01f_56d3


Jump_01f_56cb:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_569f


Jump_01f_56d1:
    ld e, $01

Jump_01f_56d3:
    add sp, $0b
    pop bc
    ret


Call_01f_56d7:
    push bc
    add sp, -$0b
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], $00
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    jr jr_01f_56f6

jr_01f_56ee:
    or a
    ld hl, sp+$05
    rl [hl]
    inc hl
    rl [hl]

jr_01f_56f6:
    dec a
    jr nz, jr_01f_56ee

    ld a, $05
    jr jr_01f_5705

jr_01f_56fd:
    or a
    ld hl, sp+$03
    rl [hl]
    inc hl
    rl [hl]

jr_01f_5705:
    dec a
    jr nz, jr_01f_56fd

    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b680
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl]
    ld hl, sp+$09
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b680
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_5741:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5773

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5756

    inc hl
    inc [hl]

jr_01f_5756:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5763

    inc hl
    inc [hl]

jr_01f_5763:
    ld a, b
    cp c
    jp z, Jump_01f_576d

    ld e, $00
    jp Jump_01f_592d


Jump_01f_576d:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_5741


Jump_01f_5773:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b880
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b880
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_5797:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_57c9

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_57ac

    inc hl
    inc [hl]

jr_01f_57ac:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_57b9

    inc hl
    inc [hl]

jr_01f_57b9:
    ld a, c
    cp b
    jp z, Jump_01f_57c3

    ld e, $00
    jp Jump_01f_592d


Jump_01f_57c3:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_5797


Jump_01f_57c9:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ba80
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $ba80
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_57ed:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_581f

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5802

    inc hl
    inc [hl]

jr_01f_5802:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_580f

    inc hl
    inc [hl]

jr_01f_580f:
    ld a, c
    cp b
    jp z, Jump_01f_5819

    ld e, $00
    jp Jump_01f_592d


Jump_01f_5819:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_57ed


Jump_01f_581f:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $bc80
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $bc80
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_5843:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5875

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5858

    inc hl
    inc [hl]

jr_01f_5858:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_5865

    inc hl
    inc [hl]

jr_01f_5865:
    ld a, c
    cp b
    jp z, Jump_01f_586f

    ld e, $00
    jp Jump_01f_592d


Jump_01f_586f:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_5843


Jump_01f_5875:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b690
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b690
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $4000
    ld [hl], $00
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_589e:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_58d0

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_58b3

    inc hl
    inc [hl]

jr_01f_58b3:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_58c0

    inc hl
    inc [hl]

jr_01f_58c0:
    ld a, c
    cp b
    jp z, Jump_01f_58ca

    ld e, $00
    jp Jump_01f_592d


Jump_01f_58ca:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_589e


Jump_01f_58d0:
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b480
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$09
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b480
    add hl, de
    ld c, l
    ld b, h
    ld hl, sp+$07
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $4000
    ld [hl], $01
    ld hl, sp+$02
    ld [hl], $00

Jump_01f_58f9:
    ld hl, sp+$02
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_592b

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    dec hl
    inc [hl]
    jr nz, jr_01f_590e

    inc hl
    inc [hl]

jr_01f_590e:
    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    dec hl
    inc [hl]
    jr nz, jr_01f_591b

    inc hl
    inc [hl]

jr_01f_591b:
    ld a, c
    cp b
    jp z, Jump_01f_5925

    ld e, $00
    jp Jump_01f_592d


Jump_01f_5925:
    ld hl, sp+$02
    inc [hl]
    jp Jump_01f_58f9


Jump_01f_592b:
    ld e, $01

Jump_01f_592d:
    add sp, $0b
    pop bc
    ret


Call_01f_5931:
    push bc
    add sp, -$03
    ld bc, $a080
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01

Jump_01f_5942:
    ld a, c
    cp $80
    jp nz, Jump_01f_594e

    ld a, b
    cp $a8
    jp z, Jump_01f_595d

Jump_01f_594e:
    ld a, [bc]
    ld hl, sp+$07
    cp [hl]
    jp nz, Jump_01f_5959

    ld hl, sp+$08
    ld a, [hl]
    ld [bc], a

Jump_01f_5959:
    inc bc
    jp Jump_01f_5942


Jump_01f_595d:
    ld hl, $0000
    ld [hl], $00
    ei
    ld c, $d3
    ld b, $4d
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$02
    ld [hl], $04

Jump_01f_597a:
    ld hl, sp+$02
    ld a, [hl]
    add $ff
    ld b, a
    ld de, $c454
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
    ld hl, sp+$07
    cp [hl]
    jp nz, Jump_01f_59a1

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$08
    ld a, [hl]
    ld [de], a

Jump_01f_59a1:
    ld hl, sp+$02
    ld [hl], b
    ld a, b
    or b
    jp nz, Jump_01f_597a

    add sp, $03
    pop bc
    ret


Call_01f_59ad:
    push bc
    add sp, -$03
    ld bc, $b290
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $00

Jump_01f_59be:
    ld a, c
    cp $90
    jp nz, Jump_01f_59ca

    ld a, b
    cp $b6
    jp z, Jump_01f_59d9

Jump_01f_59ca:
    ld a, [bc]
    ld hl, sp+$07
    cp [hl]
    jp nz, Jump_01f_59d5

    ld hl, sp+$08
    ld a, [hl]
    ld [bc], a

Jump_01f_59d5:
    inc bc
    jp Jump_01f_59be


Jump_01f_59d9:
    ld hl, $0000
    ld [hl], $00
    ei
    ld c, $43
    ld b, $4e
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    push bc
    ld a, $01
    push af
    inc sp
    call Call_000_178a
    add sp, $04
    ld hl, sp+$02
    ld [hl], $04

Jump_01f_59f6:
    ld hl, sp+$02
    ld a, [hl]
    add $ff
    ld b, a
    ld de, $c450
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
    ld hl, sp+$07
    cp [hl]
    jp nz, Jump_01f_5a1d

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$08
    ld a, [hl]
    ld [de], a

Jump_01f_5a1d:
    ld hl, sp+$02
    ld [hl], b
    ld a, b
    or b
    jp nz, Jump_01f_59f6

    add sp, $03
    pop bc
    ret


Call_01f_5a29:
    push bc
    add sp, -$06
    ld hl, sp+$04
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, sp+$02
    ld [hl], $80
    inc hl
    ld [hl], $b8
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $01

Jump_01f_5a45:
    ld hl, sp+$04
    ld a, [hl]
    cp $80
    jp nz, Jump_01f_5a54

    inc hl
    ld a, [hl]
    cp $b8
    jp z, Jump_01f_5a86

Jump_01f_5a54:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $01
    jp nz, Jump_01f_5a75

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$0a
    cp [hl]
    jp nz, Jump_01f_5a75

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a

Jump_01f_5a75:
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_01f_5a7c

    inc hl
    inc [hl]

jr_01f_5a7c:
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01f_5a83

    inc hl
    inc [hl]

jr_01f_5a83:
    jp Jump_01f_5a45


Jump_01f_5a86:
    ld hl, sp+$04
    ld [hl], $80
    inc hl
    ld [hl], $ba
    ld hl, sp+$02
    ld [hl], $80
    inc hl
    ld [hl], $bc

Jump_01f_5a94:
    ld hl, sp+$04
    ld a, [hl]
    cp $80
    jp nz, Jump_01f_5aa3

    inc hl
    ld a, [hl]
    cp $bc
    jp z, Jump_01f_5ad5

Jump_01f_5aa3:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $01
    jp nz, Jump_01f_5ac4

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$0a
    cp [hl]
    jp nz, Jump_01f_5ac4

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a

Jump_01f_5ac4:
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_01f_5acb

    inc hl
    inc [hl]

jr_01f_5acb:
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01f_5ad2

    inc hl
    inc [hl]

jr_01f_5ad2:
    jp Jump_01f_5a94


Jump_01f_5ad5:
    ld hl, $4000
    ld [hl], $02
    ld hl, sp+$04
    ld [hl], $00
    inc hl
    ld [hl], $a0
    ld hl, sp+$02
    ld [hl], $f0
    inc hl
    ld [hl], $af

Jump_01f_5ae8:
    ld hl, sp+$04
    ld a, [hl]
    cp $f0
    jp nz, Jump_01f_5af7

    inc hl
    ld a, [hl]
    cp $af
    jp z, Jump_01f_5b29

Jump_01f_5af7:
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $01
    jp nz, Jump_01f_5b18

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$0a
    cp [hl]
    jp nz, Jump_01f_5b18

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$0b
    ld a, [hl]
    ld [de], a

Jump_01f_5b18:
    ld hl, sp+$04
    inc [hl]
    jr nz, jr_01f_5b1f

    inc hl
    inc [hl]

jr_01f_5b1f:
    ld hl, sp+$02
    inc [hl]
    jr nz, jr_01f_5b26

    inc hl
    inc [hl]

jr_01f_5b26:
    jp Jump_01f_5ae8


Jump_01f_5b29:
    ld hl, $0000
    ld [hl], $00
    ei
    ld hl, sp+$01
    ld [hl], $00
    ld hl, sp+$0b
    ld a, [hl]
    or $20
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$0a
    ld a, [hl]
    or $20
    ld c, a

Jump_01f_5b41:
    ld hl, sp+$01
    ld a, [hl]
    cp $40
    jp z, Jump_01f_5b75

    ld a, $06
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl]
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    ld a, b
    cp c
    jp nz, Jump_01f_5b6f

    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, $06
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_000_0942
    add sp, $03

Jump_01f_5b6f:
    ld hl, sp+$01
    inc [hl]
    jp Jump_01f_5b41


Jump_01f_5b75:
    add sp, $06
    pop bc
    ret


Call_01f_5b79:
    push bc
    add sp, -$02
    ld hl, sp+$01
    ld [hl], $00

Jump_01f_5b80:
    ld hl, sp+$01
    ld a, [hl]
    cp $ff
    jp nc, Jump_01f_5c01

    push af
    inc sp
    call Call_01f_502c
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5bfb

    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$01
    ld a, [hl]
    add $01
    dec hl
    ld [hl], a

Jump_01f_5bae:
    ld hl, sp+$00
    ld a, [hl]
    cp $ff
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_01f_5bfb

    ld a, [hl]
    push af
    inc sp
    call Call_01f_502c
    ld hl, $c9c6
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01f_5bf1

    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_5437
    ld hl, $c9c7
    ld [hl], e
    add sp, $02
    ld a, e
    or e
    jp z, Jump_01f_5bf1

    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_5931
    add sp, $02

Jump_01f_5bf1:
    ld hl, sp+$00
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01f_5bae


Jump_01f_5bfb:
    ld hl, sp+$01
    inc [hl]
    jp Jump_01f_5b80


Jump_01f_5c01:
    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    call Call_000_2f24
    call Call_000_2f24
    add sp, $02
    pop bc
    ret


Call_01f_5c13:
    push bc
    add sp, -$02
    ld hl, sp+$01
    ld [hl], $00

Jump_01f_5c1a:
    ld hl, sp+$01
    ld a, [hl]
    cp $80
    jp nc, Jump_01f_5c9b

    push af
    inc sp
    call Call_01f_53fc
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5c95

    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$01
    ld a, [hl]
    add $01
    dec hl
    ld [hl], a

Jump_01f_5c48:
    ld hl, sp+$00
    ld a, [hl]
    cp $80
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_01f_5c95

    ld a, [hl]
    push af
    inc sp
    call Call_01f_53fc
    ld hl, $c9c8
    ld [hl], e
    add sp, $01
    ld a, e
    or e
    jp z, Jump_01f_5c8b

    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_55df
    ld hl, $c9c9
    ld [hl], e
    add sp, $02
    ld a, e
    or e
    jp z, Jump_01f_5c8b

    ld hl, sp+$01
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_59ad
    add sp, $02

Jump_01f_5c8b:
    ld hl, sp+$00
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01f_5c48


Jump_01f_5c95:
    ld hl, sp+$01
    inc [hl]
    jp Jump_01f_5c1a


Jump_01f_5c9b:
    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    ld hl, $5cb0
    push hl
    call Call_000_2eda
    add sp, $02
    add sp, $02
    pop bc
    ret


    ld c, a
    ld c, e
    nop

Call_01f_5cb3:
    push bc
    add sp, -$06
    ld hl, sp+$05
    ld [hl], $00

Jump_01f_5cba:
    ld hl, sp+$05
    ld a, [hl]
    cp $20
    jp nc, Jump_01f_5d4c

    ld hl, sp+$02
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01f_4af8
    ld b, e
    add sp, $02
    xor a
    or b
    jp nz, Jump_01f_5d46

    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    call Call_000_2de6
    add sp, $01
    ld hl, sp+$05
    ld a, [hl]
    add $01
    dec hl
    ld [hl], a

Jump_01f_5cf0:
    ld hl, sp+$04
    ld a, [hl]
    cp $20
    ld a, $00
    rla
    dec hl
    dec hl
    ld [hl], a
    or a
    jp z, Jump_01f_5d46

    inc hl
    inc hl
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_01f_4af8
    ld c, e
    add sp, $02
    xor a
    or c
    jp nz, Jump_01f_5d3c

    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_56d7
    ld hl, $c9ca
    ld [hl], e
    add sp, $02
    ld a, e
    or e
    jp z, Jump_01f_5d3c

    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    dec hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_5a29
    add sp, $02

Jump_01f_5d3c:
    ld hl, sp+$04
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01f_5cf0


Jump_01f_5d46:
    ld hl, sp+$05
    inc [hl]
    jp Jump_01f_5cba


Jump_01f_5d4c:
    ld hl, $c574
    ld [hl], $ae
    inc hl
    ld [hl], $98
    ld hl, $5d61
    push hl
    call Call_000_2eda
    add sp, $02
    add sp, $06
    pop bc
    ret


    ld c, a
    ld c, e
    nop

Call_01f_5d64:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00
    ld b, $00

Jump_01f_5d6d:
    ld a, b
    cp $ff
    jp nc, Jump_01f_5d87

    push af
    inc sp
    call Call_01f_502c
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01f_5d83

    ld hl, sp+$00
    inc [hl]

Jump_01f_5d83:
    inc b
    jp Jump_01f_5d6d


Jump_01f_5d87:
    ld hl, sp+$00
    ld e, [hl]
    add sp, $01
    pop bc
    ret


Call_01f_5d8e:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00
    ld b, $00

Jump_01f_5d97:
    ld a, b
    cp $80
    jp nc, Jump_01f_5db1

    push af
    inc sp
    call Call_01f_53fc
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01f_5dad

    ld hl, sp+$00
    inc [hl]

Jump_01f_5dad:
    inc b
    jp Jump_01f_5d97


Jump_01f_5db1:
    ld hl, sp+$00
    ld e, [hl]
    add sp, $01
    pop bc
    ret


Call_01f_5db8:
    push bc
    add sp, -$07
    ld hl, $4000
    ld [hl], $01
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $0020
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $be82
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0000
    ld [hl], $00
    ei
    call Call_01f_5413
    ld hl, sp+$06
    ld [hl], $00

Jump_01f_5de4:
    ld hl, sp+$06
    ld a, [hl]
    cp $ff
    jp nc, Jump_01f_5eb7

    push af
    inc sp
    call Call_01f_502c
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_01f_5eb1

    ld hl, sp+$06
    ld a, [hl]
    dec hl
    dec hl
    ld [hl+], a
    ld [hl], $00
    ld a, $05
    jr jr_01f_5e0d

jr_01f_5e05:
    or a
    ld hl, sp+$04
    rl [hl]
    inc hl
    rl [hl]

jr_01f_5e0d:
    dec a
    jr nz, jr_01f_5e05

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
    dec hl
    dec hl
    ld a, [hl]
    or $a0
    ld [hl], a
    dec hl
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$01
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $4000
    ld [hl], $00
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0010
    push hl
    ld a, $00
    push af
    inc sp
    push bc
    call Call_000_3892
    add sp, $05
    ld hl, $4000
    ld [hl], $02
    ld hl, $0010
    push hl
    ld a, $00
    push af
    inc sp
    push bc
    call Call_000_3892
    add sp, $05
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0ff0
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
    ld hl, $0010
    push hl
    ld a, $00
    push af
    inc sp
    push bc
    call Call_000_3892
    add sp, $05
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ld hl, $4000
    ld [hl], $03
    ld hl, sp+$04
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0010
    push hl
    ld a, $ff
    push af
    inc sp
    push bc
    call Call_000_3892
    add sp, $05
    ld hl, $0000
    ld [hl], $00
    ei

Jump_01f_5eb1:
    ld hl, sp+$06
    inc [hl]
    jp Jump_01f_5de4


Jump_01f_5eb7:
    add sp, $07
    pop bc
    ret


Call_01f_5ebb:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_5ecc

jr_01f_5ec7:
    or a
    rl c
    rl b

jr_01f_5ecc:
    dec a
    jr nz, jr_01f_5ec7

    ld hl, $a000
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_5edd:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_5f1a

    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld l, b
    ld h, c
    push hl
    ld a, $03
    push af
    inc sp
    call Call_000_149a
    ld c, e
    add sp, $03
    ld de, $4919
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    cp c
    jr nz, jr_01f_5f08

    jp Jump_01f_5f0d


jr_01f_5f08:
    ld e, $01
    jp Jump_01f_5f1c


Jump_01f_5f0d:
    ld hl, sp+$01
    inc [hl]
    jr nz, jr_01f_5f14

    inc hl
    inc [hl]

jr_01f_5f14:
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_5edd


Jump_01f_5f1a:
    ld e, $00

Jump_01f_5f1c:
    add sp, $03
    pop bc
    ret


Call_01f_5f20:
    push bc
    add sp, -$01
    ld hl, sp+$05
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, sp+$00
    ld [hl], $00

Jump_01f_5f35:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp z, Jump_01f_5f57

    ld a, c
    push af
    inc sp
    call Call_01f_5ebb
    ld b, e
    add sp, $01
    xor a
    or b
    jp z, Jump_01f_5f50

    ld e, $01
    jp Jump_01f_5f59


Jump_01f_5f50:
    inc c
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_5f35


Jump_01f_5f57:
    ld e, $00

Jump_01f_5f59:
    add sp, $01
    pop bc
    ret


Call_01f_5f5d:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00
    ld b, $00

Jump_01f_5f66:
    ld a, b
    cp $10
    jp nc, Jump_01f_5f80

    push af
    inc sp
    call Call_01f_5f20
    ld c, e
    add sp, $01
    xor a
    or c
    jp z, Jump_01f_5f7c

    ld hl, sp+$00
    inc [hl]

Jump_01f_5f7c:
    inc b
    jp Jump_01f_5f66


Jump_01f_5f80:
    ld hl, sp+$00
    ld e, [hl]
    add sp, $01
    pop bc
    ret


Call_01f_5f87:
    push bc
    add sp, -$0b
    ld hl, sp+$09
    ld [hl], $00
    inc hl
    ld [hl], $a0
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_5f95:
    ld hl, sp+$08
    ld a, [hl]
    cp $ff
    jp z, Jump_01f_6009

    ld hl, sp+$07
    ld [hl], $00

Jump_01f_5fa1:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    ld a, $00
    rla
    dec hl
    ld [hl], a
    or a
    jp z, Jump_01f_6003

    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a
    ld hl, sp+$0a
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_149a
    ld hl, sp+$05
    ld [hl], e
    add sp, $03
    ld a, e
    cp $06
    jp nz, Jump_01f_5fd6

    ld a, $01
    jr jr_01f_5fd7

Jump_01f_5fd6:
    xor a

jr_01f_5fd7:
    ld hl, sp+$03
    ld [hl], a
    or a
    jp z, Jump_01f_5fe3

    ld e, $01
    jp Jump_01f_600b


Jump_01f_5fe3:
    ld hl, sp+$09
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
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$07
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_5fa1


Jump_01f_6003:
    ld hl, sp+$08
    inc [hl]
    jp Jump_01f_5f95


Jump_01f_6009:
    ld e, $00

Jump_01f_600b:
    add sp, $0b
    pop bc
    ret


Call_01f_600f:
    push bc
    add sp, -$13
    ld hl, sp+$11
    ld [hl], $80
    inc hl
    ld [hl], $b6
    ld hl, sp+$0f
    ld [hl], $80
    inc hl
    ld [hl], $ba
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_6024:
    ld hl, sp+$0e
    ld a, [hl]
    cp $20
    jp nc, Jump_01f_60e1

    dec hl
    ld [hl], $00

Jump_01f_602f:
    ld hl, sp+$0d
    ld a, [hl]
    cp $10
    ld a, $00
    rla
    dec hl
    ld [hl], a
    or a
    jp z, Jump_01f_60db

    ld hl, sp+$11
    ld a, [hl]
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$12
    ld a, [hl]
    ld hl, sp+$0b
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
    ld hl, sp+$0b
    ld [hl], e
    add sp, $03
    ld a, e
    cp $06
    jp nz, Jump_01f_6064

    ld a, $01
    jr jr_01f_6065

Jump_01f_6064:
    xor a

jr_01f_6065:
    ld hl, sp+$09
    ld [hl], a
    or a
    jp z, Jump_01f_6071

    ld e, $01
    jp Jump_01f_60e3


Jump_01f_6071:
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$06
    ld [hl], a
    ld hl, sp+$10
    ld a, [hl]
    ld hl, sp+$07
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
    ld hl, sp+$07
    ld [hl], e
    add sp, $03
    ld a, e
    cp $06
    jp nz, Jump_01f_6098

    ld a, $01
    jr jr_01f_6099

Jump_01f_6098:
    xor a

jr_01f_6099:
    ld hl, sp+$05
    ld [hl], a
    or a
    jp z, Jump_01f_60a5

    ld e, $01
    jp Jump_01f_60e3


Jump_01f_60a5:
    ld hl, sp+$11
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
    ld hl, sp+$11
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$0f
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
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$0f
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$0d
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_602f


Jump_01f_60db:
    ld hl, sp+$0e
    inc [hl]
    jp Jump_01f_6024


Jump_01f_60e1:
    ld e, $00

Jump_01f_60e3:
    add sp, $13
    pop bc
    ret


Call_01f_60e7:
    push bc
    call Call_01f_5f87
    ld c, e
    call Call_01f_600f
    ld b, e
    xor a
    or c
    jr nz, jr_01f_60f6

    xor a
    or b

jr_01f_60f6:
    jr z, jr_01f_60fa

    ld a, $01

jr_01f_60fa:
    ld c, a
    ld e, c
    pop bc
    ret


Call_01f_60fe:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_610d

jr_01f_6108:
    or a
    rl c
    rl b

jr_01f_610d:
    dec a
    jr nz, jr_01f_6108

    ld a, c
    add $00
    ld c, a
    ld a, b
    adc $a0
    ld b, a
    ld hl, $4000
    ld [hl], $03
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $0010
    push hl
    ld hl, $4919
    push hl
    push bc
    call Call_000_3846
    add sp, $06
    ld hl, $0000
    ld [hl], $00
    ei
    pop bc
    ret


Call_01f_6139:
    push bc
    ld hl, sp+$04
    ld a, [hl]
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld b, $00

Jump_01f_614a:
    ld a, b
    cp $10
    jp nc, Jump_01f_615d

    ld a, c
    push af
    inc sp
    call Call_01f_60fe
    add sp, $01
    inc c
    inc b
    jp Jump_01f_614a


Jump_01f_615d:
    pop bc
    ret


Call_01f_615f:
    push bc
    ld hl, sp+$04
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_01f_616e

jr_01f_6169:
    or a
    rl c
    rl b

jr_01f_616e:
    dec a
    jr nz, jr_01f_6169

    ld a, c
    add $b2
    ld c, a
    ld a, b
    adc $be
    ld b, a
    ld hl, $4000
    ld [hl], $01
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $0010
    push hl
    ld hl, $619a
    push hl
    push bc
    call Call_000_3846
    add sp, $06
    ld hl, $0000
    ld [hl], $00
    ei
    pop bc
    ret


    nop
    nop
    nop
    nop
    nop
    db $10
    rst $38
    nop
    nop
    db $10
    rst $38
    nop
    nop
    nop
    nop
    nop

Call_01f_61aa:
    push bc
    add sp, -$13
    ld hl, sp+$12
    ld [hl], $10
    ld hl, sp+$02
    ld d, h
    ld e, l
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01f_61ba:
    ld hl, sp+$12
    ld a, [hl]
    add $ff
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, c
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $00
    ld [de], a
    ld hl, sp+$12
    ld [hl], c
    ld a, c
    or c
    jp nz, Jump_01f_61ba

    ld c, $00

Jump_01f_61d8:
    ld a, c
    cp $40
    jp nc, Jump_01f_621b

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
    and $03
    ld b, a
    cp $01
    jp nz, Jump_01f_6217

    ld a, $03
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_0a80
    ld b, e
    add sp, $02
    srl b
    srl b
    srl b
    srl b
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld l, b
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [de], a

Jump_01f_6217:
    inc c
    jp Jump_01f_61d8


Jump_01f_621b:
    ld hl, sp+$12
    ld [hl], $00

Jump_01f_621f:
    ld hl, sp+$12
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_6254

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, sp+$12
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_01f_624e

    ld hl, sp+$12
    ld a, [hl]
    push af
    inc sp
    call Call_01f_615f
    add sp, $01
    ld hl, sp+$12
    ld a, [hl]
    push af
    inc sp
    call Call_01f_6139
    add sp, $01

Jump_01f_624e:
    ld hl, sp+$12
    inc [hl]
    jp Jump_01f_621f


Jump_01f_6254:
    add sp, $13
    pop bc
    ret


Call_01f_6258:
    push bc
    call Call_01f_5f5d
    ld c, e
    call Call_01f_60e7
    ld b, e
    xor a
    or b
    jp z, Jump_01f_626b

    ld e, $00
    jp Jump_01f_6276


Jump_01f_626b:
    call Call_01f_61aa
    call Call_01f_5f5d
    ld b, e
    ld a, c
    sub b
    ld c, a
    ld e, c

Jump_01f_6276:
    pop bc
    ret


    push bc
    add sp, -$02
    call Call_01f_5d64
    ld hl, sp+$01
    ld [hl], e
    call Call_01f_5d8e
    ld hl, sp+$00
    ld [hl], e
    ld hl, $c574
    ld [hl], $a4
    inc hl
    ld [hl], $98
    ld hl, $6318
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_01f_5b79
    call Call_01f_5c13
    ld hl, $c574
    ld [hl], $c4
    inc hl
    ld [hl], $98
    ld hl, $6323
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $e4
    inc hl
    ld [hl], $98
    ld hl, $632c
    push hl
    call Call_000_35c5
    add sp, $02
    call Call_01f_5275
    call Call_01f_5d8e
    ld b, e
    ld hl, sp+$00
    ld a, [hl]
    sub b
    ld b, a
    ld c, $00
    ld l, b
    ld h, c
    push hl
    ld hl, $6337
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $04
    inc hl
    ld [hl], $99
    ld hl, $633a
    push hl
    call Call_000_35c5
    add sp, $02
    call Call_01f_5db8
    call Call_01f_5d64
    ld c, e
    ld hl, sp+$01
    ld a, [hl]
    sub c
    ld c, a
    ld b, $00
    push bc
    ld hl, $6345
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $44
    inc hl
    ld [hl], $99
    ld hl, $6348
    push hl
    call Call_000_35c5
    add sp, $02
    add sp, $02
    pop bc
    ret


    ld b, h
    ld b, l
    dec l
    ld b, h
    ld d, l
    ld d, b
    ld b, l
    ld l, $2e
    ld l, $00
    ld b, [hl]
    ld d, d
    ld b, l
    ld b, l
    ld c, c
    ld c, [hl]
    ld b, a
    ld a, [hl-]
    nop
    ld b, e
    ld c, b
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    ld l, $2e
    ld l, $2e
    nop
    dec h
    ld h, h
    nop
    ld d, b
    ld c, b
    ld d, d
    ld b, c
    ld d, e
    ld b, l
    ld d, e
    ld l, $2e
    ld l, $00
    dec h
    ld h, h
    nop
    ld c, a
    ld c, e
    ld hl, $c500
    ld hl, $c574
    ld [hl], $a4
    inc hl
    ld [hl], $98
    ld hl, $63e8
    push hl
    call Call_000_2eda
    add sp, $02
    call Call_01f_5cb3
    ld hl, $c574
    ld [hl], $c4
    inc hl
    ld [hl], $98
    ld hl, $63f3
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, $c574
    ld [hl], $e4
    inc hl
    ld [hl], $98
    ld hl, $63fc
    push hl
    call Call_000_35c5
    add sp, $02
    call Call_01f_4c68
    ld c, e
    ld b, $00
    push bc
    ld hl, $6407
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $04
    inc hl
    ld [hl], $99
    ld hl, $640a
    push hl
    call Call_000_35c5
    add sp, $02
    call Call_01f_524e
    ld c, e
    ld b, $00
    push bc
    ld hl, $6415
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $24
    inc hl
    ld [hl], $99
    ld hl, $6418
    push hl
    call Call_000_35c5
    add sp, $02
    call Call_01f_6258
    ld c, e
    ld b, $00
    push bc
    ld hl, $6423
    push hl
    call Call_000_35c5
    add sp, $04
    ld hl, $c574
    ld [hl], $64
    inc hl
    ld [hl], $99
    ld hl, $6426
    push hl
    call Call_000_35c5
    add sp, $02
    pop bc
    ret


    ld b, h
    ld b, l
    dec l
    ld b, h
    ld d, l
    ld d, b
    ld b, l
    ld l, $2e
    ld l, $00
    ld b, [hl]
    ld d, d
    ld b, l
    ld b, l
    ld c, c
    ld c, [hl]
    ld b, a
    ld a, [hl-]
    nop
    ld c, c
    ld c, [hl]
    ld d, e
    ld d, h
    ld d, d
    ld d, e
    ld l, $2e
    ld l, $2e
    nop
    dec h
    ld h, h
    nop
    ld d, h
    ld b, c
    ld b, d
    ld c, h
    ld b, l
    ld d, e
    ld l, $2e
    ld l, $2e
    nop
    dec h
    ld h, h
    nop
    ld d, e
    ld e, c
    ld c, [hl]
    ld d, h
    ld c, b
    ld d, e
    ld l, $2e
    ld l, $2e
    nop
    dec h
    ld h, h
    nop
    ld c, a
    ld c, e
    ld hl, $c500
    ld hl, $c572
    ld a, [hl]
    cp $ff
    jp z, Jump_01f_6437

    jp Jump_01f_647a


Jump_01f_6437:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_01f_6471

    ld hl, $c41e
    ld c, [hl]
    ld a, $68
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c415
    cp [hl]
    jp nz, Jump_01f_6471

    ld hl, $c41e
    ld c, [hl]
    ld a, $6c
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
    jp Jump_01f_647a


Jump_01f_6471:
    ld a, $00
    push af
    inc sp
    call Call_000_313e
    add sp, $01

Jump_01f_647a:
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
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0002
    inc bc
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $c500
    add sp, -$05
    ld hl, sp+$09
    ld a, [hl]
    cp $04
    jp c, Jump_01f_64a8

    call Call_000_144b

Jump_01f_64a8:
    ld hl, $c7a9
    ld [hl], $00
    inc hl
    ld [hl], $00
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_01f_6525

    ld hl, sp+$09
    ld c, [hl]
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_01f_6525

    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$04
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_01f_64e2

    ld e, $00
    jp Jump_01f_65ed


Jump_01f_64e2:
    ld a, $68
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld a, [hl]
    bit 7, a
    jp z, Jump_01f_64fa

    ld e, $00
    jp Jump_01f_65ed


Jump_01f_64fa:
    ld a, $7c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    ld a, [hl]
    and $f0
    jr nz, jr_01f_650f

    jp Jump_01f_6514


jr_01f_650f:
    ld e, $00
    jp Jump_01f_65ed


Jump_01f_6514:
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c41f
    ld [hl], a
    jp Jump_01f_65b0


Jump_01f_6525:
    ld hl, $c41f
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0a
    ld a, [hl]
    push af
    inc sp
    call Call_000_0ae5
    ld hl, sp+$06
    ld [hl], e
    add sp, $02
    ld a, e
    bit 7, a
    jp z, Jump_01f_6543

    ld e, $00
    jp Jump_01f_65ed


Jump_01f_6543:
    ld hl, $c41b
    ld a, [hl]
    ld hl, sp+$03
    ld [hl], a
    ld c, $87
    ld b, $6e
    ld hl, sp+$00
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $c41b
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$07
    ld [hl], e
    add sp, $05

Jump_01f_6570:
    ld hl, sp+$02
    ld a, [hl]
    cp $ff
    jp nz, Jump_01f_657c

    ld a, $01
    jr jr_01f_657d

Jump_01f_657c:
    xor a

jr_01f_657d:
    ld c, a
    or c
    jp z, Jump_01f_65a6

    xor a
    ld hl, sp+$03
    or [hl]
    jp z, Jump_01f_65a6

    dec [hl]
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $02
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$07
    ld [hl], e
    add sp, $05
    jp Jump_01f_6570


Jump_01f_65a6:
    xor a
    or c
    jp z, Jump_01f_65b0

    ld e, $00
    jp Jump_01f_65ed


Jump_01f_65b0:
    call Call_01f_6e7d
    ld hl, sp+$09
    ld a, [hl]
    ld hl, $c41e
    ld [hl], a
    ld hl, sp+$04
    ld a, [hl]
    ld hl, $c419
    ld [hl], a
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c41b
    ld [hl], a
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c415
    ld [hl], a
    ld c, $e5
    ld b, $4c
    push bc
    ld a, $04
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
    ld e, $01

Jump_01f_65ed:
    add sp, $05
    pop bc
    ret


    push bc
    ld hl, $c41e
    ld a, [hl]
    add $01
    ld c, a

Jump_01f_65f9:
    ld a, c
    cp $04
    jp nc, Jump_01f_6610

    push af
    inc sp
    call $649a
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_01f_6610

    inc c
    jp Jump_01f_65f9


Jump_01f_6610:
    pop bc
    ret


    push bc
    ld hl, $c41e
    ld a, [hl]
    add $ff
    ld c, a

Jump_01f_661a:
    ld a, c
    cp $04
    jp nc, Jump_01f_6631

    push af
    inc sp
    call $649a
    ld b, e
    add sp, $01
    xor a
    or b
    jp nz, Jump_01f_6631

    dec c
    jp Jump_01f_661a


Jump_01f_6631:
    pop bc
    ret


    push bc
    add sp, -$46
    ld hl, sp+$4a
    ld a, [hl]
    ld hl, sp+$42
    ld [hl], a
    ld hl, $c412
    ld a, [hl]
    cp $01
    jp z, Jump_01f_6648

    jp Jump_01f_6ac9


Jump_01f_6648:
    xor a
    ld hl, sp+$42
    or [hl]
    jp z, Jump_01f_6657

    ld de, $6acd
    ld b, e
    ld c, d
    jp Jump_01f_665c


Jump_01f_6657:
    ld de, $6ad1
    ld b, e
    ld c, d

Jump_01f_665c:
    ld l, b
    ld h, c
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c414
    ld [hl], $02
    ld hl, $c416
    ld a, [hl]
    ld hl, $c410
    ld [hl], a
    ld hl, $c417
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
    ld hl, $c40e
    ld a, [hl]
    cp $04
    jp nz, Jump_01f_66a1

    ld hl, $c40e
    ld [hl], $03

Jump_01f_66a1:
    ld hl, $c410
    ld a, [hl]
    cp $03
    jp nz, Jump_01f_66af

    ld hl, $c410
    ld [hl], $04

Jump_01f_66af:
    ld hl, $c410
    ld a, [hl]
    cp $01
    jp nz, Jump_01f_66ca

    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_01f_66ca

    ld hl, sp+$42
    ld [hl], $00
    ld hl, $c410
    ld [hl], $02

Jump_01f_66ca:
    ld hl, $c410
    inc [hl]
    ld hl, $c411
    inc [hl]
    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$44
    ld [hl], a

Jump_01f_66d9:
    xor a
    ld hl, sp+$44
    ld a, [hl]
    ld hl, $c411
    sbc [hl]
    jp nc, Jump_01f_6a8f

    ld hl, $c40e
    ld a, [hl]
    ld hl, sp+$45
    ld [hl], a
    ld de, $c90b
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$40
    ld [hl+], a
    ld [hl], d

Jump_01f_66f9:
    xor a
    ld hl, sp+$45
    ld a, [hl]
    ld hl, $c410
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$3e
    ld [hl], a
    or a
    jp z, Jump_01f_6a89

    ld hl, sp+$45
    ld a, [hl]
    ld hl, $c416
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    ld hl, $c417
    ld [hl], a
    call Call_01f_6e7d
    xor a
    ld a, $04
    ld hl, sp+$45
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$3f
    ld [hl], a
    or a
    jp nz, Jump_01f_6a7f

    ld hl, sp+$45
    ld e, [hl]
    ld d, $00
    ld hl, $6738
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_01f_6747


    jp Jump_01f_681c


    jp Jump_01f_6926


    jp Jump_01f_699a


    jp Jump_01f_6a0e


Jump_01f_6747:
    ld hl, sp+$40
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$3c
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_01f_675a

    ld a, $01
    jr jr_01f_675b

Jump_01f_675a:
    xor a

jr_01f_675b:
    ld hl, sp+$3d
    ld [hl], a
    or a
    jp nz, Jump_01f_67d9

    ld hl, sp+$38
    ld [hl], $68
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$3b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$47
    ld [hl], e
    add sp, $04
    ld a, e
    srl a
    srl a
    srl a
    srl a
    ld hl, sp+$37
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$4a
    or [hl]
    jp z, Jump_01f_67d9

    ld hl, sp+$43
    ld a, [hl]
    and $0f
    ld hl, sp+$36
    ld [hl], a
    ld hl, sp+$32
    ld [hl], $8f
    inc hl
    ld [hl], $41
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl+], a
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$36
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $05

Jump_01f_67d9:
    ld hl, $c410
    ld a, [hl]
    cp $01
    jp nz, Jump_01f_67e6

    ld a, $01
    jr jr_01f_67e7

Jump_01f_67e6:
    xor a

jr_01f_67e7:
    ld hl, sp+$30
    ld [hl], a
    or a
    jp z, Jump_01f_6a7f

    ld hl, $c41e
    ld a, [hl]
    cp $02
    jp nz, Jump_01f_67fb

    ld a, $01
    jr jr_01f_67fc

Jump_01f_67fb:
    xor a

jr_01f_67fc:
    ld hl, sp+$31
    ld [hl], a
    or a
    jp z, Jump_01f_6a7f

    ld a, $ff
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$42
    ld [hl], $00
    jp Jump_01f_6926


Jump_01f_681c:
    ld hl, sp+$40
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$2e
    ld [hl], a
    ld a, [hl]
    cp $ff
    jp nz, Jump_01f_682f

    ld a, $01
    jr jr_01f_6830

Jump_01f_682f:
    xor a

jr_01f_6830:
    ld hl, sp+$2f
    ld [hl], a
    or a
    jp z, Jump_01f_68b1

    ld a, $00
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$2a
    ld [hl], $68
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$2d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$2d
    ld [hl], e
    add sp, $04
    ld a, e
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$4a
    or [hl]
    jp z, Jump_01f_6a7f

    ld hl, sp+$25
    ld [hl], $8f
    inc hl
    ld [hl], $41
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $00
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$29
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $05
    jp Jump_01f_6a7f


Jump_01f_68b1:
    ld hl, sp+$21
    ld [hl], $68
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$24
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$47
    ld [hl], e
    add sp, $04
    ld a, e
    and $0f
    ld hl, sp+$1f
    ld [hl], a
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$4a
    or [hl]
    jp z, Jump_01f_6a7f

    ld hl, sp+$43
    ld a, [hl]
    and $f0
    ld hl, sp+$20
    ld [hl], a
    ld hl, sp+$1b
    ld [hl], $8f
    inc hl
    ld [hl], $41
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
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$1f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $05
    jp Jump_01f_6a7f


Jump_01f_6926:
    ld hl, sp+$17
    ld [hl], $18
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$1b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$1b
    ld [hl], e
    add sp, $05
    ld a, e
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$42
    or [hl]
    jp z, Jump_01f_6a7f

    ld hl, sp+$12
    ld [hl], $f0
    inc hl
    ld [hl], $41
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
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$17
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_01f_6a7f


Jump_01f_699a:
    ld hl, sp+$0e
    ld [hl], $ea
    inc hl
    ld [hl], $4a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$12
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$12
    ld [hl], e
    add sp, $05
    ld a, e
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$4a
    or [hl]
    jp z, Jump_01f_6a7f

    ld hl, sp+$09
    ld [hl], $c5
    inc hl
    ld [hl], $49
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $00
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0cb4
    add sp, $06
    jp Jump_01f_6a7f


Jump_01f_6a0e:
    ld hl, sp+$05
    ld [hl], $8f
    inc hl
    ld [hl], $4a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld hl, sp+$44
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
    push af
    inc sp
    ld hl, sp+$09
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    push af
    inc sp
    call Call_000_0c7e
    ld hl, sp+$09
    ld [hl], e
    add sp, $05
    ld a, e
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    ld hl, sp+$4a
    or [hl]
    jp z, Jump_01f_6a7f

    ld hl, sp+$00
    ld [hl], $30
    inc hl
    ld [hl], $4a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    dec hl
    ld a, [hl+]
    inc hl
    ld [hl], a
    ld a, $00
    push af
    inc sp
    ld hl, sp+$45
    ld a, [hl]
    push af
    inc sp
    ld hl, $c415
    ld a, [hl]
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
    call Call_000_0cb4
    add sp, $06

Jump_01f_6a7f:
    ld hl, sp+$45
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_66f9


Jump_01f_6a89:
    ld hl, sp+$44
    inc [hl]
    jp Jump_01f_66d9


Jump_01f_6a8f:
    ld hl, $c410
    ld a, [hl]
    cp $01
    jp nz, Jump_01f_6a9d

    ld hl, $c410
    ld [hl], $03

Jump_01f_6a9d:
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
    ld hl, $c416
    ld [hl], a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c417
    ld [hl], a
    ld c, $e5
    ld b, $4c
    push bc
    ld a, $04
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01f_6ac9:
    add sp, $46
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

Call_01f_6ad6:
    push bc
    add sp, -$01
    ld hl, sp+$05
    ld c, [hl]
    ld a, $7c
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    and $f0
    jr nz, jr_01f_6af3

    jp Jump_01f_6af6


jr_01f_6af3:
    call Call_000_144b

Jump_01f_6af6:
    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_01f_6b03

    ld hl, sp+$00
    inc [hl]
    inc [hl]
    inc [hl]

Jump_01f_6b03:
    ld hl, sp+$06
    ld b, [hl]
    ld a, $0b
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $fe
    jp z, Jump_01f_6b1b

    cp $ff
    jp nz, Jump_01f_6b5a

Jump_01f_6b1b:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01f_6b28

    ld b, $03
    jp Jump_01f_6b2a


Jump_01f_6b28:
    ld b, $02

Jump_01f_6b2a:
    ld hl, sp+$05
    ld c, [hl]
    ld a, $8b
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9cb
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    add $02
    ld c, a
    ld a, b
    push af
    inc sp
    ld hl, $c9cb
    ld a, [hl]
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
    jp Jump_01f_6ba8


Jump_01f_6b5a:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01f_6b6a

    ld hl, $c9cb
    ld [hl], $03
    jp Jump_01f_6b6f


Jump_01f_6b6a:
    ld hl, $c9cb
    ld [hl], $02

Jump_01f_6b6f:
    ld hl, sp+$05
    ld b, [hl]
    ld a, $86
    add b
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, $c9cc
    ld [hl], a
    ld hl, sp+$06
    ld a, [hl]
    add $02
    ld c, a
    ld a, $81
    add b
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld hl, $c9cb
    ld a, [hl]
    push af
    inc sp
    ld hl, $c9cc
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_1261
    add sp, $04

Jump_01f_6ba8:
    add sp, $01
    pop bc
    ret


    push bc
    ld hl, $c417
    ld c, [hl]
    ld hl, $c416
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_01f_6ad6
    add sp, $02
    pop bc
    ret


    push bc
    add sp, -$03
    ld hl, sp+$07
    ld c, [hl]
    dec c
    ld a, c
    cp $0e
    jp nc, Jump_01f_6c1f

    ld b, $00
    ld hl, $0003
    push hl
    push bc
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $bdd0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$01
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_6beb:
    ld hl, sp+$00
    ld a, [hl]
    cp $03
    jp nc, Jump_01f_6c28

    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_6bfd

    inc hl
    inc [hl]

jr_01f_6bfd:
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
    or c
    jp nz, Jump_01f_6c11

    ld c, $20

Jump_01f_6c11:
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$00
    inc [hl]
    jp Jump_01f_6beb


Jump_01f_6c1f:
    ld hl, $6c2c
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_6c28:
    add sp, $03
    pop bc
    ret


    dec l
    dec l
    dec l
    nop

Call_01f_6c30:
    push bc
    add sp, -$03
    ld hl, sp+$07
    ld c, [hl]
    ld a, $7c
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$08
    ld a, [hl]
    add $02
    ld hl, sp+$01
    ld [hl], a
    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_01f_6c58

    ld hl, sp+$02
    inc [hl]
    inc [hl]
    inc [hl]

Jump_01f_6c58:
    ld hl, $c417
    ld a, [hl]
    and $f0
    jr nz, jr_01f_6c63

    jp Jump_01f_6c66


jr_01f_6c63:
    call Call_000_144b

Jump_01f_6c66:
    ld hl, sp+$08
    ld b, [hl]
    ld a, $0b
    add b
    ld e, a
    ld a, $c9
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $fe
    jp z, Jump_01f_6c7e

    cp $ff
    jp nz, Jump_01f_6c99

Jump_01f_6c7e:
    ld a, $8b
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $95
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$00
    ld [hl], a
    jp Jump_01f_6cbe


Jump_01f_6c99:
    ld a, $81
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    ld a, $86
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    ld a, $90
    add c
    ld e, a
    ld a, $64
    adc $00
    ld d, a
    ld a, [de]
    dec hl
    dec hl
    ld [hl], a

Jump_01f_6cbe:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    ld a, b
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
    add sp, $03
    pop bc
    ret


    push bc
    add sp, -$10
    ld hl, $c412
    ld a, [hl]
    cp $01
    jp z, Jump_01f_6ce6

    jp Jump_01f_6e79


Jump_01f_6ce6:
    ld hl, $c416
    ld c, [hl]
    xor a
    ld hl, $c40e
    ld a, [hl]
    sbc c
    jp nc, Jump_01f_6d03

    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a
    ld hl, $c416
    ld a, [hl]
    add $01
    ld hl, sp+$0b
    ld [hl], a
    jp Jump_01f_6d13


Jump_01f_6d03:
    ld hl, $c40e
    ld a, [hl]
    add $01
    ld hl, sp+$0b
    ld [hl], a
    ld hl, $c416
    ld a, [hl]
    ld hl, sp+$0d
    ld [hl], a

Jump_01f_6d13:
    xor a
    ld hl, $c40f
    ld a, [hl]
    ld hl, $c417
    sbc [hl]
    jp nc, Jump_01f_6d32

    ld hl, $c40f
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a
    ld hl, $c417
    ld a, [hl]
    add $01
    ld hl, sp+$0a
    ld [hl], a
    jp Jump_01f_6d42


Jump_01f_6d32:
    ld hl, $c40f
    ld a, [hl]
    add $01
    ld hl, sp+$0a
    ld [hl], a
    ld hl, $c417
    ld a, [hl]
    ld hl, sp+$0c
    ld [hl], a

Jump_01f_6d42:
    xor a
    ld hl, sp+$0d
    or [hl]
    jp z, Jump_01f_6d52

    ld a, [hl]
    add $ff
    inc hl
    inc hl
    ld [hl], a
    jp Jump_01f_6d56


Jump_01f_6d52:
    ld hl, sp+$0f
    ld [hl], $00

Jump_01f_6d56:
    ld hl, sp+$0b
    ld a, [hl]
    add $01
    ld hl, sp+$08
    ld [hl], a
    ld hl, sp+$0c
    ld a, [hl]
    add $ff
    ld hl, sp+$09
    ld [hl+], a
    ld a, [hl]
    add $01
    ld hl, sp+$07
    ld [hl], a
    ld hl, sp+$0a
    ld a, [hl]
    cp $10
    jp nz, Jump_01f_6d78

    ld a, $01
    jr jr_01f_6d79

Jump_01f_6d78:
    xor a

jr_01f_6d79:
    ld hl, sp+$03
    ld [hl], a
    ld hl, sp+$0b
    ld a, [hl]
    cp $05
    jp nz, Jump_01f_6d88

    ld a, $01
    jr jr_01f_6d89

Jump_01f_6d88:
    xor a

jr_01f_6d89:
    ld hl, sp+$06
    ld [hl], a

Jump_01f_6d8c:
    xor a
    ld hl, sp+$06
    or [hl]
    jp z, Jump_01f_6d98

    ld b, $05
    jp Jump_01f_6d9b


Jump_01f_6d98:
    ld hl, sp+$08
    ld b, [hl]

Jump_01f_6d9b:
    xor a
    ld hl, sp+$0f
    ld a, [hl]
    sbc b
    jp nc, Jump_01f_6e39

    xor a
    ld hl, sp+$0c
    or [hl]
    jp z, Jump_01f_6db0

    ld hl, sp+$09
    ld b, [hl]
    jp Jump_01f_6db2


Jump_01f_6db0:
    ld b, $00

Jump_01f_6db2:
    ld hl, sp+$0e
    ld [hl], b
    xor a
    inc hl
    ld a, [hl]
    ld hl, sp+$0b
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$05
    ld [hl], a
    xor a
    ld hl, sp+$0f
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$04
    ld [hl], a

Jump_01f_6dce:
    xor a
    ld hl, sp+$03
    or [hl]
    jp z, Jump_01f_6dda

    ld b, $10
    jp Jump_01f_6ddd


Jump_01f_6dda:
    ld hl, sp+$07
    ld b, [hl]

Jump_01f_6ddd:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    sbc b
    ld a, $00
    rla
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_01f_6e33

    xor a
    inc hl
    inc hl
    or [hl]
    jp nz, Jump_01f_6e1b

    xor a
    inc hl
    or [hl]
    jp z, Jump_01f_6e1b

    xor a
    ld hl, sp+$0e
    ld a, [hl]
    dec hl
    dec hl
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$01
    ld [hl], a
    or a
    jp nz, Jump_01f_6e1b

    xor a
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$0a
    sbc [hl]
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_01f_6e29

Jump_01f_6e1b:
    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_6c30
    add sp, $02

Jump_01f_6e29:
    ld hl, sp+$0e
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_6dce


Jump_01f_6e33:
    ld hl, sp+$0f
    inc [hl]
    jp Jump_01f_6d8c


Jump_01f_6e39:
    ld hl, sp+$0d
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_01f_6e3e:
    xor a
    ld hl, sp+$0f
    ld a, [hl]
    ld hl, sp+$0b
    sbc [hl]
    jp nc, Jump_01f_6e79

    inc hl
    ld a, [hl+]
    inc hl
    ld [hl], a

Jump_01f_6e4c:
    xor a
    ld hl, sp+$0e
    ld a, [hl]
    ld hl, sp+$0a
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    or c
    jp z, Jump_01f_6e73

    ld hl, sp+$0e
    ld a, [hl]
    push af
    inc sp
    inc hl
    ld a, [hl]
    push af
    inc sp
    call Call_01f_6ad6
    add sp, $02
    ld hl, sp+$0e
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_01f_6e4c


Jump_01f_6e73:
    ld hl, sp+$0f
    inc [hl]
    jp Jump_01f_6e3e


Jump_01f_6e79:
    add sp, $10
    pop bc
    ret


Call_01f_6e7d:
    push bc
    ld hl, $c417
    ld c, [hl]
    ld hl, $c416
    ld b, [hl]
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_01f_6c30
    add sp, $02
    pop bc
    ret


Call_01f_6e93:
    push bc
    add sp, -$04
    ld hl, sp+$08
    ld a, [hl]
    add $06
    ld hl, sp+$03
    ld [hl], a
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$08
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld de, $c0a0
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_01f_6f59

    ld de, $6fdf
    ld hl, sp+$01
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    ld de, $c0a4
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    or a
    jp z, Jump_01f_6ef1

    cp $01
    jp z, Jump_01f_6f02

    cp $02
    jp z, Jump_01f_6f0d

    jp Jump_01f_6f15


Jump_01f_6ef1:
    ld de, $c9cd
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, $01
    ld [de], a
    jp Jump_01f_6f15


Jump_01f_6f02:
    ld de, $6fe4
    ld hl, sp+$01
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_01f_6f15


Jump_01f_6f0d:
    ld de, $6fe6
    ld hl, sp+$01
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01f_6f15:
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_2eda
    add sp, $02
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01f_6fd3

    ld a, $01
    ldh [rVBK], a
    ld hl, sp+$01
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_36e0
    ld b, d
    ld c, e
    add sp, $02
    ld hl, $6fd7
    push hl
    ld a, $01
    push af
    inc sp
    ld a, c
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a
    jp Jump_01f_6fd3


Jump_01f_6f59:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld de, $6fe8
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld de, $c9cd
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, $c9d1
    ld [hl+], a
    ld [hl], d
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_01f_6fab

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    ld hl, $6fed
    push hl
    call Call_000_2eda
    add sp, $02

Jump_01f_6fab:
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01f_6fd3

    ld a, $01
    ldh [rVBK], a
    ld hl, $6fdb
    push hl
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld a, $10
    push af
    inc sp
    call Call_000_39d0
    add sp, $06
    ld a, $00
    ldh [rVBK], a

Jump_01f_6fd3:
    add sp, $04
    pop bc
    ret


    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld c, l
    ld d, l
    ld d, h
    ld b, l
    nop
    ld c, h
    nop
    ld d, d
    nop
    ld sp, $5732
    ld c, [hl]
    nop
    jr nz, jr_01f_700f

    jr nz, jr_01f_6ff1

jr_01f_6ff1:
    ld a, $00
    push af
    inc sp
    call Call_01f_6e93
    add sp, $01
    ld a, $01
    push af
    inc sp
    call Call_01f_6e93
    add sp, $01
    ld a, $02
    push af
    inc sp
    call Call_01f_6e93
    add sp, $01
    ld a, $03
    push af

jr_01f_700f:
    inc sp
    call Call_01f_6e93
    add sp, $01
    ret


Call_01f_7016:
    push bc
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


Call_01f_7027:
    push bc
    ld hl, $c42a
    ld c, [hl]
    ld b, $00
    inc bc
    inc bc
    inc bc
    inc bc
    ld e, c
    pop bc
    ret


Call_01f_7035:
    push bc
    ld hl, $c42a
    ld c, [hl]
    ld a, c
    and $01
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    call Call_01f_7027
    ld b, e
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


Call_01f_705e:
    push bc
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01f_706c

    ld c, $03
    jp Jump_01f_706e


Jump_01f_706c:
    ld c, $02

Jump_01f_706e:
    call Call_01f_7027
    ld b, e
    ld a, c
    push af
    inc sp
    ld a, $03
    push af
    inc sp
    ld a, b
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_1261
    add sp, $04
    pop bc
    ret


    push bc
    add sp, -$0a
    ld hl, $c402
    ld [hl], $0b
    ld c, $ef
    ld b, $6c
    push bc
    ld a, $01
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
    ld hl, $c402
    ld [hl], $06
    ld c, $d0
    ld b, $45
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $40
    inc hl
    ld [hl], $98
    ld hl, $71be
    push hl
    call Call_000_2eda
    add sp, $02
    ld hl, sp+$08
    ld [hl], $d0
    inc hl
    ld [hl], $bd
    dec hl
    dec hl
    ld [hl], $04

Jump_01f_70e2:
    ld hl, sp+$07
    ld c, [hl]
    ld b, $00
    ld hl, $ffee
    add hl, bc
    jp c, Jump_01f_71b7

    ld hl, sp+$07
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$07
    ld c, [hl]
    ld a, c
    bit 0, a
    jp z, Jump_01f_7114

    ld hl, $c567
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c568
    ld a, [hl]
    ldh [$8c], a
    jp Jump_01f_711c


Jump_01f_7114:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a

Jump_01f_711c:
    ld hl, sp+$06
    ld [hl], $00

Jump_01f_7120:
    ld hl, sp+$06
    ld a, [hl]
    cp $03
    ld a, $00
    rla
    dec hl
    dec hl
    ld [hl], a
    or a
    jp z, Jump_01f_7179

    ld hl, sp+$08
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$03
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
    ld hl, sp+$08
    ld [hl], e
    add sp, $03
    ld a, e
    or e
    jp z, Jump_01f_7179

    ld a, e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$08
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
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$08
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_7120


Jump_01f_7179:
    ld hl, sp+$06
    ld a, [hl]
    cp $03
    ld a, $00
    rla
    ld hl, sp+$00
    ld [hl], a
    or a
    jp z, Jump_01f_71b1

    ld a, $20
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
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
    ld hl, sp+$06
    ld a, [hl]
    add $01
    ld c, a
    ld [hl], c
    jp Jump_01f_7179


Jump_01f_71b1:
    ld hl, sp+$07
    inc [hl]
    jp Jump_01f_70e2


Jump_01f_71b7:
    call Call_01f_705e
    add sp, $0a
    pop bc
    ret


    ld d, h
    ld e, c
    ld d, b
    ld b, l
    jr nz, jr_01f_71e4

    jr nz, jr_01f_7219

    ld d, b
    ld b, l
    ld b, l
    ld b, e
    ld c, b
    nop
    push bc
    add sp, -$08
    ld hl, $c576
    ld a, [hl]
    cp $04
    jp z, Jump_01f_72d5

    cp $08
    jp z, Jump_01f_72f1

    cp $10
    jp z, Jump_01f_721c

    cp $22

jr_01f_71e4:
    jp z, Jump_01f_770c

    cp $28
    jp z, Jump_01f_771e

    cp $30
    jp z, Jump_01f_7382

    cp $41
    jp z, Jump_01f_7348

    cp $42
    jp z, Jump_01f_7365

    cp $44
    jp z, Jump_01f_732b

    cp $48
    jp z, Jump_01f_730e

    cp $50
    jp z, Jump_01f_758e

    cp $60
    jp z, Jump_01f_7382

    cp $80
    jp z, Jump_01f_774b

    cp $c0
    jp z, Jump_01f_7730

jr_01f_7219:
    jp Jump_01f_776e


Jump_01f_721c:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01f_7229

    ld e, $00
    jp Jump_01f_7770


Jump_01f_7229:
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
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01f_7253

    inc hl
    inc [hl]

jr_01f_7253:
    ld hl, sp+$02
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
    ld de, $c432
    ld a, c
    ld [de], a
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_727d

    inc hl
    inc [hl]

jr_01f_727d:
    push bc
    ld a, $00
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
    ld de, $c432
    ld hl, $0002
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$06
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
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld de, $c435
    ld a, $00
    ld [de], a
    ld de, $c436
    ld [de], a
    ld hl, $c431
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
    jp Jump_01f_7770


Jump_01f_72d5:
    xor a
    ld hl, $c42a
    or [hl]
    jp nz, Jump_01f_72e2

    ld e, $00
    jp Jump_01f_7770


Jump_01f_72e2:
    call Call_01f_7035
    ld hl, $c42a
    dec [hl]
    call Call_01f_705e
    ld e, $01
    jp Jump_01f_7770


Jump_01f_72f1:
    ld hl, $c42a
    ld a, [hl]
    cp $0d
    jp nz, Jump_01f_72ff

    ld e, $00
    jp Jump_01f_7770


Jump_01f_72ff:
    call Call_01f_7035
    ld hl, $c42a
    inc [hl]
    call Call_01f_705e
    ld e, $01
    jp Jump_01f_7770


Jump_01f_730e:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_776e

    ld bc, $4287
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01f_7016
    ld e, $01
    jp Jump_01f_7770


Jump_01f_732b:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_776e

    ld bc, $426a
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01f_7016
    ld e, $01
    jp Jump_01f_7770


Jump_01f_7348:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_776e

    ld bc, $4253
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01f_7016
    ld e, $01
    jp Jump_01f_7770


Jump_01f_7365:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_776e

    ld bc, $4233
    push bc
    ld a, $05
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    call Call_01f_7016
    ld e, $01
    jp Jump_01f_7770


Jump_01f_7382:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01f_738f

    ld e, $00
    jp Jump_01f_7770


Jump_01f_738f:
    ld hl, $c576
    ld a, [hl]
    cp $60
    jp nz, Jump_01f_73a4

    ld hl, $7774
    push hl
    call Call_000_0dab
    add sp, $02
    jp Jump_01f_73ad


Jump_01f_73a4:
    ld hl, $7780
    push hl
    call Call_000_0dab
    add sp, $02

Jump_01f_73ad:
    ld hl, $c412
    ld [hl], $0b
    ld hl, $c414
    ld [hl], $02
    ld hl, $c42a
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
    ld a, $06
    jr jr_01f_73d4

jr_01f_73cc:
    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]

jr_01f_73d4:
    dec a
    jr nz, jr_01f_73cc

    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b890
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_73ea:
    ld hl, sp+$05
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_7485

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_149a
    ld b, e
    add sp, $03
    ld a, b
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, $c576
    ld a, [hl]
    cp $30
    jp nz, Jump_01f_741f

    ld a, $01
    jr jr_01f_7420

Jump_01f_741f:
    xor a

jr_01f_7420:
    ld b, a
    or b
    jp z, Jump_01f_7438

    ld a, $00
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01f_7438:
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01f_743f

    inc hl
    inc [hl]

jr_01f_743f:
    ld hl, sp+$06
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
    ld a, c
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    xor a
    or b
    jp z, Jump_01f_7478

    ld a, $00
    push af
    inc sp
    ld hl, sp+$07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04

Jump_01f_7478:
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01f_747f

    inc hl
    inc [hl]

jr_01f_747f:
    ld hl, sp+$05
    inc [hl]
    jp Jump_01f_73ea


Jump_01f_7485:
    ld hl, $0003
    push hl
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $bdd0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_74a4:
    ld hl, sp+$05
    ld a, [hl]
    cp $03
    jp nc, Jump_01f_74d9

    inc hl
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
    ld a, c
    push af
    inc sp
    ld hl, sp+$06
    ld a, [hl]
    push af
    inc sp
    ld a, $02
    push af
    inc sp
    call Call_000_08f7
    add sp, $03
    ld hl, sp+$06
    inc [hl]
    jr nz, jr_01f_74d3

    inc hl
    inc [hl]

jr_01f_74d3:
    ld hl, sp+$05
    inc [hl]
    jp Jump_01f_74a4


Jump_01f_74d9:
    ld hl, $c576
    ld a, [hl]
    cp $30
    jp nz, Jump_01f_7589

    call Call_01f_7027
    ld c, e
    ld a, c
    push af
    inc sp
    ld a, $00
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
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0003
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$07
    ld [hl], a
    dec hl
    ld [hl], e
    ld c, e
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_7519

    inc hl
    inc [hl]

jr_01f_7519:
    ld a, $57
    push af
    inc sp
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $57
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, sp+$06
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_753b

    inc hl
    inc [hl]

jr_01f_753b:
    ld a, $2d
    push af
    inc sp
    push bc
    ld a, $00
    push af
    inc sp
    call Call_000_1542
    add sp, $04
    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c42a
    ld a, [hl]
    ld hl, sp+$05
    ld [hl], a
    ld hl, $c42a
    ld a, [hl]
    cp $0a
    jp nc, Jump_01f_7567

    ld c, $30
    jp Jump_01f_7569


Jump_01f_7567:
    ld c, $37

Jump_01f_7569:
    ld hl, sp+$05
    ld a, [hl]
    add c
    ld [hl], a
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
    ld hl, sp+$05
    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01f_7589:
    ld e, $01
    jp Jump_01f_7770


Jump_01f_758e:
    xor a
    ld hl, $c40a
    or [hl]
    jp nz, Jump_01f_759b

    ld e, $00
    jp Jump_01f_7770


Jump_01f_759b:
    ld hl, $c412
    ld a, [hl]
    cp $0b
    jp z, Jump_01f_75a9

    ld e, $00
    jp Jump_01f_7770


Jump_01f_75a9:
    ld hl, $7789
    push hl
    call Call_000_0dab
    add sp, $02
    ld hl, $c42a
    ld a, [hl]
    ld hl, sp+$02
    ld [hl+], a
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
    ld a, $06
    jr jr_01f_75d2

jr_01f_75ca:
    or a
    ld hl, sp+$00
    rl [hl]
    inc hl
    rl [hl]

jr_01f_75d2:
    dec a
    jr nz, jr_01f_75ca

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $b890
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    dec hl
    dec hl
    ld [hl], $00

Jump_01f_75e8:
    ld hl, sp+$05
    ld a, [hl]
    cp $10
    jp nc, Jump_01f_766d

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4230
    add hl, de
    jp nc, Jump_01f_75fe

    call Call_000_144b

Jump_01f_75fe:
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$02
    ld [hl], e
    add sp, $02
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_761a

    inc hl
    inc [hl]

jr_01f_761a:
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
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4230
    add hl, de
    jp nc, Jump_01f_763a

    call Call_000_144b

Jump_01f_763a:
    ld hl, sp+$05
    ld a, [hl]
    push af
    inc sp
    ld a, $01
    push af
    inc sp
    call Call_000_07d2
    ld hl, sp+$02
    ld [hl], e
    add sp, $02
    ld hl, sp+$06
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_7656

    inc hl
    inc [hl]

jr_01f_7656:
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
    ld hl, sp+$05
    inc [hl]
    jp Jump_01f_75e8


Jump_01f_766d:
    ld hl, $0003
    push hl
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, $bdd0
    add hl, bc
    ld a, l
    ld d, h
    ld hl, sp+$06
    ld [hl+], a
    ld [hl], d
    ld hl, $c569
    ld a, [hl]
    ldh [$8d], a
    ld hl, $c56a
    ld a, [hl]
    ldh [$8c], a
    call Call_01f_7027
    ld c, e
    ld a, c
    push af
    inc sp
    ld a, $00
    push af
    inc sp
    call Call_000_33bc
    add sp, $02
    ld hl, sp+$05
    ld [hl], $00

Jump_01f_76a8:
    ld hl, sp+$05
    ld a, [hl]
    cp $03
    jp nc, Jump_01f_7707

    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $4188
    add hl, de
    jp nc, Jump_01f_76be

    call Call_000_144b

Jump_01f_76be:
    ld hl, sp+$05
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
    inc hl
    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    dec hl
    inc [hl]
    jr nz, jr_01f_76da

    inc hl
    inc [hl]

jr_01f_76da:
    ld hl, sp+$04
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
    ld hl, sp+$04
    or [hl]
    jp z, Jump_01f_76fe

    ld c, [hl]
    ld a, c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01f_7701


Jump_01f_76fe:
    call Call_000_2f24

Jump_01f_7701:
    ld hl, sp+$05
    inc [hl]
    jp Jump_01f_76a8


Jump_01f_7707:
    ld e, $01
    jp Jump_01f_7770


Jump_01f_770c:
    ld bc, $45fc
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01f_7770


Jump_01f_771e:
    ld bc, $4644
    push bc
    ld a, $03
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    ld e, $01
    jp Jump_01f_7770


Jump_01f_7730:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_7746

    ld c, $e6
    ld b, $77
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01f_7746:
    ld e, $01
    jp Jump_01f_7770


Jump_01f_774b:
    xor a
    ld hl, $c409
    or [hl]
    jp nz, Jump_01f_7769

    xor a
    ld hl, $c40c
    or [hl]
    jp nz, Jump_01f_7769

    ld c, $9b
    ld b, $7b
    push bc
    ld a, $02
    push af
    inc sp
    call Call_000_1769
    add sp, $03

Jump_01f_7769:
    ld e, $01
    jp Jump_01f_7770


Jump_01f_776e:
    ld e, $00

Jump_01f_7770:
    add sp, $08
    pop bc
    ret


    ld b, e
    ld c, a
    ld d, b
    ld c, c
    ld b, l
    ld b, h
    jr nz, jr_01f_77d3

    ld c, a
    ld d, d
    ld b, h
    nop
    ld b, e
    ld d, l
    ld d, h
    jr nz, jr_01f_77dc

    ld c, a
    ld d, d
    ld b, h
    nop
    ld d, b
    ld b, c
    ld d, e
    ld d, h
    ld b, l
    ld b, h
    jr nz, jr_01f_77e8

    ld c, a
    ld d, d
    ld b, h
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

jr_01f_77d3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01f_77dc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01f_77e8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
