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
	.section	.text._ZdlPvS_,"axG",@progbits,_ZdlPvS_,comdat
	.weak	_ZdlPvS_
	.type	_ZdlPvS_, @function
_ZdlPvS_:
.LFB42:
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
.LFE42:
	.size	_ZdlPvS_, .-_ZdlPvS_
	.weak	_ZSt19piecewise_construct
	.section	.rodata._ZSt19piecewise_construct,"aG",@progbits,_ZSt19piecewise_construct,comdat
	.type	_ZSt19piecewise_construct, @gnu_unique_object
	.size	_ZSt19piecewise_construct, 1
_ZSt19piecewise_construct:
	.zero	1
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt15_Rb_tree_headerC2Ev,"axG",@progbits,_ZNSt15_Rb_tree_headerC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_headerC2Ev
	.type	_ZNSt15_Rb_tree_headerC2Ev, @function
_ZNSt15_Rb_tree_headerC2Ev:
.LFB2037:
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
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Rb_tree_header8_M_resetEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2037:
	.size	_ZNSt15_Rb_tree_headerC2Ev, .-_ZNSt15_Rb_tree_headerC2Ev
	.weak	_ZNSt15_Rb_tree_headerC1Ev
	.set	_ZNSt15_Rb_tree_headerC1Ev,_ZNSt15_Rb_tree_headerC2Ev
	.section	.text._ZNSt15_Rb_tree_header8_M_resetEv,"axG",@progbits,_ZNSt15_Rb_tree_header8_M_resetEv,comdat
	.align 2
	.weak	_ZNSt15_Rb_tree_header8_M_resetEv
	.type	_ZNSt15_Rb_tree_header8_M_resetEv, @function
_ZNSt15_Rb_tree_header8_M_resetEv:
.LFB2043:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2043:
	.size	_ZNSt15_Rb_tree_header8_M_resetEv, .-_ZNSt15_Rb_tree_header8_M_resetEv
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation failed for node of binary tree!"
	.section	.text._ZN10BinaryTree14createTreeNodeEi,"axG",@progbits,_ZN10BinaryTree14createTreeNodeEi,comdat
	.align 2
	.weak	_ZN10BinaryTree14createTreeNodeEi
	.type	_ZN10BinaryTree14createTreeNodeEi, @function
_ZN10BinaryTree14createTreeNodeEi:
.LFB2755:
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
	jne	.L7
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
	jmp	.L8
.L7:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2755:
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
.LFB2756:
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
	jb	.L10
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
	jne	.L12
	jmp	.L14
.L10:
	call	__cxa_throw_bad_array_new_length@PLT
.L14:
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
	jmp	.L13
.L12:
	movl	$1, %eax
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2756:
	.size	_ZN10BinaryTree22implementCircularQueueEv, .-_ZN10BinaryTree22implementCircularQueueEv
	.section	.text._ZN10BinaryTree6isFullEv,"axG",@progbits,_ZN10BinaryTree6isFullEv,comdat
	.align 2
	.weak	_ZN10BinaryTree6isFullEv
	.type	_ZN10BinaryTree6isFullEv, @function
_ZN10BinaryTree6isFullEv:
.LFB2757:
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
.LFE2757:
	.size	_ZN10BinaryTree6isFullEv, .-_ZN10BinaryTree6isFullEv
	.section	.text._ZN10BinaryTree7isEmptyEv,"axG",@progbits,_ZN10BinaryTree7isEmptyEv,comdat
	.align 2
	.weak	_ZN10BinaryTree7isEmptyEv
	.type	_ZN10BinaryTree7isEmptyEv, @function
_ZN10BinaryTree7isEmptyEv:
.LFB2758:
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
	jne	.L18
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$-1, %rax
	jne	.L18
	movl	$1, %eax
	jmp	.L19
.L18:
	movl	$0, %eax
.L19:
	testl	%eax, %eax
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2758:
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
.LFB2759:
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
	je	.L22
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
	jmp	.L21
.L22:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7isEmptyEv
	testb	%al, %al
	je	.L24
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
	jmp	.L21
.L24:
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
.L21:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2759:
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
.LFB2760:
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
	je	.L26
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
	jmp	.L27
.L26:
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
	jne	.L28
	movq	-24(%rbp), %rax
	movq	$-1, 16(%rax)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L29
.L28:
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
.L29:
	movq	-8(%rbp), %rax
.L27:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2760:
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
.LFB2761:
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
	jne	.L31
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
	jmp	.L32
.L31:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movabsq	$2305843009213693950, %rdx
	cmpq	%rax, %rdx
	jb	.L33
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
	jmp	.L35
.L33:
	call	__cxa_throw_bad_array_new_length@PLT
.L36:
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
.L35:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jb	.L36
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree22implementCircularQueueEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L37
	movl	$0, %eax
	jmp	.L32
.L37:
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
	jmp	.L38
.L41:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree7dequeueEv
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
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
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree7enqueueEPNS_8TreeNodeE
.L39:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jnb	.L38
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L38
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
.L38:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, -48(%rbp)
	jb	.L41
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movl	$1, %eax
.L32:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2761:
	.size	_ZN10BinaryTree16createBinaryTreeEv, .-_ZN10BinaryTree16createBinaryTreeEv
	.section	.rodata
.LC10:
	.string	" "
	.section	.text._ZN10BinaryTree8preorderEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree8preorderEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, @function
