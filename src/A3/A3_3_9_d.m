t=linspace (0,20,1000) ;
x2 = sign(cos(t));

t = linspace(0, 20, 1000);

% coefficients for x2 CTFS
for i = 1:5
    apos_k(i) = 2 * sin(pi*i/2)/(pi*i);
    aneg_k(i) = 2 * sin(-pi*i/2)/(-pi*i);
end

s1 = apos_k(1) * exp(j * t) + aneg_k(1) * exp(-j * t);
s2 = apos_k(2) * exp(j * 2 * t) + aneg_k(2) * exp(-j * 2 * t);
s3 = apos_k(3) * exp(j * 3 * t) + aneg_k(3) * exp(-j * 3 * t);
s4 = apos_k(4) * exp(j * 4 * t) + aneg_k(4) * exp(-j * 4 * t);
s5 = apos_k(5) * exp(j * 5 * t) + aneg_k(5) * exp(-j * 5 * t);
ssum = real(s1 + s2 + s3 + s4 + s5);

% Output
b = 1;
a = [1 1];

y1 = lsim(b, a, s1, t);
y2 = lsim(b, a, s2, t);
y3 = lsim(b, a, s3, t);
y4 = lsim(b, a, s4, t);
y5 = lsim(b, a, s5, t);
ysum1 = lsim(b, a, ssum, t);
ysum2 = y1 + y2 + y3 + y4 + y5;

% plot
subplot(2, 1,1)
plot(t, ysum1)
xlabel('t')
ylabel('Output')
title('Response for ssum')

subplot(2, 1,2)
plot(t, ysum2)
xlabel('t')
ylabel('Output')
title('Response by sum up five components')