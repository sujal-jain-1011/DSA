	.file	"Program_1.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB40:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE40:
	.size	_ZnwmPv, .-_ZnwmPv
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.weak	_ZSt16__deque_buf_sizem
	.type	_ZSt16__deque_buf_sizem, @function
_ZSt16__deque_buf_sizem:
.LFB2045:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$511, -8(%rbp)
	ja	.L4
	movl	$512, %eax
	movl	$0, %edx
	divq	-8(%rbp)
	jmp	.L6
.L4:
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2045:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation failed for node of binary tree!"
	.section	.text._ZN10BinaryTree14createTreeNodeEi,"axG",@progbits,_ZN10BinaryTree14createTreeNodeEi,comdat
	.align 2
	.weak	_ZN10BinaryTree14createTreeNodeEi
	.type	_ZN10BinaryTree14createTreeNodeEi, @function
_ZN10BinaryTree14createTreeNodeEi:
.LFB2614:
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
	jne	.L8
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
	jmp	.L9
.L8:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2614:
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
.LFB2615:
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
	jb	.L11
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
	jne	.L13
	jmp	.L15
.L11:
	call	__cxa_throw_bad_array_new_length@PLT
.L15:
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
	jmp	.L14
.L13:
	movl	$1, %eax
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2615:
	.size	_ZN10BinaryTree22implementCircularQueueEv, .-_ZN10BinaryTree22implementCircularQueueEv
	.section	.text._ZN10BinaryTree6isFullEv,"axG",@progbits,_ZN10BinaryTree6isFullEv,comdat
	.align 2
	.weak	_ZN10BinaryTree6isFullEv
	.type	_ZN10BinaryTree6isFullEv, @function
_ZN10BinaryTree6isFullEv:
.LFB2616:
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
.LFE2616:
	.size	_ZN10BinaryTree6isFullEv, .-_ZN10BinaryTree6isFullEv
	.section	.text._ZN10BinaryTree7isEmptyEv,"axG",@progbits,_ZN10BinaryTree7isEmptyEv,comdat
	.align 2
	.weak	_ZN10BinaryTree7isEmptyEv
	.type	_ZN10BinaryTree7isEmptyEv, @function
_ZN10BinaryTree7isEmptyEv:
.LFB2617:
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
	jne	.L19
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$-1, %rax
	jne	.L19
	movl	$1, %eax
	jmp	.L20
.L19:
	movl	$0, %eax
.L20:
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2617:
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
.LFB2618:
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
	je	.L23
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
	jmp	.L22
.L23:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEv
	testb	%al, %al
	je	.L25
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
	jmp	.L22
.L25:
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
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2618:
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
.LFB2619:
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
	je	.L27
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
	jmp	.L28
.L27:
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
	jne	.L29
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L30
.L29:
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
.L30:
	movq	-8(%rbp), %rax
.L28:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2619:
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
.LFB2620:
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
	jne	.L32
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
	jmp	.L33
.L32:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L34
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
	jmp	.L36
.L34:
	call	__cxa_throw_bad_array_new_length@PLT
.L37:
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
.L36:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jb	.L37
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree22implementCircularQueueEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L38
	movl	$0, %eax
	jmp	.L33
.L38:
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
	jmp	.L39
.L42:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7dequeueEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L40
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
.L40:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L39
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L39
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
.L39:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L42
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2620:
	.size	_ZN10BinaryTree16createBinaryTreeEv, .-_ZN10BinaryTree16createBinaryTreeEv
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev:
.LFB2624:
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
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2624:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED1Ev
	.set	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED1Ev,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED2Ev
	.section	.rodata
.LC10:
	.string	" "
	.section	.text._ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE, @function
_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE:
.LFB2621:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2621
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	jne	.L45
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L44
.L45:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC1IS5_vEEv
.LEHE0:
	movq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_
	jmp	.L47
