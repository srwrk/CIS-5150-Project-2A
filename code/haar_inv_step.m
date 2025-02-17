%
% Function to compute the inverse of k steps of the Haar wavelet transform
%
function u = haar_inv_step(c, k)
    n = length(c);
    u = c;
    
    step = 2^(k-1); % Start with the largest step size used in haar_step

    for round = 1:k
        for i = 1:2*step:n
            avg = u(i);
            diff = u(i+step);
            u(i) = avg + diff;
            u(i+step) = avg - diff;
        end
        step = step / 2; % Reduce step size to match haar_step progression
    end
end