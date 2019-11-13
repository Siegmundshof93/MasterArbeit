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
TmE  = 300;        #                                                                
TmZ =  300;        # ------------- Modus time [min]
TmD =  300;        #
###################

#########################
 StartPoint = 25;       # ---------- start point of SoC [Wh] 
#########################

#######################
SoClim = 30;          #--------------SoC limit[Wh]
#######################

########################
FirstMode = 6;         #
SecondMode = 7;        #------------Power consumption per Mode
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



figure(1);
plot(Time,Wh_OUTPUT,'r', [T,T],[0,30], [2*T,2*T],[0,30],[3*T,3*T],[0,30],[4*T,4*T],[0,30],[5*T,5*T],[0,30],[6*T,6*T],[0,30], [7*T,7*T],[0,30],[8*T,8*T],[0,30],[9*T,9*T],[0,30]);
title('Kapazitet der Akku')
ylim([0,30])   
xlabel('zeit');
ylabel('Kapazitet');