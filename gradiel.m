function gradt = gradiel(q,delta,lamda);
    for i = 1:length(lamda)
        gradt (i) = q/(pi*lamda(i))
    end
end
