	.file	"Program_3.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation failed for node of binary tree!"
#NO_APP
	.section	.text._ZN10BinaryTree14createTreeNodeEi,"axG",@progbits,_ZN10BinaryTree14createTreeNodeEi,comdat
	.align 2
	.weak	_ZN10BinaryTree14createTreeNodeEi
	.type	_ZN10BinaryTree14createTreeNodeEi, @function
_ZN10BinaryTree14createTreeNodeEi:
.LFB1994:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	leaq	_ZSt7nothrow(%rip), %rax
	movq	%rax, %rsi
	movl	$24, %edi
	call	_ZnwmRKSt9nothrow_t@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
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
.LFE1994:
	.size	_ZN10BinaryTree14createTreeNodeEi, .-_ZN10BinaryTree14createTreeNodeEi
	.section	.rodata
	.align 8
.LC1:
	.string	"Memory allocation failed for queue data structure!"
	.section	.text._ZN10BinaryTree22implementCircularQueueEv,"axG",@progbits,_ZN10BinaryTree22implementCircularQueueEv,comdat
	.align 2
	.weak	_ZN10BinaryTree22implementCircularQueueEv
	.type	_ZN10BinaryTree22implementCircularQueueEv, @function
_ZN10BinaryTree22implementCircularQueueEv:
.LFB1995:
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
	movabsq	$1152921504606846975, %rdx
	cmpq	%rax, %rdx
	jb	.L5
	salq	$3, %rax
	leaq	_ZSt7nothrow(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZnamRKSt9nothrow_t@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	jne	.L7
	jmp	.L9
.L5:
	call	__cxa_throw_bad_array_new_length@PLT
.L9:
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	jmp	.L8
.L7:
	movl	$1, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZN10BinaryTree22implementCircularQueueEv, .-_ZN10BinaryTree22implementCircularQueueEv
	.section	.text._ZN10BinaryTree6isFullEv,"axG",@progbits,_ZN10BinaryTree6isFullEv,comdat
	.align 2
	.weak	_ZN10BinaryTree6isFullEv
	.type	_ZN10BinaryTree6isFullEv, @function
_ZN10BinaryTree6isFullEv:
.LFB1996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1996:
	.size	_ZN10BinaryTree6isFullEv, .-_ZN10BinaryTree6isFullEv
	.section	.text._ZN10BinaryTree7isEmptyEv,"axG",@progbits,_ZN10BinaryTree7isEmptyEv,comdat
	.align 2
	.weak	_ZN10BinaryTree7isEmptyEv
	.type	_ZN10BinaryTree7isEmptyEv, @function
_ZN10BinaryTree7isEmptyEv:
.LFB1997:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$-1, %rax
	jne	.L13
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$-1, %rax
	jne	.L13
	movl	$1, %eax
	jmp	.L14
.L13:
	movl	$0, %eax
.L14:
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.size	_ZN10BinaryTree7isEmptyEv, .-_ZN10BinaryTree7isEmptyEv
	.section	.rodata
.LC2:
	.string	"Can't insert "
	.align 8
.LC3:
	.string	" into queue, since queue is full!"
	.section	.text._ZN10BinaryTree7enqueueEPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree7enqueueEPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
	.type	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE, @function
_ZN10BinaryTree7enqueueEPNS_8TreeNodeE:
.LFB1998:
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
	movq	%rax, %rdi
	call	_ZN10BinaryTree6isFullEv
	testb	%al, %al
	je	.L17
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L16
.L17:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEv
	testb	%al, %al
	je	.L19
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L16
.L19:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1998:
	.size	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE, .-_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
	.section	.rodata
	.align 8
.LC4:
	.string	"Can't delete from queue, since queue is empty!"
	.section	.text._ZN10BinaryTree7dequeueEv,"axG",@progbits,_ZN10BinaryTree7dequeueEv,comdat
	.align 2
	.weak	_ZN10BinaryTree7dequeueEv
	.type	_ZN10BinaryTree7dequeueEv, @function
_ZN10BinaryTree7dequeueEv:
.LFB1999:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEv
	testb	%al, %al
	je	.L21
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	jmp	.L22
.L21:
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L23
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L24
.L23:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
.L24:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1999:
	.size	_ZN10BinaryTree7dequeueEv, .-_ZN10BinaryTree7dequeueEv
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter the capacity of binary tree:"
.LC6:
	.string	"Binary tree is empty!"
	.align 8
.LC7:
	.string	"Enter the elements of binary tree:"
.LC8:
	.string	"Enter element "
.LC9:
	.string	" of binary tree:"
	.section	.text._ZN10BinaryTree16createBinaryTreeEv,"axG",@progbits,_ZN10BinaryTree16createBinaryTreeEv,comdat
	.align 2
	.weak	_ZN10BinaryTree16createBinaryTreeEv
	.type	_ZN10BinaryTree16createBinaryTreeEv, @function
_ZN10BinaryTree16createBinaryTreeEv:
.LFB2000:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERy@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L26
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
	jmp	.L27
.L26:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L28
	salq	$2, %rax
	leaq	_ZSt7nothrow(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZnamRKSt9nothrow_t@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movq	$0, -56(%rbp)
	jmp	.L30
.L28:
	call	__cxa_throw_bad_array_new_length@PLT
.L31:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEy@PLT
	movq	%rax, %rdx
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERi@PLT
	addq	$1, -56(%rbp)
.L30:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jb	.L31
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree22implementCircularQueueEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L32
	movl	$0, %eax
	jmp	.L27
.L32:
	movq	-40(%rbp), %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14createTreeNodeEi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
	movq	$1, -48(%rbp)
	jmp	.L33
.L36:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7dequeueEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14createTreeNodeEi
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
.L34:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L33
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L33
	movq	-40(%rbp), %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -48(%rbp)
	salq	$2, %rax
	addq	%rcx, %rax
	movl	(%rax), %edx
	movq	-72(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14createTreeNodeEi
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
.L33:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L36
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.size	_ZN10BinaryTree16createBinaryTreeEv, .-_ZN10BinaryTree16createBinaryTreeEv
	.section	.rodata
.LC10:
	.string	" "
	.section	.text._ZN10BinaryTree8preorderEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8preorderEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, @function
_ZN10BinaryTree8preorderEPPNS_8TreeNodeE:
.LFB2001:
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
	je	.L39
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2001:
	.size	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, .-_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb,"axG",@progbits,_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb,comdat
	.align 2
	.weak	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb
	.type	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb, @function
_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb:
.LFB2003:
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
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L41
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L41
	movq	$0, -40(%rbp)
	movl	$-1, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movb	$0, -42(%rbp)
	movb	$0, -41(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L42
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIiiEaSEOS0_
	movb	$1, -42(%rbp)
.L42:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIiiEaSEOS0_
	movb	$1, -41(%rbp)
.L43:
	movq	-72(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L44
	movzbl	-42(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L45
	movzbl	-41(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L45
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.L44
.L45:
	cmpb	$0, -42(%rbp)
	je	.L47
	movzbl	-41(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L47
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jl	.L48
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.L48:
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.L44
.L47:
	movzbl	-42(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L49
	cmpb	$0, -41(%rbp)
	je	.L49
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L50
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.L50:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
	jmp	.L44
.L49:
	movl	-28(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L51
	movl	-24(%rbp), %edx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jg	.L52
.L51:
	movq	-72(%rbp), %rax
	movb	$0, (%rax)
.L52:
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)
.L44:
	movq	-40(%rbp), %rax
	jmp	.L53
.L41:
	movl	$-1, -32(%rbp)
	movl	$-1, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIiiEC1IiiLb1EEEOT_OT0_
	movq	-16(%rbp), %rax
.L53:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2003:
	.size	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb, .-_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
.LFB2011:
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
	je	.L57
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L57
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L57:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2011:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2014:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-1, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2014:
	.size	_ZN10BinaryTreeC2Ev, .-_ZN10BinaryTreeC2Ev
	.weak	_ZN10BinaryTreeC1Ev
	.set	_ZN10BinaryTreeC1Ev,_ZN10BinaryTreeC2Ev
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created binary tree!"
	.align 8
.LC12:
	.string	"The preorder traversal of binary tree is:"
	.align 8
.LC13:
	.string	"Given binary tree is a valid binary search tree"
	.align 8
.LC14:
	.string	"Given binary tree is not a valid binary search tree"
.LC15:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2012:
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
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTreeC1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree16createBinaryTreeEv
	testb	%al, %al
	je	.L60
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movb	$1, -65(%rbp)
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8checkBSTEPPNS_8TreeNodeERb
	movzbl	-65(%rbp), %eax
	testb	%al, %al
	je	.L61
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L62
.L61:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L62:
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
	jmp	.L64
.L60:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L64:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L66
	call	__stack_chk_fail@PLT
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2012:
	.size	main, .-main
	.section	.text._ZNSt4pairIiiEaSEOS0_,"axG",@progbits,_ZNSt4pairIiiEaSEOS0_,comdat
	.align 2
	.weak	_ZNSt4pairIiiEaSEOS0_
	.type	_ZNSt4pairIiiEaSEOS0_, @function
_ZNSt4pairIiiEaSEOS0_:
.LFB2275:
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
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	addq	$4, %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2275:
	.size	_ZNSt4pairIiiEaSEOS0_, .-_ZNSt4pairIiiEaSEOS0_
	.section	.text._ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIiiEC5IiiLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_
	.type	_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_, @function
_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_:
.LFB2277:
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
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2277:
	.size	_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_, .-_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_
	.weak	_ZNSt4pairIiiEC1IiiLb1EEEOT_OT0_
	.set	_ZNSt4pairIiiEC1IiiLb1EEEOT_OT0_,_ZNSt4pairIiiEC2IiiLb1EEEOT_OT0_
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2381:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
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
