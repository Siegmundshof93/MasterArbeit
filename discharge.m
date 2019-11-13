function Wh_OUTPUT = discharge(Time, Wh_mittlewert, FirstMode, SecondMode, ThirdMode, dt, Tz, TmE, TmZ, TmD, StartPoint, SoClim)
for i = 1:length(Time)
        if i <= TmE #time of first mode
            Wh1_cha(i) = ((Wh_mittlewert * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
        elseif i > TmE  & i <= TmZ #time of the second mode
            Wh1_cha(i) = ((Wh_mittlewert * i)/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(TmE) + ((SecondMode * 1.3)* (i-TmE) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
        elseif i > TmZ & i <= TmD
            Wh1_cha(i) = ((Wh_mittlewert * i)/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(TmZ) + (((ThirdMode * 1.3)* (i-TmZ) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end 
        if Wh_OUTPUT(i) > SoClim
            Wh_OUTPUT(i) = Wh_OUTPUT(i-1);
        end
endfor
endfunction

