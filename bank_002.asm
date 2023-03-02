; disasSembly of "lsdj.gb"
SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

Call_002_4000:
    ld a, [$c528]
    ld hl, $c224
    add l
    ld l, a
    ld b, [hl]
    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, $03

jr_002_4010:
    ld c, [hl]
    ld a, c
    or a
    jr z, jr_002_402c

    ld a, b
    cp $80
    jr c, jr_002_4027

    add c
    bit 7, a
    jr z, jr_002_402c

    bit 7, c
    jr nz, jr_002_402c

    and $0f
    jr jr_002_402c

jr_002_4027:
    add c
    jr nc, jr_002_402c

    or $f0

jr_002_402c:
    ld [hl+], a
    dec d
    jr nz, jr_002_4010

    jp Jump_002_56f5


Call_002_4033:
    ld a, [$c8f3]
    or a
    ret z

    push de
    push hl
    ldh a, [$8f]
    and $f0
    or a
    jp z, Jump_002_409e

    bit 7, a
    jr nz, jr_002_4064

    ld hl, $c4d7
    add [hl]
    ld [hl], a
    jr nc, jr_002_404f

    inc hl
    inc [hl]

jr_002_404f:
    call Call_002_40e6
    or a
    jr z, jr_002_4062

    ldh a, [$8f]
    and $f0
    ld hl, $c4d5
    add [hl]
    ld [hl], a
    jr nc, jr_002_4062

    inc hl
    inc [hl]

jr_002_4062:
    jr jr_002_4082

jr_002_4064:
    ld hl, $c4d5
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_406e

    inc hl
    dec [hl]

jr_002_406e:
    call Call_002_422e
    or a
    jr z, jr_002_4082

    ld hl, $c4d7
    ldh a, [$8f]
    and $f0
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_4082

    inc hl
    dec [hl]

jr_002_4082:
    ld hl, $c4d7
    ld de, $c4fa
    ld a, [de]
    cp [hl]
    jr c, jr_002_409e

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_409e

    ld a, [$c4d5]
    ld [$c4fa], a
    ld a, [$c4d6]
    ld [$c4fb], a

Jump_002_409e:
jr_002_409e:
    ldh a, [$8f]
    swap a
    and $f0
    or a
    jp z, Jump_002_40e3

    bit 7, a
    jr nz, jr_002_40ba

    ld hl, $c4d7
    add [hl]
    ld [hl], a
    jr nc, jr_002_40b5

    inc hl
    inc [hl]

jr_002_40b5:
    call Call_002_40e6
    jr jr_002_40c7

jr_002_40ba:
    ld hl, $c4d7
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_40c4

    inc hl
    dec [hl]

jr_002_40c4:
    call Call_002_4132

jr_002_40c7:
    ld hl, $c4d7
    ld de, $c4fa
    ld a, [de]
    cp [hl]
    jr c, jr_002_40e3

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_40e3

    ld a, [$c4d5]
    ld [$c4fa], a
    ld a, [$c4d6]
    ld [$c4fb], a

Jump_002_40e3:
jr_002_40e3:
    pop hl
    pop de
    ret


Call_002_40e6:
    ld hl, $c4e0
    ld de, $c4d8
    ld a, [de]
    cp [hl]
    jp c, Jump_002_4109

    jr nz, jr_002_40fb

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_4109

    jr z, jr_002_4109

jr_002_40fb:
    ld a, [$c4df]
    ld [$c4d7], a
    ld a, [$c4e0]
    ld [$c4d8], a
    xor a
    ret


Jump_002_4109:
jr_002_4109:
    ld a, $01
    ret


Call_002_410c:
    ld hl, $c4d6
    ld de, $c4de
    ld a, [de]
    cp [hl]
    jp c, Jump_002_412f

    jr nz, jr_002_4121

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_412f

    jr z, jr_002_412f

jr_002_4121:
    ld a, [$c4dd]
    ld [$c4d5], a
    ld a, [$c4de]
    ld [$c4d6], a
    xor a
    ret


Jump_002_412f:
jr_002_412f:
    ld a, $01
    ret


Call_002_4132:
    ld hl, $c4d8
    ld de, $c4d6
    ld a, [de]
    cp [hl]
    ret c

    jr nz, jr_002_4142

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    ret c

jr_002_4142:
    ld a, [$c4d5]
    add $10
    ld [$c4d7], a
    ld a, [$c4d6]
    jr nc, jr_002_4150

    inc a

jr_002_4150:
    ld [$c4d8], a
    ret


Jump_002_4154:
    ld a, [$c8f3]
    bit 1, a
    ret z

    push de
    push hl
    ldh a, [$8f]
    and $f0
    or a
    jp z, Jump_002_41c0

    bit 7, a
    jr nz, jr_002_4186

    ld hl, $c4db
    add [hl]
    ld [hl], a
    jr nc, jr_002_4171

    inc hl
    inc [hl]

jr_002_4171:
    call Call_002_4208
    or a
    jr z, jr_002_4184

    ldh a, [$8f]
    and $f0
    ld hl, $c4d9
    add [hl]
    ld [hl], a
    jr nc, jr_002_4184

    inc hl
    inc [hl]

jr_002_4184:
    jr jr_002_41a4

jr_002_4186:
    ld hl, $c4d9
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_4190

    inc hl
    dec [hl]

jr_002_4190:
    call Call_002_410c
    or a
    jr z, jr_002_41a4

    ld hl, $c4db
    ldh a, [$8f]
    and $f0
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_41a4

    inc hl
    dec [hl]

jr_002_41a4:
    ld hl, $c4db
    ld de, $c4fc
    ld a, [de]
    cp [hl]
    jr c, jr_002_41c0

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_41c0

    ld a, [$c4d9]
    ld [$c4fc], a
    ld a, [$c4da]
    ld [$c4fd], a

Jump_002_41c0:
jr_002_41c0:
    ldh a, [$8f]
    swap a
    and $f0
    or a
    jp z, Jump_002_4205

    bit 7, a
    jr nz, jr_002_41dc

    ld hl, $c4db
    add [hl]
    ld [hl], a
    jr nc, jr_002_41d7

    inc hl
    inc [hl]

jr_002_41d7:
    call Call_002_4208
    jr jr_002_41e9

jr_002_41dc:
    ld hl, $c4db
    add [hl]
    cp [hl]
    ld [hl], a
    jr c, jr_002_41e6

    inc hl
    dec [hl]

jr_002_41e6:
    call Call_002_4254

jr_002_41e9:
    ld hl, $c4db
    ld de, $c4fc
    ld a, [de]
    cp [hl]
    jr c, jr_002_4205

    inc de
    inc hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_4205

    ld a, [$c4d9]
    ld [$c4fc], a
    ld a, [$c4da]
    ld [$c4fd], a

Jump_002_4205:
jr_002_4205:
    pop hl
    pop de
    ret


Call_002_4208:
    ld hl, $c4e4
    ld de, $c4dc
    ld a, [de]
    cp [hl]
    jp c, Jump_002_422b

    jr nz, jr_002_421d

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_422b

    jr z, jr_002_422b

jr_002_421d:
    ld a, [$c4e3]
    ld [$c4db], a
    ld a, [$c4e4]
    ld [$c4dc], a
    xor a
    ret


Jump_002_422b:
jr_002_422b:
    ld a, $01
    ret


Call_002_422e:
    ld hl, $c4da
    ld de, $c4e2
    ld a, [de]
    cp [hl]
    jp c, Jump_002_4251

    jr nz, jr_002_4243

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    jr c, jr_002_4251

    jr z, jr_002_4251

jr_002_4243:
    ld a, [$c4e1]
    ld [$c4d9], a
    ld a, [$c4e2]
    ld [$c4da], a
    xor a
    ret


Jump_002_4251:
jr_002_4251:
    ld a, $01
    ret


Call_002_4254:
    ld hl, $c4dc
    ld de, $c4da
    ld a, [de]
    cp [hl]
    ret c

    jr nz, jr_002_4264

    dec de
    dec hl
    ld a, [de]
    cp [hl]
    ret c

jr_002_4264:
    ld a, [$c4d9]
    add $10
    ld [$c4db], a
    ld a, [$c4da]
    jr nc, jr_002_4272

    inc a

jr_002_4272:
    ld [$c4dc], a
    ret


Call_002_4276:
    ld b, $10
    xor a

jr_002_4279:
    add hl, hl
    rla
    jr c, jr_002_4280

    cp c
    jr c, jr_002_4282

jr_002_4280:
    sub c
    inc l

jr_002_4282:
    dec b
    jr nz, jr_002_4279

    ret


    ldh a, [$8b]
    cp $03
    ret z

    ld e, a
    ld d, $00
    ld hl, $c330
    add hl, de
    ld a, [hl]
    or a
    ld hl, $c0ec
    jr nz, jr_002_429c

    ld hl, $c0e8

jr_002_429c:
    add hl, de
    ld a, [hl]
    or a
    jr nz, jr_002_42aa

    ld_long $ff8f, a
    inc a
    ld hl, $c0e8
    add hl, de
    ld [hl], a

jr_002_42aa:
    ld [$c68e], a
    ld a, [$c528]
    and $fc
    jr nz, jr_002_42cd

    ld hl, $c330
    add hl, de
    ld a, [hl]
    or a
    jr nz, jr_002_42c3

    ld hl, $c0cc
    add hl, de
    ld a, [hl]
    jr jr_002_42c6

jr_002_42c3:
    ld a, [$c692]

jr_002_42c6:
    or a
    ret z

    ld [$c68d], a
    jr jr_002_4330

jr_002_42cd:
    ld hl, $c108
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $01
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld a, [de]
    ld e, a
    xor a
    ld [$0000], a
    ei
    ld a, [$c68e]
    add e
    dec a
    cp $6c
    jr c, jr_002_42fd

    ld a, e
    and $80
    jr nz, jr_002_42fc

    ld a, $6c
    jr jr_002_42fe

jr_002_42fc:
    xor a

jr_002_42fd:
    inc a

jr_002_42fe:
    ld [$c68d], a
    jr jr_002_4330

jr_002_4303:
    ldh a, [$8b]
    add a
    ld e, a
    ld d, $00
    ld hl, $c248
    add hl, de
    ld a, [hl+]
    or [hl]
    jr z, jr_002_4318

    ld hl, $c2d0
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a

jr_002_4318:
    ld hl, $c337
    add hl, de
    ld a, [$c68f]
    di
    ld [hl+], a
    ld a, [$c690]
    ld [hl], a
    ei
    ld h, $c3
    ldh a, [$8b]
    add $4e
    ld l, a
    ld [hl], $01
    ret


jr_002_4330:
    ldh a, [$8b]
    add $30
    ld l, a
    ld h, $c3
    ld a, [hl]
    or a
    jr nz, jr_002_434d

    ld a, [$c68d]
    add $80
    ld hl, $c68e
    sub [hl]
    ld [$c690], a
    xor a
    ld [$c68f], a
    jr jr_002_436f

jr_002_434d:
    ld h, $cd
    ld a, [$c68d]
    add $27
    ld l, a
    ld e, [hl]
    ld a, [$c68e]
    add $27
    ld l, a
    ld a, e
    sub [hl]
    add $80
    ld [$c690], a
    ld h, $cd
    ld a, [$c68d]
    add $93
    ld l, a
    ld a, [hl]
    ld [$c68f], a

jr_002_436f:
    ld_long a, $ff8f
    or a
    jr z, jr_002_4303

    ld hl, $c68f
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c2d0
    ldh a, [$8b]
    add a
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c248
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ld hl, $c337
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld a, e
    sub [hl]
    ld e, a
    inc l
    ld a, d
    sbc [hl]
    ld d, a
    ldh a, [$8f]
    ld c, a
    inc c
    jr nz, jr_002_43a7

    dec c

jr_002_43a7:
    ld h, d
    ld l, e
    ld a, d
    bit 7, a
    jr nz, jr_002_43b3

    call Call_002_4276
    jr jr_002_43bc

jr_002_43b3:
    call Call_002_43ce
    call Call_002_4276
    call Call_002_43ce

jr_002_43bc:
    ld de, $c2d0
    ldh a, [$8b]
    add a
    add e
    ld e, a
    ld a, l
    di
    ld [de], a
    inc e
    ld a, h
    ld [de], a
    ei
    jp Jump_000_1c33


Call_002_43ce:
    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc l
    ret nz

    inc h
    ret


    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    ld [$0a00], sp
    nop
    inc c
    nop
    rrca
    nop
    ld [de], a
    nop
    dec d
    nop
    jr jr_002_43f2

jr_002_43f2:
    inc e
    nop
    jr nz, jr_002_43f6

jr_002_43f6:
    inc h
    nop
    jr z, jr_002_43fa

jr_002_43fa:
    dec l
    nop
    ld [hl-], a
    nop
    scf
    nop
    inc a
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld d, h
    nop
    ld e, e
    nop
    ld h, d
    nop
    ld l, c
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    add b
    nop
    adc b
    nop
    sub b
    nop
    sbc c
    nop
    and d
    nop
    xor e
    nop
    or h
    nop
    cp [hl]
    nop
    ret z

    nop
    jp nc, $dc00

    nop
    rst $20
    nop
    ld a, [c]
    nop
    db $fd
    nop
    ld [$1401], sp
    ld bc, $0120
    inc l
    ld bc, $0138
    ld b, l
    ld bc, $0152
    ld e, a
    ld bc, $016c
    ld a, d
    ld bc, $0188
    sub [hl]
    ld bc, $01a4
    or e
    ld bc, $01c2
    pop de
    ld bc, $01e0
    ldh a, [rSB]
    nop
    ld [bc], a
    db $10
    ld [bc], a
    jr nz, @+$04

    ld sp, $4202
    ld [bc], a
    ld d, e
    ld [bc], a
    ld h, h
    ld [bc], a
    db $76
    ld [bc], a
    adc b
    ld [bc], a
    sbc d
    ld [bc], a
    xor h
    ld [bc], a
    cp a
    ld [bc], a
    jp nc, $e502

    ld [bc], a
    ld hl, sp+$02
    inc c
    inc bc
    jr nz, jr_002_4479

    inc [hl]
    inc bc
    ld c, b

jr_002_4479:
    inc bc
    ld e, l
    inc bc
    ld [hl], d
    inc bc
    add a
    inc bc
    sbc h
    inc bc
    or d
    inc bc
    ret z

    inc bc
    sbc $03
    db $f4
    inc bc
    dec bc
    inc b
    ld [hl+], a
    inc b
    add hl, sp
    inc b
    ld d, b
    inc b
    ld l, b
    inc b
    add b
    inc b
    sbc b
    inc b
    or b
    inc b
    ret


    inc b
    ld [c], a
    inc b
    ei
    inc b
    inc d
    dec b
    ld l, $05
    ld c, b
    dec b
    ld h, d
    dec b
    ld a, h
    dec b
    sub a
    dec b
    or d
    dec b
    call $e805
    dec b
    inc b
    ld b, $20
    ld b, $3c
    ld b, $58
    ld b, $75
    ld b, $92
    ld b, $af
    ld b, $cc
    ld b, $ea
    ld b, $08
    rlca
    ld h, $07
    ld b, h
    rlca
    ld h, e
    rlca
    add d
    rlca
    and c
    rlca
    ret nz

    rlca
    ldh [rTAC], a
    nop
    ld [$0820], sp
    ret nz

    rst $30
    ldh [$f7], a
    nop
    ld hl, sp+$20
    ld hl, sp+$40
    ld hl, sp+$5f
    ld hl, sp+$7e
    ld hl, sp-$63
    ld hl, sp-$44
    ld hl, sp-$26
    ld hl, sp-$08
    ld hl, sp+$16
    ld sp, hl
    inc [hl]
    ld sp, hl
    ld d, c
    ld sp, hl
    ld l, [hl]
    ld sp, hl
    adc e
    ld sp, hl
    xor b
    ld sp, hl
    call nz, $e0f9
    ld sp, hl
    db $fc
    ld sp, hl
    jr @-$04

    inc sp
    ld a, [$fa4e]
    ld l, c
    ld a, [$fa84]
    sbc [hl]
    ld a, [$fab8]
    jp nc, $ecfa

    ld a, [$fb05]
    ld e, $fb
    scf
    ei
    ld d, b
    ei
    ld l, b
    ei
    add b
    ei
    sbc b
    ei
    or b
    ei
    rst $00
    ei
    sbc $fb
    push af
    ei
    inc c
    db $fc

jr_002_452a:
    ld [hl+], a
    db $fc
    jr c, jr_002_452a

    ld c, [hl]
    db $fc
    ld h, h
    db $fc
    ld a, c
    db $fc
    adc [hl]
    db $fc
    and e
    db $fc
    cp b
    db $fc
    call z, $e0fc
    db $fc
    db $f4
    db $fc
    ld [$1bfd], sp
    db $fd
    ld l, $fd
    ld b, c
    db $fd
    ld d, h
    db $fd
    ld h, [hl]
    db $fd
    ld a, b
    db $fd
    adc d
    db $fd
    sbc h
    db $fd
    xor l
    db $fd
    cp [hl]
    db $fd
    rst $08
    db $fd
    ldh [$fd], a
    ldh a, [$fd]
    nop
    cp $10
    cp $20
    cp $2f
    cp $3e
    cp $4d
    cp $5c
    cp $6a
    cp $78
    cp $86
    cp $94
    cp $a1
    cp $ae
    cp $bb
    cp $c8
    cp $d4
    cp $e0
    cp $ec
    cp $f8
    cp $03
    rst $38
    ld c, $ff
    add hl, de
    rst $38
    inc h
    rst $38
    ld l, $ff
    jr c, @+$01

    ld b, d
    rst $38
    ld c, h
    rst $38
    ld d, l
    rst $38
    ld e, [hl]
    rst $38
    ld h, a
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    sub a
    rst $38
    sbc [hl]
    rst $38
    and l
    rst $38
    xor h
    rst $38
    or d
    rst $38
    cp b
    rst $38
    cp [hl]
    rst $38
    call nz, $c9ff
    rst $38
    adc $ff
    db $d3
    rst $38
    ret c

    rst $38
    call c, $e0ff
    rst $38
    db $e4
    rst $38
    add sp, -$01
    db $eb
    rst $38
    xor $ff
    pop af
    rst $38
    db $f4
    rst $38
    or $ff
    ld hl, sp-$01
    ld a, [$fcff]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38

Call_002_45d8:
    ld hl, $c35c
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_002_6238

    ldh a, [$8b]
    add a
    ld hl, $c248
    add l
    ld l, a
    xor a
    ld [hl+], a
    ld [hl], a
    ldh a, [$8b]
    cp $02
    jr nz, jr_002_45fb

    ld a, [$c8f3]
    or a
    jr nz, jr_002_462b

jr_002_45fb:
    ldh a, [$8f]
    ld e, a
    ld d, $00
    ld hl, $43d8
    add hl, de
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ldh a, [$8b]
    ld hl, $c35f
    add l
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_461b

    sla e
    rl d
    sla e
    rl d

jr_002_461b:
    ld hl, $c2d0
    ldh a, [$8b]
    add a
    add l
    ld l, a
    di
    ld [hl], e
    inc l
    ld [hl], d
    ei
    jp Jump_000_1c33


jr_002_462b:
    ldh a, [$8f]
    ld e, a
    ld d, $00
    bit 7, a
    jr z, jr_002_461b

    dec d
    jr jr_002_461b

Call_002_4637:
Jump_002_4637:
    or a
    ret z

    ld hl, $c2e7
    ld d, [hl]
    bit 7, a
    jr nz, jr_002_464a

    add [hl]
    cp $78
    jr c, jr_002_4651

    sub $78
    jr jr_002_4651

jr_002_464a:
    add [hl]
    bit 7, a
    jr z, jr_002_4651

    add $78

jr_002_4651:
    ld [hl], a
    ld e, a
    call $5f1c
    ld a, h
    ld [$c423], a
    ld a, [$c691]
    or a
    jr nz, jr_002_4668

    ld a, d
    cp $3c
    ret nc

    ld a, e
    cp $3c
    ret c

jr_002_4668:
    di
    ld a, [$c2db]
    swap a
    or $08
    ldh [rNR42], a
    ldh a, [rNR44]
    or $80
    ldh [rNR44], a
    reti


    ld d, $00
    ldh a, [$8b]
    ld e, a
    ldh a, [$8f]
    and $e0
    jr z, jr_002_468b

    ld hl, $c204
    add hl, de
    ld [hl], $ff
    ret


