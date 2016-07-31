import math

t_b0 = 1.6e-12
t_bp = 1.5e-12

c = 2.99e8

m_b = 5.279

energies = [20,30,40,50,100]

for energy in energies:
 print(energy)
 gamma = energy/m_b
 d_b0 = math.sqrt( pow(gamma,2) - 1 ) * c * t_b0
 d_bp = math.sqrt( pow(gamma,2) - 1 ) * c * t_bp

 print(d_b0)
 print(d_bp)
 print("")


