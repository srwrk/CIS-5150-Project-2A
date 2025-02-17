%
% Function to plot the piecewise linear function corresponding to a vector u
%
function drawplfn(u)
    n = length(u);
    x = linspace(0, 1, n+1);
    y = [u, u(end)];
    plot(x, y, '-o', 'LineWidth', 2);
    title('Piecewise Linear Function');
    xlabel('x');
    ylabel('plf(u)');
    grid on;
end
