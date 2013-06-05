function [e,C] = test_error_kkflats(F,Ktest,K,C_,k,D) %testing error and assignment vector for the testing set
	[DC]=distance_centers_test(C_,K,k,Ktest,D);
	[LP] = length_proj_test(F,Ktest,C_,k,D);
	Di = DC-LP;
	[mind2,C] = min(Di,[],1);
	e=mean(mind2);
	C=C';
end





