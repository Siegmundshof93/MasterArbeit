clear all
clc

h = 600e3;
mu = 398600e9;
Re = 6378e3; #radius of Earth
grad = 0:360-1;
stromChar = 3;
stromDisch = 2;
Rleo = Re + h; #radius of LEO orbit
V = 7.4;
eclipse = 2*asind(Re/Rleo); #eclipse angle
T = 2 * pi * sqrt(Rleo**3/mu);# time of the period 
dt = T/360/3600; # time pro 1 grad
day1end = round(180 - eclipse / 2);
day2beg = round(day1end + eclipse);
###################################################
W = [2;1;1];

n_x = [1;0;0];
n_y = [0;1;0];
n_z = [0;0;1];

N_s = [0;1;0];


e_z = W / norm(W);

N_z = [ norm(n_z - dot(n_z, e_z) * e_z) .*  cos(W * T) ;0;0]













Wh_vec6 = zeros(1,length(grad));




for i = 1:length(grad)-1
  
  if i <= day1end
      
    I6 = (stromChar * cosd(i));
    if I6 < 0
       I6 = 0;
     end
     I4 = (stromChar * sind(i));
    if I4 < 0
       I4 = 0;
     end
     I1 = (stromChar * -cosd(i));
    if I1 < 0
       I1 = 0;
     end
      I3 = (stromChar * -sind(i));
    if I3 < 0
       I3 = 0;
     end
    
    Wh_vec6(i) = (V * 1.3 * dt) * I6;
    Wh_vec4(i) = (V * 1.3 * dt) * I4;
    Wh_vec1(i) = (V * 1.3 * dt) * I1;
    Wh_vec3(i) = (V * 1.3 * dt) * I3;
    
  elseif i > day1end & i < day2beg
    Wh_vec6(i) = 0;
    Wh_vec4(i) = 0;
    Wh_vec1(i) = 0;
    Wh_vec3(i) = 0;
  elseif i >= day2beg & i <= 360
     I6 = (stromChar * cosd(i));
    if I6 < 0
       I6 = 0;
     end
     I4 = (stromChar * sind(i));
    if I4 < 0
       I4 = 0;
     end
     I1 = (stromChar * -cosd(i));
    if I1 < 0
       I1 = 0;
     end
      I3 = (stromChar * -sind(i));
    if I3 < 0
       I3 = 0;
     end
    Wh_vec6(i) = (V * 1.3 * dt) * I6;
    Wh_vec4(i) = (V * 1.3 * dt) * I4;
    Wh_vec1(i) = (V * 1.3 * dt) * I1;
    Wh_vec3(i) = (V * 1.3 * dt) * I3;
    
%    Wh_vec(i)=Wh_vec(359) + (V * (stromChar * 1.3)* (i-359) * dt);
%  elseif i > 360 + day & i < 720
%    Wh_vec(i)=Wh_vec(day + 360) - V * (stromDisch * 1.3)* (i-(360 + day)) * dt;
%  elseif i >= 720 & i <= 720 + day 
%     Wh_vec(i)=Wh_vec(719) + (V * (stromChar * 1.3)* (i-719) * dt);
%  else
%    Wh_vec(i)=Wh_vec(day+ 720) - V * (stromDisch * 1.3)* (i-(720 + day)) * dt;
  end
 endfor
 Wh_6=zeros(1,length(grad));
 Wh_4=zeros(1,length(grad));
 Wh_1=zeros(1,length(grad));
 Wh_3=zeros(1,length(grad));
for i = 1:length(grad)
  if i <= day1end
    if i==1
      Wh_6(i) = Wh_vec6(i);
      Wh_4(i) = Wh_vec4(i);
      Wh_1(i) = Wh_vec1(i);
      Wh_3(i) = Wh_vec3(i);
    else
      Wh_6(i) = Wh_vec6(i)+Wh_6(i-1);
      Wh_4(i) = Wh_vec4(i)+Wh_4(i-1);
      Wh_1(i) = Wh_vec1(i)+Wh_1(i-1);
      Wh_3(i) = Wh_vec3(i)+Wh_3(i-1);
      
    end
    
  elseif i > day1end & i < day2beg
    Wh_6(i) = Wh_6(day1end) - (V * (stromDisch * 1.3)* (i-day1end) * dt);
    Wh_4(i) = Wh_4(day1end) - 0;
    Wh_1(i) = Wh_1(day1end) - 0;
    Wh_3(i) = Wh_3(day1end) - 0;
  
  elseif i >= day2beg & i <= 360
    
      Wh_6(i) =  Wh_6(day2beg - 1) - Wh_vec6(day2beg) + Wh_6(i - day2beg + 1);
      Wh_4(i) =  Wh_4(day2beg - 1) - Wh_vec4(day2beg) + Wh_4(i - day2beg + 1);
      Wh_1(i) =  Wh_1(day2beg - 1) - Wh_vec1(day2beg) + Wh_1(i - day2beg + 1);
      Wh_3(i) =  Wh_3(day2beg - 1) - Wh_vec3(day2beg) + Wh_3(i - day2beg + 1);

  end
  Wh_end(i) = Wh_6(i) + Wh_4(i) + Wh_1(i) + Wh_3(i) ;
  
  
end
figure(1);
plot(grad,Wh_end,'r');
title('Kapazitet der Akku')
xlabel('zeit');
ylabel('Kapazitet');