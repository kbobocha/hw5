# put your names here
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

	movl 0x8(%ebp), %ecx  #load *x into ecx
	movl 0xc(%ebp), %edx		#load *y into ecx
	
	movl (%ecx), %eax #loads x to eax
	movl (%edx), %ecx #loads y to ecx
	movl %eax, (%edx) #loads x to edx
	movl %ecx, %eax #loads y to eax
	movl %edx, %ecx #loads y to eax
	movl %eax, (%ecx) #loads y to ecx
	
	#movl %ecx, %eax #loads y to ecx
	#movl %eax, (%ecx) #loads y to ecx
	
	
	
	
	
	#movl %ecx, %eax    #load *x to eax
	#movl (%edx), %ecx   #store *y
	#movl %eax, %edx  #store *x
	#movl (%edx), %edx 

	#movl %ecx, 0x8(%ebp)  #store y
	#movl %edx, 0x12(%ebp) #store x



	leave                     # tear down swap's stack frame and return
	ret
