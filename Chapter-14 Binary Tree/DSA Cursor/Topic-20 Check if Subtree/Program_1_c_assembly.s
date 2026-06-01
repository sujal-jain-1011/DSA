	.file	"Program_1.c"
	.text
	.globl	capacityArray
	.bss
	.align 16
	.type	capacityArray, @object
	.size	capacityArray, 16
capacityArray:
	.zero	16
	.globl	frontArray
	.data
	.align 16
	.type	frontArray, @object
	.size	frontArray, 16
frontArray:
	.quad	-1
	.quad	-1
	.globl	rearArray
	.align 16
	.type	rearArray, @object
	.size	rearArray, 16
rearArray:
	.quad	-1
	.quad	-1
	.globl	rootNodes
	.bss
	.align 16
	.type	rootNodes, @object
	.size	rootNodes, 16
rootNodes:
	.zero	16
	.globl	ptr
	.align 8
	.type	ptr, @object
	.size	ptr, 8
ptr:
	.zero	8
	.globl	queues
	.align 16
	.type	queues, @object
	.size	queues, 16
queues:
	.zero	16
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation failed for node of binary tree!"
	.text
	.globl	createTreeNode
	.type	createTreeNode, @function
createTreeNode:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	createTreeNode, .-createTreeNode
	.section	.rodata
	.align 8
.LC1:
	.string	"Memory allocation failed for queue data structure!"
	.text
	.globl	implementCircularQueue
	.type	implementCircularQueue, @function
implementCircularQueue:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movl	$1, %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	implementCircularQueue, .-implementCircularQueue
	.globl	isFull
	.type	isFull, @function
isFull:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	isFull, .-isFull
	.globl	isEmpty
	.type	isEmpty, @function
isEmpty:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	jne	.L10
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$-1, %rax
	jne	.L10
	movl	$1, %eax
	jmp	.L11
.L10:
	movl	$0, %eax
.L11:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	isEmpty, .-isEmpty
	.section	.rodata
	.align 8
.LC2:
	.string	"Can't insert %d into queue, since queue is full!\n"
	.text
	.globl	enqueue
	.type	enqueue, @function
enqueue:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	isFull
	testw	%ax, %ax
	je	.L14
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L13
.L14:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L16
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L13
.L16:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	enqueue, .-enqueue
	.section	.rodata
	.align 8
.LC3:
	.string	"Can't delete from queue, since queue is empty!"
	.text
	.globl	dequeue
	.type	dequeue, @function
dequeue:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L20
	movq	-40(%rbp), %rax
	movq	$-1, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L21
.L20:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L21:
	movq	-8(%rbp), %rax
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	dequeue, .-dequeue
	.section	.rodata
	.align 8
.LC4:
	.string	"Enter the capacity of binary tree %hu:"
.LC5:
	.string	"%llu"
.LC6:
	.string	"Binary tree is empty!"
	.align 8
.LC7:
	.string	"Enter the elements of binary tree %hu:\n"
	.align 8
.LC8:
	.string	"Enter element %llu of binary tree %hu:"
.LC9:
	.string	"%d"
	.text
	.globl	createBinaryTree
	.type	createBinaryTree, @function
