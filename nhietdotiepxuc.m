function ttx = nhietdotiepxuc(q,t1,R)
ttx(1) = t1-q*R(1);
for i = 2:length(R)
ttx(i) = ttx(i-1)-q*R(i);
end