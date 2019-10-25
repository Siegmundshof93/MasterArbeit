clear all
clc

h = 600e3;
mu = 398600e9;
Re = 6378e3; #radius of Earth
grad = 0:360-1;
stromChar = 0.5;
stromDisch = 0.5;
Rleo = Re + h; #radius of LEO orbit
V = 7.4;
eclipse = 2*asind(Re/Rleo); #eclipse angle
T = 2 * pi * sqrt(Rleo**3/mu);# time of the period 
dt = T/360/3600; # time pro 1 grad
#darkT = eclipse * dt; # time in eclipse
#lightT = (360 - eclipse) * dt; # time in light
day = 360 - eclipse;
Wh_vec = zeros(1,length(grad));
Wh(1) = V * (stromChar * 1.3) * dt;
dWh(1) = (V * (stromChar * 1.3)* 2 * dt) - Wh(1);



for i = 1:length(grad)-1 
  
#  Wh(i+1) =  V * (stromChar * 1.3)* (i+1) * dt;
#  dWh(i+1) = (V * (stromChar * 1.3)* (i+2) * dt) - Wh(i+1); 
  if i <= round(day)
    Wh_vec(i)=V * (stromChar * 1.3)* (i+1) * dt;
  else
    Wh_vec(i)=Wh_vec(round(day)) - V * (stromChar * 1.3)* (i-round(day)) * dt;
  end
  
% if i < day 
%  
% 
%  Wh(i+1) = Wh(i+1) + dWh(i+1);
% 
%#elseif i > 360 & i < 360 + day
% #   Wh(i+1) =  V * (stromChar * 1.3)* i * dt;
%#  dWh(i+1) = (V * (stromChar * 1.3)* i+1 * dt) - Wh(i+1);
%
% #elseif i > 720 & i < 720 + day 
%#   Wh(i+1) =  V * (stromChar * 1.3)* i * dt;
% # dWh(i+1) = (V * (stromChar * 1.3)* i+1 * dt) - Wh(i+1);
% 
%else
%  
%   Wh(i+1) = Wh(i+1) - dWh(i+1);

%end
end


figure(1);
plot(grad,Wh_vec,'r');
title('Kapazitet der Akku')
xlabel('zeit');
ylabel('Kapazitet');
