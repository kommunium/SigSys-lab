n = 0:5;
x1 = [1 zeros(1, 5)];
x2 = [0 1 zeros(1, 4)];
x3 = x1 + 2 * x2;

%System1
b1 = [1 -1 -1]; % input index
a1 = [1 0 0]; %output index

w1 = filter(b1, a1, x1);
w2 = filter(b1, a1, x2);
w3 = filter(b1, a1, x3);
w4 = w1 + 2 * w2;

subplot(2, 2, 1)
stem(n, w1)
xlabel('n')
ylabel('w1')
title('w1[n] = x1[n] - x1[n-1] - x1[n-2]');
subplot(2, 2, 2)
stem(n, w2)
xlabel('n')
ylabel('w2')
title('w2[n] = x2[n] - x2[n-1] - x2[n-2]');
subplot(2, 2, 3)
stem(n, w3)
xlabel('n')
ylabel('w3')
title('w3[n] = x3[n] - x1[n-1] - x3[n-2]');
subplot(2, 2, 4)
stem(n, w4)
xlabel('n')
ylabel('w4')
title('w4[n] = w1[n] + 2*w2[n]');

%System2
y1 = cos(x1);
y2 = cos(x2);
y3 = cos(x3);
y4 = y1 + 2 * y2;

subplot(2, 2, 1)
stem(n, y1)
xlabel('n')
ylabel('y1')
title('y1[n] = cosx1[n]');
subplot(2, 2, 2)
stem(n, y2)
xlabel('n')
ylabel('y2')
title('y2[n] = cosx2[n]');
subplot(2, 2, 3)
stem(n, y3)
xlabel('n')
ylabel('y3')
title('y3[n] = cosx3[n]');
subplot(2, 2, 4)
stem(n, y4)
xlabel('n')
ylabel('y4')
title('y4[n] = y1[n] + 2*y2[n]');

%System3
z1 = n .* x1;
z2 = n .* x2;
z3 = n .* x3;
z4 = z1 + 2 * z2;

subplot(2, 2, 1)
stem(n, z1)
xlabel('n')
ylabel('z1')
title('z1[n] = n*x1[n]');
subplot(2, 2, 2)
stem(n, z2)
xlabel('n')
ylabel('z2')
title('z2[n] = n*x2[n]');
subplot(2, 2, 3)
stem(n, z3)
xlabel('n')
ylabel('z3')
title('z3[n] = n*x3[n]');
subplot(2, 2, 4)
stem(n, z4)
xlabel('n')
ylabel('z4')
itle('z4[n] = z1[n] + 2*z2[n]');
