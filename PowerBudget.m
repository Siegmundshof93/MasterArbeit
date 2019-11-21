clear all
clc

###################################################################################
                                                                                  #                                                                                  #
############                                                                      #
T = 5801;  #----------------------Time of the orbit [s]                           # ----Orbital parameters
############                                                                      #
                                                                                  #
##################                                                                #
eclipse = 1900;    #---------------eclipse angle [deg]                              #
##################                                                                #
                                                                                  #
################################################################################### 
     
###################                                                               
Char1 = 28.63;       #
Char2 = 28.63;       #   
Char3 = 28.63;       # 
Char4 = 28.63;        #                         [BOL]
Char5 = 9.23;     #----------------- Power of Charge for different modes[W]
Char6 = 9.23;     #
Char7 = 9.23;     #
Char8 = 9.23;     #
Char9 = 9.23;     #
Char10 = 9.23;    #               
################### 

###################                                                               
CharE1 = 28.2;       #
CharE2 = 28.2;        #   
CharE3 = 28.2;        # 
CharE4 = 28.2;        #                         [EOL]
CharE5 = 8.23;     #----------------- Power of Charge for different modes[W]
CharE6 = 8.23;     #
CharE7 = 8.23;     #
CharE8 = 8.23;     #
CharE9 = 8.23;     #
CharE10 = 8.23;    #               
################### 

########################
MODE1 = 161.47;             #
MODE2 = 97.59;            #------------Power consumption per Mode [W]
MODE3 = 6.94;             #
MODE4 = 39.37;             #
MODE5 = 6;             #
MODE6 = 15;            #
MODE7 = 8;             #
MODE8 = 9;             #
MODE9 = 2;             #
MODE10 = 3;            #
########################                                                             
                                                                                  
####################                                                               
Tm1  =  5;        #                                                                
Tm2  =  120;      # ------------- Modus time [min]
Tm3  =  7*60;    #
Tm4  =  5;        #
Tm5  =  60;        # 
Tm6  =  0;        #
Tm7  =  0;        #
Tm8  =  0;         #
Tm9  =  0;         #
Tm10 =  0;         #
####################




########################
BattCapBol = 435.12;   # -------Batterien capacity [Wh]
BattCapEol = 426.24;   #
########################



#########################
 SocInit = 95;          # ---------- start point of SoC [%] # change to DOD
#########################

#######################
SoClim = 60;          #--------------- SoC limit[%] # change to DOD
#######################



#########################
FirstMode   = MODE1;    #
SecondMode  = MODE2;    #
ThirdMode   = MODE3;    #
FourthMode  = MODE4;    #
FifthMode   = MODE3;    #
SixthMode   = MODE6;    #------------Modes continuation
SeventhMode = MODE4;    #
EightMode   = MODE1;    #
NinethMode  = MODE7;    #
TenthMode   = MODE8;    #
#########################

###########################################################################################################
StartPointBol = (SocInit * BattCapBol)/100; #start point of capacity of a battery from procentage to Energy
StartPointEol = (SocInit * BattCapEol)/100;
%SoClim = (SoClim * BattCapEol) / 100; #procentage of limit to amount of Energy


Time = 1:(Tm1 + Tm2 + Tm3 + Tm4 + Tm5 + Tm6 + Tm7 + Tm8 + Tm9 + Tm10)*60; # summ Time 

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
day1end = round((T-eclipse)/2); # start of eclipse in secods
day2beg = round(day1end+eclipse); # end of eclipse in seconds
grad = 0:Tz-1; # array (time of 1 orbit) 

          
#functions
Wh_end = charge(grad, day1end,Char1, Char2, Char3, Char4, Char5, Char6, Char7, Char8, Char9, Char10, CharE1, CharE2, CharE3, CharE4, CharE5, CharE6, CharE7, CharE8, CharE9, CharE10,dt, day2beg, Tz);
soC = discharge(Time, Wh_end, FirstMode, SecondMode, ThirdMode, FourthMode, FifthMode, SixthMode, SeventhMode, EightMode, NinethMode, TenthMode, dt, Tz, Tm1, Tm2, Tm3, Tm4, Tm5, Tm6, Tm7, Tm8, Tm9, Tm10, StartPointBol, StartPointEol, SoClim, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, MODE10, BattCapEol, BattCapBol);      



x = Time/3600;
yB = soC(1,:);
yE = soC(2,:);



figure(1);
plot(x, yB, 'b','Linewidth',2)
hold on
plot(x, yE, 'r','Linewidth',2)
hold on
plot(x(1:T:length(Time)),yB(1:T:length(Time)),'k*')
hold on
plot([0,length(Time)/3600],[SoClim,SoClim],'--k','Linewidth',3);
hold on
plot(x(1:T:length(Time)),yE(1:T:length(Time)),'k*')



title('State of Charge versus Time ')
ylim([0,100])   
xlabel('Time[h]');
ylabel('State of Charge[%]');
grid on
legend ("state of charge BoL", "state of charge EoL", "Orbital period", "DoD limit", "location", "NorthEastOutside");