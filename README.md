# Thermal Transport Tunability in Diamanes via Moiré-Induced Anharmonicity

Welcome to the official repository for our research on the thermal properties of twisted fluorinated diamanes. This repository provides the trained machine-learning potentials, structural datasets, and computational scripts required to reproduce the findings presented in our manuscript.

## 📖 Abstract
We compute the lattice thermal conductivity of twisted moir´e diamanes using a machine-learned neuroevolution potential. The conductivity exhibits a non-monotonic trend, decreasing from ∼380 W/m/K in highly-ordered structures to 10–80 W/m/K at intermediate twist angles. Spectral analysis reveals a crossover from coherent to diffusion-dominated phonon transport as the origin of this suppression. Moir´e-induced reconstruction localizes vibrational modes and collapses phonon lifetimes, enabling deterministic tuning of heat transport in 2D heterostructures.

## 🗂️ Repository Structure

The data is organized into main directories:

*   **`Training_Data/`**
    *   `train.xyz`: The extended XYZ file containing the primary ab initio molecular dynamics (AIMD) dataset with energy, force, and virial tensors.
    *   `test.xyz`: The strictly held-out test set containing the $21.8^\circ$ moiré structure. This set was isolated during training to rigorously validate the model's transferability and accuracy on highly strained cross-linking environments.
    *   `nep.in`: The configuration file containing all hyperparameters used for training the NEP model.

*   **`Trained_Model/`**
    *   `nep.txt`: The fully converged Neuroevolution Potential for the C-F system. This file is ready for direct deployment in GPUMD.

*   **`Moire_Structures/`**
    *   Contains the relaxed geometries of the commensurate twisted supercells in standard formats (e.g., `POSCAR`). These files represent the structural foundation of the thermodynamic and lattice dynamics calculations.

*   **`MD_and_Phonons_Scripts/`**
    *   `run.in`: Standard GPUMD input scripts for executing HNEMD simulations to calculate the lattice thermal conductivity.
    *   `unwrapping.py`: A highly optimized, custom unwrapping model utilizing `np.min` to correctly process periodic boundary conditions and atomic trajectories. This ensures artifacts-free calculation of heat fluxes.
    *   `phonon_analysis.py`: Workflows utilizing ASE and Phonopy for Spectral Energy Density (SED) extraction and Grüneisen parameter calculations.

## 🚀 Getting Started

To run the molecular dynamics simulations, you will need an installed version of **[GPUMD](https://github.com/brucefan1983/GPUMD)**. 

1. Clone this repository:
   ```bash
   git clone [https://github.com/YourUsername/F-Diamane-Moire-Thermal.git](https://github.com/YourUsername/F-Diamane-Moire-Thermal.git)
