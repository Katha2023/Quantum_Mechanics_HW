theta = linspace(0, pi, 180); % theta is w.r.t. xy plane
phi = linspace(0, 2*pi,360);
[X, Y] = meshgrid(theta, phi);
R =  1./2+(7./50).*sin(2.*X).*cos(Y)


% surface in 3D
figure;
surf(R,'EdgeColor','none');
colormap(jet); 
colorbar
xlabel('\theta')
ylabel('\phi')
zlabel('Probability(\theta,\phi)')
figure;
surf(X, Y, R,'EdgeColor', 'None', 'facecolor', 'interp');
colormap(jet);
colorbar
view(2);
xlabel('\theta')
ylabel('\phi')