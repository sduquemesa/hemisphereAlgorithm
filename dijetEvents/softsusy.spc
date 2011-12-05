# SOFTSUSY3.2.3
# B.C. Allanach, Comput. Phys. Commun. 143 (2002) 305-331, hep-ph/0104145
Block SPINFO         # Program information
     1   SOFTSUSY    # spectrum calculator
     2   3.2.3         # version number
Block MODSEL  # Select model
     1    1   # sugra
Block SMINPUTS   # Standard Model inputs
     1    1.27934000e+02   # alpha_em^(-1)(MZ) SM MSbar
     2    1.16637000e-05   # G_Fermi
     3    1.17200000e-01   # alpha_s(MZ)MSbar
     4    9.11876000e+01   # MZ(pole)
     5    4.25000000e+00   # mb(mb)
     6    1.74300000e+02   # Mtop(pole)
     7    1.77700000e+00   # Mtau(pole)
Block MINPAR  # SUSY breaking input parameters
     3    1.00000000e+01   # tanb
     4    1.00000000e+00   # sign(mu)
     1    6.00000000e+01   # m0
     2    2.50000000e+02   # m12
     5    0.00000000e+00   # A0
# Low energy data in SOFTSUSY: MIXING=0 TOLERANCE=1.00000000e-03
# mgut=2.44760499e+16 GeV
Block MASS   # Mass spectrum
# PDG code     mass                     particle
        24     8.04221118e+01   # MW
        25     1.09938560e+02   # h0
        35     3.76752960e+02   # H0
        36     3.76256033e+02   # A0
        37     3.85075181e+02   # H+
   1000021     6.06618256e+02   # ~g
   1000022     9.64497335e+01   # ~neutralino(1)
   1000023     1.78469734e+02   # ~neutralino(2)
   1000024     1.78019495e+02   # ~chargino(1)
   1000025    -3.47461775e+02   # ~neutralino(3)
   1000035     3.66783130e+02   # ~neutralino(4)
   1000037     3.66682132e+02   # ~chargino(2)
   1000001     5.62590660e+02   # ~d_L
   1000002     5.57078809e+02   # ~u_L
   1000003     5.62589263e+02   # ~s_L
   1000004     5.57077396e+02   # ~c_L
   1000005     5.11625854e+02   # ~b_1
   1000006     4.08499261e+02   # ~t_1
   1000011     1.86151794e+02   # ~e_L
   1000012     1.68428064e+02   # ~nue_L
   1000013     1.86167346e+02   # ~mu_L
   1000014     1.68426220e+02   # ~numu_L
   1000015     1.10587827e+02   # ~stau_1
   1000016     1.67814901e+02   # ~nu_tau_L
   2000001     5.39781560e+02   # ~d_R
   2000002     5.39964263e+02   # ~u_R
   2000003     5.39780077e+02   # ~s_R
   2000004     5.39962788e+02   # ~c_R
   2000005     5.40405674e+02   # ~b_2
   2000006     5.81229484e+02   # ~t_2
   2000011     1.19946140e+02   # ~e_R
   2000013     1.19940866e+02   # ~mu_R
   2000015     1.90244841e+02   # ~stau_2
# Higgs mixing
Block alpha   # Effective Higgs mixing parameter
          -1.15610355e-01   # alpha
Block nmix  # neutralino mixing matrix
  1  1     9.83683613e-01   # N_{1,1}
  1  2    -6.09053517e-02   # N_{1,2}
  1  3     1.58419547e-01   # N_{1,3}
  1  4    -5.96685388e-02   # N_{1,4}
  2  1     1.15314747e-01   # N_{2,1}
  2  2     9.33588143e-01   # N_{2,2}
  2  3    -2.92084991e-01   # N_{2,3}
  2  4     1.72632691e-01   # N_{2,4}
  3  1    -6.28317964e-02   # N_{3,1}
  3  2     9.33468813e-02   # N_{3,2}
  3  3     6.93910982e-01   # N_{3,3}
  3  4     7.11214506e-01   # N_{3,4}
  4  1    -1.22968386e-01   # N_{4,1}
  4  2     3.40573159e-01   # N_{4,2}
  4  3     6.38809169e-01   # N_{4,3}
  4  4    -6.78831014e-01   # N_{4,4}
