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
				Acc<3,
				girar(C,N,C1,N1),
				girar(D,M,D1,M1),
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


girar(t,A):- A=t.
girar(b,A):- A=r.
girar(r,A):- A=f.
girar(f,A):- A=l.
girar(l,A):- A=b.




top(A,B,C,D,E,F,G,H,I):-top(A,B,C,D,E,F,G,H,I,0).

top(b,t,r,t,t,t,t,t,f,Acc):-	Acc<4, 
				write("RUR\'URUUR\'").
top(b,t,t,t,t,t,f,t,r,Acc):-	Acc<4, 
				write("RUUR\'U\'RU\'R\'").
top(l,t,b,t,t,t,l,t,f,Acc):-	Acc<4, 
				write("fRUR\'U\'f\'FRUR\'U\'F\'").
top(b,t,b,t,t,t,f,t,f,Acc):-	Acc<4, 
				write("FRUR\'U\'RUR\'U\'RUR\'U\'F\'").
top(b,t,t,t,t,t,f,t,t,Acc):-	Acc<4, 
				write("rUR\'U\'r\'FRF\'").
top(l,t,t,t,t,t,t,t,f,Acc):-	Acc<4, 
				write("F\'rUR\'U\'r\'FR").
top(t,t,t,t,t,t,f,t,f,Acc):-	Acc<4, 
				write("RRDR\'UURD\'R\'UUR\'").
top(t,t,t,t,t,t,t,t,t,Acc):-	Acc<4, 
				write("Solved").
%E1-E2
top(t,b,t,t,t,t,t,f,t,Acc):-	Acc<4, 
				write("RUR\'U\'M\'URU\'r\'").
top(t,b,t,l,t,t,t,t,t,Acc):-	Acc<4, 
				write("M\'UMUUM\'UM").
%P1-P4
top(l,b,t,l,t,t,l,t,t,Acc):-	Acc<4, 
				write("fRUR\'U\'f\'").
top(t,b,r,t,t,r,t,t,r,Acc):-	Acc<4, 
				write("f\'L\'U\'LUf").
top(b,b,t,l,t,t,f,t,t,Acc):-	Acc<4, 
				write("RUB\'U\'R\'URBR\'").
top(b,t,t,l,t,t,f,f,t,Acc):-	Acc<4, 
				write("R\'U\'FURU\'R\'F\'R").
%W1-W2
top(b,t,t,t,t,r,t,f,r,Acc):-	Acc<4, 
				write("RUR\'URU\'R\'U\'R\'FRF\'").
top(t,t,b,l,t,t,l,f,t,Acc):-	Acc<4, 
				write("L\'U\'LU\'L\'ULULF\'L\'F").
%S1-S2
top(l,t,t,l,t,t,f,f,r,Acc):-	Acc<4, 
				write("rUUR\'U\'RU\'r\'").
top(b,b,r,l,t,t,l,t,t,Acc):-	Acc<4, 
				write("r\'UURUR\'Ur").
%L1-L6
top(l,t,b,t,t,r,l,f,f,Acc):-	Acc<4, 
				write("FRUR\'U\'RUR\'U\'F\'").
top(b,t,r,l,t,t,f,f,r,Acc):-	Acc<4, 
				write("F\'L\'U\'LUL\'U\'LUF").
top(l,t,r,t,t,r,l,f,r,Acc):-	Acc<4, 
				write("l\'U\'LU\'L\'ULU\'L\'UUl").
top(l,t,r,l,t,t,l,f,r,Acc):-	Acc<4, 
				write("rUR\'URU\'R\'URUUr\'").
top(l,t,b,l,t,t,l,f,f,Acc):-	Acc<4, 
				write("R\'FR\'F\'RRUUyR\'FRF\'").
top(b,t,r,t,t,r,f,f,r,Acc):-	Acc<4, 
				write("R\'FRRB\'RRF\'RRBR\'").
%F1-F4
top(l,t,b,t,t,r,f,f,t,Acc):-	Acc<4, 
				write("RUR\'U\'R\'FRRUR\'U\'F\'").
top(b,b,t,t,t,r,l,t,f,Acc):-	Acc<4, 
				write("RUR\'UR\'FRF\'RUUR\'").
top(t,b,r,l,t,t,f,t,t,Acc):-	Acc<4, 
				write("RUUR\'R\'FRF\'RUUR\'").
top(t,t,r,t,t,r,f,f,t,Acc):-	Acc<4, 
				write("FRU\'R\'U\'RUR\'F\'").
%A1-A4
top(t,b,t,l,t,t,l,t,r,Acc):-	Acc<4, 
				write("RRUR\'B\'RU\'RRURBR\'").
