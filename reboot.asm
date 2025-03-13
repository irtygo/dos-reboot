org 0100h ; acommidate .com
global _start
_start:
    mov ax, cs      ; init
    mov ds, ax

    mov dx, TryIO64
    mov ah, 09h
    mov al, 00h
    int 21h         ; print trying port 0x64 = 0xfe text

    mov al, 0xFE
    out 0x64, al   ; actually try this reboot type

    mov dx, Failed
    mov ah, 09h
    mov al, 00h
    int 21h         ; print failed text

    mov ax, 0001h
    int 21h

TryIO64:
    db "Trying to use IO port 0x64 = FE$"

Failed:
    db "Failed to reboot!$"
