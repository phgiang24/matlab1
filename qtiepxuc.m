function q = qtiepxuc(qL,d1,delta)
    d(1) = d1;
    for i = 1:length(delta),
    d(i+1) = d(i)+2*delta(i);
    q(i)=qL/(pi*d(i));
    end
end