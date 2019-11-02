clear all
clc
#############
h = 600e3;  # ------------------- Hohe
#############

###############
stromChar = 3;# ----------------- Ladestrom
###############

###################
ModusEin  = 60;    #
ModusZwei = 30;   # ------------- Modus
ModusDrei = 6;    #
###################

#####################
ModusEinOrd  = 1;   #
ModusZweiOrd = 2;   # ----------- Ordnung
ModusDreiOrd = 3;   #
#####################

#####################################
ADisch = 2;                         #
BDisch = 1;                         # ---------- Strom der Kompanenten
CDisch = 0.5;                       #
DDisch = 0.1;                       #
#####################################



mu = 398600e9;
Re = 6378e3; #radius of Earth
grad = 0:360-1;
Rleo = Re + h; #radius of LEO orbit
V = 7.4;
eclipse = 2*asind(Re/Rleo); #eclipse angle
T = 2 * pi * sqrt(Rleo**3/mu);# time of the period 
Tz = T / 60;
dt = T/360/3600; # time pro 1 grad hours
day1end = round(180 - eclipse / 2);
day2beg = round(day1end + eclipse);



Wh_vec = charge(grad, day1end,stromChar,dt,V,day2beg); # charge function
Wh_end = discharge(grad, day1end, Wh_vec, day2beg, ADisch, BDisch, dt, V); # discharge function


figure(1);
plot(grad,Wh_end,'r');
title('Kapazitet der Akku')
xlabel('zeit');
ylabel('Kapazitet');