.L51:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv
	cmpq	$0, -120(%rbp)
	je	.L48
	movq	-120(%rbp), %rax
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
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_
.L49:
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movq	-120(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_
	jmp	.L47
.L48:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L47
	movq	$0, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_
.LEHE1:
.L47:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L51
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED1Ev
	jmp	.L44
.L55:
	endbr64
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L44:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L54
	call	__stack_chk_fail@PLT
.L54:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2621:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,"aG",@progbits,_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,comdat
.LLSDA2621:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2621-.LLSDACSB2621
.LLSDACSB2621:
	.uleb128 .LEHB0-.LFB2621
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2621
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L55-.LFB2621
	.uleb128 0
	.uleb128 .LEHB2-.LFB2621
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2621:
	.section	.text._ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE,comdat
	.size	_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE, .-_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
.LFB2626:
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
	je	.L58
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
	je	.L58
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L58:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2626:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2629:
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
.LFE2629:
	.size	_ZN10BinaryTreeC2Ev, .-_ZN10BinaryTreeC2Ev
	.weak	_ZN10BinaryTreeC1Ev
	.set	_ZN10BinaryTreeC1Ev,_ZN10BinaryTreeC2Ev
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created binary tree!"
	.align 8
.LC12:
	.string	"The level order traversal of binary tree is:"
.LC13:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2627:
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
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTreeC1Ev
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree16createBinaryTreeEv
	testb	%al, %al
	je	.L61
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
	call	_ZN10BinaryTree19levelOrderTraversalEPPNS_8TreeNodeE
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L62
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
	jmp	.L62
.L61:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L62:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2627:
	.size	main, .-main
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev:
.LFB2892:
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
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2892:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC1Ev
	.set	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC1Ev,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC5IS5_vEEv,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv:
.LFB2894:
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
	pxor	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movups	%xmm0, 48(%rax)
	movups	%xmm0, 64(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2894:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC1IS5_vEEv
	.set	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC1IS5_vEEv,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEEC2IS5_vEEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev:
.LFB2897:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2897
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv
	leaq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L68
	call	__stack_chk_fail@PLT
.L68:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2897:
	.section	.gcc_except_table._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev,"aG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED5Ev,comdat
.LLSDA2897:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2897-.LLSDACSB2897
.LLSDACSB2897:
.LLSDACSE2897:
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED5Ev,comdat
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED1Ev
	.set	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED1Ev,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_:
.LFB2899:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2899:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushERKS2_
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_:
.LFB2900:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2900:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE4pushEOS2_
	.section	.text._ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv,"axG",@progbits,_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv
	.type	_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv, @function
_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv:
.LFB2901:
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
	movq	%rax, %rdi
	call	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2901:
	.size	_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv, .-_ZNKSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5emptyEv
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv:
.LFB2902:
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
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2902:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE5frontEv
	.section	.text._ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv,"axG",@progbits,_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv,comdat
	.align 2
	.weak	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv
	.type	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv, @function
_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv:
.LFB2903:
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
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2903:
	.size	_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv, .-_ZNSt5queueIPN10BinaryTree8TreeNodeESt5dequeIS2_SaIS2_EEE3popEv
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev:
.LFB3009:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3009:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD1Ev,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev:
.LFB3011:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3011
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC1Ev
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm
.LEHE3:
	jmp	.L80
.L79:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3011:
	.section	.gcc_except_table._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev,"aG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC5Ev,comdat
.LLSDA3011:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3011-.LLSDACSB3011
.LLSDACSB3011:
	.uleb128 .LEHB3-.LFB3011
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L79-.LFB3011
	.uleb128 0
	.uleb128 .LEHB4-.LFB3011
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3011:
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC1Ev
	.set	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC1Ev,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EEC2Ev
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev:
.LFB3014:
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
	je	.L82
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m
.L82:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3014:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED1Ev
	.set	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED1Ev,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EED2Ev
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv:
.LFB3016:
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
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1ERKS5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3016:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv:
.LFB3017:
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
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1ERKS5_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3017:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB3018:
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
.LFE3018:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_:
.LFB3019:
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
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L90
	call	__stack_chk_fail@PLT
.L90:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3019:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE15_M_destroy_dataESt15_Deque_iteratorIS2_RS2_PS2_ES8_RKS3_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_:
.LFB3020:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	subq	$8, %rax
	cmpq	%rax, %rdx
	je	.L92
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L94
.L92:
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_
.L94:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3020:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backERKS2_
	.section	.text._ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB3022:
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
.LFE3022:
	.size	_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_:
.LFB3023:
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
	call	_ZSt4moveIRPN10BinaryTree8TreeNodeEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3023:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9push_backEOS2_
	.section	.text._ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv,"axG",@progbits,_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv
	.type	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv, @function
_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv:
.LFB3024:
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
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3024:
	.size	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv, .-_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5emptyEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv:
.LFB3025:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5beginEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L102
	call	__stack_chk_fail@PLT
.L102:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3025:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE5frontEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv:
.LFB3026:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	subq	$8, %rax
	cmpq	%rax, %rdx
	je	.L104
	movq	-56(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	nop
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L106
.L104:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv
.L106:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3026:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE9pop_frontEv
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev:
.LFB3095:
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
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3095:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC1Ev,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm:
.LFB3100:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3100
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	$8, -64(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm
.LEHE5:
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-48(%rbp), %rax
	shrq	%rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_
.LEHE6:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rdx
	subq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rbx
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	salq	$3, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L113
	jmp	.L116
.L114:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
.LEHB7:
	call	__cxa_rethrow@PLT
.LEHE7:
.L115:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L116:
	call	__stack_chk_fail@PLT
.L113:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3100:
	.section	.gcc_except_table._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,comdat
	.align 4
.LLSDA3100:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3100-.LLSDATTD3100
.LLSDATTD3100:
	.byte	0x1
	.uleb128 .LLSDACSE3100-.LLSDACSB3100
.LLSDACSB3100:
	.uleb128 .LEHB5-.LFB3100
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3100
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L114-.LFB3100
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB3100
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L115-.LFB3100
	.uleb128 0
	.uleb128 .LEHB8-.LFB3100
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3100:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3100:
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_:
.LFB3101:
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
	movq	%rax, -8(%rbp)
	jmp	.L118
.L119:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_
	addq	$8, -8(%rbp)
.L118:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L119
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3101:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m:
.LFB3102:
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
	leaq	-25(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3102:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m
	.section	.text._ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_,"axG",@progbits,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC5ERKS5_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_
	.type	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_, @function
_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_:
.LFB3104:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3104:
	.size	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_, .-_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1ERKS5_
	.set	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1ERKS5_,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2ERKS5_
	.section	.rodata
	.align 8
.LC14:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_:
.LFB3108:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L124
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L124:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3108:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_:
.LFB3109:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	64(%rax), %rax
	subq	$8, %rax
	cmpq	%rax, %rdx
	je	.L126
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L127
.L126:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_
.L127:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3109:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_
	.section	.text._ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	.type	_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_, @function
_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_:
.LFB3110:
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
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3110:
	.size	_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_, .-_ZSteqRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	.section	.text._ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv
	.type	_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv, @function
_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv:
.LFB3111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3111:
	.size	_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv, .-_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv:
.LFB3113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	nop
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3113:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_pop_front_auxEv
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev:
.LFB3170:
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
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1Ev
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3170:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev
	.type	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev, @function
_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev:
.LFB3173:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3173:
	.size	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev, .-_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev
	.weak	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED1Ev
	.set	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED1Ev,_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEED2Ev
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3175:
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
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L137
	movq	-16(%rbp), %rax
	jmp	.L138
.L137:
	movq	-8(%rbp), %rax
.L138:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3175:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm:
.LFB3176:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3176
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-33(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
.LEHE9:
	movq	%rax, %rbx
	nop
	nop
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L144
	jmp	.L146
.L145:
	endbr64
	movq	%rax, %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L143
	call	__stack_chk_fail@PLT
.L143:
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L146:
	call	__stack_chk_fail@PLT
.L144:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3176:
	.section	.gcc_except_table._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,"aG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,comdat
.LLSDA3176:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3176-.LLSDACSB3176
.LLSDACSB3176:
	.uleb128 .LEHB9-.LFB3176
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L145-.LFB3176
	.uleb128 0
	.uleb128 .LEHB10-.LFB3176
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3176:
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_:
.LFB3177:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3177
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L148
.L149:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv
.LEHE11:
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$8, -24(%rbp)
.L148:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L149
	jmp	.L154
.L152:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_destroy_nodesEPPS2_S6_
.LEHB12:
	call	__cxa_rethrow@PLT
.LEHE12:
.L153:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L154:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3177:
	.section	.gcc_except_table._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,"aG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,comdat
	.align 4
.LLSDA3177:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3177-.LLSDATTD3177
.LLSDATTD3177:
	.byte	0x1
	.uleb128 .LLSDACSE3177-.LLSDACSB3177
.LLSDACSB3177:
	.uleb128 .LEHB11-.LFB3177
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L152-.LFB3177
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3177
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L153-.LFB3177
	.uleb128 0
	.uleb128 .LEHB13-.LFB3177
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3177:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3177:
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_,comdat
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_create_nodesEPPS2_S6_
	.section	.text._ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_,"axG",@progbits,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	.type	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_, @function
_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_:
.LFB3178:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv
	salq	$3, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3178:
	.size	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_, .-_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_:
.LFB3179:
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
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	-40(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	-48(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3179:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE18_M_deallocate_nodeEPS2_
	.section	.text._ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv:
.LFB3180:
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
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	%rdx, -24(%rbp)
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	nop
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3180:
	.size	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE20_M_get_map_allocatorEv
	.section	.text._ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB3187:
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
.LFE3187:
	.size	_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardIRKPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.text._ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv,"axG",@progbits,_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv
	.type	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv, @function
_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv:
.LFB3189:
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
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3189:
	.size	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv, .-_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv
	.section	.text._ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv
	.type	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv, @function
_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv:
.LFB3190:
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
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3190:
	.size	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv, .-_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm:
.LFB3191:
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
	leaq	1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	sarq	$3, %rax
	movq	%rax, %rsi
	movq	%rcx, %rax
	subq	%rsi, %rax
	cmpq	%rdx, %rax
	jnb	.L167
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb
.L167:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3191:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv:
.LFB3192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3192:
	.size	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv
	.section	.text._ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3193:
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
.LFE3193:
	.size	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_:
.LFB3195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4sizeEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE8max_sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L174
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L174:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE22_M_reserve_map_at_backEm
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE16_M_allocate_nodeEv
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-72(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3195:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv:
.LFB3196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE3endEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L177
	call	__stack_chk_fail@PLT
.L177:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3196:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE4backEv
	.section	.text._ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev
	.type	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev, @function
_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev:
.LFB3222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3222:
	.size	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev, .-_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1Ev
	.set	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC1Ev,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EC2Ev
	.section	.text._ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv:
.LFB3225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3225:
	.size	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv:
.LFB3227:
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
.LFE3227:
	.size	_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev:
.LFB3232:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3232:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED1Ev
	.set	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED1Ev,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m:
.LFB3234:
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
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3234:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	.section	.text._ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	.type	_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_, @function
_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_:
.LFB3236:
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
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E14_S_buffer_sizeEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	subq	%rax, %rdx
	imulq	%rcx, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	sarq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3236:
	.size	_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_, .-_ZStmiRKSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_ES7_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_,comdat
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_:
.LFB3237:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$9223372036854775807, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$1152921504606846975, %rax
	nop
	nop
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L193
	call	__stack_chk_fail@PLT
.L193:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3237:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE11_S_max_sizeERKS3_
	.section	.text._ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb:
.LFB3238:
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
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movb	%al, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rdx
	cmpq	%rax, %rdx
	jnb	.L195
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rcx
	cmpb	$0, -84(%rbp)
	je	.L196
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L197
.L196:
	movl	$0, %eax
.L197:
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L198
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	jmp	.L199
.L198:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	jmp	.L199
.L195:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE15_M_allocate_mapEm
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdx
	cmpb	$0, -84(%rbp)
	je	.L200
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L201
.L200:
	movl	$0, %eax
.L201:
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIPN10BinaryTree8TreeNodeESaIS2_EE17_M_deallocate_mapEPPS2_m
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L199:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3238:
	.size	_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeIPN10BinaryTree8TreeNodeESaIS2_EE17_M_reallocate_mapEmb
	.section	.text._ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv
	.type	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv, @function
_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv:
.LFB3241:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L203
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_E11_M_set_nodeEPS4_
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L203:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3241:
	.size	_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv, .-_ZNSt15_Deque_iteratorIPN10BinaryTree8TreeNodeERS2_PS2_EmmEv
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv:
.LFB3250:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L207
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L208
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L208:
	call	_ZSt17__throw_bad_allocv@PLT
.L207:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3250:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.section	.text._ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m,"axG",@progbits,_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m
	.type	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m, @function
_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m:
.LFB3251:
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
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3251:
	.size	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m, .-_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE10deallocateEPS2_m
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3257:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L213
	movq	-16(%rbp), %rax
	jmp	.L214
.L213:
	movq	-8(%rbp), %rax
.L214:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3257:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_,"axG",@progbits,_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_,comdat
	.weak	_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	.type	_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_, @function
_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_:
.LFB3258:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3258:
	.size	_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_, .-_ZSt4copyIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	.section	.text._ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_,"axG",@progbits,_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_,comdat
	.weak	_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	.type	_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_, @function
_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_:
.LFB3259:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3259:
	.size	_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_, .-_ZSt13copy_backwardIPPPN10BinaryTree8TreeNodeES4_ET0_T_S6_S5_
	.section	.text._ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv:
.LFB3260:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L221
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L222
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L222:
	call	_ZSt17__throw_bad_allocv@PLT
.L221:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3260:
	.size	_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.section	.text._ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,"axG",@progbits,_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,comdat
	.weak	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.type	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, @function
_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_:
.LFB3268:
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
.LFE3268:
	.size	_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, .-_ZSt12__miter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.section	.text._ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3269:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3269:
	.size	_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt13__copy_move_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3271:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3271:
	.size	_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt22__copy_move_backward_aILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,"axG",@progbits,_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,comdat
	.weak	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.type	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, @function
_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_:
.LFB3273:
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
.LFE3273:
	.size	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, .-_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.section	.text._ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3274:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3274:
	.size	_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt14__copy_move_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_,"axG",@progbits,_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_,comdat
	.weak	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	.type	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_, @function
_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_:
.LFB3275:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3275:
	.size	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_, .-_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3276:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3276:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt23__copy_move_backward_a1ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3277:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3277:
	.size	_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt14__copy_move_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, @function
_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_:
.LFB3278:
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
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3278:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_, .-_ZSt23__copy_move_backward_a2ILb0EPPPN10BinaryTree8TreeNodeES4_ET1_T0_S6_S5_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_:
.LFB3279:
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
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L243
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L244
.L243:
	cmpq	$1, -8(%rbp)
	jne	.L244
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_
.L244:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3279:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_:
.LFB3280:
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
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L247
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
	jmp	.L248
.L247:
	cmpq	$1, -8(%rbp)
	jne	.L248
	movq	-40(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_
.L248:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3280:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SA_S8_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_:
.LFB3281:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3281:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeES6_EEvPT_PT0_
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
