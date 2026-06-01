	.file	"generic_set.c"
	.text
	.globl	set_create
	.type	set_create, @function
set_create:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	set_create, .-set_create
	.globl	set_insert
	.type	set_insert, @function
set_insert:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-144(%rbp), %rax
	movq	%rax, -72(%rbp)
	movl	$-17973521, -128(%rbp)
	movl	$-1640531527, -120(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -124(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, -116(%rbp)
	jmp	.L5
.L6:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -124(%rbp)
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -120(%rbp)
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-72(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-72(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -128(%rbp)
	addq	$12, -72(%rbp)
	subl	$12, -116(%rbp)
.L5:
	cmpl	$11, -116(%rbp)
	ja	.L6
	movq	-152(%rbp), %rax
	addl	%eax, -128(%rbp)
	cmpl	$11, -116(%rbp)
	ja	.L7
	movl	-116(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L9(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L9(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L9:
	.long	.L7-.L9
	.long	.L19-.L9
	.long	.L18-.L9
	.long	.L17-.L9
	.long	.L16-.L9
	.long	.L15-.L9
	.long	.L14-.L9
	.long	.L13-.L9
	.long	.L12-.L9
	.long	.L11-.L9
	.long	.L10-.L9
	.long	.L8-.L9
	.text
.L8:
	movq	-72(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -128(%rbp)
.L10:
	movq	-72(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -128(%rbp)
.L11:
	movq	-72(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -128(%rbp)
.L12:
	movq	-72(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -120(%rbp)
.L13:
	movq	-72(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -120(%rbp)
.L14:
	movq	-72(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -120(%rbp)
.L15:
	movq	-72(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -120(%rbp)
.L16:
	movq	-72(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -124(%rbp)
.L17:
	movq	-72(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -124(%rbp)
.L18:
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -124(%rbp)
.L19:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -124(%rbp)
.L7:
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -124(%rbp)
	movl	-128(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -120(%rbp)
	movl	-124(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	subl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -128(%rbp)
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L4
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-128(%rbp), %eax
	movl	%eax, -92(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L20
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-92(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.L22
.L20:
	movq	$0, -80(%rbp)
	jmp	.L22
.L26:
	movq	-80(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	%eax, -128(%rbp)
	jne	.L23
	movq	-80(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -152(%rbp)
	jne	.L23
	movq	-80(%rbp), %rax
	movq	56(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L4
.L23:
	movq	-80(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L24
	movq	-80(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	jmp	.L22
.L24:
	movq	$0, -80(%rbp)
.L22:
	cmpq	$0, -80(%rbp)
	jne	.L26
.L4:
	cmpq	$0, -80(%rbp)
	jne	.L59
	movl	$72, %edi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-152(%rbp), %rdx
	movq	-144(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
	movq	-80(%rbp), %rax
	movq	-152(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$-17973521, -112(%rbp)
	movl	$-1640531527, -104(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -108(%rbp)
	movq	-152(%rbp), %rax
	movl	%eax, -100(%rbp)
	jmp	.L28
.L29:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -108(%rbp)
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -104(%rbp)
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-64(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-64(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -112(%rbp)
	addq	$12, -64(%rbp)
	subl	$12, -100(%rbp)
.L28:
	cmpl	$11, -100(%rbp)
	ja	.L29
	movq	-152(%rbp), %rax
	addl	%eax, -112(%rbp)
	cmpl	$11, -100(%rbp)
	ja	.L30
	movl	-100(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L32(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L32(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L32:
	.long	.L30-.L32
	.long	.L42-.L32
	.long	.L41-.L32
	.long	.L40-.L32
	.long	.L39-.L32
	.long	.L38-.L32
	.long	.L37-.L32
	.long	.L36-.L32
	.long	.L35-.L32
	.long	.L34-.L32
	.long	.L33-.L32
	.long	.L31-.L32
	.text
.L31:
	movq	-64(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -112(%rbp)
.L33:
	movq	-64(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -112(%rbp)
.L34:
	movq	-64(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -112(%rbp)
.L35:
	movq	-64(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -104(%rbp)
.L36:
	movq	-64(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -104(%rbp)
.L37:
	movq	-64(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -104(%rbp)
.L38:
	movq	-64(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -104(%rbp)
.L39:
	movq	-64(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -108(%rbp)
.L40:
	movq	-64(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -108(%rbp)
.L41:
	movq	-64(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -108(%rbp)
.L42:
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -108(%rbp)
.L30:
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -108(%rbp)
	movl	-112(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -104(%rbp)
	movl	-108(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	subl	%eax, -112(%rbp)
	movl	-104(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -112(%rbp)
	movq	-80(%rbp), %rax
	movl	-112(%rbp), %edx
	movl	%edx, 68(%rax)
	movq	-80(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 56(%rax)
	movq	-152(%rbp), %rax
	movl	%eax, %edx
	movq	-80(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L43
	movq	-80(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 24(%rax)
	movl	$64, %edi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L44
	movl	$-1, %edi
	call	exit@PLT
.L44:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$64, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$32, 8(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$5, 12(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	$16, 32(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rbx
	movl	$512, %edi
	call	malloc@PLT
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$-1609490463, 56(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	movl	$-1, %edi
	call	exit@PLT
.L45:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	$512, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, (%rax)
	jmp	.L46
.L43:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rdx
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L46:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	addl	$1, %edx
	movl	%edx, 16(%rax)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-112(%rbp), %eax
	movl	%eax, -88(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-88(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-48(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 24(%rax)
.L47:
	movq	-80(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	cmpl	%eax, %ecx
	jb	.L59
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	52(%rax), %eax
	testl	%eax, %eax
	jne	.L59
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.L48
	movl	$-1, %edi
	call	exit@PLT
.L48:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	movl	%eax, %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	memset@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %eax
	addl	$1, %eax
	movl	%eax, %ecx
	shrl	%cl, %edx
	movl	%edx, %ecx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	testl	%eax, %eax
	je	.L49
	movl	$1, %edx
	jmp	.L50
.L49:
	movl	$0, %edx
.L50:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$0, 44(%rax)
	movl	$0, -96(%rbp)
	jmp	.L51
.L56:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-96(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.L52
.L55:
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	52(%rax), %edx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	addl	%eax, %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %eax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	cmpl	%eax, %edx
	jnb	.L53
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %edx
	addl	$1, %edx
	movl	%edx, 44(%rax)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movq	-24(%rbp), %rdx
	movl	12(%rdx), %ecx
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	40(%rdx), %edx
	imull	%ecx, %edx
	cmpl	%eax, %edx
	jnb	.L53
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 12(%rax)
.L53:
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 32(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L54
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 24(%rax)
.L54:
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
.L52:
	cmpq	$0, -56(%rbp)
	jne	.L55
	addl	$1, -96(%rbp)
.L51:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	cmpl	%eax, -96(%rbp)
	jb	.L56
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %edx
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	addl	%edx, %edx
	movl	%edx, 8(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	12(%rax), %edx
	addl	$1, %edx
	movl	%edx, 12(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	44(%rax), %eax
	movq	-80(%rbp), %rdx
	movq	16(%rdx), %rdx
	movl	16(%rdx), %edx
	shrl	%edx
	cmpl	%eax, %edx
	jnb	.L57
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	leal	1(%rax), %edx
	jmp	.L58
.L57:
	movl	$0, %edx
.L58:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, 48(%rax)
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	48(%rax), %eax
	cmpl	$1, %eax
	jbe	.L59
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	$1, 52(%rax)
.L59:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	set_insert, .-set_insert
	.globl	set_contains
	.type	set_contains, @function
set_contains:
.LFB8:
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
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L61
	movq	-64(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$-17973521, -36(%rbp)
	movl	$-1640531527, -28(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movl	%eax, -24(%rbp)
	jmp	.L62
.L63:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -32(%rbp)
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	addq	$12, -8(%rbp)
	subl	$12, -24(%rbp)
.L62:
	cmpl	$11, -24(%rbp)
	ja	.L63
	movq	-72(%rbp), %rax
	addl	%eax, -36(%rbp)
	cmpl	$11, -24(%rbp)
	ja	.L64
	movl	-24(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L66(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L66(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L66:
	.long	.L64-.L66
	.long	.L76-.L66
	.long	.L75-.L66
	.long	.L74-.L66
	.long	.L73-.L66
	.long	.L72-.L66
	.long	.L71-.L66
	.long	.L70-.L66
	.long	.L69-.L66
	.long	.L68-.L66
	.long	.L67-.L66
	.long	.L65-.L66
	.text
.L65:
	movq	-8(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -36(%rbp)
.L67:
	movq	-8(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -36(%rbp)
.L68:
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -36(%rbp)
.L69:
	movq	-8(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -28(%rbp)
.L70:
	movq	-8(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -28(%rbp)
.L71:
	movq	-8(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -28(%rbp)
.L72:
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -28(%rbp)
.L73:
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -32(%rbp)
.L74:
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -32(%rbp)
.L75:
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -32(%rbp)
.L76:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -32(%rbp)
.L64:
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -28(%rbp)
	movl	-32(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	subl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -36(%rbp)
	movq	$0, -16(%rbp)
	cmpq	$0, -56(%rbp)
	je	.L61
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L77
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-20(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L79
.L77:
	movq	$0, -16(%rbp)
	jmp	.L79
.L83:
	movq	-16(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	%eax, -36(%rbp)
	jne	.L80
	movq	-16(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -72(%rbp)
	jne	.L80
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L61
.L80:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L81
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	jmp	.L79
.L81:
	movq	$0, -16(%rbp)
.L79:
	cmpq	$0, -16(%rbp)
	jne	.L83
.L61:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	set_contains, .-set_contains
	.globl	set_size
	.type	set_size, @function
set_size:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L86
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %eax
	movl	%eax, %eax
	jmp	.L88
.L86:
	movl	$0, %eax
.L88:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	set_size, .-set_size
	.globl	set_remove
	.type	set_remove, @function
set_remove:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-80(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$-17973521, -56(%rbp)
	movl	$-1640531527, -48(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movq	-88(%rbp), %rax
	movl	%eax, -44(%rbp)
	jmp	.L91
.L92:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$1, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$5, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movq	-24(%rbp), %rdx
	addq	$9, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	addq	$11, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%edx, %eax
	addl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -56(%rbp)
	addq	$12, -24(%rbp)
	subl	$12, -44(%rbp)
.L91:
	cmpl	$11, -44(%rbp)
	ja	.L92
	movq	-88(%rbp), %rax
	addl	%eax, -56(%rbp)
	cmpl	$11, -44(%rbp)
	ja	.L93
	movl	-44(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L95(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L95(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L95:
	.long	.L93-.L95
	.long	.L105-.L95
	.long	.L104-.L95
	.long	.L103-.L95
	.long	.L102-.L95
	.long	.L101-.L95
	.long	.L100-.L95
	.long	.L99-.L95
	.long	.L98-.L95
	.long	.L97-.L95
	.long	.L96-.L95
	.long	.L94-.L95
	.text
.L94:
	movq	-24(%rbp), %rax
	addq	$10, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -56(%rbp)
.L96:
	movq	-24(%rbp), %rax
	addq	$9, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -56(%rbp)
.L97:
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -56(%rbp)
.L98:
	movq	-24(%rbp), %rax
	addq	$7, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -48(%rbp)
.L99:
	movq	-24(%rbp), %rax
	addq	$6, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -48(%rbp)
.L100:
	movq	-24(%rbp), %rax
	addq	$5, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -48(%rbp)
.L101:
	movq	-24(%rbp), %rax
	addq	$4, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -48(%rbp)
.L102:
	movq	-24(%rbp), %rax
	addq	$3, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	addl	%eax, -52(%rbp)
.L103:
	movq	-24(%rbp), %rax
	addq	$2, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	addl	%eax, -52(%rbp)
.L104:
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	addl	%eax, -52(%rbp)
.L105:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -52(%rbp)
.L93:
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$8, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$13, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$12, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$16, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$5, %eax
	xorl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	shrl	$3, %eax
	xorl	%eax, -52(%rbp)
	movl	-56(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	sall	$10, %eax
	xorl	%eax, -48(%rbp)
	movl	-52(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	subl	%eax, -56(%rbp)
	movl	-48(%rbp), %eax
	shrl	$15, %eax
	xorl	%eax, -56(%rbp)
	movq	$0, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L90
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	-56(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L106
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-40(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L108
.L106:
	movq	$0, -32(%rbp)
	jmp	.L108
.L112:
	movq	-32(%rbp), %rax
	movl	68(%rax), %eax
	cmpl	%eax, -56(%rbp)
	jne	.L109
	movq	-32(%rbp), %rax
	movl	64(%rax), %eax
	movl	%eax, %eax
	cmpq	%rax, -88(%rbp)
	jne	.L109
	movq	-32(%rbp), %rax
	movq	56(%rax), %rax
	movq	-88(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memcmp@PLT
	testl	%eax, %eax
	je	.L90
.L109:
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.L110
	movq	-32(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	negq	%rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	jmp	.L108
.L110:
	movq	$0, -32(%rbp)
.L108:
	cmpq	$0, -32(%rbp)
	jne	.L112
.L90:
	cmpq	$0, -32(%rbp)
	je	.L123
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L114
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L115
.L114:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L116
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L116:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L117
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	jmp	.L118
.L117:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
.L118:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L119
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
.L119:
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L120
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L120:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L121
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L121:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L122
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L122:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L115:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L123:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	set_remove, .-set_remove
	.globl	set_clear
	.type	set_clear, @function
set_clear:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L125
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	jmp	.L126
.L125:
	movl	$0, %eax
.L126:
	movq	%rax, -24(%rbp)
	jmp	.L127
.L139:
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L128
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	jmp	.L129
.L128:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L130
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	addq	%rcx, %rdx
	movq	%rdx, 24(%rax)
.L130:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L131
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdx)
	jmp	.L132
.L131:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, (%rax)
.L132:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L133
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	32(%rax), %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rdx)
.L133:
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	8(%rax), %eax
	subl	$1, %eax
	andl	%edx, %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movl	-36(%rbp), %edx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -16(%rbp)
	jne	.L134
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L134:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.L135
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, 32(%rax)
.L135:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.L136
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, 24(%rax)
.L136:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movl	16(%rax), %edx
	subl	$1, %edx
	movl	%edx, 16(%rax)
.L129:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L137
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	jmp	.L138
.L137:
	movl	$0, %eax
.L138:
	movq	%rax, -24(%rbp)
.L127:
	cmpq	$0, -32(%rbp)
	jne	.L139
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	set_clear, .-set_clear
	.globl	set_free
	.type	set_free, @function
set_free:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	set_clear
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	set_free, .-set_free
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
