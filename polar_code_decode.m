function u_e=polar_code_decode(n,N,y,AC)
%   polar code successive cancellation encoder
%   u_e: estimate of codeword
LLR=polar_code_initial_LLR(n,N,y);
HB =polar_code_initial_HB(n,N,LLR);
for stage=1:n
    LLR=polar_code_updateLLR_L(n,N,LLR,stage);
    HB=polar_code_updateHB_L(n,N,stage,LLR,HB,AC);
    LLR=polar_code_updateLLR_R(n,N,LLR,stage,HB);
    HB=polar_code_updateHB_R(n,N,stage,LLR,HB,AC);
end
u_e = HB(:,n+1)'; % '符号表示矩阵的转置
end