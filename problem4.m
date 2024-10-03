% problem4.m

p_factored = @(x) (x - 1).^6;
p_expanded = @(x) x.^6 - 6*x.^5 + 15*x.^4 - 20*x.^3 + 15*x.^2 - 6*x + 1;

x1 = 0:0.01:2;
x2 = 0.995:0.0001:1.005;

figure;
hold on;
plot(x1, p_factored(x1), 'b-', 'DisplayName', 'Factored'); 
plot(x1, p_expanded(x1), 'r--', 'DisplayName', 'Expanded'); 
xlabel('x');
ylabel('p(x)');
title('Factored v. Expanded at x1 Range');
legend('show');
grid on;
hold off;

figure;
hold on;
plot(x2, p_factored(x2), 'b-', 'DisplayName', 'Factored'); 
plot(x2, p_expanded(x2), 'r--', 'DisplayName', 'Expanded'); 
xlabel('x');
ylabel('p(x)');
title('Factored v. Expanded at x2 Range');
legend('show');
grid on;
hold off;