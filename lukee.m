p=[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 91, 97, 101, 103, 107, 109, 113, 127];
k=randi([5 10]);
arr(1)=2;
deg(1)=20;
for i=2:1:k
    arr(i)=p(randi([1 32]));
    deg(i)=randi([18 25]);
end
elem=max(arr);
n=0;
for i=1:1:k
    n=n+arr(i)^deg(i);
end
%n
while((n>2^128)&&(n<2^123))
    k=randi([5 10]);
    arr(1)=2;
    deg(1)=20;
    for i=2:1:k
        arr(i)=p(randi([1 32]));
        deg(i)=randi([18 25]);
    end
    elem=max(arr);
    n=0;
    for i=1:1:k
     n=n+arr(i)^deg(i);
    end
    log2(n);
end
n=n+1;
s=0;
for a=2:1:ceil(log2(n))
    if(mod(a^(n-1),n)==1)
        ans=1;
        for i=1:1:k
            if(mod(a^((n-1)/p(i)),n)==1)
                ans=0;
            end
        end
        if(ans==1)
            s=a;
        end
    end
end

if(s~=0)
    disp(sym(n));
    disp(" It is prime");
else
   disp(sym(n));
   disp(" It is not prime");
end