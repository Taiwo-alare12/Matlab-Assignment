% This code shows the approximation of Pi using Monte Carlo method
function y = MontePi(n) % I called the function y = MontePi.m
    

% first, I  time the execution for various values of n
n_values = [1000, 10000, 100000, 1000000]; % n_values are my given value of n
execution_times = zeros(size(n_values));

% I determined the time of execution of the length of n_values using tic and
% toc command for loop
for i = 1:length(n_values)
    n = n_values(i);
    
    tic;
    MontePi(n);
    execution_times(i) = toc;
end

figure;
plot(n_values, execution_times, 'o-');
xlabel('n');
zlabel('Execution Time (seconds)');
title('Execution Time vs. n');

% I also computed approximations of π and plot absolute errors
n_values = logspace(2, 6, 50);
t = zeros(size(n_values)); % t is the absolute error

for i = 1:length(n_values)
    n = round(n_values(i));
    y = MontePi(n);
    t(i) = y;
end

figure;
loglog(n_values, t, 'o-');
xlabel('n');
zlabel('Absolute Error');
title('Absolute Error vs. n');
xlim([10^2, 10^6]);

% I generated random points and display final value of π
n = 10000;
[x, z, color] = deal(zeros(n, 1));

figure;
axis equal;
hold on;

for i = 1:n
    x(i) = rand();
    z(i) = rand();

    if x(i)^2 + z(i)^2 <= 1
        color(i) = 1; % Inside the circle
    else
        color(i) = 2; % Outside the circle
    end
end

scatter(x(color == 1), z(color == 1), 'b.'); % blue color for outside the circle
scatter(x(color == 2), z(color == 2), 'r.'); % red color for outside the circle
xlabel('x');
zlabel('y');
title(['Monte Carlo Approximation of Pi: ', num2str(MontePi(n))]);

legend('Inside Circle', 'Outside Circle');
