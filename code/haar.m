%
% Function to compute the Haar wavelet transform of a sequence u of length 2^n
%
function c = haar(u)
    n = length(u);
    c = u;
    step = 1;
    while step < n
        for i = 1:2*step:n
            avg = (c(i) + c(i+step)) / 2;
            diff = (c(i) - c(i+step)) / 2;
            c(i) = avg;
            c(i+step) = diff;
        end
        step = step * 2;
    end
end