jr_002_468b:
    ld hl, $c208
    add hl, de
    ld [hl], $ff
    ld hl, $c20c
    add hl, de
    ld [hl], $ff
    ld hl, $c204
    add hl, de
    ldh a, [$8f]
    and $1f
    ld [hl], a
    ld hl, $c154
    add hl, de
    ld [hl], $20
    ld hl, $c15c
    add hl, de
    ld [hl], $ff
    ld hl, $c33f
    add hl, de
    ld [hl], $00
    ld hl, $c164
    add hl, de
    ld [hl], $00
    call Call_002_5715
    call Call_002_5847
    ld hl, $c2ec
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], a
    ret


Call_002_46c7:
    ldh a, [$8b]
    ld hl, $c2f0
    add l
    ld l, a
    xor a
    ld [hl], a
    ld de, $0004
    add hl, de
    ld [hl], a
    add hl, de
    ld [hl], a
    ret


Call_002_46d8:
    ldh a, [$8b]
    or a
    jp z, Jump_002_68f7

    cp $02
    jr z, jr_002_46e8

    jp c, Jump_002_692d

    jp Jump_002_6963


jr_002_46e8:
    ldh a, [$8f]
    and $03
    swap a
    add a
    cpl
    inc a
    ld [$c2da], a
    ldh [rNR32], a
    ret


    ldh a, [$8b]
    or a
    jr z, jr_002_4704

    cp $02
    jp z, Jump_002_62f3

    jr c, jr_002_4715

    ret


jr_002_4704:
    ldh a, [$8f]
    and $0f
    swap a
    srl a
    ld [$c695], a
    ld a, $01
    ld [$c34e], a
    ret


jr_002_4715:
    ldh a, [$8f]
    and $0f
    swap a
    srl a
    ld [$c696], a
    ldh a, [$8f]
    swap a
    and $0f
    ld [$c4d4], a
    ld a, $01
    ld [$c34f], a
    ret


Call_002_472f:
    bit 0, b
    jr z, jr_002_4744

    ld h, $c2
    ld a, [$c528]
    add $30
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_002_664d

    dec [hl]
    bit 1, b
    ret z

jr_002_4744:
    ld h, $c2
    ld a, [$c528]
    add $3c
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_002_665c

    dec [hl]
    ret


Call_002_4753:
    ld hl, $c2f0
    ld c, $0d

jr_002_4758:
    dec c
    ret z

    ld a, [hl+]
    or a
    jr z, jr_002_4758

    ld b, a
    ld a, $0c
    sub c
    ld [$c528], a
    push hl
    call Call_002_472f
    pop hl
    jr jr_002_4758

    ld hl, $c218
    ldh a, [$8b]
    add l
    ld l, a
    ldh a, [$8f]
    ld [hl], a
    or a
    ret nz

    ldh a, [$8b]
    cp $03
    jr z, jr_002_4787

    ld hl, $c34e
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], h
    ret


jr_002_4787:
    ld a, [$c4fe]
    jp $5f1c


Call_002_478d:
    ld a, [$c8c3]
    cp $13
    ret nc

    add a
    ld hl, $47a2
    add l
    ld l, a
    jr nc, jr_002_479c

    inc h

jr_002_479c:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    jp hl


    nop
    nop
    ld a, c
    ld b, [hl]
    nop
    nop
    ld l, h
    ld b, a
    nop
    nop
    ret c

    ld b, [hl]
    rst $30
    ld b, [hl]
    nop
    nop
    nop
    nop
    cp e
    ld h, l
    add [hl]
    ld b, d
    ld c, $62
    daa
    ld h, [hl]
    ld c, $66
    ld h, l
    ld h, h
    ld [de], a
    ld c, b
    ld sp, $2066
    ld a, l
    ret z

    ld b, a
    ldh a, [$8b]
    or a
    jr z, jr_002_47e5

    cp $02
    jr z, jr_002_47f8

    ret nc

    ldh a, [$8f]
    and $03
    rrca
    rrca
    ld e, a
    ld [$c2dd], a
    ld a, [$c2e1]
    and $3f
    or e
    ldh [rNR21], a
    ret


jr_002_47e5:
    ldh a, [$8f]
    and $03
    rrca
    rrca
    ld e, a
    ld [$c2dc], a
    ld a, [$c2e0]
    and $3f
    or e
    ldh [rNR11], a
    ret


jr_002_47f8:
    ldh a, [$8f]
    ld e, a
    swap a
    and $0f
    jr z, jr_002_4808

    dec a
    ld [$c8c2], a
    ld [$c526], a

jr_002_4808:
    ld a, e
    and $0f
    ret z

    ld [$c8c1], a
    jp Jump_002_5742


    ldh a, [$8b]
    cp $01
    jr c, jr_002_4828

    ret z

    cp $03
    jr z, jr_002_4823

    call Call_002_4033
    jp Jump_002_4154


jr_002_4823:
    ldh a, [$8f]
    jp Jump_002_4637


jr_002_4828:
    ld hl, $c2e4
    ldh a, [$8f]
    ld e, a
    and $f0
    add [hl]
    ld [hl], a
    ld a, e
    add [hl]
    and $0f
    ld e, a
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    jp Jump_002_6013


Call_002_483f:
    ld h, $c1
    ld a, [$c8e0]
    ld l, a
    inc [hl]
    ldh a, [$8b]
    add a
    ld e, a
    ld d, $00
    ld hl, $c140
    add hl, de
    inc [hl]
    ld l, $10
    add hl, de
    inc [hl]
    ld l, $28
    add hl, de
    inc [hl]
    ret


Call_002_485a:
    ld a, $6c
    ld [$c8e0], a
    ld a, $7c
    ld [$c8de], a
    ld a, $60
    ld [$c8e2], a
    ld a, $50
    ld [$c8e4], a
    ld a, $58
    ld [$c8e6], a
    ld a, $68
    ld [$c8ea], a
    ld a, $cc
    ld [$c8ec], a
    ret


Call_002_487e:
    ld h, $c1
    ld a, [$c8e6]
    ld l, a
    ld c, [hl]
    ld h, $c1
    ld a, [$c8e4]
    ld l, a
    ld a, [hl]
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    add c
    ld l, a
    ld de, $b090
    add hl, de
    xor a
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    reti


Call_002_48ab:
Jump_002_48ab:
    xor a
    ld [$4000], a
    ld h, $c1
    ld a, [$c8e6]
    ld l, a
    ld a, [hl]
    cp $0f
    jr z, jr_002_48c5

    inc a
    ld [hl], a
    push hl
    call Call_002_487e
    pop hl
    ld a, e
    or a
    jr nz, jr_002_48ca

jr_002_48c5:
    xor a
    ld [hl], a
    call Call_002_487e

jr_002_48ca:
    ld h, $c1
    ld a, [$c8e2]
    ld l, a
    ld [hl], e
    ret


Call_002_48d2:
    ld hl, $c170
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    cp $ff
    ret nz

    push hl
    ld a, $00
    ld [$4000], a
    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $b290
    add hl, de
    ld d, $00
    ldh a, [$8b]
    ld e, a
    add hl, de
    ld d, h
    ld e, l
    ld c, $00
    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a

jr_002_4904:
    dec [hl]
    ld a, [hl]
    cp $ff
    jr z, jr_002_493e

    ld a, e
    sub $04
    jr nc, jr_002_4910

    dec d

jr_002_4910:
    ld e, a
    ld a, $0a
    di
    ld [$0000], a
    ld a, [de]
    cp $ff
    ld a, $00
    ld [$0000], a
    ei
    jr z, jr_002_4925

    inc c
    jr jr_002_4904

jr_002_4925:
    ld a, c
    or a
    jr nz, jr_002_4937

    ld hl, $c0e0
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], $00
    call Call_002_5f28
    pop hl
    ret


jr_002_4937:
    ld a, e
    add $04
    jr nc, jr_002_493d

    inc d

jr_002_493d:
    ld e, a

jr_002_493e:
    inc [hl]
    pop hl
    ld a, $0a
    di
    ld [$0000], a
    ld a, [de]
    ld [hl], a
    xor a
    ld [$0000], a
    reti


Call_002_494d:
Jump_002_494d:
    ld hl, $c0f0
    ld d, $00
    ldh a, [$8b]
    ld e, a
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_002_4b5b

    xor a
    ld [hl], a
    ld hl, $c365
    add hl, de
    ld a, [hl]
    ld [$c8c3], a
    ld hl, $c0cc
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_002_4b45

    ld hl, $c420
    add hl, de
    ld [hl], a
    ld a, e
    cp $03
    jr nz, jr_002_49a1

    ld a, [$c0cf]
    or a
    jr nz, jr_002_4981

    ld a, [$c0eb]

jr_002_4981:
    dec a
    ld [$c4fe], a
    ld [$c2e7], a
    xor a
    ld [$c8d9], a
    ld a, [$c8c3]
    cp $0f
    jp nz, Jump_002_4a30

    xor a
    ld [$c8c3], a
    ld a, [$c36e]
    call Call_002_4637
    jp Jump_002_4a30


jr_002_49a1:
    ld hl, $c0c8
    add hl, de
    ld a, [hl]
    cp $ff
    jr z, jr_002_49b7

    xor a
    ld hl, $c3f9
    add hl, de
    ld [hl], a
    ld hl, $c2d0
    add hl, de
    add hl, de
    ld [hl+], a
    ld [hl], a

jr_002_49b7:
    ld a, e
    cp $02
    jr nz, jr_002_49c3

    ld a, [$c8f3]
    or a
    jp nz, Jump_002_4b64

jr_002_49c3:
    ldh a, [$8b]
    add a
    ld hl, $c356
    add l
    ld l, a
    ldh a, [$8b]
    ld bc, $c330
    add c
    ld c, a
    ld a, [bc]
    or a
    jr nz, jr_002_49e0

    ld a, $28
    ld [hl+], a
    ld c, a
    ld a, $cf
    ld [hl], a
    ld b, a
    jr jr_002_4a01

jr_002_49e0:
    ld a, $a8
    ld [hl+], a
    ld c, a
    ld a, $09
    ld [hl], a
    ld b, a
    ldh a, [$8b]
    ld hl, $c0cc
    add l
    ld l, a
    push hl
    ld e, [hl]
    ld a, e
    ld [$c692], a
    dec e
    ld d, $00
    ld hl, $cd28
    add hl, de
    ld a, [hl]
    ld d, a
    pop hl
    inc a
    ld [hl], a

jr_002_4a01:
    ld a, [$c8c3]
    cp $0a
    jr z, jr_002_4a30

    ld hl, $c0cc
    ldh a, [$8b]
    add l
    ld l, a
    ldh a, [$8b]
    cp $01
    jr nz, jr_002_4a1a

    ld a, [$c4d4]
    jr jr_002_4a1b

jr_002_4a1a:
    xor a

jr_002_4a1b:
    add [hl]
    dec a
    add a
    add c
    jr nc, jr_002_4a22

    inc b

jr_002_4a22:
    ld c, a
    ldh a, [$8b]
    add a
    ld hl, $c0f4
    add l
    ld l, a
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a

Jump_002_4a30:
jr_002_4a30:
    ld a, [$cb65]
    cp $05
    jr z, jr_002_4a43

    ld hl, $c0c8
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    cp $ff
    jr z, jr_002_4aa3

jr_002_4a43:
    ldh a, [$8b]
    add a
    add $15
    ld l, a
    ld h, $c3
    ld [hl], $00
    ld hl, $c8c3
    ld a, [hl]
    cp $06
    jr nz, jr_002_4a6c

    ldh a, [$8b]
    cp $02
    jr nz, jr_002_4a70

    ld a, [$c8f3]
    or a
    jr nz, jr_002_4a7b

    ld [hl], a
    ld hl, $c693
    ld a, [$c36d]
    add [hl]
    ld [hl], a
    jr jr_002_4a70

jr_002_4a6c:
    cp $05
    jr z, jr_002_4a75

jr_002_4a70:
    call Call_002_56f5
    jr jr_002_4a7b

jr_002_4a75:
    push hl
    call Call_002_7c4a
    pop hl
    ld [hl], e

jr_002_4a7b:
    call Call_002_5fcf
    ld a, [$c8c3]
    cp $0c
    jr nz, jr_002_4a93

    xor a
    ld [$c8c3], a
    ld hl, $c36b
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    jr jr_002_4a9b

jr_002_4a93:
    ldh a, [$8b]
    ld hl, $c352
    add l
    ld l, a
    ld a, [hl]

jr_002_4a9b:
    call Call_002_6171
    call Call_002_46c7
    jr jr_002_4af7

jr_002_4aa3:
    ldh a, [$8b]
    or a
    jr z, jr_002_4ae6

    cp $02
    jr z, jr_002_4ac1

    jr nc, jr_002_4ad4

    ld a, [$c0f6]
    ldh [rNR23], a
    ld a, [$c2e1]
    and $40
    ld d, a
    ld a, [$c0f7]
    add d
    ldh [rNR24], a
    jr jr_002_4af7

jr_002_4ac1:
    ld a, [$c8f3]
    or a
    call nz, Call_002_6099
    ld a, [$c0f8]
    ldh [rNR33], a
    ld a, [$c0f9]
    ldh [rNR34], a
    jr jr_002_4af7

jr_002_4ad4:
    ld a, [$c0cf]
    ld [$c0eb], a
    ld a, [$c2e7]
    call $5f1c
    xor a
    ld [$c8f1], a
    jr jr_002_4b45

jr_002_4ae6:
    ld a, [$c0f4]
    ldh [rNR13], a
    ld a, [$c2e0]
    and $40
    ld d, a
    ld a, [$c0f5]
    add d
    ldh [rNR14], a

jr_002_4af7:
    ldh a, [$8b]
    ld e, a
    ld d, $00
    ld a, [$c8c3]
    cp $0a
    jr z, jr_002_4b40

    ld hl, $c337
    add hl, de
    add hl, de
    xor a
    ld [hl+], a
    ld a, $80
    ld [hl], a
    ld hl, $c330
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_002_4b2e

    ld a, [$c692]
    ld hl, $cd94
    dec a
    add l
    jr nc, jr_002_4b20

    inc h

jr_002_4b20:
    ld l, a
    ld a, [hl]
    ld c, a
    ld hl, $c337
    add hl, de
    add hl, de
    ld [hl], c
    ld hl, $c34e
    add hl, de
    inc [hl]

jr_002_4b2e:
    ld hl, $c0cc
    add hl, de
    ld a, [hl]
    ld hl, $c0e8
    add hl, de
    ld [hl], a
    ld hl, $c0ec
    add hl, de
    ld a, [$c692]
    ld [hl], a

jr_002_4b40:
    ld hl, $c34e
    add hl, de
    ld [hl], h

Jump_002_4b45:
jr_002_4b45:
    ld a, [$c8c3]
    or a
    jr z, jr_002_4b5b

    ld hl, $c36b
    ldh a, [$8b]
    ld [$c528], a
    add l
    ld l, a
    ld a, [hl]
    ldh [$8f], a
    call Call_002_478d

Jump_002_4b5b:
jr_002_4b5b:
    ld hl, $c160
    ldh a, [$8b]
    add l
    ld l, a
    dec [hl]
    ret


Jump_002_4b64:
    ld a, [$c4f7]
    ld hl, $c4f5
    cp [hl]
    jr z, jr_002_4b75

    ld [hl], a
    ld hl, $c8f3
    ld a, [hl]
    and $fe
    ld [hl], a

jr_002_4b75:
    ld a, [$c4f8]
    ld hl, $c4f6
    cp [hl]
    jp z, Jump_002_4a30

    ld [hl], a
    ld hl, $c8f3
    ld a, [hl]
    and $fd
    ld [hl], a
    jp Jump_002_4a30


Call_002_4b8a:
Jump_002_4b8a:
    ld hl, $c170
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    and $7f
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld de, $a880
    add hl, de
    ld d, $c1
    ld a, [$c8de]
    ld e, a
    ld a, [de]
    add l
    ld l, a
    ld a, $01
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    ei
    ld hl, $c3fc
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ret


Call_002_4bc5:
    ld h, $c0
    ld a, [$c8ec]
    ld l, a
    ld a, [hl]
    or a
    ret z

    ld e, a
    ldh a, [$8b]
    ld hl, $c333
    add l
    ld l, a
    ld a, [hl]
    or a
    ret nz

    push de
    ld a, [$c4d3]
    cp $03
    jr z, jr_002_4be9

    cp $04
    jr z, jr_002_4be9

    xor a
    ld e, a
    jr jr_002_4bf1

jr_002_4be9:
    ld hl, $c3fc
    ldh a, [$8b]
    add l
    ld l, a
    ld e, [hl]

jr_002_4bf1:
    ldh a, [$8b]
    cp $03
    jr z, jr_002_4bfd

    ld a, [$c445]
    add e
    jr jr_002_4bfe

jr_002_4bfd:
    ld a, e

jr_002_4bfe:
    or a
    pop de
    ret z

    add e
    ld e, a
    ldh a, [$8b]
    cp $03
    ld a, e
    jr z, jr_002_4c1d

jr_002_4c0a:
    bit 7, a
    jr nz, jr_002_4c11

    or a
    jr nz, jr_002_4c15

jr_002_4c11:
    add $0c
    jr jr_002_4c0a

jr_002_4c15:
    cp $6d
    jr c, jr_002_4c1d

    sub $0c
    jr jr_002_4c15

jr_002_4c1d:
    ld e, a
    ld h, $c0
    ld a, [$c8ec]
    ld l, a
    ld [hl], e
    ret


Call_002_4c26:
    ld c, a
    ldh a, [$8b]
    add a
    ld e, a
    ld d, $00
    ld hl, $c140
    add hl, de
    ld a, [hl]
    add c
    ld [hl], a
    ld hl, $c110
    add hl, de
    ld a, [hl]
    add c
    ld [hl], a
    ld l, $28
    add hl, de
    ld a, [hl]
    add c
    ld [hl], a
    ret


Call_002_4c42:
    ld hl, $c0e0
    ld e, $08

jr_002_4c47:
    ld a, [hl+]
    or a
    ret nz

    dec e
    jr nz, jr_002_4c47

    ret


Call_002_4c4e:
    call Call_002_6abf
    ld h, $c2
    ldh a, [$8b]
    add $fc
    ld l, a
    ld [hl], $ff
    ld a, h
    ld [$c4ce], a
    ld hl, $c0e4
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], $00
    ret


Call_002_4c68:
    ld a, $03
    ld [$4000], a
    ldh a, [$8b]
    add a
    ld hl, $c140
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    di
    ld [$0000], a
    ld c, [hl]
    xor a
    ld [$0000], a
    ei
    ld hl, $c0c8
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], c
    ld a, c
    cp $ff
    ret z

    ldh a, [$8b]
    ld hl, $c210
    add l
    ld l, a
    ld [hl], c
    ld a, c
    jp Jump_002_58b4


Call_002_4c9c:
    ld hl, $c0e0
    ld bc, $c2fc
    ld a, $03
    ld e, a

jr_002_4ca5:
    ld a, [hl]
    or a
    jr nz, jr_002_4cb6

    ld a, [bc]
    cp $ff
    jr z, jr_002_4cb6

    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], $01
    pop hl

jr_002_4cb6:
    ld a, e
    or a
    ret z

    dec a
    ld e, a
    inc hl
    inc bc
    jr jr_002_4ca5

Call_002_4cbf:
    ld h, $c1
    ld a, [$c8de]
    ld l, a
    inc [hl]
    call Call_002_5e46
    ld a, e
    cp $ff
    jr z, jr_002_4cec

    ld h, $c1
    ld a, [$c8ea]
    ld l, a
    ld [hl], e
    ld h, $c1
    ld a, [$c8de]
    ld l, a
    ld a, [hl]
    cp $10
    jr z, jr_002_4cec

    ld hl, $c300
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jp z, Jump_002_4d6b

jr_002_4cec:
    ld hl, $c100
    ldh a, [$8b]
    add l
    ld l, a
    ld e, [hl]
    ld [hl], $00
    ld h, $c1
    ld a, [$c8de]
    ld l, a
    ld [hl], e
    ld hl, $c300
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a
    call Call_002_7791
    ld a, e
    or a
    jr z, jr_002_4d68

    ld a, [$c4d3]
    cp $04
    jr nz, jr_002_4d2d

    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    inc [hl]

