import numpy as np
import matplotlib.pyplot as plt

ANames = ["X","Y","Z"]
DNames = ["bot","top"]
FNames = "ex,ey,ez,hx,hy,hz".split(",")
path = "RSoft/"


### Storing data
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


### Checking the validity of the data stored (do amplitudes/phases look coherent?): YES
def checkplot(flag=False):
    if flag:
        f1, ax1 = plt.subplots(6,6)
        for i in range(len(DATA)):
            m = i%6
            n = i//6
            ax1[n,m].imshow(np.abs(DATA[i]))
            ax1[n,m].axis("off")
        f1.suptitle("Amplitudes:")
        plt.show()
        
        f2, ax2 = plt.subplots(6,6)
        for i in range(len(DATA)):
            m = i%6
            n = i//6
            ax2[n,m].imshow(np.angle(DATA[i]))
            ax2[n,m].axis("off")
        f2.suptitle("Phases:")
        plt.show()
checkplot()


### Getting time-mean Poynting values for each surface
DATA_reshape = [DATA[i*6 : (i+1)*6] for i in range(6)]
PList = []
for i,monitor in enumerate(DATA_reshape):
    E = monitor[:3]
    H = np.conjugate(monitor[3:]) #actually the conjugate of H, called H to be concise.
    P = np.array([
        E[1]*H[2]-E[2]*H[1], 
        E[2]*H[0]-E[0]*H[2], 
        E[0]*H[1]-E[1]*H[0]
        ])
    Pm = np.real(P)/2
    PList.append(Pm)
PList = np.array(PList)
# print(np.shape(PList))

### Integrating the mean Poynting on surface to get the Power
d = 1e-8
N = len(PList[0][0])
dS = [np.array([-1,0,0]), np.array([1,0,0]), np.array([0,-1,0]), np.array([0,1,0]), np.array([0,0,-1]), np.array([0,0,1])]
POWER = []
for i, Pmean in enumerate(PList):
    ds = dS[i]*d #depends on the monitor, normal vector goes OUTSIDE AND meshgrid size (here 0.01µm)
    POWER.append(np.sum(Pmean[0]*ds[0]+Pmean[1]*ds[1]+Pmean[2]*ds[2]))

STR = []
for i,axe in enumerate(ANames):
    for j,direction in enumerate(DNames):
        STR.append(axe+direction)

for i, pow in enumerate(POWER):
    strpow = f"{pow*1e6:.2f}"
    print(STR[i]+": P = "+strpow+" µW")
