% Define scopes
l = 2;

% Basic Problem a
n = [-l : l];
x1 = [zeros(1, l) 1 zeros(1, l)];
x2 = 2*x1;
y1 = sin(pi/2*x1);
y2 = sin(pi/2*x2);
stem(n, y1, 'o')
hold on
stem(n, y2, '*')
xlabel('Time');
ylabel('y-value')
legend('y(x1[n])', 'y(x2[n])');

