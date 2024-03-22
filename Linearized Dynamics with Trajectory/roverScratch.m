kinematicModel = differentialDriveKinematics;
initialState = [0 0 0];

tspan = 0:0.05:10;
wr=sin(tspan);
wl=cos(tspan);
y=zeros(length(wr));
for i=1:length(wr);
inputs = [wr(i) wl(i)]; %Left wheel is spinning faster
[t,y(i)] = ode45(@(t,y(i))derivative(kinematicModel,y(i),inputs),tspan,initialState);
end
figure
plot(y(:,1),y(:,2))
title('Trajectory');

figure
plot(wr)
title('Right Wheel')

figure
plot(wl)
title('Left Wheel')