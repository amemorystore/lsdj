; disasSembly of "lsdj.gb"
SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    push bc
    ld hl, $c402
    ld a, [hl]
    cp $08
    jp nz, Jump_01e_400d

    jp Jump_01e_42c6


Jump_01e_400d:
    ld a, $04
    ldh [$8d], a
    ld a, $01
    ldh [$8c], a
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld hl, $79ec
    push hl
    call Call_000_2eda
    add sp, $02
    ld de, $08b7
    ld hl, $c565
    ld [hl], e
    inc hl
    ld [hl], d
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01e_403c

    ld c, $48
    jp Jump_01e_403e


Jump_01e_403c:
    ld c, $d2

Jump_01e_403e:
    ld a, c
    ldh [$8c], a
    ld hl, $c402
    ld a, [hl]
    cp $01
    jp z, Jump_01e_4066

    cp $02
    jp z, Jump_01e_41d9

    cp $03
    jp z, Jump_01e_413f

    cp $04
    jp z, Jump_01e_4248

    cp $05
    jp z, Jump_01e_4176

    cp $0c
    jp z, Jump_01e_4211

    jp Jump_01e_42b0


Jump_01e_4066:
    xor a
    ld hl, $c90a
    or [hl]
    jp z, Jump_01e_40e4

    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $10
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $11
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $12
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $10
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $11
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $12
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $29
    inc hl
    ld [hl], $98
    ld a, $13
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $14
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $15
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $16
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $17
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_40e4:
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $10
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $11
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $12
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $98
    ld a, $13
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $14
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $15
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $16
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $17
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_413f:
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $18
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $19
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $25
    inc hl
    ld [hl], $98
    ld a, $1a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $1b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_4176:
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $1c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $1d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $25
    inc hl
    ld [hl], $98
    ld a, $1a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $1b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $16
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $17
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $2b
    inc hl
    ld [hl], $98
    ld a, $16
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $17
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_41d9:
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $1e
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $1f
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $20
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $21
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $22
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_4211:
    ld hl, $c574
    ld [hl], $22
    inc hl
    ld [hl], $98
    ld a, $23
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $24
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $98
    ld a, $25
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $26
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    jp Jump_01e_42b0


Jump_01e_4248:
    ld hl, $c574
    ld [hl], $23
    inc hl
    ld [hl], $98
    ld a, $27
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $28
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $26
    inc hl
    ld [hl], $98
    ld a, $27
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $29
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $29
    inc hl
    ld [hl], $98
    ld a, $2a
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $2b
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld hl, $c574
    ld [hl], $2c
    inc hl
    ld [hl], $98
    ld a, $2c
    push af
    inc sp
    call Call_000_2f26
    add sp, $01
    ld a, $2d
    push af
    inc sp
    call Call_000_2f26
    add sp, $01

Jump_01e_42b0:
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

Jump_01e_42c6:
    pop bc
    ret


    ld bc, $002e
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01e_42fd

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_430d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01e_431d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01e_432d

    ld [hl-], a

jr_01e_42fd:
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec l
    ld d, h
    nop
    ld l, $34
    daa
    nop
    nop
    nop

jr_01e_430d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_431d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_432d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $08
    rst $38
    ret nc

    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    di
    rst $38
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    di
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$cf]
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    dec bc
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld c, e
    ld c, c
    ld l, d
    ld l, d
    ld e, d
    ld e, d
    ld c, d
    ld c, d
    ld c, e
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    sbc l
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ret


    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, d
    ld e, d
    ld e, d
    ld d, [hl]
    ld d, [hl]
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ld [hl], a
    add d
    add d
    ld a, [c]
    ld h, d
    ld [de], a
    ld [de], a
    ld a, [c]
    ld [c], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld [hl], b
    ld [hl], b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld [hl-], a
    ld c, e
    ld c, e
    ld b, d
    ld b, d
    ld c, d
    ld c, d
    ld a, d
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ld l, $69
    ld l, c
    xor c
    xor c
    xor c
    xor c
    cpl
    ld l, $00
    nop

Jump_01e_44ca:
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], d
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld [hl], d
    ld [hl], d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, h
    ld d, d
    ld d, d
    jp nc, Jump_01e_5cd2

    ld e, h
    ld d, d
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], e
    inc h
    inc h
    daa
    inc hl
    jr nz, jr_01e_4516

    daa
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    cp b
    inc h
    inc h
    and h
    inc h
    cp b
    cp b
    and b
    jr nz, jr_01e_4509

jr_01e_4509:
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, h
    ld b, l
    ld b, l
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_01e_4516:
    ld de, $0010
    nop
    nop
    nop
    nop
    nop
    add sp, -$38
    jr z, jr_01e_454a

    jr z, jr_01e_454c

    jr z, jr_01e_454e

    xor $ce
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01e_4560

    ld b, c
    ld b, c
    add d
    add d
    ld b, h
    ld b, h
    jr z, jr_01e_4570

    nop
    nop

jr_01e_454a:
    nop
    nop

jr_01e_454c:
    nop
    nop

jr_01e_454e:
    cp l
    sbc l
    ld hl, $3d21
    add hl, de
    dec b
    dec b
    inc a
    jr c, jr_01e_4559

jr_01e_4559:
    nop
    nop
    nop
    nop
    nop
    dec d
    dec d

jr_01e_4560:
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    and l
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    daa

jr_01e_4570:
    xor b
    xor b
    ld l, e
    ld l, e
    add hl, hl
    add hl, hl
    cpl
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld [hl], d
    ld c, d
    ld c, d
    ld c, e
    ld c, e
    ld a, d
    ld [hl], d
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, d
    ld e, d
    ld e, d
    sub $d6
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld b, a
    ld b, a
    ld b, h
    ld b, h
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, b
    ld l, b
    ld l, b
    ld e, b
    ld e, b
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
    ld a, d
    ld [hl], d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld a, d
    ld [hl], d
    ld b, e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ret nc

    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, h
    ld b, d
    ld b, d
    ld e, [hl]
    ld c, h
    ld d, b
    ld d, b
    sbc $9e
    nop
    nop
    nop
    nop
    nop
    nop
    adc e
    adc c
    xor d
    xor d
    xor d
    xor d
    xor e
    xor e
    ld d, d
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    sub c
    ld d, c
    ld d, c
    ld c, d
    ld c, d
    jp z, Jump_01e_44ca

    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld c, c
    ld l, d
    ld l, d
    ld e, d
    ld e, d
    ld c, d
    ld c, d
    ld c, e
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    sub b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ret nc

    sub b
    nop
    nop
    ld bc, $0247
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_01e_4651

jr_01e_4651:
    ld b, e
    nop
    nop
    dec [hl]
    ld [hl], $01
    dec sp
    dec l
    daa
    ld l, $46
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    cpl
    ld b, l
    nop
    jr nc, jr_01e_46a1

    add hl, hl
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01e_4693

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_46a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $3c
    nop
    ld b, h
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_01e_4693:
    inc sp
    inc [hl]
    ld sp, $3732
    jr c, jr_01e_46d3

    ld a, [hl-]
    ld b, l
    nop
    nop
    nop
    nop
    nop

jr_01e_46a1:
    nop
    nop

jr_01e_46a3:
    dec [hl]
    inc l
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
    ld [$0c0c], sp
    ld a, [bc]
    ld a, [bc]
    ld [$7808], sp
    jr c, jr_01e_4731

    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_46d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    jr jr_01e_4708

    jr c, jr_01e_472a

    jr jr_01e_470c

    jr jr_01e_470e

    jr jr_01e_4710

    inc a
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld a, h
    inc a
    ld h, b
    ld h, b

jr_01e_4708:
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_01e_470c:
    nop
    nop

jr_01e_470e:
    ld a, [hl]
    inc a

jr_01e_4710:
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld c, $0c
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc l
    inc l
    ld c, h
    ld c, h
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    inc c
    inc c

jr_01e_472a:
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    ld h, b

jr_01e_4731:
    ld h, b
    ld a, [hl]
    ld a, h
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, h
    inc a
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc e
    inc c
    inc e
    jr jr_01e_476f

    jr jr_01e_4771

    jr jr_01e_475b

jr_01e_475b:
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]

jr_01e_476f:
    inc a
    ld h, [hl]

jr_01e_4771:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, $06
    ld b, $3e
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld a, h
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc a
    inc a
    jr jr_01e_481a

    jr jr_01e_481c

    jr jr_01e_481e

    jr jr_01e_4820

    inc a
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a

jr_01e_481a:
    nop
    nop

jr_01e_481c:
    nop
    nop

jr_01e_481e:
    ld h, [hl]
    ld h, [hl]

jr_01e_4820:
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, h
    ld a, h
    ld a, h
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld l, e
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld a, h
    inc a
    ld h, b
    ld h, b
    ld a, [hl]
    inc a
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_01e_48ca

    jr jr_01e_48cc

    jr jr_01e_48ce

    jr jr_01e_48d0

    jr jr_01e_48d2

    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a

jr_01e_48ca:
    nop
    nop

jr_01e_48cc:
    nop
    nop

jr_01e_48ce:
    ld h, [hl]
    ld h, [hl]

jr_01e_48d0:
    ld h, [hl]
    ld h, [hl]

jr_01e_48d2:
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    ld a, [hl]
    inc a
    inc a
    jr jr_01e_48db

jr_01e_48db:
    nop
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld a, a
    ld a, $00
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    jr jr_01e_4920

    jr jr_01e_4922

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld c, $06
    inc e
    inc c
    jr c, jr_01e_4946

    ld [hl], b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4920:
    nop
    nop

jr_01e_4922:
    inc a
    jr c, jr_01e_4961

    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld a, a
    ld a, a
    ld [hl], $36
    ld [hl], $36
    ld a, a
    ld a, a
    ld [hl], $36
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld e, $0c
    jr jr_01e_495e

jr_01e_4946:
    nop
    nop
    jr jr_01e_4962

    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    inc a
    inc a

jr_01e_495e:
    ld b, d
    ld b, d
    cp c

jr_01e_4961:
    sbc c

jr_01e_4962:
    and c
    and c
    and c
    and c
    cp c
    sbc c
    ld b, d
    ld b, d
    inc a
    inc a
    ld b, b
    ld b, b
    ld l, $26
    nop
    nop
    ld a, [hl]
    inc a
    ld b, d
    ld b, d
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_01e_49eb

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add c
    add c
    ld b, c
    ld b, c
    ld hl, $1121
    ld de, $0909
    dec b
    dec b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld de, $2111
    ld hl, $4141
    add c
    add c
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]
    nop
    nop

jr_01e_49eb:
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$aa4a], a
    xor d
    xor [hl]
    xor h
    ld [$004a], a
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_01e_4a22

    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    ld a, [hl]
    ld a, $30
    stop
    nop
    rlca
    ld [bc], a
    dec b
    dec b
    adc l
    dec b

jr_01e_4a22:
    adc b
    adc b
    adc b
    adc b
    ret c

    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    jr nz, jr_01e_4a9d

    jr nz, @+$52

    ld d, b
    ret c

    ld d, b
    adc b
    adc b
    adc b
    adc b
    adc l
    dec b
    dec b
    dec b
    rlca
    ld [bc], a
    nop
    nop
    rra
    rra
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $f1f1
    nop
    nop
    pop af
    pop af
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1f1f
    nop
    nop
    jr jr_01e_4a78

    jr jr_01e_4a7a

    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    jr jr_01e_4a80

    jr jr_01e_4a82

    nop
    nop
    nop
    nop
    ld c, $06
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_01e_4a78:
    ld c, $06

jr_01e_4a7a:
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_01e_4a80:
    and b
    and b

jr_01e_4a82:
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    cp a
    cp a
    nop
    nop
    ldh a, [$f0]
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sbc a
    sbc a
    nop

jr_01e_4a9d:
    nop
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    jr nz, jr_01e_4af2

    jr nz, jr_01e_4af4

    jr nz, jr_01e_4af6

    jr nz, jr_01e_4af8

    jr nz, jr_01e_4afa

    ccf
    ccf
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    jr jr_01e_4afe

    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    nop
    nop
    ld [hl], b
    ld h, b
    jr nc, jr_01e_4b22

jr_01e_4af2:
    jr nc, jr_01e_4b24

jr_01e_4af4:
    jr nc, jr_01e_4b26

jr_01e_4af6:
    jr nc, jr_01e_4b28

jr_01e_4af8:
    ld [hl], b
    ld h, b

jr_01e_4afa:
    nop
    nop
    nop
    nop

jr_01e_4afe:
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    jr nz, @+$62

    ld b, b
    nop
    nop
    nop
    nop
    ld b, $06
    inc c
    inc c
    jr jr_01e_4b2e

    jr nc, jr_01e_4b48

    ld h, b
    ld h, b
    nop
    nop
    ld bc, $0045
    nop
    nop
    nop

