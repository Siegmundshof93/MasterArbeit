function Wh_end = discharge(grad, day1end, Wh_vec, day2beg, ADisch, BDisch, dt, V)
  Wh_=zeros(4,length(grad));

for i = 1:length(grad)
  if i <= day1end
    if i==1
      Wh_(1,i) = Wh_vec(1,i);
      Wh_(2,i) = Wh_vec(2,i);
      Wh_(3,i) = Wh_vec(3,i);
      Wh_(4,i) = Wh_vec(4,i);
    else
      Wh_(1,i) = Wh_vec(1,i)+Wh_(1,i-1);
      Wh_(2,i) = Wh_vec(2,i)+Wh_(2,i-1);
      Wh_(3,i) = Wh_vec(3,i)+Wh_(3,i-1);
      Wh_(4,i) = Wh_vec(4,i)+Wh_(4,i-1);
      
    end
    
  elseif i > day1end & i < day2beg
    Wh_(1,i) = Wh_(1,day1end) - (V * (ADisch * 1.3)* (i-day1end) * dt);
    Wh_(2,i) = Wh_(2,day1end) - 0;
    Wh_(3,i) = Wh_(3,day1end) - 0;
    Wh_(4,i) = Wh_(4,day1end) - 0;
  
  elseif i >= day2beg & i <= 360
    
      Wh_(1,i) =  Wh_(1,day2beg - 1) - Wh_vec(1,day2beg) + Wh_(1,i - day2beg + 1);
      Wh_(2,i) =  Wh_(2,day2beg - 1) - Wh_vec(2,day2beg) + Wh_(2,i - day2beg + 1);
      Wh_(3,i) =  Wh_(3,day2beg - 1) - Wh_vec(3,day2beg) + Wh_(3,i - day2beg + 1);
      Wh_(4,i) =  Wh_(4,day2beg - 1) - Wh_vec(4,day2beg) + Wh_(4,i - day2beg + 1);

  end
  Wh_end(i) = Wh_(1,i) + Wh_(2,i) + Wh_(3,i) + Wh_(4,i) ;
  
  
end