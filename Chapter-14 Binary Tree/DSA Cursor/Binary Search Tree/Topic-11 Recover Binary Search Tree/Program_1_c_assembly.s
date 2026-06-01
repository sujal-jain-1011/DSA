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
	.string	"Memory allocation failed for node of binary search tree!"
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
	.globl	cmp
	.type	cmp, @function
cmp:
.LFB12:
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
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	cmp, .-cmp
	.globl	implementBinarySearchTree
	.type	implementBinarySearchTree, @function
implementBinarySearchTree:
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
	movq	-32(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L25
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	shrq	%rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -8(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L26
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	implementBinarySearchTree
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L26:
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	implementBinarySearchTree
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	jmp	.L27
.L25:
	movl	$0, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	implementBinarySearchTree, .-implementBinarySearchTree
	.section	.rodata
	.align 8
.LC4:
	.string	"Enter the capacity of binary search tree:"
.LC5:
	.string	"%llu"
.LC6:
	.string	"binary search tree is empty!"
	.align 8
.LC7:
	.string	"Enter the elements of binary search tree:"
	.align 8
.LC8:
	.string	"Enter element %llu of binary search tree:"
.LC9:
	.string	"%d"
	.text
	.globl	createBinarySearchTree
	.type	createBinarySearchTree, @function
createBinarySearchTree:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
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
	jne	.L29
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L30
.L29:
	movq	capacity(%rip), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -16(%rbp)
	jmp	.L31
.L32:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$1, -16(%rbp)
.L31:
	movq	capacity(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L32
	movq	capacity(%rip), %rsi
	movq	-8(%rbp), %rax
	leaq	cmp(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	capacity(%rip), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	implementBinarySearchTree
	movq	%rax, root(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$1, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	createBinarySearchTree, .-createBinarySearchTree
	.section	.rodata
.LC10:
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
	je	.L35
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
.L35:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	preorder, .-preorder
	.globl	inorder
	.type	inorder, @function
inorder:
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
	je	.L38
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	inorder
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
	addq	$16, %rax
	movq	%rax, %rdi
	call	inorder
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	inorder, .-inorder
	.globl	inorderPopulate
	.type	inorderPopulate, @function
inorderPopulate:
.LFB17:
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
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	inorderPopulate
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, (%rdx)
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	inorderPopulate
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	inorderPopulate, .-inorderPopulate
	.globl	recoverBST
	.type	recoverBST, @function
recoverBST:
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	recoverBST
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L45
.L44:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L46
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L46
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	leaq	32(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
	jmp	.L45
.L46:
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L45
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jle	.L45
	movq	-16(%rbp), %rax
	leaq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, (%rdx)
.L45:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	recoverBST
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	recoverBST, .-recoverBST
	.globl	swap
	.type	swap, @function
swap:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	swap, .-swap
	.globl	freeBinarySearchTree
	.type	freeBinarySearchTree, @function
freeBinarySearchTree:
.LFB20:
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
	je	.L51
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	freeBinarySearchTree
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	freeBinarySearchTree
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
.L51:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	freeBinarySearchTree, .-freeBinarySearchTree
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created binary search tree!"
	.align 8
.LC12:
	.string	"The inorder traversal of BST before distortion is:"
	.align 8
.LC13:
	.string	"Enter the node indices of whose data you need to swap:"
.LC14:
	.string	"%llu %llu"
	.align 8
.LC15:
	.string	"The inorder traversal of BST after distortion is:"
.LC16:
	.string	"Recovering BST..."
	.align 8
.LC17:
	.string	"The inorder traversal of recovered BST is:"
	.align 8
.LC18:
	.string	"Binary search tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, %eax
	call	createBinarySearchTree
	testw	%ax, %ax
	je	.L53
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	inorder
	movl	$10, %edi
	call	putchar@PLT
	movq	capacity(%rip), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	inorderPopulate
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-40(%rbp), %rax
	movq	capacity(%rip), %rcx
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swap
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	inorder
	movl	$10, %edi
	call	putchar@PLT
	movl	$40, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movw	$0, -50(%rbp)
	jmp	.L54
.L55:
	movzwl	-50(%rbp), %eax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	$0, (%rax)
	movzwl	-50(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -50(%rbp)
.L54:
	cmpw	$4, -50(%rbp)
	jbe	.L55
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	recoverBST
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L56
	movq	-16(%rbp), %rax
	addq	$32, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swap
	jmp	.L57
.L56:
	movq	-16(%rbp), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	swap
.L57:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	inorder
	movl	$10, %edi
	call	putchar@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	freeBinarySearchTree
	jmp	.L58
.L53:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L58:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L60
	call	__stack_chk_fail@PLT
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
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
