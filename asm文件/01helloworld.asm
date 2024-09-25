;;;HelloWorld程序
data segment           ;数据段定义
    string DB'Hello World!!!',0AH,0DH,'$'
data ends
code segment           ;代码段
    assume cs:code, ds:data
start:
    MOV AX,DATA
    MOV DS,AX

    mov dx,OFFSET string     ;显示字符串
    mov AH,09H
    int 21H

    MOV AH,4CH          ;退出语句
    INT 21H
code ends
end start