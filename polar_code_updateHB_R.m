function HB = polar_code_updateHB_R(n,N,stage,LLR,HB,AC)
%update the HB estimated hard bits
%output:the estimated hard bits
%stage: current processing stage
%   AC: frozen bit
Ns=2^(n-stage+1);
for j=1:Ns:N
    for i=j+Ns/2:j+Ns-1
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