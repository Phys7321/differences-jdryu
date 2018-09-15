% James Yu @jdryu 
% HW01-Differences

x = linspace(-5,10,500);
y = @(x) sin(sin(1./(x.*(2-x))));
[dyf,dxf] = Der(y,x,'fd');
[dyb,dxb] = Der(y,x,'bd');
[dyc,dxc] = Der(y,x,'cd');
[dy2,dx2] = Der(y,x,'o2');
[dy3,dx3] = Der(y,x,'o3');
[dy4,dx4] = Der(y,x,'o4');

[ddy,ddx] = Der(y,x,'d2');

[dY,dX] = Der(Y,X,'data');

[ddY,ddX] = Der(Y,X,'d2');

figure
subplot(2,3,1)
plot(x,y(x))
legend('y(x)','Location','north')

subplot(2,3,2)
plot(dxf,dyf,dxb,dyb,dxc,dyc,dx2,dy2,dx3,dy3,dx4,dy4)
legend('fd','bd','cd','o2','o3','o4','Location','north')

subplot(2,3,3)
plot(ddx,ddy)
legend('d2','Location','north')

subplot(2,3,4)
plot(X,Y)
legend('Y','Location','north')

subplot(2,3,5)
plot(dX,dY)
legend('d1','Location','north')

subplot(2,3,6)
plot(ddX,ddY)
legend('d2','Location','north')

