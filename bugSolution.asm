mov ecx, [user_input]
mov ebx, base_address
;Check if address is within bounds
cmp ecx, max_ecx_value
jge error_handler
;Calculate address
mov eax, ecx ;store the value of ecx into eax before the multiplication operation.  ecx will be changed by the multiplication.
mov edx, 4
mul edx; multiply ecx value by 4
mov edx, eax ;move the product to edx
add ebx, edx ;add ebx and edx, storing the value to ebx. 
mov eax, [ebx] ; access memory at calculated address
jmp after_access
error_handler:
; Handle the error appropriately (e.g., return an error code)
mov eax, -1
after_access: