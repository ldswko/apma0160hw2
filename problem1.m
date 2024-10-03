a = 5;
b = 3;
num_steps = 30;

p0_1 = 10;
p0_2 = 0.02;

p_vals1 = population_model(a, b, p0_1, num_steps);
p_vals2 = population_model(a, b, p0_2, num_steps);

k_vals = 0:num_steps;

p_star = a - b;

figure;
hold on;

plot(k_vals, p_vals1, '-o', 'DisplayName', 'p(0) = 10', 'LineWidth', 1);
plot(k_vals, p_vals2, '-s', 'DisplayName', 'p(0) = 0.02', 'LineWidth', 1);

yline(p_star, '--r', 'DisplayName', 'Equilibrium p* = a - b', 'LineWidth', 1.5);

xlabel('Iteration number k');
ylabel('Population p^{(k)}');
title('Iterated Map Pop. Dynamics');

legend('Location', 'best');

grid on;
hold off;