jr_002_4d1c:
    call Call_002_5e77
    ld hl, $c170
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ld a, e
    cp $ff
    call z, Call_002_48d2

jr_002_4d2d:
    call Call_002_5e46
    ld h, $c1
    ld a, [$c8ea]
    ld l, a
    ld [hl], e
    ld a, e
    cp $ff
    jr nz, jr_002_4d54

    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_4d5f

    ld a, [$c529]
    or a
    jr nz, jr_002_4d51

    ld [hl], $00
    jr jr_002_4d52

jr_002_4d51:
    dec [hl]

jr_002_4d52:
    jr jr_002_4d1c

jr_002_4d54:
    ld a, e
    cp $ff
    jr nz, jr_002_4d68

    ld a, [$c4ce]
    or a
    jr z, jr_002_4d68

jr_002_4d5f:
    ld hl, $c0e0
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a

jr_002_4d68:
    call Call_002_4e69

Jump_002_4d6b:
    call Call_002_5809
    jp Jump_002_4b8a


Call_002_4d71:
    ld a, $02
    ldh [$8b], a
    ld a, [$c0e2]
    or a
    jr z, jr_002_4d88

    ld hl, $c8f3
    ld a, [hl+]
    ld [hl], a
    call Call_002_494d
    ld hl, $c8f3
    ld a, [hl+]
    ld [hl], a

jr_002_4d88:
    xor a
    ldh [$8b], a
    ld a, [$c0e0]
    or a
    call nz, Call_002_494d
    ld a, $01
    ldh [$8b], a
    ld a, [$c0e1]
    or a
    call nz, Call_002_494d
    ld a, [$c0e3]
    or a
    ret z

    ld a, $03
    ldh [$8b], a
    jp Jump_002_494d


Call_002_4da9:
    ld hl, $c2fc
    ldh a, [$8b]
    add l
    ld l, a
    ld e, [hl]
    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    call Call_002_5e77

jr_002_4dbc:
    ld a, e
    cp $ff
    jr nz, jr_002_4dd2

    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_4dd2

    dec [hl]
    call Call_002_5e77
    jr jr_002_4dbc

jr_002_4dd2:
    ld hl, $c170
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ld a, e
    cp $ff
    jr nz, jr_002_4de8

    ld hl, $c0e0
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a

jr_002_4de8:
    call Call_002_5e46
    ld h, $c1
    ld a, [$c8ea]
    ld l, a
    ld [hl], e
    ld hl, $c2fc
    ldh a, [$8b]
    add l
    ld l, a
    ld a, $ff
    ld [hl], a
    ld a, e
    cp $ff
    jp nz, Jump_002_4e69

    ld hl, $c0e0
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a
    ld hl, $c0e8
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a
    jp Jump_002_5f28


Call_002_4e17:
    and $1f
    ld e, a
    ld h, $c1
    ld a, [$c8e4]
    ld l, a
    ld [hl], e
    ld h, $c1
    ld a, [$c8e6]
    ld l, a
    ld [hl], $ff
    ret


Call_002_4e2a:
    ld hl, sp+$03
    ld e, [hl]
    dec hl
    ldh a, [$8b]
    sla a
    add [hl]
    swap a
    ld d, a
    ld hl, $c8e8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    add d
    ld d, a
    ld hl, $c180
    ld a, l
    add d
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_4e65

    cp $ff
    jr nz, jr_002_4e53

    ld a, e
    and $f0
    swap a
    ld [hl], a

jr_002_4e53:
    dec [hl]
    ld a, d
    and $10
    sla a
    sla a
    sla a
    ld d, a
    ld a, e
    and $0f
    or d
    jp Jump_002_5441


jr_002_4e65:
    dec [hl]
    ld e, $00
    ret


Call_002_4e69:
Jump_002_4e69:
    ld a, [$cb6a]
    or a
    ret z

    ld a, $fd
    ld [$cbdb], a
    ret


Call_002_4e74:
    ldh a, [$8b]
    ld e, a
    ld d, $00
    ld hl, $c0e0
    add hl, de
    xor a
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    ld [hl], a
    ld hl, $c2f0
    add hl, de
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    ld [hl], a
    inc l
    inc l
    inc l
    inc l
    ld [hl], a
    ld hl, $c0e8
    add hl, de
    ld [hl], a
    ld hl, $c0f0
    add hl, de
    ld [hl], a
    ld hl, $c304
    add hl, de
    ld [hl], a
    ret


Call_002_4ea3:
    ld a, $01
    ld [$c4ce], a
    xor a
    ld [$c4cf], a
    ld hl, $c954
    ld [hl+], a
    ld [hl], a
    ld hl, $c0e8
    call Call_002_4f01
    ld hl, $c160
    call Call_002_4efd
    ld hl, $c178
    call Call_002_4f01
    ld hl, $c0fc
    call Call_002_4f01
    ld hl, $c214
    call Call_002_4f01
    ld hl, $c2d0
    call Call_002_4efd
    ld hl, $c128
    call Call_002_4ef9
    ld hl, $c2f0
    call Call_002_4ef9
    ld hl, $c158
    dec a
    call Call_002_4efd
    ld hl, $c208
    call Call_002_4efd
    ld hl, $c204
    call Call_002_4f01
    ld hl, $c16c
    jr jr_002_4f01

Call_002_4ef9:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Call_002_4efd:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Call_002_4f01:
jr_002_4f01:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_002_4f06:
    ldh a, [$8b]
    ld e, a
    ld d, $00
    ld hl, $c343
    add hl, de
    ld [hl], d
    ld hl, $c218
    add hl, de
    ld a, [hl]
    or a
    ret z

    push hl
    ld hl, $c34e
    add hl, de
    ld [hl], a
    ld hl, $c21c
    add hl, de
    ld a, [hl]
    inc [hl]
    pop hl
    cp $01
    jr z, jr_002_4f2d

    cp $02
    jr z, jr_002_4f39

    ret


jr_002_4f2d:
    ld a, [hl]
    swap a
    and $0f
    ld hl, $c343
    add hl, de
    add [hl]
    ld [hl], a
    ret


jr_002_4f39:
    ld a, [hl]
    and $0f
    jr z, jr_002_4f47

    ld hl, $c343
    add hl, de
    add [hl]
    ld [hl], a
    xor a
    jr jr_002_4f48

jr_002_4f47:
    inc a

jr_002_4f48:
    ld hl, $c21c
    add hl, de
    ld [hl], a
    ret


Jump_002_4f4e:
    ldh a, [$8b]
    cp $01
    jr z, jr_002_4f7b

    jr c, jr_002_4f6c

    ld a, [$c8f3]
    or a
    jp nz, Jump_000_066a

    ld a, [$c361]
    or a
    ret z

    call Call_000_1a5e
    ld hl, $c350
    ld a, [hl]
    or e
    ld [hl], a
    ret


jr_002_4f6c:
    ld a, [$c35f]
    or a
    ret z

    call Call_000_195d
    ld hl, $c34e
    ld a, [hl]
    or e
    ld [hl], a
    ret


jr_002_4f7b:
    ld a, [$c360]
    or a
    ret z

    call Call_000_19dd
    ld hl, $c34f
    ld a, [hl]
    or e
    ld [hl], a
    ret


Call_002_4f8a:
    ld a, $01
    ld [$4000], a
    ldh a, [$8b]
    or a
    jr z, jr_002_4fad

    cp $02
    jr z, jr_002_4fd9

    jr c, jr_002_4fc3

    ld hl, $c10e
    call Call_002_5006
    ld hl, $c8f1
    ld a, [hl]
    cp e
    ret z

    ld [hl], e
    sub e
    cpl
    inc a
    jp Jump_002_4637


jr_002_4fad:
    ld hl, $c108
    call Call_002_5006
    ld hl, $c347
    ld [hl], e
    ld hl, $c34b
    ld a, e
    cp [hl]
    ret z

    ld [hl], a
    ld a, h
    ld [$c34e], a
    ret


jr_002_4fc3:
    ld hl, $c10a
    call Call_002_5006
    ld hl, $c348
    ld [hl], e
    ld hl, $c34c
    ld a, e
    cp [hl]
    ret z

    ld [hl], a
    ld a, h
    ld [$c34f], a
    ret


jr_002_4fd9:
    ld hl, $c10c
    call Call_002_5006
    ld a, [$c8f3]
    or a
    jr nz, jr_002_4ff5

    ld hl, $c349
    ld [hl], e
    ld hl, $c34d
    ld a, e
    cp [hl]
    ret z

    ld [hl], a
    ld a, h
    ld [$c350], a
    ret


jr_002_4ff5:
    ld a, e
    or a
    ret z

    ld hl, $c0f9
    bit 7, a
    jr z, jr_002_5000

    dec [hl]

jr_002_5000:
    dec l
    add [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


Call_002_5006:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    ld bc, $0000
    di
    ld [bc], a
    ld e, [hl]
    xor a
    ld [bc], a
    reti


Call_002_5014:
Jump_002_5014:
    ldh a, [$8b]
    ld e, a
    ld d, $00
    ld hl, $c8c9
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_002_5023

    dec [hl]
    ret


jr_002_5023:
    ld hl, $c8c5
    add hl, de
    ld a, [hl]
    ld hl, $c8c9
    add hl, de
    ld [hl], a
    ld a, e
    cp $03
    jr z, jr_002_5038

    call Call_002_4f06
    jp Jump_002_4f4e


jr_002_5038:
    call Call_002_6809
    jp Jump_002_67a5


Call_002_503e:
    call Call_000_33fc
    ld d, $0f
    push de
    call Call_000_375b
    pop af
    ret


Call_002_5049:
    ld hl, $c8e0
    inc [hl]
    ld hl, $c8de
    inc [hl]
    ld hl, $c8e2
    inc [hl]
    ld hl, $c8e4
    inc [hl]
    ld hl, $c8e6
    inc [hl]
    ld hl, $c8ea
    inc [hl]
    ld hl, $c8ec
    inc [hl]
    ret


Call_002_5066:
    ld hl, $c110
    ld a, $02
    ld [$4000], a
    call Call_002_511b
    ld hl, $c365
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ld a, e
    or a
    ret z

    ld c, e
    ld hl, $c128
    call Call_002_511b
    ld hl, $c36b
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ld e, c
    ld a, c
    cp $08
    ret z

    cp $13
    jp z, Jump_002_7360

    ld hl, $c371
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], e
    ld bc, $c36b
    ldh a, [$8b]
    add c
    ld c, a
    ld a, l
    add $44
    ld l, a
    ld a, [bc]
    ld [hl], a
    ret


Call_002_50ab:
    ld hl, $c118
    call Call_002_511b
    ld a, e
    ld [$c369], a
    or a
    ret z

    ld c, e
    ld hl, $c130
    call Call_002_511b
    ld hl, $c36f
    ld [hl], e
    ld e, c
    ld a, c
    cp $08
    ret z

    cp $13
    jp z, Jump_002_736f

    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    ld hl, $c375
    add l
    ld l, a
    ld [hl], e
    ld a, l
    add $44
    ld l, a
    ld a, [$c36f]
    ld [hl], a
    ret


Call_002_50e3:
    ld hl, $c120
    call Call_002_511b
    ld a, e
    ld [$c36a], a
    or a
    ret z

    ld c, e
    ld hl, $c138
    call Call_002_511b
    ld hl, $c370
    ld [hl], e
    ld e, c
    ld a, c
    cp $08
    ret z

    cp $13
    jp z, Jump_002_7391

    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    ld hl, $c395
    add l
    ld l, a
    ld [hl], e
    ld a, l
    add $44
    ld l, a
    ld a, [$c370]
    ld [hl], a
    ret


Call_002_511b:
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    reti


Call_002_512f:
    ld h, $c3
    ld a, [$c8fa]
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_5150

    ld a, $40
    ld [$c8f9], a
    ld hl, $c210
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    add $50
    ld hl, $c8e8
    ld [hl+], a
    ld [hl], $c2
    jr jr_002_515f

jr_002_5150:
    ld a, $04
    ld [$c8f9], a
    ldh a, [$8b]
    add $08
    ld hl, $c8e8
    ld [hl+], a
    ld [hl], $c2

jr_002_515f:
    ld h, $c0
    ld a, [$c8ee]
    ld l, a
    ld a, [hl]
    cp $ff
    jp z, Jump_002_51f3

    dec [hl]
    or a
    jp nz, Jump_002_51f3

    ld d, $00

jr_002_5172:
    ldh a, [$8b]
    add a
    ld hl, $c0bc
    add l
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $00
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    ei
    ld a, e
    and $0f
    jr z, jr_002_51f3

    cp $0f
    jr nz, jr_002_51b9

    ld a, d
    or a
    jr nz, jr_002_51b9

    inc d
    ld h, $c0
    ld a, [$c8ee]
    ld l, a
    ld [hl], $00
    ld a, e
    swap a
    and $0f
    ld e, a
    ldh a, [$8b]
    add a
    ld hl, $c0bc
    add l
    ld l, a
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    jr jr_002_5172

jr_002_51b9:
    ld h, $c0
    ld a, [$c8ee]
    ld l, a
    ld a, e
    and $0f
    dec a
    ld [hl], a
    ld a, e
    and $f0
    ld e, a
    ldh a, [$8b]
    add a
    ld hl, $c0bc
    add l
    ld l, a
    ld a, [hl]
    and $0f
    cp $0f
    jr z, jr_002_51da

    inc [hl]
    jr jr_002_51de

jr_002_51da:
    ld a, [hl]
    and $f0
    ld [hl], a

jr_002_51de:
    ldh a, [$8b]
    cp $02
    ld a, e
    jr nz, jr_002_51ee

    swap a
    ldh [$8f], a
    call Call_002_46d8
    jr jr_002_51f3

jr_002_51ee:
    ldh [$8f], a
    call Call_002_7e73

Jump_002_51f3:
jr_002_51f3:
    ld h, $c3
    ld a, [$c8fa]
    ld l, a
    ld a, [hl]
    cp $ff
    jp z, Jump_002_5307

    ld h, $c1
    ld a, [$c8e2]
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_002_5215

    ld h, $c1
    ld a, [$c8e4]
    ld l, a
    ld a, [hl]
    cp $20
    jp nz, Jump_002_5307

jr_002_5215:
    call Call_002_55e5
    call Call_002_5621
    ld a, $01
    ld [$4000], a
    xor a
    ld [$c8f6], a

jr_002_5224:
    call Call_002_50ab
    ld a, e
    or a
    jr z, jr_002_526d

    cp $08
    jp nz, Jump_002_5241

    ld hl, $c8f6
    ld a, [hl]
    or a
    jr nz, jr_002_526d

    inc [hl]
    call Call_002_55b9
    ld a, e
    or a
    jr nz, jr_002_5224

    jr jr_002_526d

Jump_002_5241:
    cp $02
    jr nz, jr_002_5252

    ld e, $00
    push de
    call Call_002_7284
    ld a, e
    pop de
    or a
    jr nz, jr_002_5224

    jr jr_002_526d

jr_002_5252:
    cp $03
    jr nz, jr_002_5263

    ld hl, $c218
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [$c36f]
    ld [hl], a
    jr jr_002_526d

jr_002_5263:
    cp $07
    jr nz, jr_002_526d

    ld a, [$c36f]
    call Call_002_4e17

jr_002_526d:
    ld de, $c8e8
    ld hl, $c8f9
    ld a, [de]
    add [hl]
    ld [de], a
    xor a
    ld [$c8f6], a

jr_002_527a:
    call Call_002_50e3
    ld a, e
    or a
    jr z, jr_002_52c3

    cp $08
    jp nz, Jump_002_5297

    ld hl, $c8f6
    ld a, [hl]
    or a
    jr nz, jr_002_52c3

    inc [hl]
    call Call_002_55ce
    ld a, e
    or a
    jr nz, jr_002_527a

    jr jr_002_52c3

Jump_002_5297:
    cp $02
    jr nz, jr_002_52a8

    ld e, $01
    push de
    call Call_002_7284
    ld a, e
    pop de
    or a
    jr nz, jr_002_527a

    jr jr_002_52c3

jr_002_52a8:
    cp $03
    jr nz, jr_002_52b9

    ld hl, $c218
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [$c370]
    ld [hl], a
    jr jr_002_52c3

jr_002_52b9:
    cp $07
    jr nz, jr_002_52c3

    ld a, [$c370]
    call Call_002_4e17

jr_002_52c3:
    ld de, $c8e8
    ld hl, $c8f9
    ld a, [de]
    sub [hl]
    ld [de], a
    ld a, [$c369]
    cp $0a
    call nz, Call_002_4f8a
    call Call_002_56ab
    ld a, [$c369]
    or a
    jr z, jr_002_52ef

    ld [$c8c3], a
    ldh a, [$8b]
    or $04
    ld [$c528], a
    ld a, [$c36f]
    ldh [$8f], a
    call Call_002_478d

jr_002_52ef:
    ld a, [$c36a]
    or a
    jr z, jr_002_5307

    ld [$c8c3], a
    ldh a, [$8b]
    or $08
    ld [$c528], a
    ld a, [$c370]
    ldh [$8f], a
    call Call_002_478d

Jump_002_5307:
jr_002_5307:
    ld h, $c1
    ld a, [$c8e2]
    ld l, a
    dec [hl]
    ret


Call_002_530f:
    ld a, [$c0e2]
    or a
    jr z, jr_002_535e

    ld a, $02
    ldh [$8b], a
    ld a, [$c206]
    cp $ff
    jr z, jr_002_533c

    ld a, $c6
    ld [$c8ee], a
    ld a, $66
    ld [$c8e2], a
    ld a, $56
    ld [$c8e4], a
    ld a, $5e
    ld [$c8e6], a
    ld a, $41
    ld [$c8fa], a
    call Call_002_512f

jr_002_533c:
    call Call_002_5014
    ld a, [$c8f3]
    or a
    jr nz, jr_002_535e

    ld hl, $c350
    or [hl]
    jr z, jr_002_535e

    xor a
    ld [hl], a
    ld a, [$c345]
    ld hl, $c349
    add [hl]
    ld [$c176], a
    ld a, [$c3fb]
    or a
    call z, Call_000_1bf4

jr_002_535e:
    ld a, [$c0e0]
    or a
    jr z, jr_002_53a6

    xor a
    ldh [$8b], a
    ld a, [$c204]
    cp $ff
    jr z, jr_002_538a

    ld a, $c4
    ld [$c8ee], a
    ld a, $64
    ld [$c8e2], a
    ld a, $54
    ld [$c8e4], a
    ld a, $5c
    ld [$c8e6], a
    ld a, $3f
    ld [$c8fa], a
    call Call_002_512f

jr_002_538a:
    call Call_002_5014
    ld hl, $c34e
    or [hl]
    jr z, jr_002_53a6

    xor a
    ld [hl], a
    ld a, [$c343]
    ld hl, $c347
    add [hl]
    ld [$c174], a
    ld a, [$c3f9]
    or a
    call z, Call_000_1b5e

jr_002_53a6:
    ld a, [$c0e1]
    or a
    jr z, jr_002_53f3

    ld a, $01
    ldh [$8b], a
    ld a, [$c205]
    cp $ff
    jr z, jr_002_53d3

    ld a, $c5
    ld [$c8ee], a
    ld a, $65
    ld [$c8e2], a
    ld a, $55
    ld [$c8e4], a
    ld a, $5d
    ld [$c8e6], a
    ld a, $40
    ld [$c8fa], a
    call Call_002_512f

jr_002_53d3:
    call Call_002_5014
    ld hl, $c34f
    or [hl]
    jr z, jr_002_53f3

    xor a
    ld [hl], a
    ld a, [$c344]
    ld hl, $c348
    add [hl]
    ld hl, $c4d4
    add [hl]
    ld [$c175], a
    ld a, [$c3fa]
    or a
    call z, Call_000_1bad

jr_002_53f3:
    ld a, [$c0e3]
    or a
    ret z

    ld a, $03
    ldh [$8b], a
    ld a, [$c207]
    cp $ff
    jp z, Jump_002_5014

    ld a, $c7
    ld [$c8ee], a
    ld a, $67
    ld [$c8e2], a
    ld a, $57
    ld [$c8e4], a
    ld a, $5f
    ld [$c8e6], a
    ld a, $42
    ld [$c8fa], a
    call Call_002_512f
    jp Jump_002_5014


Call_002_5423:
    ld hl, $c110
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld h, $c0
    ld a, [$c8ec]
    ld l, a
    ld a, $0a
    di
    ld [$0000], a
    ld a, [de]
    ld [hl], a
    xor a
    ld [$0000], a
    reti


