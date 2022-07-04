.MODEL SMALL
.STACK 100h

.DATA
; Vars for getRandomNum
primeOne DW 47
primeTwo DW 13
randNum DB ?   
randRange DB ?

check db 0

score db '0',"$"
timep db 0
window_height dw 1E0h
window_width dw 280h
counter dw 0
a1dead dw 0
a2dead dw 0
a3dead dw 0
a4dead dw 0
a5dead dw 0
a6dead dw 0
a7dead dw 0
a8dead dw 0
a9dead dw 0
a10dead dw 0
a11dead dw 0
a12dead dw 0
a13dead dw 0
a14dead dw 0
a15dead dw 0
a16dead dw 0
a17dead dw 0
a18dead dw 0
a19dead dw 0
a20dead dw 0
a21dead dw 0
; Game vars

totalScore DW 0
moves DW 15
scoreStr db "SCORE:: ","$"
; Vars for displayInitialScreen
NameStr db "Enter Your Name: ","$"
numberCrushMSG db "Number Crush Game","$"
enterLevelMSG db "Enter Level Number: ","$"
playerName db 20 DUP(?)
squareLength dw ?	; x-axis
squareWidth dw ?	; y-axis
initialSquarePixels dw ?

;Strings
userName DB "Name:","$"
userMoves DB "Moves:","$"
userScore DB "Score:","$"
levelScoreMSG DB "Your score for this level is", "$"
thankYouMSG DB "Thank you for playing!", "$"
endScoreMSG DB "Your final score is", "$"
 
;variables for ship 


shipX dw 275
shipY dw 410
shipsize dw 60
shipcolor dw 0c09h
shiphX dw 285
shiphY dw 410
shiphsize dw 40
shiphcolor dw 0c08h


shipzX dw 265
shipzY dw 410
shipzsize dw 20
shipzcolor dw 0c06h


shipz5X dw 293
shipz5Y dw 410
shipz5size dw 24
shipz5color dw 0c00h

shipz2X dw 265
shipz2Y dw 450
shipz2size dw 20
shipz2color dw 0c00h


shipz3X dw 325
shipz3Y dw 450
shipz3size dw 20
shipz3color dw 0c00h

shipz4X dw 325
shipz4Y dw 410
shipz4size dw 20
shipz4color dw 0c06h

 
;variables for drawing alien
                                                              ;alien1

alien1size dw 35
aliencolor1 dw 0c06h
aliencolor2 dw 0c06h
aliencolor3 dw 0c06h
aliencolor4 dw 0c06h
aliencolor5 dw 0c06h
aliencolor6 dw 0c06h
aliencolor7 dw 0c06h
aliencolor8 dw 0c06h
aliencolor9 dw 0c06h
aliencolor10 dw 0c06h
aliencolor11 dw 0c06h
aliencolor12 dw 0c06h
aliencolor13 dw 0c06h
aliencolor14 dw 0c06h
aliencolor15 dw 0c06h
aliencolor16 dw 0c06h
aliencolor17 dw 0c06h
aliencolor18 dw 0c06h
aliencolor19 dw 0c06h
aliencolor20 dw 0c06h
aliencolor21 dw 0c06h



eyesize dw 6
handsize dw 8

headsize dw 7

alien1X dw 110
alien1Y dw 80
a1eye1X dw 117
a1eye1y dw 90
a1eye2X dw 131
a1eye2y dw 90

a1head1X dw 110
a1head1y dw 80
a1head2X dw 139
a1head2y dw 80


a1head3X dw 110
a1head3y dw 110
a1head4X dw 139
a1head4y dw 110



a1hand1X dw 105
a1hand1y dw 75
a1hand2X dw 144
a1hand2y dw 75



a1hand3X dw 105
a1hand3y dw 115
a1hand4X dw 144
a1hand4y dw 115

a1hand5X dw 100
a1hand5y dw 120
a1hand6X dw 149
a1hand6y dw 120

alien2size dw 35
                                                                 ;alien2
alien2X dw 170
alien2Y dw 80


a2eye1X dw 177
a2eye1y dw 90
a2eye2X dw 191
a2eye2y dw 90


a2head1X dw 170
a2head1y dw 80
a2head2X dw 199
a2head2y dw 80


a2head3X dw 170
a2head3y dw 110
a2head4X dw 199
a2head4y dw 110



a2hand1X dw 165
a2hand1y dw 75
a2hand2X dw 204
a2hand2y dw 75



a2hand3X dw 165
a2hand3y dw 115
a2hand4X dw 204
a2hand4y dw 115

a2hand5X dw 160
a2hand5y dw 120
a2hand6X dw 209
a2hand6y dw 120
;alien3
alien3X dw 230
alien3Y dw 80
alien3size dw 35


a3eye1X dw 237
a3eye1y dw 90
a3eye2X dw 251
a3eye2y dw 90


a3head1X dw 230
a3head1y dw 80
a3head2X dw 259
a3head2y dw 80


a3head3X dw 230
a3head3y dw 110
a3head4X dw 259
a3head4y dw 110



a3hand1X dw 225
a3hand1y dw 75
a3hand2X dw 264
a3hand2y dw 75



a3hand3X dw 225
a3hand3y dw 115
a3hand4X dw 264
a3hand4y dw 115

a3hand5X dw 220
a3hand5y dw 120
a3hand6X dw 269
a3hand6y dw 120
;alien4
alien4X dw 290
alien4Y dw 80
alien4size dw 35


a4eye1X dw 297
a4eye1y dw 90
a4eye2X dw 311
a4eye2y dw 90


a4head1X dw 290
a4head1y dw 80
a4head2X dw 319
a4head2y dw 80


a4head3X dw 290
a4head3y dw 110
a4head4X dw 319
a4head4y dw 110



a4hand1X dw 285
a4hand1y dw 75
a4hand2X dw 324
a4hand2y dw 75



a4hand3X dw 285
a4hand3y dw 115
a4hand4X dw 324
a4hand4y dw 115

a4hand5X dw 280
a4hand5y dw 120
a4hand6X dw 329
a4hand6y dw 120

								;alien5
alien5size dw 35
;alien5
alien5X dw 350
alien5Y dw 80


a5eye1X dw 357
a5eye1y dw 90
a5eye2X dw 371
a5eye2y dw 90


a5head1X dw 350
a5head1y dw 80
a5head2X dw 379
a5head2y dw 80


a5head3X dw 350
a5head3y dw 110
a5head4X dw 379
a5head4y dw 110



a5hand1X dw 345
a5hand1y dw 75
a5hand2X dw 384
a5hand2y dw 75



a5hand3X dw 345
a5hand3y dw 115
a5hand4X dw 384
a5hand4y dw 115

a5hand5X dw 340
a5hand5y dw 120
a5hand6X dw 389
a5hand6y dw 120
alien6size dw 35
;alien6
alien6X dw 410
alien6Y dw 80


a6eye1X dw 417
a6eye1y dw 90
a6eye2X dw 431
a6eye2y dw 90


a6head1X dw 410
a6head1y dw 80
a6head2X dw 439
a6head2y dw 80


a6head3X dw 410
a6head3y dw 110
a6head4X dw 439
a6head4y dw 110



a6hand1X dw 405
a6hand1y dw 75
a6hand2X dw 444
a6hand2y dw 75



a6hand3X dw 405
a6hand3y dw 115
a6hand4X dw 444
a6hand4y dw 115

a6hand5X dw 400
a6hand5y dw 120
a6hand6X dw 449
a6hand6y dw 120

alien7size dw 35
;alien7
alien7X dw 470
alien7Y dw 80


a7eye1X dw 477
a7eye1y dw 90
a7eye2X dw 491
a7eye2y dw 90


a7head1X dw 470
a7head1y dw 80
a7head2X dw 499
a7head2y dw 80


a7head3X dw 470
a7head3y dw 110
a7head4X dw 499
a7head4y dw 110



a7hand1X dw 465
a7hand1y dw 75
a7hand2X dw 505
a7hand2y dw 75



a7hand3X dw 465
a7hand3y dw 115
a7hand4X dw 505
a7hand4y dw 115

a7hand5X dw 460
a7hand5y dw 120
a7hand6X dw 510
a7hand6y dw 120
alien8size dw 35
;alien8
alien8X dw 230
alien8Y dw 140


a8eye1X dw 237
a8eye1y dw 150
a8eye2X dw 251
a8eye2y dw 150


a8head1X dw 230
a8head1y dw 140
a8head2X dw 259
a8head2y dw 140


a8head3X dw 230
a8head3y dw 170
a8head4X dw 259
a8head4y dw 170



a8hand1X dw 225
a8hand1y dw 135
a8hand2X dw 264
a8hand2y dw 135



a8hand3X dw 225
a8hand3y dw 175
a8hand4X dw 264
a8hand4y dw 175

a8hand5X dw 220
a8hand5y dw 180
a8hand6X dw 269
a8hand6y dw 180
alien9size dw 35
;alien9
alien9X dw 290
alien9Y dw 140


a9eye1X dw 297
a9eye1y dw 150
a9eye2X dw 311
a9eye2y dw 150


a9head1X dw 290
a9head1y dw 140
a9head2X dw 319
a9head2y dw 140


a9head3X dw 290
a9head3y dw 170
a9head4X dw 319
a9head4y dw 170



a9hand1X dw 285
a9hand1y dw 135
a9hand2X dw 324
a9hand2y dw 135



a9hand3X dw 285
a9hand3y dw 175
a9hand4X dw 324
a9hand4y dw 175

a9hand5X dw 280
a9hand5y dw 180
a9hand6X dw 329
a9hand6y dw 180
alien10size dw 35
;alien10
alien10X dw 350
alien10Y dw 140


a10eye1X dw 357
a10eye1y dw 150
a10eye2X dw 371
a10eye2y dw 150


a10head1X dw 350
a10head1y dw 140
a10head2X dw 379
a10head2y dw 140


a10head3X dw 350
a10head3y dw 170
a10head4X dw 379
a10head4y dw 170



a10hand1X dw 345
a10hand1y dw 135
a10hand2X dw 384
a10hand2y dw 135



a10hand3X dw 345
a10hand3y dw 175
a10hand4X dw 384
a10hand4y dw 175

a10hand5X dw 340
a10hand5y dw 180
a10hand6X dw 389
a10hand6y dw 180


alien11X dw 110
alien11Y dw 200


a11eye1X dw 117
a11eye1y dw 210
a11eye2X dw 131
a11eye2y dw 210

a11head1X dw 110
a11head1y dw 200
a11head2X dw 139
a11head2y dw 200


a11head3X dw 110
a11head3y dw 230
a11head4X dw 139
a11head4y dw 230



a11hand1X dw 105
a11hand1y dw 195
a11hand2X dw 144
a11hand2y dw 195



a11hand3X dw 105
a11hand3y dw 235
a11hand4X dw 144
a11hand4y dw 235

a11hand5X dw 100
a11hand5y dw 240
a11hand6X dw 149
a11hand6y dw 240


alien12size dw 35

alien12X dw 170
alien12Y dw 200


a12eye1X dw 177
a12eye1y dw 210
a12eye2X dw 191
a12eye2y dw 210


a12head1X dw 170
a12head1y dw 200
a12head2X dw 199
a12head2y dw 200


a12head3X dw 170
a12head3y dw 230
a12head4X dw 199
a12head4y dw 230



a12hand1X dw 165
a12hand1y dw 195
a12hand2X dw 204
a12hand2y dw 195



a12hand3X dw 165
a12hand3y dw 235
a12hand4X dw 204
a12hand4y dw 235

a12hand5X dw 160
a12hand5y dw 240
a12hand6X dw 209
a12hand6y dw 240
alien13size dw 35
;alien13
alien13X dw 230
alien13Y dw 200


a13eye1X dw 237
a13eye1y dw 210
a13eye2X dw 251
a13eye2y dw 210


a13head1X dw 230
a13head1y dw 200
a13head2X dw 259
a13head2y dw 200


a13head3X dw 230
a13head3y dw 230
a13head4X dw 259
a13head4y dw 230



a13hand1X dw 225
a13hand1y dw 195
a13hand2X dw 264
a13hand2y dw 195



a13hand3X dw 225
a13hand3y dw 235
a13hand4X dw 264
a13hand4y dw 235

a13hand5X dw 220
a13hand5y dw 240
a13hand6X dw 269
a13hand6y dw 240
alien14size dw 35
;alien14
alien14X dw 290
alien14Y dw 200


a14eye1X dw 297
a14eye1y dw 210
a14eye2X dw 311
a14eye2y dw 210


a14head1X dw 290
a14head1y dw 200
a14head2X dw 319
a14head2y dw 200


a14head3X dw 290
a14head3y dw 230
a14head4X dw 319
a14head4y dw 230



a14hand1X dw 285
a14hand1y dw 195
a14hand2X dw 324
a14hand2y dw 195



a14hand3X dw 285
a14hand3y dw 235
a14hand4X dw 324
a14hand4y dw 235

a14hand5X dw 280
a14hand5y dw 240
a14hand6X dw 329
a14hand6y dw 240

								;alien15
alien15size dw 35
;alien15
alien15X dw 350
alien15Y dw 200


a15eye1X dw 357
a15eye1y dw 210
a15eye2X dw 371
a15eye2y dw 210


a15head1X dw 350
a15head1y dw 200
a15head2X dw 379
a15head2y dw 200


a15head3X dw 350
a15head3y dw 230
a15head4X dw 379
a15head4y dw 230



a15hand1X dw 345
a15hand1y dw 195
a15hand2X dw 384
a15hand2y dw 195



a15hand3X dw 345
a15hand3y dw 235
a15hand4X dw 384
a15hand4y dw 235

a15hand5X dw 340
a15hand5y dw 240
a15hand6X dw 389
a15hand6y dw 240
alien16size dw 35
;alien16
alien16X dw 410
alien16Y dw 200


a16eye1X dw 417
a16eye1y dw 210
a16eye2X dw 431
a16eye2y dw 210


a16head1X dw 410
a16head1y dw 200
a16head2X dw 439
a16head2y dw 200


a16head3X dw 410
a16head3y dw 230
a16head4X dw 439
a16head4y dw 230



a16hand1X dw 405
a16hand1y dw 195
a16hand2X dw 444
a16hand2y dw 195



a16hand3X dw 405
a16hand3y dw 235
a16hand4X dw 444
a16hand4y dw 235

a16hand5X dw 400
a16hand5y dw 240
a16hand6X dw 449
a16hand6y dw 240

alien17size dw 35
;alien17
alien17X dw 470
alien17Y dw 200


a17eye1X dw 477
a17eye1y dw 210
a17eye2X dw 491
a17eye2y dw 210


a17head1X dw 470
a17head1y dw 200
a17head2X dw 499
a17head2y dw 200


a17head3X dw 470
a17head3y dw 230
a17head4X dw 499
a17head4y dw 230



a17hand1X dw 465
a17hand1y dw 195
a17hand2X dw 504
a17hand2y dw 195



a17hand3X dw 465
a17hand3y dw 235
a17hand4X dw 504
a17hand4y dw 235

a17hand5X dw 460
a17hand5y dw 240
a17hand6X dw 509
a17hand6y dw 240
alien18size dw 35
;alien18
alien18X dw 230
alien18Y dw 260


a18eye1X dw 237
a18eye1y dw 270
a18eye2X dw 251
a18eye2y dw 270


a18head1X dw 230
a18head1y dw 260
a18head2X dw 259
a18head2y dw 260


a18head3X dw 230
a18head3y dw 290
a18head4X dw 259
a18head4y dw 290



a18hand1X dw 225
a18hand1y dw 255
a18hand2X dw 264
a18hand2y dw 255



a18hand3X dw 225
a18hand3y dw 295
a18hand4X dw 264
a18hand4y dw 295

a18hand5X dw 220
a18hand5y dw 300
a18hand6X dw 269
a18hand6y dw 300
alien19size dw 35
;alien19
alien19X dw 290
alien19Y dw 260


a19eye1X dw 297
a19eye1y dw 270
a19eye2X dw 311
a19eye2y dw 270


a19head1X dw 290
a19head1y dw 260
a19head2X dw 319
a19head2y dw 260


a19head3X dw 290
a19head3y dw 290
a19head4X dw 319
a19head4y dw 290



a19hand1X dw 285
a19hand1y dw 255
a19hand2X dw 324
a19hand2y dw 255



a19hand3X dw 285
a19hand3y dw 295
a19hand4X dw 324
a19hand4y dw 295

a19hand5X dw 280
a19hand5y dw 300
a19hand6X dw 329
a19hand6y dw 300
alien20size dw 35
;alien20
alien20X dw 350
alien20Y dw 260


a20eye1X dw 357
a20eye1y dw 270
a20eye2X dw 371
a20eye2y dw 270


a20head1X dw 350
a20head1y dw 260
a20head2X dw 379
a20head2y dw 260


a20head3X dw 350
a20head3y dw 290
a20head4X dw 379
a20head4y dw 290



a20hand1X dw 345
a20hand1y dw 255
a20hand2X dw 384
a20hand2y dw 255



a20hand3X dw 345
a20hand3y dw 295
a20hand4X dw 384
a20hand4y dw 295

a20hand5X dw 340
a20hand5y dw 300
a20hand6X dw 389
a20hand6y dw 300





;variables for bullet
bulletX dw 300											;275
bulletY dw 450											;410
sbulletY dw 450
bulletsize dw 5
Bspeed dw 10
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;<<< MAIN >>>;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
.CODE
main proc
  
    mov AX, @data
    mov DS, AX
		call CSCREEN		
	call displayInitialScreen	; Ask player name and starting level number
			mov randRange,3
			call game
	        call game2          
    exitMain::
    mov AH, 4Ch
    int 21h
	
main endp
game2 proc
mov shiphcolor,0c04h
call reset
chktime:


	mov ah,2ch
	int 21h
	cmp dh,timep
	je chktime
	mov timep,dh
	call CSCREEN
	call movealien
	call drawalien
	
	call shoot
	call drawbullet
	call moveship
	call drawship
	
	
	call show_score
    call displayscore
	call hitalien1
	call hitalien2
	call hitalien3
	call hitalien4
	call hitalien5
	call hitalien6
	call hitalien7
	call hitalien8
	call hitalien9
	call hitalien10
	call hitalien11
	call hitalien12
	call hitalien13
	call hitalien14
	call hitalien15
	call hitalien16
	call hitalien17
	call hitalien18
	call hitalien19
	call hitalien20
	
	jmp chktime

	exi:	

ret
game2 endp
reset proc
mov a1dead ,0
mov a2dead ,0
mov a3dead ,0
mov a4dead ,0
mov a5dead ,0
mov a6dead ,0
mov a7dead ,0
mov a8dead ,0
mov a9dead ,0
mov a10dead ,0
mov a11dead ,0
mov a12dead ,0
mov a13dead ,0
mov a14dead ,0
mov a15dead ,0
mov a16dead ,0
mov a17dead ,0
mov a18dead ,0
mov a19dead ,0
mov a20dead ,0
mov a21dead ,0
mov alien1X,110
mov alien1Y,80
mov a1eye1X,117
mov a1eye1y,90
mov a1eye2X,131
mov a1eye2y,90
mov a1head1X,110
mov a1head1y,80
mov a1head2X ,139
mov a1head2y,80
mov a1head3X ,110
mov a1head3y ,110
mov a1head4X ,139
mov a1head4y ,110
mov a1hand1X,105
mov a1hand1y,75
mov a1hand2X,144
mov a1hand2y,75
mov a1hand3X,105
mov a1hand3y,115
mov a1hand4X,144
mov a1hand4y,115
mov a1hand5X,100
mov a1hand5y,120
mov a1hand6X,149
mov a1hand6y,120

mov alien2X ,170
mov alien2Y,80
mov a2eye1X ,177
mov a2eye1y,90
mov a2eye2X,191
mov a2eye2y ,90
mov a2head1X ,170
mov a2head1y,80
mov a2head2X ,199
mov a2head2y,80
mov a2head3X ,170
mov a2head3y ,110
mov a2head4X ,199
mov a2head4y ,110
mov a2hand1X ,165
mov a2hand1y,75
mov a2hand2X ,204
mov a2hand2y,75
mov a2hand3X ,165
mov a2hand3y ,115
mov a2hand4X ,204
mov a2hand4y ,115
mov a2hand5X ,160
mov a2hand5y ,120
mov a2hand6X ,209
mov a2hand6y ,120

mov alien3X ,230
mov alien3Y ,80
mov a3eye1X ,237
mov a3eye1y ,90
mov a3eye2X ,251
mov a3eye2y,90
mov a3head1X,230
mov a3head1y,80
mov a3head2X,259
mov a3head2y,80
mov a3head3X,230
mov a3head3y,110
mov a3head4X,259
mov a3head4y,110
mov a3hand1X ,225
mov a3hand1y,75
mov a3hand2X ,264
mov a3hand2y,75
mov a3hand3X ,225
mov a3hand3y ,115
mov a3hand4X ,264
mov a3hand4y ,115
mov a3hand5X ,220
mov a3hand5y ,120
mov a3hand6X ,269
mov a3hand6y ,120


mov alien4X ,290
mov alien4Y,80
mov a4eye1X ,297
mov a4eye1y,90
mov a4eye2X ,311
mov a4eye2y,90
mov a4head1X ,290
mov a4head1y,80
mov a4head2X ,319
mov a4head2y,80
mov a4head3X ,290
mov a4head3y ,110
mov a4head4X ,319
mov a4head4y ,110
mov a4hand1X ,285
mov a4hand1y,75
mov a4hand2X ,324
mov a4hand2y,75
mov a4hand3X ,285
mov a4hand3y ,115
mov a4hand4X ,324
mov a4hand4y ,115
mov a4hand5X ,280
mov a4hand5y ,120
mov a4hand6X ,329
mov a4hand6y ,120


mov alien5X ,350
mov alien5Y ,80
mov a5eye1X ,357
mov a5eye1y ,90
mov a5eye2X ,371
mov a5eye2y ,90
mov a5head1X,350
mov a5head1y,80
mov a5head2X,379
mov a5head2y,80
mov a5head3X,350
mov a5head3y,110
mov a5head4X,379
mov a5head4y,110
mov a5hand1X,345
mov a5hand1y,75
mov a5hand2X,384
mov a5hand2y,75
mov a5hand3X,345
mov a5hand3y,115
mov a5hand4X,384
mov a5hand4y,115
mov a5hand5X,340
mov a5hand5y,120
mov a5hand6X,389
mov a5hand6y,120




