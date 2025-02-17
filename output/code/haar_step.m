
% Function to compute k steps of the Haar wavelet transform
function c = haar_step(u, k)
    n = length(u);
    c = u;
    for step = 1:k
        n = n / 2;
        temp = c;
        for i = 1:n
            avg = (temp(2*i-1) + temp(2*i)) / 2;
            diff = (temp(2*i-1) - temp(2*i)) / 2;
            c(i) = avg;
            c(n+i) = diff;
        end
    end
end