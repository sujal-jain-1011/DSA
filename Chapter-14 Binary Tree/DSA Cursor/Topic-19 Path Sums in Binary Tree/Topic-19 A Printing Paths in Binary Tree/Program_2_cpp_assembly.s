	.file	"Program_2.cpp"
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
.LFB2620:
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
.LFE2620:
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
.LFB2621:
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
.LFE2621:
	.size	_ZN10BinaryTree22implementCircularQueueEv, .-_ZN10BinaryTree22implementCircularQueueEv
	.section	.text._ZN10BinaryTree6isFullEv,"axG",@progbits,_ZN10BinaryTree6isFullEv,comdat
	.align 2
	.weak	_ZN10BinaryTree6isFullEv
	.type	_ZN10BinaryTree6isFullEv, @function
_ZN10BinaryTree6isFullEv:
.LFB2622:
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
.LFE2622:
	.size	_ZN10BinaryTree6isFullEv, .-_ZN10BinaryTree6isFullEv
	.section	.text._ZN10BinaryTree7isEmptyEv,"axG",@progbits,_ZN10BinaryTree7isEmptyEv,comdat
	.align 2
	.weak	_ZN10BinaryTree7isEmptyEv
	.type	_ZN10BinaryTree7isEmptyEv, @function
_ZN10BinaryTree7isEmptyEv:
.LFB2623:
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
.LFE2623:
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
.LFE2624:
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
.LFB2625:
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
.LFE2625:
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
.LFB2626:
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
.LFE2626:
	.size	_ZN10BinaryTree16createBinaryTreeEv, .-_ZN10BinaryTree16createBinaryTreeEv
	.section	.rodata
.LC10:
	.string	" "
	.section	.text._ZN10BinaryTree8preorderEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8preorderEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, @function
_ZN10BinaryTree8preorderEPPNS_8TreeNodeE:
.LFB2627:
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
	je	.L45
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
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2627:
	.size	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, .-_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev:
.LFB2631:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2631:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED1Ev
	.set	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED1Ev,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev:
.LFB2637:
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
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2637:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEEC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEEC2Ev:
.LFB2639:
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
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2639:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2Ev, .-_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEEC1Ev,_ZNSt12_Vector_baseIiSaIiEEC2Ev
	.section	.text._ZNSt6vectorIiSaIiEEC2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2Ev
	.type	_ZNSt6vectorIiSaIiEEC2Ev, @function
_ZNSt6vectorIiSaIiEEC2Ev:
.LFB2641:
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
	call	_ZNSt12_Vector_baseIiSaIiEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2641:
	.size	_ZNSt6vectorIiSaIiEEC2Ev, .-_ZNSt6vectorIiSaIiEEC2Ev
	.weak	_ZNSt6vectorIiSaIiEEC1Ev
	.set	_ZNSt6vectorIiSaIiEEC1Ev,_ZNSt6vectorIiSaIiEEC2Ev
	.section	.text._ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev,"axG",@progbits,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED5Ev,comdat
	.align 2
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev
	.type	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev, @function
_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev:
.LFB2653:
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
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2653:
	.size	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev, .-_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	.set	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED2Ev
	.section	.text._ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_,"axG",@progbits,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC5ERKS6_,comdat
	.align 2
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_
	.type	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_, @function
_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_:
.LFB2660:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2660:
	.size	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_, .-_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1ERKS6_
	.set	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1ERKS6_,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2ERKS6_
	.section	.rodata
.LC11:
	.string	"Path "
.LC12:
	.string	" of binary tree is: "
	.section	.text._ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE, @function
