%gama distribution 
p=512;
q=512;
for M=1:20
    
N = gamrnd(M,1/M,[p q]);
N=reshape(N,[],1);
a=max(max(N));
N=N/a;

k=histogram(N);
xlim([0 0.5]);

end