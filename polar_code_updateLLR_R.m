function LLR=polar_code_updateLLR_R(n,N,LLR,stage,HB)
% output:
%   LLR: log-likelihood ratio
Ns=2^(n-stage+1);
for j=1:Ns:N
    for i=j:j+Ns/2-1
        p=LLR(i,stage);
        q=LLR(i+Ns/2,stage);
        LLR(i+Ns/2,stage+1)=p*(1-2*HB(i,stage+1))+q;
    end
end
end
