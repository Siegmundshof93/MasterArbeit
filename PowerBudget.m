clear all
clc

###################################################################################
                                                                                  #
#############                                                                     #
h = 600e3;  # ------------------- Hohe [m]                                        #
#############                                                                     #
                                                                                  #
############                                                                      #
T = 5800;  #----------------------Time of the orbit [s]                           # ----Orbital parameters
############                                                                      #
                                                                                  #
##################                                                                #
eclipse = 132.13;#---------------eclipse angle [deg]                              #
##################                                                                #
                                                                                  #
################################################################################### 
     
###################                                                               
Char1 = 15;        #
Char2 = 9;       #
Char3 = 15.19;    # ----------------- Ladestrom for different modes[W]
Char4 = 9.23;     #                              
###################  

########################
MODE1 = 6;             #
MODE2 = 10;            #------------Power consumption per Mode
MODE3 = 2;             #
MODE4 = 5;             #
########################                                                             
                                                                                  
####################                                                               
Tm1  =  20;        #                                                                
Tm2  =  20;        # ------------- Modus time [min]
Tm3  =  30;        #
Tm4  =  50;        #
Tm5  =  60;        # 
Tm6  =  10;        #
Tm7  =  100;       #
Tm8  =  0;         #
Tm9  =  0;         #
Tm10 =  0;         #
####################


########################
limDis = 20;           # - limit of discharge
########################


#########################
 StartPoint = 25;       # ---------- start point of SoC [Wh] 
#########################

#######################
SoClim = 30;          #--------------SoC limit[Wh]
#######################



#########################
FirstMode   = MODE2;    #
SecondMode  = MODE1;    #
ThirdMode   = MODE2;    #
FourthMode  = MODE1;    #
FifthMode   = MODE2;    #
SixthMode   = MODE1;    #------------Modes continuation
SeventhMode = MODE2;    #
EightMode   = 0;        #
NinethMode  = 0;        #
TenthMode   = 0;        #
#########################

###########################################################################################################



Time = 1:(Tm1 + Tm2 + Tm3 + Tm4 + Tm5 + Tm6 + Tm7 + Tm8 + Tm9 + Tm10)*60;

# conversion to seconds + time of previous mode to builda chronology line
Tm1  = Tm1 * 60;  
Tm2  = Tm1 + Tm2  * 60; 
Tm3  = Tm2 + Tm3  * 60;
Tm4  = Tm3 + Tm4  * 60;
Tm5  = Tm4 + Tm5  * 60;
Tm6  = Tm5 + Tm6  * 60;
Tm7  = Tm6 + Tm7  * 60;
Tm8  = Tm7 + Tm8  * 60;
Tm9  = Tm8 + Tm9  * 60;
Tm10 = Tm9 + Tm10 * 60;

Tz = round(T);
dt = round(T/360); # time pro 1 grad seconds
day1end = round((180 - eclipse / 2) * dt);
day2beg = round((day1end/dt + eclipse) * dt);
grad = 0:Tz-1;

 if FourthMode == 0
          Time = 1:Tm3;
          x4 = 0;
          y4 = 0;
        
 elseif FifthMode == 0
          Time = 1:Tm4;
          x5 = 0;
          y5 = 0;
          
 elseif SixthMode == 0
          Time = 1:Tm5;
          x6 = 0;
          y6 = 0;
          
 elseif SeventhMode == 0
          Time = 1:Tm6;
          x7 = 0;
          y7 = 0;
         
 elseif EightMode == 0
          Time = 1:Tm7;
          x8 = 0;
          y8 = 0;
        
 elseif NinethMode == 0
          Time = 1:Tm8;
          x9 = 0;
          y9 = 0;
        
 elseif TenthMode == 0
          Time = 1:Tm9;
          x10 = 0;
          y10 = 0;
          end

          
##############
Wh_end = charge(grad, day1end,Char1, Char2, Char3, Char4, dt, day2beg, Tz);

  Wh_1end = Wh_end(1,:);
  Wh_2end = Wh_end(2,:);
  Wh_3end = Wh_end(3,:);
  Wh_4end = Wh_end(4,:);
  
  WhOrbMax1 = Wh_1end(Tz-1);
  WhOrbMax2 = Wh_2end(Tz-1);
  WhOrbMax3 = Wh_3end(Tz-1);
  WhOrbMax4 = Wh_4end(Tz-1);
  
  Wh_mittlewert1 = WhOrbMax1 / 360;
  Wh_mittlewert2 = WhOrbMax2 / 360;
  Wh_mittlewert3 = WhOrbMax3 / 360;
  Wh_mittlewert4 = WhOrbMax4 / 360;
Wh_OUTPUT = discharge(Time, Wh_mittlewert1, Wh_mittlewert2, FirstMode, SecondMode, ThirdMode, FourthMode, FifthMode, SixthMode, SeventhMode, EightMode, NinethMode, TenthMode, dt, Tz, Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10, StartPoint, SoClim, MODE1, MODE2);

##############          

soC = 100 * (Wh_OUTPUT) / 30;



x = Time/3600;
y = soC;

x1 = x(1:Tm1);
y1 = soC(1:Tm1);

x2 = x(Tm1:Tm2);
y2 = soC(Tm1:Tm2);

x3 = x(Tm2:Tm3);
y3 = soC(Tm2:Tm3);

x4 = x(Tm3:Tm4);
y4 = soC(Tm3:Tm4);

x5 = x(Tm4:Tm5);
y5 = soC(Tm4:Tm5);

x6 = x(Tm5:Tm6);
y6 = soC(Tm5:Tm6);

x7 = x(Tm6:Tm7);
y7 = soC(Tm6:Tm7);

x8 = x(Tm7:Tm8);
y8 = soC(Tm7:Tm8);

x9 = x(Tm8:Tm9);
y9 = soC(Tm8:Tm9);

x10 = x(Tm9:Tm10);
y10 = soC(Tm9:Tm10);

figure(1);
plot(x, y, 'b','Linewidth',2)
hold on
plot(x(1:T:length(Time)),y(1:T:length(Time)),'r*')
hold on
plot([0,length(Time)/3600],[limDis,limDis],'--k','Linewidth',3);
hold on
area(x1,y1)
hold on
area(x2,y2)
hold on
area(x3,y3)
hold on
area(x4,y4)
hold on
area(x5,y5)
hold on
area(x6,y6)
hold on
area(x7,y7)
hold on
area(x8,y8)
hold on
area(x9,y9)
hold on
area(x10,y10)
title('State of Charge versus Time ')
ylim([0,100])   
xlabel('Time[h]');
ylabel('State of Charge[%]');
grid on
legend ("state of charge", "orbital period", "limit of discharge","mode 1","mode 2", "mode 3", "mode 4", "mode 5","mode 6", "mode 7", "mode 9", "mode 10", "location", "NorthEastOutside");