mov alien6X ,410
mov alien6Y ,80
mov a6eye1X ,417
mov a6eye1y ,90
mov a6eye2X ,431
mov a6eye2y ,90
mov a6head1X,410
mov a6head1y,80
mov a6head2X,439
mov a6head2y,80
mov a6head3X,410
mov a6head3y,110
mov a6head4X,439
mov a6head4y,110
mov a6hand1X,405
mov a6hand1y,75
mov a6hand2X,444
mov a6hand2y,75
mov a6hand3X,405
mov a6hand3y,115
mov a6hand4X,444
mov a6hand4y,115
mov a6hand5X,400
mov a6hand5y,120
mov a6hand6X,449
mov a6hand6y,120



mov alien7X ,470
mov alien7Y ,80
mov a7eye1X ,477
mov a7eye1y ,90
mov a7eye2X ,491
mov a7eye2y ,90
mov a7head1X,470
mov a7head1y,80
mov a7head2X,499
mov a7head2y,80
mov a7head3X,470
mov a7head3y,110
mov a7head4X,499
mov a7head4y,110
mov a7hand1X,465
mov a7hand1y,75
mov a7hand2X,505
mov a7hand2y,75
mov a7hand3X,465
mov a7hand3y,115
mov a7hand4X,505
mov a7hand4y,115
mov a7hand5X,460
mov a7hand5y,120
mov a7hand6X,510
mov a7hand6y,120



mov alien8X ,230
mov alien8Y ,140
mov a8eye1X ,237
mov a8eye1y ,150
mov a8eye2X ,251
mov a8eye2y ,150
mov a8head1X,230
mov a8head1y,140
mov a8head2X,259
mov a8head2y,140
mov a8head3X,230
mov a8head3y,170
mov a8head4X,259
mov a8head4y,170
mov a8hand1X,225
mov a8hand1y,135
mov a8hand2X,264
mov a8hand2y,135
mov a8hand3X,225
mov a8hand3y,175
mov a8hand4X,264
mov a8hand4y,175
mov a8hand5X,220
mov a8hand5y,180
mov a8hand6X,269
mov a8hand6y,180





mov alien9X ,290
mov alien9Y ,140
mov a9eye1X ,297
mov a9eye1y ,150
mov a9eye2X ,311
mov a9eye2y ,150
mov a9head1X ,290
mov a9head1y ,140
mov a9head2X ,319
mov a9head2y ,140
mov a9head3X ,290
mov a9head3y ,170
mov a9head4X ,319
mov a9head4y ,170
mov a9hand1X ,285
mov a9hand1y ,135
mov a9hand2X ,324
mov a9hand2y ,135
mov a9hand3X ,285
mov a9hand3y ,175
mov a9hand4X ,324
mov a9hand4y ,175
mov a9hand5X ,280
mov a9hand5y ,180
mov a9hand6X ,329
mov a9hand6y ,180










mov alien10X ,350
mov alien10Y ,140
mov a10eye1X ,357
mov a10eye1y ,150
mov a10eye2X ,371
mov a10eye2y ,150
mov a10head1X,350
mov a10head1y,140
mov a10head2X,379
mov a10head2y,140
mov a10head3X,350
mov a10head3y,170
mov a10head4X,379
mov a10head4y,170
mov a10hand1X,345
mov a10hand1y,135
mov a10hand2X,384
mov a10hand2y,135
mov a10hand3X,345
mov a10hand3y,175
mov a10hand4X,384
mov a10hand4y,175
mov a10hand5X,340
mov a10hand5y,180
mov a10hand6X,389
mov a10hand6y,180


mov alien11X ,110
mov alien11Y ,200
mov a11eye1X ,117
mov a11eye1y ,210
mov a11eye2X ,131
mov a11eye2y ,210
mov a11head1X,110
mov a11head1y,200
mov a11head2X,139
mov a11head2y,200
mov a11head3X,110
mov a11head3y,230
mov a11head4X,139
mov a11head4y,230
mov a11hand1X,105
mov a11hand1y,195
mov a11hand2X,144
mov a11hand2y,195
mov a11hand3X,105
mov a11hand3y,235
mov a11hand4X,144
mov a11hand4y,235
mov a11hand5X,100
mov a11hand5y,240
mov a11hand6X,149
mov a11hand6y,240



mov alien12X ,170
mov alien12Y ,200
mov a12eye1X ,177
mov a12eye1y ,210
mov a12eye2X ,191
mov a12eye2y ,210
mov a12head1X,170
mov a12head1y,200
mov a12head2X,199
mov a12head2y,200
mov a12head3X,170
mov a12head3y,230
mov a12head4X,199
mov a12head4y,230
mov a12hand1X,165
mov a12hand1y,195
mov a12hand2X,204
mov a12hand2y,195
mov a12hand3X,165
mov a12hand3y,235
mov a12hand4X,204
mov a12hand4y,235
mov a12hand5X,160
mov a12hand5y,240
mov a12hand6X,209
mov a12hand6y,240


mov alien13X ,230
mov alien13Y ,200
mov a13eye1X ,237
mov a13eye1y ,210
mov a13eye2X ,251
mov a13eye2y ,210
mov a13head1X,230
mov a13head1y,200
mov a13head2X,259
mov a13head2y,200
mov a13head3X,230
mov a13head3y,230
mov a13head4X,259
mov a13head4y,230
mov a13hand1X,225
mov a13hand1y,195
mov a13hand2X,264
mov a13hand2y,195
mov a13hand3X,225
mov a13hand3y,235
mov a13hand4X,264
mov a13hand4y,235
mov a13hand5X,220
mov a13hand5y,240
mov a13hand6X,269
mov a13hand6y,240


mov alien14X ,290
mov alien14Y ,200
mov a14eye1X ,297
mov a14eye1y ,210
mov a14eye2X ,311
mov a14eye2y ,210
mov a14head1X,290
mov a14head1y,200
mov a14head2X,319
mov a14head2y,200
mov a14head3X,290
mov a14head3y,230
mov a14head4X,319
mov a14head4y,230
mov a14hand1X,285
mov a14hand1y,195
mov a14hand2X,324
mov a14hand2y,195
mov a14hand3X,285
mov a14hand3y,235
mov a14hand4X,324
mov a14hand4y,235
mov a14hand5X,280
mov a14hand5y,240
mov a14hand6X,329
mov a14hand6y,240


mov alien15X ,350
mov alien15Y ,200
mov a15eye1X ,357
mov a15eye1y ,210
mov a15eye2X ,371
mov a15eye2y ,210
mov a15head1X,350
mov a15head1y,200
mov a15head2X,379
mov a15head2y,200
mov a15head3X,350
mov a15head3y,230
mov a15head4X,379
mov a15head4y,230
mov a15hand1X,345
mov a15hand1y,195
mov a15hand2X,384
mov a15hand2y,195
mov a15hand3X,345
mov a15hand3y,235
mov a15hand4X,384
mov a15hand4y,235
mov a15hand5X,340
mov a15hand5y,240
mov a15hand6X,389
mov a15hand6y,240


mov alien16X ,410
mov alien16Y ,200
mov a16eye1X ,417
mov a16eye1y ,210
mov a16eye2X ,431
mov a16eye2y ,210
mov a16head1X,410
mov a16head1y,200
mov a16head2X,439
mov a16head2y,200
mov a16head3X,410
mov a16head3y,230
mov a16head4X,439
mov a16head4y,230
mov a16hand1X,405
mov a16hand1y,195
mov a16hand2X,444
mov a16hand2y,195
mov a16hand3X,405
mov a16hand3y,235
mov a16hand4X,444
mov a16hand4y,235
mov a16hand5X,400
mov a16hand5y,240
mov a16hand6X,449
mov a16hand6y,240


mov alien17X ,470
mov alien17Y ,200
mov a17eye1X ,477
mov a17eye1y ,210
mov a17eye2X ,491
mov a17eye2y ,210
mov a17head1X,470
mov a17head1y,200
mov a17head2X,499
mov a17head2y,200
mov a17head3X,470
mov a17head3y,230
mov a17head4X,499
mov a17head4y,230
mov a17hand1X,465
mov a17hand1y,195
mov a17hand2X,504
mov a17hand2y,195
mov a17hand3X,465
mov a17hand3y,235
mov a17hand4X,504
mov a17hand4y,235
mov a17hand5X,460
mov a17hand5y,240
mov a17hand6X,509
mov a17hand6y,240


mov alien18X ,230
mov alien18Y ,260
mov a18eye1X ,237
mov a18eye1y ,270
mov a18eye2X ,251
mov a18eye2y ,270
mov a18head1X,230
mov a18head1y,260
mov a18head2X,259
mov a18head2y,260
mov a18head3X,230
mov a18head3y,290
mov a18head4X,259
mov a18head4y,290
mov a18hand1X,225
mov a18hand1y,255
mov a18hand2X,264
mov a18hand2y,255
mov a18hand3X,225
mov a18hand3y,295
mov a18hand4X,264
mov a18hand4y,295
mov a18hand5X,220
mov a18hand5y,300
mov a18hand6X,269
mov a18hand6y,300



mov alien19X ,290
mov alien19Y ,260
mov a19eye1X ,297
mov a19eye1y ,270
mov a19eye2X ,311
mov a19eye2y ,270
mov a19head1X,290
mov a19head1y,260
mov a19head2X,319
mov a19head2y,260
mov a19head3X,290
mov a19head3y,290
mov a19head4X,319
mov a19head4y,290
mov a19hand1X,285
mov a19hand1y,255
mov a19hand2X,324
mov a19hand2y,255
mov a19hand3X,285
mov a19hand3y,295
mov a19hand4X,324
mov a19hand4y,295
mov a19hand5X,280
mov a19hand5y,300
mov a19hand6X,329
mov a19hand6y,300



mov alien20X ,350
mov alien20Y ,260
mov a20eye1X ,357
mov a20eye1y ,270
mov a20eye2X ,371
mov a20eye2y ,270
mov a20head1X,350
mov a20head1y,260
mov a20head2X,379
mov a20head2y,260
mov a20head3X,350
mov a20head3y,290
mov a20head4X,379
mov a20head4y,290
mov a20hand1X,345
mov a20hand1y,255
mov a20hand2X,384
mov a20hand2y,255
mov a20hand3X,345
mov a20hand3y,295
mov a20hand4X,384
mov a20hand4y,295
mov a20hand5X,340
mov a20hand5y,300
mov a20hand6X,389
mov a20hand6y,300

ret

reset endp
movealien proc



mov ax,10
cmp a7hand6X,620
jg doi


add alien1X ,ax
add a1eye1X ,ax
add a1eye2X ,ax
add a1head1X ,ax
add a1head2X ,ax
add a1head3X ,ax
add a1head4X ,ax
add a1hand1X,ax 
add a1hand2X,ax 
add a1hand3X,ax 
add a1hand4X,ax 
add a1hand5X,ax 
add a1hand6X,ax 
add alien2X ,ax
add a2eye1X ,ax
add a2eye2X,ax
add a2head1X ,ax
add a2head2X ,ax
add a2head3X ,ax
add a2head4X ,ax
add a2hand1X ,ax
add a2hand2X ,ax
add a2hand3X ,ax
add a2hand4X ,ax
add a2hand5X ,ax
add a2hand6X ,ax

add alien3X ,ax
add a3eye1X ,ax
add a3eye2X ,ax
add a3head1X,ax
add a3head2X,ax
add a3head3X,ax
add a3head4X,ax
add a3hand1X ,ax
add a3hand2X ,ax
add a3hand3X ,ax
add a3hand4X ,ax
add a3hand5X ,ax
add a3hand6X ,ax
add alien4X ,ax
add a4eye1X ,ax
add a4eye2X ,ax
add a4head1X ,ax
add a4head2X ,ax
add a4head3X ,ax
add a4head4X ,ax
add a4hand1X ,ax
add a4hand2X ,ax
add a4hand3X ,ax
add a4hand4X ,ax
add a4hand5X ,ax
add a4hand6X ,ax
add alien5X ,ax                                        ;
add a5eye1X ,ax                          
add a5eye2X ,ax                          
add a5head1X,ax                          
add a5head2X,ax                          
add a5head3X,ax                          
add a5head4X,ax                                         ;
add a5hand1X,ax                          
add a5hand2X,ax                          
add a5hand3X,ax                          
add a5hand4X,ax                                         ;
add a5hand5X,ax                          
add a5hand6X,ax                          
add alien6X ,ax                          
add a6eye1X ,ax                          
add a6eye2X ,ax                          
add a6head1X,ax                          
add a6head2X,ax                          
add a6head3X,ax                          
add a6head4X,ax                                             ;
add a6hand1X,ax                          
add a6hand2X,ax                          
add a6hand3X,ax                          
add a6hand4X,ax                                          ;5,ax                          ;
add a6hand5X,ax
add a6hand6X,ax                              
add alien7X ,ax                          
add a7eye1X ,ax                         
add a7eye2X ,ax                          
add a7head1X,ax                          
add a7head2X,ax                          
add a7head3X,ax                          
add a7head4X,ax                                          ;
add a7hand1X,ax                   
add a7hand2X,ax                   
add a7hand3X,ax                   
add a7hand4X,ax                                ;
add a7hand5X,ax                   
add a7hand6X,ax 
jmp next



doi:
mov ax,200
sub alien1X ,ax
sub a1eye1X ,ax
sub a1eye2X ,ax
sub a1head1X ,ax
sub a1head2X ,ax
sub a1head3X ,ax
sub a1head4X ,ax
sub a1hand1X,ax 
sub a1hand2X,ax 
sub a1hand3X,ax 
sub a1hand4X,ax 
sub a1hand5X,ax 
sub a1hand6X,ax 
sub alien2X ,ax
sub a2eye1X ,ax
sub a2eye2X,ax
sub a2head1X ,ax
sub a2head2X ,ax
sub a2head3X ,ax
sub a2head4X ,ax
sub a2hand1X ,ax
sub a2hand2X ,ax
sub a2hand3X ,ax
sub a2hand4X ,ax
sub a2hand5X ,ax
sub a2hand6X ,ax
sub alien3X ,ax
sub a3eye1X ,ax
sub a3eye2X ,ax
sub a3head1X,ax
sub a3head2X,ax
sub a3head3X,ax
sub a3head4X,ax
sub a3hand1X ,ax
sub a3hand2X ,ax
sub a3hand3X ,ax
sub a3hand4X ,ax
sub a3hand5X ,ax
sub a3hand6X ,ax
sub alien4X ,ax
sub a4eye1X ,ax
sub a4eye2X ,ax
sub a4head1X ,ax
sub a4head2X ,ax
sub a4head3X ,ax
sub a4head4X ,ax
sub a4hand1X ,ax
sub a4hand2X ,ax
sub a4hand3X ,ax
sub a4hand4X ,ax
sub a4hand5X ,ax
sub a4hand6X ,ax
sub alien5X ,ax                                        ;
sub a5eye1X ,ax                          
sub a5eye2X ,ax                          
sub a5head1X,ax                          
sub a5head2X,ax                          
sub a5head3X,ax                          
sub a5head4X,ax                                         ;
sub a5hand1X,ax                          
sub a5hand2X,ax                          
sub a5hand3X,ax                          
sub a5hand4X,ax                                         ;
sub a5hand5X,ax                          
sub a5hand6X,ax                          
sub alien6X ,ax                          
sub a6eye1X ,ax                          
sub a6eye2X ,ax                          
sub a6head1X,ax                          
sub a6head2X,ax                          
sub a6head3X,ax                          
sub a6head4X,ax                                             ;
sub a6hand1X,ax                          
sub a6hand2X,ax                          
sub a6hand3X,ax                          
sub a6hand4X,ax                                          ;5,ax                          ;
sub a6hand5X,ax    
sub a6hand6X,ax                          
sub alien7X ,ax                          
sub a7eye1X ,ax                         
sub a7eye2X ,ax                          
sub a7head1X,ax                          
sub a7head2X,ax                          
sub a7head3X,ax                          
sub a7head4X,ax                                          ;
sub a7hand1X,ax                   
sub a7hand2X,ax                   
sub a7hand3X,ax                   
sub a7hand4X,ax                                ;
sub a7hand5X,ax                   
sub a7hand6X,ax

next:
cmp a8hand5X,20
jl din
jmp sub1
sub1:
mov ax,10
sub alien8X ,ax                          ;;
sub a8eye1X ,ax                          ;
sub a8eye2X ,ax                          ;;
sub a8head1X,ax                          ;0;0
sub a8head2X,ax                          ;9;0,ax                          ;
sub a8head3X,ax                          ;0;0
sub a8head4X,ax                          ;9;0,ax                          ;
sub a8hand1X,ax                          ;5;5
sub a8hand2X,ax                          ;4;5,ax                          ;
sub a8hand3X,ax                          ;5;5
sub a8hand4X,ax                          ;4;5,ax                          ;
sub a8hand5X,ax                          ;0;0
sub a8hand6X,ax                  ;9;0
sub alien9X ,ax                  ;;
sub a9eye1X ,ax                  ;;
sub a9eye2X ,ax                                   ;
sub a9head1X ,ax
sub a9head2X ,ax
sub a9head3X ,ax
sub a9head4X ,ax
sub a9hand1X ,ax
sub a9hand2X ,ax
sub a9hand3X ,ax
sub a9hand4X ,ax
sub a9hand5X ,ax
sub a9hand6X ,ax
sub alien10X ,ax
sub a10eye1X ,ax
sub a10eye2X ,ax
sub a10head1X,ax
sub a10head2X,ax
sub a10head3X,ax
sub a10head4X,ax
sub a10hand1X,ax
sub a10hand2X,ax
sub a10hand3X,ax
sub a10hand4X,ax
sub a10hand5X,ax
sub a10hand6X,ax
jmp next2
din:
mov ax,420
add alien8X ,ax                          ;;
add a8eye1X ,ax                          ;
add a8eye2X ,ax                          ;;
add a8head1X,ax                          ;0;0
add a8head2X,ax                          ;9;0,ax                          ;
add a8head3X,ax                          ;0;0
add a8head4X,ax                          ;9;0,ax                          ;
add a8hand1X,ax                          ;5;5
add a8hand2X,ax                          ;4;5,ax                          ;
add a8hand3X,ax                          ;5;5
add a8hand4X,ax                          ;4;5,ax                          ;
add a8hand5X,ax                          ;0;0
add a8hand6X,ax                  ;9;0
add alien9X ,ax                  ;;
add a9eye1X ,ax                  ;;
add a9eye2X ,ax                                   ;
add a9head1X ,ax
add a9head2X ,ax
add a9head3X ,ax
add a9head4X ,ax
add a9hand1X ,ax
add a9hand2X ,ax
add a9hand3X ,ax
add a9hand4X ,ax
add a9hand5X ,ax
add a9hand6X ,ax
add alien10X ,ax
add a10eye1X ,ax
add a10eye2X ,ax
add a10head1X,ax
add a10head2X,ax
add a10head3X,ax
add a10head4X,ax
add a10hand1X,ax
add a10hand2X,ax
add a10hand3X,ax
add a10hand4X,ax
add a10hand5X,ax
add a10hand6X,ax



next2:
cmp a17hand6X,610
jg subi
jmp ding

ding:
mov ax,20
add alien11X ,ax
add a11eye1X ,ax
add a11eye2X ,ax
add a11head1X,ax
add a11head2X,ax
add a11head3X,ax
add a11head4X,ax
add a11hand1X,ax
add a11hand2X,ax
add a11hand3X,ax
add a11hand4X,ax
add a11hand5X,ax
add a11hand6X,ax
add alien12X ,ax
add a12eye1X ,ax
add a12eye2X ,ax
add a12head1X,ax
add a12head2X,ax
add a12head3X,ax
add a12head4X,ax
add a12hand1X,ax
add a12hand2X,ax
add a12hand3X,ax
add a12hand4X,ax
add a12hand5X,ax
add a12hand6X,ax
add alien13X ,ax
add a13eye1X ,ax
add a13eye2X ,ax
add a13head1X,ax
add a13head2X,ax
add a13head3X,ax
add a13head4X,ax
add a13hand1X,ax
add a13hand2X,ax
add a13hand3X,ax
add a13hand4X,ax
add a13hand5X,ax
add a13hand6X,ax
add alien14X ,ax
add a14eye1X ,ax
add a14eye2X ,ax
add a14head1X,ax
add a14head2X,ax
add a14head3X,ax
add a14head4X,ax
add a14hand1X,ax
add a14hand2X,ax
add a14hand3X,ax
add a14hand4X,ax
add a14hand5X,ax
add a14hand6X,ax
add alien15X ,ax
add a15eye1X ,ax
add a15eye2X ,ax
add a15head1X,ax
add a15head2X,ax
add a15head3X,ax
add a15head4X,ax
add a15hand1X,ax
add a15hand2X,ax
add a15hand3X,ax
add a15hand4X,ax
add a15hand5X,ax
add a15hand6X,ax
add alien16X ,ax
add a16eye1X ,ax
add a16eye2X ,ax
add a16head1X,ax
add a16head2X,ax
add a16head3X,ax
add a16head4X,ax
add a16hand1X,ax
add a16hand2X,ax
add a16hand3X,ax
add a16hand4X,ax
add a16hand5X,ax
add a16hand6X,ax
add alien17X ,ax
add a17eye1X ,ax
add a17eye2X ,ax
add a17head1X,ax
add a17head2X,ax
add a17head3X,ax
add a17head4X,ax
add a17hand1X,ax
add a17hand2X,ax
add a17hand3X,ax
add a17hand4X,ax
add a17hand5X,ax
add a17hand6X,ax
jmp exit
subi:
mov ax,200
sub alien11X ,ax
sub a11eye1X ,ax
sub a11eye2X ,ax
sub a11head1X,ax
sub a11head2X,ax
sub a11head3X,ax
sub a11head4X,ax
sub a11hand1X,ax
sub a11hand2X,ax
sub a11hand3X,ax
sub a11hand4X,ax
sub a11hand5X,ax
sub a11hand6X,ax
sub alien12X ,ax
sub a12eye1X ,ax
sub a12eye2X ,ax
sub a12head1X,ax
sub a12head2X,ax
sub a12head3X,ax
sub a12head4X,ax
sub a12hand1X,ax
sub a12hand2X,ax
sub a12hand3X,ax
sub a12hand4X,ax
sub a12hand5X,ax
sub a12hand6X,ax
sub alien13X ,ax
sub a13eye1X ,ax
sub a13eye2X ,ax
sub a13head1X,ax
sub a13head2X,ax
sub a13head3X,ax
sub a13head4X,ax
sub a13hand1X,ax
sub a13hand2X,ax
sub a13hand3X,ax
sub a13hand4X,ax
sub a13hand5X,ax
sub a13hand6X,ax
sub alien14X ,ax
sub a14eye1X ,ax
sub a14eye2X ,ax
sub a14head1X,ax
sub a14head2X,ax
sub a14head3X,ax
sub a14head4X,ax
sub a14hand1X,ax
sub a14hand2X,ax
sub a14hand3X,ax
sub a14hand4X,ax
sub a14hand5X,ax
sub a14hand6X,ax
sub alien15X ,ax
sub a15eye1X ,ax
sub a15eye2X ,ax
sub a15head1X,ax
sub a15head2X,ax
sub a15head3X,ax
sub a15head4X,ax
sub a15hand1X,ax
sub a15hand2X,ax
sub a15hand3X,ax
sub a15hand4X,ax
sub a15hand5X,ax
sub a15hand6X,ax
sub alien16X ,ax
sub a16eye1X ,ax
sub a16eye2X ,ax
sub a16head1X,ax
sub a16head2X,ax
sub a16head3X,ax
sub a16head4X,ax
sub a16hand1X,ax
sub a16hand2X,ax
sub a16hand3X,ax
sub a16hand4X,ax
sub a16hand5X,ax
sub a16hand6X,ax
sub alien17X ,ax
sub a17eye1X ,ax
sub a17eye2X ,ax
sub a17head1X,ax
sub a17head2X,ax
sub a17head3X,ax
sub a17head4X,ax
sub a17hand1X,ax
sub a17hand2X,ax
sub a17hand3X,ax
sub a17hand4X,ax
sub a17hand5X,ax
sub a17hand6X,ax

