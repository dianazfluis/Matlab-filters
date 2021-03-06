function [x,y] = gauge_signal(L,n,Wn,noiseLevel)
%second order response with Wn normalized cut
% L length heaviside, n delay
x = [zeros(n,1)',ones(L-n,1)'];
y = lp_filter_resp(x,2,Wn) + randn(1,length(x)) * noiseLevel;
end