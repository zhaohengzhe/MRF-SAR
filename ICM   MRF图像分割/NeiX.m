function XN=NeiX(X)
[s,t,K]=size(X);
Xul=zeros(s,t,K);
Xul(2:s,2:t,:)=X(1:s-1,1:t-1,:);

Xu=zeros(s,t,K);
Xu(2:s,:,:)=X(1:s-1,:,:);

Xur=zeros(s,t,K);
Xur(2:s,1:t-1,:)=X(1:s-1,2:t,:);

Xr=zeros(s,t,K);
Xr(:,1:t-1,:)=X(:,2:t,:);

Xdr=zeros(s,t,K);
Xdr(1:s-1,1:t-1,:)=X(2:s,2:t,:);

Xd=zeros(s,t,K);
Xd(1:s-1,:,:)=X(2:s,:,:);

Xdl=zeros(s,t,K);
Xdl(1:s-1,2:t,:)=X(2:s,1:t-1,:);

Xl=zeros(s,t,K);
Xl(:,2:t,:)=X(:,1:t-1,:);
XN=cat(3,Xul,Xu,Xur,Xr,Xdr,Xd,Xdl,Xl);
end