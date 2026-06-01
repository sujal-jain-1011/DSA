	.file	"Program_1.cpp"
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
.LFB1988:
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
.LFE1988:
	.size	_ZN10BinaryTree14createTreeNodeEi, .-_ZN10BinaryTree14createTreeNodeEi
	.section	.rodata
	.align 8
.LC1:
	.string	"Memory allocation failed for queue data structure!"
	.section	.text._ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy,"axG",@progbits,_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy,comdat
	.align 2
	.weak	_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy
	.type	_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy, @function
_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy:
.LFB1989:
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
	movq	-24(%rbp), %rax
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
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
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
.LFE1989:
	.size	_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy, .-_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy
	.section	.text._ZN10BinaryTree6isFullEPyS0_S0_,"axG",@progbits,_ZN10BinaryTree6isFullEPyS0_S0_,comdat
	.align 2
	.weak	_ZN10BinaryTree6isFullEPyS0_S0_
	.type	_ZN10BinaryTree6isFullEPyS0_S0_, @function
_ZN10BinaryTree6isFullEPyS0_S0_:
.LFB1990:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1990:
	.size	_ZN10BinaryTree6isFullEPyS0_S0_, .-_ZN10BinaryTree6isFullEPyS0_S0_
	.section	.text._ZN10BinaryTree7isEmptyEPyS0_,"axG",@progbits,_ZN10BinaryTree7isEmptyEPyS0_,comdat
	.align 2
	.weak	_ZN10BinaryTree7isEmptyEPyS0_
	.type	_ZN10BinaryTree7isEmptyEPyS0_, @function
_ZN10BinaryTree7isEmptyEPyS0_:
.LFB1991:
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
	cmpq	$-1, %rax
	jne	.L13
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
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
.LFE1991:
	.size	_ZN10BinaryTree7isEmptyEPyS0_, .-_ZN10BinaryTree7isEmptyEPyS0_
	.section	.rodata
.LC2:
	.string	"Can't insert "
	.align 8
.LC3:
	.string	" into queue, since queue is full!"
	.section	.text._ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_,"axG",@progbits,_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_,comdat
	.align 2
	.weak	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_
	.type	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_, @function
_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_:
.LFB1992:
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
	movq	%r9, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree6isFullEPyS0_S0_
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
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEPyS0_
	testb	%al, %al
	je	.L19
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
	jmp	.L16
