;MOV AL,56H
;MOV BL,14H
;ADD AL,BL
;HLT 

;MOV AX,1234H
;MOV BX,2345H
;ADD AX,BX
;HLT 

;MOV AX,[2400H]
;MOV BX,[2404H]
;ADD AX,BX
;MOV [2408H],AX
;MOV AX,[2402H]
;MOV BX,[2406H]
;ADC AX,BX
;MOV [2410H],AX
;HLT

;MOV AL,34H
;MOV BL,20H
;SUB AL,BL
;HLT                    

;MOV AX,34      
;MOV BX,20
;SUB AX,BX
;HLT        

;MOV AX,[2400H]
;MOV BX,[2404H]
;SUB AX,BX
;MOV [2408H],AX
;MOV AX,[2402H]
;MOV BX,[2406H]
;SBB AX,BX
;MOV [2410H],AX
;HLT                        

;MOV AX,2000H
;MOV DS,AX
;MOV BX,1234H
;MOV AX,[BX]
;INC BX
;ADD AX,[BX]
;INC BX
;MOV [BX],AX
;HLT 

;MOV AL,56H
;MOV [BX],10H
;MOV CL,[BX]
;ADD AL,CL
;HLT

;MOV AX,1024H
;MOV BX,2048H
;ADD BX,AX
;MOV CX,4096H
;MOV DX,2048H
;ADD DX,CX
;HLT

;MOV AX,1024H
;MOV BX,2048H
;SUB BX,AX
;MOV CX,4096H
;MOV DX,2048H
;SUB DX,CX
;HLT
 

;MOV BP,2048H
;MOV AX,[BP]  
;MOV CX,[BP+2] 
;ADD AX,CX 
;MOV DX,[BP+4] 
;MOV BX,[BP+6]
;ADD DX,BX
;MOV [BP+8],AX
;MOV[BP+10],DX
;HLT

;MOV SI,1100H
;MOV AX,[SI]
;MOV BX,[SI+2]
;MUL BX
;MOV [SI+4],AX
;MOV [SI+6],DX
;HLT


;MOV SI,1100H
;MOV AX,[SI]
;MOV BL,[SI+2]
;MUL BL
;MOV [SI+4],AX
;HLT


;MOV SI,1100H
;MOV AX,[SI]
;MOV BX,[SI+2]
;DIV BX
;MOV [SI+4],AX
;MOV [SI+6],DX
;HLT


;MOV SI,1100H
;MOV AX,[SI]
;MOV BL,[SI+2]
;DIV BL
;MOV [SI+4],AX
;HLT


                                                                                                                                                        



























 