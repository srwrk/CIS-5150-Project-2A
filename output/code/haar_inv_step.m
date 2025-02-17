
% Function to compute the inverse of k steps of the Haar wavelet transform
function u = haar_inv_step(c, k)
    n = length(c) / (2^(k-1));
    u = c;
    for step = 1:k
        temp = u;
        for i = 1:n/2
            avg = temp(i);
            diff = temp(n/2+i);
            u(2*i-1) = avg + diff;
            u(2*i) = avg - diff;
        end
        n = n * 2;
    end
end
