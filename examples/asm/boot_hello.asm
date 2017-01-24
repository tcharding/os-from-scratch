        ;
	; A simple boot loader that prints 'hello' and loops.
        ;

        mov ah, 0x0e    ; int 10/ah = Oeh -> scrolling teletype BIOS routine

        mov al, 'H'
        int 0x10
        mov al, 'e'
        int 0x10
        mov al, 'l'
        int 0x10
        mov al, 'l'
        int 0x10
        mov al, 'o'
        int 0x10

        jmp $           ; jump to current address (forever).

        ;
        ; Padding and magic number
        ;
        
        times 510-($-$$) db 0   ; pad the boot sector with zeros (must be 512 bytes). 
        dw 0xaa55               ; magic number required by BIOS.
