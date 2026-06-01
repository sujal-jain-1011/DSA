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
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2631:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED1Ev
	.set	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED1Ev,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED2Ev
	.section	.text._ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,"axG",@progbits,_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,comdat
	.align 2
	.weak	_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi
	.type	_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi, @function
_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi:
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
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movq	%rsi, -176(%rbp)
	movl	%edx, -180(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC1IS7_vEEv
.LEHE0:
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-176(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC1IRS2_RiLb1EEEOT_OT0_
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_
	jmp	.L48
.L54:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	%rdx, -136(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv
	movq	-144(%rbp), %rax
	movq	%rax, -152(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -156(%rbp)
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L49
	movl	-156(%rbp), %eax
	cmpl	-180(%rbp), %eax
	jne	.L49
	movl	$1, %ebx
	jmp	.L53
.L49:
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L51
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -160(%rbp)
	movq	-152(%rbp), %rax
	leaq	8(%rax), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC1IRS2_RiLb1EEEOT_OT0_
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_
.L51:
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-152(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	movl	-156(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -160(%rbp)
	movq	-152(%rbp), %rax
	leaq	16(%rax), %rcx
	leaq	-160(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC1IRS2_RiLb1EEEOT_OT0_
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_
.LEHE1:
.L48:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	jne	.L54
	movl	$0, %ebx
.L53:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L58
	jmp	.L60
.L59:
	endbr64
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L57
	call	__stack_chk_fail@PLT
.L57:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L60:
	call	__stack_chk_fail@PLT
.L58:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2628:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,"aG",@progbits,_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,comdat
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
	.uleb128 .L59-.LFB2628
	.uleb128 0
	.uleb128 .LEHB2-.LFB2628
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2628:
	.section	.text._ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,"axG",@progbits,_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi,comdat
	.size	_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi, .-_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
.LFB2643:
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
.LFE2643:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2646:
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
.LFE2646:
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
.LC13:
	.string	"Enter the target sum:"
	.align 8
.LC14:
	.string	"Path exists in the binary tree with given sum!"
	.align 8
.LC15:
	.string	"Path does not exist in the binary tree with given sum!"
.LC16:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2644:
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
	je	.L66
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
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-68(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERi@PLT
	movl	-68(%rbp), %edx
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree11isPathExistEPPNS_8TreeNodeEi
	testb	%al, %al
	je	.L67
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L68
.L67:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L68:
	leaq	-64(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	movq	-24(%rbp), %rax
	testq	%rax, %rax
	je	.L70
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
	jmp	.L70
.L66:
	leaq	.LC16(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L70:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L72
	call	__stack_chk_fail@PLT
.L72:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2644:
	.size	main, .-main
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev:
.LFB2909:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2909:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC1Ev
	.set	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC1Ev,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC5IS7_vEEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv:
.LFB2911:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2911:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC1IS7_vEEv
	.set	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC1IS7_vEEv,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEEC2IS7_vEEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev:
.LFB2914:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2914
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv
	leaq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L76
	call	__stack_chk_fail@PLT
.L76:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2914:
	.section	.gcc_except_table._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev,"aG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED5Ev,comdat
.LLSDA2914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2914-.LLSDACSB2914
.LLSDACSB2914:
.LLSDACSE2914:
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED5Ev,comdat
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED1Ev
	.set	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED1Ev,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.section	.text._ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC5IRS2_RiLb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_
	.type	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_, @function
_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_:
.LFB2917:
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
	call	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2917:
	.size	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_, .-_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_
	.weak	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC1IRS2_RiLb1EEEOT_OT0_
	.set	_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC1IRS2_RiLb1EEEOT_OT0_,_ZNSt4pairIPN10BinaryTree8TreeNodeEiEC2IRS2_RiLb1EEEOT_OT0_
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_:
.LFB2919:
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
	call	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2919:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE4pushEOS4_
	.section	.text._ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv,"axG",@progbits,_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv
	.type	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv, @function
_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv:
.LFB2920:
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
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2920:
	.size	_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv, .-_ZNKSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5emptyEv
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv:
.LFB2921:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2921:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE5frontEv
	.section	.text._ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv,"axG",@progbits,_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv,comdat
	.align 2
	.weak	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv
	.type	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv, @function
_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv:
.LFB2922:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2922:
	.size	_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv, .-_ZNSt5queueISt4pairIPN10BinaryTree8TreeNodeEiESt5dequeIS4_SaIS4_EEE3popEv
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev:
.LFB3028:
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
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3028:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev:
.LFB3030:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3030
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC1Ev
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm
.LEHE3:
	jmp	.L88
.L87:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L88:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3030:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC5Ev,comdat
.LLSDA3030:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3030-.LLSDACSB3030
.LLSDACSB3030:
	.uleb128 .LEHB3-.LFB3030
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L87-.LFB3030
	.uleb128 0
	.uleb128 .LEHB4-.LFB3030
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE3030:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC5Ev,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EEC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev:
.LFB3033:
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
	je	.L90
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m
.L90:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3033:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EED2Ev
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv:
.LFB3035:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1ERKS7_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3035:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv:
.LFB3036:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1ERKS7_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3036:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv:
.LFB3037:
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
.LFE3037:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_:
.LFB3038:
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
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3038:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_destroy_dataESt15_Deque_iteratorIS4_RS4_PS4_ESA_RKS5_
	.section	.text._ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3039:
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
.LFE3039:
	.size	_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, @function
_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE:
.LFB3040:
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
.LFE3040:
	.size	_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRiEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB3041:
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
.LFE3041:
	.size	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_:
.LFB3042:
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
	call	_ZSt4moveIRSt4pairIPN10BinaryTree8TreeNodeEiEEONSt16remove_referenceIT_E4typeEOS7_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3042:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9push_backEOS4_
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv:
.LFB3043:
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
	call	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3043:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5emptyEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv:
.LFB3044:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5beginEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3044:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE5frontEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv:
.LFB3045:
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
	subq	$16, %rax
	cmpq	%rax, %rdx
	je	.L112
	movq	-56(%rbp), %rax
	movq	16(%rax), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
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
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L114
.L112:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv
.L114:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3045:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE9pop_frontEv
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev:
.LFB3115:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3115:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm:
.LFB3120:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3120
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
	movl	$16, %edi
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_
.LEHE6:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rdx
	subq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rbx
	movl	$16, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rcx
	movq	%rcx, %rax
	salq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L121
	jmp	.L124
.L122:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L118
	call	__stack_chk_fail@PLT
.L118:
.LEHB7:
	call	__cxa_rethrow@PLT
.LEHE7:
.L123:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L120
	call	__stack_chk_fail@PLT
.L120:
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L124:
	call	__stack_chk_fail@PLT
.L121:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3120:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,comdat
	.align 4
.LLSDA3120:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3120-.LLSDATTD3120
.LLSDATTD3120:
	.byte	0x1
	.uleb128 .LLSDACSE3120-.LLSDACSB3120
.LLSDACSB3120:
	.uleb128 .LEHB5-.LFB3120
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB3120
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L122-.LFB3120
	.uleb128 0x1
	.uleb128 .LEHB7-.LFB3120
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L123-.LFB3120
	.uleb128 0
	.uleb128 .LEHB8-.LFB3120
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3120:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3120:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_:
.LFB3121:
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
	jmp	.L126
.L127:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_
	addq	$8, -8(%rbp)
.L126:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.L127
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3121:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m:
.LFB3122:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	leaq	-25(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m
	nop
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	nop
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L129
	call	__stack_chk_fail@PLT
.L129:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3122:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC5ERKS7_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_:
.LFB3124:
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
.LFE3124:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1ERKS7_
	.set	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1ERKS7_,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2ERKS7_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_:
.LFB3127:
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
	subq	$16, %rax
	cmpq	%rax, %rdx
	je	.L132
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L133
.L132:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_
.L133:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3127:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE12emplace_backIJS4_EEERS4_DpOT_
	.section	.text._ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_,"axG",@progbits,_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_,comdat
	.weak	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	.type	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_, @function
_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_:
.LFB3128:
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
.LFE3128:
	.size	_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_, .-_ZSteqRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	.section	.text._ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv
	.type	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv, @function
_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv:
.LFB3129:
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
.LFE3129:
	.size	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv, .-_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv:
.LFB3131:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_
	movq	-56(%rbp), %rax
	addq	$16, %rax
	movq	-56(%rbp), %rdx
	movq	40(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
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
.LFE3131:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_pop_front_auxEv
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev:
.LFB3188:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1Ev
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3188:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC1Ev
	.set	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC1Ev,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_Deque_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev:
.LFB3191:
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
.LFE3191:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED1Ev
	.set	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED1Ev,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3193:
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
	jnb	.L143
	movq	-16(%rbp), %rax
	jmp	.L144
.L143:
	movq	-8(%rbp), %rax
.L144:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3193:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm:
.LFB3194:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3194
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rcx
	leaq	-33(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
.LEHE9:
	movq	%rax, %rbx
	nop
	nop
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L150
	jmp	.L152
.L151:
	endbr64
	movq	%rax, %rbx
	leaq	-33(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	nop
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L152:
	call	__stack_chk_fail@PLT
.L150:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3194:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,comdat
.LLSDA3194:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3194-.LLSDACSB3194
.LLSDACSB3194:
	.uleb128 .LEHB9-.LFB3194
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L151-.LFB3194
	.uleb128 0
	.uleb128 .LEHB10-.LFB3194
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3194:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_:
.LFB3195:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3195
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
	jmp	.L154
.L155:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv
.LEHE11:
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	addq	$8, -24(%rbp)
.L154:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jb	.L155
	jmp	.L160
.L158:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_destroy_nodesEPPS4_S8_
.LEHB12:
	call	__cxa_rethrow@PLT
.LEHE12:
.L159:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L160:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3195:
	.section	.gcc_except_table._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,"aG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,comdat
	.align 4
.LLSDA3195:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3195-.LLSDATTD3195
.LLSDATTD3195:
	.byte	0x1
	.uleb128 .LLSDACSE3195-.LLSDACSB3195
.LLSDACSB3195:
	.uleb128 .LEHB11-.LFB3195
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L158-.LFB3195
	.uleb128 0x1
	.uleb128 .LEHB12-.LFB3195
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L159-.LFB3195
	.uleb128 0
	.uleb128 .LEHB13-.LFB3195
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE3195:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT3195:
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_,comdat
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_create_nodesEPPS4_S8_
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_:
.LFB3196:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv
	salq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3196:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_:
.LFB3197:
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
	movl	$16, %edi
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
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3197:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE18_M_deallocate_nodeEPS4_
	.section	.text._ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv:
.LFB3198:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
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
.LFE3198:
	.size	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE20_M_get_map_allocatorEv
	.section	.text._ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE,"axG",@progbits,_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE,comdat
	.weak	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	.type	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE, @function
_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE:
.LFB3205:
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
.LFE3205:
	.size	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE, .-_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	.section	.rodata
	.align 8
.LC17:
	.string	"cannot create std::deque larger than max_size()"
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_:
.LFB3207:
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
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L168
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L168:
	movq	-72(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv
	movq	%rax, (%rbx)
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-72(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	%rcx, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-56(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$16, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt4pairIPN10BinaryTree8TreeNodeEiEEOT_RNSt16remove_referenceIS5_E4typeE
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-72(%rbp), %rdx
	movq	72(%rdx), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
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
.LFE3207:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv:
.LFB3208:
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
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE3endEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EdeEv
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L171
	call	__stack_chk_fail@PLT
.L171:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3208:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4backEv
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev:
.LFB3234:
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
.LFE3234:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1Ev
	.set	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC1Ev,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EC2Ev
	.section	.text._ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv:
.LFB3237:
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
	call	_ZSt16__deque_buf_sizem
	movq	-24(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3237:
	.size	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE16_M_allocate_nodeEv
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv:
.LFB3238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$16, %edi
	call	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3238:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv
	.section	.text._ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv:
.LFB3240:
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
.LFE3240:
	.size	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev:
.LFB3245:
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
.LFE3245:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED1Ev
	.set	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED1Ev,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEED2Ev
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m:
.LFB3247:
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
.LFE3247:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS5_m
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv:
.LFB3250:
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
	call	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3250:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE4sizeEv
	.section	.text._ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv,"axG",@progbits,_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv
	.type	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv, @function
_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv:
.LFB3251:
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
	call	_ZNKSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3251:
	.size	_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv, .-_ZNKSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE8max_sizeEv
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm:
.LFB3252:
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
	jnb	.L189
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb
.L189:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3252:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE22_M_reserve_map_at_backEm
	.section	.text._ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv
	.type	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv, @function
_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv:
.LFB3253:
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
	jne	.L191
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L191:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3253:
	.size	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv, .-_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_EmmEv
	.section	.text._ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv:
.LFB3262:
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
	je	.L195
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L196
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L196:
	call	_ZSt17__throw_bad_allocv@PLT
.L195:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3262:
	.size	_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPSt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m:
.LFB3264:
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
	salq	$4, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3264:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE10deallocateEPS4_m
	.section	.text._ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_,"axG",@progbits,_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_,comdat
	.weak	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	.type	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_, @function
_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_:
.LFB3269:
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
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E14_S_buffer_sizeEv
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
	sarq	$4, %rax
	leaq	(%rdx,%rax), %rcx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$4, %rax
	addq	%rcx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3269:
	.size	_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_, .-_ZStmiRKSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_ES9_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_,comdat
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_:
.LFB3270:
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
	movabsq	$576460752303423487, %rax
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
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3270:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE11_S_max_sizeERKS5_
	.section	.text._ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb, @function
_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb:
.LFB3271:
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
	jnb	.L209
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rcx
	cmpb	$0, -84(%rbp)
	je	.L210
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L211
.L210:
	movl	$0, %eax
.L211:
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L212
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	jmp	.L213
.L212:
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
	call	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	jmp	.L213
.L209:
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
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE15_M_allocate_mapEm
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdx
	cmpb	$0, -84(%rbp)
	je	.L214
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L215
.L214:
	movl	$0, %eax
.L215:
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
	call	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_deallocate_mapEPPS4_m
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L213:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorISt4pairIPN10BinaryTree8TreeNodeEiERS4_PS4_E11_M_set_nodeEPS6_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3271:
	.size	_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb, .-_ZNSt5dequeISt4pairIPN10BinaryTree8TreeNodeEiESaIS4_EE17_M_reallocate_mapEmb
	.section	.text._ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv, @function
_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv:
.LFB3278:
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
	movabsq	$576460752303423487, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L218
	movabsq	$1152921504606846975, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L219
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L219:
	call	_ZSt17__throw_bad_allocv@PLT
.L218:
	movq	-32(%rbp), %rax
	salq	$4, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3278:
	.size	_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv, .-_ZNSt15__new_allocatorISt4pairIPN10BinaryTree8TreeNodeEiEE8allocateEmPKv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3280:
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
	jnb	.L222
	movq	-16(%rbp), %rax
	jmp	.L223
.L222:
	movq	-8(%rbp), %rax
.L223:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3280:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_,"axG",@progbits,_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_,comdat
	.weak	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	.type	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_, @function
_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_:
.LFB3281:
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
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3281:
	.size	_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_, .-_ZSt4copyIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	.section	.text._ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_,"axG",@progbits,_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_,comdat
	.weak	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	.type	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_, @function
_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_:
.LFB3282:
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
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3282:
	.size	_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_, .-_ZSt13copy_backwardIPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET0_T_S8_S7_
	.section	.text._ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_,"axG",@progbits,_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_,comdat
	.weak	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	.type	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_, @function
_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_:
.LFB3285:
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
.LFE3285:
	.size	_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_, .-_ZSt12__miter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	.section	.text._ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3286:
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
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3286:
	.size	_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt13__copy_move_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3288:
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
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3288:
	.size	_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt22__copy_move_backward_aILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_,"axG",@progbits,_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_,comdat
	.weak	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	.type	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_, @function
_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_:
.LFB3289:
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
.LFE3289:
	.size	_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_, .-_ZSt12__niter_baseIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_S7_
	.section	.text._ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3290:
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
	call	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3290:
	.size	_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_,"axG",@progbits,_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_,comdat
	.weak	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_
	.type	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_, @function
_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_:
.LFB3291:
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
.LFE3291:
	.size	_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_, .-_ZSt12__niter_wrapIPPSt4pairIPN10BinaryTree8TreeNodeEiEET_RKS7_S7_
	.section	.text._ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3292:
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
	call	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3292:
	.size	_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt23__copy_move_backward_a1ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3293:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3293:
	.size	_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, @function
_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_:
.LFB3294:
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
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3294:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_, .-_ZSt23__copy_move_backward_a2ILb0EPPSt4pairIPN10BinaryTree8TreeNodeEiES6_ET1_T0_S8_S7_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_:
.LFB3295:
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
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L248
.L247:
	cmpq	$1, -8(%rbp)
	jne	.L248
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_
.L248:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3295:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_:
.LFB3296:
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
	je	.L251
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
	jmp	.L252
.L251:
	cmpq	$1, -8(%rbp)
	jne	.L252
	movq	-40(%rbp), %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_
.L252:
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
.LFE3296:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEPT0_PT_SC_SA_
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3297:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPSt4pairIPN10BinaryTree8TreeNodeEiES8_EEvPT_PT0_
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
