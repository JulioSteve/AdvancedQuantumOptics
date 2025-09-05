import numpy as np
import matplotlib.pyplot as plt

ANames = ["X","Y","Z"]
DNames = ["bot","top"]
FNames = "ex,ey,ez,hx,hy,hz".split(",")
path = "RSoft/"

DATA = []
Poynting = np.empty(shape=(6,3))

for i,axe in enumerate(ANames):
    for j,direction in enumerate(DNames):
        for k,field in enumerate(FNames):
            filename = "Res_"+axe+direction+"_f1_"+field+".dat"
            file = np.loadtxt(path+filename, skiprows=4)
            AMP = file[:, ::2]
            PH = file[:, 1::2]*np.pi/180
            DATA.append(np.abs(AMP)*np.exp(1j*PH))

def plot_amp(flag=False):
    f, ax = plt.subplots(6,6)
    for i in range(len(DATA)):
        m = i%6
        n = i//6
        ax[n,m].imshow(np.angle(DATA[i]))
    plt.show()

plot_amp()

for i in range(6):
    for j in range(6):
        
