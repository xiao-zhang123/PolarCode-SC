clc
clear
N=8;
n=log2(N);
A=[4 6 7 8];
u_A=[1 1 0 0];
AC=[1 2 3 5];
u_AC=[0 0 0 0];
X=[0 0 0 1 0 1 0 1];
S=encode(N,X);
snr=6;
y=polar_code_channel(N,S,snr);
y=y.*(4.*10.^(snr/10));%×ª»¯ÎªLLR
u_e=polar_code_decode(n,N,y,AC);
u_e=bitrevorder(u_e);
if(length(find(X-u_e))==0)
    disp('correct');
else
    disp('error');
end