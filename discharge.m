function Wh_OUTPUT = discharge(Time, Wh_mittlewert1, Wh_mittlewert2, FirstMode, SecondMode, ThirdMode, FourthMode, FifthMode, SixthMode, SeventhMode, EightMode, NinethMode, TenthMode, dt, Tz, Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10, StartPoint, SoClim, MODE1, MODE2);
 
  
  
 for i = 1:length(Time)
        if i <= Tm1 #time of first mode
           if FirstMode == MODE1 
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FirstMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FirstMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm1  & i <= Tm2 #time of the second mode
            if SecondMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm1) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm1) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SecondMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SecondMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm2 & i <= Tm3
            if ThirdMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm1) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm2) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif ThirdMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif ThirdMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm3 & i <= Tm4
            if FourthMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) =  (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm3) +StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm3) +StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FourthMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FourthMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm4 & i <= Tm5
            if FifthMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) =  (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm4) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm4) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FifthMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif FifthMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm5 & i <= Tm6
            if SixthMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm5) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) = (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm5) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SixthMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SixthMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm6 & i <= Tm7
            if SeventhMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm6) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm6) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SeventhMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif SeventhMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm7 & i <= Tm8
            if EightMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm7) +StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) = (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm7) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif EightMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif EightMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm8 & i <= Tm9
            if NinethMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) =  (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm8) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm8) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif NinethMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif NinethMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm9 & i <= Tm10
            if TenthMode == MODE1
            Wh1_cha(i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(i) = (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm9) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE2
            Wh1_cha(i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(i) =  (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = Wh_OUTPUT(Tm9) + StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif TenthMode = MODE3
%            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
%            elseif TenthMode = MODE4
%            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
%            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
%            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        end    
        
        if Wh_OUTPUT(i) > SoClim
            Wh_OUTPUT(i) = Wh_OUTPUT(i-1);
        end
endfor
endfunction

