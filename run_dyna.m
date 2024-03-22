clc,clear all;
g = 9.81; 
m = 4.98;
k = 2.980e-6; % Thrust factor of rotor (depends on density
              % geometry, etc), also present in Thrust function
                     
l = 0.225; % Linear distance from the centre of the rotor
b = 1.140e-7; % Drag constant
Im = 3.357e-5; % Inertia moment of the rotor

% Inertia 
I_xx = 4.856e-3; % kg*m^2
I_yy = 4.856e-3; % kg*m^2
I_zz = 4.856e-3; % kg*m^2


% Initial configuration
initial_roll_angle = 0;   % rad
initial_pitch_angle = 0;  % rad
initial_yaw_angle = 0;      % rad
initial_altitude = 0;  % meters

v_x=0;
v_y=0;
ang_vel=0;

% Desired configuration
desired_roll = -0.3;   % rad
desired_pitch = 0.9;     % rad
desired_yaw = pi;     % rad
desired_altitude = 5;  % metersdesired_vx=4;
desired_vy=3;
desired_w=1;
sim("base_dynamics")



plot3(x, y, z)
xlabel("Position x")
ylabel("Position y")
zlabel("Position z")
title("Positions")
grid on
