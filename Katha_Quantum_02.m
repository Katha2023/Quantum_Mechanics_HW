theta = linspace(0, 2*pi, 360); % theta is w.r.t. xy plane
phi = linspace(0, 4*pi, 720);
[X, Y] = meshgrid(theta, phi);
R = 1./4.*sin(X./2).*sin(X./2).*exp(1i.*Y)+1./4.*cos(X./2).*cos(X./2).*exp(-1i.*Y)+ 1./4.*sin(X)
R1= conj(1./4.*sin(X./2).*sin(X./2).*exp(1i.*Y)+1./4.*cos(X./2).*cos(X./2).*exp(-1i.*Y)+ 1./4.*sin(X))
P = R.*R1

% surface in 3D
figure;
surf(P,'EdgeColor','none');
colormap(jet); 
colorbar
xlabel('\theta')
ylabel('\phi')
zlabel('Probability(\theta,\phi)')
figure;
surf(X, Y, P,'EdgeColor', 'None', 'facecolor', 'interp');
colormap(jet);
colorbar
view(2);
xlabel('\theta')
ylabel('\phi')

