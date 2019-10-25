clear all
clc

h = 600e3;
mu = 398600e9;
Re = 6378e3; #radius of Earth
grad = 0:1080-1;
stromChar = 1;
stromDisch = 1;
Rleo = Re + h; #radius of LEO orbit
V = 7.4;
eclipse = 2*asind(Re/Rleo); #eclipse angle
T = 2 * pi * sqrt(Rleo**3/mu);# time of the period 
dt = T/360/3600; # time pro 1 grad
day = round(360 - eclipse);


Wh_vec = zeros(1,length(grad));




for i = 1:length(grad)-1 
  
  if i <= day
    Wh_vec(i)=V * (stromChar * 1.3)* (i+1) * dt;
  elseif i > day & i < 360
    Wh_vec(i)=Wh_vec(day) - V * (stromDisch * 1.3)* (i-day) * dt;
  elseif i >= 360 & i <= 360 + day
    Wh_vec(i)=Wh_vec(359) + (V * (stromChar * 1.3)* (i-359) * dt);
  elseif i > 360 + day & i < 720
    Wh_vec(i)=Wh_vec(day + 360) - V * (stromDisch * 1.3)* (i-(360 + day)) * dt;
  elseif i >= 720 & i <= 720 + day 
     Wh_vec(i)=Wh_vec(719) + (V * (stromChar * 1.3)* (i-719) * dt);
  else
    Wh_vec(i)=Wh_vec(day+ 720) - V * (stromDisch * 1.3)* (i-(720 + day)) * dt;
  end
 end
 

figure(1);
plot(grad,Wh_vec,'r');
title('Kapazitet der Akku')
xlabel('zeit');
ylabel('Kapazitet');