function soC = discharge(Time, Wh_end, FirstMode, SecondMode, ThirdMode, FourthMode, FifthMode, SixthMode, SeventhMode, EightMode, NinethMode, TenthMode, dt, Tz, Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10, StartPoint, SoClim, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, MODE10);
 
  Wh_1end = Wh_end(1,:);
  Wh_2end = Wh_end(2,:);
  Wh_3end = Wh_end(3,:);
  Wh_4end = Wh_end(4,:);
  Wh_5end = Wh_end(5,:);
  Wh_6end = Wh_end(6,:);
  Wh_7end = Wh_end(7,:);
  Wh_8end = Wh_end(8,:);
  Wh_9end = Wh_end(9,:);
  Wh_10end = Wh_end(10,:);
  
  WhOrbMax1 = Wh_1end(Tz-1);
  WhOrbMax2 = Wh_2end(Tz-1);
  WhOrbMax3 = Wh_3end(Tz-1);
  WhOrbMax4 = Wh_4end(Tz-1);
  WhOrbMax5 = Wh_5end(Tz-1);
  WhOrbMax6 = Wh_6end(Tz-1);
  WhOrbMax7 = Wh_7end(Tz-1);
  WhOrbMax8 = Wh_8end(Tz-1);
  WhOrbMax9 = Wh_9end(Tz-1);
  WhOrbMax10 = Wh_10end(Tz-1);
  
  Wh_mittlewert1 = WhOrbMax1 / 360;
  Wh_mittlewert2 = WhOrbMax2 / 360;
  Wh_mittlewert3 = WhOrbMax3 / 360;
  Wh_mittlewert4 = WhOrbMax4 / 360;
  Wh_mittlewert5 = WhOrbMax5 / 360;
  Wh_mittlewert6 = WhOrbMax6 / 360;
  Wh_mittlewert7 = WhOrbMax7 / 360;
  Wh_mittlewert8 = WhOrbMax8 / 360;
  Wh_mittlewert9 = WhOrbMax9 / 360;
  Wh_mittlewert10 = WhOrbMax10 / 360;
  
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
            elseif FirstMode == MODE3
            Wh1_cha(i) = ((Wh_mittlewert3 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE4
            Wh1_cha(i) = ((Wh_mittlewert4 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE5
            Wh1_cha(i) = ((Wh_mittlewert5 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE6
            Wh1_cha(i) = ((Wh_mittlewert6 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE7
            Wh1_cha(i) = ((Wh_mittlewert7 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE8
            Wh1_cha(i) = ((Wh_mittlewert8 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE9
            Wh1_cha(i) = ((Wh_mittlewert9 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FirstMode == MODE10
            Wh1_cha(i) = ((Wh_mittlewert10 * i)/dt); #charge of 
            Wh1_dis(i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm1  & i <= Tm2 #time of the second mode
            if SecondMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert1 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert2 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert3 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert4 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert5 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert6 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert7 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert8 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert9 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SecondMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm1) + ((Wh_mittlewert10 * (i-Tm1))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm2 & i <= Tm3
            if ThirdMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert1 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert2 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert3 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert4 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert5 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert6 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert7 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert8 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert9 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif ThirdMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm2) + ((Wh_mittlewert10 * (i-Tm2))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm3 & i <= Tm4
            if FourthMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert1 * (i-Tm3))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert2 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert3 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert4 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert5 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert6 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert7 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert8 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert9 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FourthMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm3) + ((Wh_mittlewert10 * (i-Tm3))/dt);
            Wh1_dis(i) = Wh1_dis(Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm4 & i <= Tm5
            if FifthMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert1 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert2 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert3 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert4 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert5 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert6 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert7 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert8 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert9 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif FifthMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm4) + ((Wh_mittlewert10 * (i-Tm4))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm5 & i <= Tm6
            if SixthMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert1 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert2 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert3 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert4 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert5 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert6 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert7 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert8 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert9 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SixthMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm5) +((Wh_mittlewert10 * (i-Tm5))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm6 & i <= Tm7
            if SeventhMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert1 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert2 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert3 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert4 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert5 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert6 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert7 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert8 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert9 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif SeventhMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm6) + ((Wh_mittlewert10 * (i-Tm6))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm7 & i <= Tm8
            if EightMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert1 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE2
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert2 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE3
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert3 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE4
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert4 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE5
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert5 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE6
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert6 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE7
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert7 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE8
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert8 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE9
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert9 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif EightMode == MODE10
              Wh1_cha(i) = Wh1_cha(Tm7) +((Wh_mittlewert10 * (i-Tm7))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm8 & i <= Tm9
            if NinethMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert1 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert2 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert3 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert4 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert5 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert6 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert7 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert8 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert9 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif NinethMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm8) +((Wh_mittlewert10 * (i-Tm8))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        elseif i > Tm9 & i <= Tm10
            if TenthMode == MODE1
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert1 * (i-Tm9))/dt); #charge of 
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE2
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert2 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE3
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert3 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE4
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert4 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE5
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert5 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE6
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert6 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE7
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert7 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE8
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert8 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE9
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert9 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            elseif TenthMode == MODE10
            Wh1_cha(i) = Wh1_cha(Tm9) +((Wh_mittlewert10 * (i-Tm9))/dt); #charge of
            Wh1_dis(i) = Wh1_dis(Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPoint + Wh1_cha(i) - Wh1_dis(i);
            end
        end    
        
        if Wh_OUTPUT(i) > SoClim
            Wh_OUTPUT(i) = Wh_OUTPUT(i-1);
        end
endfor
soC = 100 * (Wh_OUTPUT) / 30;
endfunction