Call_002_5441:
Jump_002_5441:
    bit 7, a
    jr nz, jr_002_5476

    ld e, a
    ld hl, $c8e8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp e
    jr nz, jr_002_5453

    ld e, $00
    ret


jr_002_5453:
    ld [hl], e
    ldh a, [$8b]
    add a
    ld c, a
    ld b, $00
    ld hl, $c108
    add hl, bc
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    ld l, $18
    add hl, bc
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    ld l, $30
    add hl, bc
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    ld e, $01
    ret


jr_002_5476:
    and $0f
    ld e, a
    ld hl, $c8e8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp e
    jr nz, jr_002_5486

    ld e, $00
    ret


jr_002_5486:
    ld [hl], e
    ldh a, [$8b]
    add a
    ld c, a
    ld b, $00
    ld hl, $c120
    add hl, bc
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    ld l, $38
    add hl, bc
    ld a, [hl]
    and $f0
    or e
    ld [hl], a
    ld e, $01
    ret


Call_002_54a1:
    call Call_002_485a
    ld a, [$c0e0]
    or a
    jr z, jr_002_54b0

    xor a
    ldh [$8b], a
    call Call_002_74e8

jr_002_54b0:
    call Call_002_5049
    ld a, [$c0e1]
    or a
    jr z, jr_002_54c0

    ld a, $01
    ldh [$8b], a
    call Call_002_74e8

jr_002_54c0:
    call Call_002_5049
    ld a, [$c0e2]
    or a
    jr z, jr_002_54d0

    ld a, $02
    ldh [$8b], a
    call Call_002_74e8

jr_002_54d0:
    call Call_002_5049
    ld a, [$c0e3]
    or a
    jr z, jr_002_54e0

    ld a, $03
    ldh [$8b], a
    call Call_002_74e8

jr_002_54e0:
    ld hl, $c0e4
    ld a, [hl+]
    or [hl]
    inc l
    or [hl]
    inc l
    or [hl]
    ret z

    call Call_002_485a
    ld a, [$c0e4]
    or a
    jr z, jr_002_54fc

    xor a
    ldh [$8b], a
    call Call_002_4c4e
    call Call_002_74e8

jr_002_54fc:
    call Call_002_5049
    ld a, [$c0e5]
    or a
    jr z, jr_002_550f

    ld a, $01
    ldh [$8b], a
    call Call_002_4c4e
    call Call_002_74e8

jr_002_550f:
    call Call_002_5049
    ld a, [$c0e6]
    or a
    jr z, jr_002_5522

    ld a, $02
    ldh [$8b], a
    call Call_002_4c4e
    call Call_002_74e8

jr_002_5522:
    call Call_002_5049
    ld a, [$c0e7]
    or a
    ret z

    ld a, $03
    ldh [$8b], a
    call Call_002_4c4e
    jp Jump_002_74e8


    ld a, [$cb6e]
    or a
    jr nz, jr_002_5548

jr_002_553a:
    call Call_002_7712
    ld a, [$cb6f]
    or a
    ret z

    dec a
    ld [$cb6f], a
    jr jr_002_553a

jr_002_5548:
    dec a
    ld [$cb6e], a
    ret


Jump_002_554d:
    call Call_002_5847
    ld hl, $c8e8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    inc a
    and $0f
    call Call_002_5441
    ld hl, $c8e8
    ld a, [hl]
    add $40
    ld [hl], a
    inc l
    ld h, [hl]
    ld l, a
    ld a, [hl]
    inc a
    and $0f
    or $80
    call Call_002_5441
    ld hl, $c8e8
    ld a, [hl]
    sub $40
    ld [hl], a
    ret


Call_002_5578:
    ld e, $00
    ld hl, $c0fc
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    ret z

    inc e
    dec [hl]
    ret nz

    ld hl, $c0f0
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], h
    call Call_002_73b0
    ld e, $01
    ret


Call_002_5595:
    ld hl, $c8e2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_55b6

    ld a, [$c572]
    cp $ff
    jr z, jr_002_55ac

    ld a, [$c4ce]
    or a
    jr z, jr_002_55b6

jr_002_55ac:
    ld e, h
    ld hl, $c0f0
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], h
    ret


jr_002_55b6:
    ld e, $00
    ret


Call_002_55b9:
    ld hl, $c36f
    ld a, [hl]
    and $f0
    jr nz, jr_002_55c5

    ld a, [hl]
    jp Jump_002_5441


jr_002_55c5:
    ld d, [hl]
    ld e, $00
    push de
    call Call_002_4e2a
    pop af
    ret


Call_002_55ce:
    ld hl, $c370
    ld a, [hl]
    and $f0
    jr nz, jr_002_55dc

    ld a, [hl]
    or $80
    jp Jump_002_5441


jr_002_55dc:
    ld d, [hl]
    ld e, $01
    push de
    call Call_002_4e2a
    pop af
    ret


Call_002_55e5:
    ld h, $c3
    ld a, [$c8fa]
    ld l, a
    ld e, [hl]
    ld hl, $c2ec
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_5615

    ld a, e
    or a
    ret nz

    ld d, a
    ldh a, [$8b]
    add a
    ld e, a
    ld hl, $c108
    add hl, de
    inc [hl]
    ld l, $18
    add hl, de
    inc [hl]
    ld l, $30
    add hl, de
    inc [hl]
    ld l, $20
    add hl, de
    inc [hl]
    ld l, $38
    add hl, de
    inc [hl]
    ret


jr_002_5615:
    xor a
    ld [hl], a
    ldh a, [$8b]
    cp $03
    ret nz

    xor a
    ld [$c8f1], a
    ret


Call_002_5621:
    ld h, $c3
    ld a, [$c8fa]
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_002_554d

    ld hl, $c8e8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc [hl]
    bit 4, [hl]
    jr z, jr_002_5672

    ld [hl], $00
    push hl
    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld b, a
    and $0f
    ld h, a
    ld a, b
    and $f0
    ld l, a
    ld bc, $b480
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$8b]
    add a
    ld e, a
    add $08
    ld l, a
    ld a, $c1
    ld h, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $18
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $30
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    pop hl

jr_002_5672:
    inc l
    inc l
    inc l
    inc l
    inc [hl]
    bit 4, [hl]
    ret z

    ld [hl], $00
    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld b, a
    and $0f
    ld h, a
    ld a, b
    and $f0
    ld l, a
    ld bc, $ba80
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$8b]
    add a
    ld e, a
    add $20
    ld l, a
    ld a, $c1
    ld h, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $38
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_002_56ab:
    ld h, $c3
    ld a, [$c8fa]
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_56c2

    ld h, $c1
    ld a, [$c8e4]
    ld l, a
    ld a, [hl]
    cp $20
    ret z

    jp Jump_002_48ab


jr_002_56c2:
    cp $08
    ret nz

    ld a, $ff
    ld [hl], a
    ret


jr_002_56c9:
    xor a
    ld [$cbbe], a
    ld a, [$cbbb]
    ld e, a
    swap a
    and $0f
    ld [$c2d8], a
    ld a, e
    and $0f
    ld [$cbbf], a
    ret


jr_002_56df:
    xor a
    ld [$cbcc], a
    ld a, [$cbc9]
    ld e, a
    swap a
    and $0f
    ld [$c2db], a
    ld a, e
    and $0f
    ld [$cbcd], a
    ret


Call_002_56f5:
Jump_002_56f5:
    ldh a, [$8b]
    cp $02
    ret z

    jr nc, jr_002_56df

    or a
    jr z, jr_002_56c9

    xor a
    ld [$cbc5], a
    ld a, [$cbc2]
    ld e, a
    swap a
    and $0f
    ld [$c2d9], a
    ld a, e
    and $0f
    ld [$cbc6], a
    ret


Call_002_5715:
    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld de, $b690
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c0bc
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld [hl], e
    inc l
    ld [hl], d
    ld hl, $c0c4
    ldh a, [$8b]
    add l
    ld l, a
    xor a
    ld [hl], a
    ret


Call_002_5742:
Jump_002_5742:
    ld a, [$c4ff]
    ld [$c693], a
    ld a, $01
    ld [$c8f0], a
    ld a, [$c501]
    or a
    ret z

    ld a, [$c500]
    ld [$c694], a
    ld e, a
    ld a, [$c8c1]
    cp e
    jr nc, jr_002_5762

    ld [$c694], a

jr_002_5762:
    ld hl, $c502
    ld d, $00
    ld a, [$c8c1]
    ld e, a
    add hl, de
    ld a, [$c694]
    cpl
    inc a
    ld e, a
    jr z, jr_002_5775

    dec d

jr_002_5775:
    add hl, de
    ld a, l
    ld [$c524], a
    ld a, h
    ld [$c525], a
    ld hl, $7dfb
    ld d, $00
    ld e, $01
    ld a, [$c8c1]
    ld b, a

jr_002_5789:
    ld a, e
    cp b
    jr nc, jr_002_5791

    add hl, de
    inc e
    jr jr_002_5789

jr_002_5791:
    push hl
    ld bc, $c502
    ld a, [$c8c1]

jr_002_5798:
    or a
    jr z, jr_002_57a3

    push af
    ld a, [hl+]
    ld [bc], a
    inc bc
    pop af
    dec a
    jr jr_002_5798

jr_002_57a3:
    pop hl
    xor a
    ld [bc], a
    ld a, [$c501]
    cp $02
    jr z, jr_002_57c1

    jr nc, jr_002_57de

jr_002_57af:
    ld a, [$c8c2]
    inc a
    ld [$c526], a
    ld a, $c5
    ld [$c523], a
    ld a, $02
    ld [$c522], a
    ret


jr_002_57c1:
    ld d, $00
    ld a, [$c8c1]
    dec a
    ld e, a
    add hl, de
    ld a, [$c694]

jr_002_57cc:
    or a
    jr z, jr_002_57d9

    push af
    ld a, [bc]
    ld d, [hl]
    sub d
    ld [bc], a
    dec hl
    pop af
    dec a
    jr jr_002_57cc

jr_002_57d9:
    inc bc
    xor a
    ld [bc], a
    jr jr_002_57af

jr_002_57de:
    ld d, $00
    ld a, [$c8c1]
    dec a
    ld e, a
    add hl, de
    ld a, [$c694]

jr_002_57e9:
    or a
    jr z, jr_002_57f6

    push af
    ld a, [hl-]
    cpl
    inc a
    ld [bc], a
    inc bc
    pop af
    dec a
    jr jr_002_57e9

jr_002_57f6:
    ld hl, $c502
    ld d, $00
    ld a, [$c8c1]
    ld e, a
    add hl, de
    ld a, [$c694]
    ld e, a
    add hl, de
    xor a
    ld [hl], a
    jr jr_002_57af

Call_002_5809:
    push bc
    ld hl, $c168
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld b, a
    and $0f
    ld h, a
    ld a, b
    and $f0
    ld l, a
    ldh a, [$8b]
    add a
    ld b, $00
    ld c, a
    ld a, h
    add $a0
    ld d, a
    ld e, l
    ld hl, $c110
    add hl, bc
    ld [hl], e
    inc l
    ld [hl], d
    ld a, d
    add $10
    ld d, a
    ld l, $40
    add hl, bc
    ld [hl], e
    inc l
    ld [hl], d
    ld a, e
    sub $10
    ld e, a
    jr nc, jr_002_583f

    dec d

jr_002_583f:
    ld l, $28
    add hl, bc
    ld [hl], e
    inc l
    ld [hl], d
    pop bc
    ret


Call_002_5847:
    ld hl, $c204
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    swap a
    ld b, a
    and $0f
    ld h, a
    ld a, b
    and $f0
    ld l, a
    ld bc, $b480
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$8b]
    add a
    ld e, a
    add $08
    ld l, a
    ld a, $c1
    ld h, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $18
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $30
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $20
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    inc b
    inc b
    ld a, e
    add $38
    ld l, a
    ld [hl], c
    inc l
    ld [hl], b
    ret


Call_002_5891:
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_002_58b4:
Jump_002_58b4:
    swap a
    ld b, a
    and $0f
    ld h, a
    ld a, b
    and $f0
    ld l, a
    ld de, $b080
    add hl, de
    ld a, $01
    ld [$4000], a
    ld de, $c0d0
    ld a, $0a
    di
    ld [$0000], a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    xor a
    ld [$0000], a
    ei
    ldh a, [$8b]
    cp $02
    jp z, Jump_002_5ad6

    jp nc, Jump_002_5d7c

    or a
    jp nz, Jump_002_59f1

    xor a
    ld [$c347], a
    ld [$c34b], a
    ld [$c218], a
    ld [$c21c], a
    ld [$c8c9], a
    ld [$c14c], a
    ld hl, $c0d1
    ld a, [hl+]
    ld [$cbbb], a
    inc l
    ld a, [hl+]
    ld [$c2e0], a
    ld a, [hl+]
    ld [$c2e4], a
    ld a, [hl+]
    ld b, a
    and $08
    ld [$c33f], a
    ld a, b
    and $20
    ld [$c333], a
    ld a, b
    and $40
    ld [$c330], a
    ld a, b
    and $80
    ld [$c35c], a
    ld a, b
    and $10
    ld [$c35f], a
    ld a, b
    and $01
    ld [$c32c], a
    ld a, b
    srl a
    and $03
    ld [$c328], a
    ld a, [$cb9a]
    bit 7, a
    jr z, jr_002_5966

    inc l
    jr jr_002_596c

jr_002_5966:
    ld a, [hl+]
    bit 5, a
    jp z, Jump_002_59cc

jr_002_596c:
    and $1f
    ld [$c204], a
    ld [$c220], a
    ld a, $01
    ld [$c2e8], a
    ld a, [$c33f]
    or a
    jr nz, jr_002_5995

    ld hl, $c180
    call Call_002_5891
    ld [$c208], a
    ld [$c20c], a
    ld a, $01
    ld [$c2ec], a
    call Call_002_5847
    jr jr_002_59ba

jr_002_5995:
    xor a
    ld [$c2ec], a
    ld de, $c250
    ld a, [$c210]
    add e
    ld e, a
    ld a, [de]
    cp $80
    jr nz, jr_002_59ba

    ld hl, $c180
    call Call_002_5891
    ld [de], a
    ld hl, $0040
    add hl, de
    ld [hl], a
    call Call_002_5847
    ld a, $01
    ld [$c2ec], a

jr_002_59ba:
    ld a, $20
    ld [$c154], a
    xor a
    ld [$c164], a
    dec a
    ld [$c15c], a
    call Call_002_5715
    jr jr_002_59d4

Jump_002_59cc:
    xor a
    ld [$c2e8], a
    dec a
    ld [$c204], a

jr_002_59d4:
    ld hl, $c0d7
    ld a, [hl+]
    ld [$c352], a
    and $c0
    ld [$c2dc], a
    ld a, [hl+]
    ld [$c8c5], a
    ld a, [hl+]
    ld [$cbbc], a
    ld a, [hl+]
    ld [$cbbd], a
    ld a, [hl+]
    ld [$c695], a
    ret


Jump_002_59f1:
    xor a
    ld [$c348], a
    ld [$c34c], a
    ld [$c219], a
    ld [$c21d], a
    ld [$c8ca], a
    ld [$c14d], a
    ld hl, $c0d1
    ld a, [hl+]
    ld [$cbc2], a
    ld a, [hl+]
    ld [$c4d4], a
    ld a, [hl+]
    ld [$c2e1], a
    inc l
    ld a, [hl+]
    ld b, a
    and $08
    ld [$c340], a
    ld a, b
    and $80
    ld [$c35d], a
    ld a, b
    and $20
    ld [$c334], a
    ld a, b
    and $40
    ld [$c331], a
    ld a, b
    and $10
    ld [$c360], a
    ld a, b
    and $01
    ld [$c32d], a
    ld a, b
    srl a
    and $03
    ld [$c329], a
    ld a, [$cb9b]
    bit 7, a
    jr z, jr_002_5a4b

    inc l
    jr jr_002_5a51

jr_002_5a4b:
    ld a, [hl+]
    bit 5, a
    jp z, Jump_002_5ab1

jr_002_5a51:
    and $1f
    ld [$c205], a
    ld [$c221], a
    ld a, $01
    ld [$c2e9], a
    ld a, [$c340]
    or a
    jr nz, jr_002_5a7a

    ld hl, $c1a0
    call Call_002_5891
    ld [$c209], a
    ld [$c20d], a
    ld a, $01
    ld [$c2ed], a
    call Call_002_5847
    jr jr_002_5a9f

jr_002_5a7a:
    xor a
    ld [$c2ed], a
    ld de, $c250
    ld a, [$c211]
    add e
    ld e, a
    ld a, [de]
    cp $80
    jr nz, jr_002_5a9f

    ld hl, $c1a0
    call Call_002_5891
    ld [de], a
    ld hl, $0040
    add hl, de
    ld [hl], a
    call Call_002_5847
    ld a, $01
    ld [$c2ed], a

jr_002_5a9f:
    ld a, $20
    ld [$c155], a
    xor a
    ld [$c165], a
    dec a
    ld [$c15d], a
    call Call_002_5715
    jr jr_002_5ab9

Jump_002_5ab1:
    xor a
    ld [$c2e9], a
    dec a
    ld [$c205], a

jr_002_5ab9:
    ld hl, $c0d7
    ld a, [hl+]
    ld [$c353], a
    and $c0
    ld [$c2dd], a
    ld a, [hl+]
    ld [$c8c6], a
    ld a, [hl+]
    ld [$cbc3], a
    ld a, [hl+]
    ld [$cbc4], a
    ld a, [hl+]
    ld [$c696], a
    ret


Jump_002_5ad6:
    xor a
    ld [$c501], a
    ld [$c21a], a
    ld [$c349], a
    ld [$c34d], a
    ld [$c14e], a
    ld [$c69a], a
    ld [$c8c7], a
    ld hl, $c0d0
    ld a, [$c212]
    cp $40
    jp z, Jump_002_5bf6

    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$c8f2], a
    ld a, b
    cp $02
    jp z, Jump_002_5c37

    xor a
    ld [$c4f7], a
    ld [$c4f8], a
    ld [$c4cf], a
    ld [$c8f3], a
    ld [$c21e], a
    ld [$c8cb], a
    ld a, [hl+]
    and $0f
    xor $0f
    ld [$c500], a
    ld a, [hl+]
    ld [$c4ff], a
    inc l
    ld a, [hl+]
    ld b, a
    and $08
    ld [$c341], a
    ld a, b
    and $80
    ld [$c35e], a
    ld a, b
    and $10
    ld [$c361], a
    ld a, b
    and $20
    ld [$c335], a
    ld a, b
    and $40
    ld [$c332], a
    ld a, b
    and $01
    ld [$c32e], a
    ld a, b
    srl a
    and $03
    ld [$c32a], a

Jump_002_5b50:
    ld a, [$cb9c]
    bit 7, a
    jr z, jr_002_5b5a

    inc l
    jr jr_002_5b60

jr_002_5b5a:
    ld a, [hl+]
    bit 5, a
    jp z, Jump_002_5bc0

jr_002_5b60:
    and $1f
    ld [$c206], a
    ld [$c222], a
    ld a, $01
    ld [$c2ea], a
    ld a, [$c341]
    or a
    jr nz, jr_002_5b89

    ld hl, $c1c0
    call Call_002_5891
    ld [$c20a], a
    ld [$c20e], a
    ld a, $01
    ld [$c2ee], a
    call Call_002_5847
    jr jr_002_5bae

jr_002_5b89:
    xor a
    ld [$c2ee], a
    ld de, $c250
    ld a, [$c212]
    add e
    ld e, a
    ld a, [de]
    cp $80
    jr nz, jr_002_5bae

    ld hl, $c1c0
    call Call_002_5891
    ld [de], a
    ld hl, $0040
    add hl, de
    ld [hl], a
    call Call_002_5847
    ld a, $01
    ld [$c2ee], a

jr_002_5bae:
    ld a, $20
    ld [$c156], a
    xor a
    ld [$c166], a
    dec a
    ld [$c15e], a
    call Call_002_5715
    jr jr_002_5bc8

Jump_002_5bc0:
    xor a
    ld [$c2ea], a
    dec a
    ld [$c206], a