createBinaryTree:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movw	%ax, -100(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	movzwl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L23
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L25:
	cmpq	%rdx, %rsp
	je	.L26
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L25
.L26:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L27
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L27:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	movzwl	-100(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -88(%rbp)
	jmp	.L28
.L29:
	movzwl	-100(%rbp), %edx
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-88(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$1, -88(%rbp)
.L28:
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -88(%rbp)
	jb	.L29
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rax, %rdx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rcx
	leaq	queues(%rip), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	implementCircularQueue
	testw	%ax, %ax
	jne	.L30
	movl	$0, %eax
	jmp	.L24
.L30:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -56(%rbp)
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	rearArray(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	frontArray(%rip), %rax
	addq	%rax, %rdx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rsi
	leaq	queues(%rip), %rax
	addq	%rax, %rsi
	movq	-56(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	enqueue
	movq	$1, -80(%rbp)
	jmp	.L31
.L34:
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	rearArray(%rip), %rax
	addq	%rax, %rdx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rsi
	leaq	frontArray(%rip), %rax
	addq	%rax, %rsi
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdi
	leaq	queues(%rip), %rax
	addq	%rdi, %rax
	movq	%rax, %rdi
	call	dequeue
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L32
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	rearArray(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	frontArray(%rip), %rax
	addq	%rax, %rdx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rsi
	leaq	queues(%rip), %rax
	addq	%rax, %rsi
	movq	-40(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	enqueue
.L32:
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L31
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	-64(%rbp), %rdx
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	leaq	(%rdx,%rax), %rdi
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	rearArray(%rip), %rax
	leaq	(%rdx,%rax), %rcx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	frontArray(%rip), %rax
	addq	%rax, %rdx
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rsi
	leaq	queues(%rip), %rax
	addq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	enqueue
.L31:
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	capacityArray(%rip), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	%rax, -80(%rbp)
	jb	.L34
	movzwl	-100(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	leaq	rootNodes(%rip), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
.L24:
	movq	%rbx, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L36
	call	__stack_chk_fail@PLT
.L36:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	createBinaryTree, .-createBinaryTree
	.section	.rodata
.LC10:
	.string	"%d "
	.text
	.globl	preorder
	.type	preorder, @function
preorder:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L39
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	preorder
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	preorder
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	preorder, .-preorder
	.globl	isIdentical
	.type	isIdentical, @function
isIdentical:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L44
.L43:
	movl	$0, %eax
	jmp	.L42
.L44:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isIdentical
	testw	%ax, %ax
	je	.L45
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isIdentical
	testw	%ax, %ax
	je	.L45
	movl	$1, %eax
	jmp	.L42
.L45:
	movl	$0, %eax
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	isIdentical, .-isIdentical
	.globl	isSubtree
	.type	isSubtree, @function
isSubtree:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L48
	movl	$1, %eax
	jmp	.L49
.L48:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L50
	movl	$0, %eax
	jmp	.L49
.L50:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L51
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isIdentical
	testw	%ax, %ax
	je	.L52
	movl	$1, %eax
	jmp	.L49
.L52:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isSubtree
	testw	%ax, %ax
	jne	.L53
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isSubtree
	testw	%ax, %ax
	je	.L54
.L53:
	movl	$1, %eax
	jmp	.L49
.L54:
	movl	$0, %eax
	jmp	.L49
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isSubtree
	testw	%ax, %ax
	jne	.L56
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isSubtree
	testw	%ax, %ax
	je	.L57
.L56:
	movl	$1, %eax
	jmp	.L49
.L57:
	movl	$0, %eax
.L49:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	isSubtree, .-isSubtree
	.globl	freeBinaryTree
	.type	freeBinaryTree, @function
freeBinaryTree:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	freeBinaryTree, .-freeBinaryTree
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created both the binary trees!"
	.align 8
.LC12:
	.string	"The preorder traversal of binary tree 1 is:"
	.align 8
.LC13:
	.string	"The preorder traversal of binary tree 2 is:"
	.align 8
.LC14:
	.string	"Binary tree 2 is subtree of binary tree 1!"
	.align 8
.LC15:
	.string	"Binary tree 2 is not a subtree of binary tree 1!"
.LC16:
	.string	"Binary trees creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	createBinaryTree
	testw	%ax, %ax
	je	.L63
	movl	$1, %edi
	call	createBinaryTree
	testw	%ax, %ax
	je	.L63
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	rootNodes(%rip), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	8+rootNodes(%rip), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	leaq	8+rootNodes(%rip), %rax
	movq	%rax, %rsi
	leaq	rootNodes(%rip), %rax
	movq	%rax, %rdi
	call	isSubtree
	testw	%ax, %ax
	je	.L64
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L66
.L64:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L66
.L63:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L66:
	leaq	rootNodes(%rip), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	leaq	8+rootNodes(%rip), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	queues(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	8+queues(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
