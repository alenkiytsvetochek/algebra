n=input('Enter a composite number: ');
p=2;
i=2;
k=1;
d(1)=gcd(p-1,n);
d1(k)=n/d(k);
while gcd(p-1,n)==1
    p=rem(p^i,n);
    i=i+1;
    d(k)=gcd(p-1,n);
    d1(k)=n/d(k);
    if isprime(d1(k))==true && isprime(d(k))==true
    break;
    elseif isprime(d(k))==true && isprime(d1(k))==false
        n=d1(k);
        k=k+1;
        p=2;
        i=2;
    end
end
disp(d)
disp(d1)