exit:
ret
movealien endp


game proc
	RANDSTART:
   	MOV AH, 00h  ; interrupts to get system time        
   	INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

	mov  ax, dx
   	xor  dx, dx
  	mov  cx, 3    
   	div  cx       ; here dx contains the remainder of the division - from 1 to 3

   	add  dl, '1'  ; to ascii from '1' to '3'
	mov  check,dl
	.if(check=='2')
	call Positioningfor2
	.elseif(check=='1')
	call Positioningfor1
	.else
	.endif
	chktime:


	mov ah,2ch
	int 21h

	cmp dh,timep
	je chktime
	
	
	
	mov timep,dh
	call CSCREEN
	
	call drawalien
	call shoot
	call drawbullet
	call moveship
	call drawship
	
	
	call show_score
    call displayscore
	call hitalien1
	call hitalien2
	call hitalien3
	call hitalien4
	call hitalien5
	call hitalien6
	call hitalien7
	call hitalien8
	call hitalien9
	call hitalien10
	call hitalien11
	call hitalien12
	call hitalien13
	call hitalien14
	call hitalien15
	call hitalien16
	call hitalien17
	call hitalien18
	call hitalien19
	call hitalien20
	mov al,'2'
	cmp [score],al
	je exil
	jmp chktime
	exil:
ret
game endp
Positioningfor2 proc

	Mov alien8X,110			;Row2
	Mov alien8Y,140
	Mov alien9X,170
	Mov alien9Y,140
	Mov alien10X,230
	Mov alien10Y,140
	Mov alien11X,290	
	Mov alien11Y,140
	Mov alien12X,350
	Mov alien12Y,140
	Mov alien13X,410
	Mov alien13Y,140
	Mov alien14X,470
	Mov alien14Y,140
	Mov alien15X,110		;Row3
	Mov alien15Y,200
	Mov alien16X,170	
	Mov alien16Y,200
	Mov alien17X,230
	Mov alien17Y,200
	Mov alien18X,290
	Mov alien18Y,200
	Mov alien19X,350
	Mov alien19Y,200
	Mov alien20X,410
	Mov alien20Y,200
	

	;alien8 position
	;eye
	Mov a8eye1X,117
	Mov a8eye1y,150
	Mov a8eye2X,131
	Mov a8eye2y,150
	;head
	Mov a8head1X,110
	Mov a8head1y,140
	Mov a8head2X,139
	Mov a8head2y,140
	Mov a8head3X,110
	Mov a8head3y,170
	Mov a8head4X,139
	Mov a8head4y,170
	;hand
	Mov a8hand1X,105
	Mov a8hand1y,135
	Mov a8hand2X,144
	Mov a8hand2y,135
	Mov a8hand3X,105
	Mov a8hand3y,175
	Mov a8hand4X,144
	Mov a8hand4y,175
	Mov a8hand5X,100
	Mov a8hand5y,180
	Mov a8hand6X,149
	Mov a8hand6y,180

	;alien9 position
	;eye
	Mov a9eye1X,177
	Mov a9eye1y,150
	Mov a9eye2X,191
	Mov a9eye2y,150
	;head
	Mov a9head1X,170
	Mov a9head1y,140
	Mov a9head2X,199
	Mov a9head2y,140
	Mov a9head3X,170
	Mov a9head3y,170
	Mov a9head4X,199
	Mov a9head4y,170
	;hand
	Mov a9hand1X,165
	Mov a9hand1y,135
	Mov a9hand2X,204
	Mov a9hand2y,135
	Mov a9hand3X,165
	Mov a9hand3y,175
	Mov a9hand4X,204
	Mov a9hand4y,175
	Mov a9hand5X,160
	Mov a9hand5y,180
	Mov a9hand6X,209
	Mov a9hand6y,180

	;alien10 position
	;eye
	Mov a10eye1X,237
	Mov a10eye1y,150
	Mov a10eye2X,251
	Mov a10eye2y,150
	;head
	Mov a10head1X,230
	Mov a10head1y,140
	Mov a10head2X,259
	Mov a10head2y,140
	Mov a10head3X,230
	Mov a10head3y,170
	Mov a10head4X,259
	Mov a10head4y,170
	;hand
	Mov a10hand1X,225
	Mov a10hand1y,135
	Mov a10hand2X,264
	Mov a10hand2y,135
	Mov a10hand3X,225
	Mov a10hand3y,175
	Mov a10hand4X,264
	Mov a10hand4y,175
	Mov a10hand5X,220
	Mov a10hand5y,180
	Mov a10hand6X,269
	Mov a10hand6y,180

	;alien11 position
	;eye
	Mov a11eye1X,297
	Mov a11eye1y,150
	Mov a11eye2X,311
	Mov a11eye2y,150
	;head
	Mov a11head1X,290
	Mov a11head1y,140
	Mov a11head2X,319
	Mov a11head2y,140
	Mov a11head3X,290
	Mov a11head3y,170
	Mov a11head4X,319
	Mov a11head4y,170
	;hand
	Mov a11hand1X,285
	Mov a11hand1y,135
	Mov a11hand2X,324
	Mov a11hand2y,135
	Mov a11hand3X,285
	Mov a11hand3y,175
	Mov a11hand4X,324
	Mov a11hand4y,175
	Mov a11hand5X,280
	Mov a11hand5y,180
	Mov a11hand6X,329
	Mov a11hand6y,180

	;alien12 position
	;eye
	Mov a12eye1X,357
	Mov a12eye1y,150
	Mov a12eye2X,371
	Mov a12eye2y,150
	;head
	Mov a12head1X,350
	Mov a12head1y,140
	Mov a12head2X,379
	Mov a12head2y,140
	Mov a12head3X,350
	Mov a12head3y,170
	Mov a12head4X,379
	Mov a12head4y,170
	;hand
	Mov a12hand1X,345
	Mov a12hand1y,135
	Mov a12hand2X,384
	Mov a12hand2y,135
	Mov a12hand3X,345
	Mov a12hand3y,175
	Mov a12hand4X,384
	Mov a12hand4y,175
	Mov a12hand5X,340
	Mov a12hand5y,180
	Mov a12hand6X,389
	Mov a12hand6y,180

	;alien13 position
	;eye
	Mov a13eye1X,417
	Mov a13eye1y,150
	Mov a13eye2X,431
	Mov a13eye2y,150
	;head
	Mov a13head1X,410
	Mov a13head1y,140
	Mov a13head2X,439
	Mov a13head2y,140
	Mov a13head3X,410
	Mov a13head3y,170
	Mov a13head4X,439
	Mov a13head4y,170
	;hand
	Mov a13hand1X,405
	Mov a13hand1y,135
	Mov a13hand2X,444
	Mov a13hand2y,135
	Mov a13hand3X,405
	Mov a13hand3y,175
	Mov a13hand4X,444
	Mov a13hand4y,175
	Mov a13hand5X,400
	Mov a13hand5y,180
	Mov a13hand6X,449
	Mov a13hand6y,180

	;alien14 position
	;eye
	Mov a14eye1X,477
	Mov a14eye1y,150
	Mov a14eye2X,491
	Mov a14eye2y,150
	;head
	Mov a14head1X,470
	Mov a14head1y,140
	Mov a14head2X,499
	Mov a14head2y,140
	Mov a14head3X,470
	Mov a14head3y,170
	Mov a14head4X,499
	Mov a14head4y,170
	;hand
	Mov a14hand1X,465
	Mov a14hand1y,135
	Mov a14hand2X,504
	Mov a14hand2y,135
	Mov a14hand3X,465
	Mov a14hand3y,175
	Mov a14hand4X,504
	Mov a14hand4y,175
	Mov a14hand5X,460
	Mov a14hand5y,180
	Mov a14hand6X,509
	Mov a14hand6y,180

	;alien15 position
	;eye
	Mov a15eye1X,117
	Mov a15eye1y,210
	Mov a15eye2X,131
	Mov a15eye2y,210
	;head
	Mov a15head1X,110
	Mov a15head1y,200
	Mov a15head2X,139
	Mov a15head2y,200
	Mov a15head3X,110
	Mov a15head3y,230
	Mov a15head4X,139
	Mov a15head4y,230
	;hand
	Mov a15hand1X,105
	Mov a15hand1y,195
	Mov a15hand2X,144
	Mov a15hand2y,195
	Mov a15hand3X,105
	Mov a15hand3y,235
	Mov a15hand4X,144
	Mov a15hand4y,235
	Mov a15hand5X,100
	Mov a15hand5y,240
	Mov a15hand6X,149
	Mov a15hand6y,240	

	;alien16 position
	;eye
	Mov a16eye1X,177
	Mov a16eye1y,210
	Mov a16eye2X,191
	Mov a16eye2y,210
	;head
	Mov a16head1X,170
	Mov a16head1y,200
	Mov a16head2X,199
	Mov a16head2y,200
	Mov a16head3X,170
	Mov a16head3y,230
	Mov a16head4X,199
	Mov a16head4y,230
	;hand
	Mov a16hand1X,165
	Mov a16hand1y,195
	Mov a16hand2X,204
	Mov a16hand2y,195
	Mov a16hand3X,165
	Mov a16hand3y,235
	Mov a16hand4X,204
	Mov a16hand4y,235
	Mov a16hand5X,160
	Mov a16hand5y,240
	Mov a16hand6X,209
	Mov a16hand6y,240

	;alien17 position
	;eye
	Mov a17eye1X,237
	Mov a17eye1y,210
	Mov a17eye2X,251
	Mov a17eye2y,210
	;head
	Mov a17head1X,230
	Mov a17head1y,200
	Mov a17head2X,259
	Mov a17head2y,200
	Mov a17head3X,230
	Mov a17head3y,230
	Mov a17head4X,259
	Mov a17head4y,230
	;hand
	Mov a17hand1X,225
	Mov a17hand1y,195
	Mov a17hand2X,264
	Mov a17hand2y,195
	Mov a17hand3X,225
	Mov a17hand3y,235
	Mov a17hand4X,264
	Mov a17hand4y,235
	Mov a17hand5X,220
	Mov a17hand5y,240
	Mov a17hand6X,269
	Mov a17hand6y,240

	;alien18 position
	;eye
	Mov a18eye1X,297
	Mov a18eye1y,210
	Mov a18eye2X,311
	Mov a18eye2y,210
	;head
	Mov a18head1X,290
	Mov a18head1y,200
	Mov a18head2X,319
	Mov a18head2y,200
	Mov a18head3X,290
	Mov a18head3y,230
	Mov a18head4X,319
	Mov a18head4y,230
	;hand
	Mov a18hand1X,285
	Mov a18hand1y,195
	Mov a18hand2X,324
	Mov a18hand2y,195
	Mov a18hand3X,285
	Mov a18hand3y,235
	Mov a18hand4X,324
	Mov a18hand4y,235
	Mov a18hand5X,280
	Mov a18hand5y,240
	Mov a18hand6X,329
	Mov a18hand6y,240

	;alien19 position
	;eye
	Mov a19eye1X,357
	Mov a19eye1y,210
	Mov a19eye2X,371
	Mov a19eye2y,210
	;head
	Mov a19head1X,350
	Mov a19head1y,200
	Mov a19head2X,379
	Mov a19head2y,200
	Mov a19head3X,350
	Mov a19head3y,230
	Mov a19head4X,379
	Mov a19head4y,230
	;hand
	Mov a19hand1X,345
	Mov a19hand1y,195
	Mov a19hand2X,384
	Mov a19hand2y,195
	Mov a19hand3X,345
	Mov a19hand3y,235
	Mov a19hand4X,384
	Mov a19hand4y,235
	Mov a19hand5X,340
	Mov a19hand5y,240
	Mov a19hand6X,389
	Mov a19hand6y,240

	;alien20 position
	;eye
	Mov a20eye1X,417
	Mov a20eye1y,210
	Mov a20eye2X,431
	Mov a20eye2y,210
	;head
	Mov a20head1X,410
	Mov a20head1y,200
	Mov a20head2X,439
	Mov a20head2y,200
	Mov a20head3X,410
	Mov a20head3y,230
	Mov a20head4X,439
	Mov a20head4y,230
	;hand
	Mov a20hand1X,405
	Mov a20hand1y,195
	Mov a20hand2X,444
	Mov a20hand2y,195
	Mov a20hand3X,405
	Mov a20hand3y,235
	Mov a20hand4X,444
	Mov a20hand4y,235
	Mov a20hand5X,400
	Mov a20hand5y,240
	Mov a20hand6X,449
	Mov a20hand6y,240

	

