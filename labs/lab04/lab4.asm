;lab4.asm
SECTION .data                                 ; Начало секции данных
	lab4:      DB "Umed Nazarmamadov",10 
	                                      ; Символ перевода строки
	lab4Len:   EQU $-lab4 	      ; Длина строки lab4
	
SECTION .text           ; Начало секции кода
	GLOBAL _start           

_start:                 ; точка входа в программу
        mov eax, 4      ; системный вызов для записи (sys_write)
        mov ebx, 1      ; описатель файла '1' - стандарный вывод
        mov ecx, lab4  ; адрес строки lab в ecx
        mov edx, lab4Len ; размер строки lab
        int 80h         ; вызов ядра
	
	mov eax, 1      ; Системный вызов для выхода (sys_exit)  
        mov ebx, 0      ; Выход с кодом возврата '0' (без_ошибок)
        int 80h         ; Вызов ядра
