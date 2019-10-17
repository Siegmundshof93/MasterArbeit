import numpy as np
from scipy.integrate import odeint, ode
import matplotlib.pyplot as plt


mu = 398600e9 # (m^3/s^2) geocentric gravitational constant
RE = 6378e3 # Erde Radius
r_p = 7000e3 # Perigee Radius
v_p = np.sqrt(mu/r_p) # vis viva Gleichung für Kreisorbit
m0 = 7.8 # anfängliche Masse
thrust = 0.1 # Newton
hour = 3600 # Secunden
day = 24*hour # Secunden pro Tag
Ro = 1.56e-13 # density on the 600km
A = 0.1 * 0.2 # drag area of the 6U satelite
F = 0.5 * Ro * A * pow(v_p, 2)
print(F)
#function: calculating (a) which is r (two dots) for ode45

def rhs_propulsion(x0, t, mu, m0, thrust):
        r = x0[0:3] # Position vector
        v = x0[3:6] # Velocity vector

        distance = np.sqrt(r.dot(r)) # Distance from earth’s center (m)
        a = -mu*r/(distance**3)  + thrust*v/(m0*np.linalg.norm(v)) # Total acceleration included petrubation from thruster (m/s^2)

        return np.concatenate((v, a), axis=None) # add arrays together

r0_PQW = np.array([r_p, 0, 0])
v0_PQW = np.array([0, v_p, 0])
TIME_STEP = 1
TIME_RANGE = 100*hour

t = np.linspace(0, TIME_RANGE-TIME_RANGE/(TIME_RANGE/TIME_STEP), int(TIME_RANGE/TIME_STEP))
#print(t)
x0 = np.concatenate((r0_PQW, v0_PQW), axis=None)
x = odeint(rhs_propulsion, x0, t, args=(mu, m0, thrust)) # args must be a tuple
#print(x.shape)

r = x[:, 0:3]
#print(r)
v = x[:, 3:6]

fig, ax = plt.subplots()
ax.plot(r[:, 0]/1e3, r[:, 1]/1e3, 'b')
ax.set_xlim(-10000, 10000)
ax.set_ylim(-10000, 10000)
ax.set_aspect('equal', adjustable='box')
plt.show()
