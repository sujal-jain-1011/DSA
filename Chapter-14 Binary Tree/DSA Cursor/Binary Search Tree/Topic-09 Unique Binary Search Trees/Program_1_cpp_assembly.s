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
	.section	.rodata
	.align 8
.LC0:
	.string	"Memory allocation failed for node of binary search tree!"
#NO_APP
	.section	.text._ZN16BinarySearchTree14createTreeNodeEi,"axG",@progbits,_ZN16BinarySearchTree14createTreeNodeEi,comdat
	.align 2
	.weak	_ZN16BinarySearchTree14createTreeNodeEi
	.type	_ZN16BinarySearchTree14createTreeNodeEi, @function
_ZN16BinarySearchTree14createTreeNodeEi:
.LFB2605:
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
	jne	.L4
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
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2605:
	.size	_ZN16BinarySearchTree14createTreeNodeEi, .-_ZN16BinarySearchTree14createTreeNodeEi
	.section	.text._ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE,"axG",@progbits,_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	.type	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE, @function
_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE:
.LFB2613:
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
	je	.L7
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree14createTreeNodeEi
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	movq	-8(%rbp), %rdx
	movq	%rax, 16(%rdx)
	movq	-8(%rbp), %rax
	jmp	.L8
.L7:
	movl	$0, %eax
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2613:
	.size	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE, .-_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev:
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
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2619:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev:
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
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2621:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev:
.LFB2623:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2623:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	.set	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2Ev
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5EOS5_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_:
.LFB2630:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1EOS6_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5EOS5_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_:
.LFB2632:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2632:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_
	.set	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2EOS5_
	.section	.text._ZN16BinarySearchTree6createEttPt,"axG",@progbits,_ZN16BinarySearchTree6createEttPt,comdat
	.align 2
	.weak	_ZN16BinarySearchTree6createEttPt
	.type	_ZN16BinarySearchTree6createEttPt, @function
