%{
#include "scanner.h"
%}


%%

.section | 
.text    |                 
.global                      return section;


bad                          return errorop;



call    |
callq   |
leave   | 
leaveq  |
ret     |
retn    | 
retq    | 
fxam    |
fchs                        return controlop;



push    |
pop     |
pushl   |
popl    |
pushf   |
popf                        return stackop;


int     |
in      |
out                         return systemop;


adc     |
add     |
xadd    |
sub     | 
addl    |
addq    |
subl    |
subq    |
mul     |
imul    |
mulb    |
mulsd   |
div     |
idiv    |
divl    |
adcl    |
idivl   |
divsd   |
divss   |
mulss   |
divq    |
idivq   |
pmuludq | 
inc     |
incq    |
incl    |
incw    |
dec     |
neg     |
sbb     |
fadd    |
negl    |
fmul    |
fxch    |
fucomip |
fucomi  |
fcompp  |
fcompl  |
bsr     |
mull    |
fmull   |
ucomisd |
ucomiss |
subss   |
addw    |
addsd   |
addss   |
fmulp   |
fmuls   |
fadds   |
faddp   |
faddl   |
subw    |
subsd   |
imull   |
bswap   |
decl    |
decb    |
decd    |
decw    |
fdiv    |
fdivl   |
addb    |
subb    |
sbbl    |
fdivr   |
fabs    |
fsqrt   |
fdivrs  |
cbtw    |
frndint |
fdivrl  |
fprem   |
cvtsi2sd  |
cvtsi2sdl |
cvtsi2ssl |
cvtss2sd  |
cvtdq2ps  |
cvtsi2ss  |
cvttsd2si |
cvttss2si |
cvtsi2sdq |
cvtps2pd  |
maxsd     |
negq      |
unpcklps  |
unpcklpd  |
cvtpd2ps  | 
cvtsd2ss  |
sqrtss    |
maxss     |
minsd     |
sqrtsd    |
minss     |
cvttps2dq |
decq      |
subpd     |
addpd     |
paddq     |
imulq     |
paddd     |
paddb     |
psubd     |
psubw     |
psubb     |
mulpd     |
unpckhpd  |
addps     |
mulps     |
divpd     |
divps     |
cqto      |
incb      |
psubusw                               return arithmop;




and   |
andb  |
or    |
xor   |
pxor  |
not   |
andl  |
notl  |
orw   |
xorb  |
xorl  |
sahf  |
andw  |
notb  |
notw  |
xorpd |
xorps |
andq  |
xorq  |
andps |
andnps |
orps   |
andpd  |
notq   |
andnpd |
orpd   |
pand   |
por    |
pandn                                        return logicop;      



rol    |
shl    |
shr    |
shld   |
shrd   |
shrl   |
ror    |
rorl   |
sal    |
sar    |
shll   |
roll   |
shrb   |
shlb   |
sarl   |
rolw   |
shlw   |
sarw   |
shrw   |
shlq   |
shrq   |
pshufd |
shufps |
shufpd |
psllw  |
pslld  |
psllq  |
psraw  |
psrad  |
pslldq |
psrldq |
psrld  |
pshuflw                                return rolop;       



mov    |
xchg   |
lea    |
movsx  |
movsd  |
movl   |
fldl   |
movzbl |
movzbw |
movsw  |
movapd |
movslq |
movq   |
movabs |
movsbq |
movw   |
movzx  |
movaps |
fld    |
fstp   |
cmovae |
cmove  |
cmovne |
movss  |
cmovbe |
cmovb  |
cmovs  |
cmova  |
cmovns |
movb   |
movzwl |
movswl |
movsbl |
movsbw |
fldt   |
fstpt  |
orl    |
orb    |
movsb  |
fnstcw |
fldcw  |
fldz   |
repz   |
repe   |
fstpl  |
repnz  |
rep    |
fnstsw |
cmovle |
cmovg  |
cmovl  |
fildll |
flds   |
fildl  |
fld1   |
fdivp  |
fstl   |
fistpl |
fild   |
fsub   |
fdivs  |
fistpll |
fdivrp  |
cmovge  |
fcmovbe |
fsubp   |
fistl   |
fsubrp  |
fsubrl  |
cwtl    |
fsubrs  |
fstps   |
fsubs   |
fsubr   |
fsts    |
fsubl   |
fcmovnbe |
fcmove   |
fcmovne  |
fcmovb   |
fistp    |
fcmovnb  |
cmovnp   |
stos     |
stosb    |
stosw    |
stosd    |
fist     |
ffree    |
movswq   |
orq      |
movdqu   |
movdqa   |
movups   |
movd     |
movhlps  |
movlhps  |
movupd   |
punpckhqdq |
punpckldq  |
punpcklbw  |
pinsrw     |
pextrw     |
punpcklqdq |
punpcklwd  |
movhpd     |
movlpd     |
lahf       |
sahf                                            return assignop;





cmp    |
cmpq   |
test   |
cmpl   |
cmpb   |
cmpw   |
testb  |
testl  |
cmpsb  |
bt     |
testw  |
cmpnless |
cmpltss  |
cmpnltss |
testq    |
cmpnltsd |
pcmpgtd  |
pcmpgtb  |
pcmpeqd  |
cmpltsd  |
pcmpeqw  |
cmpeqss                             return  compareop;




seta    |
setae   |
setb    |
setbe   |
setc    |
setnbe  |
setnc   |
setng   |
setne   |
sete    |
setnp   |
setge   |
setg    |
setle   |
setl    |
setp    |
setns   |
sets                                return  setop;




nop     |
hlt     |
nopw    |
nopl    |
ud2                                return otherop;




jmp   |
jne   |
je    |
jb    |
jnae  |
jnp   |
jc    |
jnb   |
jae   |
jnc   |
jbe   |
jna   |
ja    |
jnbe  |
jl    |
jnge  |
jge   |
jnl   |
jle   |
jng   |
jg    |
jnle  |
js    |
jns   |
jp    |
jmpq                           return jumpop;




loop   |
loope  |
loopne                        return loopop;



cld    |
cltd   |
cltq                          return flagop;


scas   |
movsl  |
movsb  |
cmpsw  |
cmpsb  |
movsq  |
pop                          return assistop;




rax |
rbx |
rcx |
rdx |
rdi |
rsi |
eax |
ebx |
ecx |
edx |
edi |
esi |
ax  |
bx  |
cx  |
dx  |
al  |
bl  |
cl  |
dl  |
ah  |
bh  |
ch  |
dh                            return commonreg;



specialreg
r8   |
r9   |
r10  |
r11  |
r12  |
r13  |
r14  |
r15  |
r8d  |
r9d  |
r10d |
r11d |
r12d |
r13d |
r14d |
r15d |
r8w  |
r9w  |
r10w |
r11w |
r12w |
r13w |
r14w |
r15w |
r8b  |
r9b  |
r10b |
r11b |
r12b |
r13b |
r14b |
r15b |
xmm0 |
xmm1                              return specialreg;






rbp   |
rsp   |
esp   |
ebp                              return stackreg;



eip   |
rip                              return pcreg;



eiz                              return  otherreg;


qword   |
dword   |
word    |
tbyte   |
byte                             return ptrtyp;





mathadd   |
mathsub                         return mathop;



fs  |
gs  |
cs  |
ss  |
ds  |
es                               return seg;



ret_type   |
indirect   |
direct_call  |
direct_jmp_inter |
direct_jmp_intra |
cond_jmp_inter   |
cond_jmp_intra                  return jmp_type;




before |
after                          return instrument_direct;




                            










           

    




