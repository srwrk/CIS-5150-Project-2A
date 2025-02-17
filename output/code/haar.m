% Function to compute the Haar wavelet transform of a sequence u of length 2^n
function c = haar(u)
    n = length(u);
    c = u;
    step = n;
    while step > 1
        step = step / 2;
        temp = c;
        for i = 1:step
            avg = (temp(2*i-1) + temp(2*i)) / 2;
            diff = (temp(2*i-1) - temp(2*i)) / 2;
            c(i) = avg;
            c(step + i) = diff;
        end
    end
end