_ZN16BinarySearchTree6createEttPt:
.LFB2614:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2614
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movl	%ecx, %eax
	movq	%r8, -240(%rbp)
	movw	%dx, -228(%rbp)
	movw	%ax, -232(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movzwl	-228(%rbp), %eax
	cmpw	%ax, -232(%rbp)
	jb	.L15
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	movzwl	-228(%rbp), %eax
	movw	%ax, -194(%rbp)
	jmp	.L16
.L23:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	movzwl	-194(%rbp), %eax
	cmpw	-228(%rbp), %ax
	jne	.L17
	movl	$8, %edi
.LEHB0:
	call	_Znwm@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_
	jmp	.L18
.L17:
	movzwl	-194(%rbp), %eax
	subl	$1, %eax
	movzwl	%ax, %ecx
	movzwl	-228(%rbp), %edx
	leaq	-48(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree6createEttPt
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
.L18:
	movzwl	-232(%rbp), %ecx
	movzwl	-194(%rbp), %eax
	addl	$1, %eax
	movzwl	%ax, %edx
	leaq	-48(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree6createEttPt
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, -176(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, -168(%rbp)
	movq	$0, -192(%rbp)
	jmp	.L19
.L22:
	movq	$0, -184(%rbp)
	jmp	.L20
.L21:
	movl	$8, %edi
	call	_Znwm@PLT
	movq	%rax, -48(%rbp)
	movzwl	-194(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-240(%rbp), %rax
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	movq	-48(%rbp), %rbx
	movq	-224(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree14createTreeNodeEi
	movq	%rax, (%rbx)
	movq	-192(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	movq	(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	movq	%rax, 8(%rbx)
	movq	-184(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	movq	(%rax), %rbx
	movq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree9cloneTreeEPNS_8TreeNodeE
	movq	%rax, 16(%rbx)
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_
.LEHE0:
	addq	$1, -184(%rbp)
.L20:
	movq	-184(%rbp), %rax
	cmpq	-168(%rbp), %rax
	jb	.L21
	addq	$1, -192(%rbp)
.L19:
	movq	-192(%rbp), %rax
	cmpq	-176(%rbp), %rax
	jb	.L22
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movzwl	-194(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -194(%rbp)
.L16:
	movzwl	-194(%rbp), %eax
	cmpw	%ax, -232(%rbp)
	jnb	.L23
	leaq	-144(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	jmp	.L14
.L15:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1Ev
	movl	$8, %edi
.LEHB1:
	call	_Znwm@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	$0, (%rax)
	leaq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_
.LEHE1:
	leaq	-48(%rbp), %rdx
	movq	-216(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1EOS5_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	jmp	.L14
.L30:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.L31:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L28
	call	__stack_chk_fail@PLT
.L28:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L14:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	movq	-216(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2614:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN16BinarySearchTree6createEttPt,"aG",@progbits,_ZN16BinarySearchTree6createEttPt,comdat
.LLSDA2614:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2614-.LLSDACSB2614
.LLSDACSB2614:
	.uleb128 .LEHB0-.LFB2614
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L30-.LFB2614
	.uleb128 0
	.uleb128 .LEHB1-.LFB2614
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L31-.LFB2614
	.uleb128 0
	.uleb128 .LEHB2-.LFB2614
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2614:
	.section	.text._ZN16BinarySearchTree6createEttPt,"axG",@progbits,_ZN16BinarySearchTree6createEttPt,comdat
	.size	_ZN16BinarySearchTree6createEttPt, .-_ZN16BinarySearchTree6createEttPt
	.section	.text._ZN16BinarySearchTree15createUniqueBSTEt,"axG",@progbits,_ZN16BinarySearchTree15createUniqueBSTEt,comdat
	.align 2
	.weak	_ZN16BinarySearchTree15createUniqueBSTEt
	.type	_ZN16BinarySearchTree15createUniqueBSTEt, @function
_ZN16BinarySearchTree15createUniqueBSTEt:
.LFB2634:
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
	movl	%edx, %eax
	movw	%ax, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzwl	-52(%rbp), %eax
	movabsq	$4611686018427387900, %rdx
	cmpq	%rax, %rdx
	jb	.L33
	addq	%rax, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	movq	%rax, -16(%rbp)
	movw	$0, -18(%rbp)
	jmp	.L36
.L33:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L35
	call	__stack_chk_fail@PLT
.L35:
	call	__cxa_throw_bad_array_new_length@PLT
.L37:
	movzwl	-18(%rbp), %eax
	leaq	(%rax,%rax), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movzwl	-18(%rbp), %edx
	addl	$1, %edx
	movw	%dx, (%rax)
	movzwl	-18(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -18(%rbp)
.L36:
	movzwl	-18(%rbp), %eax
	cmpw	-52(%rbp), %ax
	jb	.L37
	movzwl	-52(%rbp), %eax
	subl	$1, %eax
	movzwl	%ax, %edx
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %r8
	movl	%edx, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree6createEttPt
	cmpq	$0, -16(%rbp)
	je	.L41
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdaPv@PLT
.L41:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L40
	call	__stack_chk_fail@PLT
.L40:
	movq	-40(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2634:
	.size	_ZN16BinarySearchTree15createUniqueBSTEt, .-_ZN16BinarySearchTree15createUniqueBSTEt
	.section	.rodata
.LC1:
	.string	" "
	.section	.text._ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE,"axG",@progbits,_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE
	.type	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE, @function
_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE:
.LFB2635:
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
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE
.L44:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2635:
	.size	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE, .-_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE
	.section	.text._ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE,"axG",@progbits,_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE,comdat
	.align 2
	.weak	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE
	.type	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE, @function
_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE:
.LFB2636:
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
	je	.L47
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L47
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L47:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE, .-_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE
	.section	.text._ZN16BinarySearchTreeC2Ev,"axG",@progbits,_ZN16BinarySearchTreeC5Ev,comdat
	.align 2
	.weak	_ZN16BinarySearchTreeC2Ev
	.type	_ZN16BinarySearchTreeC2Ev, @function
_ZN16BinarySearchTreeC2Ev:
.LFB2639:
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
.LFE2639:
	.size	_ZN16BinarySearchTreeC2Ev, .-_ZN16BinarySearchTreeC2Ev
	.weak	_ZN16BinarySearchTreeC1Ev
	.set	_ZN16BinarySearchTreeC1Ev,_ZN16BinarySearchTreeC2Ev
	.section	.rodata
	.align 8
.LC2:
	.string	"Enter the number of nodes in binary search tree:"
	.align 8
.LC3:
	.string	"Preorder traversal of binary search tree "
.LC4:
	.string	" is:"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2637:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2637
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN16BinarySearchTreeC1Ev
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERt@PLT
	movzwl	-136(%rbp), %eax
	movzwl	%ax, %edx
	leaq	-112(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree15createUniqueBSTEt
.LEHE3:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	movw	%ax, -130(%rbp)
	movw	$0, -134(%rbp)
	jmp	.L50
.L51:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movzwl	-134(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movzwl	-134(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree8preorderEPPNS_8TreeNodeE
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movzwl	-134(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -134(%rbp)
.L50:
	movzwl	-134(%rbp), %eax
	cmpw	-130(%rbp), %ax
	jb	.L51
	movw	$0, -132(%rbp)
	jmp	.L52
.L53:
	movzwl	-132(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16BinarySearchTree20freeBinarySearchTreeEPPNS_8TreeNodeE
.LEHE4:
	movzwl	-132(%rbp), %eax
	addl	$1, %eax
	movw	%ax, -132(%rbp)
.L52:
	movzwl	-132(%rbp), %eax
	cmpw	-130(%rbp), %ax
	jb	.L53
	movl	$0, %ebx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L57
	jmp	.L59
.L58:
	endbr64
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L59:
	call	__stack_chk_fail@PLT
.L57:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2637:
	.section	.gcc_except_table,"a",@progbits
.LLSDA2637:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2637-.LLSDACSB2637
.LLSDACSB2637:
	.uleb128 .LEHB3-.LFB2637
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2637
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L58-.LFB2637
	.uleb128 0
	.uleb128 .LEHB5-.LFB2637
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2637:
	.text
	.size	main, .-main
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev:
.LFB2902:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2902:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1Ev,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev:
.LFB2908:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2908
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2908:
	.section	.gcc_except_table
.LLSDA2908:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2908-.LLSDACSB2908
.LLSDACSB2908:
.LLSDACSE2908:
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev:
.LFB2911:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2911
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
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
	call	_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2911:
	.section	.gcc_except_table
.LLSDA2911:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2911-.LLSDACSB2911
.LLSDACSB2911:
.LLSDACSE2911:
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED5Ev,comdat
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	.set	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED2Ev
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_:
.LFB2913:
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
	je	.L64
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
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
	call	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L66
.L64:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
.L66:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2913:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE9push_backERKS3_
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_:
.LFB2915:
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
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2915:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEaSEOS5_
	.section	.text._ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	.type	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv, @function
_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv:
.LFB2916:
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
.LFE2916:
	.size	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv, .-_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm:
.LFB2917:
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
.LFE2917:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEixEm
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC5EOS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_:
.LFB2919:
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
	call	_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_
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
	call	_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2919:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1EOS6_
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1EOS6_,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2EOS6_
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev:
.LFB3029:
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
.LFE3029:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev
	.type	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev, @function
_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev:
.LFB3032:
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
.LFE3032:
	.size	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev, .-_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev
	.weak	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED1Ev
	.set	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED1Ev,_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m:
.LFB3034:
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
	je	.L78
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
	call	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m
	nop
.L78:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3034:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB3035:
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
.LFE3035:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv:
.LFB3038:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3038:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE3endEv
	.section	.rodata
.LC5:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
.LFB3039:
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
	leaq	.LC5(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	movq	%rax, -96(%rbp)
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
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
	call	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
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
	call	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	nop
	nop
	movq	$0, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rsi
	movq	-88(%rbp), %rdx
	movq	-112(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	movq	%rax, -80(%rbp)
	addq	$8, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rax
	movq	-80(%rbp), %rdx
	movq	-104(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	-136(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-112(%rbp), %rdx
	sarq	$3, %rdx
	movq	-112(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13_M_deallocateEPS3_m
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
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3039:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.section	.text._ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_,"axG",@progbits,_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_,comdat
	.weak	_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_
	.type	_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_, @function
_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_:
.LFB3043:
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
.LFE3043:
	.size	_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_, .-_ZSt4moveIRSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS4_EEEONSt16remove_referenceIT_E4typeEOS9_
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE:
.LFB3044:
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
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rdx
	leaq	-65(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv
	leaq	-65(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1ERKS4_
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEED2Ev
	nop
	movq	-88(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_
	movq	-96(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_
	nop
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L89
	call	__stack_chk_fail@PLT
.L89:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3044:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE14_M_move_assignEOS5_St17integral_constantIbLb1EE
	.section	.text._ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_,comdat
	.weak	_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_
	.type	_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_, @function
_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_:
.LFB3045:
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
.LFE3045:
	.size	_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_, .-_ZSt4moveIRNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS4_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOSA_
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC5EOS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_:
.LFB3050:
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
.LFE3050:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1EOS6_
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1EOS6_,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2EOS6_
	.section	.text._ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_,"axG",@progbits,_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_,comdat
	.weak	_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_
	.type	_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_, @function
_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_:
.LFB3126:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3126:
	.size	_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_, .-_ZSt8_DestroyIPPPN16BinarySearchTree8TreeNodeEEvT_S5_
	.section	.text._ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	.type	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE, @function
_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE:
.LFB3127:
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
.LFE3127:
	.size	_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE, .-_ZSt7forwardIRKPPN16BinarySearchTree8TreeNodeEEOT_RNSt16remove_referenceIS6_E4typeE
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC5ERKS5_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_, @function
_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_:
.LFB3130:
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
.LFE3130:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_, .-_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_,_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC2ERKS5_
	.section	.text._ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc:
.LFB3132:
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
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L98
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L99
	call	__stack_chk_fail@PLT
.L99:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L98:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
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
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L100
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L101
.L100:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv
	jmp	.L102
.L101:
	movq	-32(%rbp), %rax
.L102:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L104
	call	__stack_chk_fail@PLT
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3132:
	.size	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc, .-_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_M_check_lenEmPKc
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv:
.LFB3133:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEC1ERKS5_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3133:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE5beginEv
	.section	.text._ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,"axG",@progbits,_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_,comdat
	.weak	_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.type	_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_, @function
_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_:
.LFB3134:
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
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
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
.LFE3134:
	.size	_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_, .-_ZN9__gnu_cxxmiIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSC_SF_
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm:
.LFB3135:
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
	je	.L111
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv
	nop
	jmp	.L113
.L111:
	movl	$0, %eax
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3135:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_M_allocateEm
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_,comdat
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_:
.LFB3136:
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
	call	_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3136:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv:
.LFB3137:
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
.LFE3137:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPPPN16BinarySearchTree8TreeNodeESt6vectorIS4_SaIS4_EEE4baseEv
	.section	.text._ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv:
.LFB3139:
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
	call	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
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
.LFE3139:
	.size	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv, .-_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE13get_allocatorEv
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_:
.LFB3141:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3141:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1ERKS4_
	.set	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1ERKS4_,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_:
.LFB3143:
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
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC1Ev
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L123
	call	__stack_chk_fail@PLT
.L123:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3143:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_swap_dataERS6_
	.section	.text._ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m,"axG",@progbits,_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m
	.type	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m, @function
_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m:
.LFB3205:
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
.LFE3205:
	.size	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m, .-_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE10deallocateEPS3_m
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_:
.LFB3206:
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
.LFE3206:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPPPN16BinarySearchTree8TreeNodeEEEvT_S7_
	.section	.text._ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv
	.type	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv, @function
_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv:
.LFB3207:
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
	call	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3207:
	.size	_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv, .-_ZNKSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE8max_sizeEv
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB3208:
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
	jnb	.L130
	movq	-16(%rbp), %rax
	jmp	.L131
.L130:
	movq	-8(%rbp), %rax
.L131:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3208:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_,"axG",@progbits,_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_,comdat
	.weak	_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	.type	_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_, @function
_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_:
.LFB3210:
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
	call	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3210:
	.size	_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_, .-_ZSt12__relocate_aIPPPN16BinarySearchTree8TreeNodeES4_SaIS3_EET0_T_S7_S6_RT1_
	.section	.text._ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv:
.LFB3212:
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
.LFE3212:
	.size	_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_:
.LFB3214:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3214:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1ERKS4_
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC1ERKS4_,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EEC2ERKS4_
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_:
.LFB3216:
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
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3216:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_data12_M_copy_dataERKS6_
	.section	.text._ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.weak	_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_, @function
_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_:
.LFB3217:
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
.LFE3217:
	.size	_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIRSaIPPN16BinarySearchTree8TreeNodeEEEONSt16remove_referenceIT_E4typeEOS7_
	.section	.text._ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_,"axG",@progbits,_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_,comdat
	.weak	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	.type	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_, @function
_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_:
.LFB3247:
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
	je	.L145
	call	__stack_chk_fail@PLT
.L145:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3247:
	.size	_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_, .-_ZNSt6vectorIPPN16BinarySearchTree8TreeNodeESaIS3_EE11_S_max_sizeERKS4_
	.section	.text._ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv:
.LFB3248:
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
	je	.L148
	movabsq	$2305843009213693951, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L149
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L149:
	call	_ZSt17__throw_bad_allocv@PLT
.L148:
	movq	-32(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3248:
	.size	_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv, .-_ZNSt15__new_allocatorIPPN16BinarySearchTree8TreeNodeEE8allocateEmPKv
	.section	.text._ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_,"axG",@progbits,_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_,comdat
	.weak	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_
	.type	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_, @function
_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_:
.LFB3249:
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
.LFE3249:
	.size	_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_, .-_ZSt12__niter_baseIPPPN16BinarySearchTree8TreeNodeEET_S5_
	.section	.text._ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	.type	_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E, @function
_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E:
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
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L154
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L154:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3250:
	.size	_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E, .-_ZSt14__relocate_a_1IPPN16BinarySearchTree8TreeNodeES3_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS6_E4typeES8_S8_S8_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_,"axG",@progbits,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC5ERKS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.type	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_, @function
_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_:
.LFB3252:
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
	call	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3252:
	.size	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_, .-_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.weak	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_
	.set	_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC1ERKS4_,_ZNSt12_Vector_baseIPPN16BinarySearchTree8TreeNodeESaIS3_EE12_Vector_implC2ERKS4_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB3271:
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
	jnb	.L158
	movq	-16(%rbp), %rax
	jmp	.L159
.L158:
	movq	-8(%rbp), %rax
.L159:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3271:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
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
