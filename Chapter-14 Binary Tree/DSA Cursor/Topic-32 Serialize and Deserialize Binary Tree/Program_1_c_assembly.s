	.file	"Program_1.c"
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
	movq	capacity(%rip), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, que(%rip)
	movq	que(%rip), %rax
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
	popq	%rbp
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
	movq	rear(%rip), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	front(%rip), %rax
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
	movq	front(%rip), %rax
	cmpq	$-1, %rax
	jne	.L10
	movq	rear(%rip), %rax
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
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
	movl	$0, %eax
	call	isEmpty
	testw	%ax, %ax
	je	.L16
	movq	front(%rip), %rax
	addq	$1, %rax
	movq	%rax, front(%rip)
	movq	rear(%rip), %rax
	addq	$1, %rax
	movq	%rax, rear(%rip)
	movq	que(%rip), %rax
	movq	rear(%rip), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L13
.L16:
	movq	rear(%rip), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, rear(%rip)
	movq	que(%rip), %rax
	movq	rear(%rip), %rdx
	salq	$3, %rdx
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
	subq	$16, %rsp
	movl	$0, %eax
	call	isEmpty
	testw	%ax, %ax
	je	.L18
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	que(%rip), %rax
	movq	front(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	front(%rip), %rdx
	movq	rear(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L20
	movq	$-1, rear(%rip)
	movq	rear(%rip), %rax
	movq	%rax, front(%rip)
	jmp	.L21
.L20:
	movq	front(%rip), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, front(%rip)
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
	.string	"Enter the capacity of binary tree:"
.LC5:
	.string	"%llu"
.LC6:
	.string	"Binary tree is empty!"
	.align 8
.LC7:
	.string	"Enter the elements of binary tree:"
	.align 8
.LC8:
	.string	"Enter element %llu of binary tree:"
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
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	%rsp, %rax
	movq	%rax, %rbx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	capacity(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	capacity(%rip), %rax
	testq	%rax, %rax
	jne	.L23
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L24
.L23:
	movq	capacity(%rip), %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, -72(%rbp)
	leaq	0(,%rax,4), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %esi
	movl	$0, %edx
	divq	%rsi
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
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -88(%rbp)
	jmp	.L28
.L29:
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
	movq	capacity(%rip), %rax
	cmpq	%rax, -88(%rbp)
	jb	.L29
	movl	$0, %eax
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
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	enqueue
	movq	$1, -80(%rbp)
	jmp	.L31
.L34:
	movl	$0, %eax
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
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	enqueue
.L32:
	movq	capacity(%rip), %rax
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
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	enqueue
.L31:
	movq	capacity(%rip), %rax
	cmpq	%rax, -80(%rbp)
	jb	.L34
	movq	-56(%rbp), %rax
	movq	%rax, root(%rip)
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
	.globl	to_string
	.type	to_string, @function
to_string:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movq	-16(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	to_string, .-to_string
	.globl	serialize
	.type	serialize, @function
serialize:
.LFB15:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	leaq	-14(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	to_string
	movw	$0, -16(%rbp)
	jmp	.L44
.L45:
	movzwl	-16(%rbp), %eax
	leal	1(%rax), %edx
	movw	%dx, -16(%rbp)
	movzwl	%ax, %esi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rdx
	addq	%rax, %rdx
	movslq	%esi, %rax
	movzbl	-14(%rbp,%rax), %eax
	movb	%al, (%rdx)
.L44:
	movzwl	-16(%rbp), %eax
	cltq
	movzbl	-14(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L45
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movb	$44, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	serialize
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	serialize
	jmp	.L48
.L43:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movb	$35, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	movb	$44, (%rax)
.L48:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	serialize, .-serialize
	.globl	deserialize
	.type	deserialize, @function
deserialize:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	je	.L50
	movl	$0, -12(%rbp)
	movb	$0, -13(%rbp)
	jmp	.L51
.L54:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L52
	movb	$45, -13(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L51
.L52:
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	addl	%ecx, %eax
	subl	$48, %eax
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
.L51:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$44, %al
	jne	.L54
	cmpb	$0, -13(%rbp)
	je	.L55
	movl	-12(%rbp), %eax
	negl	%eax
	jmp	.L56
.L55:
	movl	-12(%rbp), %eax
.L56:
	movl	%eax, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-12(%rbp), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	deserialize
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	deserialize
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	jmp	.L57
.L50:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, %eax
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	deserialize, .-deserialize
	.globl	isIdentical
	.type	isIdentical, @function
isIdentical:
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L61
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L62
.L61:
	movl	$0, %eax
	jmp	.L60
.L62:
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
	je	.L63
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
	je	.L63
	movl	$1, %eax
	jmp	.L60
.L63:
	movl	$0, %eax
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	isIdentical, .-isIdentical
	.globl	freeBinaryTree
	.type	freeBinaryTree, @function
freeBinaryTree:
.LFB18:
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
	je	.L67
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
.L67:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	freeBinaryTree, .-freeBinaryTree
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created binary tree!"
	.align 8
.LC12:
	.string	"The preorder traversal of binary tree is:"
	.align 8
.LC13:
	.string	"Memory allocation from heap failed!"
.LC14:
	.string	"Right"
.LC15:
	.string	"Wrong"
.LC16:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	createBinaryTree
	testw	%ax, %ax
	je	.L69
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	movq	capacity(%rip), %rax
	salq	$2, %rax
	addq	$1, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L70
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L71
.L70:
	movq	$0, -40(%rbp)
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	serialize
	movq	$0, -40(%rbp)
	movq	$0, -24(%rbp)
	jmp	.L72
.L73:
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	addq	$1, -24(%rbp)
.L72:
	movq	capacity(%rip), %rax
	salq	$2, %rax
	addq	$1, %rax
	cmpq	%rax, -24(%rbp)
	jb	.L73
	movl	$10, %edi
	call	putchar@PLT
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	deserialize
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	isIdentical
	testw	%ax, %ax
	je	.L74
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L75
.L74:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L75:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
.L71:
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	que(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L76
.L69:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L76:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
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