jr_01e_4b22:
    nop
    nop

jr_01e_4b24:
    nop
    nop

jr_01e_4b26:
    nop
    nop

jr_01e_4b28:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_4b2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_4b6a

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]

jr_01e_4b48:
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

jr_01e_4b6a:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_4b97

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, jr_01e_4bbf

    ld [hl], $37
    jr c, jr_01e_4bd1

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_4b97:
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    jp $9999


    sub c
    sub c
    adc c
    adc c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38

jr_01e_4bbf:
    rst $38
    rst $20
    rst $20
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c

jr_01e_4bd1:
    jp $9999


    ld sp, hl
    ld sp, hl
    add e
    jp $9f9f


    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    ld sp, hl
    ld sp, hl
    pop af
    di
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    db $e3
    db $e3
    db $d3
    db $d3
    or e
    or e
    add c
    add c
    di
    di
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    sbc a
    sbc a
    add c
    add e
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add e
    jp $9f9f


    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    add c
    ld sp, hl
    ld sp, hl
    db $e3
    di
    db $e3
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    add c
    jp $9999


    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    add c
    pop bc
    ld sp, hl
    ld sp, hl
    pop bc
    jp $ffff


    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    add c
    add c
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add e
    sbc c
    sbc c
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    sbc a
    sbc a
    sbc a
    sbc a
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    add c
    add c
    sbc a
    sbc a
    add e
    jp $ffff


    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    add a
    add a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    sbc a
    sbc a
    sub c
    sub c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add c
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $e7c3


    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sub c
    sub e
    add e
    add e
    sub c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    adc b
    adc b
    sub h
    sub h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    adc c
    sub c
    sub c
    sub c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    sbc c
    sbc c
    sub c
    sub c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    sub c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    jp $9f9f


    add c
    jp $f9f9


    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    adc c
    sbc c
    add c
    jp $e7c3


    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sub h
    sub h
    sub h
    sub h
    add b
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $9999


    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $e7e7


    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    pop af
    ld sp, hl
    db $e3
    di
    rst $00
    rst $08
    adc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $c3c7


    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    ret


    add b
    add b
    ret


    ret


    ret


    ret


    add b
    add b
    ret


    ret


    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $9999


    pop hl
    di
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    adc a
    adc a
    adc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    jp $bdc3


    cp l
    ld b, [hl]
    ld h, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld b, [hl]
    ld h, [hl]
    cp l
    cp l
    jp $bfc3


    cp a
    pop de
    reti


    rst $38
    rst $38
    add c
    jp $bdbd


    add c
    add c
    add c
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    rst $18
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    sbc $de
    xor $ee
    or $f6
    ld a, [$fcfa]
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, [$f6fa]
    or $ee
    xor $de
    sbc $be
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    or l
    ld d, l
    ld d, l
    ld d, c
    ld d, e
    dec d
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $28
    add c
    pop bc
    add c
    add c
    add c
    pop bc
    rst $08
    rst $28
    rst $38
    rst $38
    db $fd
    ld hl, sp-$06
    ld a, [$72fa]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor a
    daa
    xor a
    xor a
    rst $18
    adc a
    rst $18
    adc a
    xor a
    xor a
    xor a
    daa
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [$fa72]
    ld a, [$f8fd]
    rst $38
    rst $38
    ldh [$e0], a
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ld c, $0e
    rst $38
    rst $38
    ld c, $0e
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ldh [$e0], a
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld sp, hl
    di
    di
    di
    di
    di
    di
    di
    di
    pop af
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    rst $38
    rst $38
    rrca
    rrca
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld h, b
    ld h, b
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rra
    rra
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    sbc c
    sbc c
    sub e
    sub e
    rst $20
    rst $20
    ret


    ret


    sbc c
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    sbc a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    adc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    rst $18
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    rst $38
    rst $38
    ld bc, $0045
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_503c

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

jr_01e_503c:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_5069

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop

jr_01e_5051:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, jr_01e_5091

    ld [hl], $37
    jr c, @+$45

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_5069:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $6e
    ld [hl], a
    db $76
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l

jr_01e_5091:
    nop
    cp d
    jr jr_01e_5112

    jr c, jr_01e_5051

    jr @+$5f

    jr @-$44

    jr @+$7f

    inc a
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor [hl]
    ld b, $7d

jr_01e_50a9:
    inc a
    ld [$7f60], a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a

jr_01e_50b5:
    ld h, [hl]
    xor [hl]
    ld b, $5f
    inc c
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    inc e
    ld a, l
    inc l
    xor $4c
    ld a, a
    ld a, [hl]
    xor [hl]
    inc c
    ld e, l
    inc c
    xor d
    nop
    ld d, l
    nop
    cp $7c
    ld [hl], l
    ld h, b
    cp $7c
    ld d, a
    ld b, $ee
    ld h, [hl]
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], l
    ld h, b
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7e
    ld d, a
    ld b, $be
    inc c
    ld e, l
    jr jr_01e_50b5

    jr jr_01e_515a

    jr jr_01e_50a9

    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop

jr_01e_5112:
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, $ae
    ld b, $7f
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, h
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7560], a
    ld h, b
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]

jr_01e_515a:
    xor $66
    ld a, a
    ld a, h
    xor d
    nop
    ld d, l

jr_01e_5161:
    nop
    cp $3c
    ld [hl], a

jr_01e_5165:
    ld h, [hl]
    xor $66
    ld a, a
    ld a, [hl]
    ld [$7d60], a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7e
    ld [hl], l
    ld h, b
    ld [$7d60], a
    ld a, b
    ld [$7560], a
    ld h, b
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7f60], a
    ld l, [hl]
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    inc a
    ld e, l
    jr jr_01e_5161

    jr jr_01e_5206

    jr jr_01e_5165

    jr jr_01e_522a

    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7e
    ld d, a
    ld b, $ae
    ld b, $57
    ld b, $ee
    ld h, [hl]
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $6c
    ld a, l
    ld a, h
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    ld [$7f60], a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], a
    db $eb
    ld l, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    xor d
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $76
    ld a, a
    ld l, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]

jr_01e_5206:
    xor $66
    ld [hl], a

jr_01e_5209:
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l

jr_01e_5211:
    nop
    cp $7c
    ld [hl], a

jr_01e_5215:
    ld h, [hl]
    xor $66
    ld a, a
    ld a, h
    ld [$7560], a
    ld h, b
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a

jr_01e_5229:
    ld h, [hl]

jr_01e_522a:
    xor $6e
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, h
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], l
    ld h, b
    cp $3c
    ld d, a
    ld b, $ee
    ld h, [hl]
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    cp $7e
    ld e, l
    jr jr_01e_5211

    jr @+$5f

jr_01e_5259:
    jr jr_01e_5215

    jr @+$5f

    jr jr_01e_5209

    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld a, l
    jr jr_01e_5229

    nop
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld l, e
    db $eb
    ld l, e
    ld a, a
    ld a, $aa
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a

jr_01e_5295:
    ld h, [hl]
    xor $66
    ld a, a

jr_01e_5299:
    inc a
    xor $66
    ld [hl], a
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    cp d
    jr jr_01e_530a

    jr jr_01e_5259

    nop
    ld d, l
    nop
    cp $7e
    ld e, a

jr_01e_52b5:
    ld b, $be
    inc c
    ld a, l
    jr nc, jr_01e_52b5

    ld h, b
    ld a, a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    jr c, jr_01e_5346

    inc e
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    ld [hl], $7f
    ld a, a
    cp [hl]
    ld [hl], $77
    ld [hl], $ff
    ld a, a
    ld [hl], a
    ld [hl], $aa
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    cp [hl]
    inc c
    ld e, l
    jr jr_01e_5295

    nop
    ld e, l
    jr jr_01e_5299

    nop
    ld d, l
    nop
    ld a, [$7570]
    ld [hl], b
    ld a, [$7560]
    ld h, b
    xor d
    nop
    ld [hl], l
    ld h, b
    xor d
    nop
    ld a, l
    inc a
    ld [$fd42], a
    sbc c
    xor e
    and c
    push af
    and c

jr_01e_530a:
    cp e
    sbc c
    ld d, a
    ld b, d
    cp [hl]
    inc a
    ld d, l
    ld b, b
    xor [hl]
    ld h, $55
    nop
    cp $3c
    ld d, a

jr_01e_5319:
    ld b, d
    cp $7e
    ld a, a
    inc a
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$7560], a
    jr nz, jr_01e_5319

    ld b, b
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$7560], a
    ld h, b
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    ld h, b

jr_01e_5346:
    ld [$5560], a
    nop
    ld [$7560], a
    ld h, b
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, a
    ld a, [hl]
    cp $7e
    ld d, l
    nop
    cp $7e
    ld a, a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    xor e
    add c
    ld d, l
    ld b, c
    xor e
    ld hl, $1155
    xor e
    add hl, bc
    ld d, l
    dec b
    xor e
    inc bc
    ld d, l
    nop
    xor e
    inc bc
    ld d, l
    dec b
    xor e
    add hl, bc
    ld d, l
    ld de, $21ab
    ld d, l
    ld b, c
    xor e
    add c
    ld d, l
    nop
    ld [$7500], a
    nop
    ld [$7500], a
    nop
    ld [$7f00], a
    nop
    xor d
    nop
    ld d, l
    nop
    cp $00
    ld [hl], a
    nop
    xor $00
    ld a, l
    nop
    xor $00
    ld [hl], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld_long $ff4a, a
    xor d
    xor [hl]
    xor h
    rst $38
    ld c, d
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    db $10
    cp $3e
    ld a, a

jr_01e_53b9:
    ld a, [hl]
    cp $3e
    ld [hl], l
    db $10
    xor d
    nop
    ld d, a
    ld [bc], a
    xor a
    dec b
    db $dd
    dec b
    xor d
    adc b
    db $dd
    adc b
    ld a, [$5550]

jr_01e_53cd:
    ld d, b
    ld a, [$7520]
    jr nz, jr_01e_53cd

    ld d, b
    db $dd
    ld d, b
    xor d
    adc b
    db $dd
    adc b
    xor a
    dec b
    ld d, l
    dec b
    xor a
    ld [bc], a
    ld d, l
    nop
    cp a
    rra
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $f1fb
    ld d, l
    nop
    ei
    pop af
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $1fbf
    ld d, l
    nop
    cp d
    jr jr_01e_5462

jr_01e_5405:
    jr jr_01e_5405

    ld a, [hl]
    ld a, a
    ld a, [hl]
    cp d
    jr jr_01e_546a

    jr jr_01e_53b9

    nop
    ld d, l
    nop
    xor [hl]
    ld b, $5d
    inc c
    xor [hl]
    inc c
    ld e, l
    inc c
    xor [hl]
    inc c
    ld e, a
    ld b, $aa
    nop
    ld d, l

jr_01e_5421:
    nop
    ld [$f5e0], a

jr_01e_5425:
    and b
    xor d
    and b
    push af
    and b
    xor d
    and b
    push af
    and b
    cp a
    cp a
    ld d, l
    nop
    ld a, [$d5f0]
    sub b
    cp d
    sub b
    push de
    sub b
    cp d
    sub b
    push de
    sub b

jr_01e_543e:
    cp a
    sbc a
    ld d, l
    nop
    rst $38
    rst $38
    push de
    add c
    xor e
    add c
    push de

jr_01e_5449:
    add c
    xor e
    add c
    push de
    add c
    xor e
    add c
    ld d, l

jr_01e_5451:
    nop
    xor d
    nop
    ld d, l

jr_01e_5455:
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp $fe
    ld d, l
    nop

jr_01e_5462:
    rst $38
    rst $38
    push de
    add b
    xor d
    add b
    push de
    add b

jr_01e_546a:
    xor d
    add b
    push de
    add b
    xor d
    add b
    ld d, l
    nop
    ld [$75e0], a

jr_01e_5475:
    jr nz, jr_01e_5421

    jr nz, jr_01e_54ee

    jr nz, jr_01e_5425

    jr nz, jr_01e_54f2

    jr nz, jr_01e_543e

    ccf
    ld d, l
    nop
    xor d
    nop
    ld [hl], a
    ld h, [hl]
    xor $6c
    ld e, l
    jr jr_01e_5449

    ld [hl], $77
    ld h, [hl]
    xor d
    nop
    ld d, l
    nop
    ld a, [$7560]
    jr nc, jr_01e_5451

    jr nc, jr_01e_550e

jr_01e_5499:
    jr nc, jr_01e_5455

    jr nc, jr_01e_5512

    ld h, b
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    ld h, b
    ld [$5560], a
    nop
    ld [$7560], a
    jr nz, jr_01e_5499

    ld b, b
    ld d, l
    nop
    xor d
    nop
    ld d, a
    ld b, $ae
    inc c
    ld e, l
    jr jr_01e_5475

    jr nc, jr_01e_5532

    ld h, b
    xor d
    nop
    ld bc, $0247
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_01e_54e7

