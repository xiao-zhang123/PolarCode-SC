function LLR=polar_code_updateLLR_L(n,N,LLR,stage)
%update LLR
Ns=2^(n-stage+1);
for j=1:Ns:N
    for i=j:j+Ns/2-1
        p=LLR(i,stage);    
        q=LLR(i+Ns/2,stage);
        LLR(i,stage+1)=sign(p)*sign(q)*min([abs(p),abs(q)]);
    end
end
end
        
        