import numpy as np
import matplotlib.pyplot as plt
import scipy as sp
from scipy.optimize import curve_fit

Att = np.array([0.5, 2.0, 3.5, 5.0, 6.5, 9.0, 10.5]) #dB
P = np.array([1.06e-3, 525e-6, 275e-6, 138e-6, 67e-6, 21e-6, 10e-6])*1e6 #µW

def plot_1(flag):
    if flag:
        f,(ax1,ax2) = plt.subplots(1,2, figsize=(1920/300, 1080/300), dpi=300, layout="constrained")
        ax1.plot(Att,P, marker='.', ms=10, color="black")
        yticks1 = np.concatenate([P[:-2], [np.min(P)]])
        ax1.set_yticks(yticks1, [str(p) for p in yticks1], fontsize=8)
        ax1.set_xticks(Att, [str(a) for a in Att], fontsize=8)
        ax1.set_xlabel("Attenuation (dB)")
        ax1.set_ylabel(r"Power ($\mu W$)")
        ax1.grid()
        ax1.set_title(r"Pump power with respect to its attenuation:")



        plt.show()

def C(TCC,Tacq,ftrig,Nc):
    eta1 = 0.2 #20% (detector eff.)
    eta2=eta1  #20% (detector eff.)
    gd = 50e-9 #ns
    DT = 30e-6 #µs (dead-time)
    


    deno = Tacq*eta1*eta2*gd*ftrig*(1-Nc*DT)
    return TCC/deno

C_list = 

###################################################################
plot_1(False)
