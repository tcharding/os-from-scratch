        ;
        ; A boot  sector  that  prints an hex number.
        ;
        [org 0x7c00]    ; Tell  the  assembler  where  this  code  will be  loaded
	
        %include "print_hex.asm"
	
	mov dx, 0x1fb6   ; store  the  value  to  print in dx
        call  print_hex   ; call  the  function

        jmp $                    ; Hang

        ; Padding  and  magic  number.
        times  510-($-$$) db 0
        dw 0xaa55
