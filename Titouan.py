import numpy as np
import matplotlib.pyplot as plt

path = "results_all_pc/results/dipole_2sphere/"
# path = "results/dipole_metal/"
file_name = "dipole_2sphere"

faces = ["bottom_x", "top_x", "bottom_y", "top_y", "bottom_z", "top_z"]

E_fields = ["ex", "ey", "ez"]
H_fields = ["hx", "hy", "hz"]

epsilon_0 = 8.85418782e-12
mu_0 = 12.566370614e-7
Z_0 = np.sqrt(mu_0/epsilon_0)
c = 3e8
wavelength = 0.8e-6
epsilon = 1

def transfo_E(amp_phase):
    amp = amp_phase[:, ::2]*1e6
    phase = amp_phase[:, 1::2]

    return np.abs(amp)*np.exp(1j*phase*np.pi/180)

def transfo_H(amp_phase):
    amp = amp_phase[:, ::2]*1e6/Z_0
    phase = amp_phase[:, 1::2]

    return np.abs(amp)*np.exp(1j*phase*np.pi/180)


def read_data():
    data = {}

    for face in faces:
        data[face] = {}

        for field in E_fields:
            amp_phase = np.loadtxt(path + file_name + "_" + face + "_f1_" + field + ".dat", skiprows = 4)
            data[face][field] = transfo_E(amp_phase)

        for field in H_fields:
            amp_phase = np.loadtxt(path + file_name + "_" + face + "_f1_" + field + ".dat", skiprows = 4)
            data[face][field] = transfo_H(amp_phase)

    return data


def plot(data):

    plt.figure("Amplitude")
    plt.suptitle("Amplitude")
    i = 0
    for face in faces:
        for field in E_fields + H_fields:
            i += 1
            plt.subplot(6,6,i)
            plt.title(face + ", " + field)
            plt.imshow(np.abs(data[face][field]))
    
    plt.figure("Phase")
    plt.suptitle("Phase")
    i = 0
    for face in faces:
        for field in E_fields + H_fields:
            i += 1
            plt.subplot(6,6,i)
            plt.title(face + ", " + field)
            plt.imshow(np.angle(data[face][field]))

    plt.show()


def poynting_temp_mean(data, face):
    P_x = data[face]["ey"]*np.conj(data[face]["hz"]) - data[face]["ez"]*np.conj(data[face]["hy"])
    P_y = data[face]["ez"]*np.conj(data[face]["hx"]) - data[face]["ex"]*np.conj(data[face]["hz"])
    P_z = data[face]["ex"]*np.conj(data[face]["hy"]) - data[face]["ey"]*np.conj(data[face]["hx"])

    return 0.5*np.real(np.array([P_x, P_y, P_z]))


def power(data):
    mesh_size = 0.01e-6
    face_power = {}

    face_power["bottom_x"] = -np.sum(poynting_temp_mean(data, "bottom_x")[0])*mesh_size**2
    face_power["top_x"] = np.sum(poynting_temp_mean(data, "top_x")[0])*mesh_size**2

    face_power["bottom_y"] = -np.sum(poynting_temp_mean(data, "bottom_y")[1])*mesh_size**2
    face_power["top_y"] = np.sum(poynting_temp_mean(data, "top_y")[1])*mesh_size**2

    face_power["bottom_z"] = -np.sum(poynting_temp_mean(data, "bottom_z")[2])*mesh_size**2
    face_power["top_z"] = np.sum(poynting_temp_mean(data, "top_z")[2])*mesh_size**2

    total_power = 0
    for face in faces:
        # print("Power through " + face + f" : {1e3*face_power[face]} mW")
        total_power += face_power[face]
    
    return total_power, face_power


def dipole_moment(data, amp_E0, phi_E0, wavelength, epsilon):
    k = 2*np.pi/wavelength
    omega = k*c

    total_power, face_power = power(data)
    amp_p = np.sqrt(12*np.pi*epsilon_0*epsilon/(omega*k**3)*total_power)
    phi_p1 = np.arcsin(2*total_power/(omega*amp_p*amp_E0)) + phi_E0
    phi_p2 = np.pi - np.arcsin(2*total_power/(omega*amp_p*amp_E0)) + phi_E0

    return amp_p, phi_p1, phi_p2


def power_from_dipole_moment(amp_p, phi_p, amp_E0, phi_E0, wavelength):
    k = 2*np.pi/wavelength
    omega = k*c
    print(omega)

    return omega/2*np.imag(amp_p*np.exp(1j*phi_p)*amp_E0*np.exp(-1j*phi_E0))


data = read_data()

amp_E0 = {}
phi_E0 = {}
amp_E0["dipole_metal"] = 7.784208e3*1e6
phi_E0["dipole_metal"] = 89.9521*np.pi/180
amp_E0["dipole_or"] = 7.729067e3*1e6
phi_E0["dipole_or"] = 89.8849*np.pi/180
amp_E0["dipole_PEC_x"] = 8.070205e3*1e6
phi_E0["dipole_PEC_x"] = 89.9995*np.pi/180
amp_E0["dipole_1sphere"] = 7.744258e3*1e6
phi_E0["dipole_1sphere"] = 89.7709*np.pi/180
amp_E0["dipole_2sphere"] = 7.160071e3*1e6
phi_E0["dipole_2sphere"] = 88.4433*np.pi/180

P0 = 4.3987e-3

amp_p = 1.13e-24
phi_p1 = 1.57079941
phi_p2 = 4.71159003

# POUR LE PEC Ptot = Pr

total_power, face_power = power(data)
# amp_p, phi_p = dipole_moment(data, amp_E0, phi_E0, wavelength, epsilon)
reconstructed_total_power = power_from_dipole_moment(amp_p, phi_p1, amp_E0[file_name], phi_E0[file_name], wavelength)

print()
for face in face_power:
    print("Power through " + face + f" : {1e3*face_power[face]:.3g} mW")
print()
print(f"Radiated power : {1e3*total_power:.5g} mW")
# print()
# print(f"Dipolar moment amplitude : {amp_p:.3g} C.m")
# print(f"Dipolar moment phase : {phi_p*180/np.pi:.6g}°")
# print(f"Difference bewteen pipolar moment phase and electric field phase : {(phi_p - phi_E0)*180/np.pi:.4g}°")
print()
print(f"Total power : {1e3*reconstructed_total_power:.5g} mW")
print()

print(f"Total decay rate = {reconstructed_total_power/P0}")
print(f"Radiative decay rate = {total_power/P0}")
print(f"Quantum yield = {reconstructed_total_power/P0}")

# Quantum yield : Pr/Ptot

# 60 gamma tot 2 sphere