jr_01e_54e7:
    ld b, e
    nop
    nop
    dec [hl]
    ld [hl], $01
    dec sp

jr_01e_54ee:
    dec l
    daa
    ld l, $46

jr_01e_54f2:
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    cpl
    ld b, l
    nop
    jr nc, jr_01e_5537

    add hl, hl
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17

jr_01e_550e:
    jr jr_01e_5529

    ld a, [de]
    dec de

jr_01e_5512:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_5539

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $3c
    nop
    ld b, h
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_01e_5529:
    inc sp
    inc [hl]
    ld sp, $3732
    jr c, jr_01e_5569

    ld a, [hl-]
    ld b, l

jr_01e_5532:
    nop
    nop
    nop
    nop
    nop

jr_01e_5537:
    nop
    nop

jr_01e_5539:
    dec [hl]
    inc l
    nop
    nop
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
    ld [$0a0e], sp
    ld [$0808], sp
    ld [$1838], sp
    jr c, jr_01e_5582

    nop
    nop
    nop
    nop
    ld [$0c08], sp
    inc c
    ld c, $0e
    inc c
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_5569:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a

jr_01e_5582:
    nop
    nop
    jr c, jr_01e_559e

    ld a, b
    jr c, jr_01e_55a1

    jr jr_01e_55a3

    jr jr_01e_55a5

    jr jr_01e_55a7

    jr jr_01e_560f

    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld a, [hl]
    inc a
    ld [hl], b
    ld h, b

jr_01e_559e:
    ld h, b
    ld h, b
    ld a, [hl]

jr_01e_55a1:
    ld a, [hl]
    nop

jr_01e_55a3:
    nop
    ld a, [hl]

jr_01e_55a5:
    inc a
    ld h, [hl]

jr_01e_55a7:
    ld h, [hl]
    ld b, $06
    ld e, $1c
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld c, $06
    ld a, $16
    ld h, [hl]
    ld b, [hl]
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, h
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_01e_5604

    jr c, jr_01e_55fe

    jr nc, jr_01e_5620

    jr nc, jr_01e_5622

    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]

jr_01e_55fe:
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop

jr_01e_5604:
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, $06
    ld b, $66

jr_01e_560f:
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_01e_5620:
    ld h, [hl]
    ld h, [hl]

jr_01e_5622:
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_01e_56b0

    jr jr_01e_56b2

    jr jr_01e_56b4

    jr jr_01e_56b6

    jr jr_01e_56b8

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, [hl]

jr_01e_56b0:
    ld a, [hl]
    inc a

jr_01e_56b2:
    nop
    nop

jr_01e_56b4:
    ld h, [hl]
    ld h, [hl]

jr_01e_56b6:
    ld h, [hl]
    ld h, [hl]

jr_01e_56b8:
    ld l, [hl]
    ld h, h
    ld a, b
    ld a, b
    ld l, [hl]
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld l, e
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    db $76
    ld h, [hl]
    db $76
    db $76
    ld a, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld h, b
    ld h, b
    ld a, [hl]
    inc a
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_01e_5760

    jr jr_01e_5762

    jr jr_01e_5764

    jr jr_01e_5766

    jr jr_01e_5768

    jr jr_01e_576a

    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_01e_5760:
    ld a, [hl]
    inc a

jr_01e_5762:
    nop
    nop

jr_01e_5764:
    ld h, [hl]
    ld h, [hl]

jr_01e_5766:
    ld h, [hl]
    ld h, [hl]

jr_01e_5768:
    ld h, [hl]
    ld h, [hl]

jr_01e_576a:
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc h
    inc h
    jr jr_01e_578a

    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld l, e
    ld l, e
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    inc h

jr_01e_578a:
    inc a
    jr jr_01e_57f3

    inc h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld a, [hl]
    ld a, $06
    ld b, $66
    ld h, [hl]
    ld a, [hl]
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld b, $06
    inc c
    inc c
    jr jr_01e_57c4

    jr nc, jr_01e_57de

    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_57c4:
    nop
    nop
    ld [hl], $36
    ld a, a
    ld a, a
    ld [hl], $36
    ld [hl], $36
    ld a, a
    ld a, a
    ld [hl], $36
    nop
    nop
    ld a, [hl]
    inc a
    ld h, [hl]
    ld h, [hl]
    ld b, $06
    ld e, $0c
    jr jr_01e_57f6

jr_01e_57de:
    nop
    nop
    jr jr_01e_57fa

    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    nop
    nop
    ld h, b
    ld h, b
    nop

jr_01e_57f3:
    nop
    rst $38
    ld a, [hl]

jr_01e_57f6:
    rst $20
    jp $dbdb


jr_01e_57fa:
    db $d3
    db $d3
    db $db
    db $db
    rst $20
    jp Jump_01e_7eff


    nop
    nop
    inc a
    inc a
    ld a, b
    jr c, jr_01e_5879

    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    inc c
    inc c
    jr jr_01e_5818

    db $10
    stop
    nop
    nop
    nop
    nop
    nop

jr_01e_5818:
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_01e_5881

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    add c
    add c
    ld b, c
    ld b, c
    ld hl, $1121
    ld de, $0909
    dec b
    dec b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld de, $2111
    ld hl, $4141
    add c
    add c
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b

jr_01e_5879:
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, [hl]

jr_01e_5881:
    nop
    nop
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld a, h
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [$ae4a], a
    xor b
    xor h
    xor h
    xor [hl]
    xor b
    ld [$004a], a
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc a
    inc a
    ld a, h
    ld a, h
    inc a
    inc a
    inc e
    inc e
    nop
    nop
    rlca
    ld [bc], a
    dec b
    dec b
    adc l
    dec b
    adc b
    adc b
    adc b
    adc b
    ret c

    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    jr nz, jr_01e_5933

    jr nz, @+$52

    ld d, b
    ret c

    ld d, b
    adc b
    adc b
    adc b
    adc b
    adc l
    dec b
    dec b
    dec b
    rlca
    ld [bc], a
    nop
    nop
    rra
    rra
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $f1f1
    nop
    nop
    pop af
    pop af
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1f1f
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    ld c, $06
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0c
    ld c, $06
    nop
    nop
    ldh [$e0], a
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    cp a
    cp a
    nop
    nop
    ld hl, sp-$08
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc a
    adc a
    nop

jr_01e_5933:
    nop
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld a, $3e
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, @+$22

    ld b, d
    ld b, d
    nop
    nop
    ld [hl], b
    ld h, b
    ld [hl], b
    jr nc, jr_01e_59b9

    jr nc, jr_01e_59bb

    jr nc, jr_01e_59bd

    jr nc, jr_01e_59ff

    jr nc, @+$72

    ld h, b
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    jr nz, @+$62

    ld b, b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_01e_59d0

    ld b, b
    ld b, b
    ld bc, $0045
    nop
    nop
    nop
    nop

jr_01e_59b9:
    nop
    nop

jr_01e_59bb:
    nop
    nop

jr_01e_59bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_59d0:
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_5a00

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d

jr_01e_59ff:
    dec d

jr_01e_5a00:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_5a2d

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, @+$37

    ld [hl], $37
    jr c, jr_01e_5a67

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_5a2d:
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    jp $9999


    sub c
    sub c
    sbc c
    sbc c
    adc c
    adc c
    sbc c
    sbc c
    add c
    jp $ffff


    rst $00
    rst $20
    add a
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    add c

jr_01e_5a67:
    jp $9999


    ld sp, hl
    ld sp, hl
    add c
    jp $9f8f


    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    add c
    jp $9999


    ld sp, hl
    ld sp, hl
    pop hl
    db $e3
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    pop af
    ld sp, hl
    pop bc
    jp hl


    sbc c
    cp c
    add c
    add c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add e
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    jp $9999


    sbc a
    sbc a
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    add c
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $00
    rst $28
    rst $08
    rst $08
    rst $08
    rst $08
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    add c
    jp $9999


    sbc c
    sbc c
    add c
    jp $ffff


    add c
    jp $9999


    sbc c
    sbc c
    add c
    pop bc
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    jp $9999


    sbc c
    sbc c
    add c
    add c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    rst $38
    rst $38
    add c
    jp $9999


    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    add a
    add a
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    add a
    add a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    add c
    jp $9999


    sbc a
    sbc a
    sub c
    sub c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    add c
    add c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    sbc c
    sbc c
    sbc c
    sbc c
    sub c
    sbc e
    add a
    add a
    sub c
    sbc e
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    sbc h
    sbc h
    adc b
    adc b
    sub h
    sub h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    sbc c
    sbc c
    adc c
    sbc c
    adc c
    adc c
    add c
    sbc c
    sub c
    sub c
    sub c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    add c
    jp $9999


    sbc c
    sbc c
    sbc c
    sbc c
    sub c
    sub c
    sub c
    sub c
    add c
    jp $ffff


    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    add e
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    add c
    jp $9999


    sbc a
    sbc a
    add c
    jp $f9f9


    sbc c
    sbc c
    add c
    jp $ffff


    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    jp $ffff


    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    db $db
    db $db
    rst $20
    rst $20
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sub h
    sub h
    adc b
    adc b
    sbc h
    sbc h
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    db $db
    jp $99e7


    db $db
    sbc c
    sbc c
    sbc c
    sbc c
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    add c
    pop bc
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    add c
    jp $ffff


    add c
    add c
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $c381


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    sub e
    ld bc, $9301
    sub e
    sub e
    sub e
    ld bc, $9301
    sub e
    rst $38
    rst $38
    add c
    jp $9999


    ld sp, hl
    ld sp, hl
    pop hl
    di
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    cp a
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    nop
    add c
    jr jr_01e_5d06

    inc h
    inc h
    inc l
    inc l
    inc h
    inc h
    jr jr_01e_5d0e

Jump_01e_5cd2:
    nop
    add c
    rst $38
    rst $38
    jp $87c3


    rst $00
    adc a
    adc a
    add c
    add c
    di
    di
    rst $20
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    rst $18
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38

jr_01e_5d06:
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a

jr_01e_5d0e:
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    sbc $de
    xor $ee
    or $f6
    ld a, [$fcfa]
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, [$f6fa]
    or $ee
    xor $de
    sbc $be
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    add e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    or l
    ld d, c
    ld d, a
    ld d, e
    ld d, e
    ld d, c
    ld d, a
    dec d
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    jp $83c3


    add e
    jp $e3c3


    db $e3
    rst $38
    rst $38
    db $fd
    ld hl, sp-$06
    ld a, [$72fa]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    xor a
    daa
    xor a
    xor a
    rst $18
    adc a
    rst $18
    adc a
    xor a
    xor a
    xor a
    daa
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld a, [$fa72]
    ld a, [$f8fd]
    rst $38
    rst $38
    ldh [$e0], a
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ld c, $0e
    rst $38
    rst $38
    ld c, $0e
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    add e
    add e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ld hl, sp-$07
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$04
    rst $38
    rst $38
    rra
    rra
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    rst $38
    rst $38
    rlca
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rra
    rra
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    ei
    ei
    rst $30
    rst $30
    rst $28
    rst $28
    rst $18
    rst $18
    cp l
    cp l
    rst $38
    rst $38
    adc a
    sbc a
    adc a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    adc a
    rst $08
    adc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    rst $18
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
    ld bc, $0045
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_5ed2

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

jr_01e_5ed2:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_5eff

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop

jr_01e_5ee7:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, jr_01e_5f27

    ld [hl], $37
    jr c, @+$45

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_5eff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $6e
    ld [hl], a
    ld h, [hl]
    cp $76
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l

jr_01e_5f27:
    nop
    cp d
    jr jr_01e_5fa8

    jr c, jr_01e_5ee7

    jr @+$5f

    jr @-$44

    jr @+$5f

jr_01e_5f33:
    jr jr_01e_5f33

    ld a, [hl]
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor [hl]
    ld b, $7f
    inc a
    ld a, [$7560]
    ld h, b
    cp $7e
    ld d, l
    nop
    cp $3c
    ld [hl], a

jr_01e_5f4b:
    ld h, [hl]
    xor [hl]
    ld b, $5f

jr_01e_5f4f:
    inc e
    xor [hl]
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    xor [hl]
    ld b, $7f
    ld d, $ee
    ld b, [hl]
    ld a, a
    ld a, [hl]
    xor [hl]
    ld b, $57
    ld b, $ae
    ld b, $55
    nop
    cp $7e
    ld [hl], l
    ld h, b
    ld [$7f60], a
    ld a, h
    xor [hl]
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7f60], a
    ld a, h
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $7e
    ld d, a
    ld b, $ae
    inc c
    ld e, l
    jr jr_01e_5f4b

    db $10
    ld [hl], l
    jr nc, jr_01e_5f4f

    jr nc, jr_01e_5fec

    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    inc a
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l
    nop

