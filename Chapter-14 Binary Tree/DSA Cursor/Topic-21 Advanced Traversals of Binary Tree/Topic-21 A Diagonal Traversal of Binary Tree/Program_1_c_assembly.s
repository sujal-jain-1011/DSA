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
	.globl	getDiagonalLevel
	.type	getDiagonalLevel, @function
getDiagonalLevel:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	$0, -24(%rbp)
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$1, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	-24(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_get@PLT
	movw	%ax, -26(%rbp)
	cmpw	$0, -26(%rbp)
	jne	.L42
	movq	-16(%rbp), %rdx
	leaq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_put@PLT
	jmp	.L43
.L42:
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	$1, %rdx
	movq	%rdx, (%rax)
.L43:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	getDiagonalLevel
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	16(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	getDiagonalLevel
.L45:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L44
	call	__stack_chk_fail@PLT
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	getDiagonalLevel, .-getDiagonalLevel
	.globl	populateMap
	.type	populateMap, @function
populateMap:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_get@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	populateMap
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	leaq	16(%rdx), %rcx
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	populateMap
.L49:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	populateMap, .-populateMap
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
	je	.L52
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
.L52:
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
	.string	"Successfully created binary tree!"
	.align 8
.LC12:
	.string	"The preorder traversal of binary tree is:"
	.align 8
.LC13:
	.string	"The diagonal order traversal of binary tree is:"
.LC14:
	.string	"Binary tree creation failed!"
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
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	createBinaryTree
	testw	%ax, %ax
	je	.L54
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
	call	map_create@PLT
	movq	%rax, -120(%rbp)
	leaq	-120(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	getDiagonalLevel
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	map_size@PLT
	movq	%rax, -80(%rbp)
	call	map_create@PLT
	movq	%rax, -112(%rbp)
	movq	$0, -104(%rbp)
	jmp	.L55
.L56:
	movq	-120(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_get@PLT
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	0(,%rax,8), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$16, %ecx
	movq	%rax, %rdi
	call	pair_create@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	leaq	-112(%rbp), %rax
	movl	$32, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_put@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
.L55:
	movq	-104(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L56
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	map_free@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdx
	movl	$0, %esi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	populateMap
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -104(%rbp)
	jmp	.L57
.L60:
	movq	-112(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_get@PLT
	movq	-96(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.L58
.L59:
	movq	-88(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	subq	$1, -88(%rbp)
.L58:
	cmpq	$0, -88(%rbp)
	jne	.L59
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-104(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -104(%rbp)
.L57:
	movq	-104(%rbp), %rax
	cmpq	-80(%rbp), %rax
	jb	.L60
	movl	$10, %edi
	call	putchar@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	freeBinaryTree
	movq	que(%rip), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L61
.L54:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L61:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
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
