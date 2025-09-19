import numpy as np
import matplotlib.pyplot as plt

eps0 = 8.854e-12
mu0 = 4*np.pi*1e-7

Z0 = np.sqrt(mu0/eps0)

ANames = ["X","Y","Z"]
DNames = ["bot","top"]
FNames = "ex,ey,ez,hx,hy,hz".split(",")
path = "AuDATA/"


### Storing data
DATA = []
Poynting = np.empty(shape=(6,3))
for i,axe in enumerate(ANames):
    for j,direction in enumerate(DNames):
        for k,field in enumerate(FNames):
            filename = "fwtmp_"+axe+direction+"_f1_"+field+".dat"
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
    E = np.array(monitor[:3])*1e6
    H = np.conjugate(monitor[3:])/Z0*1e6 #actually the conjugate of H, called H to be concise.
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
dS = [np.array([-1,0,0]), np.array([1,0,0]), np.array([0,-1,0]), np.array([0,1,0]), np.array([0,0,-1]), np.array([0,0,1])]
POWER = []
for i, Pmean in enumerate(PList):
    ds = dS[i]*d**2 #depends on the monitor, normal vector goes OUTSIDE AND meshgrid size (here 0.01µm)
    POWER.append(np.sum(Pmean[0]*ds[0]+Pmean[1]*ds[1]+Pmean[2]*ds[2]))

STR = []
for i,axe in enumerate(ANames):
    for j,direction in enumerate(DNames):
        STR.append(axe+direction)

for i, pow in enumerate(POWER):
    strpow = f"{pow*1e3:.2e}"
    print(STR[i]+": P = "+strpow+" mW")
print("\n"+f"Total Power: Ptot = {sum(POWER)*1e3:.3f} mW")

Ptot = sum(POWER) #Total power in the vacuum calculated

WL = 800e-9 #wavelength in m
c = 299_792_458 #m/s
k = 2*np.pi/WL

p_norme = np.sqrt(12*np.pi*eps0/(c*k**4)*Ptot)

print(f"Norme of dipole moment: {p_norme*1e24:.2f}e-24  C m"+"\n")

E0z = 7.674519e3*1e6
phi_e0 = 89.8269*np.pi/180
phi_p = phi_e0+np.arcsin(2*Ptot/(k*c*E0z*p_norme))
phi_p2 = phi_e0+np.pi-np.arcsin(2*Ptot/(k*c*E0z*p_norme)) #This value is not the right one.
print(f"Angle of dipole moment: {phi_p*180/np.pi:.2f}°")
print(f"The other theoretical value is {phi_p2*180/np.pi:.2f}°\n")

Power_reconstruction_test = k*c/2*p_norme*np.sin(phi_p-phi_e0)*E0z
Power_reconstruction_test2 = k*c/2*p_norme*np.sin(phi_p2-phi_e0)*E0z

def test_equal(Ptest,Pref):
    Ptest = np.round(Ptest,3)
    Pref = np.round(Pref,3)
    if Ptest == Pref:
        return "=="
    else:
        return "!="


print(f"Reconstruction with first angle {phi_p*180/np.pi:.2f}°: {Power_reconstruction_test*1e3:.3f} mW {test_equal(Power_reconstruction_test,Ptot)} Simulation {Ptot*1e3:.3f} mW" )
print(f"Reconstruction with second angle {phi_p2*180/np.pi:.2f}°: {Power_reconstruction_test2*1e3:.3f} mW {test_equal(Power_reconstruction_test2,Ptot)} Simulation {Ptot*1e3:.3f} mW" )
print(f"Dephasage: {(phi_p-phi_e0)*180/np.pi:.2e}° or {(phi_p2-phi_e0)*180/np.pi:.2e}°")