jr_01e_5fa8:
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, $ae
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, h
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $7c
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7560], a
    ld h, b
    ld [$7760], a
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]

jr_01e_5fec:
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $7c
    ld d, l

jr_01e_5ff7:
    nop
    cp $7e
    ld [hl], l

jr_01e_5ffb:
    ld h, b
    ld [$7d60], a
    ld a, b
    ld [$7560], a
    ld h, b
    cp $7e
    ld d, l
    nop
    cp $7e
    ld [hl], l
    ld h, b
    ld [$7d60], a
    ld a, b
    ld [$7560], a
    ld h, b
    ld [$5560], a
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7f60], a
    ld l, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    cp $7e
    ld e, l
    jr jr_01e_5ff7

    jr jr_01e_609c

    jr jr_01e_5ffb

    jr jr_01e_60a0

jr_01e_6043:
    jr jr_01e_6043

    ld a, [hl]
    ld d, l
    nop
    cp $7e
    ld d, a
    ld b, $ae
    ld b, $57
    ld b, $ae
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $64
    ld a, l
    ld a, b
    xor $64
    ld [hl], a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    cp $7e
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], a
    db $eb
    ld l, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $76
    ld a, a
    ld h, [hl]
    xor $6e
    ld a, a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]

jr_01e_609c:
    xor $66
    ld [hl], a
    ld h, [hl]

jr_01e_60a0:
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l

jr_01e_60a7:
    nop
    cp $7c
    ld [hl], a

jr_01e_60ab:
    ld h, [hl]
    xor $66
    ld a, a

jr_01e_60af:
    ld a, h
    ld [$7560], a
    ld h, b
    ld [$5560], a
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $6e
    ld a, a
    ld l, [hl]
    cp $3c
    ld d, l
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, h
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    ld [$7f60], a
    inc a
    xor [hl]
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $7e
    ld e, l
    jr jr_01e_60a7

    jr @+$5f

    jr jr_01e_60ab

    jr @+$5f

    jr jr_01e_60af

    jr @+$57

    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    xor $66
    ld [hl], a

jr_01e_610b:
    ld h, [hl]
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld [hl], l
    inc h
    cp d
    jr @+$57

    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a

jr_01e_611f:
    ld h, e
    db $eb
    ld l, e
    ld [hl], a
    ld [hl], a
    db $eb
    ld h, e
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $24
    ld a, l
    jr jr_01e_611f

    inc h
    ld [hl], a
    ld h, [hl]
    xor $66
    ld d, l
    nop
    xor $66
    ld [hl], a
    ld h, [hl]
    xor $66
    ld a, a
    ld a, $ae
    ld b, $77
    ld h, [hl]
    cp $3c
    ld d, l
    nop
    cp $7e
    ld d, a
    ld b, $ae
    inc c
    ld e, l
    jr jr_01e_610b

    jr nc, jr_01e_61c8

    ld h, b
    cp $7e
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, a
    inc a
    cp $3c
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], a
    ld [hl], $ff
    ld a, a
    ld [hl], a
    ld [hl], $be
    ld [hl], $7f
    ld a, a
    cp [hl]
    ld [hl], $55
    nop
    cp $3c
    ld [hl], a
    ld h, [hl]
    xor [hl]
    ld b, $5f
    inc c
    cp d
    jr jr_01e_61d8

    nop
    cp d
    jr jr_01e_61dc

    nop
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    ld [$5540], a
    nop
    ld [$5560], a
    nop
    rst $38
    ld a, [hl]
    rst $30
    jp $dbfb


    rst $10
    db $d3
    ei
    db $db
    rst $30
    jp Jump_01e_7eff


    ld d, l

jr_01e_61a7:
    nop
    cp [hl]
    inc a
    ld a, l
    jr c, jr_01e_61a7

    ld [hl], b
    ld a, a

jr_01e_61af:
    ld a, [hl]
    xor [hl]
    inc c
    ld e, l
    ld [$10ba], sp
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$7560], a
    jr nz, jr_01e_61af

    ld b, b
    ld d, l
    nop

jr_01e_61c8:
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    ld h, b
    ld [$5560], a
    nop

jr_01e_61d8:
    xor d
    nop
    ld d, l
    nop

jr_01e_61dc:
    ld [$7560], a
    ld h, b
    xor d
    nop
    ld [hl], l
    ld h, b
    ld [$5560], a
    nop
    xor d
    nop
    ld a, a
    ld a, [hl]
    cp $7e
    ld d, l
    nop
    cp $7e
    ld a, a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    xor e
    add c
    ld d, l
    ld b, c
    xor e
    ld hl, $1155
    xor e
    add hl, bc
    ld d, l
    dec b
    xor e
    inc bc
    ld d, l
    nop
    xor e
    inc bc
    ld d, l
    dec b
    xor e
    add hl, bc
    ld d, l
    ld de, $21ab
    ld d, l
    ld b, c
    xor e
    add c
    ld d, l
    nop
    ld [$7500], a
    nop
    ld [$7500], a
    nop
    ld [$7500], a
    nop
    cp $00
    ld d, l
    nop
    cp $00
    ld [hl], a
    nop
    xor $00
    ld a, l
    nop
    xor $00
    ld [hl], a
    nop
    xor $00
    ld d, l
    nop
    xor d
    nop
    rst $38
    ld c, d
    xor [hl]
    xor b
    db $fd
    xor h
    xor [hl]
    xor b
    rst $38
    ld c, d
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld e, l
    inc e
    cp [hl]
    inc a
    ld a, l
    ld a, h
    cp [hl]
    inc a
    ld e, l
    inc e
    xor d
    nop
    ld d, a
    ld [bc], a
    xor a
    dec b
    db $dd
    dec b
    xor d
    adc b
    db $dd
    adc b
    ld a, [$5550]

jr_01e_6263:
    ld d, b
    ld a, [$7520]
    jr nz, jr_01e_6263

    ld d, b
    db $dd
    ld d, b
    xor d
    adc b
    db $dd
    adc b
    xor a
    dec b
    ld d, l
    dec b
    xor a
    ld [bc], a
    ld d, l
    nop
    cp a
    rra
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $f1fb
    ld d, l
    nop
    ei
    pop af
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $1fbf
    ld d, l
    nop
    xor d
    nop
    ld d, l
    db $10
    cp d
    db $10
    ld a, l
    ld a, h
    cp d
    db $10
    ld d, l
    db $10
    xor d
    nop
    ld d, l
    nop
    xor [hl]
    ld b, $5f
    inc c
    xor [hl]
    inc c
    ld e, l
    inc c
    xor [hl]
    inc c
    ld e, a
    inc c
    xor [hl]
    ld b, $55

jr_01e_62b7:
    nop
    ld [$f5e0], a

jr_01e_62bb:
    and b
    xor d
    and b
    push af
    and b
    xor d
    and b
    push af
    and b
    cp a
    cp a
    ld d, l
    nop
    ld a, [$ddf8]
    adc b
    xor d
    adc b
    db $dd
    adc b
    xor d
    adc b
    db $dd

jr_01e_62d3:
    adc b
    xor a
    adc a
    ld d, l
    nop
    rst $38
    rst $38
    push de
    add c
    xor e
    add c
    push de
    add c
    xor e
    add c
    push de
    add c
    xor e
    add c
    ld d, l

jr_01e_62e7:
    nop
    xor d
    nop
    ld d, l

jr_01e_62eb:
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp $fe
    ld d, l
    nop
    rst $38
    rst $38
    push de
    add b
    xor d
    add b
    push de
    add b
    xor d
    add b
    push de
    add b
    xor d
    add b
    ld d, l
    nop
    ld [$75e0], a
    jr nz, jr_01e_62b7

    jr nz, jr_01e_6384

jr_01e_630f:
    jr nz, jr_01e_62bb

    jr nz, jr_01e_6388

    jr nz, jr_01e_62d3

    ld a, $55
    nop
    xor d
    nop
    ld d, a
    ld b, d
    xor [hl]
    inc b
    ld e, l
    ld [$10ba], sp
    ld [hl], l
    jr nz, jr_01e_630f

    ld b, d
    ld d, l
    nop
    ld a, [$7560]
    jr nc, jr_01e_62e7

    jr nc, jr_01e_63a4

jr_01e_632f:
    jr nc, jr_01e_62eb

    jr nc, jr_01e_63a8

    jr nc, jr_01e_632f

    ld h, b
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    ld h, b
    ld [$5560], a

jr_01e_633f:
    nop
    ld [$7560], a
    jr nz, jr_01e_632f

    ld b, b
    ld d, l
    nop
    xor d
    nop
    ld d, a
    ld [bc], a
    xor [hl]
    inc b
    ld e, l
    ld [$10ba], sp
    ld [hl], l
    jr nz, jr_01e_633f

    ld b, b
    ld bc, $0247
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    jr z, jr_01e_637d

jr_01e_637d:
    ld b, e
    nop
    nop
    dec [hl]
    ld [hl], $01
    dec sp

jr_01e_6384:
    dec l
    daa
    ld l, $46

jr_01e_6388:
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    cpl
    ld b, l
    nop
    jr nc, jr_01e_63cd

    add hl, hl
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17

jr_01e_63a4:
    jr jr_01e_63bf

    ld a, [de]
    dec de

jr_01e_63a8:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_63cf

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $3c
    nop
    ld b, h
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_01e_63bf:
    inc sp
    inc [hl]
    ld sp, $3732
    jr c, jr_01e_63ff

    ld a, [hl-]
    ld b, l
    nop
    nop
    nop
    nop
    nop

jr_01e_63cd:
    nop
    nop

jr_01e_63cf:
    dec [hl]
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01e_63ec

    ld e, $1c
    ld e, $16
    ld d, $12
    ld [hl], d
    ld [hl-], a
    ld a, [hl]
    ld h, [hl]
    ld c, $0c
    nop
    nop
    jr c, jr_01e_6424

jr_01e_63ec:
    inc h
    inc h
    ld a, [hl-]
    ld [hl-], a
    dec e
    add hl, de
    ld a, [hl-]
    ld [hl-], a
    inc h
    inc h
    jr c, jr_01e_6430

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_63ff:
    nop
    nop
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
    inc e
    ld h, $26
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld [hl-], a
    ld [hl-], a
    inc e
    inc e
    nop
    nop
    inc e
    inc c
    inc a
    inc a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_01e_6424:
    inc c
    inc c
    ccf
    ccf
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    rlca
    inc bc

jr_01e_6430:
    ld e, $0e
    jr c, jr_01e_646c

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    inc bc
    inc bc
    ld e, $1e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld c, $0e
    ld e, $1e
    ld [hl], $36
    ld h, [hl]
    ld h, [hl]
    ld a, a
    ld a, a
    ld b, $06
    ld b, $06
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld e, $1e

jr_01e_646c:
    jr nc, jr_01e_649e

    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld b, $06
    inc c
    inc c
    jr jr_01e_649c

    jr jr_01e_649e

    jr jr_01e_64a0

    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, $3e

jr_01e_649c:
    ld h, e
    ld h, e

jr_01e_649e:
    ld h, e
    ld h, e

jr_01e_64a0:
    ccf
    ccf
    inc bc
    inc bc
    ld b, $06
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    ld [hl], $36
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld e, $1e
    inc sp
    inc sp
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc sp
    inc sp
    ld e, $1e
    nop
    nop
    ld a, h
    ld a, h
    ld h, [hl]
    ld h, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, [hl]
    ld h, [hl]
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld l, a
    ld l, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, a
    ld a, a
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    jr jr_01e_6546

    jr jr_01e_6548

    jr jr_01e_654a

    jr jr_01e_654c

    jr jr_01e_654e

    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rra
    rra
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]

jr_01e_6546:
    inc a
    inc a

jr_01e_6548:
    nop
    nop

jr_01e_654a:
    ld h, a
    ld h, a

jr_01e_654c:
    ld l, [hl]
    ld l, [hl]

jr_01e_654e:
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld l, [hl]
    ld l, [hl]
    ld h, a
    ld h, a
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld a, a
    ld a, a
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, e
    ld l, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld l, l
    ld l, l
    ld h, d
    ld h, d
    dec a
    dec a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld a, [hl]
    ld a, [hl]
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    nop
    nop
    ld a, $3e
    ld h, e
    ld h, e
    ld h, b
    ld h, b
    ld a, $3e
    inc bc
    inc bc
    ld h, e
    ld h, e
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    jr jr_01e_65f6

    jr jr_01e_65f8

    jr jr_01e_65fa

    jr jr_01e_65fc

    jr jr_01e_65fe

    jr jr_01e_6600

    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld h, e

jr_01e_65f6:
    ld a, $3e

jr_01e_65f8:
    nop
    nop

