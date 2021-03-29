# put your names here
	.text
.globl fib
	.type	fib, @function
fib:
	pushl	%ebp                 # set up fib's stack frame
	movl	%esp, %ebp
	subl	$16, %esp
	pushl   %ebx               # store the values in the callee-saved registers
	pushl   %esi
	pushl   %edi


        # Add your assembly code here.
			# You may use any of the 6 general-purpose registers: %eax, %ecx, %edx,
			# %ebx, %esi, and %edi, but you may not store data in memory.
			# Remember to put the return value in %eax at the end.

	movl 	0x8(%ebp), %edx    #load n in edx
	movl 	$0, %ebx  	#store prev in ebx
	movl 	$1, %ecx			#load curr in ecx
	movl 	$0, %esi			#load next in esi

	#for loop
	label1: cmpl $1, %edx
	jl label2
	movl 	%ebx, %esi #mov prev to next(add prev)
	addl 	%ecx, %esi   #adding curr +next
	addl 	%ebx, %esi  	#adding prev +next
	movl 	%ecx ,%ebx  	#prev = curr
	movl 	%esi, %ecx 	 #curr = next
	subl 	$1, %edx		#n-1
	jmp 	label1
	label2: movl 	%ecx, %eax  #moves curr to eax(returns curr)




	popl   %edi                # restore the values of the callee-saved registers
	popl   %esi
	popl   %ebx
	leave                      # tear down fib's stack frame and return
	ret