ret
Positioningfor2 endp
Positioningfor1 proc
	Mov alien1X,170		;Row1
	Mov alien1Y,80
	Mov alien2X,230
	Mov alien2Y,80
	Mov alien3X,290
	Mov alien3Y,80
	Mov alien4X,350
	Mov alien4Y,80
	Mov alien5X,410
	Mov alien5Y,80
	Mov alien6X,170		;Row2
	Mov alien6Y,140
	Mov alien7X,230
	Mov alien7Y,140
	Mov alien8X,290
	Mov alien8Y,140
	Mov alien9X,350
	Mov alien9Y,140
	Mov alien10X,410
	Mov alien10Y,140
	Mov alien11X,170	;Row3
	Mov alien11Y,200
	Mov alien12X,230
	Mov alien12Y,200
	Mov alien13X,290
	Mov alien13Y,200
	Mov alien14X,350
	Mov alien14Y,200
	Mov alien15X,410
	Mov alien15Y,200
	Mov alien16X,170	;Row4
	Mov alien16Y,260
	Mov alien17X,230
	Mov alien17Y,260
	Mov alien18X,290
	Mov alien18Y,260
	Mov alien19X,350
	Mov alien19Y,260
	Mov alien20X,410
	Mov alien20Y,260
	
	;alien1 position
	;eye
	Mov a1eye1X,177
	Mov a1eye1y,90
	Mov a1eye2X,191
	Mov a1eye2y,90
	;head
	Mov a1head1X,170
	Mov a1head1y,80
	Mov a1head2X,199
	Mov a1head2y,80
	Mov a1head3X,170
	Mov a1head3y,110
	Mov a1head4X,199
	Mov a1head4y,110
	;hand
	Mov a1hand1X,165
	Mov a1hand1y,75
	Mov a1hand2X,204
	Mov a1hand2y,75
	Mov a1hand3X,165
	Mov a1hand3y,115
	Mov a1hand4X,204
	Mov a1hand4y,115
	Mov a1hand5X,160
	Mov a1hand5y,120
	Mov a1hand6X,209
	Mov a1hand6y,120

	;alien2 position
	;eye
	Mov a2eye1X,237
	Mov a2eye1y,90
	Mov a2eye2X,251
	Mov a2eye2y,90
	;head
	Mov a2head1X,230
	Mov a2head1y,80
	Mov a2head2X,259
	Mov a2head2y,80
	Mov a2head3X,230
	Mov a2head3y,110
	Mov a2head4X,259
	Mov a2head4y,110
	;hand
	Mov a2hand1X,225
	Mov a2hand1y,75
	Mov a2hand2X,264
	Mov a2hand2y,75
	Mov a2hand3X,225
	Mov a2hand3y,115
	Mov a2hand4X,264
	Mov a2hand4y,115
	Mov a2hand5X,220
	Mov a2hand5y,120
	Mov a2hand6X,269
	Mov a2hand6y,120

	;alien3 position
	;eye
	Mov a3eye1X,297
	Mov a3eye1y,90
	Mov a3eye2X,311
	Mov a3eye2y,90
	;head
	Mov a3head1X,290
	Mov a3head1y,80
	Mov a3head2X,319
	Mov a3head2y,80
	Mov a3head3X,290
	Mov a3head3y,110
	Mov a3head4X,319
	Mov a3head4y,110
	;hand
	Mov a3hand1X,285
	Mov a3hand1y,75
	Mov a3hand2X,324
	Mov a3hand2y,75
	Mov a3hand3X,285
	Mov a3hand3y,115
	Mov a3hand4X,324
	Mov a3hand4y,115
	Mov a3hand5X,280
	Mov a3hand5y,120
	Mov a3hand6X,329
	Mov a3hand6y,120

	;alien4 position
	;eye
	Mov a4eye1X,357
	Mov a4eye1y,90
	Mov a4eye2X,371
	Mov a4eye2y,90
	;head
	Mov a4head1X,350
	Mov a4head1y,80
	Mov a4head2X,379
	Mov a4head2y,80
	Mov a4head3X,350
	Mov a4head3y,110
	Mov a4head4X,379
	Mov a4head4y,110
	;hand
	Mov a4hand1X,345
	Mov a4hand1y,75
	Mov a4hand2X,384
	Mov a4hand2y,75
	Mov a4hand3X,345
	Mov a4hand3y,115
	Mov a4hand4X,384
	Mov a4hand4y,115
	Mov a4hand5X,340
	Mov a4hand5y,120
	Mov a4hand6X,389
	Mov a4hand6y,120

	;alien5 position
	;eye
	Mov a5eye1X,417
	Mov a5eye1y,90
	Mov a5eye2X,431
	Mov a5eye2y,90
	;head
	Mov a5head1X,410
	Mov a5head1y,80
	Mov a5head2X,439
	Mov a5head2y,80
	Mov a5head3X,410
	Mov a5head3y,110
	Mov a5head4X,439
	Mov a5head4y,110
	;hand
	Mov a5hand1X,405
	Mov a5hand1y,75
	Mov a5hand2X,444
	Mov a5hand2y,75
	Mov a5hand3X,405
	Mov a5hand3y,115
	Mov a5hand4X,444
	Mov a5hand4y,115
	Mov a5hand5X,400
	Mov a5hand5y,120
	Mov a5hand6X,449
	Mov a5hand6y,120

	;alien6 position
	;eye
	Mov a6eye1X,177
	Mov a6eye1y,150
	Mov a6eye2X,191
	Mov a6eye2y,150
	;head
	Mov a6head1X,170
	Mov a6head1y,140
	Mov a6head2X,199
	Mov a6head2y,140
	Mov a6head3X,170
	Mov a6head3y,170
	Mov a6head4X,199
	Mov a6head4y,170
	;hand
	Mov a6hand1X,165
	Mov a6hand1y,135
	Mov a6hand2X,204
	Mov a6hand2y,135
	Mov a6hand3X,165
	Mov a6hand3y,175
	Mov a6hand4X,204
	Mov a6hand4y,175
	Mov a6hand5X,160
	Mov a6hand5y,180
	Mov a6hand6X,209
	Mov a6hand6y,180

	;alien7 position
	;eye
	Mov a7eye1X,237
	Mov a7eye1y,150
	Mov a7eye2X,251
	Mov a7eye2y,150
	;head
	Mov a7head1X,230
	Mov a7head1y,140
	Mov a7head2X,259
	Mov a7head2y,140
	Mov a7head3X,230
	Mov a7head3y,170
	Mov a7head4X,259
	Mov a7head4y,170
	;hand
	Mov a7hand1X,225
	Mov a7hand1y,135
	Mov a7hand2X,264
	Mov a7hand2y,135
	Mov a7hand3X,225
	Mov a7hand3y,175
	Mov a7hand4X,264
	Mov a7hand4y,175
	Mov a7hand5X,220
	Mov a7hand5y,180
	Mov a7hand6X,269
	Mov a7hand6y,180

	;alien8 position
	;eye
	Mov a8eye1X,297
	Mov a8eye1y,150
	Mov a8eye2X,311
	Mov a8eye2y,150
	;head
	Mov a8head1X,290
	Mov a8head1y,140
	Mov a8head2X,319
	Mov a8head2y,140
	Mov a8head3X,290
	Mov a8head3y,170
	Mov a8head4X,319
	Mov a8head4y,170
	;hand
	Mov a8hand1X,285
	Mov a8hand1y,135
	Mov a8hand2X,324
	Mov a8hand2y,135
	Mov a8hand3X,285
	Mov a8hand3y,175
	Mov a8hand4X,324
	Mov a8hand4y,175
	Mov a8hand5X,280
	Mov a8hand5y,180
	Mov a8hand6X,329
	Mov a8hand6y,180

	;alien9 position
	;eye
	Mov a9eye1X,357
	Mov a9eye1y,150
	Mov a9eye2X,371
	Mov a9eye2y,150
	;head
	Mov a9head1X,350
	Mov a9head1y,140
	Mov a9head2X,379
	Mov a9head2y,140
	Mov a9head3X,350
	Mov a9head3y,170
	Mov a9head4X,379
	Mov a9head4y,170
	;hand
	Mov a9hand1X,345
	Mov a9hand1y,135
	Mov a9hand2X,384
	Mov a9hand2y,135
	Mov a9hand3X,345
	Mov a9hand3y,175
	Mov a9hand4X,384
	Mov a9hand4y,175
	Mov a9hand5X,340
	Mov a9hand5y,180
	Mov a9hand6X,389
	Mov a9hand6y,180

	;alien10 position
	;eye
	Mov a10eye1X,417
	Mov a10eye1y,150
	Mov a10eye2X,431
	Mov a10eye2y,150
	;head
	Mov a10head1X,410
	Mov a10head1y,140
	Mov a10head2X,439
	Mov a10head2y,140
	Mov a10head3X,410
	Mov a10head3y,170
	Mov a10head4X,439
	Mov a10head4y,170
	;hand
	Mov a10hand1X,405
	Mov a10hand1y,135
	Mov a10hand2X,444
	Mov a10hand2y,135
	Mov a10hand3X,405
	Mov a10hand3y,175
	Mov a10hand4X,444
	Mov a10hand4y,175
	Mov a10hand5X,400
	Mov a10hand5y,180
	Mov a10hand6X,449
	Mov a10hand6y,180

	;alien11 position
	;eye
	Mov a11eye1X,177
	Mov a11eye1y,210
	Mov a11eye2X,191
	Mov a11eye2y,210
	;head
	Mov a11head1X,170
	Mov a11head1y,200
	Mov a11head2X,199
	Mov a11head2y,200
	Mov a11head3X,170
	Mov a11head3y,230
	Mov a11head4X,199
	Mov a11head4y,230
	;hand
	Mov a11hand1X,165
	Mov a11hand1y,195
	Mov a11hand2X,204
	Mov a11hand2y,195
	Mov a11hand3X,165
	Mov a11hand3y,235
	Mov a11hand4X,204
	Mov a11hand4y,235
	Mov a11hand5X,160
	Mov a11hand5y,240
	Mov a11hand6X,209
	Mov a11hand6y,240

	;alien12 position
	;eye
	Mov a12eye1X,237
	Mov a12eye1y,210
	Mov a12eye2X,251
	Mov a12eye2y,210
	;head
	Mov a12head1X,230
	Mov a12head1y,200
	Mov a12head2X,259
	Mov a12head2y,200
	Mov a12head3X,230
	Mov a12head3y,230
	Mov a12head4X,259
	Mov a12head4y,230
	;hand
	Mov a12hand1X,225
	Mov a12hand1y,195
	Mov a12hand2X,264
	Mov a12hand2y,195
	Mov a12hand3X,225
	Mov a12hand3y,235
	Mov a12hand4X,264
	Mov a12hand4y,235
	Mov a12hand5X,220
	Mov a12hand5y,240
	Mov a12hand6X,269
	Mov a12hand6y,240

	;alien13 position
	;eye
	Mov a13eye1X,297
	Mov a13eye1y,210
	Mov a13eye2X,311
	Mov a13eye2y,210
	;head
	Mov a13head1X,290
	Mov a13head1y,200
	Mov a13head2X,319
	Mov a13head2y,200
	Mov a13head3X,290
	Mov a13head3y,230
	Mov a13head4X,319
	Mov a13head4y,230
	;hand
	Mov a13hand1X,285
	Mov a13hand1y,195
	Mov a13hand2X,324
	Mov a13hand2y,195
	Mov a13hand3X,285
	Mov a13hand3y,235
	Mov a13hand4X,324
	Mov a13hand4y,235
	Mov a13hand5X,280
	Mov a13hand5y,240
	Mov a13hand6X,329
	Mov a13hand6y,240

	;alien14 position
	;eye
	Mov a14eye1X,357
	Mov a14eye1y,210
	Mov a14eye2X,371
	Mov a14eye2y,210
	;head
	Mov a14head1X,350
	Mov a14head1y,200
	Mov a14head2X,379
	Mov a14head2y,200
	Mov a14head3X,350
	Mov a14head3y,230
	Mov a14head4X,379
	Mov a14head4y,230
	;hand
	Mov a14hand1X,345
	Mov a14hand1y,195
	Mov a14hand2X,384
	Mov a14hand2y,195
	Mov a14hand3X,345
	Mov a14hand3y,235
	Mov a14hand4X,384
	Mov a14hand4y,235
	Mov a14hand5X,340
	Mov a14hand5y,240
	Mov a14hand6X,389
	Mov a14hand6y,240

	;alien15 position
	;eye
	Mov a15eye1X,417
	Mov a15eye1y,210
	Mov a15eye2X,431
	Mov a15eye2y,210
	;head
	Mov a15head1X,410
	Mov a15head1y,200
	Mov a15head2X,439
	Mov a15head2y,200
	Mov a15head3X,410
	Mov a15head3y,230
	Mov a15head4X,439
	Mov a15head4y,230
	;hand
	Mov a15hand1X,405
	Mov a15hand1y,195
	Mov a15hand2X,444
	Mov a15hand2y,195
	Mov a15hand3X,405
	Mov a15hand3y,235
	Mov a15hand4X,444
	Mov a15hand4y,235
	Mov a15hand5X,400
	Mov a15hand5y,240
	Mov a15hand6X,449
	Mov a15hand6y,240	

	;alien16 position
	;eye
	Mov a16eye1X,177
	Mov a16eye1y,270
	Mov a16eye2X,191
	Mov a16eye2y,270
	;head
	Mov a16head1X,170
	Mov a16head1y,260
	Mov a16head2X,199
	Mov a16head2y,260
	Mov a16head3X,170
	Mov a16head3y,290
	Mov a16head4X,199
	Mov a16head4y,290
	;hand
	Mov a16hand1X,165
	Mov a16hand1y,255
	Mov a16hand2X,204
	Mov a16hand2y,255
	Mov a16hand3X,165
	Mov a16hand3y,295
	Mov a16hand4X,204
	Mov a16hand4y,295
	Mov a16hand5X,160
	Mov a16hand5y,300
	Mov a16hand6X,209
	Mov a16hand6y,300

	;alien17 position
	;eye
	Mov a17eye1X,237
	Mov a17eye1y,270
	Mov a17eye2X,251
	Mov a17eye2y,270
	;head
	Mov a17head1X,230
	Mov a17head1y,260
	Mov a17head2X,259
	Mov a17head2y,260
	Mov a17head3X,230
	Mov a17head3y,290
	Mov a17head4X,259
	Mov a17head4y,290
	;hand
	Mov a17hand1X,225
	Mov a17hand1y,255
	Mov a17hand2X,264
	Mov a17hand2y,255
	Mov a17hand3X,225
	Mov a17hand3y,295
	Mov a17hand4X,264
	Mov a17hand4y,295
	Mov a17hand5X,220
	Mov a17hand5y,300
	Mov a17hand6X,269
	Mov a17hand6y,300

	;alien18 position
	;eye
	Mov a18eye1X,297
	Mov a18eye1y,270
	Mov a18eye2X,311
	Mov a18eye2y,270
	;head
	Mov a18head1X,290
	Mov a18head1y,260
	Mov a18head2X,319
	Mov a18head2y,260
	Mov a18head3X,290
	Mov a18head3y,290
	Mov a18head4X,319
	Mov a18head4y,290
	;hand
	Mov a18hand1X,285
	Mov a18hand1y,255
	Mov a18hand2X,324
	Mov a18hand2y,255
	Mov a18hand3X,285
	Mov a18hand3y,295
	Mov a18hand4X,324
	Mov a18hand4y,295
	Mov a18hand5X,280
	Mov a18hand5y,300
	Mov a18hand6X,329
	Mov a18hand6y,300

	;alien19 position
	;eye
	Mov a19eye1X,357
	Mov a19eye1y,270
	Mov a19eye2X,371
	Mov a19eye2y,270
	;head
	Mov a19head1X,350
	Mov a19head1y,260
	Mov a19head2X,379
	Mov a19head2y,260
	Mov a19head3X,350
	Mov a19head3y,290
	Mov a19head4X,379
	Mov a19head4y,290
	;hand
	Mov a19hand1X,345
	Mov a19hand1y,255
	Mov a19hand2X,384
	Mov a19hand2y,255
	Mov a19hand3X,345
	Mov a19hand3y,295
	Mov a19hand4X,384
	Mov a19hand4y,295
	Mov a19hand5X,340
	Mov a19hand5y,300
	Mov a19hand6X,389
	Mov a19hand6y,300

	;alien20 position
	;eye
	Mov a20eye1X,417
	Mov a20eye1y,270
	Mov a20eye2X,431
	Mov a20eye2y,270
	;head
	Mov a20head1X,410
	Mov a20head1y,260
	Mov a20head2X,439
	Mov a20head2y,260
	Mov a20head3X,410
	Mov a20head3y,290
	Mov a20head4X,439
	Mov a20head4y,290
	;hand
	Mov a20hand1X,405
	Mov a20hand1y,255
	Mov a20hand2X,444
	Mov a20hand2y,255
	Mov a20hand3X,405
	Mov a20hand3y,295
	Mov a20hand4X,444
	Mov a20hand4y,295
	Mov a20hand5X,400
	Mov a20hand5y,300
	Mov a20hand6X,449
	Mov a20hand6y,300
ret
Positioningfor1 endp
hitalien1 proc
		mov ax,a1hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a1hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a1hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a1hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a1dead,1
        mov a1hand1X,640
        inc [score]
	exit:	
		
ret
hitalien1 endp

hitalien2 proc
		mov ax,a2hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a2hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a2hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a2hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a2dead,1 
        mov a2hand1X,640
        inc [score]
	exit:	
		
ret
hitalien2 endp
hitalien3 proc
		mov ax,a3hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a3hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a3hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a3hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a3dead,1 
        mov a3hand1X,640
        inc [score]
	exit:	
		
ret
hitalien3 endp
hitalien4 proc
		mov ax,a4hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a4hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a4hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a4hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov a4dead,1      
        mov BULLETY,450
        mov a4hand1X,640
        inc [score]
	exit:	
		
ret
hitalien4 endp
hitalien5 proc
		mov ax,a5hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a5hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a5hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a5hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
       mov a5dead,1 
        mov a5hand1X,640
        inc [score]
	exit:	
		
ret
hitalien5 endp
hitalien6 proc
		mov ax,a6hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a6hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a6hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a6hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a6dead,1 
        mov a6hand1X,640
        inc [score]
	exit:	
		
ret
hitalien6 endp
hitalien7 proc
		mov ax,a7hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a7hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a7hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a7hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a7dead,1 
        mov a7hand1X,640
        inc [score]
	exit:	
		
ret
hitalien7 endp
hitalien8 proc
		mov ax,a8hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a8hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a8hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a8hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a8dead,1 
        mov a8hand1X,640
        inc [score]
	exit:	
		
ret
hitalien8 endp
hitalien9 proc
		mov ax,a9hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a9hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a9hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a9hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a9dead,1 
        mov a9hand1X,640
        inc [score]
	exit:	
		
ret
hitalien9 endp
hitalien10 proc
		mov ax,a10hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a10hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a10hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a10hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a10dead,1 
        mov a10hand1X,640
        inc [score]
	exit:	
		
ret
hitalien10 endp
hitalien11 proc
		mov ax,a11hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a11hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a11hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a11hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a11dead,1 
        mov a11hand1X,640
        inc [score]
	exit:	
		
ret
hitalien11 endp
hitalien12 proc
		mov ax,a12hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a12hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a12hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a12hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
	
        mov BULLETY,450
        mov a12dead,1 
        mov a12hand1X,640
        inc [score]
	exit:	
		
ret
hitalien12 endp
hitalien13 proc
		mov ax,a13hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a13hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a13hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a13hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:

        mov BULLETY,450
        mov a13dead,1 
        mov a13hand1X,640
        inc [score]
	exit:	
		
ret
hitalien13 endp
hitalien14 proc
		mov ax,a14hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a14hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a14hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a14hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov a14dead,1      
        mov BULLETY,450
        mov a14hand1X,640
        inc [score]
	exit:	
		
ret
hitalien14 endp
hitalien15 proc
		mov ax,a15hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a15hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a15hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a15hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
       mov a15dead,1 
        mov a15hand1X,640
        inc [score]
	exit:	
		
ret
hitalien15 endp
hitalien16 proc
		mov ax,a16hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a16hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a16hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a16hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a16dead,1 
        mov a16hand1X,640
        inc [score]
	exit:	
		
ret
hitalien16 endp
hitalien17 proc
		mov ax,a17hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a17hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a17hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a17hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a17dead,1 
        mov a17hand1X,640
        inc [score]
	exit:	
		
ret
hitalien17 endp
hitalien18 proc
		mov ax,a18hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a18hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a18hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a18hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a18dead,1 
        mov a18hand1X,640
        inc [score]
	exit:	
		
ret
hitalien18 endp
hitalien19 proc
		mov ax,a19hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a19hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a19hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a19hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a19dead,1 
        mov a19hand1X,640
        inc [score]
	exit:	
		
ret
hitalien19 endp
hitalien20 proc
		mov ax,a20hand1X
		cmp bulletX,ax
		jg chk1
		jmp exit
		chk1:
		mov ax,a20hand6X
		cmp bulletX,ax
		jl chk2
		jmp exit
		chk2:
		mov ax,a20hand1y
		cmp bulletY,ax
		jg chk3
		jmp exit
		chk3:
		mov ax,a20hand6y
		cmp bulletY,ax
		jl draw
		jmp exit
		
		
		draw:
        mov BULLETY,450
        mov a20dead,1 
        mov a20hand1X,640
        inc [score]
	exit:	
		
ret
hitalien20 endp



shoot proc
	push ax
		mov ax,Bspeed
		sub bulletY,ax
		
		
		cmp bulletY,00h
		jle move
		
		mov ax,bulletY
		cmp ax,440
		je yes
		jmp do
		yes:
		mov ax,shipX
		add ax,25
		mov bulletX,ax
		
		do:
	pop ax
	ret
	move:
		
		
		mov ax,sbulletY
		add bulletY,ax
		pop ax
		ret
	
	
shoot endp

drawbullet proc

push ax
	push bx
	push cx
	push dx

	mov cx,bulletX                                   ;x
	mov dx,bulletY                                   ;y
	
	
	box:
		
		mov ah, 0Ch
		mov al, 04h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,bulletX
		cmp ax,bulletsize
		jl box
		mov cx,bulletX
		inc dx
		mov ax,dx
		sub ax,bulletY
		cmp ax,bulletsize
	jl box
		
	pop ax
	pop bx
	pop cx
	pop dx
ret
drawbullet endp


drawship proc

push ax
	push bx
	push cx
	push dx

	mov cx,shipX                                   ;x
	mov dx,shipY                                   ;y
	
	
	ship:
		
		mov ax,shipcolor
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipX
		cmp ax,shipsize
		jl ship
		mov cx,shipX
		inc dx
		mov ax,dx
		sub ax,shipY
		cmp ax,shipsize
	jl ship
	
	
	mov cx,shiphX
	mov dx,shiphY
	ship1:
		
		mov ax,shiphcolor
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shiphX
		cmp ax,shiphsize
		jl ship1
		mov cx,shiphX
		inc dx
		mov ax,dx
		sub ax,shiphY
		cmp ax,shiphsize
	jl ship1
	
	mov cx,shipzX
	mov dx,shipzY
	shipz:
		
		mov ax,shipzcolor
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipzX
		cmp ax,shipzsize
		jl shipz
		mov cx,shipzX
		inc dx
		mov ax,dx
		sub ax,shipzY
		cmp ax,shipzsize
	jl shipz


	mov cx,shipz2X
	mov dx,shipz2Y
	shipz2:
		
		mov ax,shipz2color
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipz2X
		cmp ax,shipz2size
		jl shipz2
		mov cx,shipz2X
		inc dx
		mov ax,dx
		sub ax,shipz2Y
		cmp ax,shipz2size
	jl shipz2
	

	mov cx,shipz3X
	mov dx,shipz3Y
	shipz3:
		
		mov ax,shipz3color
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipz3X
		cmp ax,shipz3size
		jl shipz3
		mov cx,shipz3X
		inc dx
		mov ax,dx
		sub ax,shipz3Y
		cmp ax,shipz3size
	jl shipz3

	mov cx,shipz4X
	mov dx,shipz4Y
	shipz4:
		
		mov ax,shipz4color
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipz4X
		cmp ax,shipz4size
		jl shipz4
		mov cx,shipz4X
		inc dx
		mov ax,dx
		sub ax,shipz4Y
		cmp ax,shipz4size
	jl shipz4

	mov cx,shipz5X
	mov dx,shipz5Y
	shipz5:
		
		mov ax,shipz5color
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,shipz5X
		cmp ax,shipz5size
		jl shipz5
		mov cx,shipz5X
		inc dx
		mov ax,dx
		sub ax,shipz5Y
		cmp ax,shipz5size
	jl shipz5
	
	



		
	pop dx
	pop cx
	pop bx
	pop ax
ret



drawship endp


moveship proc


		mov ah,01
		int 16h
		jz chkmovement
		
		
		mov ah,00h
		int 16h
		
		cmp al,64h
		je moveR
		
		
		cmp al,61h
		je moveL
		jmp chkmovement
		moveR:
		mov ax,10
		add shipX,ax
		add shiphX,ax
		add shipzX,ax
		add shipz2X,ax
		add shipz3X,ax
		add shipz4X,ax
		add shipz5X,ax
		jmp chkmovement
		
		moveL:
		mov ax,10
		sub shipX,ax
		sub shiphX,ax
		sub shipzX,ax
		sub shipz2X,ax
		sub shipz3X,ax
		sub shipz4X,ax
		sub shipz5X,ax
		jmp chkmovement
		
		
		chkmovement:
		
		


ret
moveship endp

drawalien proc

