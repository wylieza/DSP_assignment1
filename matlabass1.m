n1 = 0:1:25
stem(n1, sin(pi*n1/17))

figure()

n2 = -15:1:25
stem(n2, sin(pi*n2/17))

figure()

n3 = -10:1:10
stem(n3, sin(3*pi*n3+pi/2))

figure()

n4 = 0:1:50
stem(n4, cos(pi*n4/sqrt(23)))
xlabel('Sample')
ylabel('Value')

n3 = -10:1:10
plot(n3, 5*n3 +1, 'k-', n3, 4*n3, 'g:') %multi plot plot
legend('5x+1', '4x') %legends are specified in order of plot functions params

%Subplotting and Saving
m = 2 %grid height
n = 1 % grid width
pos = 1 %Row position
subplot(m, n, pos)
stem(n4, cos(pi*n4/sqrt(23)))

subplot(m, n, 2)
plot(n3, 5*n3 +1, 'k-', n3, 4*n3, 'g:') %multi plot plot

print(gcf, '-dpng', 'outfile.png') %Save as png
