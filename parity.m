x = [2 4 1 3];
y = eye(numel(x));
sign = det( y(:,x));
if (sign == 1)
    input('Parity');
else
    input('Odd');
end