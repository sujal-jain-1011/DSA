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
	.globl	cloneTree
	.type	cloneTree, @function
cloneTree:
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
	cmpq	$0, -24(%rbp)
	je	.L37
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	cloneTree
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	cloneTree
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	jmp	.L38
.L37:
	movl	$0, %eax
.L38:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	cloneTree, .-cloneTree
	.globl	create
	.type	create, @function
create:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%edx, %eax
	movq	%rcx, -200(%rbp)
	movl	%esi, %edx
	movw	%dx, -188(%rbp)
	movw	%ax, -192(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movzwl	-188(%rbp), %eax
	cmpw	%ax, -192(%rbp)
	jb	.L40
	leaq	-128(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movzwl	-188(%rbp), %eax
	movw	%ax, -170(%rbp)
	jmp	.L41
.L48:
	movzwl	-170(%rbp), %eax
	cmpw	-188(%rbp), %ax
	jne	.L42
	leaq	-96(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	$0, (%rax)
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	jmp	.L43
.L42:
	movzwl	-170(%rbp), %eax
	subl	$1, %eax
	movzwl	%ax, %edx
	movzwl	-188(%rbp), %esi
	leaq	-240(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, %rdi
	call	create
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -80(%rbp)
	movq	%rdx, -72(%rbp)
.L43:
	movzwl	-192(%rbp), %edx
	movzwl	-170(%rbp), %eax
	addl	$1, %eax
	movzwl	%ax, %esi
	leaq	-240(%rbp), %rax
	movq	-200(%rbp), %rcx
	movq	%rax, %rdi
	call	create
	movq	-240(%rbp), %rax
	movq	-232(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-224(%rbp), %rax
	movq	-216(%rbp), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	$0, -160(%rbp)
	jmp	.L44
.L47:
	movq	$0, -152(%rbp)
	jmp	.L45
.L46:
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -168(%rbp)
	movzwl	-170(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-200(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	movq	-168(%rbp), %rbx
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, (%rbx)
	movq	-160(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	(%rdx), %rbx
	movq	%rax, %rdi
	call	cloneTree
	movq	%rax, 8(%rbx)
	movq	-152(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rdx
	movq	(%rdx), %rbx
	movq	%rax, %rdi
	call	cloneTree
	movq	%rax, 16(%rbx)
	leaq	-168(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	addq	$1, -152(%rbp)
.L45:
	movq	-56(%rbp), %rax
	cmpq	%rax, -152(%rbp)
	jb	.L46
	addq	$1, -160(%rbp)
.L44:
	movq	-88(%rbp), %rax
	cmpq	%rax, -160(%rbp)
	jb	.L47
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	vecFree@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	vecFree@PLT
	movzwl	-170(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -170(%rbp)
.L41:
	movzwl	-170(%rbp), %eax
	cmpw	%ax, -192(%rbp)
	jnb	.L48
	movq	-184(%rbp), %rcx
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-112(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	jmp	.L39
.L40:
	leaq	-64(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	vecInit@PLT
	movl	$8, %edi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	leaq	-96(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecPush@PLT
	movq	-184(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
.L39:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	movq	-184(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	create, .-create
	.globl	createUniqueBST
	.type	createUniqueBST, @function
createUniqueBST:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, %eax
	movw	%ax, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzwl	-76(%rbp), %eax
	addq	%rax, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movw	$0, -58(%rbp)
	jmp	.L52
.L53:
	movzwl	-58(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	movzwl	-58(%rbp), %edx
	addl	$1, %edx
	movw	%dx, (%rax)
	movzwl	-58(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -58(%rbp)
.L52:
	movzwl	-58(%rbp), %eax
	cmpw	-76(%rbp), %ax
	jb	.L53
	movzwl	-76(%rbp), %eax
	subl	$1, %eax
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$0, %esi
	movq	%rax, %rdi
	call	create
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 16(%rcx)
	movq	%rdx, 24(%rcx)
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	movq	-72(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	createUniqueBST, .-createUniqueBST
	.globl	freeBinarySearchTree
	.type	freeBinarySearchTree, @function
freeBinarySearchTree:
.LFB19:
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
	je	.L58
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
.L58:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	freeBinarySearchTree, .-freeBinarySearchTree
	.section	.rodata
	.align 8
.LC11:
	.string	"Enter the number of nodes in binary search tree:"
.LC12:
	.string	"%hu"
	.align 8
.LC13:
	.string	"Preorder traversal of binary search tree %hu is:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-70(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzwl	-70(%rbp), %eax
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	createUniqueBST
	movw	$0, -68(%rbp)
	jmp	.L60
.L61:
	movzwl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movzwl	-68(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	movzwl	-68(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -68(%rbp)
.L60:
	movzwl	-68(%rbp), %edx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L61
	movw	$0, -66(%rbp)
	jmp	.L62
.L63:
	movzwl	-66(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	vecGet@PLT
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	freeBinarySearchTree
	movzwl	-66(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -66(%rbp)
.L62:
	movzwl	-66(%rbp), %edx
	movq	-40(%rbp), %rax
	cmpq	%rax, %rdx
	jb	.L63
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L65
	call	__stack_chk_fail@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
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
