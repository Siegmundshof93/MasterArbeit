function Wh_vec = charge(grad, day1end,stromChar,dt,V,day2beg)
  
 
  
  Wh_vec = zeros(4,length(grad));
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
    
    Wh_vec(1,i) = (V * 1.3 * dt) * I6;
    Wh_vec(2,i) = (V * 1.3 * dt) * I4;
    Wh_vec(3,i) = (V * 1.3 * dt) * I1;
    Wh_vec(4,i) = (V * 1.3 * dt) * I3;
    
  elseif i > day1end & i < day2beg
    Wh_vec(1,i) = 0;
    Wh_vec(2,i) = 0;
    Wh_vec(3,i) = 0;
    Wh_vec(4,i) = 0;
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
    Wh_vec(1,i) = (V * 1.3 * dt) * I6;
    Wh_vec(2,i) = (V * 1.3 * dt) * I4;
    Wh_vec(3,i) = (V * 1.3 * dt) * I1;
    Wh_vec(4,i) = (V * 1.3 * dt) * I3;
    
%    Wh_vec(i)=Wh_vec(359) + (V * (stromChar * 1.3)* (i-359) * dt);
%  elseif i > 360 + day & i < 720
%    Wh_vec(i)=Wh_vec(day + 360) - V * (stromDisch * 1.3)* (i-(360 + day)) * dt;
%  elseif i >= 720 & i <= 720 + day 
%     Wh_vec(i)=Wh_vec(719) + (V * (stromChar * 1.3)* (i-719) * dt);
%  else
%    Wh_vec(i)=Wh_vec(day+ 720) - V * (stromDisch * 1.3)* (i-(720 + day)) * dt;
  end
 endfor
 endfunction