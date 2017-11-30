% e(""). esquina(,L,Acc):-e(L).

e1("URU\'R\'").
esquina(f,3,t,6,L,Acc):-e1(L).
e2("y\'U\'R\'UR").
esquina(r,1,f,2,L,Acc):-e2(L).
e3("y\'R\'U\'R").
esquina(f,3,l,2,L,Acc):-e3(L).
e4("RUR\'").

esquina(r,1,t,2,L,Acc):-e4(L).
e5("U\'RUR\'U2RU\'R\'").
esquina(f,3,t,2,L,Acc):-e5(L).
e6("dR\'U\'RUUR\'UR").
esquina(r,1,l,2,L,Acc):-e6(L).
e7("U\'RUUR\'UURU\'R\'").
esquina(f,3,t,4,L,Acc):-e7(L).
e8("dR\'UURUUR\'UR").
esquina(r,1,b,2,L,Acc):-e8(L).

e9("R\'U\'RU\'R\'U\'R").
esquina(f,3,b,2,L,Acc):-e9(L).
e10("U\'RUR\'URUR\'").
esquina(r,1,t,4,L,Acc):-e10(L).
e11("U\'RUUR\'dR'U'R").
esquina(f,3,r,2,L,Acc):-e11(L).
e12("dR\'UURd\'RUR\'").
esquina(r,1,t,8,L,Acc):-e12(L).
e13("dR\'URU\'R\'U\'R").
esquina(f,3,f,2,L,Acc):-e13(L).
e14("U\'RU\'R\'URUR\'").
esquina(r,1,t,4,L,Acc):-e14(L).

e15("y\'R\'URU\'d\'RUR\'").
esquina(f,3,t,8,L,Acc):-e15(L).
e16("RU\'R\'dR\'U\'R").
esquina(r,1,r,2,L,Acc):-e16(L).
e17("RUUR\'U\'RUR\'").
esquina(t,9,t,6,L,Acc):-e17(L).
e18("y\'R\'UURUR\'U\'R").
esquina(t,9,f,2,L,Acc):-e18(L).

e19("URUUR\'URU\'R\'").
esquina(t,9,t,2,L,Acc):-e19(L).
e20("y\'U\'R\'UURU\'R\'UR").
esquina(t,9,l,2,L,Acc):-e20(L).
e21("UURUR\'URU\'R\'").
esquina(t,9,t,4,L,Acc):-e21(L).
e22("y\'UUR\'U\'RU\'R\'UR").
esquina(t,9,b,2,L,Acc):-e22(L).

e23("RUR\'U\'U\'RUR\'U\'RUR\'").
esquina(t,9,t,8,L,Acc):-e23(L).
e24("y\'R\'U\'RUUR\'U\'RUR\'U\'R").
esquina(t,9,r,2,L,Acc):-e24(L).

e25("d\'L\'ULdRU\'R\'"). 
esquina(b,3,t,6,L,Acc):-e25(L).
e26("URU\'R\'d\'L\'UL"). 
esquina(b,3,f,2,L,Acc):-e26(L).
e27("RU\'R\'URU\'R\'"). 
esquina(f,9,f,2,L,Acc):-e27(L).
e28("y\'R\'URU\'R\'UR"). 
esquina(r,7,f,2,L,Acc):-e28(L).
e29("y\'R\'U\'RUR\'U\'R"). 
esquina(f,9,f,2,L,Acc):-e2(L).
e30("RUR\'U\'RUR\'"). 
esquina(r,7,t,6,L,Acc):-e30(L).

e31("RU\'R\'dR\'UR"). 
esquina(t,9,r,4,L,Acc):-e31(L).
e32("RUR\'U\'RUR\'U\'RUR\'"). 
esquina(t,9,f,6,L,Acc):-e32(L).
e33("U\'RU\'R\'UURU\'R\'"). 
esquina(f,3,f,6,L,Acc):-e33(L).
e34("U\'RUUR\'URUR\'"). 
esquina(r,1,f,6,L,Acc):-e34(L).
e35("U\'RUR\'dR\'U\'R"). 
esquina(f,3,r,4,L,Acc):-e35(L).
e36("dR\'U\'Rd\'RUR\'"). 
esquina(r,1,r,4,L,Acc):-e36(L).

e37("Solved Pair"). 
esquina(d,3,f,6,L,Acc):-e37(L).
e38("RU\'R\'dR\'UURUUR\'UR"). 
esquina(d,3,r,4,L,Acc):-e38(L).
e39("RU\'R\'U\'RUR\'UURU\'R\'"). 
esquina(f,9,f,6,L,Acc):-e39(L).
e40("RU\'R\'URUUR\'URU\'R\'"). 
esquina(r,7,f,6,L,Acc):-e40(L).
e41("RU\'R\'dR\'U\'RU\'R\'U\'R"). 
esquina(f,9,r,4,L,Acc):-e41(L).
e42("RU\'R\'ddyR\'U\'RU\'R\'UR"). 
esquina(r,7,r,4,L,Acc):-e42(L).



e(A,B,C,D):-esquina(A,B,C,D).
esquina(A,B,C,D):-esquina(A,B,C,D,L),write(L).
esquina(C,N,D,M,L):-esquina(C,N,D,M,L,0).

esquina(C,N,D,M,L,Acc):-
% write('\n'),write(C),write(N),write(D),write(M),
				Acc<3,
				girar(C,N,C1,N1),
				girar(D,M,D1,M1),
% write('\n'),write(C1),write(N1),write(D1),write(M1),
				write('U+'),
				Acc1 is Acc+1,
				esquina(C1,N1,D1,M1,L,Acc1).


girar(t,1,A,B):-A=t,B=3.
girar(t,2,A,B):-A=t,B=6.
girar(t,3,A,B):-A=t,B=9.
girar(t,4,A,B):-A=t,B=2.
girar(t,5,A,B):-A=t,B=5.
girar(t,6,A,B):-A=t,B=8.
girar(t,7,A,B):-A=t,B=1.
girar(t,8,A,B):-A=t,B=4.
girar(t,9,A,B):-A=t,B=7.

girar(f,6,A,B):-A=f,B=6.
girar(r,4,A,B):-A=r,B=4.

girar(f,X,A,B):- X\==6,A=l,B=X.
girar(l,X,A,B):-A=b,B=X.
girar(b,X,A,B):-A=r,B=X.
girar(r,X,A,B):-X\==4,A=f,B=X.














