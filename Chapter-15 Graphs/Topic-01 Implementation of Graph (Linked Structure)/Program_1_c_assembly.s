	.file	"Program_1.c"
	.text
	.globl	capacity
	.bss
	.align 8
	.type	capacity, @object
	.size	capacity, 8
capacity:
	.zero	8
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation for data node failed"
	.align 8
.LC1:
	.string	"Memory allocation for val pointer failed"
	.text
	.globl	initStructDataNode
	.type	initStructDataNode, @function
initStructDataNode:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movl	$32, %edi
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
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L4
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L3
.L4:
	movq	-8(%rbp), %rax
	movl	-20(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	*%rcx
	movq	-8(%rbp), %rax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	initStructDataNode, .-initStructDataNode
	.section	.rodata
	.align 8
.LC2:
	.string	"Enter the integer value for data node:"
.LC3:
	.string	"%d"
	.text
	.globl	initDataNodewithINT
	.type	initDataNodewithINT, @function
initDataNodewithINT:
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
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	initDataNodewithINT, .-initDataNodewithINT
	.section	.rodata
	.align 8
.LC4:
	.string	"Enter the double value for data node:"
.LC5:
	.string	"%lf"
	.text
	.globl	initDataNodewithDOB
	.type	initDataNodewithDOB, @function
initDataNodewithDOB:
.LFB8:
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
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	initDataNodewithDOB, .-initDataNodewithDOB
	.section	.rodata
	.align 8
.LC6:
	.string	"Enter the char value for data node:"
.LC7:
	.string	" %c"
	.text
	.globl	initDataNodewithCHAR
	.type	initDataNodewithCHAR, @function
initDataNodewithCHAR:
.LFB9:
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
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	initDataNodewithCHAR, .-initDataNodewithCHAR
	.section	.rodata
	.align 8
.LC8:
	.string	"Memory allocation failed for adjoing neighbor node"
	.text
	.globl	initAdjNeigh
	.type	initAdjNeigh, @function
initAdjNeigh:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L9
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L10
.L9:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	initAdjNeigh, .-initAdjNeigh
	.section	.rodata
	.align 8
.LC9:
	.string	"Memory allocation failed for graph node"
	.text
	.globl	initStructGraphNode
	.type	initStructGraphNode, @function
initStructGraphNode:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L12
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L13
.L12:
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	initStructGraphNode, .-initStructGraphNode
	.globl	edgeExists
	.type	edgeExists, @function
edgeExists:
.LFB12:
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
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L15
.L18:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -32(%rbp)
	jne	.L16
	movl	$1, %eax
	jmp	.L17
.L16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L15:
	cmpq	$0, -8(%rbp)
	jne	.L18
	movl	$0, %eax
.L17:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	edgeExists, .-edgeExists
	.globl	GN
	.bss
	.align 8
	.type	GN, @object
	.size	GN, 8
GN:
	.zero	8
	.globl	iterPtr
	.align 8
	.type	iterPtr, @object
	.size	iterPtr, 8
iterPtr:
	.zero	8
	.section	.rodata
	.align 8
.LC10:
	.string	"Enter the capacity/number of nodes in graph:"
.LC11:
	.string	"%llu"
.LC12:
	.string	"Graph is empty!"
	.align 8
.LC13:
	.string	"Memory allocation for graph array failed!"
.LC14:
	.string	"Enter the elements of graph:"
.LC15:
	.string	"Enter element %llu of graph:\n"
	.align 8
.LC16:
	.string	"\nEnter number of neighbours of node %llu:"
.LC17:
	.string	"Enter neighbour index %llu:"
.LC18:
	.string	"Invalid neighbour index"
.LC19:
	.string	"Neighbour node not found"
	.text
	.globl	createGraph
	.type	createGraph, @function
createGraph:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movl	%edi, -132(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	capacity(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	capacity(%rip), %rax
	testq	%rax, %rax
	jne	.L20
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L46
.L20:
	cmpl	$2, -132(%rbp)
	je	.L22
	cmpl	$2, -132(%rbp)
	ja	.L23
	cmpl	$0, -132(%rbp)
	je	.L24
	cmpl	$1, -132(%rbp)
	je	.L25
	jmp	.L23
.L24:
	movq	$4, -88(%rbp)
	leaq	initDataNodewithINT(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L26
.L25:
	movq	$8, -88(%rbp)
	leaq	initDataNodewithDOB(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L26
.L22:
	movq	$1, -88(%rbp)
	leaq	initDataNodewithCHAR(%rip), %rax
	movq	%rax, -80(%rbp)
	jmp	.L26
.L23:
	movl	$0, %eax
	jmp	.L46
.L26:
	call	map_create@PLT
	movq	%rax, -120(%rbp)
	movq	capacity(%rip), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, GN(%rip)
	movq	GN(%rip), %rax
	testq	%rax, %rax
	jne	.L27
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L46
.L27:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	$0, -96(%rbp)
	jmp	.L28
.L32:
	movq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rcx
	movl	-132(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	initStructDataNode
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.L29
	movl	$0, %eax
	jmp	.L46
.L29:
	movq	GN(%rip), %rax
	movq	-96(%rbp), %rdx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	initStructGraphNode
	movq	%rax, (%rbx)
	movq	GN(%rip), %rax
	movq	-96(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L31
	movl	$0, %eax
	jmp	.L46
.L31:
	movq	GN(%rip), %rax
	movq	-96(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-120(%rbp), %rax
	movl	$8, %r8d
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_put@PLT
	movq	-96(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -96(%rbp)
.L28:
	movq	-96(%rbp), %rdx
	movq	capacity(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L32
	movq	$0, -72(%rbp)
	jmp	.L33
.L45:
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	$0, -64(%rbp)
	jmp	.L34
.L44:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movq	%rax, %rsi
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-104(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-104(%rbp), %rax
	cmpq	%rax, -72(%rbp)
	je	.L35
	movq	-104(%rbp), %rdx
	movq	capacity(%rip), %rax
	cmpq	%rax, %rdx
	jb	.L36
.L35:
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L43
.L36:
	movq	$0, -96(%rbp)
	movq	-120(%rbp), %rax
	leaq	-96(%rbp), %rdx
	leaq	-104(%rbp), %rsi
	movq	%rdx, %rcx
	movl	$8, %edx
	movq	%rax, %rdi
	call	map_get@PLT
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	jne	.L38
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L43
.L38:
	movq	-96(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	GN(%rip), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	edgeExists
	testw	%ax, %ax
	jne	.L43
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	initAdjNeigh
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L40
	movl	$0, %eax
	jmp	.L46
.L40:
	movq	GN(%rip), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	GN(%rip), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	GN(%rip), %rax
	movq	-72(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	initAdjNeigh
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L42
	movl	$0, %eax
	jmp	.L46
.L42:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L43:
	addq	$1, -64(%rbp)
.L34:
	movq	-112(%rbp), %rax
	cmpq	%rax, -64(%rbp)
	jb	.L44
	addq	$1, -72(%rbp)
.L33:
	movq	capacity(%rip), %rax
	cmpq	%rax, -72(%rbp)
	jb	.L45
	movl	$1, %eax
.L46:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L47
	call	__stack_chk_fail@PLT
.L47:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	createGraph, .-createGraph
	.globl	printDT
	.type	printDT, @function
printDT:
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
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$2, %eax
	je	.L49
	cmpl	$2, %eax
	ja	.L53
	testl	%eax, %eax
	je	.L51
	cmpl	$1, %eax
	je	.L52
	jmp	.L53
.L51:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L50
.L52:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L50
.L49:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	nop
.L50:
.L53:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	printDT, .-printDT
	.section	.rodata
.LC20:
	.string	"\nNode %llu of graph is:"
	.align 8
.LC21:
	.string	"Neighbor nodes of node %llu are: "
	.text
	.globl	printGraph
	.type	printGraph, @function
printGraph:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L55
.L58:
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	printDT
	movl	$10, %edi
	call	putchar@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.L56
.L57:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	printDT
	movl	$32, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
.L56:
	cmpq	$0, -8(%rbp)
	jne	.L57
	addq	$1, -16(%rbp)
.L55:
	movq	capacity(%rip), %rax
	cmpq	%rax, -16(%rbp)
	jb	.L58
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	printGraph, .-printGraph
	.section	.rodata
.LC22:
	.string	"Successfully created graph!"
.LC23:
	.string	"Graph creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %edi
	call	createGraph
	testw	%ax, %ax
	je	.L60
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movq	GN(%rip), %rax
	movq	%rax, %rdi
	call	printGraph
	jmp	.L61
.L60:
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L61:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
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