push ax
	push bx
	push cx
	push dx
	
	mov ax,0
	mov ax,1
	cmp a1dead,ax
	je check2
								;;;;;alien1
	mov cx,alien1X                                  ;x
	mov dx,alien1Y                                   ;y
	
	
	alien1:
	mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien1X
		cmp ax,alien1size
		jl alien1
		mov cx,alien1X
		inc dx
		mov ax,dx
		sub ax,alien1Y
		cmp ax,alien1size
	jl alien1
	
	mov cx,a1eye1X                                  ;x
	mov dx,a1eye1Y                                   ;y
	
	alien1eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1eye1X
		cmp ax,eyesize
		jl alien1eye
		mov cx,a1eye1X
		inc dx
		mov ax,dx
		sub ax,a1eye1Y
		cmp ax,eyesize
	jl alien1eye
	
	mov cx,a1eye2X                                  ;x
	mov dx,a1eye2Y                                   ;y
	
	alien1eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1eye2X
		cmp ax,eyesize
		jl alien1eye2
		mov cx,a1eye2X
		inc dx
		mov ax,dx
		sub ax,a1eye2Y
		cmp ax,eyesize
	jl alien1eye2
	
	
	mov cx,a1head1X                                  ;x
	mov dx,a1head1Y                                   ;y
	
	alien1head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1head1X
		cmp ax,eyesize
		jl alien1head1
		mov cx,a1head1X
		inc dx
		mov ax,dx
		sub ax,a1head1Y
		cmp ax,headsize
	jl alien1head1
	mov cx,a1head2X                                  ;x
	mov dx,a1head2Y
	alien1head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1head2X
		cmp ax,eyesize
		jl alien1head2
		mov cx,a1head2X
		inc dx
		mov ax,dx
		sub ax,a1head2Y
		cmp ax,headsize
	jl alien1head2
	
	
	mov cx,a1head3X                                  ;x
	mov dx,a1head3Y                                   ;y
	
	alien1head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1head3X
		cmp ax,eyesize
		jl alien1head3
		mov cx,a1head3X
		inc dx
		mov ax,dx
		sub ax,a1head3Y
		cmp ax,headsize
	jl alien1head3
	mov cx,a1head4X                                  ;x
	mov dx,a1head4Y
	alien1head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1head4X
		cmp ax,eyesize
		jl alien1head4
		mov cx,a1head4X
		inc dx
		mov ax,dx
		sub ax,a1head4Y
		cmp ax,headsize
	jl alien1head4
	
	
	mov cx,a1hand1X                                  ;x
	mov dx,a1hand1Y                                   ;y
	
	alien1hand1:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand1X
		cmp ax,eyesize
		jl alien1hand1
		mov cx,a1hand1X
		inc dx
		mov ax,dx
		sub ax,a1hand1Y
		cmp ax,handsize
	jl alien1hand1
	
	mov cx,a1hand2X                                  ;x
	mov dx,a1hand2Y                                   ;y
	
	alien1hand2:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand2X
		cmp ax,eyesize
		jl alien1hand2
		mov cx,a1hand2X
		inc dx
		mov ax,dx
		sub ax,a1hand2Y
		cmp ax,handsize
	jl alien1hand2
	
	
	
	mov cx,a1hand3X                                  ;x
	mov dx,a1hand3Y                                   ;y
	
	alien1hand3:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand3X
		cmp ax,eyesize
		jl alien1hand3
		mov cx,a1hand3X
		inc dx
		mov ax,dx
		sub ax,a1hand3Y
		cmp ax,handsize
	jl alien1hand3
	mov cx,a1hand4X                                  ;x
	mov dx,a1hand4Y                                   ;y
	
	alien1hand4:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand4X
		cmp ax,eyesize
		jl alien1hand4
		mov cx,a1hand4X
		inc dx
		mov ax,dx
		sub ax,a1hand4Y
		cmp ax,handsize
	jl alien1hand4
	
	mov cx,a1hand5X                                  ;x
	mov dx,a1hand5Y                                   ;y
	
	alien1hand5:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand5X
		cmp ax,eyesize
		jl alien1hand5
		mov cx,a1hand5X
		inc dx
		mov ax,dx
		sub ax,a1hand5Y
		cmp ax,handsize
	jl alien1hand5
	mov cx,a1hand6X                                  ;x
	mov dx,a1hand6Y                                   ;y
	
	alien1hand6:
		mov ax,aliencolor1
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a1hand6X
		cmp ax,eyesize
		jl alien1hand6
		mov cx,a1hand6X
		inc dx
		mov ax,dx
		sub ax,a1hand6Y
		cmp ax,handsize
	jl alien1hand6
	
		check2:
		mov ax,0
		mov ax,1
		cmp a2dead,ax
		je check3
	
	mov cx,alien2X                                  ;x
	mov dx,alien2Y                                   ;y
	
									;alien2
	alien2:
	mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien2X
		cmp ax,alien2size
		jl alien2
		mov cx,alien2X
		inc dx
		mov ax,dx
		sub ax,alien2Y
		cmp ax,alien2size
	jl alien2
	
	mov cx,a2eye1X                                  ;x
	mov dx,a2eye1Y                                   ;y
	
	alien2eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2eye1X
		cmp ax,eyesize
		jl alien2eye
		mov cx,a2eye1X
		inc dx
		mov ax,dx
		sub ax,a2eye1Y
		cmp ax,eyesize
	jl alien2eye
	
	mov cx,a2eye2X                                  ;x
	mov dx,a2eye2Y                                   ;y
	
	alien2eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2eye2X
		cmp ax,eyesize
		jl alien2eye2
		mov cx,a2eye2X
		inc dx
		mov ax,dx
		sub ax,a2eye2Y
		cmp ax,eyesize
	jl alien2eye2
	
	
	mov cx,a2head1X                                  ;x
	mov dx,a2head1Y                                   ;y
	
	alien2head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2head1X
		cmp ax,eyesize
		jl alien2head1
		mov cx,a2head1X
		inc dx
		mov ax,dx
		sub ax,a2head1Y
		cmp ax,headsize
	jl alien2head1
	mov cx,a2head2X                                  ;x
	mov dx,a2head2Y
	alien2head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2head2X
		cmp ax,eyesize
		jl alien2head2
		mov cx,a2head2X
		inc dx
		mov ax,dx
		sub ax,a2head2Y
		cmp ax,headsize
	jl alien2head2
	
	
	mov cx,a2head3X                                  ;x
	mov dx,a2head3Y                                   ;y
	
	alien2head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2head3X
		cmp ax,eyesize
		jl alien2head3
		mov cx,a2head3X
		inc dx
		mov ax,dx
		sub ax,a2head3Y
		cmp ax,headsize
	jl alien2head3
	mov cx,a2head4X                                  ;x
	mov dx,a2head4Y
	alien2head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2head4X
		cmp ax,eyesize
		jl alien2head4
		mov cx,a2head4X
		inc dx
		mov ax,dx
		sub ax,a2head4Y
		cmp ax,headsize
	jl alien2head4
	
	
	mov cx,a2hand1X                                  ;x
	mov dx,a2hand1Y                                   ;y
	
	alien2hand1:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand1X
		cmp ax,eyesize
		jl alien2hand1
		mov cx,a2hand1X
		inc dx
		mov ax,dx
		sub ax,a2hand1Y
		cmp ax,handsize
	jl alien2hand1
	
	mov cx,a2hand2X                                  ;x
	mov dx,a2hand2Y                                   ;y
	
	alien2hand2:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand2X
		cmp ax,eyesize
		jl alien2hand2
		mov cx,a2hand2X
		inc dx
		mov ax,dx
		sub ax,a2hand2Y
		cmp ax,handsize
	jl alien2hand2
	
	
	
	mov cx,a2hand3X                                  ;x
	mov dx,a2hand3Y                                   ;y
	
	alien2hand3:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand3X
		cmp ax,eyesize
		jl alien2hand3
		mov cx,a2hand3X
		inc dx
		mov ax,dx
		sub ax,a2hand3Y
		cmp ax,handsize
	jl alien2hand3
	mov cx,a2hand4X                                  ;x
	mov dx,a2hand4Y                                   ;y
	
	alien2hand4:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand4X
		cmp ax,eyesize
		jl alien2hand4
		mov cx,a2hand4X
		inc dx
		mov ax,dx
		sub ax,a2hand4Y
		cmp ax,handsize
	jl alien2hand4
	
	mov cx,a2hand5X                                  ;x
	mov dx,a2hand5Y                                   ;y
	
	alien2hand5:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand5X
		cmp ax,eyesize
		jl alien2hand5
		mov cx,a2hand5X
		inc dx
		mov ax,dx
		sub ax,a2hand5Y
		cmp ax,handsize
	jl alien2hand5
	mov cx,a2hand6X                                  ;x
	mov dx,a2hand6Y                                   ;y
	
	alien2hand6:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a2hand6X
		cmp ax,eyesize
		jl alien2hand6
		mov cx,a2hand6X
		inc dx
		mov ax,dx
		sub ax,a2hand6Y
		cmp ax,handsize
	jl alien2hand6
	check3:
	mov ax,0
	mov ax,1
	cmp a3dead,ax
	je check4
	;alien3
	mov cx,alien3X                                  ;x
	mov dx,alien3Y                                   ;y
	alien3:
	mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien3X
		cmp ax,alien3size
		jl alien3
		mov cx,alien3X
		inc dx
		mov ax,dx
		sub ax,alien3Y
		cmp ax,alien3size
	jl alien3
	
	mov cx,a3eye1X                                  ;x
	mov dx,a3eye1Y                                   ;y
	
	alien3eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3eye1X
		cmp ax,eyesize
		jl alien3eye
		mov cx,a3eye1X
		inc dx
		mov ax,dx
		sub ax,a3eye1Y
		cmp ax,eyesize
	jl alien3eye
	
	mov cx,a3eye2X                                  ;x
	mov dx,a3eye2Y                                   ;y
	
	alien3eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3eye2X
		cmp ax,eyesize
		jl alien3eye2
		mov cx,a3eye2X
		inc dx
		mov ax,dx
		sub ax,a3eye2Y
		cmp ax,eyesize
	jl alien3eye2
	
	
	mov cx,a3head1X                                  ;x
	mov dx,a3head1Y                                   ;y
	
	alien3head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3head1X
		cmp ax,eyesize
		jl alien3head1
		mov cx,a3head1X
		inc dx
		mov ax,dx
		sub ax,a3head1Y
		cmp ax,headsize
	jl alien3head1
	mov cx,a3head2X                                  ;x
	mov dx,a3head2Y
	alien3head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3head2X
		cmp ax,eyesize
		jl alien3head2
		mov cx,a3head2X
		inc dx
		mov ax,dx
		sub ax,a3head2Y
		cmp ax,headsize
	jl alien3head2
	
	
	mov cx,a3head3X                                  ;x
	mov dx,a3head3Y                                   ;y
	
	alien3head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3head3X
		cmp ax,eyesize
		jl alien3head3
		mov cx,a3head3X
		inc dx
		mov ax,dx
		sub ax,a3head3Y
		cmp ax,headsize
	jl alien3head3
	mov cx,a3head4X                                  ;x
	mov dx,a3head4Y
	alien3head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3head4X
		cmp ax,eyesize
		jl alien3head4
		mov cx,a3head4X
		inc dx
		mov ax,dx
		sub ax,a3head4Y
		cmp ax,headsize
	jl alien3head4
	
	
	mov cx,a3hand1X                                  ;x
	mov dx,a3hand1Y                                   ;y
	
	alien3hand1:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand1X
		cmp ax,eyesize
		jl alien3hand1
		mov cx,a3hand1X
		inc dx
		mov ax,dx
		sub ax,a3hand1Y
		cmp ax,handsize
	jl alien3hand1
	
	mov cx,a3hand2X                                  ;x
	mov dx,a3hand2Y                                   ;y
	
	alien3hand2:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand2X
		cmp ax,eyesize
		jl alien3hand2
		mov cx,a3hand2X
		inc dx
		mov ax,dx
		sub ax,a3hand2Y
		cmp ax,handsize
	jl alien3hand2
	
	
	
	mov cx,a3hand3X                                  ;x
	mov dx,a3hand3Y                                   ;y
	
	alien3hand3:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand3X
		cmp ax,eyesize
		jl alien3hand3
		mov cx,a3hand3X
		inc dx
		mov ax,dx
		sub ax,a3hand3Y
		cmp ax,handsize
	jl alien3hand3
	mov cx,a3hand4X                                  ;x
	mov dx,a3hand4Y                                   ;y
	
	alien3hand4:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand4X
		cmp ax,eyesize
		jl alien3hand4
		mov cx,a3hand4X
		inc dx
		mov ax,dx
		sub ax,a3hand4Y
		cmp ax,handsize
	jl alien3hand4
	
	mov cx,a3hand5X                                  ;x
	mov dx,a3hand5Y                                   ;y
	
	alien3hand5:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand5X
		cmp ax,eyesize
		jl alien3hand5
		mov cx,a3hand5X
		inc dx
		mov ax,dx
		sub ax,a3hand5Y
		cmp ax,handsize
	jl alien3hand5
	mov cx,a3hand6X                                  ;x
	mov dx,a3hand6Y                                   ;y
	
	alien3hand6:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a3hand6X
		cmp ax,eyesize
		jl alien3hand6
		mov cx,a3hand6X
		inc dx
		mov ax,dx
		sub ax,a3hand6Y
		cmp ax,handsize
	jl alien3hand6
	
	check4:
	mov ax,0
	mov ax,1
	cmp a4dead,ax
	je check5
								;alien4
	mov cx,alien4X                                  ;x
	mov dx,alien4Y                                   ;y
	alien4:
	mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien4X
		cmp ax,alien4size
		jl alien4
		mov cx,alien4X
		inc dx
		mov ax,dx
		sub ax,alien4Y
		cmp ax,alien4size
	jl alien4
	
	mov cx,a4eye1X                                  ;x
	mov dx,a4eye1Y                                   ;y
	
	alien4eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4eye1X
		cmp ax,eyesize
		jl alien4eye
		mov cx,a4eye1X
		inc dx
		mov ax,dx
		sub ax,a4eye1Y
		cmp ax,eyesize
	jl alien4eye
	
	mov cx,a4eye2X                                  ;x
	mov dx,a4eye2Y                                   ;y
	
	alien4eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4eye2X
		cmp ax,eyesize
		jl alien4eye2
		mov cx,a4eye2X
		inc dx
		mov ax,dx
		sub ax,a4eye2Y
		cmp ax,eyesize
	jl alien4eye2
	
	
	mov cx,a4head1X                                  ;x
	mov dx,a4head1Y                                   ;y
	
	alien4head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4head1X
		cmp ax,eyesize
		jl alien4head1
		mov cx,a4head1X
		inc dx
		mov ax,dx
		sub ax,a4head1Y
		cmp ax,headsize
	jl alien4head1
	mov cx,a4head2X                                  ;x
	mov dx,a4head2Y
	alien4head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4head2X
		cmp ax,eyesize
		jl alien4head2
		mov cx,a4head2X
		inc dx
		mov ax,dx
		sub ax,a4head2Y
		cmp ax,headsize
	jl alien4head2
	
	
	mov cx,a4head3X                                  ;x
	mov dx,a4head3Y                                   ;y
	
	alien4head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4head3X
		cmp ax,eyesize
		jl alien4head3
		mov cx,a4head3X
		inc dx
		mov ax,dx
		sub ax,a4head3Y
		cmp ax,headsize
	jl alien4head3
	mov cx,a4head4X                                  ;x
	mov dx,a4head4Y
	alien4head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4head4X
		cmp ax,eyesize
		jl alien4head4
		mov cx,a4head4X
		inc dx
		mov ax,dx
		sub ax,a4head4Y
		cmp ax,headsize
	jl alien4head4
	
	
	mov cx,a4hand1X                                  ;x
	mov dx,a4hand1Y                                   ;y
	
	alien4hand1:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand1X
		cmp ax,eyesize
		jl alien4hand1
		mov cx,a4hand1X
		inc dx
		mov ax,dx
		sub ax,a4hand1Y
		cmp ax,handsize
	jl alien4hand1
	
	mov cx,a4hand2X                                  ;x
	mov dx,a4hand2Y                                   ;y
	
	alien4hand2:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand2X
		cmp ax,eyesize
		jl alien4hand2
		mov cx,a4hand2X
		inc dx
		mov ax,dx
		sub ax,a4hand2Y
		cmp ax,handsize
	jl alien4hand2
	
	
	
	mov cx,a4hand3X                                  ;x
	mov dx,a4hand3Y                                   ;y
	
	alien4hand3:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand3X
		cmp ax,eyesize
		jl alien4hand3
		mov cx,a4hand3X
		inc dx
		mov ax,dx
		sub ax,a4hand3Y
		cmp ax,handsize
	jl alien4hand3
	mov cx,a4hand4X                                  ;x
	mov dx,a4hand4Y                                   ;y
	
	alien4hand4:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand4X
		cmp ax,eyesize
		jl alien4hand4
		mov cx,a4hand4X
		inc dx
		mov ax,dx
		sub ax,a4hand4Y
		cmp ax,handsize
	jl alien4hand4
	
	mov cx,a4hand5X                                  ;x
	mov dx,a4hand5Y                                   ;y
	
	alien4hand5:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand5X
		cmp ax,eyesize
		jl alien4hand5
		mov cx,a4hand5X
		inc dx
		mov ax,dx
		sub ax,a4hand5Y
		cmp ax,handsize
	jl alien4hand5
	mov cx,a4hand6X                                  ;x
	mov dx,a4hand6Y                                   ;y
	
	alien4hand6:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a4hand6X
		cmp ax,eyesize
		jl alien4hand6
		mov cx,a4hand6X
		inc dx
		mov ax,dx
		sub ax,a4hand6Y
		cmp ax,handsize
	jl alien4hand6
	
	check5:
	mov ax,0
	mov ax,1
	cmp a5dead,ax
	je check6
								;alien5
	mov cx,alien5X                                  ;x
	mov dx,alien5Y                                   ;y
	alien5:
	mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien5X
		cmp ax,alien5size
		jl alien5
		mov cx,alien5X
		inc dx
		mov ax,dx
		sub ax,alien5Y
		cmp ax,alien5size
	jl alien5
	
	mov cx,a5eye1X                                  ;x
	mov dx,a5eye1Y                                   ;y
	
	alien5eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5eye1X
		cmp ax,eyesize
		jl alien5eye
		mov cx,a5eye1X
		inc dx
		mov ax,dx
		sub ax,a5eye1Y
		cmp ax,eyesize
	jl alien5eye
	
	mov cx,a5eye2X                                  ;x
	mov dx,a5eye2Y                                   ;y
	
	alien5eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5eye2X
		cmp ax,eyesize
		jl alien5eye2
		mov cx,a5eye2X
		inc dx
		mov ax,dx
		sub ax,a5eye2Y
		cmp ax,eyesize
	jl alien5eye2
	
	
	mov cx,a5head1X                                  ;x
	mov dx,a5head1Y                                   ;y
	
	alien5head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5head1X
		cmp ax,eyesize
		jl alien5head1
		mov cx,a5head1X
		inc dx
		mov ax,dx
		sub ax,a5head1Y
		cmp ax,headsize
	jl alien5head1
	mov cx,a5head2X                                  ;x
	mov dx,a5head2Y
	alien5head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5head2X
		cmp ax,eyesize
		jl alien5head2
		mov cx,a5head2X
		inc dx
		mov ax,dx
		sub ax,a5head2Y
		cmp ax,headsize
	jl alien5head2
	
	
	mov cx,a5head3X                                  ;x
	mov dx,a5head3Y                                   ;y
	
	alien5head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5head3X
		cmp ax,eyesize
		jl alien5head3
		mov cx,a5head3X
		inc dx
		mov ax,dx
		sub ax,a5head3Y
		cmp ax,headsize
	jl alien5head3
	mov cx,a5head4X                                  ;x
	mov dx,a5head4Y
	alien5head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5head4X
		cmp ax,eyesize
		jl alien5head4
		mov cx,a5head4X
		inc dx
		mov ax,dx
		sub ax,a5head4Y
		cmp ax,headsize
	jl alien5head4
	
	
	mov cx,a5hand1X                                  ;x
	mov dx,a5hand1Y                                   ;y
	
	alien5hand1:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand1X
		cmp ax,eyesize
		jl alien5hand1
		mov cx,a5hand1X
		inc dx
		mov ax,dx
		sub ax,a5hand1Y
		cmp ax,handsize
	jl alien5hand1
	
	mov cx,a5hand2X                                  ;x
	mov dx,a5hand2Y                                   ;y
	
	alien5hand2:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand2X
		cmp ax,eyesize
		jl alien5hand2
		mov cx,a5hand2X
		inc dx
		mov ax,dx
		sub ax,a5hand2Y
		cmp ax,handsize
	jl alien5hand2
	
	
	
	mov cx,a5hand3X                                  ;x
	mov dx,a5hand3Y                                   ;y
	
	alien5hand3:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand3X
		cmp ax,eyesize
		jl alien5hand3
		mov cx,a5hand3X
		inc dx
		mov ax,dx
		sub ax,a5hand3Y
		cmp ax,handsize
	jl alien5hand3
	mov cx,a5hand4X                                  ;x
	mov dx,a5hand4Y                                   ;y
	
	alien5hand4:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand4X
		cmp ax,eyesize
		jl alien5hand4
		mov cx,a5hand4X
		inc dx
		mov ax,dx
		sub ax,a5hand4Y
		cmp ax,handsize
	jl alien5hand4
	
	mov cx,a5hand5X                                  ;x
	mov dx,a5hand5Y                                   ;y
	
	alien5hand5:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand5X
		cmp ax,eyesize
		jl alien5hand5
		mov cx,a5hand5X
		inc dx
		mov ax,dx
		sub ax,a5hand5Y
		cmp ax,handsize
	jl alien5hand5
	mov cx,a5hand6X                                  ;x
	mov dx,a5hand6Y                                   ;y
	
	alien5hand6:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a5hand6X
		cmp ax,eyesize
		jl alien5hand6
		mov cx,a5hand6X
		inc dx
		mov ax,dx
		sub ax,a5hand6Y
		cmp ax,handsize
	jl alien5hand6
	
	check6:
	mov ax,0
	mov ax,1
	cmp a6dead,ax
	je check7
								;alien6
	mov cx,alien6X                                  ;x
	mov dx,alien6Y                                   ;y
	alien6:
	mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien6X
		cmp ax,alien6size
		jl alien6
		mov cx,alien6X
		inc dx
		mov ax,dx
		sub ax,alien6Y
		cmp ax,alien6size
	jl alien6
	
	mov cx,a6eye1X                                  ;x
	mov dx,a6eye1Y                                   ;y
	
	alien6eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6eye1X
		cmp ax,eyesize
		jl alien6eye
		mov cx,a6eye1X
		inc dx
		mov ax,dx
		sub ax,a6eye1Y
		cmp ax,eyesize
	jl alien6eye
	
	mov cx,a6eye2X                                  ;x
	mov dx,a6eye2Y                                   ;y
	
	alien6eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6eye2X
		cmp ax,eyesize
		jl alien6eye2
		mov cx,a6eye2X
		inc dx
		mov ax,dx
		sub ax,a6eye2Y
		cmp ax,eyesize
	jl alien6eye2
	
	
	mov cx,a6head1X                                  ;x
	mov dx,a6head1Y                                   ;y
	
	alien6head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6head1X
		cmp ax,eyesize
		jl alien6head1
		mov cx,a6head1X
		inc dx
		mov ax,dx
		sub ax,a6head1Y
		cmp ax,headsize
	jl alien6head1
	mov cx,a6head2X                                  ;x
	mov dx,a6head2Y
	alien6head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6head2X
		cmp ax,eyesize
		jl alien6head2
		mov cx,a6head2X
		inc dx
		mov ax,dx
		sub ax,a6head2Y
		cmp ax,headsize
	jl alien6head2
	
	
	mov cx,a6head3X                                  ;x
	mov dx,a6head3Y                                   ;y
	
	alien6head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6head3X
		cmp ax,eyesize
		jl alien6head3
		mov cx,a6head3X
		inc dx
		mov ax,dx
		sub ax,a6head3Y
		cmp ax,headsize
	jl alien6head3
	mov cx,a6head4X                                  ;x
	mov dx,a6head4Y
	alien6head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6head4X
		cmp ax,eyesize
		jl alien6head4
		mov cx,a6head4X
		inc dx
		mov ax,dx
		sub ax,a6head4Y
		cmp ax,headsize
	jl alien6head4
	
	
	mov cx,a6hand1X                                  ;x
	mov dx,a6hand1Y                                   ;y
	
	alien6hand1:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand1X
		cmp ax,eyesize
		jl alien6hand1
		mov cx,a6hand1X
		inc dx
		mov ax,dx
		sub ax,a6hand1Y
		cmp ax,handsize
	jl alien6hand1
	
	mov cx,a6hand2X                                  ;x
	mov dx,a6hand2Y                                   ;y
	
	alien6hand2:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand2X
		cmp ax,eyesize
		jl alien6hand2
		mov cx,a6hand2X
		inc dx
		mov ax,dx
		sub ax,a6hand2Y
		cmp ax,handsize
	jl alien6hand2
	
	
	
	mov cx,a6hand3X                                  ;x
	mov dx,a6hand3Y                                   ;y
	
	alien6hand3:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand3X
		cmp ax,eyesize
		jl alien6hand3
		mov cx,a6hand3X
		inc dx
		mov ax,dx
		sub ax,a6hand3Y
		cmp ax,handsize
	jl alien6hand3
	mov cx,a6hand4X                                  ;x
	mov dx,a6hand4Y                                   ;y
	
	alien6hand4:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand4X
		cmp ax,eyesize
		jl alien6hand4
		mov cx,a6hand4X
		inc dx
		mov ax,dx
		sub ax,a6hand4Y
		cmp ax,handsize
	jl alien6hand4
	
	mov cx,a6hand5X                                  ;x
	mov dx,a6hand5Y                                   ;y
	
	alien6hand5:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand5X
		cmp ax,eyesize
		jl alien6hand5
		mov cx,a6hand5X
		inc dx
		mov ax,dx
		sub ax,a6hand5Y
		cmp ax,handsize
	jl alien6hand5
	mov cx,a6hand6X                                  ;x
	mov dx,a6hand6Y                                   ;y
	
	alien6hand6:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a6hand6X
		cmp ax,eyesize
		jl alien6hand6
		mov cx,a6hand6X
		inc dx
		mov ax,dx
		sub ax,a6hand6Y
		cmp ax,handsize
	jl alien6hand6
	check7:
	mov ax,0
	mov ax,1
	cmp a7dead,ax
	je check8
								;alien7
	mov cx,alien7X                                  ;x
	mov dx,alien7Y                                   ;y
	alien7:
	mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien7X
		cmp ax,alien7size
		jl alien7
		mov cx,alien7X
		inc dx
		mov ax,dx
		sub ax,alien7Y
		cmp ax,alien7size
	jl alien7
	
	mov cx,a7eye1X                                  ;x
	mov dx,a7eye1Y                                   ;y
	
	alien7eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7eye1X
		cmp ax,eyesize
		jl alien7eye
		mov cx,a7eye1X
		inc dx
		mov ax,dx
		sub ax,a7eye1Y
		cmp ax,eyesize
	jl alien7eye
	
	mov cx,a7eye2X                                  ;x
	mov dx,a7eye2Y                                   ;y
	
	alien7eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7eye2X
		cmp ax,eyesize
		jl alien7eye2
		mov cx,a7eye2X
		inc dx
		mov ax,dx
		sub ax,a7eye2Y
		cmp ax,eyesize
	jl alien7eye2
	
	
	mov cx,a7head1X                                  ;x
	mov dx,a7head1Y                                   ;y
	
	alien7head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7head1X
		cmp ax,eyesize
		jl alien7head1
		mov cx,a7head1X
		inc dx
		mov ax,dx
		sub ax,a7head1Y
		cmp ax,headsize
	jl alien7head1
	mov cx,a7head2X                                  ;x
	mov dx,a7head2Y
	alien7head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7head2X
		cmp ax,eyesize
		jl alien7head2
		mov cx,a7head2X
		inc dx
		mov ax,dx
		sub ax,a7head2Y
		cmp ax,headsize
	jl alien7head2
	
	
	mov cx,a7head3X                                  ;x
	mov dx,a7head3Y                                   ;y
	
	alien7head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7head3X
		cmp ax,eyesize
		jl alien7head3
		mov cx,a7head3X
		inc dx
		mov ax,dx
		sub ax,a7head3Y
		cmp ax,headsize
	jl alien7head3
	mov cx,a7head4X                                  ;x
	mov dx,a7head4Y
	alien7head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7head4X
		cmp ax,eyesize
		jl alien7head4
		mov cx,a7head4X
		inc dx
		mov ax,dx
		sub ax,a7head4Y
		cmp ax,headsize
	jl alien7head4
	
	
	mov cx,a7hand1X                                  ;x
	mov dx,a7hand1Y                                   ;y
	
	alien7hand1:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand1X
		cmp ax,eyesize
		jl alien7hand1
		mov cx,a7hand1X
		inc dx
		mov ax,dx
		sub ax,a7hand1Y
		cmp ax,handsize
	jl alien7hand1
	
	mov cx,a7hand2X                                  ;x
	mov dx,a7hand2Y                                   ;y
	
	alien7hand2:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand2X
		cmp ax,eyesize
		jl alien7hand2
		mov cx,a7hand2X
		inc dx
		mov ax,dx
		sub ax,a7hand2Y
		cmp ax,handsize
	jl alien7hand2
	
	
	
	mov cx,a7hand3X                                  ;x
	mov dx,a7hand3Y                                   ;y
	
	alien7hand3:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand3X
		cmp ax,eyesize
		jl alien7hand3
		mov cx,a7hand3X
		inc dx
		mov ax,dx
		sub ax,a7hand3Y
		cmp ax,handsize
	jl alien7hand3
	mov cx,a7hand4X                                  ;x
	mov dx,a7hand4Y                                   ;y
	
	alien7hand4:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand4X
		cmp ax,eyesize
		jl alien7hand4
		mov cx,a7hand4X
		inc dx
		mov ax,dx
		sub ax,a7hand4Y
		cmp ax,handsize
	jl alien7hand4
	
	mov cx,a7hand5X                                  ;x
	mov dx,a7hand5Y                                   ;y
	
	alien7hand5:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand5X
		cmp ax,eyesize
		jl alien7hand5
		mov cx,a7hand5X
		inc dx
		mov ax,dx
		sub ax,a7hand5Y
		cmp ax,handsize
	jl alien7hand5
	mov cx,a7hand6X                                  ;x
	mov dx,a7hand6Y                                   ;y
	
	alien7hand6:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a7hand6X
		cmp ax,eyesize
		jl alien7hand6
		mov cx,a7hand6X
		inc dx
		mov ax,dx
		sub ax,a7hand6Y
		cmp ax,handsize
	jl alien7hand6
	check8:
	mov ax,0
	mov ax,1
	cmp a8dead,ax
	je check9
	
								;alien8
	mov cx,alien8X                                  ;x
	mov dx,alien8Y                                   ;y
	alien8:
	mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien8X
		cmp ax,alien8size
		jl alien8
		mov cx,alien8X
		inc dx
		mov ax,dx
		sub ax,alien8Y
		cmp ax,alien8size
	jl alien8
	
	mov cx,a8eye1X                                  ;x
	mov dx,a8eye1Y                                   ;y
	
	alien8eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8eye1X
		cmp ax,eyesize
		jl alien8eye
		mov cx,a8eye1X
		inc dx
		mov ax,dx
		sub ax,a8eye1Y
		cmp ax,eyesize
	jl alien8eye
	
	mov cx,a8eye2X                                  ;x
	mov dx,a8eye2Y                                   ;y
	
	alien8eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8eye2X
		cmp ax,eyesize
		jl alien8eye2
		mov cx,a8eye2X
		inc dx
		mov ax,dx
		sub ax,a8eye2Y
		cmp ax,eyesize
	jl alien8eye2
	
	
	mov cx,a8head1X                                  ;x
	mov dx,a8head1Y                                   ;y
	
	alien8head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8head1X
		cmp ax,eyesize
		jl alien8head1
		mov cx,a8head1X
		inc dx
		mov ax,dx
		sub ax,a8head1Y
		cmp ax,headsize
	jl alien8head1
	mov cx,a8head2X                                  ;x
	mov dx,a8head2Y
	alien8head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8head2X
		cmp ax,eyesize
		jl alien8head2
		mov cx,a8head2X
		inc dx
		mov ax,dx
		sub ax,a8head2Y
		cmp ax,headsize
	jl alien8head2
	
	
	mov cx,a8head3X                                  ;x
	mov dx,a8head3Y                                   ;y
	
	alien8head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8head3X
		cmp ax,eyesize
		jl alien8head3
		mov cx,a8head3X
		inc dx
		mov ax,dx
		sub ax,a8head3Y
		cmp ax,headsize
	jl alien8head3
	mov cx,a8head4X                                  ;x
	mov dx,a8head4Y
	alien8head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8head4X
		cmp ax,eyesize
		jl alien8head4
		mov cx,a8head4X
		inc dx
		mov ax,dx
		sub ax,a8head4Y
		cmp ax,headsize
	jl alien8head4
	
	
	mov cx,a8hand1X                                  ;x
	mov dx,a8hand1Y                                   ;y
	
	alien8hand1:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand1X
		cmp ax,eyesize
		jl alien8hand1
		mov cx,a8hand1X
		inc dx
		mov ax,dx
		sub ax,a8hand1Y
		cmp ax,handsize
	jl alien8hand1
	
	mov cx,a8hand2X                                  ;x
	mov dx,a8hand2Y                                   ;y
	
	alien8hand2:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand2X
		cmp ax,eyesize
		jl alien8hand2
		mov cx,a8hand2X
		inc dx
		mov ax,dx
		sub ax,a8hand2Y
		cmp ax,handsize
	jl alien8hand2
	
	
	
	mov cx,a8hand3X                                  ;x
	mov dx,a8hand3Y                                   ;y
	
	alien8hand3:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand3X
		cmp ax,eyesize
		jl alien8hand3
		mov cx,a8hand3X
		inc dx
		mov ax,dx
		sub ax,a8hand3Y
		cmp ax,handsize
	jl alien8hand3
	mov cx,a8hand4X                                  ;x
	mov dx,a8hand4Y                                   ;y
	
	alien8hand4:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand4X
		cmp ax,eyesize
		jl alien8hand4
		mov cx,a8hand4X
		inc dx
		mov ax,dx
		sub ax,a8hand4Y
		cmp ax,handsize
	jl alien8hand4
	
	mov cx,a8hand5X                                  ;x
	mov dx,a8hand5Y                                   ;y
	
	alien8hand5:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand5X
		cmp ax,eyesize
		jl alien8hand5
		mov cx,a8hand5X
		inc dx
		mov ax,dx
		sub ax,a8hand5Y
		cmp ax,handsize
	jl alien8hand5
	mov cx,a8hand6X                                  ;x
	mov dx,a8hand6Y                                   ;y
	
	alien8hand6:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a8hand6X
		cmp ax,eyesize
		jl alien8hand6
		mov cx,a8hand6X
		inc dx
		mov ax,dx
		sub ax,a8hand6Y
		cmp ax,handsize
	jl alien8hand6
	check9:
	mov ax,0
	mov ax,1
	cmp a9dead,ax
	je check10
								;alien9
	mov cx,alien9X                                  ;x
	mov dx,alien9Y                                   ;y
	alien9:
	mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien9X
		cmp ax,alien9size
		jl alien9
		mov cx,alien9X
		inc dx
		mov ax,dx
		sub ax,alien9Y
		cmp ax,alien9size
	jl alien9
	
	mov cx,a9eye1X                                  ;x
	mov dx,a9eye1Y                                   ;y
	
	alien9eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9eye1X
		cmp ax,eyesize
		jl alien9eye
		mov cx,a9eye1X
		inc dx
		mov ax,dx
		sub ax,a9eye1Y
		cmp ax,eyesize
	jl alien9eye
	
	mov cx,a9eye2X                                  ;x
	mov dx,a9eye2Y                                   ;y
	
	alien9eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9eye2X
		cmp ax,eyesize
		jl alien9eye2
		mov cx,a9eye2X
		inc dx
		mov ax,dx
		sub ax,a9eye2Y
		cmp ax,eyesize
	jl alien9eye2
	
	
	mov cx,a9head1X                                  ;x
	mov dx,a9head1Y                                   ;y
	
	alien9head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9head1X
		cmp ax,eyesize
		jl alien9head1
		mov cx,a9head1X
		inc dx
		mov ax,dx
		sub ax,a9head1Y
		cmp ax,headsize
	jl alien9head1
	mov cx,a9head2X                                  ;x
	mov dx,a9head2Y
	alien9head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9head2X
		cmp ax,eyesize
		jl alien9head2
		mov cx,a9head2X
		inc dx
		mov ax,dx
		sub ax,a9head2Y
		cmp ax,headsize
	jl alien9head2
	
	
	mov cx,a9head3X                                  ;x
	mov dx,a9head3Y                                   ;y
	
	alien9head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9head3X
		cmp ax,eyesize
		jl alien9head3
		mov cx,a9head3X
		inc dx
		mov ax,dx
		sub ax,a9head3Y
		cmp ax,headsize
	jl alien9head3
	mov cx,a9head4X                                  ;x
	mov dx,a9head4Y
	alien9head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9head4X
		cmp ax,eyesize
		jl alien9head4
		mov cx,a9head4X
		inc dx
		mov ax,dx
		sub ax,a9head4Y
		cmp ax,headsize
	jl alien9head4
	
	
	mov cx,a9hand1X                                  ;x
	mov dx,a9hand1Y                                   ;y
	
	alien9hand1:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand1X
		cmp ax,eyesize
		jl alien9hand1
		mov cx,a9hand1X
		inc dx
		mov ax,dx
		sub ax,a9hand1Y
		cmp ax,handsize
	jl alien9hand1
	
	mov cx,a9hand2X                                  ;x
	mov dx,a9hand2Y                                   ;y
	
	alien9hand2:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand2X
		cmp ax,eyesize
		jl alien9hand2
		mov cx,a9hand2X
		inc dx
		mov ax,dx
		sub ax,a9hand2Y
		cmp ax,handsize
	jl alien9hand2
	
	
	
	mov cx,a9hand3X                                  ;x
	mov dx,a9hand3Y                                   ;y
	
	alien9hand3:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand3X
		cmp ax,eyesize
		jl alien9hand3
		mov cx,a9hand3X
		inc dx
		mov ax,dx
		sub ax,a9hand3Y
		cmp ax,handsize
	jl alien9hand3
	mov cx,a9hand4X                                  ;x
	mov dx,a9hand4Y                                   ;y
	
	alien9hand4:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand4X
		cmp ax,eyesize
		jl alien9hand4
		mov cx,a9hand4X
		inc dx
		mov ax,dx
		sub ax,a9hand4Y
		cmp ax,handsize
	jl alien9hand4
	
	mov cx,a9hand5X                                  ;x
	mov dx,a9hand5Y                                   ;y
	
	alien9hand5:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand5X
		cmp ax,eyesize
		jl alien9hand5
		mov cx,a9hand5X
		inc dx
		mov ax,dx
		sub ax,a9hand5Y
		cmp ax,handsize
	jl alien9hand5
	mov cx,a9hand6X                                  ;x
	mov dx,a9hand6Y                                   ;y
	
	alien9hand6:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a9hand6X
		cmp ax,eyesize
		jl alien9hand6
		mov cx,a9hand6X
		inc dx
		mov ax,dx
		sub ax,a9hand6Y
		cmp ax,handsize
	jl alien9hand6
	check10:
	mov ax,0
	mov ax,1
	cmp a10dead,ax
	je check11
								;alien10
	mov cx,alien10X                                  ;x
	mov dx,alien10Y                                   ;y
	alien10:
	mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien10X
		cmp ax,alien10size
		jl alien10
		mov cx,alien10X
		inc dx
		mov ax,dx
		sub ax,alien10Y
		cmp ax,alien10size
	jl alien10
	
	mov cx,a10eye1X                                  ;x
	mov dx,a10eye1Y                                   ;y
	
	alien10eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10eye1X
		cmp ax,eyesize
		jl alien10eye
		mov cx,a10eye1X
		inc dx
		mov ax,dx
		sub ax,a10eye1Y
		cmp ax,eyesize
	jl alien10eye
	
	mov cx,a10eye2X                                  ;x
	mov dx,a10eye2Y                                   ;y
	
	alien10eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10eye2X
		cmp ax,eyesize
		jl alien10eye2
		mov cx,a10eye2X
		inc dx
		mov ax,dx
		sub ax,a10eye2Y
		cmp ax,eyesize
	jl alien10eye2
	
	
	mov cx,a10head1X                                  ;x
	mov dx,a10head1Y                                   ;y
	
	alien10head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10head1X
		cmp ax,eyesize
		jl alien10head1
		mov cx,a10head1X
		inc dx
		mov ax,dx
		sub ax,a10head1Y
		cmp ax,headsize
	jl alien10head1
	mov cx,a10head2X                                  ;x
	mov dx,a10head2Y
	alien10head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10head2X
		cmp ax,eyesize
		jl alien10head2
		mov cx,a10head2X
		inc dx
		mov ax,dx
		sub ax,a10head2Y
		cmp ax,headsize
	jl alien10head2
	
	
	mov cx,a10head3X                                  ;x
	mov dx,a10head3Y                                   ;y
	
	alien10head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10head3X
		cmp ax,eyesize
		jl alien10head3
		mov cx,a10head3X
		inc dx
		mov ax,dx
		sub ax,a10head3Y
		cmp ax,headsize
	jl alien10head3
	mov cx,a10head4X                                  ;x
	mov dx,a10head4Y
	alien10head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10head4X
		cmp ax,eyesize
		jl alien10head4
		mov cx,a10head4X
		inc dx
		mov ax,dx
		sub ax,a10head4Y
		cmp ax,headsize
	jl alien10head4
	
	
	mov cx,a10hand1X                                  ;x
	mov dx,a10hand1Y                                   ;y
	
	alien10hand1:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand1X
		cmp ax,eyesize
		jl alien10hand1
		mov cx,a10hand1X
		inc dx
		mov ax,dx
		sub ax,a10hand1Y
		cmp ax,handsize
	jl alien10hand1
	
	mov cx,a10hand2X                                  ;x
	mov dx,a10hand2Y                                   ;y
	
	alien10hand2:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand2X
		cmp ax,eyesize
		jl alien10hand2
		mov cx,a10hand2X
		inc dx
		mov ax,dx
		sub ax,a10hand2Y
		cmp ax,handsize
	jl alien10hand2
	
	
	
	mov cx,a10hand3X                                  ;x
	mov dx,a10hand3Y                                   ;y
	
	alien10hand3:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand3X
		cmp ax,eyesize
		jl alien10hand3
		mov cx,a10hand3X
		inc dx
		mov ax,dx
		sub ax,a10hand3Y
		cmp ax,handsize
	jl alien10hand3
	mov cx,a10hand4X                                  ;x
	mov dx,a10hand4Y                                   ;y
	
	alien10hand4:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand4X
		cmp ax,eyesize
		jl alien10hand4
		mov cx,a10hand4X
		inc dx
		mov ax,dx
		sub ax,a10hand4Y
		cmp ax,handsize
	jl alien10hand4
	
	mov cx,a10hand5X                                  ;x
	mov dx,a10hand5Y                                   ;y
	
	alien10hand5:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand5X
		cmp ax,eyesize
		jl alien10hand5
		mov cx,a10hand5X
		inc dx
		mov ax,dx
		sub ax,a10hand5Y
		cmp ax,handsize
	jl alien10hand5
	mov cx,a10hand6X                                  ;x
	mov dx,a10hand6Y                                   ;y
	
	alien10hand6:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a10hand6X
		cmp ax,eyesize
		jl alien10hand6
		mov cx,a10hand6X
		inc dx
		mov ax,dx
		sub ax,a10hand6Y
		cmp ax,handsize
	jl alien10hand6
	check11:
	mov ax,0
	mov ax,1
	cmp a11dead,ax
	je check12
								;alien11
	mov cx,alien11X                                  ;x
	mov dx,alien11Y                                   ;y
	alien11:
	mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien11X
		cmp ax,alien10size
		jl alien11
		mov cx,alien11X
		inc dx
		mov ax,dx
		sub ax,alien11Y
		cmp ax,alien10size
	jl alien11
	
	mov cx,a11eye1X                                  ;x
	mov dx,a11eye1Y                                   ;y
	
	alien11eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11eye1X
		cmp ax,eyesize
		jl alien11eye
		mov cx,a11eye1X
		inc dx
		mov ax,dx
		sub ax,a11eye1Y
		cmp ax,eyesize
	jl alien11eye
	
	mov cx,a11eye2X                                  ;x
	mov dx,a11eye2Y                                   ;y
	
	alien11eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11eye2X
		cmp ax,eyesize
		jl alien11eye2
		mov cx,a11eye2X
		inc dx
		mov ax,dx
		sub ax,a11eye2Y
		cmp ax,eyesize
	jl alien11eye2
	
	
	mov cx,a11head1X                                  ;x
	mov dx,a11head1Y                                   ;y
	
	alien11head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11head1X
		cmp ax,eyesize
		jl alien11head1
		mov cx,a11head1X
		inc dx
		mov ax,dx
		sub ax,a11head1Y
		cmp ax,headsize
	jl alien11head1
	mov cx,a11head2X                                  ;x
	mov dx,a11head2Y
	alien11head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11head2X
		cmp ax,eyesize
		jl alien11head2
		mov cx,a11head2X
		inc dx
		mov ax,dx
		sub ax,a11head2Y
		cmp ax,headsize
	jl alien11head2
	
	
	mov cx,a11head3X                                  ;x
	mov dx,a11head3Y                                   ;y
	
	alien11head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11head3X
		cmp ax,eyesize
		jl alien11head3
		mov cx,a11head3X
		inc dx
		mov ax,dx
		sub ax,a11head3Y
		cmp ax,headsize
	jl alien11head3
	mov cx,a11head4X                                  ;x
	mov dx,a11head4Y
	alien11head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11head4X
		cmp ax,eyesize
		jl alien11head4
		mov cx,a11head4X
		inc dx
		mov ax,dx
		sub ax,a11head4Y
		cmp ax,headsize
	jl alien11head4
	
	
	mov cx,a11hand1X                                  ;x
	mov dx,a11hand1Y                                   ;y
	
	alien11hand1:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand1X
		cmp ax,eyesize
		jl alien11hand1
		mov cx,a11hand1X
		inc dx
		mov ax,dx
		sub ax,a11hand1Y
		cmp ax,handsize
	jl alien11hand1
	
	mov cx,a11hand2X                                  ;x
	mov dx,a11hand2Y                                   ;y
	
	alien11hand2:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand2X
		cmp ax,eyesize
		jl alien11hand2
		mov cx,a11hand2X
		inc dx
		mov ax,dx
		sub ax,a11hand2Y
		cmp ax,handsize
	jl alien11hand2
	
	
	
	mov cx,a11hand3X                                  ;x
	mov dx,a11hand3Y                                   ;y
	
	alien11hand3:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand3X
		cmp ax,eyesize
		jl alien11hand3
		mov cx,a11hand3X
		inc dx
		mov ax,dx
		sub ax,a11hand3Y
		cmp ax,handsize
	jl alien11hand3
	mov cx,a11hand4X                                  ;x
	mov dx,a11hand4Y                                   ;y
	
	alien11hand4:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand4X
		cmp ax,eyesize
		jl alien11hand4
		mov cx,a11hand4X
		inc dx
		mov ax,dx
		sub ax,a11hand4Y
		cmp ax,handsize
	jl alien11hand4
	
	mov cx,a11hand5X                                  ;x
	mov dx,a11hand5Y                                   ;y
	
	alien11hand5:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand5X
		cmp ax,eyesize
		jl alien11hand5
		mov cx,a11hand5X
		inc dx
		mov ax,dx
		sub ax,a11hand5Y
		cmp ax,handsize
	jl alien11hand5
	mov cx,a11hand6X                                  ;x
	mov dx,a11hand6Y                                   ;y
	
	alien11hand6:
		mov ax,aliencolor11
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a11hand6X
		cmp ax,eyesize
		jl alien11hand6
		mov cx,a11hand6X
		inc dx
		mov ax,dx
		sub ax,a11hand6Y
		cmp ax,handsize
	jl alien11hand6
	
	mov cx,alien12X                                  ;x
	mov dx,alien12Y                                   ;y
	check12:
	mov ax,0
	mov ax,1
	cmp a12dead,ax
	je check13
									;alien12
	alien12:
	mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien12X
		cmp ax,alien12size
		jl alien12
		mov cx,alien12X
		inc dx
		mov ax,dx
		sub ax,alien12Y
		cmp ax,alien12size
	jl alien12
	
	mov cx,a12eye1X                                  ;x
	mov dx,a12eye1Y                                   ;y
	
	alien12eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12eye1X
		cmp ax,eyesize
		jl alien12eye
		mov cx,a12eye1X
		inc dx
		mov ax,dx
		sub ax,a12eye1Y
		cmp ax,eyesize
	jl alien12eye
	
	mov cx,a12eye2X                                  ;x
	mov dx,a12eye2Y                                   ;y
	
	alien12eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12eye2X
		cmp ax,eyesize
		jl alien12eye2
		mov cx,a12eye2X
		inc dx
		mov ax,dx
		sub ax,a12eye2Y
		cmp ax,eyesize
	jl alien12eye2
	
	
	mov cx,a12head1X                                  ;x
	mov dx,a12head1Y                                   ;y
	
	alien12head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12head1X
		cmp ax,eyesize
		jl alien12head1
		mov cx,a12head1X
		inc dx
		mov ax,dx
		sub ax,a12head1Y
		cmp ax,headsize
	jl alien12head1
	mov cx,a12head2X                                  ;x
	mov dx,a12head2Y
	alien12head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12head2X
		cmp ax,eyesize
		jl alien12head2
		mov cx,a12head2X
		inc dx
		mov ax,dx
		sub ax,a12head2Y
		cmp ax,headsize
	jl alien12head2
	
	
	mov cx,a12head3X                                  ;x
	mov dx,a12head3Y                                   ;y
	
	alien12head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12head3X
		cmp ax,eyesize
		jl alien12head3
		mov cx,a12head3X
		inc dx
		mov ax,dx
		sub ax,a12head3Y
		cmp ax,headsize
	jl alien12head3
	mov cx,a12head4X                                  ;x
	mov dx,a12head4Y
	alien12head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12head4X
		cmp ax,eyesize
		jl alien12head4
		mov cx,a12head4X
		inc dx
		mov ax,dx
		sub ax,a12head4Y
		cmp ax,headsize
	jl alien12head4
	
	
	mov cx,a12hand1X                                  ;x
	mov dx,a12hand1Y                                   ;y
	
	alien12hand1:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand1X
		cmp ax,eyesize
		jl alien12hand1
		mov cx,a12hand1X
		inc dx
		mov ax,dx
		sub ax,a12hand1Y
		cmp ax,handsize
	jl alien12hand1
	
	mov cx,a12hand2X                                  ;x
	mov dx,a12hand2Y                                   ;y
	
	alien12hand2:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand2X
		cmp ax,eyesize
		jl alien12hand2
		mov cx,a12hand2X
		inc dx
		mov ax,dx
		sub ax,a12hand2Y
		cmp ax,handsize
	jl alien12hand2
	
	
	
	mov cx,a12hand3X                                  ;x
	mov dx,a12hand3Y                                   ;y
	
	alien12hand3:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand3X
		cmp ax,eyesize
		jl alien12hand3
		mov cx,a12hand3X
		inc dx
		mov ax,dx
		sub ax,a12hand3Y
		cmp ax,handsize
	jl alien12hand3
	mov cx,a12hand4X                                  ;x
	mov dx,a12hand4Y                                   ;y
	
	alien12hand4:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand4X
		cmp ax,eyesize
		jl alien12hand4
		mov cx,a12hand4X
		inc dx
		mov ax,dx
		sub ax,a12hand4Y
		cmp ax,handsize
	jl alien12hand4
	
	mov cx,a12hand5X                                  ;x
	mov dx,a12hand5Y                                   ;y
	
	alien12hand5:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand5X
		cmp ax,eyesize
		jl alien12hand5
		mov cx,a12hand5X
		inc dx
		mov ax,dx
		sub ax,a12hand5Y
		cmp ax,handsize
	jl alien12hand5
	mov cx,a12hand6X                                  ;x
	mov dx,a12hand6Y                                   ;y
	
	alien12hand6:
		mov ax,aliencolor2
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a12hand6X
		cmp ax,eyesize
		jl alien12hand6
		mov cx,a12hand6X
		inc dx
		mov ax,dx
		sub ax,a12hand6Y
		cmp ax,handsize
	jl alien12hand6
	check13:
	mov ax,0
	mov ax,1
	cmp a13dead,ax
	je check14
	;alien13
	mov cx,alien13X                                  ;x
	mov dx,alien13Y                                   ;y
	alien13:
	mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien13X
		cmp ax,alien13size
		jl alien13
		mov cx,alien13X
		inc dx
		mov ax,dx
		sub ax,alien13Y
		cmp ax,alien13size
	jl alien13
	
	mov cx,a13eye1X                                  ;x
	mov dx,a13eye1Y                                   ;y
	
	alien13eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13eye1X
		cmp ax,eyesize
		jl alien13eye
		mov cx,a13eye1X
		inc dx
		mov ax,dx
		sub ax,a13eye1Y
		cmp ax,eyesize
	jl alien13eye
	
	mov cx,a13eye2X                                  ;x
	mov dx,a13eye2Y                                   ;y
	
	alien13eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13eye2X
		cmp ax,eyesize
		jl alien13eye2
		mov cx,a13eye2X
		inc dx
		mov ax,dx
		sub ax,a13eye2Y
		cmp ax,eyesize
	jl alien13eye2
	
	
	mov cx,a13head1X                                  ;x
	mov dx,a13head1Y                                   ;y
	
	alien13head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13head1X
		cmp ax,eyesize
		jl alien13head1
		mov cx,a13head1X
		inc dx
		mov ax,dx
		sub ax,a13head1Y
		cmp ax,headsize
	jl alien13head1
	mov cx,a13head2X                                  ;x
	mov dx,a13head2Y
	alien13head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13head2X
		cmp ax,eyesize
		jl alien13head2
		mov cx,a13head2X
		inc dx
		mov ax,dx
		sub ax,a13head2Y
		cmp ax,headsize
	jl alien13head2
	
	
	mov cx,a13head3X                                  ;x
	mov dx,a13head3Y                                   ;y
	
	alien13head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13head3X
		cmp ax,eyesize
		jl alien13head3
		mov cx,a13head3X
		inc dx
		mov ax,dx
		sub ax,a13head3Y
		cmp ax,headsize
	jl alien13head3
	mov cx,a13head4X                                  ;x
	mov dx,a13head4Y
	alien13head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13head4X
		cmp ax,eyesize
		jl alien13head4
		mov cx,a13head4X
		inc dx
		mov ax,dx
		sub ax,a13head4Y
		cmp ax,headsize
	jl alien13head4
	
	
	mov cx,a13hand1X                                  ;x
	mov dx,a13hand1Y                                   ;y
	
	alien13hand1:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand1X
		cmp ax,eyesize
		jl alien13hand1
		mov cx,a13hand1X
		inc dx
		mov ax,dx
		sub ax,a13hand1Y
		cmp ax,handsize
	jl alien13hand1
	
	mov cx,a13hand2X                                  ;x
	mov dx,a13hand2Y                                   ;y
	
	alien13hand2:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand2X
		cmp ax,eyesize
		jl alien13hand2
		mov cx,a13hand2X
		inc dx
		mov ax,dx
		sub ax,a13hand2Y
		cmp ax,handsize
	jl alien13hand2
	
	
	
	mov cx,a13hand3X                                  ;x
	mov dx,a13hand3Y                                   ;y
	
	alien13hand3:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand3X
		cmp ax,eyesize
		jl alien13hand3
		mov cx,a13hand3X
		inc dx
		mov ax,dx
		sub ax,a13hand3Y
		cmp ax,handsize
	jl alien13hand3
	mov cx,a13hand4X                                  ;x
	mov dx,a13hand4Y                                   ;y
	
	alien13hand4:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand4X
		cmp ax,eyesize
		jl alien13hand4
		mov cx,a13hand4X
		inc dx
		mov ax,dx
		sub ax,a13hand4Y
		cmp ax,handsize
	jl alien13hand4
	
	mov cx,a13hand5X                                  ;x
	mov dx,a13hand5Y                                   ;y
	
	alien13hand5:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand5X
		cmp ax,eyesize
		jl alien13hand5
		mov cx,a13hand5X
		inc dx
		mov ax,dx
		sub ax,a13hand5Y
		cmp ax,handsize
	jl alien13hand5
	mov cx,a13hand6X                                  ;x
	mov dx,a13hand6Y                                   ;y
	
	alien13hand6:
		mov ax,aliencolor3
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a13hand6X
		cmp ax,eyesize
		jl alien13hand6
		mov cx,a13hand6X
		inc dx
		mov ax,dx
		sub ax,a13hand6Y
		cmp ax,handsize
	jl alien13hand6


	check14:
	mov ax,0
	mov ax,1
	cmp a14dead,ax
	je check15
	
								;alien14
	mov cx,alien14X                                  ;x
	mov dx,alien14Y                                   ;y
	alien14:
	mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien14X
		cmp ax,alien14size
		jl alien14
		mov cx,alien14X
		inc dx
		mov ax,dx
		sub ax,alien14Y
		cmp ax,alien14size
	jl alien14
	
	mov cx,a14eye1X                                  ;x
	mov dx,a14eye1Y                                   ;y
	
	alien14eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14eye1X
		cmp ax,eyesize
		jl alien14eye
		mov cx,a14eye1X
		inc dx
		mov ax,dx
		sub ax,a14eye1Y
		cmp ax,eyesize
	jl alien14eye
	
	mov cx,a14eye2X                                  ;x
	mov dx,a14eye2Y                                   ;y
	
	alien14eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14eye2X
		cmp ax,eyesize
		jl alien14eye2
		mov cx,a14eye2X
		inc dx
		mov ax,dx
		sub ax,a14eye2Y
		cmp ax,eyesize
	jl alien14eye2
	
	
	mov cx,a14head1X                                  ;x
	mov dx,a14head1Y                                   ;y
	
	alien14head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14head1X
		cmp ax,eyesize
		jl alien14head1
		mov cx,a14head1X
		inc dx
		mov ax,dx
		sub ax,a14head1Y
		cmp ax,headsize
	jl alien14head1
	mov cx,a14head2X                                  ;x
	mov dx,a14head2Y
	alien14head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14head2X
		cmp ax,eyesize
		jl alien14head2
		mov cx,a14head2X
		inc dx
		mov ax,dx
		sub ax,a14head2Y
		cmp ax,headsize
	jl alien14head2
	
	
	mov cx,a14head3X                                  ;x
	mov dx,a14head3Y                                   ;y
	
	alien14head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14head3X
		cmp ax,eyesize
		jl alien14head3
		mov cx,a14head3X
		inc dx
		mov ax,dx
		sub ax,a14head3Y
		cmp ax,headsize
	jl alien14head3
	mov cx,a14head4X                                  ;x
	mov dx,a14head4Y
	alien14head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14head4X
		cmp ax,eyesize
		jl alien14head4
		mov cx,a14head4X
		inc dx
		mov ax,dx
		sub ax,a14head4Y
		cmp ax,headsize
	jl alien14head4
	
	
	mov cx,a14hand1X                                  ;x
	mov dx,a14hand1Y                                   ;y
	
	alien14hand1:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand1X
		cmp ax,eyesize
		jl alien14hand1
		mov cx,a14hand1X
		inc dx
		mov ax,dx
		sub ax,a14hand1Y
		cmp ax,handsize
	jl alien14hand1
	
	mov cx,a14hand2X                                  ;x
	mov dx,a14hand2Y                                   ;y
	
	alien14hand2:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand2X
		cmp ax,eyesize
		jl alien14hand2
		mov cx,a14hand2X
		inc dx
		mov ax,dx
		sub ax,a14hand2Y
		cmp ax,handsize
	jl alien14hand2
	
	
	
	mov cx,a14hand3X                                  ;x
	mov dx,a14hand3Y                                   ;y
	
	alien14hand3:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand3X
		cmp ax,eyesize
		jl alien14hand3
		mov cx,a14hand3X
		inc dx
		mov ax,dx
		sub ax,a14hand3Y
		cmp ax,handsize
	jl alien14hand3
	mov cx,a14hand4X                                  ;x
	mov dx,a14hand4Y                                   ;y
	
	alien14hand4:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand4X
		cmp ax,eyesize
		jl alien14hand4
		mov cx,a14hand4X
		inc dx
		mov ax,dx
		sub ax,a14hand4Y
		cmp ax,handsize
	jl alien14hand4
	
	mov cx,a14hand5X                                  ;x
	mov dx,a14hand5Y                                   ;y
	
	alien14hand5:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand5X
		cmp ax,eyesize
		jl alien14hand5
		mov cx,a14hand5X
		inc dx
		mov ax,dx
		sub ax,a14hand5Y
		cmp ax,handsize
	jl alien14hand5
	mov cx,a14hand6X                                  ;x
	mov dx,a14hand6Y                                   ;y
	
	alien14hand6:
		mov ax,aliencolor4
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a14hand6X
		cmp ax,eyesize
		jl alien14hand6
		mov cx,a14hand6X
		inc dx
		mov ax,dx
		sub ax,a14hand6Y
		cmp ax,handsize
	jl alien14hand6


	check15:
	mov ax,0
	mov ax,1
	cmp a15dead,ax
	je check16
	
								;alien15
	mov cx,alien15X                                  ;x
	mov dx,alien15Y                                   ;y
	alien15:
	mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien15X
		cmp ax,alien15size
		jl alien15
		mov cx,alien15X
		inc dx
		mov ax,dx
		sub ax,alien15Y
		cmp ax,alien15size
	jl alien15
	
	mov cx,a15eye1X                                  ;x
	mov dx,a15eye1Y                                   ;y
	
	alien15eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15eye1X
		cmp ax,eyesize
		jl alien15eye
		mov cx,a15eye1X
		inc dx
		mov ax,dx
		sub ax,a15eye1Y
		cmp ax,eyesize
	jl alien15eye
	
	mov cx,a15eye2X                                  ;x
	mov dx,a15eye2Y                                   ;y
	
	alien15eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15eye2X
		cmp ax,eyesize
		jl alien15eye2
		mov cx,a15eye2X
		inc dx
		mov ax,dx
		sub ax,a15eye2Y
		cmp ax,eyesize
	jl alien15eye2
	
	
	mov cx,a15head1X                                  ;x
	mov dx,a15head1Y                                   ;y
	
	alien15head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15head1X
		cmp ax,eyesize
		jl alien15head1
		mov cx,a15head1X
		inc dx
		mov ax,dx
		sub ax,a15head1Y
		cmp ax,headsize
	jl alien15head1
	mov cx,a15head2X                                  ;x
	mov dx,a15head2Y
	alien15head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15head2X
		cmp ax,eyesize
		jl alien15head2
		mov cx,a15head2X
		inc dx
		mov ax,dx
		sub ax,a15head2Y
		cmp ax,headsize
	jl alien15head2
	
	
	mov cx,a15head3X                                  ;x
	mov dx,a15head3Y                                   ;y
	
	alien15head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15head3X
		cmp ax,eyesize
		jl alien15head3
		mov cx,a15head3X
		inc dx
		mov ax,dx
		sub ax,a15head3Y
		cmp ax,headsize
	jl alien15head3
	mov cx,a15head4X                                  ;x
	mov dx,a15head4Y
	alien15head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15head4X
		cmp ax,eyesize
		jl alien15head4
		mov cx,a15head4X
		inc dx
		mov ax,dx
		sub ax,a15head4Y
		cmp ax,headsize
	jl alien15head4
	
	
	mov cx,a15hand1X                                  ;x
	mov dx,a15hand1Y                                   ;y
	
	alien15hand1:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand1X
		cmp ax,eyesize
		jl alien15hand1
		mov cx,a15hand1X
		inc dx
		mov ax,dx
		sub ax,a15hand1Y
		cmp ax,handsize
	jl alien15hand1
	
	mov cx,a15hand2X                                  ;x
	mov dx,a15hand2Y                                   ;y
	
	alien15hand2:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand2X
		cmp ax,eyesize
		jl alien15hand2
		mov cx,a15hand2X
		inc dx
		mov ax,dx
		sub ax,a15hand2Y
		cmp ax,handsize
	jl alien15hand2
	
	
	
	mov cx,a15hand3X                                  ;x
	mov dx,a15hand3Y                                   ;y
	
	alien15hand3:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand3X
		cmp ax,eyesize
		jl alien15hand3
		mov cx,a15hand3X
		inc dx
		mov ax,dx
		sub ax,a15hand3Y
		cmp ax,handsize
	jl alien15hand3
	mov cx,a15hand4X                                  ;x
	mov dx,a15hand4Y                                   ;y
	
	alien15hand4:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand4X
		cmp ax,eyesize
		jl alien15hand4
		mov cx,a15hand4X
		inc dx
		mov ax,dx
		sub ax,a15hand4Y
		cmp ax,handsize
	jl alien15hand4
	
	mov cx,a15hand5X                                  ;x
	mov dx,a15hand5Y                                   ;y
	
	alien15hand5:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand5X
		cmp ax,eyesize
		jl alien15hand5
		mov cx,a15hand5X
		inc dx
		mov ax,dx
		sub ax,a15hand5Y
		cmp ax,handsize
	jl alien15hand5
	mov cx,a15hand6X                                  ;x
	mov dx,a15hand6Y                                   ;y
	
	alien15hand6:
		mov ax,aliencolor5
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a15hand6X
		cmp ax,eyesize
		jl alien15hand6
		mov cx,a15hand6X
		inc dx
		mov ax,dx
		sub ax,a15hand6Y
		cmp ax,handsize
	jl alien15hand6
	
	check16:
	mov ax,0
	mov ax,1
	cmp a16dead,ax
	je check17
								;alien16
	mov cx,alien16X                                  ;x
	mov dx,alien16Y                                   ;y
	alien16:
	mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien16X
		cmp ax,alien16size
		jl alien16
		mov cx,alien16X
		inc dx
		mov ax,dx
		sub ax,alien16Y
		cmp ax,alien16size
	jl alien16
	
	mov cx,a16eye1X                                  ;x
	mov dx,a16eye1Y                                   ;y
	
	alien16eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16eye1X
		cmp ax,eyesize
		jl alien16eye
		mov cx,a16eye1X
		inc dx
		mov ax,dx
		sub ax,a16eye1Y
		cmp ax,eyesize
	jl alien16eye
	
	mov cx,a16eye2X                                  ;x
	mov dx,a16eye2Y                                   ;y
	
	alien16eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16eye2X
		cmp ax,eyesize
		jl alien16eye2
		mov cx,a16eye2X
		inc dx
		mov ax,dx
		sub ax,a16eye2Y
		cmp ax,eyesize
	jl alien16eye2
	
	
	mov cx,a16head1X                                  ;x
	mov dx,a16head1Y                                   ;y
	
	alien16head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16head1X
		cmp ax,eyesize
		jl alien16head1
		mov cx,a16head1X
		inc dx
		mov ax,dx
		sub ax,a16head1Y
		cmp ax,headsize
	jl alien16head1
	mov cx,a16head2X                                  ;x
	mov dx,a16head2Y
	alien16head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16head2X
		cmp ax,eyesize
		jl alien16head2
		mov cx,a16head2X
		inc dx
		mov ax,dx
		sub ax,a16head2Y
		cmp ax,headsize
	jl alien16head2
	
	
	mov cx,a16head3X                                  ;x
	mov dx,a16head3Y                                   ;y
	
	alien16head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16head3X
		cmp ax,eyesize
		jl alien16head3
		mov cx,a16head3X
		inc dx
		mov ax,dx
		sub ax,a16head3Y
		cmp ax,headsize
	jl alien16head3
	mov cx,a16head4X                                  ;x
	mov dx,a16head4Y
	alien16head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16head4X
		cmp ax,eyesize
		jl alien16head4
		mov cx,a16head4X
		inc dx
		mov ax,dx
		sub ax,a16head4Y
		cmp ax,headsize
	jl alien16head4
	
	
	mov cx,a16hand1X                                  ;x
	mov dx,a16hand1Y                                   ;y
	
	alien16hand1:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand1X
		cmp ax,eyesize
		jl alien16hand1
		mov cx,a16hand1X
		inc dx
		mov ax,dx
		sub ax,a16hand1Y
		cmp ax,handsize
	jl alien16hand1
	
	mov cx,a16hand2X                                  ;x
	mov dx,a16hand2Y                                   ;y
	
	alien16hand2:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand2X
		cmp ax,eyesize
		jl alien16hand2
		mov cx,a16hand2X
		inc dx
		mov ax,dx
		sub ax,a16hand2Y
		cmp ax,handsize
	jl alien16hand2
	
	
	
	mov cx,a16hand3X                                  ;x
	mov dx,a16hand3Y                                   ;y
	
	alien16hand3:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand3X
		cmp ax,eyesize
		jl alien16hand3
		mov cx,a16hand3X
		inc dx
		mov ax,dx
		sub ax,a16hand3Y
		cmp ax,handsize
	jl alien16hand3
	mov cx,a16hand4X                                  ;x
	mov dx,a16hand4Y                                   ;y
	
	alien16hand4:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand4X
		cmp ax,eyesize
		jl alien16hand4
		mov cx,a16hand4X
		inc dx
		mov ax,dx
		sub ax,a16hand4Y
		cmp ax,handsize
	jl alien16hand4
	
	mov cx,a16hand5X                                  ;x
	mov dx,a16hand5Y                                   ;y
	
	alien16hand5:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand5X
		cmp ax,eyesize
		jl alien16hand5
		mov cx,a16hand5X
		inc dx
		mov ax,dx
		sub ax,a16hand5Y
		cmp ax,handsize
	jl alien16hand5
	mov cx,a16hand6X                                  ;x
	mov dx,a16hand6Y                                   ;y
	
	alien16hand6:
		mov ax,aliencolor6
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a16hand6X
		cmp ax,eyesize
		jl alien16hand6
		mov cx,a16hand6X
		inc dx
		mov ax,dx
		sub ax,a16hand6Y
		cmp ax,handsize
	jl alien16hand6
	check17:
	mov ax,0
	mov ax,1
	cmp a17dead,ax
	je check18
								;alien17
	mov cx,alien17X                                  ;x
	mov dx,alien17Y                                   ;y
	alien17:
	mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien17X
		cmp ax,alien17size
		jl alien17
		mov cx,alien17X
		inc dx
		mov ax,dx
		sub ax,alien17Y
		cmp ax,alien17size
	jl alien17
	
	mov cx,a17eye1X                                  ;x
	mov dx,a17eye1Y                                   ;y
	
	alien17eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17eye1X
		cmp ax,eyesize
		jl alien17eye
		mov cx,a17eye1X
		inc dx
		mov ax,dx
		sub ax,a17eye1Y
		cmp ax,eyesize
	jl alien17eye
	
	mov cx,a17eye2X                                  ;x
	mov dx,a17eye2Y                                   ;y
	
	alien17eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17eye2X
		cmp ax,eyesize
		jl alien17eye2
		mov cx,a17eye2X
		inc dx
		mov ax,dx
		sub ax,a17eye2Y
		cmp ax,eyesize
	jl alien17eye2
	
	
	mov cx,a17head1X                                  ;x
	mov dx,a17head1Y                                   ;y
	
	alien17head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17head1X
		cmp ax,eyesize
		jl alien17head1
		mov cx,a17head1X
		inc dx
		mov ax,dx
		sub ax,a17head1Y
		cmp ax,headsize
	jl alien17head1
	mov cx,a17head2X                                  ;x
	mov dx,a17head2Y
	alien17head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17head2X
		cmp ax,eyesize
		jl alien17head2
		mov cx,a17head2X
		inc dx
		mov ax,dx
		sub ax,a17head2Y
		cmp ax,headsize
	jl alien17head2
	
	
	mov cx,a17head3X                                  ;x
	mov dx,a17head3Y                                   ;y
	
	alien17head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17head3X
		cmp ax,eyesize
		jl alien17head3
		mov cx,a17head3X
		inc dx
		mov ax,dx
		sub ax,a17head3Y
		cmp ax,headsize
	jl alien17head3
	mov cx,a17head4X                                  ;x
	mov dx,a17head4Y
	alien17head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17head4X
		cmp ax,eyesize
		jl alien17head4
		mov cx,a17head4X
		inc dx
		mov ax,dx
		sub ax,a17head4Y
		cmp ax,headsize
	jl alien17head4
	
	
	mov cx,a17hand1X                                  ;x
	mov dx,a17hand1Y                                   ;y
	
	alien17hand1:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand1X
		cmp ax,eyesize
		jl alien17hand1
		mov cx,a17hand1X
		inc dx
		mov ax,dx
		sub ax,a17hand1Y
		cmp ax,handsize
	jl alien17hand1
	
	mov cx,a17hand2X                                  ;x
	mov dx,a17hand2Y                                   ;y
	
	alien17hand2:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand2X
		cmp ax,eyesize
		jl alien17hand2
		mov cx,a17hand2X
		inc dx
		mov ax,dx
		sub ax,a17hand2Y
		cmp ax,handsize
	jl alien17hand2
	
	
	
	mov cx,a17hand3X                                  ;x
	mov dx,a17hand3Y                                   ;y
	
	alien17hand3:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand3X
		cmp ax,eyesize
		jl alien17hand3
		mov cx,a17hand3X
		inc dx
		mov ax,dx
		sub ax,a17hand3Y
		cmp ax,handsize
	jl alien17hand3
	mov cx,a17hand4X                                  ;x
	mov dx,a17hand4Y                                   ;y
	
	alien17hand4:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand4X
		cmp ax,eyesize
		jl alien17hand4
		mov cx,a17hand4X
		inc dx
		mov ax,dx
		sub ax,a17hand4Y
		cmp ax,handsize
	jl alien17hand4
	
	mov cx,a17hand5X                                  ;x
	mov dx,a17hand5Y                                   ;y
	
	alien17hand5:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand5X
		cmp ax,eyesize
		jl alien17hand5
		mov cx,a17hand5X
		inc dx
		mov ax,dx
		sub ax,a17hand5Y
		cmp ax,handsize
	jl alien17hand5
	mov cx,a17hand6X                                  ;x
	mov dx,a17hand6Y                                   ;y
	
	alien17hand6:
		mov ax,aliencolor7
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a17hand6X
		cmp ax,eyesize
		jl alien17hand6
		mov cx,a17hand6X
		inc dx
		mov ax,dx
		sub ax,a17hand6Y
		cmp ax,handsize
	jl alien17hand6
	check18:
	mov ax,0
	mov ax,1
	cmp a18dead,ax
	je check19
								;alien18
	mov cx,alien18X                                  ;x
	mov dx,alien18Y                                   ;y
	alien18:
	mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien18X
		cmp ax,alien18size
		jl alien18
		mov cx,alien18X
		inc dx
		mov ax,dx
		sub ax,alien18Y
		cmp ax,alien18size
	jl alien18
	
	mov cx,a18eye1X                                  ;x
	mov dx,a18eye1Y                                   ;y
	
	alien18eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18eye1X
		cmp ax,eyesize
		jl alien18eye
		mov cx,a18eye1X
		inc dx
		mov ax,dx
		sub ax,a18eye1Y
		cmp ax,eyesize
	jl alien18eye
	
	mov cx,a18eye2X                                  ;x
	mov dx,a18eye2Y                                   ;y
	
	alien18eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18eye2X
		cmp ax,eyesize
		jl alien18eye2
		mov cx,a18eye2X
		inc dx
		mov ax,dx
		sub ax,a18eye2Y
		cmp ax,eyesize
	jl alien18eye2
	
	
	mov cx,a18head1X                                  ;x
	mov dx,a18head1Y                                   ;y
	
	alien18head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18head1X
		cmp ax,eyesize
		jl alien18head1
		mov cx,a18head1X
		inc dx
		mov ax,dx
		sub ax,a18head1Y
		cmp ax,headsize
	jl alien18head1
	mov cx,a18head2X                                  ;x
	mov dx,a18head2Y
	alien18head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18head2X
		cmp ax,eyesize
		jl alien18head2
		mov cx,a18head2X
		inc dx
		mov ax,dx
		sub ax,a18head2Y
		cmp ax,headsize
	jl alien18head2
	
	
	mov cx,a18head3X                                  ;x
	mov dx,a18head3Y                                   ;y
	
	alien18head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18head3X
		cmp ax,eyesize
		jl alien18head3
		mov cx,a18head3X
		inc dx
		mov ax,dx
		sub ax,a18head3Y
		cmp ax,headsize
	jl alien18head3
	mov cx,a18head4X                                  ;x
	mov dx,a18head4Y
	alien18head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18head4X
		cmp ax,eyesize
		jl alien18head4
		mov cx,a18head4X
		inc dx
		mov ax,dx
		sub ax,a18head4Y
		cmp ax,headsize
	jl alien18head4
	
	
	mov cx,a18hand1X                                  ;x
	mov dx,a18hand1Y                                   ;y
	
	alien18hand1:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand1X
		cmp ax,eyesize
		jl alien18hand1
		mov cx,a18hand1X
		inc dx
		mov ax,dx
		sub ax,a18hand1Y
		cmp ax,handsize
	jl alien18hand1
	
	mov cx,a18hand2X                                  ;x
	mov dx,a18hand2Y                                   ;y
	
	alien18hand2:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand2X
		cmp ax,eyesize
		jl alien18hand2
		mov cx,a18hand2X
		inc dx
		mov ax,dx
		sub ax,a18hand2Y
		cmp ax,handsize
	jl alien18hand2
	
	
	
	mov cx,a18hand3X                                  ;x
	mov dx,a18hand3Y                                   ;y
	
	alien18hand3:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand3X
		cmp ax,eyesize
		jl alien18hand3
		mov cx,a18hand3X
		inc dx
		mov ax,dx
		sub ax,a18hand3Y
		cmp ax,handsize
	jl alien18hand3
	mov cx,a18hand4X                                  ;x
	mov dx,a18hand4Y                                   ;y
	
	alien18hand4:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand4X
		cmp ax,eyesize
		jl alien18hand4
		mov cx,a18hand4X
		inc dx
		mov ax,dx
		sub ax,a18hand4Y
		cmp ax,handsize
	jl alien18hand4
	
	mov cx,a18hand5X                                  ;x
	mov dx,a18hand5Y                                   ;y
	
	alien18hand5:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand5X
		cmp ax,eyesize
		jl alien18hand5
		mov cx,a18hand5X
		inc dx
		mov ax,dx
		sub ax,a18hand5Y
		cmp ax,handsize
	jl alien18hand5
	mov cx,a18hand6X                                  ;x
	mov dx,a18hand6Y                                   ;y
	
	alien18hand6:
		mov ax,aliencolor8
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a18hand6X
		cmp ax,eyesize
		jl alien18hand6
		mov cx,a18hand6X
		inc dx
		mov ax,dx
		sub ax,a18hand6Y
		cmp ax,handsize
	jl alien18hand6
	check19:
	mov ax,0
	mov ax,1
	cmp a19dead,ax
	je check20
								;alien19
	mov cx,alien19X                                  ;x
	mov dx,alien19Y                                   ;y
	alien19:
	mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien19X
		cmp ax,alien19size
		jl alien19
		mov cx,alien19X
		inc dx
		mov ax,dx
		sub ax,alien19Y
		cmp ax,alien19size
	jl alien19
	
	mov cx,a19eye1X                                  ;x
	mov dx,a19eye1Y                                   ;y
	
	alien19eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19eye1X
		cmp ax,eyesize
		jl alien19eye
		mov cx,a19eye1X
		inc dx
		mov ax,dx
		sub ax,a19eye1Y
		cmp ax,eyesize
	jl alien19eye
	
	mov cx,a19eye2X                                  ;x
	mov dx,a19eye2Y                                   ;y
	
	alien19eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19eye2X
		cmp ax,eyesize
		jl alien19eye2
		mov cx,a19eye2X
		inc dx
		mov ax,dx
		sub ax,a19eye2Y
		cmp ax,eyesize
	jl alien19eye2
	
	
	mov cx,a19head1X                                  ;x
	mov dx,a19head1Y                                   ;y
	
	alien19head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19head1X
		cmp ax,eyesize
		jl alien19head1
		mov cx,a19head1X
		inc dx
		mov ax,dx
		sub ax,a19head1Y
		cmp ax,headsize
	jl alien19head1
	mov cx,a19head2X                                  ;x
	mov dx,a19head2Y
	alien19head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19head2X
		cmp ax,eyesize
		jl alien19head2
		mov cx,a19head2X
		inc dx
		mov ax,dx
		sub ax,a19head2Y
		cmp ax,headsize
	jl alien19head2
	
	
	mov cx,a19head3X                                  ;x
	mov dx,a19head3Y                                   ;y
	
	alien19head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19head3X
		cmp ax,eyesize
		jl alien19head3
		mov cx,a19head3X
		inc dx
		mov ax,dx
		sub ax,a19head3Y
		cmp ax,headsize
	jl alien19head3
	mov cx,a19head4X                                  ;x
	mov dx,a19head4Y
	alien19head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19head4X
		cmp ax,eyesize
		jl alien19head4
		mov cx,a19head4X
		inc dx
		mov ax,dx
		sub ax,a19head4Y
		cmp ax,headsize
	jl alien19head4
	
	
	mov cx,a19hand1X                                  ;x
	mov dx,a19hand1Y                                   ;y
	
	alien19hand1:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand1X
		cmp ax,eyesize
		jl alien19hand1
		mov cx,a19hand1X
		inc dx
		mov ax,dx
		sub ax,a19hand1Y
		cmp ax,handsize
	jl alien19hand1
	
	mov cx,a19hand2X                                  ;x
	mov dx,a19hand2Y                                   ;y
	
	alien19hand2:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand2X
		cmp ax,eyesize
		jl alien19hand2
		mov cx,a19hand2X
		inc dx
		mov ax,dx
		sub ax,a19hand2Y
		cmp ax,handsize
	jl alien19hand2
	
	
	
	mov cx,a19hand3X                                  ;x
	mov dx,a19hand3Y                                   ;y
	
	alien19hand3:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand3X
		cmp ax,eyesize
		jl alien19hand3
		mov cx,a19hand3X
		inc dx
		mov ax,dx
		sub ax,a19hand3Y
		cmp ax,handsize
	jl alien19hand3
	mov cx,a19hand4X                                  ;x
	mov dx,a19hand4Y                                   ;y
	
	alien19hand4:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand4X
		cmp ax,eyesize
		jl alien19hand4
		mov cx,a19hand4X
		inc dx
		mov ax,dx
		sub ax,a19hand4Y
		cmp ax,handsize
	jl alien19hand4
	
	mov cx,a19hand5X                                  ;x
	mov dx,a19hand5Y                                   ;y
	
	alien19hand5:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand5X
		cmp ax,eyesize
		jl alien19hand5
		mov cx,a19hand5X
		inc dx
		mov ax,dx
		sub ax,a19hand5Y
		cmp ax,handsize
	jl alien19hand5
	mov cx,a19hand6X                                  ;x
	mov dx,a19hand6Y                                   ;y
	
	alien19hand6:
		mov ax,aliencolor9
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a19hand6X
		cmp ax,eyesize
		jl alien19hand6
		mov cx,a19hand6X
		inc dx
		mov ax,dx
		sub ax,a19hand6Y
		cmp ax,handsize
	jl alien19hand6