.L19:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-48(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, (%rdx)
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1992:
	.size	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_, .-_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_
	.section	.rodata
	.align 8
.LC4:
	.string	"Can't delete from queue, since queue is empty!"
	.section	.text._ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_,"axG",@progbits,_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_,comdat
	.align 2
	.weak	_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_
	.type	_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_, @function
_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_:
.LFB1993:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEPyS0_
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
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L23
	movq	-48(%rbp), %rax
	movq	$-1, (%rax)
	movq	-48(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	jmp	.L24
.L23:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rsi
	movq	%rcx, %rax
	movl	$0, %edx
	divq	%rsi
	movq	%rdx, %rcx
	movq	%rcx, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
.L24:
	movq	-8(%rbp), %rax
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1993:
	.size	_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_, .-_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_
	.section	.rodata
	.align 8
.LC5:
	.string	"Enter the capacity of binary tree "
.LC6:
	.string	":"
.LC7:
	.string	"Binary tree is empty!"
	.align 8
.LC8:
	.string	"Enter the elements of binary tree "
.LC9:
	.string	"Enter element "
.LC10:
	.string	" of binary tree "
	.section	.text._ZN10BinaryTree16createBinaryTreeEt,"axG",@progbits,_ZN10BinaryTree16createBinaryTreeEt,comdat
	.align 2
	.weak	_ZN10BinaryTree16createBinaryTreeEt
	.type	_ZN10BinaryTree16createBinaryTreeEt, @function
_ZN10BinaryTree16createBinaryTreeEt:
.LFB1994:
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
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzwl	-76(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEt@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movzwl	-76(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERy@PLT
	movzwl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	jne	.L26
	leaq	.LC7(%rip), %rax
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
	movzwl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L28
	salq	$2, %rax
	leaq	_ZSt7nothrow(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZnamRKSt9nothrow_t@PLT
	movq	%rax, -40(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzwl	-76(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEt@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
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
	leaq	.LC9(%rip), %rax
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
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzwl	-76(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEt@PLT
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
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
	movzwl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	cmpq	%rax, -56(%rbp)
	jb	.L31
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %edx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rcx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree22implementCircularQueueEPPPNS_8TreeNodeEPy
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
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %r8
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rdi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_
	movq	$1, -48(%rbp)
	jmp	.L33
.L36:
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %rdi
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rsi
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rsi
	movq	-72(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN10BinaryTree7dequeueEPPPNS_8TreeNodeEPyS4_S4_
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
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %r8
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rdi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-16(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_
.L34:
	movzwl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
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
	movq	-72(%rbp), %rax
	movzwl	-76(%rbp), %edx
	salq	$3, %rdx
	leaq	(%rax,%rdx), %r8
	movq	-72(%rbp), %rax
	leaq	32(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rdi
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	leaq	72(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeEPPS1_PyS4_S4_
.L33:
	movzwl	-76(%rbp), %edx
	movq	-72(%rbp), %rax
	movslq	%edx, %rdx
	movq	(%rax,%rdx,8), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L36
	movq	-72(%rbp), %rax
	leaq	48(%rax), %rdx
	movzwl	-76(%rbp), %eax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rax, (%rdx)
	movl	$1, %eax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_ZN10BinaryTree16createBinaryTreeEt, .-_ZN10BinaryTree16createBinaryTreeEt
	.section	.rodata
.LC11:
	.string	" "
	.section	.text._ZN10BinaryTree8preorderEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8preorderEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, @function
_ZN10BinaryTree8preorderEPPNS_8TreeNodeE:
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
	leaq	.LC11(%rip), %rax
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
.LFE1995:
	.size	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, .-_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_,"axG",@progbits,_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_,comdat
	.align 2
	.weak	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_
	.type	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_, @function
_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_:
.LFB1996:
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
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L43
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L44
.L43:
	movl	$0, %eax
	jmp	.L42
.L44:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L45
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L45
	movl	$1, %eax
	jmp	.L47
.L45:
	movl	$0, %eax
.L47:
	nop
.L42:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1996:
	.size	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_, .-_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_
	.section	.text._ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_,"axG",@progbits,_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_,comdat
	.align 2
	.weak	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	.type	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_, @function
_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_:
.LFB1997:
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
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movl	$1, %eax
	jmp	.L50
.L49:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L51
	movl	$0, %eax
	jmp	.L50
.L51:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jne	.L52
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree11isIdenticalEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L53
	movl	$1, %eax
	jmp	.L50
.L53:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	testb	%al, %al
	jne	.L54
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L55
.L54:
	movl	$1, %eax
	jmp	.L50
.L55:
	movl	$0, %eax
	jmp	.L50
.L52:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	testb	%al, %al
	jne	.L57
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L58
.L57:
	movl	$1, %eax
	jmp	.L60
.L58:
	movl	$0, %eax
.L60:
	nop
.L50:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.size	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_, .-_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L63
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
	je	.L63
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L63:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1998:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2001:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 32(%rax)
	movq	-8(%rbp), %rax
	movq	$-1, 40(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2001:
	.size	_ZN10BinaryTreeC2Ev, .-_ZN10BinaryTreeC2Ev
	.weak	_ZN10BinaryTreeC1Ev
	.set	_ZN10BinaryTreeC1Ev,_ZN10BinaryTreeC2Ev
	.section	.rodata
	.align 8
.LC12:
	.string	"Successfully created both the binary trees!"
	.align 8
.LC13:
	.string	"The preorder traversal of binary tree 1 is:"
	.align 8
.LC14:
	.string	"The preorder traversal of binary tree 2 is:"
	.align 8
.LC15:
	.string	"Binary tree 2 is subtree of binary tree 1!"
	.align 8
.LC16:
	.string	"Binary tree 2 is not a subtree of binary tree 1!"
.LC17:
	.string	"Binary trees creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1999:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTreeC1Ev
	leaq	-96(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN10BinaryTree16createBinaryTreeEt
	testb	%al, %al
	je	.L66
	leaq	-96(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZN10BinaryTree16createBinaryTreeEt
	testb	%al, %al
	je	.L66
	movl	$1, %eax
	jmp	.L67
.L66:
	movl	$0, %eax
.L67:
	testb	%al, %al
	je	.L68
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	addq	$48, %rax
	addq	$8, %rax
	leaq	-96(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	addq	$48, %rax
	addq	$8, %rax
	leaq	-96(%rbp), %rdx
	leaq	48(%rdx), %rsi
	leaq	-96(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ZN10BinaryTree9isSubtreeEPPNS_8TreeNodeES2_
	testb	%al, %al
	je	.L69
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L70
.L69:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L70
.L68:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L70:
	leaq	-96(%rbp), %rax
	leaq	48(%rax), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	leaq	-96(%rbp), %rax
	addq	$48, %rax
	addq	$8, %rax
	leaq	-96(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L71
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L71:
	movq	-16(%rbp), %rax
	testq	%rax, %rax
	je	.L72
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L72:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1999:
	.size	main, .-main
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
