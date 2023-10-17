;hello.asm
SECTION .data                             ; Начало секции данных
	hello:      DB "Hello, world!",10 ;'Hello World!' плюс
	                                  ; Символ перевода строки
	helloLen:   EQU $ - hello 	  ; Длина строки hello
	
SECTION .text           ; Начало секции кода
	GLOBAL _start           

_start:                 ; точка входа в программу
        mov eax, 4      ; системный вызов для записи (sys_write)
        mov ebx, 1      ; описатель файла '1' - стандарный вывод
        mov ecx, hello  ; адрес строки hello в ecx
        mov edx, helloLen ; размер строки hello
        int 80h         ; вызов ядра
	
	mov eax, 1      ; Системный вызов для выхода (sys_exit)  
        mov ebx, 0      ; Выход с кодом возврата '0' (без_ошибок)
        int 80h         ; Вызов ядра