check20:
	mov ax,0
	mov ax,1
	cmp a20dead,ax
	je check21
	
								;alien20
	mov cx,alien20X                                  ;x
	mov dx,alien20Y                                   ;y
	alien20:
	mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,alien20X
		cmp ax,alien20size
		jl alien20
		mov cx,alien20X
		inc dx
		mov ax,dx
		sub ax,alien20Y
		cmp ax,alien20size
	jl alien20
	
	mov cx,a20eye1X                                  ;x
	mov dx,a20eye1Y                                   ;y
	
	alien20eye:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20eye1X
		cmp ax,eyesize
		jl alien20eye
		mov cx,a20eye1X
		inc dx
		mov ax,dx
		sub ax,a20eye1Y
		cmp ax,eyesize
	jl alien20eye
	
	mov cx,a20eye2X                                  ;x
	mov dx,a20eye2Y                                   ;y
	
	alien20eye2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20eye2X
		cmp ax,eyesize
		jl alien20eye2
		mov cx,a20eye2X
		inc dx
		mov ax,dx
		sub ax,a20eye2Y
		cmp ax,eyesize
	jl alien20eye2
	
	
	mov cx,a20head1X                                  ;x
	mov dx,a20head1Y                                   ;y
	
	alien20head1:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20head1X
		cmp ax,eyesize
		jl alien20head1
		mov cx,a20head1X
		inc dx
		mov ax,dx
		sub ax,a20head1Y
		cmp ax,headsize
	jl alien20head1
	mov cx,a20head2X                                  ;x
	mov dx,a20head2Y
	alien20head2:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20head2X
		cmp ax,eyesize
		jl alien20head2
		mov cx,a20head2X
		inc dx
		mov ax,dx
		sub ax,a20head2Y
		cmp ax,headsize
	jl alien20head2
	
	
	mov cx,a20head3X                                  ;x
	mov dx,a20head3Y                                   ;y
	
	alien20head3:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20head3X
		cmp ax,eyesize
		jl alien20head3
		mov cx,a20head3X
		inc dx
		mov ax,dx
		sub ax,a20head3Y
		cmp ax,headsize
	jl alien20head3
	mov cx,a20head4X                                  ;x
	mov dx,a20head4Y
	alien20head4:
		mov ax,0c00h
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20head4X
		cmp ax,eyesize
		jl alien20head4
		mov cx,a20head4X
		inc dx
		mov ax,dx
		sub ax,a20head4Y
		cmp ax,headsize
	jl alien20head4
	
	
	mov cx,a20hand1X                                  ;x
	mov dx,a20hand1Y                                   ;y
	
	alien20hand1:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand1X
		cmp ax,eyesize
		jl alien20hand1
		mov cx,a20hand1X
		inc dx
		mov ax,dx
		sub ax,a20hand1Y
		cmp ax,handsize
	jl alien20hand1
	
	mov cx,a20hand2X                                  ;x
	mov dx,a20hand2Y                                   ;y
	
	alien20hand2:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand2X
		cmp ax,eyesize
		jl alien20hand2
		mov cx,a20hand2X
		inc dx
		mov ax,dx
		sub ax,a20hand2Y
		cmp ax,handsize
	jl alien20hand2
	
	
	
	mov cx,a20hand3X                                  ;x
	mov dx,a20hand3Y                                   ;y
	
	alien20hand3:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand3X
		cmp ax,eyesize
		jl alien20hand3
		mov cx,a20hand3X
		inc dx
		mov ax,dx
		sub ax,a20hand3Y
		cmp ax,handsize
	jl alien20hand3
	mov cx,a20hand4X                                  ;x
	mov dx,a20hand4Y                                   ;y
	
	alien20hand4:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand4X
		cmp ax,eyesize
		jl alien20hand4
		mov cx,a20hand4X
		inc dx
		mov ax,dx
		sub ax,a20hand4Y
		cmp ax,handsize
	jl alien20hand4
	
	mov cx,a20hand5X                                  ;x
	mov dx,a20hand5Y                                   ;y
	
	alien20hand5:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand5X
		cmp ax,eyesize
		jl alien20hand5
		mov cx,a20hand5X
		inc dx
		mov ax,dx
		sub ax,a20hand5Y
		cmp ax,handsize
	jl alien20hand5
	mov cx,a20hand6X                                  ;x
	mov dx,a20hand6Y                                   ;y
	
	alien20hand6:
		mov ax,aliencolor10
		mov bh,0
		int 10h
		
		
		inc cx
		mov ax,cx
		sub ax,a20hand6X
		cmp ax,eyesize
		jl alien20hand6
		mov cx,a20hand6X
		inc dx
		mov ax,dx
		sub ax,a20hand6Y
		cmp ax,handsize
	jl alien20hand6


	check21:
	


	pop ax
	pop bx
	pop cx
	pop dx