Block Umix  # chargino U mixing matrix 
  1  1     9.05377972e-01   # U_{1,1}
  1  2    -4.24606556e-01   # U_{1,2}
  2  1     4.24606556e-01   # U_{2,1}
  2  2     9.05377972e-01   # U_{2,2}
Block Vmix  # chargino V mixing matrix 
  1  1     9.67007202e-01   # V_{1,1}
  1  2    -2.54749037e-01   # V_{1,2}
  2  1     2.54749037e-01   # V_{2,1}
  2  2     9.67007202e-01   # V_{2,2}
Block stopmix  # stop mixing matrix
  1  1     5.57412799e-01   # F_{11}
  1  2     8.30235492e-01   # F_{12}
  2  1     8.30235492e-01   # F_{21}
  2  2    -5.57412799e-01   # F_{22}
Block sbotmix  # sbottom mixing matrix
  1  1     9.36326764e-01   # F_{11}
  1  2     3.51129879e-01   # F_{12}
  2  1    -3.51129879e-01   # F_{21}
  2  2     9.36326764e-01   # F_{22}
Block staumix  # stau mixing matrix
  1  1     2.70294578e-01   # F_{11}
  1  2     9.62777670e-01   # F_{12}
  2  1     9.62777670e-01   # F_{21}
  2  2    -2.70294578e-01   # F_{22}
Block gauge Q= 4.69930107e+02  
     1     3.61095250e-01   # g'(Q)MSSM DRbar
     2     6.46746353e-01   # g(Q)MSSM DRbar
     3     1.09612999e+00   # g3(Q)MSSM DRbar
Block yu Q= 4.69930107e+02  
  3  3     8.90212182e-01   # Yt(Q)MSSM DRbar
Block yd Q= 4.69930107e+02  
  3  3     1.39882112e-01   # Yb(Q)MSSM DRbar
Block ye Q= 4.69930107e+02  
  3  3     1.00906115e-01   # Ytau(Q)MSSM DRbar
Block hmix Q= 4.69930107e+02  # Higgs mixing parameters
     1     3.39756609e+02   # mu(Q)MSSM DRbar
     2     9.74826871e+00   # tan beta(Q)MSSM DRbar
     3     2.44886905e+02   # higgs vev(Q)MSSM DRbar
     4     1.48134927e+05   # mA^2(Q)MSSM DRbar
Block msoft Q= 4.69930107e+02 # MSSM DRbar SUSY breaking parameters
     1     1.01323021e+02   # M_1(Q)
     2     1.91360295e+02   # M_2(Q)
     3     5.85961132e+02   # M_3(Q)
    21     2.70481527e+04   # mH1^2(Q)
    22    -1.16248408e+05   # mH2^2(Q)
    31     1.78548380e+02   # meL(Q)
    32     1.78546636e+02   # mmuL(Q)
    33     1.78025149e+02   # mtauL(Q)
    34     1.10011732e+02   # meR(Q)
    35     1.10005974e+02   # mmuR(Q)
    36     1.08272824e+02   # mtauR(Q)
    41     5.39709924e+02   # mqL1(Q)
    42     5.39708488e+02   # mqL2(Q)
    43     4.96195154e+02   # mqL3(Q)
    44     5.21439184e+02   # muR(Q)
    45     5.21437685e+02   # mcR(Q)
    46     4.27160519e+02   # mtR(Q)
    47     5.19306283e+02   # mdR(Q)
    48     5.19304769e+02   # msR(Q)
    49     5.16522806e+02   # mbR(Q)
Block au Q= 4.69930107e+02  
  1  1    -6.12755763e+02   # Au(Q)MSSM DRbar
  2  2    -6.12752926e+02   # Ac(Q)MSSM DRbar
  3  3    -4.65299961e+02   # At(Q)MSSM DRbar
Block ad Q= 4.69930107e+02  
  1  1    -7.58405243e+02   # Ad(Q)MSSM DRbar
  2  2    -7.58402591e+02   # As(Q)MSSM DRbar
  3  3    -7.06637108e+02   # Ab(Q)MSSM DRbar
Block ae Q= 4.69930107e+02  
  1  1    -1.54564890e+02   # Ae(Q)MSSM DRbar
  2  2    -1.54561997e+02   # Amu(Q)MSSM DRbar
  3  3    -1.53696717e+02   # Atau(Q)MSSM DRbar
