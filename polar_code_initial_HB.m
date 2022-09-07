function HB = polar_code_initial_HB(n,N,LLR)
%output:estimated hard bits
%only the first ап
HB = zeros(N,n+1);
for i=1:N
    if(LLR(i,1)>=0)
        HB(i,1)=0;
    else
        HB(i,1)=1;
    end
end
end