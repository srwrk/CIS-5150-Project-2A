%
% Function to compute k steps of the Haar wavelet transform
%
function c = haar_step(u, k)
    n = length(u);
    c = u;
    step = 1;
    for round = 1:k
        for i = 1:2*step:n
            avg = (c(i) + c(i+step)) / 2;
            diff = (c(i) - c(i+step)) / 2;
            c(i) = avg;
            c(i+step) = diff;
        end
        step = step * 2;
    end
end
