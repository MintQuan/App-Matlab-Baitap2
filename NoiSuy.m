% Given data points
x = [6.3, 6.72, 7.11, 7.56, 7.98, 8.1];
y = [21.4259, 23.377, 25.3622, 27.3831, 29.138, 31.5253];

% Degree of the polynomial
degree = length(x) - 1;

% Perform polynomial interpolation
coefficients = polyfit(x, y, degree)

% Generate a finer x-axis for plotting
x_interp = linspace(min(x), max(x), 100);

% Evaluate the interpolated polynomial at x_interp
y_interp = polyval(coefficients, x_interp);

% Plot the original data points and the interpolated polynomial
plot(x, y, 'o', x_interp, y_interp);
xlabel('x');
ylabel('y');
title('Polynomial Interpolation');
legend('Data Points', 'Interpolated Polynomial');