jr_002_5bc8:
    ld hl, $c0d7
    ld a, [hl+]
    ld [$c354], a
    ld a, [$c8f3]
    or a
    ret nz

    ld a, [hl+]
    ld [$c8c7], a
    ld a, [hl+]
    ld [$c501], a
    ld a, $0f
    sub [hl]
    and $0f
    ld [$c8c1], a
    inc l
    ld a, [hl+]
    add $03
    ld [$c8c2], a
    ld a, [hl]
    ld hl, $c697
    ld [hl+], a
    add a
    sbc a
    ld [hl], a
    jp Jump_002_5742


Jump_002_5bf6:
    ld a, $20
    ld [$c8f2], a
    ld [$c32a], a
    ld a, [$c0ce]
    ld [$c4cf], a
    ld a, $01
    ld [$c4f2], a
    ld a, $ff
    ld [$c206], a
    xor a
    ld [$c4e5], a
    ld [$c4ed], a
    ld [$c4ee], a
    ld [$c4ea], a
    ld [$c4e7], a
    ld [$c341], a
    ld a, [$c8f3]
    or $80
    ld [$c8f3], a
    ld hl, $c699
    ld [hl], $49
    inc hl
    ld [hl], $07
    ld a, $03
    ld [$c354], a
    ret


Jump_002_5c37:
    xor a
    ld [$c4cf], a
    ld a, [$c8f3]
    or $80
    ld [$c8f3], a
    ld a, [hl]
    and $3f
    call Call_000_1441
    ld a, e
    ld [$c4f7], a
    ld hl, $c0d8
    ld a, [hl]
    ld [$c4ea], a
    ld a, [$c4cf]
    or a
    jr z, jr_002_5c5c

    ld a, $40

jr_002_5c5c:
    ld hl, $c0d2
    xor [hl]
    and $40
    ld [$c4e7], a
    jr nz, jr_002_5c8f

    ld a, [$c4ea]
    and $80
    ld a, $49
    ld hl, $c4ea
    jr z, jr_002_5c81

    add [hl]
    ld [$c699], a
    ld a, $06
    jr nc, jr_002_5c7c

    inc a

jr_002_5c7c:
    ld [$c69a], a
    jr jr_002_5cb5

jr_002_5c81:
    add [hl]
    ld [$c699], a
    ld a, $07
    jr nc, jr_002_5c8a

    inc a

jr_002_5c8a:
    ld [$c69a], a
    jr jr_002_5cb5

jr_002_5c8f:
    ld a, [$c4ea]
    and $80
    ld a, $92
    ld hl, $c4ea
    jr z, jr_002_5ca9

    add [hl]
    ld [$c699], a
    ld a, $05
    jr nc, jr_002_5ca4

    inc a

jr_002_5ca4:
    ld [$c69a], a
    jr jr_002_5cb5

jr_002_5ca9:
    add [hl]
    ld [$c699], a
    ld a, $06
    jr nc, jr_002_5cb2

    inc a

jr_002_5cb2:
    ld [$c69a], a

jr_002_5cb5:
    ld a, [$c0ce]
    and $f0
    jr z, jr_002_5cf8

    ld hl, $c0d2
    ld a, [hl+]
    and $80
    ld [$c4e8], a
    ld hl, $c0dc
    ld a, [hl]
    swap a
    and $f0
    ld [$c4ec], a
    ld a, [hl]
    swap a
    and $0f
    ld [$c4eb], a
    ld hl, $c0d3
    ld a, [hl]
    or a
    jr z, jr_002_5cf4

    swap a
    and $f0
    ld [$c4f1], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c4f0], a
    xor a
    ld [$c4ef], a
    jr jr_002_5cf8

jr_002_5cf4:
    inc a
    ld [$c4ef], a

jr_002_5cf8:
    ld hl, $c0d5
    ld a, [hl+]
    ld b, a
    and $40
    ld [$c4e5], a
    ld a, b
    and $20
    ld [$c4e6], a
    ld a, b
    and $08
    ld [$c341], a
    ld a, b
    and $80
    ld [$c35e], a
    ld a, b
    and $10
    ld [$c361], a
    ld a, b
    srl a
    and $03
    ld [$c32a], a
    ld a, b
    and $01
    ld [$c32e], a
    ld hl, $c0da
    ld a, [hl-]
    ld [$c4f9], a
    ld a, [hl]
    and $3f
    call Call_000_1441
    ld a, e
    ld [$c4f8], a
    ld a, [$c0ce]
    and $0f
    jr z, jr_002_5d76

    ld a, [hl+]
    and $80
    ld [$c4e9], a
    inc l
    ld a, [hl]
    or a
    jr z, jr_002_5d60

    swap a
    and $f0
    ld [$c4f4], a
    ld a, [hl+]
    swap a
    and $0f
    ld [$c4f3], a
    xor a
    ld [$c4f2], a
    jr jr_002_5d65

jr_002_5d60:
    inc a
    ld [$c4f2], a
    inc l

jr_002_5d65:
    inc l
    ld a, [hl]
    swap a
    and $f0
    ld [$c4ee], a
    ld a, [hl-]
    swap a
    and $0f
    ld [$c4ed], a

jr_002_5d76:
    ld hl, $c0d6
    jp Jump_002_5b50


Jump_002_5d7c:
    xor a
    ld [$c21b], a
    ld [$c34a], a
    ld [$c362], a
    ld [$c8cc], a
    ld [$c21f], a
    ld [$c14f], a
    ld hl, $c0d1
    ld a, [hl+]
    ld [$cbc9], a
    ld a, [hl+]
    ld [$c691], a
    ld a, [hl+]
    ld [$c2e3], a
    inc l
    ld a, [hl+]
    ld b, a
    and $08
    ld [$c342], a
    ld a, b
    and $20
    ld [$c336], a
    ld a, b
    srl a
    and $03
    ld [$c32b], a
    ld a, b
    and $01
    ld [$c32f], a
    ld a, [$cb9d]
    bit 7, a
    jr z, jr_002_5dc4

    inc l
    jr jr_002_5dca

jr_002_5dc4:
    ld a, [hl+]
    bit 5, a
    jp z, Jump_002_5e2a

jr_002_5dca:
    and $1f
    ld [$c207], a
    ld [$c223], a
    ld a, $01
    ld [$c2eb], a
    ld a, [$c342]
    or a
    jr nz, jr_002_5df3

    ld hl, $c1e0
    call Call_002_5891
    ld [$c20b], a
    ld [$c20f], a
    ld a, $01
    ld [$c2ef], a
    call Call_002_5847
    jr jr_002_5e18

jr_002_5df3:
    xor a
    ld [$c2ef], a
    ld de, $c250
    ld a, [$c213]
    add e
    ld e, a
    ld a, [de]
    cp $80
    jr nz, jr_002_5e18

    ld hl, $c1e0
    call Call_002_5891
    ld [de], a
    ld hl, $0040
    add hl, de
    ld [hl], a
    call Call_002_5847
    ld a, $01
    ld [$c2ef], a

jr_002_5e18:
    ld a, $20
    ld [$c157], a
    xor a
    ld [$c167], a
    dec a
    ld [$c15f], a
    call Call_002_5715
    jr jr_002_5e32

Jump_002_5e2a:
    xor a
    ld [$c2eb], a
    dec a
    ld [$c207], a

jr_002_5e32:
    ld hl, $c0d7
    ld a, [hl+]
    ld [$c355], a
    ld a, [hl+]
    ld [$c8c8], a
    ld a, [hl+]
    ld [$cbca], a
    ld a, [hl+]
    ld [$cbcb], a
    ret


Call_002_5e46:
    ld h, $c1
    ld a, [$c8de]
    ld l, a
    ld c, [hl]
    ld hl, $c170
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    and $7f
    swap a
    ld l, a
    and $0f
    ld h, a
    ld a, l
    and $f0
    add c
    ld l, a
    ld de, $a080
    add hl, de
    ld a, $01
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    reti


Call_002_5e77:
    ld hl, $c200
    ldh a, [$8b]
    add l
    ld l, a
    ld l, [hl]
    ld a, l
    cp $c0
    jr c, jr_002_5e87

    ld e, $ff
    ret


jr_002_5e87:
    ld h, $00
    add hl, hl
    add hl, hl
    ldh a, [$8b]
    add l
    ld l, a
    ld de, $b290
    add hl, de
    ld a, $00
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld e, [hl]
    xor a
    ld [$0000], a
    reti


    rst $10
    sub $d5
    call nc, $d3c7
    push bc
    jp nc, $c3b7

    or l
    pop de
    and a
    or e
    and l
    ret nc

    sub a
    and e
    sub l
    ret nz

    add a
    sub e
    add l
    or b
    ld [hl], a
    add e
    ld [hl], l
    and b
    ld h, a
    ld [hl], e
    ld h, l
    sub b
    ld d, a
    ld h, e
    ld d, l
    add b
    ld b, a
    ld d, e
    ld b, l
    ld [hl], b
    scf
    ld b, e
    dec [hl]
    ld h, b
    daa
    inc sp
    dec h
    ld d, b
    rla
    inc hl
    dec d
    ld b, b
    rlca
    inc de
    dec b
    jr nc, jr_002_5ee0

    jr nz, jr_002_5eef

    nop

jr_002_5ee0:
    rst $18
    sbc $dd
    call c, $dbcf
    call $bfda
    res 7, l
    reti


    xor a
    cp e
    xor l

jr_002_5eef:
    ret c

    sbc a
    xor e
    sbc l
    ret z

    adc a
    sbc e
    adc l
    cp b
    ld a, a
    adc e
    ld a, l
    xor b
    ld l, a
    ld a, e
    ld l, l
    sbc b
    ld e, a
    ld l, e
    ld e, l
    adc b
    ld c, a
    ld e, e
    ld c, l
    ld a, b
    ccf
    ld c, e
    dec a
    ld l, b
    cpl
    dec sp
    dec l
    ld e, b
    rra
    dec hl
    dec e
    ld c, b
    rrca
    dec de
    dec c
    jr c, jr_002_5f24

    jr z, jr_002_5f33

    ld [$a421], sp
    ld e, [hl]
    add l
    ld l, a
    jr nc, jr_002_5f24

    inc h

jr_002_5f24:
    ld a, [hl]
    ldh [rNR43], a
    ret


Call_002_5f28:
Jump_002_5f28:
    ldh a, [$8b]
    or a
    jr z, jr_002_5f5f

    cp $02
    jr z, jr_002_5f51

    jr c, jr_002_5f3e

jr_002_5f33:
    xor a
    ld [$c14f], a
    ld e, a
    push bc
    call Call_002_7e82
    pop bc
    ret


jr_002_5f3e:
    xor a
    ld [$c14d], a
    ld hl, $c2d2
    ld [hl+], a
    ld [hl], a
    ld [$c317], a
    ld e, a
    push bc
    call Call_002_7e8d
    pop bc
    ret


jr_002_5f51:
    call Call_002_5f71
    ld [$c69b], a
    ldh [rNR30], a
    ld a, $02
    ld [$cba2], a
    ret


jr_002_5f5f:
    ld [$c14c], a
    ld hl, $c2d0
    ld [hl+], a
    ld [hl], a
    ld [$c315], a
    ld e, a
    push bc
    call Call_002_7e98
    pop bc
    ret


Call_002_5f71:
    xor a
    ld [$c14e], a
    ld hl, $c8f3
    ld [hl+], a
    ld [hl], a
    ld hl, $c2d4
    ld [hl+], a
    ld [hl], a
    ld hl, $c522
    ld [hl+], a
    ld [hl], a
    ld [$c319], a
    ret


Call_002_5f88:
    call Call_002_5f71
    ld hl, $ffa0
    ld a, $77
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$c69b], a
    ret


Call_002_5fa4:
    push hl
    ld a, $80
    ldh [rNR52], a
    xor a
    ldh [$8b], a
    ld hl, $c0a0

jr_002_5faf:
    ld a, [hl+]
    bit 7, a
    jr nz, jr_002_5fb8

    ld a, $03
    jr jr_002_5fb9

jr_002_5fb8:
    xor a

jr_002_5fb9:
    push hl
    call Call_002_6171
    pop hl
    ldh a, [$8b]
    cp $03
    jr z, jr_002_5fc9

    inc a
    ldh [$8b], a
    jr jr_002_5faf

jr_002_5fc9:
    ld a, $77
    ldh [rNR50], a
    pop hl
    ret


Call_002_5fcf:
    ldh a, [$8b]
    or a
    jp z, Jump_002_6013

    cp $02
    jp z, Jump_002_6099

    jr c, jr_002_6059

Call_002_5fdc:
    ld a, [$c2e3]
    and $3f
    ldh [rNR41], a
    ld a, [$c2db]
    swap a
    or $08
    ldh [rNR42], a
    ld a, [$c2e7]
    call $5f1c
    ld a, [$c2e3]
    and $40
    or $80
    ldh [rNR44], a
    ld a, [$cbcd]
    or a
    ret z

    call Call_000_3077
    ld a, [$cbca]
    swap a
    and $0f
    ld [$cbcf], a
    ld a, $01
    ld [$cbcc], a
    ret


Call_002_6013:
Jump_002_6013:
    ld a, [$c2e4]
    cpl
    ldh [rNR10], a
    ld a, [$c2e0]
    and $3f
    ld d, a
    ld a, [$c2dc]
    add d
    ldh [rNR11], a
    ld a, [$c2d8]
    swap a
    or $08
    ldh [rNR12], a
    ld a, [$c0f4]
    ldh [rNR13], a
    ld a, [$c2e0]
    and $40
    or $80
    ld d, a
    ld a, [$c0f5]
    add d
    ldh [rNR14], a
    ld a, [$cbbf]
    or a
    ret z

    call Call_000_2ff5
    ld a, [$cbbc]
    swap a
    and $0f
    ld [$cbc1], a
    ld a, $01
    ld [$cbbe], a
    ret


Call_002_6059:
jr_002_6059:
    ld a, [$c2e1]
    and $3f
    ld d, a
    ld a, [$c2dd]
    add d
    ldh [rNR21], a
    ld a, [$c2d9]
    swap a
    or $08
    ldh [rNR22], a
    ld a, [$c0f6]
    ldh [rNR23], a
    ld a, [$c2e1]
    and $40
    or $80
    ld d, a
    ld a, [$c0f7]
    add d
    ldh [rNR24], a
    ld a, [$cbc6]
    or a
    ret z

    call Call_000_303c
    ld a, [$cbc3]
    swap a
    and $0f
    ld [$cbc8], a
    ld a, $01
    ld [$cbc5], a
    ret


Call_002_6099:
Jump_002_6099:
    ld hl, $c69a
    ld a, [hl]
    or a
    jr z, jr_002_60aa

    ld a, [hl-]
    ld [$c0f9], a
    ld a, [hl+]
    ld [$c0f8], a
    xor a
    ld [hl], a

jr_002_60aa:
    ld a, [$c4cf]
    or a
    jr nz, jr_002_60e5

    ld a, [$c8f3]
    or a
    jp nz, Jump_002_6111

    ld a, [$c8f0]
    or a
    jr z, jr_002_60d1

    ld a, [$c8f2]
    ld [$c2da], a
    ldh [rNR32], a
    xor a
    ld [$c8f0], a
    call Call_002_61bf
    di
    call Call_000_075a
    reti


jr_002_60d1:
    ld a, $80
    ldh [rNR30], a
    ld a, [$c8f2]
    ld [$c2da], a
    ldh [rNR32], a
    ld a, [$c0f9]
    or $80
    ldh [rNR34], a
    ret


jr_002_60e5:
    push bc
    xor a
    ld [$c4d0], a
    ld hl, $c8f3
    ld a, [hl]
    or $80
    ld [hl], a
    ld a, [$c4cf]
    ld [$c0ce], a
    ld b, a
    ld hl, $b890

jr_002_60fb:
    dec b
    jr z, jr_002_6107

    ld a, $20
    add l
    jr nc, jr_002_6104

    inc h

jr_002_6104:
    ld l, a
    jr jr_002_60fb

jr_002_6107:
    ld a, l
    ld [$c4d1], a
    ld a, h
    ld [$c4d2], a
    pop bc
    ret


Jump_002_6111:
    di
    ld a, [$c0ce]
    or a
    jr nz, jr_002_611e

    ld a, [$c0ea]
    ld [$c0ce], a

jr_002_611e:
    swap a
    and $0f
    or a
    jr z, jr_002_6148

    dec a
    ld e, a
    call Call_000_155d
    ld hl, $c8f3
    ld a, e
    or a
    jr nz, jr_002_6137

    ld a, [hl]
    and $fe
    ld [hl], a
    jr jr_002_6148

jr_002_6137:
    ld a, [$c8f2]
    ld [$c2da], a
    ldh [rNR32], a
    ld a, [$c0f8]
    ldh [rNR33], a
    ld a, [hl]
    or $01
    ld [hl], a

jr_002_6148:
    ld a, [$c0ce]
    and $0f
    jr z, jr_002_615e

    dec a
    call Call_000_1644
    ld hl, $c8f3
    ld a, e
    or a
    jr nz, jr_002_615f

    ld a, [hl]
    and $fd
    ld [hl], a

jr_002_615e:
    reti


jr_002_615f:
    ld a, [$c8f2]
    ld [$c2da], a
    ldh [rNR32], a
    ld a, [$c0f8]
    ldh [rNR33], a
    ld a, [hl]
    or $02
    ld [hl], a
    reti


Call_002_6171:
    and $03
    ld b, a
    ldh a, [$8b]
    and $03
    ld hl, $c0a0
    add l
    ld l, a
    ld a, [hl]
    and $80
    add b
    ld [hl], a
    bit 7, a
    jr z, jr_002_6191

    ldh a, [$8b]
    and $03
    ld hl, $c0a4
    add l
    ld l, a
    ld a, [hl]
    ld b, a

jr_002_6191:
    ld a, b
    or a
    jr z, jr_002_619f

    cp $02
    jr z, jr_002_61a6

    jr c, jr_002_61a2

    ld e, $11
    jr jr_002_61a8

jr_002_619f:
    ld e, a
    jr jr_002_61a8

jr_002_61a2:
    ld e, $10
    jr jr_002_61a8

jr_002_61a6:
    ld e, $01

jr_002_61a8:
    ld d, $ee
    ldh a, [$8b]
    and $03

jr_002_61ae:
    or a
    jr z, jr_002_61b8

    rlc d
    rlc e
    dec a
    jr jr_002_61ae

jr_002_61b8:
    ldh a, [rNR51]
    and d
    or e
    ldh [rNR51], a
    ret


Call_002_61bf:
    ld a, [$c693]
    swap a
    ld l, a
    and $0f
    add $a0
    ld h, a
    ld a, l
    and $f0
    ld l, a
    ld a, $03
    ld [$4000], a
    ld a, $0a
    di
    ld [$0000], a
    ld a, [hl+]
    ldh [$a0], a
    ld a, [hl+]
    ldh [$a1], a
    ld a, [hl+]
    ldh [$a2], a
    ld a, [hl+]
    ldh [$a3], a
    ld a, [hl+]
    ldh [$a4], a
    ld a, [hl+]
    ldh [$a5], a
    ld a, [hl+]
    ldh [$a6], a
    ld a, [hl+]
    ldh [$a7], a
    ld a, [hl+]
    ldh [$a8], a
    ld a, [hl+]
    ldh [$a9], a
    ld a, [hl+]
    ldh [$aa], a
    ld a, [hl+]
    ldh [$ab], a
    ld a, [hl+]
    ldh [$ac], a
    ld a, [hl+]
    ldh [$ad], a
    ld a, [hl+]
    ldh [$ae], a
    ld a, [hl+]
    ldh [$af], a
    xor a
    ld [$0000], a
    reti


    ldh a, [rNR50]
    ld e, a
    ld hl, $d400
    and $70
    add l
    ld l, a
    ldh a, [$8f]
    swap a
    and $0f
    add l
    ld l, a
    ld a, [hl]
    swap a
    ldh [rNR50], a
    ld a, e
    swap a
    and $70
    ld l, a
    ldh a, [$8f]
    and $0f
    add l
    ld l, a
    ld l, [hl]
    ldh a, [rNR50]
    add l
    ldh [rNR50], a
    ret


Jump_002_6238:
    push bc
    add sp, -$04
    xor a
    ld hl, $c8f3
    or [hl]
    jp z, Jump_002_6297

    ldh a, [$8b]
    cp $02
    jp nz, Jump_002_6297

    ldh a, [$8b]
    add a
    ld c, a
    ld de, $c0f4
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $f4
    add c
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
    ldh a, [$8f]
    ld c, a
    rla
    sbc a
    ld b, a
    ld hl, $0003
    push hl
    push bc
    call Call_000_38b1
    ld b, d
    ld c, e
    add sp, $04
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    jp Jump_002_62ef