jr_01e_65fa:
    ld h, e
    ld h, e

jr_01e_65fc:
    ld h, e
    ld h, e

jr_01e_65fe:
    ld h, e
    ld h, e

jr_01e_6600:
    ld [hl], $36
    ld [hl], $36
    inc e
    inc e
    inc e
    inc e
    nop
    nop
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    ld l, e
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, $36
    ld [hl], $22
    ld [hl+], a
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3e
    inc e
    inc e
    ld a, $3e
    ld [hl], a
    ld [hl], a
    ld h, e
    ld h, e
    nop
    nop
    ld h, e
    ld h, e
    ld [hl], a
    ld [hl], a
    ld a, $3e
    inc e
    inc e
    inc e
    jr jr_01e_666d

    jr c, @+$32

    jr nc, jr_01e_6639

jr_01e_6639:
    nop
    ld a, a
    ld a, a
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_01e_667c

    ld [hl], b
    ld [hl], b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld l, $2e
    inc a
    inc a
    ld [hl], h
    ld [hl], h
    ld l, $2e
    inc a
    inc a
    ld [hl], h
    ld [hl], h
    jr nz, jr_01e_6688

    nop
    nop
    inc a
    inc a
    ld h, [hl]

jr_01e_666d:
    ld h, [hl]
    inc c
    inc c
    jr jr_01e_668a

    jr jr_01e_668c

    nop
    nop
    jr jr_01e_6690

    nop
    nop
    jr nc, jr_01e_66ac

jr_01e_667c:
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr nc, jr_01e_66b2

    jr nc, jr_01e_66b4

    nop
    nop
    jr nc, jr_01e_66b8

jr_01e_6688:
    inc a
    inc a

jr_01e_668a:
    ld b, d
    ld b, d

jr_01e_668c:
    cp c
    sbc c
    and c
    and c

jr_01e_6690:
    and c
    and c
    cp c
    sbc c
    ld b, d
    ld b, d
    inc a
    inc a
    inc e
    ld [$001c], sp
    ld a, $2a
    ld a, $2a
    ld a, $22
    ld a, a
    ld l, e
    ld a, a
    ld a, a
    ld [$0008], sp
    nop
    nop
    nop

jr_01e_66ac:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_66b2:
    ld h, b
    ld h, b

jr_01e_66b4:
    jr nz, jr_01e_66d6

    ld b, b
    ld b, b

jr_01e_66b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    inc c
    inc c

jr_01e_66d6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    ld b, c
    ld b, c
    ld hl, $1121
    ld de, $0909
    dec b
    dec b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld de, $2111
    ld hl, $4141
    add c
    add c
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld a, [hl]
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    nop
    nop
    nop
    nop
    dec h
    dec h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    dec h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    db $10
    stop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    adc l
    dec b
    adc l
    adc b
    ret c

    adc b
    ret c

    ld d, b
    ld [hl], b
    ld d, b
    jr nz, jr_01e_6778

    jr nz, jr_01e_677a

    ld [hl], b
    ld d, b
    ret c

    ld d, b
    ret c

    adc b
    adc l
    adc b
    dec c
    dec b
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    rra
    rra
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $f1f1

jr_01e_6778:
    nop
    nop

jr_01e_677a:
    pop af
    pop af
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1f1f
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    ld a, h
    ld a, h
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    ld b, $06
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$080c], sp
    ld b, $06
    nop
    nop
    ldh [$e0], a
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    cp a
    cp a
    nop
    nop
    ld hl, sp-$08
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc a
    adc a
    nop
    nop
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    jr nz, jr_01e_681e

    jr nz, jr_01e_6820

    jr nz, jr_01e_6822

    jr nz, jr_01e_6824

    jr nz, jr_01e_6826

    ccf
    ccf
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld d, d
    ld d, d
    ld [hl], h
    ld [hl], h
    ld [$1708], sp
    rla
    dec h
    dec h
    ld b, a
    ld b, a
    nop
    nop
    ld h, b
    ld h, b
    jr nc, jr_01e_682e

jr_01e_681e:
    db $10
    db $10

jr_01e_6820:
    db $10
    db $10

jr_01e_6822:
    db $10
    db $10

jr_01e_6824:
    jr nc, jr_01e_6836

jr_01e_6826:
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc c
    inc c

jr_01e_682e:
    inc c
    inc c
    nop
    nop
    inc c
    inc c
    inc b
    inc b

jr_01e_6836:
    ld [$0008], sp
    nop
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    jr jr_01e_685a

    jr nc, jr_01e_6874

    ld h, b
    ld h, b
    ret nz

    ret nz

    ld bc, $0045
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_685a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_6896

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]

jr_01e_6874:
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

jr_01e_6896:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_68c3

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, jr_01e_68eb

    ld [hl], $37
    jr c, jr_01e_68fd

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_68c3:
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $e3
    db $e3
    reti


    reti


    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    call $e3cd
    db $e3
    rst $38

jr_01e_68eb:
    rst $38
    di
    db $e3
    jp $f3c3


    di
    di
    di
    di
    di
    di
    di
    ret nz

    ret nz

    rst $38
    rst $38
    pop bc

jr_01e_68fd:
    pop bc
    sbc h
    sbc h
    db $fc
    ld hl, sp-$0f
    pop hl
    rst $00
    rst $00
    adc a
    adc a
    add b
    add b
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    db $fc
    db $fc
    pop hl
    pop hl
    db $fc
    db $fc
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    pop af
    pop af
    pop hl
    pop hl
    ret


    ret


    sbc c
    sbc c
    add b
    add b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    pop bc
    pop bc
    db $fc
    db $fc
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    pop hl
    pop hl
    rst $08
    rst $08
    sbc a
    sbc a
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    add b
    add b
    sbc h
    sbc h
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc h
    sbc h
    ret nz

    ret nz

    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    jp $ffc3


    rst $38
    db $e3
    db $e3
    ret


    ret


    sbc h
    sbc h
    add b
    add b
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    add c
    add c
    rst $38
    rst $38
    pop hl
    pop hl
    call z, $9fcc
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    call z, $e1cc
    pop hl
    rst $38
    rst $38
    add e
    add e
    sbc c
    sbc c
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc c
    sbc c
    add e
    add e
    rst $38
    rst $38
    add b
    add b
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc a
    sbc a
    sub b
    sub b
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    add b
    add b
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    ldh [$e0], a
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    sbc c
    sbc c
    jp $ffc3


    rst $38
    sbc b
    sbc b
    sub c
    sub c
    add e
    add e
    add a
    add a
    add e
    add e
    sub c
    sub c
    sbc b
    sbc b
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    add b
    add b
    rst $38
    rst $38
    sbc h
    sbc h
    adc b
    adc b
    add b
    add b
    add b
    add b
    sub h
    sub h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    sbc h
    sbc h
    adc h
    adc h
    add h
    add h
    add b
    add b
    sub b
    sub b
    sbc b
    sbc b
    sbc h
    sbc h
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    add c
    add c
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sub d
    sub d
    sbc l
    sbc l
    jp nz, $ffc2

    rst $38
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    add c
    add c
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    rst $38
    rst $38
    pop bc
    pop bc
    sbc h
    sbc h
    sbc a
    sbc a
    pop bc
    pop bc
    db $fc
    db $fc
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    add b
    add b
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    pop bc
    pop bc
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    ret


    ret


    ret


    ret


    db $e3
    db $e3
    db $e3
    db $e3
    rst $38
    rst $38
    sbc h
    sbc h
    sbc h
    sbc h
    sub h
    sub h
    add b
    add b
    pop bc
    add b
    ret


    ret


    db $dd
    db $dd
    rst $38
    rst $38
    sbc h
    sbc h
    adc b
    adc b
    pop bc
    pop bc
    db $e3
    db $e3
    pop bc
    pop bc
    adc b
    adc b
    sbc h
    sbc h
    rst $38
    rst $38
    sbc h
    sbc h
    adc b
    adc b
    pop bc
    pop bc
    db $e3
    db $e3
    rst $20
    db $e3
    rst $00
    rst $00
    rst $08
    rst $08
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$08
    pop af
    pop af
    db $e3
    db $e3
    rst $00
    rst $00
    adc a
    adc a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    pop de
    pop de
    jp $8bc3


    adc e
    pop de
    pop de
    jp $8bc3


    adc e
    rst $18
    rst $18
    rst $38
    rst $38
    jp $99c3


    sbc c
    di
    di
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $08
    rst $08
    add a
    add a
    add a
    add a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $38
    rst $38
    rst $08
    rst $08
    jp $bdc3


    cp l
    ld h, [hl]
    ld b, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld h, [hl]
    ld b, [hl]
    cp l
    cp l
    jp $f7c3


    db $e3
    rst $38
    db $e3
    push de
    pop bc
    push de
    pop bc
    db $dd
    pop bc
    sub h
    add b
    add b
    add b
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $18
    rst $18
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    di
    di
    rst $38
    rst $38
    di
    di
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    sbc $de
    xor $ee
    or $f6
    ld a, [$fcfa]
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, [$f6fa]
    or $ee
    xor $de
    sbc $be
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    add c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $aada

    xor d
    xor c
    xor c
    xor d
    xor d
    jp c, $ffda

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    pop bc
    pop bc
    add c
    add c
    pop bc
    pop bc
    rst $28
    rst $28
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, [$faf8]
    ld [hl], d
    ld [hl], a
    ld [hl], d
    ld [hl], a
    daa
    xor a
    daa
    xor a
    adc a
    rst $18
    rst $18
    rst $18
    rst $18
    xor a
    adc a
    xor a
    daa
    ld [hl], a
    daa
    ld [hl], a
    ld [hl], d
    ld a, [$faf2]
    ld hl, sp-$03
    db $fd
    rst $38
    rst $38
    ldh [$e0], a
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ld c, $0e
    rst $38
    rst $38
    ld c, $0e
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    add e
    add e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $30
    di
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    di
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rra
    rra
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    rst $38
    rst $38
    rlca
    rlca
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rra
    rra
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ret nz

    ret nz

    rst $38
    rst $38
    adc [hl]
    adc [hl]
    xor l
    xor l
    adc e
    adc e
    rst $30
    rst $30
    add sp, -$18
    jp c, $b8da

    cp b
    rst $38
    rst $38
    sbc a
    sbc a
    rst $28
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $08
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    di
    di
    rst $38
    rst $38
    di
    di
    ei
    ei
    rst $30
    rst $30
    rst $38
    rst $38
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    ccf
    ccf
    ld bc, $0045
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_01e_6d68

    ld h, $00
    ld b, c
    nop
    nop
    inc sp
    inc [hl]
    nop
    add hl, sp
    dec hl
    dec h
    inc l
    ld b, h
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec l
    ld b, e
    nop
    ld l, $34
    daa
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d

jr_01e_6d68:
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01e_6d95

    ld [hl+], a
    inc hl
    inc h
    ld a, [hl-]
    nop
    ld b, d
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld sp, $2f32
    jr nc, jr_01e_6dbd

    ld [hl], $37
    jr c, jr_01e_6dcf

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld a, [hl+]

jr_01e_6d95:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    inc e
    ld [hl], a
    ld h, $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld [hl-], a
    cp [hl]
    inc e
    ld d, l

jr_01e_6dbd:
    nop
    cp [hl]
    inc c
    ld a, l
    inc a
    xor [hl]
    inc c
    ld e, l
    inc c
    xor [hl]
    inc c
    ld e, l
    inc c
    cp a
    ccf
    ld d, l
    nop
    cp [hl]

jr_01e_6dcf:
    ld a, $77
    ld h, e
    xor a
    inc bc
    ld e, a
    ld c, $ba
    jr c, jr_01e_6e4e

    ld [hl], b
    rst $38
    ld a, a
    ld d, l
    nop
    cp [hl]
    ld a, $77
    ld h, e
    xor e
    inc bc
    ld e, a

jr_01e_6de5:
    ld e, $ab
    inc bc
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    xor [hl]
    ld c, $5f
    ld e, $be
    ld [hl], $77
    ld h, [hl]
    rst $38
    ld a, a
    ld d, a
    ld b, $ae
    ld b, $55

jr_01e_6dfd:
    nop
    cp $7e
    ld [hl], l
    ld h, b
    ld [$7f60], a
    ld a, $ab
    inc bc
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    cp [hl]
    ld e, $75
    jr nc, jr_01e_6dfd

    ld h, b
    ld a, a
    ld a, [hl]
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    rst $38
    ld a, a
    ld [hl], a
    ld h, e
    xor [hl]
    ld b, $5d
    inc c
    cp d
    jr jr_01e_6e86

    jr jr_01e_6de5

    jr jr_01e_6e82

    nop
    cp [hl]
    ld a, $77
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld a, $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    cp [hl]
    ld a, $77
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ccf
    xor e
    inc bc
    ld d, a
    ld b, $be
    inc a
    ld d, l
    nop

