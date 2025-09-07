;org 100h
;jmp start
;num1 db 57h
;num2 db 33h
;num3 db ?
;start:
;mov al,num1
;mov bl,num2
;add al,bl
;mov num3,al
;hlt
;   
;org 100h
;jmp start
;arr1 db 1, 3, 5, 7 
;arr2 db 2, 4, 6, 8
;arr3 db ?, ?, ?, ?
;start:
;lea si,arr1
;lea di,arr3
;lea bx,arr2
;mov cx,04h
;sum:
;mov al,[si]
;add al,[bx]
;mov [di],al
;inc si
;inc bx
;inc di
;loop sum
;hlt   

;MOV AX,2000H
;MOV BX,1000H
;ADD AX,BX
;MOV [7000H],AX
;MOV CX,3000H
;MOV DX,4000H
;MOV AX,CX
;MOV BX,DX
;ADD AX,BX
;MOV [7002H],AX
;HLT    

;MOV BX,1000H
;MOV AX,2000H
;MUL BX
;HLT   

;MOV DX,3000H
;MOV AX,2000H
;MOV BX,1000H
;DIV BX
;HLT  

;MOV AX,1000H
;MOV BL,10H
;DIV BL
;INT 0      
;HLT        
 
;SMALLEST NUMBER IN THE ARRAY

;MOV SI,1000H
;MOV DI,1100H
;MOV CL,[SI]
;INC SI
;MOV AL,[SI]
;DEC CL
;AGAIN:
;INC SI
;MOV BL,[SI]
;CMP AL,BL
;JC AHEAD
;MOV AL,BL
;AHEAD:
;DEC CL
;JNZ AGAIN
;MOV [DI],AL
;HLT

;LARGEST NUMBER IN THE ARRAY
;    
;MOV SI,1000H
;MOV DI,1200H
;MOV CL,[SI]
;INC SI
;MOV AL,[SI]
;DEC CL
;AGAIN:
;INC SI
;MOV BL,[SI]
;CMP AL,BL
;JNC AHEAD
;MOV AL,BL
;AHEAD:
;DEC CL
;JNZ AGAIN 
;MOV [DI],AL
;HLT   

;SORTING OF ARRAY IN ASCENDING ORDER

;MOV SI,1000H
;MOV CL,[SI]
;DEC CL
;REPEAT:
;MOV SI,1000H
;MOV CH,[SI]
;DEC CH
;INC SI
;REPCOM:
;MOV AL,[SI]
;INC SI
;CMP AL,[SI]
;JC AHEAD
;XCHG AL,[SI]
;XCHG AL,[SI-1]
;AHEAD:
;DEC CH
;JNZ REPCOM
;DEC CL
;JNZ REPEAT
;HLT    

;SORTING OF ARRAY IN DECENDING ORDER

;MOV SI,1000H
;MOV CL,[SI]
;DEC CL
;REPEAT:
;MOV SI,1000H
;MOV CH,[SI]
;DEC CH
;INC SI
;REPCOM:
;MOV AL,[SI]
;INC SI
;CMP AL,[SI]
;JNC AHEAD
;XCHG AL,[SI]
;XCHG AL,[SI-1]
;AHEAD:
;DEC CH
;JNZ REPCOM
;DEC CL
;JNZ REPEAT
;HLT  

;LARGEST NUMBER IN THE SIGNED ARRAY

;MOV SI,1000H       ; SI points to array
;MOV CL,[SI]        ; CL = count
;DEC CL             ; count-1 comparisons
;INC SI             ; SI -> first element
;MOV AL,[SI]        ; assume first element is largest
;
;NEXT_LARGE:
;    INC SI
;    CMP AL,[SI]    ; compare AL (current largest) with next element
;    JGE SKIP       ; if AL >= [SI], skip
;    MOV AL,[SI]    ; else update AL with new larger value
;SKIP:
;    DEC CL
;    JNZ NEXT_LARGE
;
;MOV [1100H],AL     ; store largest number
;HLT
  

;SMALLES NUMBER IN THE SIGNED ARRAY

;MOV SI,1000H
;MOV CL,[SI]
;DEC CL
;INC SI
;MOV AL,[SI]        ; assume first element is smallest
;
;NEXT_SMALL:
;    INC SI
;    CMP AL,[SI]
;    JLE SKIP2      ; if AL <= [SI], keep AL
;    MOV AL,[SI]    ; else update with smaller value
;SKIP2:
;    DEC CL
;    JNZ NEXT_SMALL
;
;MOV [1101H],AL     ; store smallest number
;HLT  

;TO FIND OUT THE RANGE