_ZN10BinaryTree8preorderEPPNS_8TreeNodeE:
.LFB2762:
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
	je	.L44
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
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2762:
	.size	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE, .-_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy,"axG",@progbits,_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy,comdat
	.align 2
	.weak	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy
	.type	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy, @function
_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy:
.LFB2763:
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
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	leaq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_
	movq	%rax, %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2763:
	.size	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy, .-_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy
	.section	.text._ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.type	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, @function
_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE:
.LFB2764:
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
	je	.L50
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
	je	.L50
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2764:
	.size	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE, .-_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
	.section	.text._ZN10BinaryTreeC2Ev,"axG",@progbits,_ZN10BinaryTreeC5Ev,comdat
	.align 2
	.weak	_ZN10BinaryTreeC2Ev
	.type	_ZN10BinaryTreeC2Ev, @function
_ZN10BinaryTreeC2Ev:
.LFB2767:
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
.LFE2767:
	.size	_ZN10BinaryTreeC2Ev, .-_ZN10BinaryTreeC2Ev
	.weak	_ZN10BinaryTreeC1Ev
	.set	_ZN10BinaryTreeC1Ev,_ZN10BinaryTreeC2Ev
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev:
.LFB2775:
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
	call	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2775:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED1Ev
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED1Ev,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED2Ev
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev:
.LFB2777:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2777:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC1Ev
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC1Ev,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC2Ev
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev:
.LFB2779:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2779:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC1Ev
	.set	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC1Ev,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC2Ev
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev:
.LFB2782:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2782:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED1Ev
	.set	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED1Ev,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED2Ev
	.section	.text._ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_,"axG",@progbits,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC5ERKS8_,comdat
	.align 2
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_
	.type	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_, @function
_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_:
.LFB2790:
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
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1ERKS5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2790:
	.size	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_, .-_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1ERKS8_
	.set	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1ERKS8_,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2ERKS8_
	.section	.text._ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev,"axG",@progbits,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED5Ev,comdat
	.align 2
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev
	.type	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev, @function
_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev:
.LFB2793:
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
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2793:
	.size	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev, .-_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED1Ev
	.set	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED1Ev,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED2Ev
	.section	.rodata
	.align 8
.LC11:
	.string	"Successfully created binary tree!"
	.align 8
.LC12:
	.string	"The preorder traversal of binary tree is:"
	.align 8
.LC13:
	.string	"The diagonal order traversal of binary tree is:"
