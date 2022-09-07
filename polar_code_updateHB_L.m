function HB = polar_code_updateHB_L(n,N,stage,LLR,HB,AC)
%update the HB
%output:the estimated hard bits
Ns=2^(n-stage+1);
for j=1:Ns:N
    for i=j:j+Ns/2-1
        if(stage==n && ismember(i,AC))
            HB(i,stage+1)=0;
        else
            if(LLR(i,stage+1)>=0)
                HB(i,stage+1)=0;
            else
                HB(i,stage+1)=1;
            end
        end
    end
end