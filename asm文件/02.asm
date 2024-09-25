.data
numbers DW 10H, 11H, 12H, 13H, 14H, 15H, 16H, 17H; 定义数据段，存储 8 个字（16位）

.code
main PROC
    mov ax, 0            ;
    mov cx, 8            ;
    mov bx, 0            ;

sum_loop:
    add ax, numbers[bx]  ;
    add bx, 2            ;
    loop sum_loop        ;

    mov dx, ax           ;

    mov ah, 4Ch          ;
    int 21h              ; 调用 BIOS 10h 功能，0x4C 号功能是打印字符串
main ENDP
END main