jr_01e_6e4e:
    cp [hl]
    inc e
    ld [hl], a
    ld [hl], $eb
    ld h, e
    ld a, a
    ld a, a
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld d, l
    nop
    cp $7e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld a, [hl]
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp $7e
    ld d, l
    nop
    cp [hl]
    ld e, $77
    inc sp
    ld [$7560], a
    ld h, b
    ld [$7760], a
    inc sp
    cp [hl]
    ld e, $55
    nop
    cp $7c
    ld [hl], a
    ld h, [hl]

jr_01e_6e82:
    db $eb
    ld h, e
    ld [hl], a
    ld h, e

jr_01e_6e86:
    db $eb
    ld h, e
    ld [hl], a
    ld h, [hl]
    cp $7c
    ld d, l

jr_01e_6e8d:
    nop
    rst $38
    ld a, a
    ld [hl], l

jr_01e_6e91:
    ld h, b
    ld [$7f60], a
    ld a, [hl]
    ld [$7560], a
    ld h, b
    rst $38
    ld a, a
    ld d, l
    nop
    rst $38
    ld a, a
    ld [hl], l
    ld h, b
    ld [$7f60], a
    ld a, [hl]
    ld [$7560], a
    ld h, b
    ld [$5560], a
    nop
    cp [hl]
    ld a, $77
    ld h, e
    ld [$7f60], a
    ld l, a
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld a, a
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld d, l
    nop
    cp $7e
    ld e, l
    jr jr_01e_6e8d

    jr jr_01e_6f32

    jr jr_01e_6e91

    jr jr_01e_6f36

jr_01e_6ed9:
    jr jr_01e_6ed9

    ld a, [hl]
    ld d, l
    nop
    cp a
    rra
    ld d, a
    ld b, $ae
    ld b, $57
    ld b, $ee
    ld h, [hl]
    ld [hl], a
    ld h, [hl]
    cp [hl]
    inc a
    ld d, l
    nop
    rst $28
    ld h, a
    ld a, a
    ld l, [hl]
    cp $7c
    ld a, l
    ld a, b
    cp $7c
    ld a, a
    ld l, [hl]
    rst $28
    ld h, a
    ld d, l
    nop
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    ld [$7560], a
    ld h, b
    rst $38
    ld a, a
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    db $eb
    ld l, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], e
    ei
    ld a, e
    ld a, a
    ld a, a
    rst $28
    ld l, a
    ld [hl], a
    ld h, a
    db $eb
    ld h, e
    ld d, l
    nop
    cp [hl]
    ld a, $77
    ld h, e

jr_01e_6f32:
    db $eb
    ld h, e
    ld [hl], a
    ld h, e

jr_01e_6f36:
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55

jr_01e_6f3d:
    nop
    cp $7e
    ld [hl], a

jr_01e_6f41:
    ld h, e
    db $eb
    ld h, e
    ld a, a

jr_01e_6f45:
    ld a, [hl]
    ld [$7560], a
    ld h, b
    ld [$5560], a
    nop
    cp [hl]
    ld a, $77
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    rst $28
    ld l, l
    ld [hl], a
    ld h, d
    cp a
    dec a
    ld d, l
    nop
    cp $7e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld a, a
    ld a, [hl]
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld d, l
    nop
    cp [hl]
    ld a, $77
    ld h, e
    ld [$7f60], a
    ld a, $ab
    inc bc
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    rst $38
    ld a, a
    ld e, l
    jr jr_01e_6f3d

    jr jr_01e_6fe2

    jr jr_01e_6f41

    jr jr_01e_6fe6

    jr jr_01e_6f45

    jr jr_01e_6fe2

    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a

jr_01e_6f95:
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    cp [hl]
    ld a, $55
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], $be
    ld [hl], $5d
    inc e
    cp [hl]
    inc e
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld h, e
    db $eb
    ld l, e
    ld a, a
    ld a, a
    rst $38
    ld a, $77
    ld [hl], $aa
    ld [hl+], a
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a
    ld [hl], a
    cp [hl]
    ld a, $5d
    inc e
    cp [hl]
    ld a, $77
    ld [hl], a
    db $eb
    ld h, e
    ld d, l
    nop
    db $eb
    ld h, e
    ld [hl], a

jr_01e_6fd1:
    ld [hl], a
    cp [hl]
    ld a, $5d
    inc e
    cp [hl]
    jr jr_01e_7056

    jr c, jr_01e_6f95

    jr nc, jr_01e_7032

    nop
    rst $38
    ld a, a
    ld d, a

jr_01e_6fe1:
    rlca

jr_01e_6fe2:
    xor [hl]
    ld c, $5d
    inc e

jr_01e_6fe6:
    cp d
    jr c, jr_01e_705e

    ld [hl], b
    rst $38
    ld a, a
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, a
    ld a, [hl]
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    inc b
    xor [hl]
    ld l, $7d
    inc a
    cp $74
    ld a, a
    ld l, $be
    inc a
    ld [hl], l
    ld [hl], h
    xor d
    jr nz, jr_01e_7062

    nop
    cp [hl]
    inc a
    ld [hl], a
    ld h, [hl]
    xor [hl]
    inc c
    ld e, l
    jr jr_01e_6fd1

    jr jr_01e_706e

    nop
    cp d
    jr jr_01e_7072

    nop
    cp d
    jr nc, jr_01e_709e

    ld a, b
    ld a, [$7578]
    jr nc, jr_01e_6fe1

    jr nc, jr_01e_707e

    nop
    cp d
    jr nc, jr_01e_70aa

    inc a
    ld [$fd42], a
    sbc c

jr_01e_7032:
    xor e
    and c
    push af
    and c
    cp e
    sbc c
    ld d, a
    ld b, d
    cp [hl]
    inc a
    ld e, l
    ld [$00be], sp
    ld a, a
    ld a, [hl+]
    cp [hl]
    ld a, [hl+]
    ld a, a

jr_01e_7045:
    ld [hl+], a
    rst $38
    ld l, e
    ld a, a
    ld a, a
    xor d
    ld [$0055], sp
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop

jr_01e_7056:
    ld [$7560], a
    jr nz, jr_01e_7045

    ld b, b
    ld d, l
    nop

jr_01e_705e:
    xor d
    nop
    ld d, l
    nop

jr_01e_7062:
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    ld h, b
    ld [$5560], a
    nop

jr_01e_706e:
    xor d
    nop
    ld e, l
    inc c

jr_01e_7072:
    xor [hl]
    inc c
    ld d, l
    nop
    xor [hl]
    inc c
    ld e, l
    inc c
    xor d
    nop
    ld d, l
    nop

jr_01e_707e:
    xor d
    nop
    ld d, l
    nop
    cp $7e
    ld d, l
    nop
    cp $7e
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    add c
    ld d, l
    ld b, c
    xor e
    ld hl, $1155
    xor e
    add hl, bc
    ld d, l
    dec b
    xor e
    inc bc
    ld d, l
    nop

jr_01e_709e:
    xor e
    inc bc
    ld d, l
    dec b
    xor e
    add hl, bc
    ld d, l
    ld de, $21ab
    ld d, l
    ld b, c

jr_01e_70aa:
    xor e
    add c
    ld d, l
    nop
    ld [$7500], a
    nop
    ld [$7500], a
    nop
    ld [$7500], a
    nop
    rst $38
    nop
    ld d, l
    nop
    cp $00
    ld [hl], a
    nop
    db $eb
    nop
    ld a, a
    nop
    db $eb
    nop
    ld [hl], a
    nop
    db $eb
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    dec h
    rst $38
    ld d, l
    ld d, a
    ld d, [hl]
    rst $38
    ld d, l
    ld [hl], l
    dec h
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    db $10
    cp [hl]
    ld a, $7f
    ld a, [hl]
    cp [hl]
    ld a, $55
    db $10
    xor d
    nop
    ld d, a
    ld [bc], a
    xor a
    dec b
    db $dd
    dec b
    xor a
    adc b
    db $dd
    adc b
    ld a, [$7550]

jr_01e_70f9:
    ld d, b
    xor d
    jr nz, jr_01e_7172

    jr nz, jr_01e_70f9

    ld d, b
    db $dd
    ld d, b
    ld a, [$dd88]
    adc b
    xor a
    dec b
    ld d, a
    dec b
    xor d
    ld [bc], a
    ld d, l
    nop
    cp a
    rra
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $f1fb
    ld d, l
    nop
    ei
    pop af
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $11bb
    ld d, l
    ld de, $1fbf
    ld d, l
    nop
    xor d
    nop
    ld d, l
    db $10
    cp d
    db $10
    ld a, l
    ld a, h
    cp d
    db $10
    ld d, l
    db $10
    xor d
    nop
    ld d, l
    nop
    xor [hl]
    ld b, $5d
    ld [$08aa], sp
    ld e, l
    ld [$08aa], sp
    ld e, l
    ld [$06ae], sp
    ld d, l

jr_01e_714d:
    nop
    ld [$f5e0], a

jr_01e_7151:
    and b
    xor d
    and b
    push af
    and b
    xor d
    and b
    push af
    and b
    cp a
    cp a
    ld d, l
    nop
    ld a, [$ddf8]
    adc b
    xor d
    adc b
    db $dd
    adc b
    xor d
    adc b
    db $dd
    adc b

jr_01e_716a:
    xor a
    adc a
    ld d, l
    nop
    rst $38
    rst $38
    push de
    add c

jr_01e_7172:
    xor e
    add c
    push de
    add c
    xor e
    add c
    push de
    add c
    xor e
    add c
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
    rst $38
    ld d, l
    nop
    rst $38
    rst $38
    push de
    add b
    xor d
    add b
    push de
    add b
    xor d
    add b
    push de
    add b
    xor d
    add b
    ld d, l
    nop
    ld [$75e0], a

