; GEOS KERNAL by Berkeley Softworks
; reverse engineered by Maciej Witkowiak, Michael Steil
;
; Dialog box: YES, NO, OPEN, DISK icons

.include "const.inc"
.include "geossym.inc"
.include "geosmac.inc"
.include "config.inc"
.include "kernal.inc"
.include "c64.inc"

.import DBIcPicCANCEL

.global DBIcPicNO
.global DBIcPicYES
.global DBIcPicOPEN
.global DBIcPicDISK

.segment "dlgbox1k"

DBIcPicNO:
	.byte 5, %11111111, $80+1, %11111110, $db+8, 2, $80+6
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111110
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011, $80+12
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	.byte %10000000, %00000001, %11001100, %01111100, %00000000, %00000011
	.byte %10000000, %00000001, %11001100, %11000110, %00000000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000001, %11101100, %11000110, %00000000, %00000011, $db+8, 2, $80+6
	     ;%10000000, %00000001, %11101100, %11000110, %00000000, %00000011
	.byte %10000000, %00000001, %10111100, %11000110, %00000000, %00000011, $db+8, 2, $80+6
	     ;%10000000, %00000001, %10111100, %11000110, %00000000, %00000011
	.byte %10000000, %00000001, %10011100, %11000110, %00000000, %00000011, $80+6
	     ;%10000000, %00000001, %10011100, %11000110, %00000000, %00000011
	.byte %10000000, %00000001, %10001100, %01111100, %00000000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111111
	     ;%01111111, %11111111, %11111111, %11111111, %11111111, %11111111
	.byte 6, %11111111, $80+1, %01111111, 5, %11111111

DBIcPicYES:
	.byte 5, %11111111, $80+1, %11111110, $db+8, 2, $80+6
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111110
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011, $80+(5*6)
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	.byte %10000000, %00001100, %11001111, %11000111, %11000000, %00000011 ;1
	.byte %10000000, %00001100, %11001100, %00001100, %01100000, %00000011 ;2
	.byte %10000000, %00001100, %11001100, %00001100, %00000000, %00000011 ;3
	.byte %10000000, %00000111, %10001100, %00001100, %00000000, %00000011 ;4
	.byte %10000000, %00000111, %10001111, %10000111, %11000000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000011, %00001100, %00000000, %01100000, %00000011, $80+12
	     ;%10000000, %00000011, %00001100, %00000000, %01100000, %00000011
	.byte %10000000, %00000011, %00001100, %00001100, %01100000, %00000011
	.byte %10000000, %00000011, %00001111, %11000111, %11000000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111111
	     ;%01111111, %11111111, %11111111, %11111111, %11111111, %11111111
	.byte 6, %11111111, $80+1, %01111111, 5, %11111111

DBIcPicOPEN:
	.byte 5, %11111111, $80+1, %11111110, $db+8, 2, $80+6
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111110
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011, $80+(9*6)
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	.byte %10000000, %00111110, %00000000, %00000000, %00000000, %00000011 ;1
	.byte %10000000, %01100011, %00000000, %00000000, %00000000, %00000011 ;2
	.byte %10000000, %01100011, %01111100, %01111001, %11110000, %00000011 ;3
	.byte %10000000, %01100011, %01100110, %11001101, %11011000, %00000011 ;4
	.byte %10000000, %01100011, %01100110, %11001101, %10011000, %00000011 ;5
	.byte %10000000, %01100011, %01100110, %11111101, %10011000, %00000011 ;6
	.byte %10000000, %01100011, %01100110, %11000001, %10011000, %00000011 ;7
	.byte %10000000, %01100011, %01100110, %11001101, %10011000, %00000011 ;8
	.byte %10000000, %00111110, %01111100, %01111001, %10011000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000000, %01100000, %00000000, %00000000, %00000011
	     ;%10000000, %00000000, %01100000, %00000000, %00000000, %00000011
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111111
	     ;%01111111, %11111111, %11111111, %11111111, %11111111, %11111111
	.byte 6, %11111111, $80+1, %01111111, 5, %11111111

DBIcPicDISK:
	.byte 5, %11111111, $80+1, %11111110, $db+8, 2, $80+6
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111110
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011, $80+(9*6)
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	.byte %10000000, %00011111, %00001100, %00000011, %00000000, %00000011 ;1
	.byte %10000000, %00011001, %10000000, %00000011, %00000000, %00000011 ;2
	.byte %10000000, %00011000, %11011100, %11110011, %00110000, %00000011 ;3
	.byte %10000000, %00011000, %11001101, %10011011, %01100000, %00000011 ;4
	.byte %10000000, %00011000, %11001101, %10000011, %11000000, %00000011 ;5
	.byte %10000000, %00011000, %11001100, %11110011, %10000000, %00000011 ;6
	.byte %10000000, %00011000, %11001100, %00011011, %11000000, %00000011 ;7
	.byte %10000000, %00011001, %10001101, %10011011, %01100000, %00000011 ;8
	.byte %10000000, %00011111, %00001100, %11110011, %00110000, %00000011, $db+8, 2, $80+6
	.byte %10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%10000000, %00000000, %00000000, %00000000, %00000000, %00000011
	     ;%11111111, %11111111, %11111111, %11111111, %11111111, %11111111
	     ;%01111111, %11111111, %11111111, %11111111, %11111111, %11111111
	.byte 6, %11111111, $80+1, %01111111
.ifdef bsw128 ; save 2 bytes
.assert * = DBIcPicCANCEL, error, "Code must run into DBIcPicCANCEL"
.else
	.byte 5, %11111111
.endif

