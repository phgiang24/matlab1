function R = nhiettro(barrier,lamda, delta)
switch barrier
case 'phang', R = delta./lamda
case 'tru', d1 = input('Duong kinh cua lop trong cung: '),
d(1) = d1
for i = 1:length(delta),
d(i+1) = d(i)+2*delta(i),
R(i) = 1/(2*pi*lamda(i))*log(d(i+1)/d(i)),
end
end