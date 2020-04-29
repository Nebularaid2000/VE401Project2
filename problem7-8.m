B = zeros(4938,1);
B1=zeros(272,1);
for i=1:4938
    B(i,1)=str2num(A(i,1));
end
for i=1:272
    B1(i,1)=str2num(A1(4938+i,1));
end
C=zeros(365,1);
C1=zeros(109,1);
for i=1:12
if i==1
  for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m,1)=C(m,1)+1;
      end
  end
elseif i==2
for j=1:4938
n=floor(B(j,1)/100);
if n==i
      m=B(j,1)-n*100;
if m~=29
    C(m+31,1)=C(m+31,1)+1;
end
end
end
elseif i==3
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+59,1)=C(m+59,1)+1;
      end
        end
elseif i==4
           for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+90,1)=C(m+90,1)+1;
      end
           end
elseif i==5
    for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+120,1)=C(m+120,1)+1;
      end
  end
elseif i==6
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+151,1)=C(m+151,1)+1;
      end
        end
  elseif i==7
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+181,1)=C(m+181,1)+1;
      end
        end
  elseif i==8
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+212,1)=C(m+212,1)+1;
      end
        end
  elseif i==9
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+243,1)=C(m+243,1)+1;
      end
        end
  elseif i==10
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+273,1)=C(m+273,1)+1;
      end
        end
  elseif i==11
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+304,1)=C(m+304,1)+1;
      end
        end
  elseif i==12
        for j=1:4938
      n=floor(B(j,1)/100);
      if n==i
      m=B(j,1)-n*100;
      C(m+334,1)=C(m+334,1)+1;
      end
  end
  end
end
Acc=zeros(366,1);
Acct=C;
for i=2:366
    for j=1:i-1
        Acc(i,1)=Acc(i,1)+Acct(j,1);
    end
end
LB=zeros(366,1);
for i=1:366
    LB(i,1)=ceil(Acc(i,1)*0.2-1.96*sqrt(0.2*1.2*Acc(i,1)));
end
UB=zeros(366,1);
for i=1:366
    UB(i,1)=floor(Acc(i,1)*0.2+1.96*sqrt(0.2*1.2*Acc(i,1)));
end
EP=zeros(366,1);
for i=1:366
    EP(i,1)=round(Acc(i,1)*0.2);
end
DAY=[1:366];
plot(DAY,LB);
hold on;
plot(DAY,UB);
hold on;
plot(DAY,EP);
hold off;
fid=fopen('D:\Assignments\VE401\2020.dat','w');
for i=1:366
    if i<366
        fprintf(fid,'%g\t',LB(i,1));
    else
        fprintf(fid,'%g\n',LB(i,1));
    end
end
for i=1:366
    if i<366
        fprintf(fid,'%g\t',UB(i,1));
    else
        fprintf(fid,'%g\n',UB(i,1));
    end
end
for i=1:366
    if i<366
        fprintf(fid,'%g\t',EP(i,1));
    else
        fprintf(fid,'%g\n',EP(i,1));
    end
end
for i=1:4
if i==1
  for j=1:272
      n=floor(B1(j,1)/100);
      if n==i
      m=B1(j,1)-n*100;
      C1(m,1)=C1(m,1)+1;
      end
  end
elseif i==2
for j=1:272
n=floor(B1(j,1)/100);
if n==i
      m=B1(j,1)-n*100;
if m~=29
    C1(m+31,1)=C1(m+31,1)+1;
end
end
end
elseif i==3
        for j=1:272
      n=floor(B1(j,1)/100);
      if n==i
      m=B1(j,1)-n*100;
      C1(m+59,1)=C1(m+59,1)+1;
      end
        end
elseif i==4
           for j=1:272
      n=floor(B1(j,1)/100);
      if n==i
      m=B1(j,1)-n*100;
      C1(m+90,1)=C1(m+90,1)+1;
      end
           end
end
end
Acc1=zeros(110,1);
Acct1=C1;
for i=2:110
    for j=1:i-1
        Acc1(i,1)=Acc1(i,1)+Acct1(j,1);
    end
end
fid=fopen('D:\Assignments\VE401\419.dat','w');
for i=1:110
    if i<110
        fprintf(fid,'%g\t',LB(i,1));
    else
        fprintf(fid,'%g\n',LB(i,1));
    end
end
for i=1:110
    if i<110
        fprintf(fid,'%g\t',UB(i,1));
    else
        fprintf(fid,'%g\n',UB(i,1));
    end
end
for i=1:110
    if i<110
        fprintf(fid,'%g\t',EP(i,1));
    else
        fprintf(fid,'%g\n',EP(i,1));
    end
end
for i=1:110
    if i<110
        fprintf(fid,'%g\t',Acc1(i,1));
    else
        fprintf(fid,'%g\n',Acc1(i,1));
    end
end