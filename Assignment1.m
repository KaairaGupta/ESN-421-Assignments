clc
close all

% set length of X and Y vector
xvec = [1:1:1000];
yvec = [1:1:1000];

% Create a 2-D mesh of size of xvec and yvec
[X, Y] = meshgrid(xvec, yvec);

% Initialise all zeros
Z = zeros(size(X));

% Use ellipse as the shape
% Define the initial coordinates of the center
x1 = 100;
y1 = 200;

% define the other parameters of the ellipse
a = 40;
b = 20;

% equation of ellipse
Z(((X-x1)/a).^2+((Y-y1)/b).^2<=1)=1;

% Plot initial condition
figure 
imagesc(Z);

% move with constant velocity for 600 steps

nsteps = 600;
for i = 1:nsteps
   Z = zeros(size(X));
   Z(((X-x1-i)/a).^2+((Y-y1)/b).^2<=1)=1;
   figure(1)
   imagesc(Z);
end