jr_01e_71a1:
    jr nz, jr_01e_714d

    jr nz, jr_01e_721a

    jr nz, jr_01e_7151

    jr nz, jr_01e_721e

    jr nz, jr_01e_716a

    ccf
    ld d, l
    nop
    ei
    ld [hl], c
    ld d, a
    ld d, d
    cp $74
    ld e, l
    ld [$17bf], sp
    ld [hl], l
    dec h
    rst $28
    ld b, a
    ld d, l
    nop
    ld [$7560], a
    db $10
    cp d
    db $10
    ld d, l
    db $10
    cp d
    db $10
    ld [hl], l
    db $10
    ld [$5560], a
    nop
    xor d
    nop
    ld e, l
    inc c
    xor [hl]
    inc c
    ld d, l
    nop
    xor [hl]
    inc c
    ld d, l
    inc b
    xor d
    ld [$0055], sp
    xor e
    inc bc
    ld d, a
    ld b, $ae
    inc c
    ld e, l
    jr jr_01e_71a1

    jr nc, jr_01e_725e

    ld h, b
    ld [$00c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_01e_7233

    dec l
    inc [hl]
    ld a, [hl-]
    ld a, $3f
    ld a, $3a
    inc [hl]
    dec l
    inc hl

jr_01e_721a:
    jr jr_01e_7228

    nop
    db $f4

jr_01e_721e:
    add sp, -$23
    db $d3
    call z, $c2c6
    pop bc
    jp nz, $ccc6

jr_01e_7228:
    db $d3
    db $dd
    add sp, -$0c
    nop
    jr jr_01e_725d

    ld b, b
    ld c, h
    ld d, c
    ld d, b

jr_01e_7233:
    ld c, d
    ccf
    ld [hl-], a
    inc h
    rla
    dec c
    ld b, $02
    nop
    nop
    nop
    cp $fa
    di
    jp hl


    call c, $c1ce
    or [hl]
    or b
    xor a
    or h
    ret nz

    jp nc, Jump_000_00e8

    inc h
    ld b, d
    ld d, l
    ld e, e
    ld d, [hl]
    ld c, b
    jr c, jr_01e_727f

    jr nz, jr_01e_7273

    dec de
    inc e
    ld a, [de]
    dec d
    inc c
    nop

jr_01e_725d:
    db $f4

jr_01e_725e:
    db $eb
    and $e4
    push hl
    db $e4
    ldh [$d6], a
    ret z

    cp b
    xor d
    and l
    xor e
    cp [hl]
    call c, $2f00
    ld d, d
    ld h, b
    ld e, e
    ld c, d
    add hl, sp

jr_01e_7273:
    dec l
    ld a, [hl+]
    dec hl
    inc l
    daa
    inc e
    rrca
    dec b
    ld bc, $ff00
    ei

jr_01e_727f:
    pop af
    db $e4
    reti


    call nc, $d6d5
    db $d3
    rst $00
    or [hl]
    and l
    and b
    xor [hl]
    pop de
    nop
    ld a, [hl-]
    ld e, l
    ld h, d
    ld d, d
    ld a, $34
    inc [hl]
    scf
    ld [hl-], a
    daa
    ld a, [de]
    inc de
    ld [de], a
    ld de, $000b
    push af
    rst $28
    xor $ed
    and $d9
    adc $c9
    call z, $c2cc
    xor [hl]
    sbc [hl]
    and e
    add $00
    ld b, e
    ld h, l
    ld e, [hl]
    ld b, a
    ld a, [hl-]
    dec sp
    ld a, $37
    add hl, hl
    rra
    ld e, $1d
    ld d, $0a
    ld [bc], a
    nop
    cp $f6
    ld [$e2e3], a
    pop hl
    rst $10
    ret


    jp nz, $c6c5

    cp c
    and d
    sbc e
    cp l
    nop
    ld c, h
    ld l, b
    ld d, a
    ld b, c
    ccf
    ld b, h
    inc a
    ld l, $27
    jr z, jr_01e_72fb

    rla
    ld c, $0d
    ld a, [bc]
    nop
    or $f3
    ld a, [c]
    jp hl


    db $dd
    ret c

    reti


    jp nc, $bcc4

    pop bc
    cp a
    xor c
    sbc b
    or h
    nop
    ld d, h
    ld l, b
    ld c, a
    ld b, c
    ld b, a
    ld b, h
    inc [hl]
    ld l, $2f
    jr z, jr_01e_7313

    rla
    ld d, $0d

jr_01e_72fb:
    ld [bc], a
    nop
    cp $f3
    ld [$e5e9], a
    ret c

    pop de
    jp nc, $bccc

    cp c
    cp a
    or c
    sbc b
    xor h
    nop
    ld e, e
    ld h, l
    ld c, c
    ld b, [hl]
    ld c, e
    dec a

jr_01e_7313:
    inc sp
    dec [hl]
    dec l
    ld hl, $1c1f
    db $10
    ld a, [bc]
    add hl, bc
    nop
    rst $30
    or $f0
    db $e4
    pop hl
    rst $18
    db $d3
    set 1, l
    jp $bab5


    or a
    sbc e
    and l
    nop
    ld h, c
    ld h, c
    ld b, a
    ld c, h
    ld c, b
    add hl, sp
    add hl, sp
    dec [hl]
    jr z, @+$28

    ld [hl+], a
    ld d, $13
    rrca
    inc b
    nop
    db $fc
    pop af
    db $ed
    ld [$dade], a
    ret c

    set 0, a
    rst $00
    cp b
    or h
    cp c
    sbc a
    sbc a
    nop
    ld h, l
    ld e, h
    ld c, b
    ld d, b
    ld b, e
    dec sp
    inc a
    cpl
    dec hl
    jr z, @+$1e

    ld a, [de]
    inc d
    ld a, [bc]
    ld [$f800], sp
    or $ec
    and $e4
    ret c

    push de
    pop de
    call nz, $bdc5
    or b
    cp b
    and h
    sbc e
    nop
    ld l, c
    ld d, [hl]
    ld c, h
    ld d, b
    ccf
    ld b, b
    jr c, jr_01e_73a4

    cpl
    inc hl
    jr nz, jr_01e_7393

    db $10
    rrca
    dec b
    nop
    ei
    pop af
    ldh a, [$e6]
    ldh [$dd], a
    pop de
    pop de
    ret z

    ret nz

    pop bc
    or b
    or h
    xor d
    sub a
    nop
    ld l, h
    ld d, d
    ld d, b
    ld c, l
    ld b, b
    ld b, d

jr_01e_7393:
    inc [hl]
    inc [hl]
    dec hl
    inc h
    ld hl, $1516
    ld a, [bc]
    rlca
    nop
    ld sp, hl
    or $eb
    ld [$dcdf], a
    push de

jr_01e_73a4:
    call z, $becc
    ret nz

    or e
    or b
    xor [hl]
    sub h
    nop
    ld l, [hl]
    ld c, a
    ld d, h
    ld c, b
    ld b, h
    ccf
    ld [hl], $34
    add hl, hl
    jr z, jr_01e_73d4

    dec de
    ld de, $060e
    nop
    ld a, [$eff2]
    push hl
    db $e4
    ret c

    rst $10
    call z, $c1ca
    cp h
    cp b
    xor h
    or c
    sub d
    nop
    ld l, [hl]
    ld c, l
    ld d, a
    ld b, [hl]
    ld c, b
    dec sp
    ld a, [hl-]

jr_01e_73d4:
    jr nc, jr_01e_7403

    inc h
    jr nz, jr_01e_73f1

    inc de
    inc c
    ld b, $00
    ld a, [$edf4]
    add sp, -$20
    call c, $d0d3
    add $c5
    cp b
    cp d
    xor c
    or e
    sub d
    nop
    nop
    nop
    nop
    nop

jr_01e_73f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01e_7403:
    nop
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
    jr jr_01e_7433

    dec l
    inc [hl]
    ld a, [hl-]
    ld a, $3f
    ld a, $3a
    inc [hl]
    dec l
    inc hl
    jr jr_01e_7428

    nop
    db $f4
    add sp, -$23
    db $d3
    call z, $c2c6
    pop bc
    jp nz, $ccc6

jr_01e_7428:
    db $d3
    db $dd
    add sp, -$0c
    nop
    jr jr_01e_745b

    jr c, @+$3d

    jr c, jr_01e_7465

jr_01e_7433:
    inc l
    ld a, [hl+]
    inc l
    ld [hl-], a
    jr c, jr_01e_7474

    jr c, @+$2e

    jr jr_01e_743d

jr_01e_743d:
    add sp, -$2c
    ret z

    push bc
    ret z

    adc $d4
    sub $d4
    adc $c8
    push bc
    ret z

    call nc, Call_000_00e8
    ld [hl+], a
    scf
    ld a, [hl-]
    ld [hl-], a
    inc l
    dec l
    inc sp
    scf
    inc sp
    dec l
    inc l
    ld [hl-], a
    ld a, [hl-]
    scf

jr_01e_745b:
    ld [hl+], a
    nop
    sbc $c9
    add $ce
    call nc, $cdd3
    ret


jr_01e_7465:
    call $d4d3
    adc $c6
    ret


    sbc $00
    dec hl
    dec sp
    inc sp
    inc l
    ld sp, $3236

jr_01e_7474:
    ld l, $32
    ld [hl], $31
    inc l
    inc sp
    dec sp
    dec hl
    nop
    push de
    push bc
    call $cfd4
    jp z, $d2ce

    adc $ca
    rst $08
    call nc, $c5cd
    push de
    nop
    ld [hl-], a
    jr c, jr_01e_74bd

    ld sp, $2f35
    jr nc, jr_01e_74ca

    jr nc, jr_01e_74c6

    dec [hl]
    ld sp, $382d
    ld [hl-], a
    nop
    adc $c8
    db $d3
    rst $08
    set 2, c
    ret nc

    set 2, b
    pop de
    set 1, a
    db $d3
    ret z

    adc $00
    scf
    inc sp
    ld l, $35
    cpl
    ld sp, $2f33
    inc sp
    ld sp, $352f
    ld l, $33
    scf
    nop

jr_01e_74bd:
    ret


    call $cbd2
    pop de
    rst $08
    call $cdd1

jr_01e_74c6:
    rst $08
    pop de
    set 2, d

jr_01e_74ca:
    call Call_000_00c9
    ld a, [hl-]
    ld l, $33
    ld [hl-], a
    jr nc, @+$35

    cpl
    inc [hl]
    cpl
    inc sp
    jr nc, jr_01e_750b

    inc sp
    ld l, $3a
    nop
    add $d2
    call $d0ce
    call $ccd1
    pop de
    call $ced0
    call $c6d2
    nop
    ld l, [hl]
    ld c, a
    ld d, l
    ld c, b
    ld b, l
    ld a, $36
    inc sp
    add hl, hl
    daa
    dec e
    dec de
    ld de, $060d
    nop
    ld a, [$eff3]
    push hl
    db $e3
    reti


    rst $10
    call $c2ca
    cp e
    cp b
    xor e
    or c

jr_01e_750b:
    sub d
    nop
    ld h, c
    ld [hl], $32
    inc e
    db $10
    inc b
    ld sp, hl
    db $f4
    db $eb
    db $ed
    jp hl


    xor $ee
    push af
    ld sp, hl
    nop
    rlca
    dec bc
    ld [de], a
    ld [de], a
    rla
    inc de
    dec d
    inc c
    rlca
    db $fc
    ldh a, [$e4]
    adc $ca
    sbc a
    nop
    ld d, l
    jr nz, jr_01e_7545

    db $fc
    di
    xor $ed
    db $f4
    ld hl, sp+$03
    ld b, $0d
    dec bc
    inc c
    dec b
    nop
    ei
    db $f4
    push af
    di
    ld a, [$08fd]
    inc c

jr_01e_7545:
    inc de
    ld [de], a
    dec c
    inc b
    db $eb
    ldh [$ab], a
    nop
    ld c, d
    dec c
    nop
    db $ed
    rst $28
    or $fe
    add hl, bc
    add hl, bc
    dec bc
    ld [bc], a
    rst $38
    rst $30
    ld hl, sp-$06
    nop
    ld b, $08
    add hl, bc
    ld bc, $f5fe
    rst $30
    rst $30
    ld [bc], a
    ld a, [bc]
    ld de, $0013
    di
    or [hl]
    nop
    ccf
    db $fd
    push af
    db $ed
    ld a, [$0906]
    add hl, bc
    cp $fc
    or $ff
    ld [bc], a
    ld [$0005], sp
    ei
    ld hl, sp-$02
    ld bc, $040a
    ld [bc], a
    rst $30
    rst $30
    ld a, [$1306]
    dec bc
    inc bc
    pop bc
    nop
    inc [hl]
    pop af
    ld a, [c]
    or $07
    ld a, [bc]
    ld [bc], a
    db $fd
    rst $30
    nop
    inc bc
    ld [$fcff], sp
    ld a, [$0600]
    inc b
    ld bc, $fdf8
    nop
    add hl, bc
    inc bc
    cp $f6
    ld sp, hl
    ld a, [bc]
    ld c, $0f
    call z, Call_000_2a00
    ld [$01f6], a
    dec bc
    inc bc
    ld hl, sp-$03
    ld bc, $ff08
    db $fd
    ei
    inc b
    inc b
    nop
    db $fc
    db $fc
    dec b
    inc bc
    ld bc, $fff8
    inc bc
    ld [$f5fd], sp
    rst $38
    ld a, [bc]
    ld d, $d6
    nop
    ld [hl+], a
    and $fe
    rlca
    ld b, $fb
    ld a, [$0206]
    nop
    ld a, [$0303]
    nop
    ei
    nop
    dec b
    nop
    db $fd
    db $fd
    ld b, $00
    cp $fa
    ld b, $05
    ld a, [$02f9]
    ld a, [de]
    sbc $00
    ld a, [de]
    and $06
    rlca
    cp $fb
    ld [bc], a
    ld b, $fa
    nop
    ld [bc], a
    inc bc
    ei
    nop
    inc bc
    nop
    db $fd
    nop
    dec b
    db $fd
    cp $00
    ld b, $fa
    cp $05
    ld [bc], a
    ld sp, hl
    ld a, [$e61a]
    nop
    inc de
    jp hl


    inc c
    ld [bc], a
    ld a, [$0301]
    rst $38
    db $fc
    ld b, $fe
    cp $01
    inc bc
    db $fc
    nop
    inc b
    db $fd
    rst $38
    ld [bc], a
    ld [bc], a
    ld a, [HeaderLogo]
    db $fd
    rst $38
    ld b, $fe
    db $f4
    rla
    db $ed
    nop
    dec c
    xor $0e
    db $fc
    db $fc
    ld b, $fe
    rst $38
    ld [bc], a
    ld [bc], a
    ei
    dec b
    cp $fe
    ld [bc], a
    nop
    cp $02
    ld [bc], a
    ei
    dec b
    cp $fe
    ld bc, $fa02
    inc b
    inc b
    ld a, [c]
    ld [de], a
    di
    nop
    ld [$0df3], sp
    ld hl, sp+$02
    inc bc
    ld a, [$fe04]
    rst $38
    ld bc, $fd01
    inc b
    db $fd
    nop
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    ld bc, $fc02
    ld b, $fd
    cp $08
    di
    dec c
    ld hl, sp+$00
    dec b
    ld hl, sp+$09
    ld hl, sp+$06
    cp $fe
    inc b
    ei
    dec b
    db $fd
    ld bc, $ff01
    ld bc, $ff00
    ld bc, $ffff
    inc bc
    ei
    dec b
    db $fc
    ld [bc], a
    ld [bc], a
    ld a, [$f708]
    ld [$00fb], sp
    ld [bc], a
    db $fd
    inc b
    ei
    dec b
    db $fc
    ld [bc], a
    nop
    rst $38
    inc bc
    db $fc
    inc b
    db $fc
    inc bc
    cp $00
    ld [bc], a
    db $fd
    inc b
    db $fc
    inc b
    db $fd
    ld bc, $fe00
    inc b
    ei
    dec b
    db $fc
    inc bc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $03fe
    db $fd
    inc bc
    db $fc
    inc b
    db $fc
    inc bc
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ld bc, $02ff
    db $fd
    inc bc
    db $fd
    inc b
    db $fc
    inc b
    db $fd
    inc bc
    db $fd
    ld [bc], a
    rst $38
    ld bc, $3a00
    ld l, $33
    ld sp, $3331
    jr nc, jr_01e_7728

    jr nc, @+$35

    ld sp, $3331
    ld l, $3a
    nop
    add $d2
    call $cfcf
    call $cdd0
    ret nc

    call $cfcf
    call $c6d2
    nop
    dec l
    ld d, $10
    dec b
    db $fc
    ld sp, hl
    ld a, [c]
    db $f4
    ld a, [c]
    ld sp, hl
    db $fc
    dec b
    db $10
    ld d, $2d
    nop
    db $d3
    ld [$fbf0], a
    inc b
    rlca
    ld c, $0c
    ld c, $07
    inc b

jr_01e_7728:
    ei
    ldh a, [$ea]
    db $d3
    nop
    ld [hl+], a
    ld [bc], a
    ei
    or $f8
    ld bc, $0904
    inc b
    ld bc, $f6f8
    ei
    ld [bc], a
    ld [hl+], a
    nop
    sbc $fe
    dec b
    ld a, [bc]
    ld [$fcff], sp
    rst $30
    db $fc
    rst $38
    ld [$050a], sp
    cp $de
    nop
    rla
    rst $30
    ld sp, hl
    rst $38
    dec b
    dec b
    db $fd
    db $fd
    db $fd
    dec b
    dec b
    rst $38
    ld sp, hl
    rst $30
    rla
    nop
    jp hl


    add hl, bc
    rlca
    ld bc, $fbfb
    inc bc
    inc bc
    inc bc
    ei
    ei
    ld bc, $0907
    jp hl


    nop
    ld c, $f3
    nop
    dec b
    nop
    db $fd
    cp $06
    cp $fd
    nop
    dec b
    nop
    di
    ld c, $00
    ld a, [c]
    dec c
    nop
    ei
    nop
    inc bc
    ld [bc], a
    ld a, [$0302]
    nop
    ei
    nop
    dec c
    ld a, [c]
    nop
    ld [$06f6], sp
    nop
    db $fc
    inc b
    nop
    rst $38
    nop
    inc b
    db $fc
    nop
    ld b, $f6
    ld [$f800], sp
    ld a, [bc]
    ld a, [$0400]
    db $fc
    nop
    ld bc, $fc00
    inc b
    nop
    ld a, [$f80a]
    nop
    inc bc
    ei
    dec b
    db $fc
    ld bc, $fc01
    inc b
    db $fc
    ld bc, $fc01
    dec b
    ei
    inc bc
    nop
    db $fd
    dec b
    ei
    inc b
    rst $38
    rst $38
    inc b
    db $fc
    inc b
    rst $38
    rst $38
    inc b
    ei
    dec b
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_01e_7833

    dec l
    inc [hl]
    ld a, [hl-]
    ld a, $3f
    ld a, $3a
    inc [hl]
    dec l
    inc hl
    jr jr_01e_7828

    nop
    db $f4
    add sp, -$23
    db $d3
    call z, $c2c6
    pop bc
    jp nz, $ccc6

jr_01e_7828:
    db $d3
    db $dd
    add sp, -$0c
    nop
    ld [$1c12], sp
    jr z, jr_01e_7865

    dec a

jr_01e_7833:
    ld b, h
    ld b, [hl]
    ld b, h
    dec a
    inc sp
    jr z, jr_01e_7856

    ld [de], a
    ld [$f800], sp
    xor $e4
    ret c

    call $bcc3
    cp d
    cp h
    jp $d8cd


    db $e4
    xor $f8
    nop
    ld a, [bc]
    inc d
    dec e
    ld h, $31
    inc a
    ld b, l
    ld c, c
    ld b, l

jr_01e_7856:
    inc a
    ld sp, $1d26
    inc d
    ld a, [bc]
    nop
    or $ec
    db $e3
    jp c, $c4cf

    cp e
    or a

jr_01e_7865:
    cp e
    call nz, $dacf
    db $e3
    db $ec
    or $00
    add hl, bc
    inc de
    ld e, $27
    jr nc, jr_01e_78ae

    ld b, l
    ld c, d
    ld b, l
    dec sp
    jr nc, jr_01e_78a0

    ld e, $13
    add hl, bc
    nop
    rst $30
    db $ed
    ld [c], a
    reti


    ret nc

    push bc
    cp e
    or [hl]
    cp e
    push bc
    ret nc

    reti


    ld [c], a
    db $ed
    rst $30
    nop
    ld a, [bc]
    inc de
    dec e
    daa
    jr nc, jr_01e_78cd

    ld b, l
    ld c, e
    ld b, l
    ld a, [hl-]
    jr nc, jr_01e_78c0

    dec e
    inc de
    ld a, [bc]
    nop
    or $ed
    db $e3

jr_01e_78a0:
    reti


    ret nc

    add $bb
    or l
    cp e
    add $d0
    reti


    db $e3
    db $ed
    or $00
    ld a, [bc]

jr_01e_78ae:
    inc d
    dec e
    daa
    ld sp, $453a
    ld c, e
    ld b, l
    ld a, [hl-]
    ld sp, $1d27
    inc d
    ld a, [bc]
    nop
    or $ec
    db $e3

jr_01e_78c0:
    reti


    rst $08
    add $bb
    or l
    cp e
    add $cf
    reti


    db $e3
    db $ec
    or $00

jr_01e_78cd:
    ld a, [bc]
    inc de
    dec e
    daa
    ld sp, $453a
    ld c, e
    ld b, l
    ld a, [hl-]
    ld sp, $1d27
    inc de
    ld a, [bc]
    nop
    or $ed
    db $e3
    reti


    rst $08
    add $bb
    or l
    cp e
    add $cf
    reti


    db $e3
    db $ed
    or $00
    ld a, [bc]
    inc d
    dec e
    daa
    jr nc, jr_01e_792d

    ld b, h
    ld c, h
    ld b, h
    ld a, [hl-]
    jr nc, @+$29

    dec e
    inc d
    ld a, [bc]
    nop
    or $ec
    db $e3
    reti


    ret nc

    add $bc
    or h
    cp h
    add $d0
    reti


    db $e3
    db $ec
    or $00
    db $fd
    ei
    ld a, [$fcfa]
    nop
    ld b, $0d
    ld b, $00
    db $fc
    ld a, [$fbfa]
    db $fd
    nop
    inc bc
    dec b
    ld b, $06
    inc b
    nop
    ld a, [$faf3]
    nop
    inc b
    ld b, $06
    dec b
    inc bc
    nop

jr_01e_792d:
    ld bc, $0102
    rst $38
    db $fd
    cp $00
    ld b, $00
    cp $fd
    rst $38
    ld bc, $0102
    nop
    rst $38
    cp $ff
    ld bc, $0203
    nop
    ld a, [$0200]
    inc bc
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $fe00
    rst $38
    inc bc
    rst $38
    cp $00
    ld bc, $0000
    rst $38
    nop
    ld bc, $0000
    rst $38
    nop
    ld [bc], a
    ld bc, $01fd
    ld [bc], a
    nop
    rst $38
    nop
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    ld bc, $ff00
    ld [bc], a
    rst $38
    nop
    ld bc, $ff00
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    ld bc, $01fe
    nop
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
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01ff
    rst $38
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
    rst $38
    ld bc, $01ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01e_7a0e

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01e_7a14

    jr nz, @+$22

    jr nz, jr_01e_7a18

    jr nz, jr_01e_79fa

Call_01e_79fa:
jr_01e_79fa:
    push bc
    ld bc, $9480

Jump_01e_79fe:
    ld a, c
    or a
    jp nz, Jump_01e_7a09

    ld a, b
    cp $98
    jp z, Jump_01e_7a18

Jump_01e_7a09:
    ld a, $ff
    push af
    inc sp
    push bc

jr_01e_7a0e:
    call Call_000_17bb
    add sp, $03
    inc bc

jr_01e_7a14:
    inc bc
    jp Jump_01e_79fe


Jump_01e_7a18:
jr_01e_7a18:
    ld bc, $8800

Jump_01e_7a1b:
    ld a, c
    cp $d0
    jp nz, Jump_01e_7a27

    ld a, b
    cp $88
    jp z, Jump_01e_7a36

Jump_01e_7a27:
    ld a, $ff
    push af
    inc sp
    push bc
    call Call_000_17bb
    add sp, $03
    inc bc
    inc bc
    jp Jump_01e_7a1b


Jump_01e_7a36:
    pop bc
    ret


Call_01e_7a38:
    push bc

Jump_01e_7a39:
    ldh a, [rSTAT]
    ld c, a
    bit 1, a
    jp nz, Jump_01e_7a39

    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld e, c
    pop bc
    ret


Call_01e_7a4b:
    push bc
    add sp, -$01
    ld hl, sp+$00
    ld [hl], $00

Jump_01e_7a52:
    ld hl, sp+$00
    ld a, [hl]
    cp $10
    jp z, Jump_01e_7a9c

    ld hl, sp+$05
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld e, b
    ld d, c
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    ld l, b
    ld h, c
    push hl
    call Call_01e_7a38
    ld hl, $c9b2
    ld [hl], e
    add sp, $02
    ld hl, sp+$07
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld e, b
    ld d, c
    ld hl, $0001
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    ld hl, $c9b2
    ld a, [hl]
    push af
    inc sp
    ld l, b
    ld h, c
    push hl
    call Call_000_17bb
    add sp, $03
    ld hl, sp+$00
    inc [hl]
    jp Jump_01e_7a52


Jump_01e_7a9c:
    add sp, $01
    pop bc
    ret


    push bc
    add sp, -$04
    call Call_000_339d
    di
    xor a
    ld hl, $ff90
    or [hl]
    jp z, Jump_01e_7af5

    ld hl, $c567
    ld [hl], $04
    ld hl, $c569
    ld [hl], $04
    ld hl, $c568
    ld [hl], $01
    ld hl, $c56a
    ld [hl], $01
    ld de, $54c0
    ld c, e
    ld b, d
    ld hl, $c52f
    ld a, [hl]
    cp $01
    jp z, Jump_01e_7ad9

    cp $02
    jp z, Jump_01e_7ae1

    jp Jump_01e_7ae6


Jump_01e_7ad9:
    ld de, $6356
    ld c, e
    ld b, d
    jp Jump_01e_7ae6


Jump_01e_7ae1:
    ld de, $462a
    ld c, e
    ld b, d

Jump_01e_7ae6:
    push bc
    call Call_000_3380
    ld hl, $c9b4
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    jp Jump_01e_7b77


Jump_01e_7af5:
    ld de, $54c0
    ld c, e
    ld b, d
    ld de, $59b2
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $5e84
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c52f
    ld a, [hl]
    cp $01
    jp z, Jump_01e_7b1b

    cp $02
    jp z, Jump_01e_7b33

    jp Jump_01e_7b48


Jump_01e_7b1b:
    ld de, $6356
    ld c, e
    ld b, d
    ld de, $6848
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $6d1a
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d
    jp Jump_01e_7b48


Jump_01e_7b33:
    ld de, $462a
    ld c, e
    ld b, d
    ld de, $4b1c
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    ld de, $4fee
    ld hl, sp+$00
    ld [hl], e
    inc hl
    ld [hl], d

Jump_01e_7b48:
    push bc
    call Call_000_3380
    ld hl, $c9b4
    ld [hl], d
    dec hl
    ld [hl], e
    add sp, $02
    ld hl, sp+$00
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_3380
    add sp, $02
    ld hl, sp+$02
    ld c, [hl]
    inc hl
    ld b, [hl]
    push bc
    call Call_000_3380
    add sp, $02
    ld hl, $c530
    ld c, [hl]
    ld a, c
    bit 1, a
    jp z, Jump_01e_7b77

    call Call_01e_79fa

Jump_01e_7b77:
    ld hl, $42c8
    push hl
    call Call_000_3380
    add sp, $02
    ld hl, $8030
    push hl
    ld hl, $9020
    push hl
    call Call_01e_7a4b
    add sp, $04
    ld hl, $8040
    push hl
    ld hl, $9280
    push hl
    call Call_01e_7a4b
    add sp, $04
    ei
    ld hl, $c9b3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_000_338e
    add sp, $02
    add sp, $04
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

Jump_01e_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