Jump_002_6297:
    ldh a, [$8b]
    add a
    ld c, a
    ld de, $c337
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $37
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    inc hl
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ldh a, [$8f]
    ld c, a
    rla
    sbc a
    ld b, a
    ld a, $04
    jr jr_002_62cb

jr_002_62c6:
    or a
    rl c
    rl b

jr_002_62cb:
    dec a
    jr nz, jr_002_62c6

    ld hl, sp+$02
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
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
    ldh a, [$8b]
    ld c, a
    ld a, $4e
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_002_62ef:
    add sp, $04
    pop bc
    ret


Jump_002_62f3:
    push bc
    add sp, -$04
    xor a
    ld hl, $c8f3
    or [hl]
    jp nz, Jump_002_6318

    xor a
    ld hl, $ff8f
    or [hl]
    jp z, Jump_002_643d

    ldh a, [$8f]
    ld hl, $c693
    add [hl]
    ld [hl], a
    call Call_002_61bf
    di
    call Call_000_075a
    ei
    jp Jump_002_643d


Jump_002_6318:
    ldh a, [$8f]
    ld hl, sp+$02
    ld [hl], a
    rla
    sbc a
    inc hl
    ld [hl], a
    ld hl, $c4eb
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, $7ff0
    add hl, de
    jp nc, Jump_002_6354

    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld hl, sp+$03
    ld [hl], a
    dec hl
    ld [hl], e
    jp Jump_002_6379


Jump_002_6354:
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld a, [hl]
    xor $80
    ld d, a
    ld hl, $8010
    add hl, de
    jp c, Jump_002_6379

    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d

Jump_002_6379:
    ld a, $05
    jr jr_002_6385

jr_002_637d:
    or a
    ld hl, sp+$02
    rl [hl]
    inc hl
    rl [hl]

jr_002_6385:
    dec a
    jr nz, jr_002_637d

    ld hl, sp+$00
    ld a, [hl+]
    ld [hl], a
    dec hl
    ld [hl], $00
    ld hl, $c4ec
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
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
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
    ld a, d
    bit 7, a
    jp z, Jump_002_63bd

    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_002_63bd:
    ld hl, sp+$00
    ld c, [hl]
    ld hl, $c4ec
    ld [hl], c
    ld hl, sp+$01
    ld c, [hl]
    ld b, $00
    ld hl, $c4eb
    ld [hl], c
    ld hl, $c4ed
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    dec hl
    ld a, [hl+]
    ld [hl], a
    dec hl
    ld [hl], $00
    ld hl, $c4ee
    ld c, [hl]
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
    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
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
    ld a, d
    bit 7, a
    jp z, Jump_002_6408

    dec hl
    ld [hl], $00
    inc hl
    ld [hl], $00

Jump_002_6408:
    ld hl, sp+$00
    ld c, [hl]
    ld hl, $c4ee
    ld [hl], c
    ld hl, sp+$01
    ld c, [hl]
    ld b, $00
    ld hl, $c4ed
    ld [hl], c
    ld hl, $c8f2
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld hl, $c8f2
    ld a, [hl]
    rla
    sbc a
    ld hl, sp+$03
    ld [hl], a
    ld de, $c2da
    ld a, [de]
    ld hl, $c8f2
    ld [hl], a
    call Call_002_6099
    ld hl, sp+$02
    ld a, [hl]
    ld hl, $c8f2
    ld [hl], a
    call Call_002_46c7

Jump_002_643d:
    add sp, $04
    pop bc
    ret


Call_002_6441:
    push bc
    xor a
    ld hl, sp+$04
    or [hl]
    jp nz, Jump_002_644e

    ld e, $00
    jp Jump_002_6463


Jump_002_644e:
    call Call_000_33fc
    ld c, e
    ld hl, sp+$04
    ld a, [hl]
    add $01
    ld b, a
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_375b
    ld c, e
    add sp, $02

Jump_002_6463:
    pop bc
    ret


    push bc
    add sp, -$03
    ldh a, [$8f]
    and $f0
    ld hl, sp+$02
    ld [hl], a
    cp $80
    jp nz, Jump_002_64b4

    ldh a, [$8f]
    and $0f
    ld b, a
    ldh a, [$8b]
    ld c, a
    ld a, $c5
    add c
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc c
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_38a5
    ld b, e
    add sp, $02
    ldh a, [$8b]
    ld c, a
    ld a, $48
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    inc b
    ld a, b
    ld [de], a
    ld a, $4c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, b
    and $0f
    ld c, a
    ld [de], a
    jp Jump_002_653b


Jump_002_64b4:
    ldh a, [$8f]
    add $ff
    ld c, a
    and $0f
    ld b, a
    cp $0f
    jp z, Jump_002_64dc

    ldh a, [$8b]
    ld c, a
    ld a, $c5
    add c
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc c
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_000_38a5
    ld b, e
    add sp, $02

Jump_002_64dc:
    ld hl, $c528
    ld c, [hl]
    ld a, $cd
    add c
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, b
    ld [de], a
    ld de, $c2f0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c528
    ld c, [hl]
    ld a, $f0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    or $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld hl, $c528
    ld c, [hl]
    ld a, $24
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, sp+$02
    ld a, [hl]
    ld [de], a
    ld hl, $c528
    ld a, [hl]
    cp $04
    jp nc, Jump_002_6538

    ld c, a
    ld a, $3c
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_653b


Jump_002_6538:
    call Call_002_665c

Jump_002_653b:
    add sp, $03
    pop bc
    ret


Call_002_653f:
    push bc
    call Call_002_5f28
    ldh a, [$8b]
    ld c, a
    ld a, $f0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $f0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add $08
    ld c, a
    ld a, $f0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $d0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    inc de
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld a, $04
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $20
    add c
    ld e, a
    ld a, $c4
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $18
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $5f
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    pop bc
    ret


    push bc
    add sp, -$02
    xor a
    ld hl, $ff8f
    or [hl]
    jp z, Jump_002_6607

    ld hl, $c528
    ld c, [hl]
    ld a, $30
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    xor a
    ld a, $03
    sbc [hl]
    ld a, $00
    rla
    ld c, a
    ldh a, [$8f]
    sub c
    ld [de], a
    ld c, [hl]
    ld de, $c2f0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld hl, $c528
    ld c, [hl]
    ld a, $f0
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    or $01
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    jp Jump_002_660a


Jump_002_6607:
    call Call_002_653f

Jump_002_660a:
    add sp, $02
    pop bc
    ret


    ldh a, [$8b]
    cp $03
    jp nz, Jump_002_6623

    ld de, $c362
    ldh a, [$8f]
    ld [de], a
    ld hl, $c8c4
    ld [hl], $01
    jp Jump_002_6626


Jump_002_6623:
    call Call_002_45d8

Jump_002_6626:
    ret


    ldh a, [$8f]
    push af
    inc sp
    call Call_002_6171
    add sp, $01
    ret


    push bc
    ldh a, [$8f]
    ld hl, $c52a
    ld [hl], a
    ld hl, $c52b
    ld [hl], $00
    ld c, $9a
    ld b, $5d
    push bc
    ld a, $07
    push af
    inc sp
    call Call_000_1769
    add sp, $03
    pop bc
    ret


Jump_002_664d:
    push bc
    ld hl, $c528
    ld c, [hl]
    ld a, c
    and $03
    ldh [$8b], a
    call Call_002_653f
    pop bc
    ret


Call_002_665c:
Jump_002_665c:
    push bc
    add sp, -$02
    ld hl, $c528
    ld c, [hl]
    ld a, c
    and $03
    ldh [$8b], a
    xor a
    ld hl, $c4cf
    or [hl]
    jp z, Jump_002_6677

    ldh a, [$8b]
    cp $02
    jp z, Jump_002_673e

Jump_002_6677:
    ldh a, [$8b]
    or a
    jp z, Jump_002_668a

    cp $01
    jp z, Jump_002_6696

    cp $03
    jp z, Jump_002_66a2

    jp Jump_002_66ab


Jump_002_668a:
    ld hl, $cbbb
    push hl
    call Call_002_4000
    add sp, $02
    jp Jump_002_66ab


Jump_002_6696:
    ld hl, $cbc2
    push hl
    call Call_002_4000
    add sp, $02
    jp Jump_002_66ab


Jump_002_66a2:
    ld hl, $cbc9
    push hl
    call Call_002_4000
    add sp, $02

Jump_002_66ab:
    ld hl, $c528
    ld a, [hl]
    cp $04
    jp nc, Jump_002_673e

    ldh a, [$8b]
    ld c, a
    ld a, $e8
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_673e

    ldh a, [$8b]
    ld c, a
    ld de, $c204
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $20
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $08
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld a, $08
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $58
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $60
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    call Call_002_5715
    call Call_002_5847
    ldh a, [$8b]
    ld c, a
    ld a, $ec
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_002_673e:
    ldh a, [$8b]
    cp $03
    jp nz, Jump_002_6756

    ldh a, [$8b]
    ld c, a
    ld a, $e4
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, $c4fe
    ld a, [hl]
    ld [de], a

Jump_002_6756:
    call Call_002_5fcf
    ldh a, [$8b]
    cp $02
    jp nz, Jump_002_676b

    ld hl, $c8f3
    ld a, [hl]
    ld hl, $c8f4
    ld [hl], a
    call Call_002_5742

Jump_002_676b:
    ld hl, $c528
    ld c, [hl]
    ld a, $cd
    add c
    ld e, a
    ld a, $c8
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    cp $0f
    jp nz, Jump_002_6792

    ld hl, $c528
    ld b, [hl]
    ld a, $f0
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_67a1


Jump_002_6792:
    ld hl, $c528
    ld b, [hl]
    ld a, $3c
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, c
    ld [de], a

Jump_002_67a1:
    add sp, $02
    pop bc
    ret


Jump_002_67a5:
    push bc
    ld de, $c362
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_67e9

    xor a
    ld hl, $c8c4
    or [hl]
    jp z, Jump_002_67c1

    ld [hl], $00
    ld hl, $c8da
    ld [hl], $00
    jp Jump_002_67e9


Jump_002_67c1:
    ld a, c
    and $80
    ld b, a
    or b
    jp z, Jump_002_67cc

    xor a
    sbc c
    ld c, a

Jump_002_67cc:
    ld a, c
    ld hl, $c8da
    add [hl]
    ld c, a
    and $03
    ld [hl], a
    srl c
    srl c
    xor a
    or b
    jp z, Jump_002_67e1

    xor a
    sbc c
    ld c, a

Jump_002_67e1:
    ld a, c
    push af
    inc sp
    call Call_002_4637
    add sp, $01

Jump_002_67e9:
    ld de, $c31b
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_6807

    call Call_000_1c71
    ld c, e
    ld a, c
    ld hl, $c8d9
    sub [hl]
    ld b, a
    push af
    inc sp
    call Call_002_4637
    add sp, $01
    ld hl, $c8d9
    ld [hl], c

Jump_002_6807:
    pop bc
    ret


Call_002_6809:
    push bc
    add sp, -$04
    ld de, $c21b
    ld a, [de]
    ld hl, sp+$03
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_68c4

    ld de, $c21c
    ld hl, $0003
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
    xor a
    ld a, $03
    sbc [hl]
    jp c, Jump_002_68c4

    ld e, [hl]
    ld d, $00
    ld hl, $683d
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_002_6849


    jp Jump_002_6859


    jp Jump_002_687e


    jp Jump_002_68aa


Jump_002_6849:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    ld hl, $c8db
    ld [hl], $00
    jp Jump_002_68c4


Jump_002_6859:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $02
    ld [de], a
    inc hl
    inc hl
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld [hl], a
    push af
    inc sp
    call Call_002_4637
    add sp, $01
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c8db
    ld [hl], a
    jp Jump_002_68c4


Jump_002_687e:
    ld hl, sp+$03
    ld a, [hl]
    and $0f
    ld c, a
    or c
    jp z, Jump_002_68aa

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $03
    ld [de], a
    inc hl
    inc hl
    ld [hl], c
    ld a, c
    ld hl, $c8db
    sub [hl]
    ld c, a
    push af
    inc sp
    call Call_002_4637
    add sp, $01
    ld hl, sp+$03
    ld a, [hl]
    ld hl, $c8db
    ld [hl], a
    jp Jump_002_68c4


Jump_002_68aa:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    xor a
    ld hl, $c8db
    sbc [hl]
    ld c, a
    push af
    inc sp
    call Call_002_4637
    add sp, $01
    ld hl, $c8db
    ld [hl], $00

Jump_002_68c4:
    add sp, $04
    pop bc
    ret


Call_002_68c8:
    push bc
    ldh a, [$8f]
    and $07
    ld c, a
    ld a, $dc
    add c
    ld e, a
    ld a, $68
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld e, c
    pop bc
    ret


    nop
    ld b, $0b
    ld de, $1c16
    ld [hl+], a
    daa

Call_002_68e4:
    push bc
    ldh a, [$8f]
    ld c, a
    bit 3, a
    jp z, Jump_002_68f2

    ld c, $0f
    jp Jump_002_68f4


Jump_002_68f2:
    ld c, $00

Jump_002_68f4:
    ld e, c
    pop bc
    ret


Jump_002_68f7:
    push bc
    ld de, $c2e0
    ld a, [de]
    ld c, a
    bit 6, a
    jp z, Jump_002_6905

    call Call_002_6013

Jump_002_6905:
    ld hl, $cbbe
    ld [hl], $00
    call Call_002_7e73
    call Call_002_68c8
    ld c, e
    ld hl, $cbbf
    ld [hl], c
    xor a
    or c
    jp z, Jump_002_692b

    ld a, [hl]
    ld hl, $cbc0
    ld [hl], a
    call Call_002_68e4
    ld hl, $cbc1
    ld [hl], e
    ld hl, $cbbe
    ld [hl], $03

Jump_002_692b:
    pop bc
    ret


Jump_002_692d:
    push bc
    ld de, $c2e1
    ld a, [de]
    ld c, a
    bit 6, a
    jp z, Jump_002_693b

    call Call_002_6059

Jump_002_693b:
    ld hl, $cbc5
    ld [hl], $00
    call Call_002_7e73
    call Call_002_68c8
    ld c, e
    ld hl, $cbc6
    ld [hl], c
    xor a
    or c
    jp z, Jump_002_6961

    ld a, [hl]
    ld hl, $cbc7
    ld [hl], a
    call Call_002_68e4
    ld hl, $cbc8
    ld [hl], e
    ld hl, $cbc5
    ld [hl], $03

Jump_002_6961:
    pop bc
    ret


Jump_002_6963:
    push bc
    ld de, $c2e3
    ld a, [de]
    ld c, a
    bit 6, a
    jp z, Jump_002_6971

    call Call_002_5fdc

Jump_002_6971:
    ld hl, $cbcc
    ld [hl], $00
    call Call_002_7e73
    call Call_002_68c8
    ld c, e
    ld hl, $cbcd
    ld [hl], c
    xor a
    or c
    jp z, Jump_002_6997

    ld a, [hl]
    ld hl, $cbce
    ld [hl], a
    call Call_002_68e4
    ld hl, $cbcf
    ld [hl], e
    ld hl, $cbcc
    ld [hl], $03

Jump_002_6997:
    pop bc
    ret


Call_002_6999:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld c, [hl]
    ld de, $c2fc
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
    ld hl, $c41f
    cp [hl]
    jp nz, Jump_002_6a0f

    ld hl, $c402
    ld a, [hl]
    cp $03
    jp z, Jump_002_69c6

    cp $01
    jp nz, Jump_002_69f4

Jump_002_69c6:
    ld hl, $c41b
    ld b, [hl]
    ld a, b
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_002_6e87
    ld b, e
    add sp, $02
    ld a, b
    cp $ff
    jp nz, Jump_002_69e2

    jp Jump_002_6a5a


Jump_002_69e2:
    ld a, $00
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld hl, $c41b
    ld b, [hl]
    ld a, b
    ld [de], a
    jp Jump_002_6a00


Jump_002_69f4:
    ld a, $00
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_002_6a00:
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    jp Jump_002_6a25


Jump_002_6a0f:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c41f
    ld a, [hl]
    ld [de], a
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a

Jump_002_6a25:
    ld a, $04
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    xor a
    ld hl, $c4ce
    or [hl]
    jp z, Jump_002_6a5a

    ld a, c
    ldh [$8b], a
    call Call_002_6abf
    ldh a, [$8b]
    ld c, a
    ld a, $04
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a

Jump_002_6a5a:
    add sp, $02
    pop bc
    ret


Call_002_6a5e:
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c8dc
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ld hl, $c8dd
    ld [hl], a
    ld hl, $c402
    ld a, [hl]
    cp $04
    jp nz, Jump_002_6a9f

    ld hl, $c414
    ld a, [hl]
    cp $04
    jp nz, Jump_002_6a9f

    xor a
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c41e
    sbc [hl]
    jp nc, Jump_002_6a97

    ld hl, $c40e
    ld a, [hl]
    ld hl, $c8dc
    ld [hl], a
    jp Jump_002_6a9f


Jump_002_6a97:
    ld hl, $c40e
    ld a, [hl]
    ld hl, $c8dd
    ld [hl], a

Jump_002_6a9f:
    ret


Call_002_6aa0:
    push bc
    call Call_002_6a5e
    ld hl, $c8dc
    ld c, [hl]

Jump_002_6aa8:
    xor a
    ld hl, $c8dd
    ld a, [hl]
    sbc c
    jp c, Jump_002_6abd

    ld a, c
    push af
    inc sp
    call Call_002_6999
    add sp, $01
    inc c
    jp Jump_002_6aa8


Jump_002_6abd:
    pop bc
    ret


Call_002_6abf:
    push bc
    add sp, -$04
    ldh a, [$8b]
    ld c, a
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    cp $ff
    jp nz, Jump_002_6ad8

    jp Jump_002_6c98


Jump_002_6ad8:
    ldh a, [$8b]
    ld c, a
    ld a, $60
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld a, $58
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $08
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $04
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $6c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld a, $14
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $60
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $50
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $58
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ldh a, [$8b]
    add $04
    ld c, a
    ld a, $08
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld de, $c200
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld de, $c170
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_002_6bb6:
    ldh a, [$8b]
    ld c, a
    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_002_6c2c

    ldh a, [$8b]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_6c2c

    ldh a, [$8b]
    ld c, a
    ld de, $c200
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
    ld a, [hl]
    add $ff
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld de, $c170
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    jp Jump_002_6bb6


Jump_002_6c2c:
    ldh a, [$8b]
    ld c, a
    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    bit 7, a
    jp z, Jump_002_6c51

    ldh a, [$8b]
    ld c, a
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_6c98


Jump_002_6c51:
    ldh a, [$8b]
    ld c, a
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld a, $7c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld de, $c168
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_002_6e87
    ld c, e
    add sp, $02
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_002_6c98:
    add sp, $04
    pop bc
    ret


Call_002_6c9c:
    push bc
    ld hl, $c4d3
    ld [hl], $00
    call Call_002_6a5e
    ld hl, $c8dc
    ld a, [hl]
    ldh [$8b], a

Jump_002_6cab:
    ld hl, $c8dd
    ld a, [hl]
    add $01
    ld c, a
    xor a
    ldh a, [$8b]
    sbc c
    jp nc, Jump_002_6cd6

    ldh a, [$8b]
    ld c, a
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, $c41f
    ld a, [hl]
    ld [de], a
    call Call_002_6abf
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_002_6cab


Jump_002_6cd6:
    call Call_002_4c42
    ld c, e
    xor a
    or c
    jp z, Jump_002_6d2f

    ld hl, $0080
    push hl
    ld a, $80
    push af
    inc sp
    ld hl, $c250
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
    ld hl, $0004
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $c2fc
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $c4ce
    ld [hl], $01
    ld hl, $c553
    ld [hl], $00
    ld hl, $c554
    ld [hl], $00
    call Call_002_5fa4
    call Call_002_701d
    call Call_000_1ce0
    ld hl, $c4d3
    ld [hl], $04

Jump_002_6d2f:
    pop bc
    ret


Call_002_6d31:
    push bc
    call Call_002_4c42
    ld c, e
    xor a
    or c
    jp z, Jump_002_6d41

    call Call_002_6aa0
    jp Jump_002_6d44


