% Part 1 -- square system
% =============================

% numerically solve system for x, y, z, and d
fun = @gps_resid;
guess = [0, 0, 0, 0];
result = fsolve(fun,guess)

% Graphing
% -----------------------------
figure
hold on
grid on
view(10, 30)
axis vis3d

% satellites
satx = [15600; 18760; 17610; 19170];
saty = [7540;  2750;  14630; 610  ];
satz = [20140; 18610; 13480; 18390];

% receiver
recx = result(1);
recy = result(2);
recz = result(3);

% sphere with radius of earth in km
r = 6371;
[X,Y,Z] = sphere(30);
X = X*r;
Y = Y*r;
Z = Z*r;

% plot earth, receiver, satellites, & lines from sats to receiver
surf(X, Y, Z, 'FaceColor', 'blue')
scatter3(recx, recy, recz, 100, 'MarkerFaceColor', 'green')
scatter3(satx, saty, satz, 90, 'MarkerFaceColor', 'blue')
for n = 1:4
    line([recx, satx(n)], [recy, saty(n)], [recz, satz(n)], 'Color', 'black')
end


% Part 2 -- least squares optimization
% ====================================

% optimize overdetermined system for least squared residuals
fun = @gps_resid_overdetermined;
guess = [0, 0, 0, 0];
result = lsqnonlin(fun,guess)

% satellites
satx = [15600, 18760, 17610, 19170, 17800, 17500];
saty = [7540, 2750, 14630, 610, 6400, 7590];
satz = [20140, 18610, 13480, 18390, 18660, 18490];

% receiver
recx = result(1);
recy = result(2);
recz = result(3);
receiver = [recx, recy, recz];

% sphere with radius of earth in km
r = 6371;
[X,Y,Z] = sphere(30);
X = X*r;
Y = Y*r;
Z = Z*r;

% Graphing
% --------------------------------
figure
hold on
grid on
view(10, 30)
axis vis3d

% plot earth, receiver, satellites, & lines from sats to receiver
surf(X, Y, Z, 'FaceColor', 'blue')
scatter3(recx, recy, recz, 90, 'MarkerFaceColor', 'green')
scatter3(satx, saty, satz, 90, 'MarkerFaceColor', 'blue')
for n = 1:6
    line([recx, satx(n)], [recy, saty(n)], [recz, satz(n)], 'Color', 'black')
end