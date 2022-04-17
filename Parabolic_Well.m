e=1;
eps=10;
eps0=8.85*10^(-12);
Nd=10^24*((18897259886)^-3);
P=4*pi*Nd/10;
% a=5*10^-9*18897259886;    %J
% b=8*10^(-9)*18897259886;
% c=9*10^-9*18897259886;
% o=12*10^-9*18897259886;
% B=13*10^-9*18897259886;
% A=16*10^-9*18897259886;
% R=21*10^-9*18897259886;
a=95;  %a.u.
b=150;
c=170;
o=225;
B=245;
A=300;
R=395;
y=0;
syms m n q p f g v w k s Q z l h;
f1=m*y+n==0;
f2=m*a+n-P*a^2-q*a-p==0;
f3=m-P*a*2-q==0;
f4=P*b^2+q*b+p-f*b-g==0;
f5=P*b*2+q-f==0;
f6=f*c+g+P*c^2-v*c-w==0;
f7=f+P*c*2-v==0;
f8=-P*o^2+v*o+w-k*o-s==0;
f9=-P*o*2+v-k==0;
f10=k*B+s-P*B^2-Q*B-z==0;
f11=k-P*B*2-Q==0;
f12=P*A^2+Q*A+z-l*A-h==0;
f13=P*A*2+Q-l==0;
f14=l*R+h==0;

%(50*10^6*0.036749405469679)

[m, n, q, p, f, g, v, w, k, s, Q, z, l, h]=solve([f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14],[m, n, q, p, f, g, v, w, k, s, Q, z, l, h]);

syms x;

fsiI1(x)=m*x+n;
fsiN1(x)=P*x^2+q*x+p;
fsiI2(x)=f*x+g;
fsiP(x)=-P*x^2+v*x+w;
fsiI3(x)=k*x+s;
fsiN2(x)=P*x^2+Q*x+z;
fsiI4(x)=l*x+h;

figure(1)
fplot(fsiI1, [0 a])
% xlim([min(0),max(500)])
% ylim([min(-6*10^6),max(1*10^6)])
hold on
fplot(fsiN1, [a b])
fplot(fsiI2, [b c])
fplot(fsiP, [c o])
fplot(fsiI3, [o B])
fplot(fsiN2, [B A])
fplot(fsiI4, [A R])
hold off
grid