Jump_002_6d41:
    call Call_002_6c9c

Jump_002_6d44:
    pop bc
    ret


Call_002_6d46:
    push bc
    add sp, -$02
    call Call_002_6a5e
    ld hl, $c8dc
    ld c, [hl]

Jump_002_6d50:
    xor a
    ld hl, $c8dd
    ld a, [hl]
    sbc c
    jp c, Jump_002_6dc5

    ld de, $c2fc
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
    cp $ff
    jp z, Jump_002_6d79

    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $ff
    ld [de], a

Jump_002_6d79:
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_002_6dc1

    ld de, $c304
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
    or b
    jp nz, Jump_002_6db5

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_6dc1


Jump_002_6db5:
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $01
    ld [de], a

Jump_002_6dc1:
    inc c
    jp Jump_002_6d50


Jump_002_6dc5:
    add sp, $02
    pop bc
    ret


Call_002_6dc9:
    push bc
    add sp, -$05
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_002_6e83

    ld de, $c300
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_6df2

    ld de, $c0e0
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_6df2

    ld de, $c300
    ld a, $00
    ld [de], a
    ld de, $c0e4
    ld a, $01
    ld [de], a

Jump_002_6df2:
    ld de, $c300
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
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_6e22

    ld de, $c0e1
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_6e22

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c0e5
    ld a, $01
    ld [de], a

Jump_002_6e22:
    ld de, $c300
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
    ld a, [de]
    inc hl
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_6e52

    ld de, $c0e2
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_6e52

    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c0e6
    ld a, $01
    ld [de], a

Jump_002_6e52:
    ld de, $c300
    ld hl, $0003
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
    ld hl, sp+$00
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_6e83

    ld de, $c0e3
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_6e83

    inc hl
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld de, $c0e7
    ld a, $01
    ld [de], a

Jump_002_6e83:
    add sp, $05
    pop bc
    ret


Call_002_6e87:
    push bc
    add sp, -$02
    ld hl, sp+$06
    ld a, [hl]
    bit 7, a
    jp z, Jump_002_6e95

    call Call_000_144b

Jump_002_6e95:
    ld hl, sp+$07
    ld a, [hl]
    cp $10
    jp c, Jump_002_6ea0

    call Call_000_144b

Jump_002_6ea0:
    ld hl, sp+$06
    ld c, [hl]
    ld b, $00
    ld a, $05
    jr jr_002_6eae

jr_002_6ea9:
    or a
    rl c
    rl b

jr_002_6eae:
    dec a
    jr nz, jr_002_6ea9

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


Call_002_6ed8:
    push bc
    ld hl, $c522
    ld a, [hl+]
    or [hl]
    jp z, Jump_002_6f54

    xor a
    ld hl, $c526
    or [hl]
    jp nz, Jump_002_6f50

    ld hl, $c522
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_6f0e

    ld hl, $c501
    ld a, [hl]
    cp $01
    jp nz, Jump_002_6f04

    call Call_002_5f88
    jp Jump_002_6f54


Jump_002_6f04:
    ld hl, $c524
    ld a, [hl+]
    ld e, [hl]
    ld hl, $c522
    ld [hl+], a
    ld [hl], e

Jump_002_6f0e:
    ld hl, $c522
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_6f54

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $c693
    add [hl]
    ld [hl], a
    call Call_002_61bf
    ld hl, $c501
    ld a, [hl]
    cp $04
    jp nz, Jump_002_6f38

    di
    call Call_000_075a
    ei
    jp Jump_002_6f3d


Jump_002_6f38:
    ld hl, $c69b
    ld [hl], $01

Jump_002_6f3d:
    ld hl, $c522
    inc [hl]
    jr nz, jr_002_6f45

    inc hl
    inc [hl]

jr_002_6f45:
    ld hl, $c8c2
    ld a, [hl]
    ld hl, $c526
    ld [hl], a
    jp Jump_002_6f54


Jump_002_6f50:
    ld hl, $c526
    dec [hl]

Jump_002_6f54:
    pop bc
    ret


Call_002_6f56:
    push bc
    ld hl, $4000
    ld [hl], $00
    xor a
    ld hl, $c4d0
    or [hl]
    jp nz, Jump_002_7017

    ld a, $02
    ldh [$8b], a
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $c4d1
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_6fdf

    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld hl, $0000
    ld [hl], $00
    ei
    dec c
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_374f
    ld b, e
    add sp, $02
    ld a, b
    add $19
    ld hl, $c4f6
    ld [hl], a
    xor a
    ld a, $1a
    sbc [hl]
    jp nc, Jump_002_6fa6

    ld a, [hl]
    add $05
    ld [hl], a

Jump_002_6fa6:
    ld a, $0f
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_375b
    ld c, e
    add sp, $02
    ld de, $c0ce
    ld a, c
    add $01
    ld b, a
    ld [de], a
    di
    ld hl, $c4cf
    ld [hl], $00
    ld hl, $c4e6
    ld [hl], $00
    ld a, c
    push af
    inc sp
    call Call_000_1644
    add sp, $01
    call Call_002_6099
    ld hl, $c4cf
    ld [hl], $01
    ei
    ld de, $c422
    ld a, b
    ld [de], a
    jp Jump_002_6fe8


Jump_002_6fdf:
    ld hl, $0000
    ld [hl], $00
    ei
    call Call_002_5f88

Jump_002_6fe8:
    ld hl, $c4d1
    inc [hl]
    jr nz, jr_002_6ff0

    inc hl
    inc [hl]

jr_002_6ff0:
    di
    ld hl, $0000
    ld [hl], $0a
    ld hl, $c4d1
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $c4d0
    ld [hl], a
    ld hl, $0000
    ld [hl], $00
    ei
    xor a
    ld hl, $c4d0
    or [hl]
    jp z, Jump_002_7017

    ld hl, $c4d1
    inc [hl]
    jr nz, jr_002_7017

    inc hl
    inc [hl]

Jump_002_7017:
jr_002_7017:
    ld hl, $c4d0
    dec [hl]
    pop bc
    ret


Call_002_701d:
    push bc
    ldh a, [rIE]
    or $04
    ld hl, $cb6c
    or [hl]
    ld c, a
    push af
    inc sp
    call Call_000_3502
    add sp, $01
    pop bc
    ret


Call_002_7030:
    ld hl, $c402
    ld a, [hl]
    ld hl, $c4d3
    ld [hl], a
    ld hl, $c529
    ld [hl], $00
    call Call_002_7b9b
    ret


Call_002_7041:
    push bc
    add sp, -$08
    ld hl, $c4d3
    ld a, [hl]
    ld hl, sp+$07
    ld [hl], a
    ldh a, [$8b]
    ld b, a
    ld a, $6b
    add b
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    cp $ff
    jp nz, Jump_002_7066

    call Call_002_7030
    ld e, $02
    jp Jump_002_7280


Jump_002_7066:
    ld hl, $c8f6
    ld c, [hl]
    inc [hl]
    xor a
    or c
    jp z, Jump_002_7075

    ld e, $00
    jp Jump_002_7280


Jump_002_7075:
    ld a, b
    and $f0
    ld c, a
    or c
    jp z, Jump_002_70c7

    ldh a, [$8b]
    ld c, a
    ld de, $c214
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
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
    xor a
    or [hl]
    jp nz, Jump_002_70ac

    ld c, b
    srl c
    srl c
    srl c
    srl c
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    jp Jump_002_70c0


Jump_002_70ac:
    ld hl, sp+$04
    ld a, [hl]
    add $ff
    ld c, a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    or c
    jp nz, Jump_002_70c0

    ld e, $00
    jp Jump_002_7280


Jump_002_70c0:
    ld hl, sp+$07
    ld [hl], $01
    jp Jump_002_70e4


Jump_002_70c7:
    ld hl, $c4d3
    ld a, [hl]
    cp $01
    jp nz, Jump_002_70e4

    ldh a, [$8b]
    ld hl, $c41e
    cp [hl]
    jp nz, Jump_002_70e4

    ld hl, $c8ea
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c415
    ld a, [hl]
    ld [de], a

Jump_002_70e4:
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, b
    and $0f
    ld b, a
    ld [de], a
    call Call_002_5809
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $c8f5
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_710a

    ld a, [hl]
    push af
    inc sp
    call Call_002_4c26
    add sp, $01

Jump_002_710a:
    ld hl, sp+$07
    ld a, [hl]
    cp $03
    jp z, Jump_002_7212

    ld hl, sp+$07
    ld a, [hl]
    cp $04
    jp nz, Jump_002_727e

    ld hl, $c8de
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    inc hl
    ld [hl], a
    ld a, [hl]
    add $01
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp nz, Jump_002_715c

    call Call_002_5e46
    ld c, e
    ld a, c
    cp $ff
    jp z, Jump_002_715c

    ld hl, $c8de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $10
    jp nz, Jump_002_71bc

Jump_002_715c:
    ldh a, [$8b]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    ld hl, $c8de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    call Call_002_7791
    ld c, e
    xor a
    or c
    jp z, Jump_002_71b9

    ldh a, [$8b]
    ld c, a
    ld de, $c200
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
    ld a, [hl]
    add $01
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld de, $c170
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    call Call_002_5e77
    ld c, e
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    call Call_002_48d2

Jump_002_71b9:
    call Call_002_4e69

Jump_002_71bc:
    call Call_002_6dc9
    ld hl, $c8ea
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    call Call_002_5e46
    ld c, e
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld hl, $c8ea
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $ff
    jp nz, Jump_002_71f2

    ldh a, [$8b]
    ld c, a
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    call Call_002_5f28

Jump_002_71f2:
    call Call_002_5809
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c8f5
    ld a, [hl]
    ld [de], a
    or a
    jp z, Jump_002_720c

    ld a, [hl]
    push af
    inc sp
    call Call_002_4c26
    add sp, $01

Jump_002_720c:
    call Call_002_4b8a
    jp Jump_002_727e


Jump_002_7212:
    ld hl, $c8de
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], e
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$00
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
    call Call_002_5e46
    ld c, e
    ld a, c
    cp $ff
    jp z, Jump_002_7244

    ld hl, $c8de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $10
    jp nz, Jump_002_724d

Jump_002_7244:
    ld hl, $c8de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a

Jump_002_724d:
    ld hl, $c8ea
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    call Call_002_5e46
    ld c, e
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    call Call_002_5809
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c8f5
    ld a, [hl]
    ld [de], a
    or a
    jp z, Jump_002_727b

    ld a, [hl]
    push af
    inc sp
    call Call_002_4c26
    add sp, $01

Jump_002_727b:
    call Call_002_4b8a

Jump_002_727e:
    ld e, $01

Jump_002_7280:
    add sp, $08
    pop bc
    ret


Call_002_7284:
    push bc
    add sp, -$01
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_002_7295

    ld hl, $c370
    ld c, [hl]
    jp Jump_002_7299


Jump_002_7295:
    ld hl, $c36f
    ld c, [hl]

Jump_002_7299:
    ld hl, sp+$00
    ld [hl], c
    ld a, c
    and $f0
    ld b, a
    call Call_000_33fc
    ld c, e
    xor a
    ld a, c
    sbc b
    jp nc, Jump_002_72cc

    ld hl, sp+$00
    ld a, [hl]
    and $0f
    ld [hl], a
    xor a
    ld hl, sp+$05
    or [hl]
    jp z, Jump_002_72bd

    ld hl, sp+$00
    ld a, [hl]
    or $80
    ld [hl], a

Jump_002_72bd:
    ld hl, sp+$00
    ld a, [hl]
    push af
    inc sp
    call Call_002_5441
    add sp, $01
    ld e, $01
    jp Jump_002_72ce


Jump_002_72cc:
    ld e, $00

Jump_002_72ce:
    add sp, $01
    pop bc
    ret


Call_002_72d2:
    push bc
    add sp, -$05
    ld hl, sp+$09
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    ld de, $c36b
    ld l, a
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    ld hl, sp+$0a
    ld a, [hl]
    ld hl, sp+$02
    ld [hl], a
    ld de, $c3b5
    ld l, a
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld hl, sp+$01
    ld [hl+], a
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld c, b
    srl c
    srl c
    srl c
    srl c
    ld a, c
    push af
    inc sp
    call Call_002_6441
    ld c, e
    add sp, $01
    ld a, c
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    ld hl, sp+$01
    ld a, [hl]
    add c
    ld c, a
    ld a, b
    and $0f
    ld b, a
    push af
    inc sp
    call Call_002_6441
    ld b, e
    add sp, $01
    ld a, c
    add b
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld de, $c365
    ld hl, sp+$00
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$03
    ld [hl+], a
    ld [hl], d
    ld de, $c371
    dec hl
    dec hl
    ld l, [hl]
    ld h, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    ld c, a
    ld hl, sp+$03
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    ld e, c
    add sp, $05
    pop bc
    ret


Jump_002_7360:
    push bc
    ldh a, [$8b]
    push af
    inc sp
    push af
    inc sp
    call Call_002_72d2
    ld c, e
    add sp, $02
    pop bc
    ret


Jump_002_736f:
    push bc
    ldh a, [$8b]
    ld c, a
    ld a, $04
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc c
    inc c
    inc c
    inc c
    ld a, c
    push af
    inc sp
    ld a, $04
    push af
    inc sp
    call Call_002_72d2
    ld c, e
    add sp, $02
    pop bc
    ret


Jump_002_7391:
    push bc
    ldh a, [$8b]
    ld c, a
    ld a, $04
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    add $24
    ld c, a
    push af
    inc sp
    ld a, $05
    push af
    inc sp
    call Call_002_72d2
    ld c, e
    add sp, $02
    pop bc
    ret


Call_002_73b0:
    push bc
    add sp, -$03
    ld hl, $4000
    ld [hl], $00
    xor a
    ld hl, $cb91
    or [hl]
    jp z, Jump_002_73e5

    ldh a, [$8b]
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
    jp z, Jump_002_73e5

    ld hl, $c8ec
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $cb91
    ld a, [hl]
    ld [de], a
    ld hl, $c8f7
    ld [hl], $01
    jp Jump_002_73e8


Jump_002_73e5:
    call Call_002_5423

Jump_002_73e8:
    call Call_002_48ab
    ldh a, [$8b]
    ld c, a
    ld a, $78
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_7478

    ld hl, $c8e2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ldh a, [$8b]
    ld b, a
    ld a, $78
    add b
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    xor a
    ld a, b
    sbc c
    jp nc, Jump_002_742c

    ldh a, [$8b]
    ld c, a
    ld a, $78
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    jp Jump_002_7439


Jump_002_742c:
    ld hl, $c8e2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    add $ff
    ld hl, sp+$02
    ld [hl], a

Jump_002_7439:
    ldh a, [$8b]
    ld b, a
    ld de, $c178
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    ld c, a
    ld a, $78
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    inc hl
    sub [hl]
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ld hl, $c8e2
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, $c8e2
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$02
    sub [hl]
    ld c, a
    dec hl
    dec hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a

Jump_002_7478:
    xor a
    ld hl, $cb91
    or [hl]
    jp z, Jump_002_74b1

    ldh a, [$8b]
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
    jp z, Jump_002_74b1

    ld hl, $cb92
    ld a, [hl]
    push af
    inc sp
    call Call_002_58b4
    add sp, $01
    ldh a, [$8b]
    ld c, a
    ld a, $10
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, $cb92
    ld a, [hl]
    ld [de], a
    jp Jump_002_74b4


Jump_002_74b1:
    call Call_002_4c68

Jump_002_74b4:
    ldh a, [$8b]
    cp $02
    jp nz, Jump_002_74e1

    xor a
    ld hl, $c8f3
    or [hl]
    jp z, Jump_002_74e1

    ld hl, $c8ec
    ld a, [hl+]
    ld e, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], e
    ld hl, $c8ec
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, $c8f8
    and [hl]
    ld c, a
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    jp Jump_002_74e4


Jump_002_74e1:
    call Call_002_4bc5

Jump_002_74e4:
    add sp, $03
    pop bc
    ret


Call_002_74e8:
Jump_002_74e8:
    push bc
    add sp, -$08
    call Call_002_5578
    ld c, e
    xor a
    or c
    jp nz, Jump_002_770e

    call Call_002_5595
    ld c, e
    xor a
    or c
    jp z, Jump_002_770e

    ld hl, $c8f8
    ld [hl], $ff
    call Call_002_483f
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    cp $10
    jp z, Jump_002_751a

    xor a
    ld hl, $c4ce
    or [hl]
    jp z, Jump_002_760f

Jump_002_751a:
    ld hl, $c8e0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    ld hl, $c4d3
    ld a, [hl]
    cp $03
    jp z, Jump_002_7531

    cp $04
    jp nz, Jump_002_753a

Jump_002_7531:
    call Call_002_4cbf
    call Call_002_6dc9
    jp Jump_002_760f


Jump_002_753a:
    ldh a, [$8b]
    ld hl, $c41e
    cp [hl]
    jp nz, Jump_002_754e

    ld hl, $c8ea
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c415
    ld a, [hl]
    ld [de], a

Jump_002_754e:
    call Call_002_5809
    ldh a, [$8b]
    ld hl, $c572
    cp [hl]
    jp nz, Jump_002_760f

    ldh a, [$8b]
    add a
    ld c, a
    ld de, $c140
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$04
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $40
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$02
    ld [hl], a
    inc de
    ld a, [de]
    inc hl
    ld [hl], a
    ld hl, $c417
    ld a, [hl]
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], $00
    inc hl
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
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    inc hl
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
    ldh a, [$8b]
    add a
    ld c, a
    ld de, $c110
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $10
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    ldh a, [$8b]
    add a
    ld c, a
    ld de, $c128
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$02
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    add a
    ld c, a
    ld a, $28
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld hl, sp+$00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld c, l
    ld b, h
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a

Jump_002_760f:
    ld hl, $c8f6
    ld [hl], $00

Jump_002_7614:
    call Call_002_5066
    ld c, e
    ld a, c
    or a
    jp z, Jump_002_770b

    cp $02
    jp z, Jump_002_7643

    cp $04
    jp z, Jump_002_769f

    cp $07
    jp z, Jump_002_76f6

    cp $08
    jp nz, Jump_002_770b

    call Call_002_7041
    ld c, e
    ld a, c
    cp $01
    jp z, Jump_002_7614

    cp $02
    jp nz, Jump_002_770b

    jp Jump_002_770e


Jump_002_7643:
    ldh a, [$8b]
    ld c, a
    ld a, $6b
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$07
    ld [hl], a
    ld b, [hl]
    srl b
    srl b
    srl b
    srl b
    call Call_002_503e
    ld c, e
    xor a
    ld a, c
    sbc b
    jp c, Jump_002_766b

    ld hl, $c8f8
    ld [hl], $0f

Jump_002_766b:
    ld hl, sp+$07
    ld a, [hl]
    and $0f
    ld c, a
    call Call_002_503e
    ld b, e
    xor a
    ld a, b
    sbc c
    jp c, Jump_002_7682

    ld hl, $c8f8
    ld a, [hl]
    and $f0
    ld [hl], a

Jump_002_7682:
    xor a
    ld hl, $c8f8
    or [hl]
    jp nz, Jump_002_770b

    call Call_002_48ab
    ldh a, [$8b]
    ld c, a
    ld a, $f0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_770e


Jump_002_769f:
    ldh a, [$8b]
    ld c, a
    ld a, $6b
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$06
    ld [hl], a
    xor a
    or [hl]
    jp z, Jump_002_770b

    ldh a, [$8b]
    ld b, a
    ld de, $c178
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$00
    ld [hl+], a
    ld [hl], d
    ld a, $78
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, [de]
    ld hl, sp+$06
    add [hl]
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld [de], a
    ldh a, [$8b]
    ld c, a
    ld a, $fc
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld hl, sp+$06
    ld a, [hl]
    ld [de], a
    ld a, $f0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $00
    ld [de], a
    jp Jump_002_770e


Jump_002_76f6:
    ldh a, [$8b]
    ld c, a
    ld a, $6b
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    push af
    inc sp
    call Call_002_4e17
    add sp, $01

Jump_002_770b:
    call Call_002_73b0

Jump_002_770e:
    add sp, $08
    pop bc
    ret


