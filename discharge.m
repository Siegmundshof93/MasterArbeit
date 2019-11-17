function soC = discharge(Time, Wh_end, FirstMode, SecondMode, ThirdMode, FourthMode, FifthMode, SixthMode, SeventhMode, EightMode, NinethMode, TenthMode, dt, Tz, Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10, StartPointBol, StartPointEol, SoClim, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, MODE10, BattCapEol);
 
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
  Wh_E1end = Wh_end(11,:);
  Wh_E2end = Wh_end(12,:);
  Wh_E3end = Wh_end(13,:);
  Wh_E4end = Wh_end(14,:);
  Wh_E5end = Wh_end(15,:);
  Wh_E6end = Wh_end(16,:);
  Wh_E7end = Wh_end(17,:);
  Wh_E8end = Wh_end(18,:);
  Wh_E9end = Wh_end(19,:);
  Wh_E10end = Wh_end(20,:);
  
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
  WhOrbMaxE1 = Wh_E1end(Tz-1);
  WhOrbMaxE2 = Wh_E2end(Tz-1);
  WhOrbMaxE3 = Wh_E3end(Tz-1);
  WhOrbMaxE4 = Wh_E4end(Tz-1);
  WhOrbMaxE5 = Wh_E5end(Tz-1);
  WhOrbMaxE6 = Wh_E6end(Tz-1);
  WhOrbMaxE7 = Wh_E7end(Tz-1);
  WhOrbMaxE8 = Wh_E8end(Tz-1);
  WhOrbMaxE9 = Wh_E9end(Tz-1);
  WhOrbMaxE10 = Wh_E10end(Tz-1);
  
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
  Wh_mittlewertE1 = WhOrbMaxE1 / 360;
  Wh_mittlewertE2 = WhOrbMaxE2 / 360;
  Wh_mittlewertE3 = WhOrbMaxE3 / 360;
  Wh_mittlewertE4 = WhOrbMaxE4 / 360;
  Wh_mittlewertE5 = WhOrbMaxE5 / 360;
  Wh_mittlewertE6 = WhOrbMaxE6 / 360;
  Wh_mittlewertE7 = WhOrbMaxE7 / 360;
  Wh_mittlewertE8 = WhOrbMaxE8 / 360;
  Wh_mittlewertE9 = WhOrbMaxE9 / 360;
  Wh_mittlewertE10 = WhOrbMaxE10 / 360;
  
 for i = 1:length(Time)
        if i <= Tm1 #time of first mode
            if FirstMode == MODE1 
            Wh1_cha(1,i) = ((Wh_mittlewert1 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);            
            Wh1_cha(2,i) = ((Wh_mittlewertE1 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE2
            Wh1_cha(1,i) = ((Wh_mittlewert2 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = ((Wh_mittlewertE2 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE3
            Wh1_cha(1,i) = ((Wh_mittlewert3 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = ((Wh_mittlewertE3 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE4
            Wh1_cha(1,i) = ((Wh_mittlewert4 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
             Wh1_cha(2,i) = ((Wh_mittlewertE4 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE5
            Wh1_cha(1,i) = ((Wh_mittlewert5 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
             Wh1_cha(2,i) = ((Wh_mittlewertE5 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE6
            Wh1_cha(1,i) = ((Wh_mittlewert6 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
             Wh1_cha(2,i) = ((Wh_mittlewertE6 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE7
            Wh1_cha(1,i) = ((Wh_mittlewert7 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
             Wh1_cha(2,i) = ((Wh_mittlewertE7 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE8
            Wh1_cha(1,i) = ((Wh_mittlewert8 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = ((Wh_mittlewertE8 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE9
            Wh1_cha(1,i) = ((Wh_mittlewert9 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = ((Wh_mittlewertE9 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FirstMode == MODE10
            Wh1_cha(1,i) = ((Wh_mittlewert10 * i)/dt); #charge of 
            Wh1_dis(1,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
             Wh1_cha(2,i) = ((Wh_mittlewertE10 * i)/dt); #charge of 
            Wh1_dis(2,i) = ( (FirstMode * 1.3)* (i) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm1  & i <= Tm2 #time of the second mode
            if SecondMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert1 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE1 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert2 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE2 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert3 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE3 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert4 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE4 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert5 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE5 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert6 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE6 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert7 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE7 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert8 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE8 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert9 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE9 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SecondMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm1) + ((Wh_mittlewert10 * (i-Tm1))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm1) + ((Wh_mittlewertE10 * (i-Tm1))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm1) + ((SecondMode * 1.3)* (i-Tm1) * dt)/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm2 & i <= Tm3
            if ThirdMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert1 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE1 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert2 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE2 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert3 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE3 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert4 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE4 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(Tm2) + ((Wh_mittlewert5 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE5 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert6 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE6 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert7 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE7 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert8 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE8 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert9 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE9 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif ThirdMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm2) + ((Wh_mittlewert10 * (i-Tm2))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm2) + ((Wh_mittlewertE10 * (i-Tm2))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm2) + (((ThirdMode * 1.3)* (i-Tm2) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm3 & i <= Tm4
            if FourthMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert1 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE1 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert2 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE2 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert3 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE3 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE4
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert4 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE4 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE5
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert5 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE5 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE6
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert6 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE6 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE7
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert7 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE7 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE8
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert8 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE8 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE9
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert9 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE9 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FourthMode == MODE10
             Wh1_cha(1,i) = Wh1_cha(1,Tm3) + ((Wh_mittlewert10 * (i-Tm3))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm3) + ((Wh_mittlewertE10 * (i-Tm3))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm3) + (((FourthMode * 1.3)* (i-Tm3) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm4 & i <= Tm5
            if FifthMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert1 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE1 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert2 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE2 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert3 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE3 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert4 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE4 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert5 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE5 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert6 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE6 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert7 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE7 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert8 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE8 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert9 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE9 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif FifthMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm4) + ((Wh_mittlewert10 * (i-Tm4))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm4) + ((Wh_mittlewertE10 * (i-Tm4))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm4) + (((FifthMode * 1.3)* (i-Tm4) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm5 & i <= Tm6
            if SixthMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert1 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE1 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert2 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE2 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert3 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE3 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert4 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE4 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert5 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE5 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert6 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE6 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert7 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE7 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert8 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE8 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert9 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE9 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SixthMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm5) +((Wh_mittlewert10 * (i-Tm5))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm5) +((Wh_mittlewertE10 * (i-Tm5))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm5) + (((SixthMode * 1.3)* (i-Tm5) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm6 & i <= Tm7
            if SeventhMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert1 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE1 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert2 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE2 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert3 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE3 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert4 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE4 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert5 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE5 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert6 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE6 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert7 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE7 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert8 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE8 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert9 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE9 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif SeventhMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm6) + ((Wh_mittlewert10 * (i-Tm6))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm6) + ((Wh_mittlewertE10 * (i-Tm6))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm6) + (((SeventhMode * 1.3)* (i-Tm6) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm7 & i <= Tm8
            if EightMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert1 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE1 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert2 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE2 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert3 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE3 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert4 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE4 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert5 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE5 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert6 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE6 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert7 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE7 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert8 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE8 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert9 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE9 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif EightMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm7) +((Wh_mittlewert10 * (i-Tm7))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm7) +((Wh_mittlewertE10 * (i-Tm7))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm7) + (((EightMode * 1.3)* (i-Tm7) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm8 & i <= Tm9
            if NinethMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert1 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE1 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert2 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE2 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert3 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE3 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert4 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE4 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert5 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE5 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert6 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE6 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert7 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE7 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert8 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE8 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert9 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE9 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif NinethMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm8) +((Wh_mittlewert10 * (i-Tm8))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm8) +((Wh_mittlewertE10 * (i-Tm8))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm8) + (((NinethMode * 1.3)* (i-Tm8) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        elseif i > Tm9 & i <= Tm10
            if TenthMode == MODE1
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert1 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE1 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE2
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert2 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE2 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE3
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert3 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE3 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE4
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert4 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE4 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE5
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert5 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE5 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE6
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert6 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE6 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE7
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert7 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE7 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointeol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE8
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert8 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE8 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE9
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert9 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE9 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            elseif TenthMode == MODE10
            Wh1_cha(1,i) = Wh1_cha(1,Tm9) +((Wh_mittlewert10 * (i-Tm9))/dt); #charge of 
            Wh1_dis(1,i) = Wh1_dis(1,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(1,i) = StartPointBol + Wh1_cha(1,i) - Wh1_dis(1,i);
            Wh1_cha(2,i) = Wh1_cha(2,Tm9) +((Wh_mittlewertE10 * (i-Tm9))/dt); #charge of 
            Wh1_dis(2,i) = Wh1_dis(2,Tm9) + (((TenthMode * 1.3)* (i-Tm9) * dt) )/3600/dt;
            Wh_OUTPUT(2,i) = StartPointEol + Wh1_cha(2,i) - Wh1_dis(2,i);
            end
        end    
        
        if Wh_OUTPUT(i) > BattCapEol
            Wh_OUTPUT(i) = Wh_OUTPUT(i-1);
        end
endfor
soC = 100 * (Wh_OUTPUT) / BattCapEol;
endfunction

