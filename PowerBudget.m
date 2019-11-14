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
LeistungChar = 10;# ----------------- Ladestrom [W]                               
###################                                                               
                                                                                  
###################                                                               
TmE  = 600;       #                                                                
TmZ =  15;       # ------------- Modus time [min]
TmD =  300;       #
###################


########################
limDis = 20;           # - limit of discharge
########################


#########################
 StartPoint = 25;       # ---------- start point of SoC [Wh] 
#########################

#######################
SoClim = 30;          #--------------SoC limit[Wh]
#######################

########################
FirstMode = 6;         #
SecondMode = 30;        #------------Power consumption per Mode
ThirdMode = 6;         #
########################

###########################################################################################################



Time = 1:(TmE + TmZ + TmD)*60;

TmE = TmE * 60; # conversion to seconds 
TmZ = TmE + TmZ * 60; 
TmD = TmZ + TmD * 60;

mu = 398600e9;
Re = 6378e3; #radius of Earth
%grad = 0:360-1;
Rleo = Re + h; #radius of LEO orbit
V = 7.4;
%eclipse = 2*asind(Re/Rleo); #eclipse angle
%T = 2 * pi * sqrt(Rleo**3/mu);# time of the period 
Tz = round(T);
dt = round(T/360); # time pro 1 grad seconds
day1end = round((180 - eclipse / 2) * dt);
day2beg = round((day1end/dt + eclipse) * dt);
grad = 0:Tz-1;


Wh_end = charge(grad, day1end,LeistungChar,dt,V,day2beg, Tz); # charge function
WhOrbMax = Wh_end(Tz-1); # highest charge point in orbit
Wh_mittlewert = WhOrbMax / 360; # approximation how much energy will you get for 1 degree
Wh_OUTPUT = discharge(Time, Wh_mittlewert, FirstMode, SecondMode, ThirdMode, dt, Tz, TmE, TmZ, TmD, StartPoint, SoClim); # discharge function

soC = 100 * (Wh_OUTPUT) / 30;


x = Time/3600;
y = soC;
figure(1);
plot(x, y, 'b','Linewidth',1)
hold on
plot(x(1:T:length(Time)),y(1:T:length(Time)),'r*')
hold on
plot([0,length(Time)/3600],[limDis,limDis]);
title('SoC')
ylim([0,100])   
xlabel('[h]');
ylabel('[%]');