top(b,t,t,t,t,r,f,f,t,Acc):-	Acc<4, 
				write("RUR\'U\'RU\'R\'F\'U\'FRUR\'").
top(b,t,b,t,t,r,t,f,t,Acc):-	Acc<4, 
				write("RUR\'URUUR\'FRUR\'U\'F\'").
top(l,t,t,t,t,r,l,f,t,Acc):-	Acc<4, 
				write("R\'UURUR\'URyFRUR\'U\'F\'").
%L1-L6
top(b,t,r,t,t,r,t,f,f,Acc):-	Acc<4, 
				write("rUR\'URUUr\'").
top(t,b,b,t,t,r,f,t,r,Acc):-	Acc<4, 
				write("r\'U\'RU\'R\'UUr").
top(t,b,r,t,t,r,l,t,f,Acc):-	Acc<4, 
				write("RB\'R\'U\'RUBU\'R\'").
top(l,b,t,l,t,t,f,t,r,Acc):-	Acc<4, 
				write("FRUR\'U\'F\'UFRUR\'U\'F\'").
top(l,b,t,t,t,t,l,f,t,Acc):-	Acc<4, 
				write("FRUR\'U\'F\'").
top(t,b,b,t,t,t,l,f,t,Acc):-	Acc<4, 
				write("R\'FRUR\'U\'F\'UR").
%T1-T2
top(l,b,t,t,t,t,l,f,t,Acc):-	Acc<4, 
				write("FRUR\'U\'F\'").
top(b,b,t,t,t,t,f,f,t,Acc):-	Acc<4, 
				write("RUR\'U\'R\'FRF\'").
&C1-C2
top(t,t,r,l,t,r,t,t,r,Acc):-	Acc<4, 
				write("R\'U\'R\'FRF\'UR").
top(l,b,r,t,t,t,t,f,t,Acc):-	Acc<4, 
				write("RURRU\'R\'FRURU\'F\'").
&I1-I4
top(l,t,r,l,t,r,l,t,r,Acc):-	Acc<4, 
				write("R\'UURRUR\'URUUx\'U\'R\'U").
top(b,t,r,l,t,r,f,t,r,Acc):-	Acc<4, 
				write("RUR\'URd\'RU\'R\'F\'").
top(l,b,r,t,t,t,l,f,r,Acc):-	Acc<4, 
				write("FRUR\'U\'RF\'rUR\'U\'r\'").
top(l,b,b,t,t,t,l,f,f,Acc):-	Acc<4, 
				write("fRUR\'U\'RUR\'U\'f\'").
%K1-K4
top(l,b,t,t,t,t,f,f,r,Acc):-	Acc<4, 
				write("rUr\'RUR\'U\'rU\'r\'").
top(t,b,r,t,t,t,l,f,f,Acc):-	Acc<4,				write("l\'U\'lL\'U\'LUl\'Ul").
top(b,b,r,t,t,t,t,f,f,Acc):-	Acc<4,				write("FURU\'RRF\'RURU\'R\'").
top(l,b,b,t,t,t,f,f,t,Acc):-	Acc<4,				write("R\'FRUR\'F\'Ry\'RU\'R\'").
%O1-O8
top(l,b,r,l,t,r,l,f,r,Acc):-	Acc<4,				write("RUUR\'R\'FRF\'UUR\'FRF\'").
top(l,b,b,l,t,r,l,f,f,Acc):-	Acc<4,				write("FRUR\'U\'F\'fRUR\'U\'f\'").
top(b,b,r,l,t,r,l,f,t,Acc):-	Acc<4,				write("fRUR\'U\'f\'U\'FRUR\'U\'F\'").
top(l,b,t,l,t,r,f,f,r,Acc):-	Acc<4,				write("fRUR\'U\'f\'UFRUR\'U\'F\'").
top(b,b,b,l,t,r,t,f,t,Acc):-	Acc<4,				write("FRUR\'UF\'y\'UUR\'FRF\'").
top(t,b,t,l,t,r,l,f,r,Acc):-	Acc<4,				write("MURUR\'U\'M\'R\'FRF\'").
top(t,b,b,l,t,r,l,f,t,Acc):-	Acc<4,				write("RUR\'UR\'FRF\'UUR\'FRF\'").
top(t,b,t,l,t,r,t,f,t,Acc):-	Acc<4,				write("MURUR\'U\'MMURU\'r\'").




top(A,B,C,D,E,F,G,H,I,Acc):-	Acc1 is Acc+1,
				Acc1 < 4,
				girar(A,A2),
				girar(B,B2),
				girar(C,C2),
				girar(D,D2),
				girar(F,F2),
				girar(G,G2),
				girar(H,H2),
				girar(I,I2),
				write("U+"),
				top(G2,D2,A2,H2,E,B2,I2,F2,C2,Acc1).