ret
drawalien endp



displayInitialScreen proc
	push ax
	
	
	
		
	call drawSquareBorder
	call displayEnterName
	call inputPlayerName
	
	
	pop ax
	ret
displayInitialScreen endp



CSCREEN PROC              
	
			MOV AH,00h                   ;set the configuration to video mode
			MOV AL,12h                   ;choose the video mode
			INT 10h    					 ;execute the configuration 
		
			MOV AH,0Bh 					 ;set the configuration
			MOV BH,00h 					 ;to the background color
			MOV BL,00h 					 ;choose black as background color
			INT 10h    					 ;execute the configuration
			
			RET
			
CSCREEN ENDP

;taking input in player name variable
inputPlayerName proc
	push ax
	push dx
	
	mov dl, 25
	mov dh, 13
	mov ah, 02
	int 10h
		
	lea SI, playerName
	mov ah, 01h

	inputChar:
		int 21h
		mov [si], al
		inc si
		cmp al, 13
		jne inputChar
			
	pop dx
	pop ax
	ret	
inputPlayerName endp
displayscore proc
	push dx
	push ax
	push si
	push cx
	push bx
	
	mov dh, 00
	mov dl, 04
	mov si, 0
	
	Displayingscore:
		mov ah, 02
		int 10h
		mov ah, 09 
		mov al, scoreStr[si]
		mov bl, 09h
		mov cx, 1
		mov bh, 0
		int 10h	
		
		inc dl
		inc si
		cmp scoreStr[si], "$"
		jne Displayingscore	
	
	pop bx
	pop cx
	pop si
	pop ax
	pop dx
	
	ret
