#This programm calculate:
# 1) energy for 1 obit without discharge
# 2) Whw hich gonna be an 360deg should be devided by 360 and assumed that 1 step 1 deg is this amount of charge which satellite get 


function Wh_end = charge(grad, day1end,LeistungChar,dt,V,day2beg, Tz)
 #energy at different time 
 Wh_vec = zeros(4,length(grad));
    for i = 1:length(grad)-1
  
        if i <= day1end
    
%            I6 = (stromChar * cosd(i));
%            if I6 < 0
%                I6 = 0;
%            end
%            I4 = (stromChar * sind(i));
%            if I4 < 0
%                I4 = 0;
%            end
%            I1 = (stromChar * -cosd(i));
%            if I1 < 0
%                I1 = 0;
%            end
%            I3 = (stromChar * -sind(i));
%            if I3 < 0
%                I3 = 0;
%            end
    
            Wh_vec(i) = LeistungChar * 1.3 * dt;
    
        elseif i > day1end & i < day2beg
            Wh_vec(i) = 0;

        elseif i >= day2beg & i <= Tz
%            I6 = (stromChar * cosd(i));
%            if I6 < 0
%               I6 = 0;
%            end
%            I4 = (stromChar * sind(i));
%            if I4 < 0
%                I4 = 0;
%            end
%            I1 = (stromChar * -cosd(i));
%            if I1 < 0
%               I1 = 0;
%            end
%                I3 = (stromChar * -sind(i));
%            if I3 < 0
%                I3 = 0;
%            end
            Wh_vec(i) = (LeistungChar * 1.3 * dt);

        end
    ### charge
        if i <= day1end
            if i==1
                Wh_(i) = Wh_vec(i);
%                Wh_(2,i) = Wh_vec(2,i);
%                Wh_(3,i) = Wh_vec(3,i);
%                Wh_(4,i) = Wh_vec(4,i);
            else
                Wh_(i) = Wh_vec(i)+Wh_(i-1);
%                Wh_(2,i) = Wh_vec(2,i)+Wh_(2,i-1);
%                Wh_(3,i) = Wh_vec(3,i)+Wh_(3,i-1);
%                Wh_(4,i) = Wh_vec(4,i)+Wh_(4,i-1);
      
            end
    
        elseif i > day1end & i < day2beg
            Wh_(i) = Wh_(day1end);
%            Wh_(2,i) = Wh_(2,day1end);
%            Wh_(3,i) = Wh_(3,day1end);
%            Wh_(4,i) = Wh_(4,day1end);
  
        elseif i >= day2beg & i <= Tz
    
            Wh_(i) =  Wh_(day2beg - 1) - Wh_vec(day2beg) + Wh_(i - day2beg + 1);
%            Wh_(2,i) =  Wh_(2,day2beg - 1) - Wh_vec(2,day2beg) + Wh_(2,i - day2beg + 1);
%            Wh_(3,i) =  Wh_(3,day2beg - 1) - Wh_vec(3,day2beg) + Wh_(3,i - day2beg + 1);
%            Wh_(4,i) =  Wh_(4,day2beg - 1) - Wh_vec(4,day2beg) + Wh_(4,i - day2beg + 1);
            
        end     
    Wh_end(i) = Wh_(i)/3600/dt; # dividet on 3600 to convert to hr and divided to dt to convert time to steps(360)

    endfor
endfunction