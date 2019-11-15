#This programm calculate:
# 1) energy for 1 obit without discharge
# 2) Whw hich gonna be an 360deg should be devided by 360 and assumed that 1 step 1 deg is this amount of charge which satellite get 

function Wh_end = charge(grad, day1end,Char1, Char2, Char3, Char4, Char5, Char6, Char7, Char8, Char9, Char10, dt, day2beg, Tz)
 #energy at different time 
 Wh_vec = zeros(10,length(grad));
    for i = 1:length(grad)-1
  
        if i <= day1end
    

    
            Wh_vec(1,i) = Char1 * 1.3 * dt;
            Wh_vec(2,i) = Char2 * 1.3 * dt;
            Wh_vec(3,i) = Char3 * 1.3 * dt;
            Wh_vec(4,i) = Char4 * 1.3 * dt;
            Wh_vec(5,i) = Char5 * 1.3 * dt;
            Wh_vec(6,i) = Char6 * 1.3 * dt;
            Wh_vec(7,i) = Char7 * 1.3 * dt;
            Wh_vec(8,i) = Char8 * 1.3 * dt;
            Wh_vec(9,i) = Char9 * 1.3 * dt;
            Wh_vec(10,i) = Char10 * 1.3 * dt;
    
        elseif i > day1end & i < day2beg
            Wh_vec(1,i) = 0;
            Wh_vec(2,i) = 0;
            Wh_vec(3,i) = 0;
            Wh_vec(4,i) = 0;
            Wh_vec(5,i) = 0;
            Wh_vec(6,i) = 0;
            Wh_vec(7,i) = 0;
            Wh_vec(8,i) = 0;
            Wh_vec(9,i) = 0;
            Wh_vec(10,i) = 0;
            

        elseif i >= day2beg & i <= Tz
       
            Wh_vec(1,i) = (Char1 * 1.3 * dt);
            Wh_vec(2,i) = (Char2 * 1.3 * dt);
            Wh_vec(3,i) = (Char3 * 1.3 * dt);
            Wh_vec(4,i) = (Char4 * 1.3 * dt);
            Wh_vec(5,i) = (Char5 * 1.3 * dt);
            Wh_vec(6,i) = (Char6 * 1.3 * dt);
            Wh_vec(7,i) = (Char7 * 1.3 * dt);
            Wh_vec(8,i) = (Char8 * 1.3 * dt);
            Wh_vec(9,i) = (Char9 * 1.3 * dt);
            Wh_vec(10,i) = (Char10 * 1.3 * dt);

        end
    ### charge
        if i <= day1end
            if i==1
                Wh_(1,i) = Wh_vec(1,i);
                Wh_(2,i) = Wh_vec(2,i);
                Wh_(3,i) = Wh_vec(3,i);
                Wh_(4,i) = Wh_vec(4,i);
                Wh_(5,i) = Wh_vec(5,i);
                Wh_(6,i) = Wh_vec(6,i);
                Wh_(7,i) = Wh_vec(7,i);
                Wh_(8,i) = Wh_vec(8,i);
                Wh_(9,i) = Wh_vec(9,i);
                Wh_(10,i) = Wh_vec(10,i);
            else
                Wh_(1,i) = Wh_vec(1,i)+Wh_(1,i-1);
                Wh_(2,i) = Wh_vec(2,i)+Wh_(2,i-1);
                Wh_(3,i) = Wh_vec(3,i)+Wh_(3,i-1);
                Wh_(4,i) = Wh_vec(4,i)+Wh_(4,i-1);
                Wh_(5,i) = Wh_vec(5,i)+Wh_(5,i-1);
                Wh_(6,i) = Wh_vec(6,i)+Wh_(6,i-1);
                Wh_(7,i) = Wh_vec(7,i)+Wh_(7,i-1);
                Wh_(8,i) = Wh_vec(8,i)+Wh_(8,i-1);
                Wh_(9,i) = Wh_vec(9,i)+Wh_(9,i-1);
                Wh_(10,i) = Wh_vec(10,i)+Wh_(10,i-1);
      
            end
    
        elseif i > day1end & i < day2beg
            Wh_(1,i) = Wh_(1,day1end);
            Wh_(2,i) = Wh_(2,day1end);
            Wh_(3,i) = Wh_(3,day1end);
            Wh_(4,i) = Wh_(4,day1end);
            Wh_(5,i) = Wh_(5,day1end);
            Wh_(6,i) = Wh_(6,day1end);
            Wh_(7,i) = Wh_(7,day1end);
            Wh_(8,i) = Wh_(8,day1end);
            Wh_(9,i) = Wh_(9,day1end);
            Wh_(10,i) = Wh_(10,day1end);
  
        elseif i >= day2beg & i <= Tz
    
            Wh_(1,i) =  Wh_(1,day2beg - 1) - Wh_vec(1,day2beg) + Wh_(1,i - day2beg + 2);
            Wh_(2,i) =  Wh_(2,day2beg - 1) - Wh_vec(2,day2beg) + Wh_(2,i - day2beg + 2);
            Wh_(3,i) =  Wh_(3,day2beg - 1) - Wh_vec(3,day2beg) + Wh_(3,i - day2beg + 2);
            Wh_(4,i) =  Wh_(4,day2beg - 1) - Wh_vec(4,day2beg) + Wh_(4,i - day2beg + 2);
            Wh_(5,i) =  Wh_(5,day2beg - 1) - Wh_vec(5,day2beg) + Wh_(5,i - day2beg + 2);
            Wh_(6,i) =  Wh_(6,day2beg - 1) - Wh_vec(6,day2beg) + Wh_(6,i - day2beg + 2);
            Wh_(7,i) =  Wh_(7,day2beg - 1) - Wh_vec(7,day2beg) + Wh_(7,i - day2beg + 2);
            Wh_(8,i) =  Wh_(8,day2beg - 1) - Wh_vec(8,day2beg) + Wh_(8,i - day2beg + 2);
            Wh_(9,i) =  Wh_(9,day2beg - 1) - Wh_vec(9,day2beg) + Wh_(9,i - day2beg + 2);
            Wh_(10,i) =  Wh_(10,day2beg - 1) - Wh_vec(10,day2beg) + Wh_(10,i - day2beg + 2);
            
        end     
    Wh_end(1:10,i) = Wh_(1:10,i)/3600/dt; # dividet on 3600 to convert to hr and divided to dt to convert time to steps(360)

    endfor
endfunction