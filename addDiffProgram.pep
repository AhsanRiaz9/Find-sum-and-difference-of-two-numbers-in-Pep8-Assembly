BR main
 num1: .EQUATE 5
 num2: .EQUATE 3 
 sum: .EQUATE 0              
 diff: .EQUATE 0

 main: SUBSP 2,i 
   
     ; take input for num1
     STRO inputMsg, d
     DECI num1, s
     
     ; take input for num2
     STRO inputMsg, d         
     DECI num2, s 
     
     ; find sum of two numbers, sum = num1 + num2
     LDA num1, s
     ADDA num2, s
     STA sum, s
     STRO sumMsg, d
     DECO sum,s     

     ; display newLine
     STRO newLine, d     
 
     ; find diff of two numbers, diff = num1 - num2
     LDA num1, s
     SUBA num2, s
     STA diff, s
     STRO diffMsg, d
     DECO diff,s    

 ADDSP 2,i 
   STOP

 inputMsg: .ASCII "Enter a number: \x00"
 sumMsg: .ASCII "Sum = \x00" 
 diffMsg: .ASCII "Diff = \x00"
 newLine: .ASCII "\n\x00"

 .END
