load('sar_patch5_4.mat');  %load image patch
im=reshape(Y,[],1); 
i=max(max(im));


k=im/i;

%histogram(k);
%xlim([0 0.3]);
%ylim([0 5000]);

s=log(k);
m=zeros(262144,1);
for z=1:262144
    m(z,1)=z;
end
p = polyfit(s,m,1);
%%%%%%%%%%%%%%%%%%%%%
n=log(m);
term1=m.*s;
term2=s.*s;
term3=s.*n;
term4=n.*m;

z1=m.*m;
z2=n.*n;

gama1= sum(z1)*sum(z2);
gama2= sum(term4);
gama= gama1-(gama2*gama2);


alpha1= (sum(term1)*sum(term2.*term2))/gama;
alpha2= (sum(term3)*sum(term4))/gama;
alpha= alpha2-alpha1;

n1=(sum(m.*m)*sum(s.*n))/gama;
n2=(sum(m.*s)*sum(m.*n))/gama;

N=n1-n2;


