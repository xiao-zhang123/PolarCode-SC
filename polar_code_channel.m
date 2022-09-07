function y =polar_code_channel(N,x,snr)
%output:codeword
y=zeros(1,N);
%bpsk
for i=1:N
    if(x(i)==0)
        y(i)=1;
    else
        y(i)=-1;
    end
end
%AWGN
y=awgn(y,snr);
end