displayscore endp
show_score proc
push ax
push dx

mov ah,02h
mov bh,00h
mov dh,00
mov dl,12
int 10h

mov ah,09h
lea dx,score
int 21h 
    pop dx
	pop ax
ret
show_score endp

;square borer bna rha ha initial screen kaa
drawSquareBorder proc 
	push bx
	push dx
	push cx
	
	
	
	mov bx, 0
	mov cx, 40                                       ;x
	mov dx, 110                                      ;y
	upLine:
		mov ah, 0Ch
		mov al, 0fh
		push bx
		mov bh, 0
		int 10h
		pop bx
		
		inc cx
		inc bx
		cmp bx, 555
		jb upLine

	mov bx, 0
	mov cx, 40
	mov dx, 364
	downLine:
		mov ah, 0Ch
		mov al, 0fh
		push bx
		mov bh, 0
		int 10h
		pop bx
		
		inc cx
		inc bx
		cmp bx, 555
		jb downLine	
	
	mov bx, 0
	mov cx, 595
	mov dx, 110
	RLine:
		mov ah, 0Ch
		mov al, 0fh
		push bx
		mov bh, 0
		int 10h
		pop bx
		
		inc dx
		inc bx
		cmp bx, 255
		jb RLine	
		
	mov bx, 0
	mov cx, 40
	mov dx, 110
	LLine:
		mov ah, 0Ch
		mov al, 0fh
		push bx
		mov bh, 0
		int 10h
		pop bx
		
		inc dx
		inc bx
		cmp bx, 255
		jb LLine	
		
	pop cx
	pop dx
	pop bx
	ret
drawSquareBorder endp


;displaying enter name
displayEnterName proc
	push dx
	push ax
	push si
	push cx
	push bx
	
	mov dh, 13
	mov dl, 09
	mov si, 0
	
	DisplayingEnterName:
		mov ah, 02
		int 10h
		mov ah, 09 
		mov al, NameStr[si]
		mov bl, 09h
		mov cx, 1
		mov bh, 0
		int 10h	
		
		inc dl
		inc si
		cmp NameStr[si], "$"
		jne DisplayingEnterName 	
	
	pop bx
	pop cx
	pop si
	pop ax
	pop dx
	
	ret
displayEnterName endp
end