;MOV AL,[1100H]     ; largest
;MOV BL,[1101H]     ; smallest
;SUB AL,BL          ; AL = largest – smallest
;MOV [1102H],AL     ; store range
;HLT

;TO IDENTIFY POSITIVE AND NEGATIVE NO. IN THE ARRAY
;ORG 100h
;
;MOV SI,1000H       ; SI -> array start
;MOV CL,[SI]        ; CL = number of elements
;INC SI             ; SI -> first element
;          
;MOV DI,1100H       ; DI -> positive storage
;MOV BX,1200H       ; BX -> negative storage
;
;CHECK_LOOP:
;    MOV AL,[SI]    ; load element
;    INC SI
;    CMP AL,00H     
;    JS IS_NEGATIVE ; if sign bit=1 ? negative
;
;
;    MOV [DI],AL
;    INC DI
;    JMP NEXT
;
;IS_NEGATIVE:
;
;    MOV [BX],AL
;    INC BX
;
;NEXT:
;    DEC CL
;    JNZ CHECK_LOOP
;
;HLT

                            
;STORING POSITIVE NUMBERS AND NEGATIVE NUMBERS SEPARATLY
;
;ORG 100h
;
;MOV SI,2000H       ; SI -> array start
;MOV CL,[SI]        ; CL = number of elements
;INC SI             ; SI -> first element
;          
;MOV DI,2100H       ; DI -> positive storage
;MOV BX,2200H       ; BX -> negative storage
;
;CHECK_LOOP:
;    MOV AL,[SI]    ; load element
;    INC SI
;    CMP AL,00H     
;    JS IS_NEGATIVE ; if sign bit=1 ? negative
;
;
;    MOV [DI],AL
;    INC DI
;    JMP NEXT
;
;IS_NEGATIVE:
;
;    MOV [BX],AL
;    INC BX
;
;NEXT:
;    DEC CL
;    JNZ CHECK_LOOP
;
;HLT
 

;IDENTIFY WHETHER NO. IN ARRAY IS ODD OR EVEN

;ORG 100h
;
;MOV SI, 1000H       ; SI -> array start
;MOV CL, 0AH         ; 10 elements
;
;MOV DI, 1100H       ; DI -> even numbers storage
;MOV BX, 1200H       ; BX -> odd numbers storage
;
;CHECK_LOOP:
;    MOV AL,[SI]     ; load element
;    INC SI          ; next element
;
;    TEST AL,01H     ; check LSB
;    JNZ IS_ODD      ; if odd -> go store in odd array
;
;    MOV [DI],AL     ; store even number
;    INC DI
;    JMP NEXT
;
;IS_ODD:
;    MOV [BX],AL     ; store odd number
;    INC BX
;
;NEXT:
;    DEC CL
;    JNZ CHECK_LOOP
;
;HLT


;SEGREGATING THE ODD AND EVEN NUMBERS

;ORG 100h
;
;MOV SI, 2000H       ; SI -> array start
;MOV CL, 0AH         ; 10 elements
;
;MOV DI, 2100H       ; DI -> even numbers storage
;MOV BX, 2200H       ; BX -> odd numbers storage
;
;CHECK_LOOP:
;    MOV AL,[SI]     ; load element
;    INC SI          ; next element
;
;    TEST AL,01H     ; check LSB
;    JNZ IS_ODD      ; if odd -> go store in odd array
;
;    MOV [DI],AL     ; store even number
;    INC DI
;    JMP NEXT
;
;IS_ODD:
;    MOV [BX],AL     ; store odd number
;    INC BX
;
;NEXT:
;    DEC CL
;    JNZ CHECK_LOOP
;
;HLT
      
;REVERSING AN ARRAY STORED IN DESCENDING ORDER WITHOUT SORTING



;MOV SI,2000H       ; SI = address of count (2000h)
;MOV CL,[SI]        ; CL = N  (load number of elements)
;MOV CH,00H         ; CH = 0, so CX = N (16-bit loop counter)
;
;INC SI             ; SI -> address of first element (2001h)
;MOV DI,2100H       ; DI -> destination start (where reversed array will be stored)
;
;ADD SI,CX          ; SI = SI + CX  -> moves SI forward by N
;DEC SI             ; SI now points to last element (2000h + N)
;
;REV_LOOP:
;    MOV AL,[SI]    ; AL = element at current SI (start with last element)
;    MOV [DI],AL    ; store AL at current DI (writes reversed order)
;    DEC SI         ; move SI one element left (previous element)
;    INC DI         ; move DI to next destination slot
;    LOOP REV_LOOP  ; CX = CX - 1 ; if CX != 0 jump to REV_LOOP
;
;HLT                ; end program

                                 