.LC14:
	.string	"Binary tree creation failed!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2765:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2765
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$200, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10BinaryTreeC1Ev
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZN10BinaryTree16createBinaryTreeEv
	testb	%al, %al
	je	.L59
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
	leaq	-128(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree8preorderEPPNS_8TreeNodeE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.LEHE0:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEC1Ev
	leaq	-80(%rbp), %rdx
	leaq	-128(%rbp), %rax
	leaq	24(%rax), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB1:
	call	_ZN10BinaryTree11populateMapEPPNS_8TreeNodeERSt3mapIySt6vectorIS2_SaIS2_EESt4lessIyESaISt4pairIKyS6_EEEy
	leaq	.LC13(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv
	movq	%rax, -200(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv
	movq	%rax, -192(%rbp)
	jmp	.L60
.L63:
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv
	movq	%rax, %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1ERKS8_
.LEHE1:
	leaq	-160(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, -168(%rbp)
	movq	$0, -184(%rbp)
	jmp	.L61
.L62:
	movq	-184(%rbp), %rax
	leaq	-160(%rbp), %rdx
	addq	$8, %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm
	movq	(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE2:
	addq	$1, -184(%rbp)
.L61:
	movq	-184(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L62
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED1Ev
	leaq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv
.L60:
	leaq	-192(%rbp), %rdx
	leaq	-200(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	testb	%al, %al
	jne	.L63
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-128(%rbp), %rax
	leaq	24(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN10BinaryTree14freeBinaryTreeEPPNS_8TreeNodeE
.LEHE3:
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.L64
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L64:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED1Ev
	jmp	.L65
.L59:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
.L65:
	movl	$0, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L70
	jmp	.L73
.L72:
	endbr64
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED1Ev
	jmp	.L68
.L71:
	endbr64
	movq	%rax, %rbx
.L68:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L69
	call	__stack_chk_fail@PLT
.L69:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L73:
	call	__stack_chk_fail@PLT
.L70:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2765:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2765:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2765-.LLSDACSB2765
.LLSDACSB2765:
	.uleb128 .LEHB0-.LFB2765
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2765
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L71-.LFB2765
	.uleb128 0
	.uleb128 .LEHB2-.LFB2765
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L72-.LFB2765
	.uleb128 0
	.uleb128 .LEHB3-.LFB2765
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L71-.LFB2765
	.uleb128 0
	.uleb128 .LEHB4-.LFB2765
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2765:
	.text
	.size	main, .-main
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_:
.LFB3054:
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
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	testb	%al, %al
	jne	.L75
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv
	movq	%rax, %rdx
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L76
.L75:
	movl	$1, %eax
	jmp	.L77
.L76:
	movl	$0, %eax
.L77:
	testb	%al, %al
	je	.L78
	movq	-72(%rbp), %rbx
	movq	-80(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJRKyEEC1ILb1ELb1EEES1_
	leaq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1ERKSt17_Rb_tree_iteratorIS9_E
	leaq	-49(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	leaq	_ZSt19piecewise_construct(%rip), %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_
	movq	%rax, -48(%rbp)
.L78:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv
	addq	$8, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3054:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEEixERSA_
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_:
.LFB3061:
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
	je	.L82
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
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
	call	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L84
.L82:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
.L84:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3061:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE9push_backERKS3_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev:
.LFB3064:
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
	call	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Rb_tree_headerC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3064:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC1Ev
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC1Ev,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EEC2Ev
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev:
.LFB3070:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3070
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE13_Rb_tree_implISD_Lb1EED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3070:
	.section	.gcc_except_table
.LLSDA3070:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3070-.LLSDACSB3070
.LLSDACSB3070:
.LLSDACSE3070:
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED5Ev,comdat
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED1Ev
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED1Ev,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EED2Ev
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv:
.LFB3072:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3072:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE5beginEv
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv:
.LFB3073:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3073:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE3endEv
	.section	.text._ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_,"axG",@progbits,_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_,comdat
	.weak	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	.type	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_, @function
_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_:
.LFB3074:
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
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3074:
	.size	_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_, .-_ZStneRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv:
.LFB3075:
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
	movq	%rax, %rdi
	call	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3075:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv, .-_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv
	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv,"axG",@progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv,comdat
	.align 2
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv, @function
_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv:
.LFB3076:
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
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3076:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv, .-_ZNKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEdeEv
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC5ERKS5_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_:
.LFB3078:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3078
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
	call	_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
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
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, %rcx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB5:
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_
.LEHE5:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	movq	%rax, %r12
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E
.LEHE6:
	movq	-104(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L104
	jmp	.L107
.L105:
	endbr64
	movq	%rax, %rbx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.L106:
	endbr64
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L103
	call	__stack_chk_fail@PLT
.L103:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE7:
.L107:
	call	__stack_chk_fail@PLT
.L104:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3078:
	.section	.gcc_except_table
.LLSDA3078:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3078-.LLSDACSB3078
.LLSDACSB3078:
	.uleb128 .LEHB5-.LFB3078
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L105-.LFB3078
	.uleb128 0
	.uleb128 .LEHB6-.LFB3078
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L106-.LFB3078
	.uleb128 0
	.uleb128 .LEHB7-.LFB3078
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE3078:
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC5ERKS5_,comdat
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1ERKS5_
	.set	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1ERKS5_,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2ERKS5_
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev:
.LFB3081:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3081
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
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
	call	_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3081:
	.section	.gcc_except_table
.LLSDA3081:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3081-.LLSDACSB3081
.LLSDACSB3081:
.LLSDACSE3081:
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED5Ev,comdat
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED1Ev
	.set	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED1Ev,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.section	.text._ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	.type	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv, @function
_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv:
.LFB3083:
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
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3083:
	.size	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv, .-_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm:
.LFB3084:
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
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3084:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEixEm
	.section	.text._ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_,"axG",@progbits,_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_,comdat
	.align 2
	.weak	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_
	.type	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_, @function
_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_:
.LFB3187:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3187:
	.size	_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_, .-_ZNSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE11lower_boundERSA_
	.section	.text._ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_,"axG",@progbits,_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_,comdat
	.weak	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	.type	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_, @function
_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_:
.LFB3188:
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
.LFE3188:
	.size	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_, .-_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	.section	.text._ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv,"axG",@progbits,_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv
	.type	_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv, @function
_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv:
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
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3189:
	.size	_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv, .-_ZNKSt3mapIySt6vectorIPPN10BinaryTree8TreeNodeESaIS4_EESt4lessIyESaISt4pairIKyS6_EEE8key_compEv
	.section	.text._ZNKSt4lessIyEclERKyS2_,"axG",@progbits,_ZNKSt4lessIyEclERKyS2_,comdat
	.align 2
	.weak	_ZNKSt4lessIyEclERKyS2_
	.type	_ZNKSt4lessIyEclERKyS2_, @function
_ZNKSt4lessIyEclERKyS2_:
.LFB3190:
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
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	setb	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3190:
	.size	_ZNKSt4lessIyEclERKyS2_, .-_ZNKSt4lessIyEclERKyS2_
	.section	.text._ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_,"axG",@progbits,_ZNSt5tupleIJRKyEEC5ILb1ELb1EEES1_,comdat
	.align 2
	.weak	_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_
	.type	_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_, @function
_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_:
.LFB3192:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3192
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
	call	_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3192:
	.section	.gcc_except_table
.LLSDA3192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3192-.LLSDACSB3192
.LLSDACSB3192:
.LLSDACSE3192:
	.section	.text._ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_,"axG",@progbits,_ZNSt5tupleIJRKyEEC5ILb1ELb1EEES1_,comdat
	.size	_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_, .-_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_
	.weak	_ZNSt5tupleIJRKyEEC1ILb1ELb1EEES1_
	.set	_ZNSt5tupleIJRKyEEC1ILb1ELb1EEES1_,_ZNSt5tupleIJRKyEEC2ILb1ELb1EEES1_
	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E,"axG",@progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC5ERKSt17_Rb_tree_iteratorIS9_E,comdat
	.align 2
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E, @function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E:
.LFB3195:
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
.LFE3195:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E, .-_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1ERKSt17_Rb_tree_iteratorIS9_E
	.set	_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1ERKSt17_Rb_tree_iteratorIS9_E,_ZNSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2ERKSt17_Rb_tree_iteratorIS9_E
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_:
.LFB3197:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3197
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movq	%r8, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-88(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC1IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_
.LEHE8:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.L124
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E
.LEHE9:
	movq	%rax, %rbx
	jmp	.L125
.L124:
	movq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-72(%rbp), %rbx
.L125:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L129
	jmp	.L131
.L130:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L131:
	call	__stack_chk_fail@PLT
.L129:
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3197:
	.section	.gcc_except_table
.LLSDA3197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3197-.LLSDACSB3197
.LLSDACSB3197:
	.uleb128 .LEHB8-.LFB3197
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB3197
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L130-.LFB3197
	.uleb128 0
	.uleb128 .LEHB10-.LFB3197
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE3197:
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_,comdat
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv:
.LFB3203:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3203:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	.section	.rodata
.LC15:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB3204:
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
	leaq	.LC15(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	-96(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-88(%rbp), %rdx
	addq	%rdx, %rcx
	movq	-136(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	-72(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	-64(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	movq	%rax, -80(%rbp)
	addq	$8, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-112(%rbp), %rdx
	sarq	$3, %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	movq	-136(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-136(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3204:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.section	.text._ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev,"axG",@progbits,_ZNSt20_Rb_tree_key_compareISt4lessIyEEC5Ev,comdat
	.align 2
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev
	.type	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev, @function
_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev:
.LFB3212:
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
.LFE3212:
	.size	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev, .-_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev
	.weak	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC1Ev
	.set	_ZNSt20_Rb_tree_key_compareISt4lessIyEEC1Ev,_ZNSt20_Rb_tree_key_compareISt4lessIyEEC2Ev
	.section	.text._ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev
	.type	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev, @function
_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev:
.LFB3215:
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
.LFE3215:
	.size	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev, .-_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev
	.weak	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED1Ev
	.set	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED1Ev,_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEED2Ev
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E:
.LFB3217:
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
	jmp	.L140
.L141:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.L140:
	cmpq	$0, -32(%rbp)
	jne	.L141
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3217:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv:
.LFB3218:
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
	call	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3218:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv:
.LFB3219:
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
	movq	24(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L146
	call	__stack_chk_fail@PLT
.L146:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3219:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv:
.LFB3220:
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
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L149
	call	__stack_chk_fail@PLT
.L149:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3220:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE3endEv
	.section	.text._ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv,"axG",@progbits,_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	.type	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv, @function
_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv:
.LFB3221:
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
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3221:
	.size	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv, .-_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	.section	.text._ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3222:
	.size	_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev:
.LFB3229:
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
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3229:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC5EmRKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_:
.LFB3231:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3231
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm
.LEHE11:
	jmp	.L158
.L157:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L158:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3231:
	.section	.gcc_except_table
.LLSDA3231:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3231-.LLSDACSB3231
.LLSDACSB3231:
	.uleb128 .LEHB11-.LFB3231
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L157-.LFB3231
	.uleb128 0
	.uleb128 .LEHB12-.LFB3231
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE3231:
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC5EmRKS4_,comdat
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC1EmRKS4_
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC1EmRKS4_,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2EmRKS4_
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev:
.LFB3234:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3234
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
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3234:
	.section	.gcc_except_table
.LLSDA3234:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3234-.LLSDACSB3234
.LLSDACSB3234:
.LLSDACSE3234:
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED1Ev
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED1Ev,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EED2Ev
	.section	.text._ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	.type	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv, @function
_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv:
.LFB3236:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS6_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L162
	call	__stack_chk_fail@PLT
.L162:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3236:
	.size	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv, .-_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	.section	.text._ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv,"axG",@progbits,_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	.type	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv, @function
_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS6_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L165
	call	__stack_chk_fail@PLT
.L165:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3237:
	.size	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv, .-_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE3endEv
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB3238:
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
.LFE3238:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E:
.LFB3239:
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
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3239:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_:
.LFB3308:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3308:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11lower_boundERS1_
	.section	.text._ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv,"axG",@progbits,_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv
	.type	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv, @function
_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv:
.LFB3309:
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
.LFE3309:
	.size	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv, .-_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8key_compEv
	.section	.text._ZNSt11_Tuple_implILm0EJRKyEEC2ES1_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKyEEC5ES1_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_
	.type	_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_, @function
_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_:
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3311:
	.size	_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_, .-_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_
	.weak	_ZNSt11_Tuple_implILm0EJRKyEEC1ES1_
	.set	_ZNSt11_Tuple_implILm0EJRKyEEC1ES1_,_ZNSt11_Tuple_implILm0EJRKyEEC2ES1_
	.section	.text._ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3313:
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
.LFE3313:
	.size	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB3314:
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
.LFE3314:
	.size	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE:
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
	.size	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC5IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_:
.LFB3317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rsi
	movq	-32(%rbp), %rax
	movq	%r12, %rcx
	movq	%rbx, %rdx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_
	movq	-24(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3317:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC1IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC1IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESL_IJEEEEERSF_DpOT_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD5Ev,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev:
.LFB3320:
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
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E
.L184:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3320:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD1Ev
	.set	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD1Ev,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_nodeD2Ev
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_:
.LFB3322:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L186
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv
	testq	%rax, %rax
	je	.L187
	movq	-88(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L187
	movl	$1, %eax
	jmp	.L188
.L187:
	movl	$0, %eax
.L188:
	testb	%al, %al
	je	.L189
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	movq	%rax, %rdx
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L189:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_
	jmp	.L201
.L186:
	movq	-88(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L191
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L192
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L192:
	movq	-88(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L194
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L195
	movq	$0, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L195:
	leaq	-72(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L194:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_
	jmp	.L201
.L191:
	movq	-88(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-104(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L196
	movq	-72(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	sete	%al
	testb	%al, %al
	je	.L197
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	movq	%rax, %rdx
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L197:
	movq	-88(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEppEv
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L199
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	testq	%rax, %rax
	sete	%al
	testb	%al, %al
	je	.L200
	movq	$0, -56(%rbp)
	leaq	-72(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L200:
	leaq	-64(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L201
.L199:
	movq	-104(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_
	jmp	.L201
.L196:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
.L201:
	movq	-24(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L202
	call	__stack_chk_fail@PLT
.L202:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3322:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_
	.section	.text._ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv,"axG",@progbits,_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv
	.type	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv, @function
_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv:
.LFB3331:
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
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3331:
	.size	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv, .-_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node6_M_keyEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E:
.LFB3332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rcx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3332:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSI_E
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC5EPSt18_Rb_tree_node_base,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base:
.LFB3334:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3334:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base, .-_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	.set	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base,_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC2EPSt18_Rb_tree_node_base
	.section	.text._ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB3336:
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
.LFE3336:
	.size	_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardIRKPPN10BinaryTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_, @function
_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_:
.LFB3339:
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
.LFE3339:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_, .-_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_,_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.section	.text._ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc:
.LFB3341:
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
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L213
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L214
	call	__stack_chk_fail@PLT
.L214:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L213:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
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
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L215
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L216
.L215:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv
	jmp	.L217
.L216:
	movq	-32(%rbp), %rax
.L217:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L219
	call	__stack_chk_fail@PLT
.L219:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3341:
	.size	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv:
.LFB3342:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L222
	call	__stack_chk_fail@PLT
.L222:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3342:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,"axG",@progbits,_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,comdat
	.weak	_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.type	_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_, @function
_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_:
.LFB3343:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rax
	movq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3343:
	.size	_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_, .-_ZN9__gnu_cxxmiIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm:
.LFB3344:
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
	je	.L226
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
	nop
	jmp	.L228
.L226:
	movl	$0, %eax
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3344:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_,comdat
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_:
.LFB3345:
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
	call	_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3345:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv:
.LFB3346:
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
.LFE3346:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m:
.LFB3348:
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
	je	.L236
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
	call	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	nop
.L236:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3348:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base:
.LFB3352:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3352:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base:
.LFB3353:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3353:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E:
.LFB3354:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3354:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E
	.section	.text._ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv,"axG",@progbits,_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv
	.type	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv, @function
_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv:
.LFB3355:
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
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3355:
	.size	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv, .-_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE9_M_mbeginEv
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv, @function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv:
.LFB3356:
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
	call	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3356:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv, .-_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev:
.LFB3359:
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
.LFE3359:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED1Ev
	.set	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED1Ev,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEED2Ev
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_:
.LFB3362:
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3362:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm:
.LFB3364:
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3364:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC5ERKS6_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_:
.LFB3366:
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
.LFE3366:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_, .-_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS6_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS6_,_ZN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS6_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_:
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
	movb	$1, -2(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3368:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	.section	.text._ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_,"axG",@progbits,_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_,comdat
	.weak	_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_
	.type	_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_, @function
_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_:
.LFB3370:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3370:
	.size	_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_, .-_ZSt8_DestroyIPPPN10BinaryTree8TreeNodeEEvT_S5_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv:
.LFB3423:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3423:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_:
.LFB3424:
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
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	jmp	.L256
.L259:
	movq	-40(%rbp), %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	movq	%rax, %rcx
	movq	-64(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	xorl	$1, %eax
	testb	%al, %al
	je	.L257
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
	jmp	.L256
.L257:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
	movq	%rax, -48(%rbp)
.L256:
	cmpq	$0, -48(%rbp)
	jne	.L259
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-32(%rbp), %rax
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
.LFE3424:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS9_EPSt18_Rb_tree_node_baseRS1_
	.section	.text._ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_,"axG",@progbits,_ZNSt10_Head_baseILm0ERKyLb0EEC5ES1_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_
	.type	_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_, @function
_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_:
.LFB3426:
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
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3426:
	.size	_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_, .-_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_
	.weak	_ZNSt10_Head_baseILm0ERKyLb0EEC1ES1_
	.set	_ZNSt10_Head_baseILm0ERKyLb0EEC1ES1_,_ZNSt10_Head_baseILm0ERKyLb0EEC2ES1_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_:
.LFB3428:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	%r12, %r8
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3428:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_create_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEPSt13_Rb_tree_nodeIS9_EDpOT_
	.section	.text._ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv,"axG",@progbits,_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv,comdat
	.align 2
	.weak	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv
	.type	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv, @function
_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv:
.LFB3429:
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
	movq	(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L267
	call	__stack_chk_fail@PLT
.L267:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3429:
	.size	_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv, .-_ZNKSt23_Rb_tree_const_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE13_M_const_castEv
	.section	.text._ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv,"axG",@progbits,_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv
	.type	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv, @function
_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv:
.LFB3430:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3430:
	.size	_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv, .-_ZNKSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE4sizeEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv:
.LFB3431:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3431:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE12_M_rightmostEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base:
.LFB3432:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3432:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IS1_S1_Lb1EEERKS1_S5_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_:
.LFB3434:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3434:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IS1_S1_Lb1EEERKS1_S5_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_:
.LFB3436:
	.cfi_startproc
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
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_M_beginEv
	movq	%rax, -80(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	movq	%rax, -72(%rbp)
	movb	$1, -81(%rbp)
	jmp	.L276
.L279:
	movq	-80(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-104(%rbp), %rbx
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	movb	%al, -81(%rbp)
	cmpb	$0, -81(%rbp)
	je	.L277
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE7_S_leftEPSt18_Rb_tree_node_base
	jmp	.L278
.L277:
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE8_S_rightEPSt18_Rb_tree_node_base
.L278:
	movq	%rax, -80(%rbp)
.L276:
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jne	.L279
	movq	-72(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	cmpb	$0, -81(%rbp)
	je	.L280
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE5beginEv
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqRKSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEESC_
	testb	%al, %al
	je	.L281
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L284
.L281:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv
.L280:
	movq	-104(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %rcx
	movq	-112(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L283
	leaq	-72(%rbp), %rdx
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	jmp	.L284
.L283:
	movq	$0, -56(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	leaq	-48(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IS1_S1_Lb1EEERKS1_S5_
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
.L284:
	movq	-24(%rbp), %rcx
	subq	%fs:40, %rcx
	je	.L285
	call	__stack_chk_fail@PLT
.L285:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3436:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE24_M_get_insert_unique_posERS1_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv:
.LFB3439:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3439:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_leftmostEv
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRS1_S4_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_:
.LFB3441:
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
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3441:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRS1_S4_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRS1_S4_Lb1EEEOT_OT0_
	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv,"axG",@progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv,comdat
	.align 2
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv, @function
_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv:
.LFB3443:
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
	movq	%rax, %rdi
	call	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3443:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv, .-_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEmmEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E,comdat
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E:
.LFB3444:
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
	movq	%rax, %rdi
	call	_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	movq	%rax, %rdx
	leaq	-9(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L293
	call	__stack_chk_fail@PLT
.L293:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3444:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E:
.LFB3446:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -64(%rbp)
	jne	.L295
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_M_endEv
	cmpq	%rax, -72(%rbp)
	je	.L295
	movq	-56(%rbp), %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt18_Rb_tree_node_base
	movq	%rax, %r12
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE6_S_keyEPKSt13_Rb_tree_nodeIS9_E
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt4lessIyEclERKyS2_
	testb	%al, %al
	je	.L296
.L295:
	movl	$1, %eax
	jmp	.L297
.L296:
	movl	$0, %eax
.L297:
	movb	%al, -33(%rbp)
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movzbl	-33(%rbp), %eax
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rsi
	movl	%eax, %edi
	call	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_@PLT
	movq	-56(%rbp), %rax
	movq	40(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 40(%rax)
	movq	-80(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt17_Rb_tree_iteratorISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEC1EPSt18_Rb_tree_node_base
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L299
	call	__stack_chk_fail@PLT
.L299:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3446:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSH_PSt13_Rb_tree_nodeIS9_E
	.section	.text._ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv
	.type	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv, @function
_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv:
.LFB3447:
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
	call	_ZNKSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3447:
	.size	_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv, .-_ZNKSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3448:
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
	jnb	.L303
	movq	-16(%rbp), %rax
	jmp	.L304
.L303:
	movq	-8(%rbp), %rax
.L304:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3448:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_,"axG",@progbits,_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_,comdat
	.weak	_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	.type	_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_, @function
_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_:
.LFB3450:
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
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3450:
	.size	_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_, .-_ZSt12__relocate_aIPPPN10BinaryTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E:
.LFB3453:
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
	call	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	movq	%rax, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEED1Ev
	nop
	nop
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3453:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS9_E
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E:
.LFB3455:
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
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3455:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E
	.section	.text._ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	.type	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv, @function
_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv:
.LFB3456:
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
.LFE3456:
	.size	_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv, .-_ZN9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev:
.LFB3461:
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
.LFE3461:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_:
.LFB3463:
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
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3463:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS7_SaIS7_EEEEPS7_EET0_T_SG_SF_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_:
.LFB3464:
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
.LFE3464:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN10BinaryTree8TreeNodeEEEvT_S7_
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv:
.LFB3485:
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
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	movq	%rax, -16(%rbp)
	movq	$1, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3485:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_get_nodeEv
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_:
.LFB3486:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3486
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%rdx, -152(%rbp)
	movq	%rcx, -160(%rbp)
	movq	%r8, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-144(%rbp), %rax
	movq	%rax, %rsi
	movl	$64, %edi
	call	_ZnwmPv
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %r12
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	%rax, %r13
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	movq	%rax, %r14
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	movq	%rax, -120(%rbp)
	movq	%r14, -112(%rbp)
	movq	%r13, -104(%rbp)
	movq	%r12, -96(%rbp)
	movq	%rbx, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %r12
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	movq	-120(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	-112(%rbp), %rdx
	movq	%rdx, -72(%rbp)
	movq	%rax, -64(%rbp)
	movq	%r12, -56(%rbp)
	movq	%rbx, -48(%rbp)
	movq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	movl	$32, %edi
	call	_ZnwmPv
	movq	%rax, %r12
	movl	$1, %r14d
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJEEEOT_RNSt16remove_referenceIS2_E4typeE
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt5tupleIJRKyEEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5tupleIJRKyEEC1EOS2_
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKSt21piecewise_construct_tEOT_RNSt16remove_referenceIS3_E4typeE
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movq	%r12, %rdi
.LEHB13:
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE
.LEHE13:
	nop
	nop
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L325
	jmp	.L328
.L327:
	endbr64
	movq	%rax, %r13
	testb	%r14b, %r14b
	je	.L321
	movq	%rbx, %rsi
	movq	%r12, %rdi
	call	_ZdlPvS_
.L321:
	movq	%r13, %rax
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-144(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS9_E
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L322
	call	__stack_chk_fail@PLT
.L322:
.LEHB14:
	call	__cxa_rethrow@PLT
.LEHE14:
.L326:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L324
	call	__stack_chk_fail@PLT
.L324:
	movq	%rax, %rdi
.LEHB15:
	call	_Unwind_Resume@PLT
.LEHE15:
.L328:
	call	__stack_chk_fail@PLT
.L325:
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3486:
	.section	.gcc_except_table
	.align 4
.LLSDA3486:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT3486-.LLSDATTD3486
.LLSDATTD3486:
	.byte	0x1
	.uleb128 .LLSDACSE3486-.LLSDACSB3486
.LLSDACSB3486:
	.uleb128 .LEHB13-.LFB3486
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L327-.LFB3486
	.uleb128 0x3
	.uleb128 .LEHB14-.LFB3486
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L326-.LFB3486
	.uleb128 0
	.uleb128 .LEHB15-.LFB3486
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE3486:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align 4
	.long	0

.LLSDATT3486:
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_,comdat
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_
	.section	.text._ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC5IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	.type	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_, @function
_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_:
.LFB3488:
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
	call	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3488:
	.size	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_, .-_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	.weak	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	.set	_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC1IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_,_ZNSt4pairIPSt18_Rb_tree_node_baseS1_EC2IRPSt13_Rb_tree_nodeIS_IKySt6vectorIPPN10BinaryTree8TreeNodeESaISA_EEEERS1_Lb1EEEOT_OT0_
	.section	.text._ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB3490:
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
.LFE3490:
	.size	_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPSt18_Rb_tree_node_baseEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv,"axG",@progbits,_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv,comdat
	.align 2
	.weak	_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	.type	_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv, @function
_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv:
.LFB3491:
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
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3491:
	.size	_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv, .-_ZNKSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEE9_M_valptrEv
	.section	.text._ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_,"axG",@progbits,_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_,comdat
	.align 2
	.weak	_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_
	.type	_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_, @function
_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_:
.LFB3492:
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
.LFE3492:
	.size	_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_, .-_ZNKSt10_Select1stISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEEEclERKS9_
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_,comdat
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_:
.LFB3493:
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
	movabsq	$1152921504606846975, %rax
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
	je	.L341
	call	__stack_chk_fail@PLT
.L341:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3493:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv:
.LFB3494:
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
	je	.L344
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L345
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L345:
	call	_ZSt17__throw_bad_allocv@PLT
.L344:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3494:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,"axG",@progbits,_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_,comdat
	.weak	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.type	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, @function
_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_:
.LFB3495:
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
.LFE3495:
	.size	_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_, .-_ZSt12__niter_baseIPPPN10BinaryTree8TreeNodeEET_S5_
	.section	.text._ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	.type	_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E, @function
_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E:
.LFB3496:
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
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L350
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L350:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3496:
	.size	_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E, .-_ZSt14__relocate_a_1IPPN10BinaryTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	.section	.text._ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m,"axG",@progbits,_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	.type	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m, @function
_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m:
.LFB3497:
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
.LFE3497:
	.size	_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m, .-_ZNSt15__new_allocatorIPPN10BinaryTree8TreeNodeEE10deallocateEPS3_m
	.section	.text._ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv,comdat
	.align 2
	.weak	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	.type	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv, @function
_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv:
.LFB3498:
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
.LFE3498:
	.size	_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv, .-_ZNSt8_Rb_treeIySt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS6_EEESt10_Select1stIS9_ESt4lessIyESaIS9_EE21_M_get_Node_allocatorEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_:
.LFB3504:
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
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3504:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_
	.section	.text._ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE,"axG",@progbits,_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE,comdat
	.weak	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE
	.type	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE, @function
_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE:
.LFB3515:
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
.LFE3515:
	.size	_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE, .-_ZSt7forwardIRPSt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEEOT_RNSt16remove_referenceISE_E4typeE
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv, @function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv:
.LFB3516:
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
	call	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3516:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv, .-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE6_M_ptrEv
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3518:
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
	jnb	.L363
	movq	-16(%rbp), %rax
	jmp	.L364
.L363:
	movq	-8(%rbp), %rax
.L364:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3518:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m,"axG",@progbits,_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m
	.type	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m, @function
_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m:
.LFB3521:
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
	salq	$6, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3521:
	.size	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m, .-_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE10deallocateEPSB_m
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_:
.LFB3522:
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
.LFE3522:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEET_SC_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_:
.LFB3523:
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
	call	_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
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
.LFE3523:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS5_SaIS5_EEEEPS5_ET1_T0_SE_SD_
	.section	.text._ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv, @function
_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv:
.LFB3530:
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
	movabsq	$144115188075855871, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L373
	movabsq	$288230376151711743, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L374
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L374:
	call	_ZSt17__throw_bad_allocv@PLT
.L373:
	movq	-32(%rbp), %rax
	salq	$6, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3530:
	.size	_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv, .-_ZNSt15__new_allocatorISt13_Rb_tree_nodeISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEEE8allocateEmPKv
	.section	.text._ZNSt5tupleIJRKyEEC2EOS2_,"axG",@progbits,_ZNSt5tupleIJRKyEEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt5tupleIJRKyEEC2EOS2_
	.type	_ZNSt5tupleIJRKyEEC2EOS2_, @function
_ZNSt5tupleIJRKyEEC2EOS2_:
.LFB3533:
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
	call	_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3533:
	.size	_ZNSt5tupleIJRKyEEC2EOS2_, .-_ZNSt5tupleIJRKyEEC2EOS2_
	.weak	_ZNSt5tupleIJRKyEEC1EOS2_
	.set	_ZNSt5tupleIJRKyEEC1EOS2_,_ZNSt5tupleIJRKyEEC2EOS2_
	.section	.text._ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv,"axG",@progbits,_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	.type	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv, @function
_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv:
.LFB3535:
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
.LFE3535:
	.size	_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv, .-_ZNK9__gnu_cxx16__aligned_membufISt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS7_EEEE7_M_addrEv
	.section	.text._ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE
	.type	_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE, @function
_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE:
.LFB3537:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3537:
	.size	_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE, .-_ZSt12__niter_baseIPKPPN10BinaryTree8TreeNodeESt6vectorIS3_SaIS3_EEET_N9__gnu_cxx17__normal_iteratorIS9_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_:
.LFB3538:
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
	call	_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3538:
	.size	_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a1ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
	.section	.text._ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_,"axG",@progbits,_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_,comdat
	.weak	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	.type	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_, @function
_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_:
.LFB3539:
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
.LFE3539:
	.size	_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_, .-_ZSt12__niter_wrapIPPPN10BinaryTree8TreeNodeEET_RKS5_S5_
	.section	.text._ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKyEEC5EOS2_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_
	.type	_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_, @function
_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_:
.LFB3542:
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
	movq	-16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3542:
	.size	_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_, .-_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_
	.weak	_ZNSt11_Tuple_implILm0EJRKyEEC1EOS2_
	.set	_ZNSt11_Tuple_implILm0EJRKyEEC1EOS2_,_ZNSt11_Tuple_implILm0EJRKyEEC2EOS2_
	.section	.text._ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE,"axG",@progbits,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC5IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE,comdat
	.align 2
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE
	.type	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE, @function
_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE:
.LFB3545:
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
	leaq	-17(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3545:
	.size	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE, .-_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE
	.set	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJEEESt21piecewise_construct_tSt5tupleIJDpT_EESC_IJDpT0_EE
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv:
.LFB3547:
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
.LFE3547:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKPPN10BinaryTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
	.type	_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_, @function
_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_:
.LFB3548:
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
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3548:
	.size	_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_, .-_ZSt14__copy_move_a2ILb0EPKPPN10BinaryTree8TreeNodeEPS3_ET1_T0_S8_S7_
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev:
.LFB3553:
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3553:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC1Ev
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC1Ev,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.section	.text._ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev,"axG",@progbits,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.type	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev, @function
_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev:
.LFB3555:
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3555:
	.size	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev, .-_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.weak	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1Ev
	.set	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1Ev,_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC2Ev
	.section	.text._ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE,"axG",@progbits,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC5IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE,comdat
	.align 2
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE
	.type	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE, @function
_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE:
.LFB3557:
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
	call	_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_
	movq	%rax, %rdi
	call	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	pxor	%xmm0, %xmm0
	movups	%xmm0, 8(%rax)
	movq	%xmm0, 24(%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN10BinaryTree8TreeNodeESaIS3_EEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3557:
	.size	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE, .-_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE
	.weak	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE
	.set	_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC1IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE,_ZNSt4pairIKySt6vectorIPPN10BinaryTree8TreeNodeESaIS5_EEEC2IJRS0_EJLm0EEJEJEEERSt5tupleIJDpT_EERSB_IJDpT1_EESt12_Index_tupleIJXspT0_EEESK_IJXspT2_EEE
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_:
.LFB3559:
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
	je	.L395
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	jmp	.L396
.L395:
	cmpq	$1, -8(%rbp)
	jne	.L396
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_
.L396:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3559:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIKPPN10BinaryTree8TreeNodeES6_EEPT0_PT_SB_S9_
	.section	.text._ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_,"axG",@progbits,_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_,comdat
	.weak	_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_
	.type	_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_, @function
_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_:
.LFB3560:
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
	call	_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3560:
	.size	_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_, .-_ZSt3getILm0EJRKyEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS6_
	.section	.text._ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3561:
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
.LFE3561:
	.size	_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKyEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev:
.LFB3563:
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
	call	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3563:
	.size	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIPPN10BinaryTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.section	.text._ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_
	.type	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_, @function
_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_:
.LFB3565:
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
.LFE3565:
	.size	_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_, .-_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE12__assign_oneIPPN10BinaryTree8TreeNodeEKS6_EEvPT_PT0_
	.section	.text._ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB3566:
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
	call	_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3566:
	.size	_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm0ERKyJEERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_
	.type	_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_, @function
_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_:
.LFB3570:
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
	call	_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3570:
	.size	_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_, .-_ZNSt11_Tuple_implILm0EJRKyEE7_M_headERS2_
	.section	.text._ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_:
.LFB3574:
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
.LFE3574:
	.size	_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm0ERKyLb0EE7_M_headERS2_
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
