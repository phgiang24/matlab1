function bai1
delta = input('Nhap ma tran gia tri do day (m): ');
lamda = input('Nhap ma tran co he so dan nhiet (W/m.k): ');
t1=input('Nhap gia tri nhiet do lop trong cung: ');
t2=input('Nhap gia tri nhiet do lop ngoai cung: ');
qL=input('Nhap nhiet luong cua dong: ');
d1=input('Nhap duong kinh lop trong cung: ');
% nhap 'phang' neu can tinh vach phang
% nhap 'tru' neu can tinh vach tru
barrier=input('Loai vach can tinh: ');
R = nhiettro(barrier,lamda,delta);
if strcmp(t1,'no')
    t1=t2+q/sum(R);
elseif strcmp(t2,'no')
    t2=t1-q/sum(R);
elseif strcmp(qL,'no')
    disp('Gia tri cua qL la :')
    qL=density(t1,t2,R);
end
disp('Mat do dong tai lop tiep xuc');
q = qtiepxuc(qL,d1,delta);
disp('Gia tri cua gradiel');
gradt = gradiel(q,lamda)