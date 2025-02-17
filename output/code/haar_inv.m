% Function to compute the inverse Haar wavelet transform
function u = haar_inv(c)
    n = 1;
    len = length(c);
    u = c;
    while 2*n <= len
        temp = u;
        for i = 1:n
            avg = temp(i);
            diff = temp(n+i);
            u(2*i-1) = avg + diff;
            u(2*i) = avg - diff;
        end
        n = n * 2;
    end
end