Call_002_7712:
    push bc
    xor a
    ld hl, $c4ce
    or [hl]
    jp z, Jump_002_7731

    ld hl, $c41f
    ld a, [hl]
    ld hl, $cbdb
    ld [hl], a
    ldh a, [rDIV]
    ld c, a
    ld b, $00
    push bc
    call Call_000_3829
    add sp, $02
    jp Jump_002_7762


Jump_002_7731:
    call Call_002_4d71
    call Call_002_4753
    call Call_002_530f
    xor a
    ld hl, $c4cf
    or [hl]
    jp z, Jump_002_774e

    ld hl, $c4d0
    ld a, [hl]
    cp $ff
    jp z, Jump_002_774e

    call Call_002_6f56

Jump_002_774e:
    xor a
    ld hl, $c501
    or [hl]
    jp z, Jump_002_7762

    ld de, $c0e2
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_7762

    call Call_002_6ed8

Jump_002_7762:
    call Call_002_54a1
    xor a
    ld hl, $c4ce
    or [hl]
    jp z, Jump_002_7780

    ld [hl], $00
    ld hl, $cb65
    ld a, [hl]
    cp $03
    jp z, Jump_002_777d

    cp $06
    jp nz, Jump_002_7780

Jump_002_777d:
    call Call_002_7712

Jump_002_7780:
    xor a
    ld hl, $c8f7
    or [hl]
    jp z, Jump_002_778f

    ld [hl], $00
    ld hl, $cb91
    ld [hl], $00

Jump_002_778f:
    pop bc
    ret


Call_002_7791:
    push bc
    call Call_002_4c9c
    ldh a, [$8b]
    ld c, a
    ld a, $04
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    or c
    jp z, Jump_002_77c7

    call Call_002_4e74
    call Call_002_5f28
    call Call_002_4c42
    ld c, e
    xor a
    or c
    jp nz, Jump_002_77c2

    ld a, $00
    ldh [rNR52], a
    ld hl, $c4d3
    ld [hl], $00
    call Call_000_1d23

Jump_002_77c2:
    ld e, $00
    jp Jump_002_77e4


Jump_002_77c7:
    ldh a, [$8b]
    ld c, a
    ld a, $fc
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    cp $ff
    jp z, Jump_002_77e2

    call Call_002_4da9
    ld e, $00
    jp Jump_002_77e4


Jump_002_77e2:
    ld e, $01

Jump_002_77e4:
    pop bc
    ret


    ld hl, $c402
    ld a, [hl]
    cp $04
    jp nz, Jump_002_77f2

    call Call_000_144b

Jump_002_77f2:
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_002_7800

    call Call_002_6d46
    jp Jump_002_784c


Jump_002_7800:
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp z, Jump_002_780e

    cp $03
    jp nz, Jump_002_7813

Jump_002_780e:
    ld hl, $cb68
    ld [hl], $ff

Jump_002_7813:
    xor a
    ld hl, $c4d3
    or [hl]
    jp z, Jump_002_7824

    ld a, [hl]
    cp $04
    jp z, Jump_002_7824

    call Call_002_7b9b

Jump_002_7824:
    xor a
    ld hl, $c8fc
    or [hl]
    jp z, Jump_002_782f

    call Call_000_144b

Jump_002_782f:
    ld hl, $c402
    ld a, [hl]
    ld hl, $c8fc
    ld [hl], a
    ld hl, $c402
    ld [hl], $04
    call Call_002_7b9b
    ld hl, $c8fc
    ld a, [hl]
    ld hl, $c402
    ld [hl], a
    ld hl, $c8fc
    ld [hl], $00

Jump_002_784c:
    ret


Call_002_784d:
    push bc
    add sp, -$0c
    ld hl, $c8fc
    ld a, [hl]
    cp $04
    jp nz, Jump_002_785d

    ld a, $01
    jr jr_002_785e

Jump_002_785d:
    xor a

jr_002_785e:
    ld c, a
    or c
    sub $01
    ld a, $00
    rla
    ld c, a
    xor a
    ld hl, $c8fc
    or [hl]
    jr z, jr_002_786f

    xor a
    or c

jr_002_786f:
    jr z, jr_002_7873

    ld a, $01

jr_002_7873:
    ld c, a
    xor a
    ld hl, $c41b
    or [hl]
    jr z, jr_002_787d

    xor a
    or c

jr_002_787d:
    jr z, jr_002_7881

    ld a, $01

jr_002_7881:
    ld c, a
    ld hl, $cb65
    ld a, [hl]
    or a
    jp nz, Jump_002_788e

    ld a, $01
    jr jr_002_788f

Jump_002_788e:
    xor a

jr_002_788f:
    ld hl, sp+$02
    ld [hl], a
    ld hl, $cb65
    ld a, [hl]
    cp $05
    jp nz, Jump_002_789f

    ld a, $01
    jr jr_002_78a0

Jump_002_789f:
    xor a

jr_002_78a0:
    ld b, a
    xor a
    ld hl, sp+$02
    or [hl]
    jr nz, jr_002_78a9

    xor a
    or b

jr_002_78a9:
    jr z, jr_002_78ad

    ld a, $01

jr_002_78ad:
    ld b, a
    xor a
    or c
    jr z, jr_002_78b4

    xor a
    or b

jr_002_78b4:
    jr z, jr_002_78b8

    ld a, $01

jr_002_78b8:
    ld hl, sp+$0b
    ld [hl], a
    ld a, $00
    ldh [$8b], a

Jump_002_78bf:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_002_7a4f

    ld b, a
    ld de, $c170
    ld l, b
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$09
    ld [hl+], a
    ld [hl], d
    ldh a, [$8b]
    ld c, a
    ld de, $c0e0
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$07
    ld [hl+], a
    ld [hl], d
    ld de, $c168
    ld l, c
    ld h, $00
    add hl, de
    ld a, l
    ld d, h
    ld hl, sp+$05
    ld [hl+], a
    ld [hl], d
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $01
    ld [de], a
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, $c41f
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    bit 7, a
    jp z, Jump_002_7980

    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$04
    ld [hl], a

Jump_002_7925:
    ld hl, sp+$04
    ld a, [hl]
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_0ae5
    ld b, e
    add sp, $02
    ld a, b
    and $80
    ld hl, sp+$02
    ld [hl], a
    or a
    jp z, Jump_002_794d

    xor a
    inc hl
    inc hl
    or [hl]
    jp z, Jump_002_794d

    ld a, [hl]
    add $ff
    ld c, a
    ld [hl], c
    jp Jump_002_7925


Jump_002_794d:
    ldh a, [$8b]
    ld c, a
    ld a, $00
    add c
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    ld hl, sp+$04
    ld a, [hl]
    ld [de], a
    push af
    inc sp
    ldh a, [$8b]
    push af
    inc sp
    call Call_000_0ae5
    ld c, e
    add sp, $02
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    bit 7, a
    jp z, Jump_002_7980

    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    jp Jump_002_7a46


Jump_002_7980:
    ldh a, [$8b]
    ld c, a
    ld a, $7c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld c, a
    ld a, $00
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_002_6e87
    ld c, e
    add sp, $02
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a
    cp $ff
    jp nz, Jump_002_79ba

    ld hl, sp+$07
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, $00
    ld [de], a
    jp Jump_002_7a46


Jump_002_79ba:
    xor a
    ld hl, sp+$0b
    or [hl]
    jp z, Jump_002_7a46

    ld hl, sp+$03
    ld [hl], $01

Jump_002_79c5:
    xor a
    ld hl, $c41b
    ld a, [hl]
    ld hl, sp+$03
    sbc [hl]
    ld a, $00
    rla
    dec hl
    ld [hl], a
    or a
    jp nz, Jump_002_7a0a

    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld hl, sp+$01
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
    call Call_002_6e87
    ld c, e
    add sp, $02
    ld a, c
    cp $ff
    jp nz, Jump_002_79f8

    ld a, $01
    jr jr_002_79f9

Jump_002_79f8:
    xor a

jr_002_79f9:
    ld hl, sp+$00
    ld [hl], a
    or a
    jp nz, Jump_002_7a0a

    ld hl, sp+$03
    ld a, [hl]
    add $01
    ld b, a
    ld [hl], b
    jp Jump_002_79c5


Jump_002_7a0a:
    ld hl, $c41b
    ld c, [hl]
    ld hl, sp+$03
    ld a, [hl]
    push af
    inc sp
    ld a, c
    push af
    inc sp
    call Call_000_375b
    ld c, e
    add sp, $02
    ldh a, [$8b]
    ld b, a
    ld a, $7c
    add b
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, c
    add $ff
    ld [de], a
    ld hl, sp+$09
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [de]
    ld b, a
    ld a, c
    push af
    inc sp
    ld a, b
    push af
    inc sp
    call Call_002_6e87
    ld c, e
    add sp, $02
    ld hl, sp+$05
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, c
    ld [de], a

Jump_002_7a46:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_002_78bf


Jump_002_7a4f:
    add sp, $0c
    pop bc
    ret


Call_002_7a53:
    push bc
    ld hl, $cb65
    ld a, [hl]
    cp $01
    jp nz, Jump_002_7a7b

    ld hl, $cb68
    ld a, [hl]
    cp $ff
    jp nz, Jump_002_7a7b

    ld hl, $c402
    ld a, [hl]
    cp $04
    jp nz, Jump_002_7a73

    ld a, $01
    jr jr_002_7a74

Jump_002_7a73:
    xor a

jr_002_7a74:
    ld hl, $cb6a
    ld [hl], a
    call Call_000_1e7f

Jump_002_7a7b:
    ld hl, $c576
    ld a, [hl]
    bit 7, a
    jp z, Jump_002_7a8f

    ld hl, $c41f
    ld a, [hl]
    ld hl, $cb69
    ld [hl], a
    jp Jump_002_7a97


Jump_002_7a8f:
    ld hl, $cb69
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a

Jump_002_7a97:
    call Call_002_5fa4
    call Call_002_4ea3
    ld hl, $c402
    ld a, [hl]
    cp $03
    jp z, Jump_002_7ab1

    cp $04
    jp nz, Jump_002_7b2f

    call Call_002_784d
    jp Jump_002_7b61


Jump_002_7ab1:
    ld hl, $c41e
    ld c, [hl]
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld a, c
    ld hl, $c94a
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c94b
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ldh [$8b], a
    ld hl, $c419
    ld a, [hl]
    bit 7, a
    jp z, Jump_002_7ae0

    call Call_000_144b

Jump_002_7ae0:
    ld hl, $c41e
    ld c, [hl]
    ld a, $70
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld hl, $c419
    ld a, [hl]
    ld [de], a
    ld hl, $c41e
    ld c, [hl]
    ld a, $7c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld hl, $c41b
    ld a, [hl]
    add $ff
    ld [de], a
    ld c, [hl]
    ld a, c
    push af
    inc sp
    ld hl, $c419
    ld a, [hl]
    push af
    inc sp
    call Call_002_6e87
    ld c, e
    add sp, $02
    ld a, c
    cp $ff
    jp nz, Jump_002_7b61

    ld hl, $c41e
    ld c, [hl]
    ld a, $7c
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld a, $ff
    ld [de], a
    jp Jump_002_7b61


Jump_002_7b2f:
    ld hl, $c41e
    ld c, [hl]
    ld a, $e0
    add c
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, $01
    ld [de], a
    ld a, c
    ld hl, $c94a
    ld [hl], a
    ld hl, $c41f
    ld a, [hl]
    ld hl, $c94b
    ld [hl], a
    ld hl, $c41e
    ld a, [hl]
    ldh [$8b], a
    ld c, a
    ld a, $68
    add c
    ld e, a
    ld a, $c1
    adc $00
    ld d, a
    ld hl, $c415
    ld a, [hl]
    ld [de], a

Jump_002_7b61:
    ld de, $c0f0
    ld a, $00
    ld [de], a
    ld de, $c0f1
    ld [de], a
    ld de, $c0f2
    ld [de], a
    ld de, $c0f3
    ld [de], a
    ld hl, $0080
    push hl
    ld a, $80
    push af
    inc sp
    ld hl, $c250
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $c553
    ld [hl], $00
    ld hl, $c554
    ld [hl], $00
    ld hl, $c402
    ld a, [hl]
    ld hl, $c4d3
    ld [hl], a
    call Call_002_701d
    pop bc
    ret


Call_002_7b9b:
    push bc
    add sp, -$01
    ld hl, $c4d3
    ld c, [hl]
    ld hl, $c41f
    ld a, [hl]
    ld hl, sp+$00
    ld [hl], a
    xor a
    ld hl, $c529
    or [hl]
    jp z, Jump_002_7bb7

    call Call_002_6d31
    jp Jump_002_7c46


Jump_002_7bb7:
    ld a, $00
    ldh [rNR52], a
    ld hl, $c4d3
    ld [hl], $00
    ldh [$8b], a

Jump_002_7bc2:
    ldh a, [$8b]
    cp $04
    jp nc, Jump_002_7be5

    ld b, a
    ld a, $e0
    add b
    ld e, a
    ld a, $c0
    adc $00
    ld d, a
    ld a, [de]
    ld b, a
    or b
    jp z, Jump_002_7bdc

    call Call_002_5f28

Jump_002_7bdc:
    ldh a, [$8b]
    add $01
    ldh [$8b], a
    jp Jump_002_7bc2


Jump_002_7be5:
    ld hl, $0008
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c0e0
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $000c
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c2f0
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0004
    push hl
    ld a, $00
    push af
    inc sp
    ld hl, $c420
    push hl
    call Call_000_3892
    add sp, $05
    ld hl, $0004
    push hl
    ld a, $ff
    push af
    inc sp
    ld hl, $c2fc
    push hl
    call Call_000_3892
    add sp, $05
    call Call_000_307d
    ld hl, $c402
    ld a, [hl]
    cp c
    jr nz, jr_002_7c36

    jp Jump_002_7c3c


jr_002_7c36:
    call Call_002_7a53
    jp Jump_002_7c3f


Jump_002_7c3c:
    call Call_000_1d23

Jump_002_7c3f:
    ld hl, sp+$00
    ld a, [hl]
    ld hl, $c41f
    ld [hl], a

Jump_002_7c46:
    add sp, $01
    pop bc
    ret


Call_002_7c4a:
    push bc
    ldh a, [$8b]
    ld c, a
    ld a, $6b
    add c
    ld e, a
    ld a, $c3
    adc $00
    ld d, a
    ld a, [de]
    ld c, a
    xor a
    ldh a, [$8b]
    sbc a
    jp c, Jump_002_7cb6

    ldh a, [$8b]
    ld e, a
    ld d, $00
    ld hl, $7c6c
    add hl, de
    add hl, de
    add hl, de
    jp hl


    jp Jump_002_7c78


    jp Jump_002_7c85


    jp Jump_002_7c92


    jp Jump_002_7cac


Jump_002_7c78:
    ld hl, $cbbe
    ld [hl], $00
    ld hl, $cbbf
    ld [hl], $00
    jp Jump_002_7cb6


Jump_002_7c85:
    ld hl, $cbc5
    ld [hl], $00
    ld hl, $cbc6
    ld [hl], $00
    jp Jump_002_7cb6


Jump_002_7c92:
    ld a, c
    rl a
    rl a
    rl a
    rl a
    and $f0
    ld c, a
    add a
    cpl
    ld b, a
    add $01
    ld hl, $c8f2
    ld [hl], a
    ld e, $00
    jp Jump_002_7cce


Jump_002_7cac:
    ld hl, $cbcc
    ld [hl], $00
    ld hl, $cbcd
    ld [hl], $00

Jump_002_7cb6:
    ldh a, [$8b]
    ld b, a
    ld a, $d8
    add b
    ld e, a
    ld a, $c2
    adc $00
    ld d, a
    srl c

jr_002_7cc4:
    srl c
    srl c
    srl c
    ld a, c
    ld [de], a
    ld e, $05

Jump_002_7cce:
    pop bc
    ret


    nop
    inc b
    add hl, bc
    db $10
    ld d, $1e
    daa
    jr nc, jr_002_7d11

    ld b, d
    ld c, h
    ld e, b
    ld h, e
    ld l, a
    ld a, e
    add a
    nop
    inc b
    nop
    ld [$0c00], sp
    nop
    stop
    inc d
    nop
    jr jr_002_7ced

jr_002_7ced:
    inc e
    nop
    jr nz, jr_002_7cf1

jr_002_7cf1:
    inc h
    nop
    jr z, jr_002_7cf5

jr_002_7cf5:
    inc l
    nop
    jr nc, jr_002_7cf9

jr_002_7cf9:
    inc [hl]
    nop
    jr c, jr_002_7cfd

jr_002_7cfd:
    inc a
    nop
    ld b, b
    xor e
    ld [bc], a
    adc [hl]
    inc bc
    nop
    inc b
    ld d, l
    dec b
    inc e
    rlca
    nop
    ld [$0aab], sp
    add hl, sp
    ld c, $00

jr_002_7d11:
    db $10
    ld d, l
    dec d
    ld [hl], d
    inc e
    nop
    jr nz, jr_002_7cc4

    ld a, [hl+]
    db $e4
    jr c, jr_002_7d1d

jr_002_7d1d:
    ld b, b
    ld d, l
    ld d, l
    ldh a, [$8f]
    or a
    jp nz, Jump_002_7d33

    ld hl, $c315
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld a, [hl]
    or a
    jp nz, Jump_002_7de8

Jump_002_7d33:
    and $0f
    ld hl, $7cd0
    add l
    ld l, a
    jr nc, jr_002_7d3d

    inc h

jr_002_7d3d:
    ld de, $c324
    ldh a, [$8b]
    add e
    ld e, a
    ld a, [hl]
    ld [de], a
    ldh a, [$8b]
    cp $03
    jp z, Jump_002_7d5b

    ld hl, $c35f
    add l
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_7d5b

    ld hl, $7ce0
    jr jr_002_7d5e

Jump_002_7d5b:
jr_002_7d5b:
    ld hl, $7d00

jr_002_7d5e:
    ldh a, [$8f]
    swap a
    and $0f
    add a
    add l
    jr nc, jr_002_7d69

    inc h

jr_002_7d69:
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c328
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_002_7d8b

    ld hl, $c32c
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_7d8b

    ld a, e
    cpl
    inc a
    ld e, a
    ld a, d
    cpl
    ld d, a

jr_002_7d8b:
    ld hl, $c314
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld a, [hl]
    ld [hl], d
    or a
    ret nz

    ld de, $0000
    ld hl, $c32c
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    or a
    jr nz, jr_002_7db9

    ld de, $8000
    ld hl, $c328
    ldh a, [$8b]
    add l
    ld l, a
    ld a, [hl]
    cp $01
    jr nz, jr_002_7db9

    ld de, $fc00

jr_002_7db9:
    ld hl, $c308
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c328
    ldh a, [$8b]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    swap a
    sla a
    sla a
    ld hl, $c310
    add hl, de
    ld [hl], a
    ldh a, [$8b]
    cp $02
    jr nz, jr_002_7de5

    ld hl, $c320
    xor a
    ld [hl+], a
    ld [hl], a

jr_002_7de5:
    jp Jump_000_1c33


Jump_002_7de8:
    ld hl, $c315
    ldh a, [$8b]
    add a
    add l
    ld l, a
    ld [hl], $00
    ld hl, $c34e
    ldh a, [$8b]
    add l
    ld l, a
    ld [hl], h
    ret


    rrca
    rlca
    ld [$0505], sp
    dec b
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0102
    ld bc, $0102
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

Call_002_7e73:
    ldh a, [$8f]
    swap a
    and $0f
    ld e, a
    ldh a, [$8b]
    cp $01
    jr z, jr_002_7e8d

    jr c, jr_002_7e98

Call_002_7e82:
    xor a
    ld [$cbcc], a
    ld hl, $c2db
    ld c, $21
    jr jr_002_7ea0

Call_002_7e8d:
jr_002_7e8d:
    xor a
    ld [$cbc5], a
    ld hl, $c2d9
    ld c, $17
    jr jr_002_7ea0

Call_002_7e98:
jr_002_7e98:
    ld [$cbbe], a
    ld hl, $c2d8
    ld c, $12

jr_002_7ea0:
    ld a, e
    cp [hl]
    ret z

    jr c, jr_002_7eab

    inc [hl]
    ld a, $08
    ld [c], a
    jr jr_002_7ea0

jr_002_7eab:
    dec [hl]
    ld a, $09
    di
    ld [c], a
    ld a, $11
    ld [c], a
    ld a, $18
    ld [c], a
    ei
    jr jr_002_7ea0

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
