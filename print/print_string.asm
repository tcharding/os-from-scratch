        ;
        ; A routine to print a string, address is in bx.
        ;
print_string:
        mov ah, 0x0e
loop:   
        mov al, [bx]
	cmp al, 0
        je end
        int 0x10                ; print
	add bx, 1
        jmp loop
        
end:
        ret
