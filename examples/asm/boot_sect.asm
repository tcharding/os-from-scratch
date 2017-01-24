        ;
        ; A simple boot sector program that loops forever.
        ;
loop:
        jmp loop

        times 510-($-$$) db 0   ; program must be 512 bytes
        dw 0xaa55               ; magic number required by BIOS
