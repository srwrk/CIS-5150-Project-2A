%
% Function to compute the inverse Haar wavelet transform
%
function u = haar_inv(c)
    n = length(c);
    u = c;
    step = n/2;
    while step >= 1
        for i = 1:2*step:n
            avg = u(i);
            diff = u(i+step);
            u(i) = avg + diff;
            u(i+step) = avg - diff;
        end
        step = step / 2;
    end
end