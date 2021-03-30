# Lily Korir and Raylon Linvel
.text
.globl swap
.type	swap, @function
swap:
	pushl	%ebp                # set up swap's stack frame
	movl	%esp, %ebp
	subl	$16, %esp


    # Add your assembly code here.
		# You may only use the three caller-saved registers: %eax, %ecx, and %edx.
		# You also may not store data in any new memory locations.

	movl 0x8(%ebp), %ecx 		 #loads x into ecx
	movl 0xc(%ebp), %edx		#loads y into ecx
	
	movl (%ecx), %eax 		#loads *x to eax
	movl (%edx), %ecx 		#loads *y to ecx
	movl %eax, (%edx) 		#changes *y to *x 
	movl %ecx, %eax 		#moves y into eax
	movl 0x8(%ebp), %ecx 	 	#loads x into ecx
	movl %eax, (%ecx) 		#changes *x to *y 
	
	
	leave                     # tear down swap's stack frame and return
	ret
