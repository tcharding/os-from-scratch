        ;
        ; A routin that  prints an hex number.
        ;

        %include "../print/print_string.asm"
	
        ; prints  the  value  of DX as hex.
print_hex:
        ; TODO: manipulate  chars  at  HEX_OUT  to  reflect  DX
	
        mov bx, HEX_OUT    ; print  the  string  pointed  to
        call  print_string ; by BX
        ret
        	
        ; global  variables
HEX_OUT: db '0x4041',0
