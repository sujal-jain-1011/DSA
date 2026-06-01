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
	.globl	head
	.align 8
	.type	head, @object
	.size	head, 8
head:
	.zero	8
	.globl	lptr
	.align 8
	.type	lptr, @object
	.size	lptr, 8
lptr:
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
	.string	"Memory allocation failed for node of linked list!"
	.text
	.globl	createListNode
	.type	createListNode, @function
createListNode:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L5
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L6
.L5:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	createListNode, .-createListNode
	.section	.rodata
	.align 8
.LC2:
	.string	"Memory allocation failed for queue data structure!"
	.text
	.globl	implementCircularQueue
	.type	implementCircularQueue, @function
implementCircularQueue:
.LFB8:
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
	jne	.L8
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L9
.L8:
	movl	$1, %eax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	implementCircularQueue, .-implementCircularQueue
	.globl	isFull
	.type	isFull, @function
isFull:
.LFB9:
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
.LFE9:
	.size	isFull, .-isFull
	.globl	isEmpty
	.type	isEmpty, @function
isEmpty:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	front(%rip), %rax
	cmpq	$-1, %rax
	jne	.L13
	movq	rear(%rip), %rax
	cmpq	$-1, %rax
	jne	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	isEmpty, .-isEmpty
	.section	.rodata
	.align 8
.LC3:
	.string	"Can't insert %d into queue, since queue is full!\n"
	.text
	.globl	enqueue
	.type	enqueue, @function
enqueue:
.LFB11:
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
	je	.L17
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L16
.L17:
	movl	$0, %eax
	call	isEmpty
	testw	%ax, %ax
	je	.L19
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
	jmp	.L16
.L19:
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
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	enqueue, .-enqueue
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
	subq	$16, %rsp
	movl	$0, %eax
	call	isEmpty
	testw	%ax, %ax
	je	.L21
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	que(%rip), %rax
	movq	front(%rip), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	front(%rip), %rdx
	movq	rear(%rip), %rax
	cmpq	%rax, %rdx
	jne	.L23
	movq	$-1, rear(%rip)
	movq	rear(%rip), %rax
	movq	%rax, front(%rip)
	jmp	.L24
.L23:
	movq	front(%rip), %rax
	addq	$1, %rax
	movq	capacity(%rip), %rsi
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rax, front(%rip)
.L24:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	dequeue, .-dequeue
	.globl	cmp
	.type	cmp, @function
cmp:
.LFB13:
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
.LFE13:
	.size	cmp, .-cmp
	.globl	implementBinarySearchTree
	.type	implementBinarySearchTree, @function
implementBinarySearchTree:
.LFB14:
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
	jb	.L28
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
	je	.L29
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	implementBinarySearchTree
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L29:
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
	jmp	.L30
.L28:
	movl	$0, %eax
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	implementBinarySearchTree, .-implementBinarySearchTree
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter the capacity of binary search tree:"
.LC6:
	.string	"%llu"
.LC7:
	.string	"binary search tree is empty!"
	.align 8
.LC8:
	.string	"Enter the elements of binary search tree:"
	.align 8
.LC9:
	.string	"Enter element %llu of binary search tree:"
.LC10:
	.string	"%d"
	.text
	.globl	createBinarySearchTree
	.type	createBinarySearchTree, @function
createBinarySearchTree:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
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
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -16(%rbp)
	jmp	.L34
.L35:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addq	$1, -16(%rbp)
.L34:
	movq	capacity(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L35
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
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	createBinarySearchTree, .-createBinarySearchTree
	.section	.rodata
.LC11:
	.string	"%d "
	.text
	.globl	preorder
	.type	preorder, @function
preorder:
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
.L38:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	preorder, .-preorder
	.globl	createBST
	.type	createBST, @function
createBST:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.L40
	movl	$0, %eax
	jmp	.L41
.L40:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L42
.L44:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L42:
	movq	-16(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jne	.L44
.L43:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edi
	call	createTreeNode
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	createBST
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	createBST
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
.L41:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	createBST, .-createBST
	.section	.rodata
	.align 8
.LC12:
	.string	"Enter the size of linked list:"
.LC13:
	.string	"Linked List is empty!"
.LC14:
	.string	"Enter the value of node %llu:"
	.text
	.globl	createLinkedList
	.type	createLinkedList, @function
createLinkedList:
.LFB18:
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
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-48(%rbp), %rax
	testq	%rax, %rax
	jne	.L46
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L56
.L46:
	movq	$0, -40(%rbp)
	jmp	.L48
.L51:
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-52(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-52(%rbp), %eax
	movl	%eax, %edi
	call	createListNode
	movq	%rax, -16(%rbp)
	movq	head(%rip), %rax
	testq	%rax, %rax
	jne	.L49
	movq	-16(%rbp), %rax
	movq	%rax, lptr(%rip)
	movq	lptr(%rip), %rax
	movq	%rax, head(%rip)
	jmp	.L50
.L49:
	movq	lptr(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, lptr(%rip)
.L50:
	addq	$1, -40(%rbp)
.L48:
	movq	-48(%rbp), %rax
	cmpq	%rax, -40(%rbp)
	jb	.L51
	movq	head(%rip), %rax
	movq	%rax, lptr(%rip)
	movq	-48(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	jmp	.L52
.L53:
	movq	lptr(%rip), %rdx
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	leaq	0(,%rax,4), %rcx
	movq	-24(%rbp), %rax
	addq	%rax, %rcx
	movl	(%rdx), %eax
	movl	%eax, (%rcx)
	movq	lptr(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, lptr(%rip)
.L52:
	movq	lptr(%rip), %rax
	testq	%rax, %rax
	jne	.L53
	movq	-48(%rbp), %rsi
	movq	-24(%rbp), %rax
	leaq	cmp(%rip), %rdx
	movq	%rdx, %rcx
	movl	$4, %edx
	movq	%rax, %rdi
	call	qsort@PLT
	movq	$0, -32(%rbp)
	movq	head(%rip), %rax
	movq	%rax, lptr(%rip)
	jmp	.L54
.L55:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	lptr(%rip), %rax
	movl	(%rdx), %edx
	movl	%edx, (%rax)
	movq	lptr(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, lptr(%rip)
.L54:
	movq	lptr(%rip), %rax
	testq	%rax, %rax
	jne	.L55
	movq	head(%rip), %rax
	movq	%rax, lptr(%rip)
	movq	lptr(%rip), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	createBST
	movq	%rax, root(%rip)
	movl	$1, %eax
.L56:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	createLinkedList, .-createLinkedList
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
	je	.L60
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
.L60:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	freeBinarySearchTree, .-freeBinarySearchTree
	.section	.rodata
	.align 8
.LC15:
	.string	"Successfully created binary search tree!"
	.align 8
.LC16:
	.string	"The preorder traversal of binary search tree is:"
	.align 8
.LC17:
	.string	"Binary search tree creation failed!"
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
	call	createLinkedList
	testw	%ax, %ax
	je	.L62
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	preorder
	movl	$10, %edi
	call	putchar@PLT
	leaq	root(%rip), %rax
	movq	%rax, %rdi
	call	freeBinarySearchTree
	jmp	.L63
.L62:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L63:
	movl	$0, %eax
	popq	%rbp
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