_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE:
.LFB2628:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2628
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$344, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -344(%rbp)
	movq	%rsi, -352(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -328(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC1ISA_vEEv
.LEHE0:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEEC1Ev
	movq	-352(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIiSaIiEE9push_backERKi
	leaq	-272(%rbp), %rdx
	movq	-352(%rbp), %rcx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1IRS2_RS5_Lb1EEEOT_OT0_
.LEHE1:
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_
.LEHE2:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	jmp	.L53
.L59:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv
	movq	%rax, %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1ERKS6_
.LEHE3:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv
	movq	-176(%rbp), %rax
	movq	%rax, -312(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, -296(%rbp)
	nop
	nop
	leaq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, %rbx
	leaq	-176(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, %rsi
	leaq	-144(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt6vectorIiSaIiEEC1IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
.LEHE4:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L54
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, -304(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rcx
	movq	-328(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, -328(%rbp)
	addq	$1, %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSolsEm@PLT
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	$0, -320(%rbp)
	jmp	.L55
.L56:
	movq	-320(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEEixEm
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
	addq	$1, -320(%rbp)
.L55:
	movq	-320(%rbp), %rax
	cmpq	-304(%rbp), %rax
	jb	.L56
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE5:
.L54:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L57
	leaq	-144(%rbp), %rax
	movq	%rax, -288(%rbp)
	nop
	nop
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, %rsi
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6vectorIiSaIiEEC1IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
.LEHE6:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorIiSaIiEE9push_backERKi
	movq	-312(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-208(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1IRS2_RS5_Lb1EEEOT_OT0_
.LEHE7:
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_
.LEHE8:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L57:
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L58
	leaq	-144(%rbp), %rax
	movq	%rax, -280(%rbp)
	nop
	nop
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, %rsi
	leaq	-144(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6vectorIiSaIiEEC1IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
.LEHE9:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	-312(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6vectorIiSaIiEE9push_backERKi
	movq	-312(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-208(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1IRS2_RS5_Lb1EEEOT_OT0_
.LEHE10:
	leaq	-144(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_
.LEHE11:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L58:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
.L53:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L59
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L72
	jmp	.L83
.L74:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	jmp	.L61
.L75:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	jmp	.L63
.L77:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	jmp	.L65
.L79:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	jmp	.L67
.L78:
	endbr64
	movq	%rax, %rbx
.L67:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	jmp	.L65
.L80:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	jmp	.L65
.L82:
	endbr64
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	jmp	.L70
.L81:
	endbr64
	movq	%rax, %rbx
.L70:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	jmp	.L65
.L76:
	endbr64
	movq	%rax, %rbx
.L65:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
.L63:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	jmp	.L61
.L73:
	endbr64
	movq	%rax, %rbx
.L61:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L71
	call	__stack_chk_fail@PLT
.L71:
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L83:
	call	__stack_chk_fail@PLT
.L72:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2628:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,"aG",@progbits,_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,comdat
.LLSDA2628:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2628-.LLSDACSB2628
.LLSDACSB2628:
	.uleb128 .LEHB0-.LFB2628
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2628
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L73-.LFB2628
	.uleb128 0
	.uleb128 .LEHB2-.LFB2628
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L74-.LFB2628
	.uleb128 0
	.uleb128 .LEHB3-.LFB2628
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L73-.LFB2628
	.uleb128 0
	.uleb128 .LEHB4-.LFB2628
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L75-.LFB2628
	.uleb128 0
	.uleb128 .LEHB5-.LFB2628
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L76-.LFB2628
	.uleb128 0
	.uleb128 .LEHB6-.LFB2628
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L77-.LFB2628
	.uleb128 0
	.uleb128 .LEHB7-.LFB2628
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L78-.LFB2628
	.uleb128 0
	.uleb128 .LEHB8-.LFB2628
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L79-.LFB2628
	.uleb128 0
	.uleb128 .LEHB9-.LFB2628
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L80-.LFB2628
	.uleb128 0
	.uleb128 .LEHB10-.LFB2628
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L81-.LFB2628
	.uleb128 0
	.uleb128 .LEHB11-.LFB2628
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L82-.LFB2628
	.uleb128 0
	.uleb128 .LEHB12-.LFB2628
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE2628:
	.section	.text._ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE,comdat
	.size	_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE, .-_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
.LFB2662:
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
	je	.L86
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
	je	.L86
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L86:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2662:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2665:
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
.LFE2665:
	.size	_ZN10BinaryTreeC2Ev, .-_ZN10BinaryTreeC2Ev
	.weak	_ZN10BinaryTreeC1Ev
	.set	_ZN10BinaryTreeC1Ev,_ZN10BinaryTreeC2Ev
	.section	.rodata
	.align 8
.LC13:
	.string	"Successfully created binary tree!"
	.align 8
.LC14:
	.string	"The preorder traversal of binary tree is:"
.LC15:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2663:
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
	je	.L89
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
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
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8allPathsEPPNS_8TreeNodeE
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L90
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
	jmp	.L90
.L89:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L90:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L92
	call	__stack_chk_fail@PLT
.L92:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2663:
	.size	main, .-main
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev:
.LFB2928:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2928:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC1Ev
	.set	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC1Ev,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC5ISA_vEEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv:
.LFB2930:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2930:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC1ISA_vEEv
	.set	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC1ISA_vEEv,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEEC2ISA_vEEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev:
.LFB2933:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2933
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv
	leaq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L96
	call	__stack_chk_fail@PLT
.L96:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2933:
	.section	.gcc_except_table._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev,"aG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED5Ev,comdat
.LLSDA2933:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2933-.LLSDACSB2933
.LLSDACSB2933:
.LLSDACSE2933:
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED5Ev,comdat
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED1Ev
	.set	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED1Ev,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev:
.LFB2936:
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
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2936:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEED2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEED2Ev, @function
_ZNSt12_Vector_baseIiSaIiEED2Ev:
.LFB2942:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2942
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2942:
	.section	.gcc_except_table._ZNSt12_Vector_baseIiSaIiEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
.LLSDA2942:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2942-.LLSDACSB2942
.LLSDACSB2942:
.LLSDACSE2942:
	.section	.text._ZNSt12_Vector_baseIiSaIiEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEED2Ev, .-_ZNSt12_Vector_baseIiSaIiEED2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEED1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEED1Ev,_ZNSt12_Vector_baseIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEED2Ev
	.type	_ZNSt6vectorIiSaIiEED2Ev, @function
_ZNSt6vectorIiSaIiEED2Ev:
.LFB2945:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2945
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPiEvT_S1_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2945:
	.section	.gcc_except_table._ZNSt6vectorIiSaIiEED2Ev,"aG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
.LLSDA2945:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2945-.LLSDACSB2945
.LLSDACSB2945:
.LLSDACSE2945:
	.section	.text._ZNSt6vectorIiSaIiEED2Ev,"axG",@progbits,_ZNSt6vectorIiSaIiEED5Ev,comdat
	.size	_ZNSt6vectorIiSaIiEED2Ev, .-_ZNSt6vectorIiSaIiEED2Ev
	.weak	_ZNSt6vectorIiSaIiEED1Ev
	.set	_ZNSt6vectorIiSaIiEED1Ev,_ZNSt6vectorIiSaIiEED2Ev
	.section	.text._ZNSt6vectorIiSaIiEE9push_backERKi,"axG",@progbits,_ZNSt6vectorIiSaIiEE9push_backERKi,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE9push_backERKi
	.type	_ZNSt6vectorIiSaIiEE9push_backERKi, @function
_ZNSt6vectorIiSaIiEE9push_backERKi:
.LFB2947:
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
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L101
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L103
.L101:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE3endEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
.L103:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2947:
	.size	_ZNSt6vectorIiSaIiEE9push_backERKi, .-_ZNSt6vectorIiSaIiEE9push_backERKi
	.section	.text._ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC5IRS2_RS5_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_:
.LFB2950:
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
	call	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt6vectorIiSaIiEEC1ERKS1_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2950:
	.size	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_, .-_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1IRS2_RS5_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1IRS2_RS5_Lb1EEEOT_OT0_,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2IRS2_RS5_Lb1EEEOT_OT0_
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_:
.LFB2952:
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
	call	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2952:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE4pushEOS7_
	.section	.text._ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv,"axG",@progbits,_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv
	.type	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv, @function
_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv:
.LFB2953:
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
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2953:
	.size	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv, .-_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5emptyEv
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv:
.LFB2954:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2954:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE5frontEv
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2ERKS1_
	.type	_ZNSt6vectorIiSaIiEEC2ERKS1_, @function
_ZNSt6vectorIiSaIiEEC2ERKS1_:
.LFB2956:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2956
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, -88(%rbp)
	leaq	-89(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	nop
	nop
	nop
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rcx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB13:
	call	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
.LEHE13:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE3endEv
	movq	%rax, %r12
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
.LEHE14:
	movq	-104(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L117
	jmp	.L120
.L118:
	endbr64
	movq	%rax, %rbx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L114
	call	__stack_chk_fail@PLT
.L114:
	movq	%rax, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.L119:
	endbr64
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L116
	call	__stack_chk_fail@PLT
.L116:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE15:
.L120:
	call	__stack_chk_fail@PLT
.L117:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2956:
	.section	.gcc_except_table._ZNSt6vectorIiSaIiEEC2ERKS1_,"aG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
.LLSDA2956:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2956-.LLSDACSB2956
.LLSDACSB2956:
	.uleb128 .LEHB13-.LFB2956
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L118-.LFB2956
	.uleb128 0
	.uleb128 .LEHB14-.LFB2956
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L119-.LFB2956
	.uleb128 0
	.uleb128 .LEHB15-.LFB2956
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE2956:
	.section	.text._ZNSt6vectorIiSaIiEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2ERKS1_, .-_ZNSt6vectorIiSaIiEEC2ERKS1_
	.weak	_ZNSt6vectorIiSaIiEEC1ERKS1_
	.set	_ZNSt6vectorIiSaIiEEC1ERKS1_,_ZNSt6vectorIiSaIiEEC2ERKS1_
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv:
.LFB2958:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2958:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESt5dequeIS7_SaIS7_EEE3popEv
	.section	.text._ZNSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE5beginEv
	.type	_ZNSt6vectorIiSaIiEE5beginEv, @function
_ZNSt6vectorIiSaIiEE5beginEv:
.LFB2959:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L124
	call	__stack_chk_fail@PLT
.L124:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2959:
	.size	_ZNSt6vectorIiSaIiEE5beginEv, .-_ZNSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNSt6vectorIiSaIiEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE3endEv
	.type	_ZNSt6vectorIiSaIiEE3endEv, @function
_ZNSt6vectorIiSaIiEE3endEv:
.LFB2960:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L127
	call	__stack_chk_fail@PLT
.L127:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2960:
	.size	_ZNSt6vectorIiSaIiEE3endEv, .-_ZNSt6vectorIiSaIiEE3endEv
	.section	.text._ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
	.type	_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_, @function
_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_:
.LFB2965:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2965
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
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	nop
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag
.LEHE16:
	jmp	.L134
.L133:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEED2Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L131
	call	__stack_chk_fail@PLT
.L131:
	movq	%rax, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L134:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2965:
	.section	.gcc_except_table._ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,"aG",@progbits,_ZNSt6vectorIiSaIiEEC5IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,comdat
.LLSDA2965:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2965-.LLSDACSB2965
.LLSDACSB2965:
	.uleb128 .LEHB16-.LFB2965
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L133-.LFB2965
	.uleb128 0
	.uleb128 .LEHB17-.LFB2965
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2965:
	.section	.text._ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,comdat
	.size	_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_, .-_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
	.weak	_ZNSt6vectorIiSaIiEEC1IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
	.set	_ZNSt6vectorIiSaIiEEC1IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_,_ZNSt6vectorIiSaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiS1_EEvEET_S7_RKS0_
	.section	.text._ZNKSt6vectorIiSaIiEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE4sizeEv
	.type	_ZNKSt6vectorIiSaIiEE4sizeEv, @function
_ZNKSt6vectorIiSaIiEE4sizeEv:
.LFB2967:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2967:
	.size	_ZNKSt6vectorIiSaIiEE4sizeEv, .-_ZNKSt6vectorIiSaIiEE4sizeEv
	.section	.text._ZNSt6vectorIiSaIiEEixEm,"axG",@progbits,_ZNSt6vectorIiSaIiEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEixEm
	.type	_ZNSt6vectorIiSaIiEEixEm, @function
_ZNSt6vectorIiSaIiEEixEm:
.LFB2969:
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
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2969:
	.size	_ZNSt6vectorIiSaIiEEixEm, .-_ZNSt6vectorIiSaIiEEixEm
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev:
.LFB3075:
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
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3075:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev:
.LFB3077:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3077
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC1Ev
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm
.LEHE18:
	jmp	.L143
.L142:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L143:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3077:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC5Ev,comdat
.LLSDA3077:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3077-.LLSDACSB3077
.LLSDACSB3077:
	.uleb128 .LEHB18-.LFB3077
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L142-.LFB3077
	.uleb128 0
	.uleb128 .LEHB19-.LFB3077
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE3077:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC5Ev,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EEC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev:
.LFB3080:
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
	je	.L145
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m
.L145:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3080:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EED2Ev
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv:
.LFB3082:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3082:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv:
.LFB3083:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3083:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv:
.LFB3084:
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
.LFE3084:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_:
.LFB3085:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_
	movq	-96(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L153
	call	__stack_chk_fail@PLT
.L153:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3085:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_destroy_dataESt15_Deque_iteratorIS7_RS7_PS7_ESD_RKS8_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev:
.LFB3087:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3087:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorIiED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIiED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIiED2Ev
	.type	_ZNSt15__new_allocatorIiED2Ev, @function
_ZNSt15__new_allocatorIiED2Ev:
.LFB3090:
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
.LFE3090:
	.size	_ZNSt15__new_allocatorIiED2Ev, .-_ZNSt15__new_allocatorIiED2Ev
	.weak	_ZNSt15__new_allocatorIiED1Ev
	.set	_ZNSt15__new_allocatorIiED1Ev,_ZNSt15__new_allocatorIiED2Ev
	.section	.text._ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.type	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, @function
_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim:
.LFB3092:
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
	cmpq	$0, -48(%rbp)
	je	.L158
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiE10deallocateEPim
	nop
.L158:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3092:
	.size	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, .-_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	.section	.text._ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3093:
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
.LFE3093:
	.size	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.rodata
.LC16:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB3096:
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
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-136(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE5beginEv
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-96(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-88(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-72(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$4, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	movl	(%rax), %eax
	movl	%eax, (%rbx)
	nop
	nop
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	%rax, -80(%rbp)
	addq	$4, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-112(%rbp), %rdx
	sarq	$2, %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim
	movq	-136(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L162
	call	__stack_chk_fail@PLT
.L162:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3096:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.text._ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3100:
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
.LFE3100:
	.size	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3101:
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
.LFE3101:
	.size	_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRSt6vectorIiSaIiEEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_,"axG",@progbits,_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_,comdat
	.weak	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_
	.type	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_, @function
_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_:
.LFB3102:
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
.LFE3102:
	.size	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_, .-_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_:
.LFB3103:
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
	call	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3103:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9push_backEOS7_
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv:
.LFB3104:
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
	call	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3104:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5emptyEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv:
.LFB3105:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5beginEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L174
	call	__stack_chk_fail@PLT
.L174:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3105:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE5frontEv
	.section	.text._ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv:
.LFB3106:
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
.LFE3106:
	.size	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_:
.LFB3109:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3109
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
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
.LEHE20:
	jmp	.L180
.L179:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L180:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3109:
	.section	.gcc_except_table._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"aG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
.LLSDA3109:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3109-.LLSDACSB3109
.LLSDACSB3109:
	.uleb128 .LEHB20-.LFB3109
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L179-.LFB3109
	.uleb128 0
	.uleb128 .LEHB21-.LFB3109
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE3109:
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EmRKS0_,_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_
	.section	.text._ZNKSt6vectorIiSaIiEE5beginEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE5beginEv
	.type	_ZNKSt6vectorIiSaIiEE5beginEv, @function
_ZNKSt6vectorIiSaIiEE5beginEv:
.LFB3111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L183
	call	__stack_chk_fail@PLT
.L183:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3111:
	.size	_ZNKSt6vectorIiSaIiEE5beginEv, .-_ZNKSt6vectorIiSaIiEE5beginEv
	.section	.text._ZNKSt6vectorIiSaIiEE3endEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE3endEv
	.type	_ZNKSt6vectorIiSaIiEE3endEv, @function
_ZNKSt6vectorIiSaIiEE3endEv:
.LFB3112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L186
	call	__stack_chk_fail@PLT
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3112:
	.size	_ZNKSt6vectorIiSaIiEE3endEv, .-_ZNKSt6vectorIiSaIiEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E:
.LFB3113:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3113:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv:
.LFB3114:
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
	subq	$32, %rax
	cmpq	%rax, %rdx
	je	.L190
	movq	-56(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	nop
	nop
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L192
.L190:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv
.L192:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3114:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE9pop_frontEv
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_:
.LFB3117:
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
.LFE3117:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, @function
_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_:
.LFB3123:
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
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3123:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEEC2ERKS0_
	.section	.text._ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag
	.type	_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag, @function
_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag:
.LFB3126:
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
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	nop
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	nop
	nop
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-72(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-88(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E
	movq	-72(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L199
	call	__stack_chk_fail@PLT
.L199:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3126:
	.size	_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag, .-_ZNSt6vectorIiSaIiEE19_M_range_initializeIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvT_S7_St20forward_iterator_tag
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev:
.LFB3196:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3196:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm:
.LFB3201:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3201
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
	movl	$32, %edi
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
.LEHB22:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm
.LEHE22:
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
.LEHB23:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_
.LEHE23:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rdx
	subq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rbx
	movl	$32, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L206
	jmp	.L209
.L207:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
.LEHB24:
	call	__cxa_rethrow@PLT
.LEHE24:
.L208:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L205
	call	__stack_chk_fail@PLT
.L205:
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L209:
	call	__stack_chk_fail@PLT
.L206:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3201:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,comdat
	.align 4
.LLSDA3201:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3201-.LLSDATTD3201
.LLSDATTD3201:
	.byte	0x1
	.uleb128 .LLSDACSE3201-.LLSDACSB3201
.LLSDACSB3201:
	.uleb128 .LEHB22-.LFB3201
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB3201
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L207-.LFB3201
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB3201
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L208-.LFB3201
	.uleb128 0
	.uleb128 .LEHB25-.LFB3201
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE3201:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3201:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_:
.LFB3202:
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
	jmp	.L211
.L212:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_
	addq	$8, -8(%rbp)
.L211:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L212
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3202:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m:
.LFB3203:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	nop
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3203:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC5ERKSA_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_:
.LFB3205:
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
.LFE3205:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_
	.set	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1ERKSA_,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2ERKSA_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_:
.LFB3207:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	addq	$8, %rax
	movq	%rax, -120(%rbp)
	jmp	.L217
.L218:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-120(%rbp), %rax
	movq	(%rax), %r12
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv
	salq	$5, %rax
	leaq	(%r12,%rax), %rdx
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rbx, -96(%rbp)
	movq	-104(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	nop
	addq	$8, -120(%rbp)
.L217:
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, -120(%rbp)
	jb	.L218
	movq	-144(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	cmpq	%rax, %rdx
	je	.L219
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	-144(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	-144(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	nop
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	jmp	.L220
.L219:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	-152(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-144(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	nop
.L220:
	nop
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3207:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_destroy_data_auxESt15_Deque_iteratorIS7_RS7_PS7_ESD_
	.section	.text._ZSt8_DestroyIPiEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPiEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPiEvT_S1_
	.type	_ZSt8_DestroyIPiEvT_S1_, @function
_ZSt8_DestroyIPiEvT_S1_:
.LFB3209:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3209:
	.size	_ZSt8_DestroyIPiEvT_S1_, .-_ZSt8_DestroyIPiEvT_S1_
	.section	.text._ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3210:
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
.LFE3210:
	.size	_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc:
.LFB3212:
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
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L225
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L226
	call	__stack_chk_fail@PLT
.L226:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L225:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L227
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L228
.L227:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	jmp	.L229
.L228:
	movq	-32(%rbp), %rax
.L229:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L231
	call	__stack_chk_fail@PLT
.L231:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3212:
	.size	_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB3213:
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
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3213:
	.size	_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm:
.LFB3214:
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
	cmpq	$0, -32(%rbp)
	je	.L235
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiE8allocateEmPKv
	nop
	jmp	.L237
.L235:
	movl	$0, %eax
.L237:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3214:
	.size	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, .-_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	.section	.text._ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, @function
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_:
.LFB3215:
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
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3215:
	.size	_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, .-_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv:
.LFB3216:
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
.LFE3216:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_:
.LFB3218:
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
	subq	$32, %rax
	cmpq	%rax, %rdx
	je	.L244
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1EOS6_
	nop
	nop
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	32(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L245
.L244:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_
.L245:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3218:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE12emplace_backIJS7_EEERS7_DpOT_
	.section	.text._ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	.type	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_, @function
_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_:
.LFB3219:
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
.LFE3219:
	.size	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_, .-_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	.section	.text._ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv
	.type	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv, @function
_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv:
.LFB3220:
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
.LFE3220:
	.size	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv, .-_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_:
.LFB3223:
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
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3223:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm:
.LFB3225:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3225:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_:
.LFB3227:
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
.LFE3227:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB3229:
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
	movb	$1, -2(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3229:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv:
.LFB3232:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	nop
	nop
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
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
.LFE3232:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_pop_front_auxEv
	.section	.rodata
	.align 8
.LC17:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_:
.LFB3234:
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
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	-49(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	nop
	nop
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	cmpq	-72(%rbp), %rax
	setb	%bl
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIiED2Ev
	nop
	testb	%bl, %bl
	je	.L258
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L259
	call	__stack_chk_fail@PLT
.L259:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L258:
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L261
	call	__stack_chk_fail@PLT
.L261:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3234:
	.size	_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E:
.LFB3235:
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
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3235:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev:
.LFB3292:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1Ev
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3292:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev:
.LFB3295:
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
.LFE3295:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED1Ev
	.set	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED1Ev,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3297:
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
	jnb	.L267
	movq	-16(%rbp), %rax
	jmp	.L268
.L267:
	movq	-8(%rbp), %rax
.L268:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3297:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm:
.LFB3298:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3298
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
.LEHE26:
	movq	%rax, %rbx
	nop
	nop
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L274
	jmp	.L276
.L275:
	endbr64
	movq	%rax, %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L273
	call	__stack_chk_fail@PLT
.L273:
	movq	%rax, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.LEHE27:
.L276:
	call	__stack_chk_fail@PLT
.L274:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3298:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,comdat
.LLSDA3298:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3298-.LLSDACSB3298
.LLSDACSB3298:
	.uleb128 .LEHB26-.LFB3298
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L275-.LFB3298
	.uleb128 0
	.uleb128 .LEHB27-.LFB3298
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE3298:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_:
.LFB3299:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3299
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
	jmp	.L278
.L279:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv
.LEHE28:
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$8, -24(%rbp)
.L278:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L279
	jmp	.L284
.L282:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_destroy_nodesEPPS7_SB_
.LEHB29:
	call	__cxa_rethrow@PLT
.LEHE29:
.L283:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L284:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3299:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,comdat
	.align 4
.LLSDA3299:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3299-.LLSDATTD3299
.LLSDATTD3299:
	.byte	0x1
	.uleb128 .LLSDACSE3299-.LLSDACSB3299
.LLSDACSB3299:
	.uleb128 .LEHB28-.LFB3299
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L282-.LFB3299
	.uleb128 0x1
	.uleb128 .LEHB29-.LFB3299
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L283-.LFB3299
	.uleb128 0
	.uleb128 .LEHB30-.LFB3299
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE3299:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3299:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_create_nodesEPPS7_SB_
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_:
.LFB3300:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv
	salq	$5, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3300:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_:
.LFB3301:
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
	movl	$32, %edi
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
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3301:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE18_M_deallocate_nodeEPS7_
	.section	.text._ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv:
.LFB3302:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
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
.LFE3302:
	.size	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE20_M_get_map_allocatorEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv:
.LFB3307:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$32, %edi
	call	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3307:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE14_S_buffer_sizeEv
	.section	.text._ZNSt15__new_allocatorIiE10deallocateEPim,"axG",@progbits,_ZNSt15__new_allocatorIiE10deallocateEPim,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIiE10deallocateEPim
	.type	_ZNSt15__new_allocatorIiE10deallocateEPim, @function
_ZNSt15__new_allocatorIiE10deallocateEPim:
.LFB3309:
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
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3309:
	.size	_ZNSt15__new_allocatorIiE10deallocateEPim, .-_ZNSt15__new_allocatorIiE10deallocateEPim
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_:
.LFB3310:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3310:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_
	.section	.text._ZNKSt6vectorIiSaIiEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIiSaIiEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.type	_ZNKSt6vectorIiSaIiEE8max_sizeEv, @function
_ZNKSt6vectorIiSaIiEE8max_sizeEv:
.LFB3311:
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
	call	_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3311:
	.size	_ZNKSt6vectorIiSaIiEE8max_sizeEv, .-_ZNKSt6vectorIiSaIiEE8max_sizeEv
	.section	.text._ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_:
.LFB3313:
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
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3313:
	.size	_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_
	.section	.text._ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.type	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE, @function
_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE:
.LFB3315:
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
.LFE3315:
	.size	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE, .-_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	.section	.rodata
	.align 8
.LC18:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_:
.LFB3317:
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
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L301
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L301:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEOT_RNSt16remove_referenceIS8_E4typeE
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1EOS6_
	nop
	nop
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
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
.LFE3317:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_push_back_auxIJS7_EEEvDpOT_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv:
.LFB3318:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE3endEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L304
	call	__stack_chk_fail@PLT
.L304:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3318:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4backEv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_:
.LFB3322:
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
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3322:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_
	.section	.text._ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_:
.LFB3324:
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
	movabsq	$2305843009213693951, %rax
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movabsq	$2305843009213693951, %rax
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
	je	.L312
	call	__stack_chk_fail@PLT
.L312:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3324:
	.size	_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_:
.LFB3325:
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
	movb	$1, -2(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3325:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev:
.LFB3351:
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
.LFE3351:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1Ev
	.set	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC1Ev,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv:
.LFB3354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$32, %edi
	call	_ZSt16__deque_buf_sizem
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3354:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE16_M_allocate_nodeEv
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv:
.LFB3355:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$32, %edi
	call	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3355:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv:
.LFB3357:
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
.LFE3357:
	.size	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev:
.LFB3362:
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
.LFE3362:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED1Ev
	.set	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED1Ev,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEED2Ev
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m:
.LFB3364:
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
.LFE3364:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS8_m
	.section	.text._ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_,"axG",@progbits,_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_,comdat
	.weak	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	.type	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_, @function
_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_:
.LFB3365:
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
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3365:
	.size	_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_, .-_ZSt8_DestroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvT_S9_
	.section	.text._ZNSt15__new_allocatorIiE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIiE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIiE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIiE8allocateEmPKv, @function
_ZNSt15__new_allocatorIiE8allocateEmPKv:
.LFB3366:
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
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L329
	movabsq	$4611686018427387903, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L330
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L330:
	call	_ZSt17__throw_bad_allocv@PLT
.L329:
	movq	-32(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3366:
	.size	_ZNSt15__new_allocatorIiE8allocateEmPKv, .-_ZNSt15__new_allocatorIiE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPiET_S1_,"axG",@progbits,_ZSt12__niter_baseIPiET_S1_,comdat
	.weak	_ZSt12__niter_baseIPiET_S1_
	.type	_ZSt12__niter_baseIPiET_S1_, @function
_ZSt12__niter_baseIPiET_S1_:
.LFB3367:
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
.LFE3367:
	.size	_ZSt12__niter_baseIPiET_S1_, .-_ZSt12__niter_baseIPiET_S1_
	.section	.text._ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB3368:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L335
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L335:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3368:
	.size	_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IiiENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIiSaIiEEC2EOS1_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.type	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, @function
_ZNSt12_Vector_baseIiSaIiEEC2EOS1_:
.LFB3373:
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
	call	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3373:
	.size	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, .-_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.weak	_ZNSt12_Vector_baseIiSaIiEEC1EOS1_
	.set	_ZNSt12_Vector_baseIiSaIiEEC1EOS1_,_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	.section	.text._ZNSt6vectorIiSaIiEEC2EOS1_,"axG",@progbits,_ZNSt6vectorIiSaIiEEC5EOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIiSaIiEEC2EOS1_
	.type	_ZNSt6vectorIiSaIiEEC2EOS1_, @function
_ZNSt6vectorIiSaIiEEC2EOS1_:
.LFB3375:
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
	call	_ZNSt12_Vector_baseIiSaIiEEC2EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3375:
	.size	_ZNSt6vectorIiSaIiEEC2EOS1_, .-_ZNSt6vectorIiSaIiEEC2EOS1_
	.weak	_ZNSt6vectorIiSaIiEEC1EOS1_
	.set	_ZNSt6vectorIiSaIiEEC1EOS1_,_ZNSt6vectorIiSaIiEEC2EOS1_
	.section	.text._ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_,"axG",@progbits,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC5EOS6_,comdat
	.align 2
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_
	.type	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_, @function
_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_:
.LFB3377:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEEC1EOS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3377:
	.size	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_, .-_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1EOS6_
	.set	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC1EOS6_,_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEC2EOS6_
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv:
.LFB3379:
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
	call	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3379:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE4sizeEv
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv:
.LFB3380:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3380:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE8max_sizeEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm:
.LFB3381:
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
	jnb	.L346
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb
.L346:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3381:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE22_M_reserve_map_at_backEm
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv:
.LFB3382:
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
	jne	.L348
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L348:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-32(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3382:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_EmmEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_:
.LFB3386:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3386:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3388:
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
	jnb	.L353
	movq	-16(%rbp), %rax
	jmp	.L354
.L353:
	movq	-8(%rbp), %rax
.L354:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3388:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_:
.LFB3389:
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
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3389:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES4_EET0_T_SA_S9_
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv:
.LFB3398:
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
	je	.L359
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L360
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L360:
	call	_ZSt17__throw_bad_allocv@PLT
.L359:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3398:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m:
.LFB3400:
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
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3400:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE10deallocateEPS7_m
	.section	.text._ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_,"axG",@progbits,_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_,comdat
	.weak	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_
	.type	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_, @function
_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_:
.LFB3404:
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
	jmp	.L365
.L366:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_
	movq	%rax, %rdi
	call	_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_
	addq	$32, -8(%rbp)
.L365:
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jne	.L366
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3404:
	.size	_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_, .-_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEEvT_SB_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC5EOS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, @function
_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_:
.LFB3407:
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
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	movq	-56(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	nop
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3407:
	.size	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, .-_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.weak	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_
	.set	_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1EOS2_,_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_
	.section	.text._ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	.type	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_, @function
_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_:
.LFB3409:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E14_S_buffer_sizeEv
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
	sarq	$5, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$5, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3409:
	.size	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_, .-_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_ESC_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_,comdat
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_:
.LFB3410:
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
	movabsq	$288230376151711743, %rax
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
	je	.L375
	call	__stack_chk_fail@PLT
.L375:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3410:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE11_S_max_sizeERKS8_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb:
.LFB3411:
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
	jnb	.L377
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rcx
	cmpb	$0, -84(%rbp)
	je	.L378
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L379
.L378:
	movl	$0, %eax
.L379:
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L380
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	jmp	.L381
.L380:
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
	call	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	jmp	.L381
.L377:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE15_M_allocate_mapEm
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdx
	cmpb	$0, -84(%rbp)
	je	.L382
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L383
.L382:
	movl	$0, %eax
.L383:
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
	call	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_deallocate_mapEPPS7_m
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L381:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEERS7_PS7_E11_M_set_nodeEPS9_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3411:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESaIS7_EE17_M_reallocate_mapEmb
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_:
.LFB3412:
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
.LFE3412:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_:
.LFB3413:
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
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3413:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_:
.LFB3416:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3416:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv:
.LFB3423:
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
	movabsq	$288230376151711743, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L392
	movabsq	$576460752303423487, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L393
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L393:
	call	_ZSt17__throw_bad_allocv@PLT
.L392:
	movq	-32(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3423:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEE8allocateEmPKv
	.section	.text._ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_,"axG",@progbits,_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_,comdat
	.weak	_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_
	.type	_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_, @function
_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_:
.LFB3424:
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
.LFE3424:
	.size	_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_, .-_ZSt11__addressofISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEPT_RS8_
	.section	.text._ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_,"axG",@progbits,_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_,comdat
	.weak	_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_
	.type	_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_, @function
_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_:
.LFB3425:
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
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3425:
	.size	_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_, .-_ZSt8_DestroyISt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEEvPT_
	.section	.text._ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB3426:
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
.LFE3426:
	.size	_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRNSt12_Vector_baseIiSaIiEE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_,"axG",@progbits,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC5EOS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.type	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, @function
_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_:
.LFB3428:
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
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3428:
	.size	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, .-_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.weak	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_
	.set	_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1EOS2_,_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_
	.section	.text._ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_,comdat
	.weak	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	.type	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_, @function
_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_:
.LFB3431:
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
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3431:
	.size	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_, .-_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	.section	.text._ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_,"axG",@progbits,_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_,comdat
	.weak	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	.type	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_, @function
_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_:
.LFB3432:
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
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3432:
	.size	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_, .-_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET0_T_SB_SA_
	.section	.text._ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB3433:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3433:
	.size	_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_:
.LFB3434:
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
	call	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3434:
	.size	_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPiET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPiET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPiET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPiET_RKS1_S1_, @function
_ZSt12__niter_wrapIPiET_RKS1_S1_:
.LFB3435:
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
.LFE3435:
	.size	_ZSt12__niter_wrapIPiET_RKS1_S1_, .-_ZSt12__niter_wrapIPiET_RKS1_S1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_:
.LFB3436:
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
.LFE3436:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_:
.LFB3437:
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
	call	_ZSt12__niter_baseIPiET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPiET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3437:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET1_T0_S8_S7_
	.section	.text._ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_,"axG",@progbits,_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_,comdat
	.weak	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	.type	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_, @function
_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_:
.LFB3440:
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
.LFE3440:
	.size	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_, .-_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	.section	.text._ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3441:
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
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3441:
	.size	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3443:
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
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3443:
	.size	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv:
.LFB3444:
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
.LFE3444:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_:
.LFB3445:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3445:
	.size	_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_
	.section	.text._ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.type	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, @function
_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
.LFB3446:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3446:
	.size	_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, .-_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_:
.LFB3447:
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
	call	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3447:
	.size	_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_,"axG",@progbits,_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_,comdat
	.weak	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	.type	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_, @function
_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_:
.LFB3448:
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
.LFE3448:
	.size	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_, .-_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_SA_
	.section	.text._ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3449:
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
	call	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3449:
	.size	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_,"axG",@progbits,_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_,comdat
	.weak	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_
	.type	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_, @function
_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_:
.LFB3450:
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
.LFE3450:
	.size	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_, .-_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEEET_RKSA_SA_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3451:
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
	call	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3451:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_:
.LFB3452:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L438
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L439
.L438:
	cmpq	$1, -8(%rbp)
	jne	.L439
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
.L439:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3452:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKiiEEPT0_PT_S7_S5_
	.section	.text._ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_:
.LFB3453:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3453:
	.size	_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3454:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3454:
	.size	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, @function
_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_:
.LFB3455:
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
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3455:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_, .-_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEES9_ET1_T0_SB_SA_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_:
.LFB3456:
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
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3456:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiKiEEvPT_PT0_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_:
.LFB3457:
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
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$1, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L449
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L450
.L449:
	cmpq	$1, -8(%rbp)
	jne	.L450
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
.L450:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3457:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiiEEPT0_PT_S6_S4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_:
.LFB3458:
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
	je	.L453
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L454
.L453:
	cmpq	$1, -8(%rbp)
	jne	.L454
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_
.L454:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3458:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_:
.LFB3459:
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
	je	.L457
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
	jmp	.L458
.L457:
	cmpq	$1, -8(%rbp)
	jne	.L458
	movq	-40(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_
.L458:
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
.LFE3459:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEPT0_PT_SF_SD_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_:
.LFB3460:
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
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3460:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_:
.LFB3461:
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
.LFE3461:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeESt6vectorIiSaIiEEESB_EEvPT_PT0_
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
