#This programm calculate:
# 1) energy for 1 obit without discharge
# 2) Whw hich gonna be an 360deg should be devided by 360 and assumed that 1 step 1 deg is this amount of charge which satellite get 

function Wh_end = charge(grad, day1end,Char1, Char2, Char3, Char4, dt, day2beg, Tz)
 #energy at different time 
 Wh_vec = zeros(2,length(grad));
    for i = 1:length(grad)-1
  
        if i <= day1end
    

    
            Wh_vec(1,i) = Char1 * 1.3 * dt;
            Wh_vec(2,i) = Char2 * 1.3 * dt;
            Wh_vec(3,i) = Char3 * 1.3 * dt;
            Wh_vec(4,i) = Char4 * 1.3 * dt;
    
        elseif i > day1end & i < day2beg
            Wh_vec(1,i) = 0;
            Wh_vec(2,i) = 0;
            Wh_vec(3,i) = 0;
            Wh_vec(4,i) = 0;

        elseif i >= day2beg & i <= Tz
%       
            Wh_vec(1,i) = (Char1 * 1.3 * dt);
            Wh_vec(2,i) = (Char2 * 1.3 * dt);
            Wh_vec(3,i) = (Char3 * 1.3 * dt);
            Wh_vec(4,i) = (Char4 * 1.3 * dt);

        end
    ### charge
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
            Wh_(1,i) = Wh_(1,day1end);
            Wh_(2,i) = Wh_(2,day1end);
            Wh_(3,i) = Wh_(3,day1end);
            Wh_(4,i) = Wh_(4,day1end);
  
        elseif i >= day2beg & i <= Tz
    
            Wh_(1,i) =  Wh_(1,day2beg - 1) - Wh_vec(1,day2beg) + Wh_(1,i - day2beg + 2);
            Wh_(2,i) =  Wh_(2,day2beg - 1) - Wh_vec(2,day2beg) + Wh_(2,i - day2beg + 2);
            Wh_(3,i) =  Wh_(3,day2beg - 1) - Wh_vec(3,day2beg) + Wh_(3,i - day2beg + 2);
            Wh_(4,i) =  Wh_(4,day2beg - 1) - Wh_vec(4,day2beg) + Wh_(4,i - day2beg + 2);
            
        end     
    Wh_end(1:4,i) = Wh_(1:4,i)/3600/dt; # dividet on 3600 to convert to hr and divided to dt to convert time to steps(360)

    endfor
endfunction