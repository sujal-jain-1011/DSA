	.file	"Program_2.c"
	.text
	.globl	capacity
	.bss
	.align 8
	.type	capacity, @object
	.size	capacity, 8
capacity:
	.zero	8
	.globl	front
	.data
	.align 8
	.type	front, @object
	.size	front, 8
front:
	.quad	-1
	.globl	rear
	.align 8
	.type	rear, @object
	.size	rear, 8
rear:
	.quad	-1
	.globl	frontLOT
	.align 8
	.type	frontLOT, @object
	.size	frontLOT, 8
frontLOT:
	.quad	-1
	.globl	rearLOT
	.align 8
	.type	rearLOT, @object
	.size	rearLOT, 8
rearLOT:
	.quad	-1
	.globl	root
	.bss
	.align 8
	.type	root, @object
	.size	root, 8
root:
	.zero	8
	.globl	ptr
	.align 8
	.type	ptr, @object
	.size	ptr, 8
ptr:
	.zero	8
	.globl	que
	.align 8
	.type	que, @object
	.size	que, 8
que:
	.zero	8
	.globl	queLOT
	.align 8
	.type	queLOT, @object
	.size	queLOT, 8
queLOT:
	.zero	8
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
	movq	capacity(%rip), %rax
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
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	cmpq	%rax, -8(%rbp)
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
	cmpq	$-1, -8(%rbp)
	jne	.L10
	cmpq	$-1, -16(%rbp)
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
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
	addq	$1, %rax
	movq	capacity(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
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
	.string	"Can't insert pair into queue, since queue is full!"
	.text
	.globl	enqueuePair
	.type	enqueuePair, @function
enqueuePair:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isFull
	testw	%ax, %ax
	je	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L17
.L18:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L20
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
	jmp	.L17
.L20:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
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
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	enqueuePair, .-enqueuePair
	.section	.rodata
	.align 8
.LC4:
	.string	"Can't delete from queue, since queue is empty!"
	.text
	.globl	dequeue
	.type	dequeue, @function
dequeue:
.LFB12:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L22
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L23
.L22:
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
	jne	.L24
	movq	-40(%rbp), %rax
	movq	$-1, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L25
.L24:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L25:
	movq	-8(%rbp), %rax
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	dequeue, .-dequeue
	.globl	dequeuePair
	.type	dequeuePair, @function
dequeuePair:
.LFB13:
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
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L27
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L28
.L27:
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
	jne	.L29
	movq	-40(%rbp), %rax
	movq	$-1, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L30
.L29:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L30:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	dequeuePair, .-dequeuePair
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter the capacity of binary tree:"
.LC6:
	.string	"%llu"
.LC7:
	.string	"Binary tree is empty!"
	.align 8
.LC8:
	.string	"Enter the elements of binary tree:"
	.align 8
.LC9:
	.string	"Enter element %llu of binary tree:"
.LC10:
	.string	"%d"
	.text
	.globl	createBinaryTree
	.type	createBinaryTree, @function
createBinaryTree:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	capacity(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	capacity(%rip), %rax
	testq	%rax, %rax
	jne	.L32
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L33
.L32:
	movq	capacity(%rip), %rax
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
.L34:
	cmpq	%rdx, %rsp
	je	.L35
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L34
.L35:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L36
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L36:
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -64(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -88(%rbp)
	jmp	.L37
.L38:
	movq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-88(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$1, -88(%rbp)
.L37:
	movq	capacity(%rip), %rax
	cmpq	%rax, -88(%rbp)
	jb	.L38
	leaq	que(%rip), %rax
	movq	%rax, %rdi
	call	implementCircularQueue
	testw	%ax, %ax
	jne	.L39
	movl	$0, %eax
	jmp	.L33
.L39:
	movq	-64(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	leaq	rear(%rip), %rdx
	movq	%rdx, %rcx
	leaq	front(%rip), %rdx
	leaq	que(%rip), %rsi
	movq	%rax, %rdi
	call	enqueue
	movq	$1, -80(%rbp)
	jmp	.L40
.L43:
	leaq	rear(%rip), %rax
	movq	%rax, %rdx
	leaq	front(%rip), %rax
	movq	%rax, %rsi
	leaq	que(%rip), %rax
	movq	%rax, %rdi
	call	dequeue
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L41
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
	movq	-40(%rbp), %rax
	leaq	rear(%rip), %rdx
	movq	%rdx, %rcx
	leaq	front(%rip), %rdx
	leaq	que(%rip), %rsi
	movq	%rax, %rdi
	call	enqueue
.L41:
	movq	capacity(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jnb	.L40
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L40
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
	movq	-32(%rbp), %rax
	leaq	rear(%rip), %rdx
	movq	%rdx, %rcx
	leaq	front(%rip), %rdx
	leaq	que(%rip), %rsi
	movq	%rax, %rdi
	call	enqueue
.L40:
	movq	capacity(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jb	.L43
	movq	-56(%rbp), %rax
	movq	%rax, root(%rip)
	movl	$1, %eax
.L33:
	movq	%rbx, %rsp
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L45
	call	__stack_chk_fail@PLT
.L45:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	createBinaryTree, .-createBinaryTree
	.section	.rodata
.LC11:
	.string	"%d "
	.text
	.globl	preorder
	.type	preorder, @function
preorder:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
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
.L48:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	preorder, .-preorder
	.section	.rodata
	.align 8
.LC12:
	.string	"Circular queue creation failed!"
.LC13:
	.string	"Path %zu of binary tree is: "
	.text
	.globl	allPaths
	.type	allPaths, @function
allPaths:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$224, %rsp
	movq	%rdi, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	capacity(%rip), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, queLOT(%rip)
	movq	queLOT(%rip), %rax
	testq	%rax, %rax
	jne	.L50
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L49
.L50:
	movq	$0, -208(%rbp)
	leaq	-112(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	movq	-216(%rbp), %rax
	movq	(%rax), %rax
	leaq	-112(%rbp), %rdx
	movl	$32, %ecx
	movl	$24, %esi
	movq	%rax, %rdi
	call	pair_create@PLT
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	leaq	rearLOT(%rip), %rdx
	movq	%rdx, %rcx
	leaq	frontLOT(%rip), %rdx
	leaq	queLOT(%rip), %rsi
	movq	%rax, %rdi
	call	enqueuePair
	jmp	.L52
.L62:
	leaq	rearLOT(%rip), %rax
	movq	%rax, %rdx
	leaq	frontLOT(%rip), %rax
	movq	%rax, %rsi
	leaq	queLOT(%rip), %rax
	movq	%rax, %rdi
	call	dequeuePair
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-72(%rbp), %rax
	movq	%rax, -152(%rbp)
	movq	-208(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -208(%rbp)
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$0, -200(%rbp)
	jmp	.L54
.L55:
	movq	-200(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addq	$1, -200(%rbp)
.L54:
	movq	-200(%rbp), %rax
	cmpq	-152(%rbp), %rax
	jb	.L55
	movl	$10, %edi
	call	putchar@PLT
.L53:
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L56
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	$0, -192(%rbp)
	jmp	.L57
.L58:
	movq	-192(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	addq	$1, -192(%rbp)
.L57:
	movq	-192(%rbp), %rax
	cmpq	-144(%rbp), %rax
	jb	.L58
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	leaq	-48(%rbp), %rdx
	movl	$32, %ecx
	movl	$24, %esi
	movq	%rax, %rdi
	call	pair_create@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	leaq	rearLOT(%rip), %rdx
	movq	%rdx, %rcx
	leaq	frontLOT(%rip), %rdx
	leaq	queLOT(%rip), %rsi
	movq	%rax, %rdi
	call	enqueuePair
.L56:
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L59
	leaq	-48(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L60
.L61:
	movq	-184(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	addq	$1, -184(%rbp)
.L60:
	movq	-184(%rbp), %rax
	cmpq	-128(%rbp), %rax
	jb	.L61
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	movq	-160(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-48(%rbp), %rdx
	movl	$32, %ecx
	movl	$24, %esi
	movq	%rax, %rdi
	call	pair_create@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	leaq	rearLOT(%rip), %rdx
	movq	%rdx, %rcx
	leaq	frontLOT(%rip), %rdx
	leaq	queLOT(%rip), %rsi
	movq	%rax, %rdi
	call	enqueuePair
.L59:
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	pair_free@PLT
.L52:
	movq	rearLOT(%rip), %rdx
	movq	frontLOT(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEmpty
	testw	%ax, %ax
	je	.L62
	movq	queLOT(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
.L49:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	allPaths, .-allPaths
	.globl	freeBinaryTree
	.type	freeBinaryTree, @function
freeBinaryTree:
.LFB17:
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
	je	.L66
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
.L66:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	freeBinaryTree, .-freeBinaryTree
	.section	.rodata
	.align 8
.LC14:
	.string	"Successfully created binary tree!"
	.align 8
.LC15:
	.string	"The preorder traversal of binary tree is:"
.LC16:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	createBinaryTree
	testw	%ax, %ax
	je	.L68
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	allPaths
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	que(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L69
.L68:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L69:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
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
