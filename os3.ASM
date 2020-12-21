org 7C00h


start:

       MOV AH,00h ;set the configuration to video mode
                MOV AL,13h ;choose the video mode
                INT 10h    ;execute the configuration
                MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,10 ;set the column (X)
                MOV DX,10 ;set the line (Y)
                INT 10h    ;execute the configuration
       MOV AH,0Ch ;set the configuration to writing a pixel
                MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,11 ;set the column (X)
                MOV DX,10 ;set the line (Y)
                INT 10h    ;execute the configuration
                MOV AH,0Ch ;set the configuration to writing a pixel
                MOV AL,12 ;choose white as color
                MOV BH,00h ;set the page number 
                MOV CX,12 ;set the column (X)
                MOV DX,10 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,10 ;set the column (X)
                MOV DX,11 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,11 ;set the column (X)
                MOV DX,11 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,10 ;set the column (X)
                MOV DX,12 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,10 ;set the column (X)
                MOV DX,13 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,13 ;set the column (X)
                MOV DX,10 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,11 ;set the column (X)
                MOV DX,12 ;set the line (Y)
                INT 10h    ;execute the configuration
                 MOV AH,0Ch ;set the configuration to writing a pixel
                 MOV AL,12
                MOV BH,00h ;set the page number 
                MOV CX,12 ;set the column (X)
                MOV DX,11 ;set the line (Y)
                INT 10h    ;execute the configuration

        MOV    Ah,  13h
        MOV    AL,  12
        MOV    CX,  27 ;длина строки
        MOV    BL,  9
        MOV    DL,  52               ;Отступ по Х
        MOV    DH,  23               ;Отступ по Y
        MOV    BP,  string
        INT    10h


   string   DB     'Kuzmich Alexandr HMT-383907'


exit:

db 510-($-$$) dup 0
dw 0AA55h      ; ?????????? ?????? ?????????? ???????????? ???????