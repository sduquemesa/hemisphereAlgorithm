# SUSY Les Houches Accord 2 - MSSM spectrum + Decays
# SPheno v3.1.3  
# W. Porod, Comput. Phys. Commun. 153 (2003) 275-315, hep-ph/0301101
# in case of problems send email to porod@physik.uni-wuerzburg.de
# Created: 26.10.2011,  05:52
Block SPINFO         # Program information
     1   SPheno      # spectrum calculator
     2   v3.1.3      # version number
#
Block SPhenoINFO     # SPheno specific information
    1      2         # using 2-loop RGEs
    2      1         # using running masses for boundary conditions at mZ
Block MODSEL  # Model selection
    1    1    # mSUGRA model
Block MINPAR  # Input parameters
    1    6.00000000E+01  # m0      
    2    2.50000000E+02  # m12     
    3    1.00000000E+01  # tanb at m_Z   
    4    1.00000000E+00  # cos(phase_mu)
    5    0.00000000E+00  # A0
#
Block gauge Q=  2.28656094E+16  # (GUT scale)
   1    7.20529054E-01  # g'(Q)^DRbar
   2    7.20529054E-01  # g(Q)^DRbar
   3    7.07854190E-01  # g3(Q)^DRbar
Block SMINPUTS  # SM parameters
         1     1.27934000E+02  # alpha_em^-1(MZ)^MSbar
         2     1.16637000E-05  # G_mu [GeV^-2]
         3     1.17200000E-01  # alpha_s(MZ)^MSbar
         4     9.11876000E+01  # m_Z(pole)
         5     4.25000000E+00  # m_b(m_b), MSbar
         6     1.74300000E+02  # m_t(pole)
         7     1.77700000E+00  # m_tau(pole)
         8     0.00000000E+00  # m_nu_3
        11     5.10998910E-04  # m_e(pole)
        12     0.00000000E+00  # m_nu_1
        13     1.05658000E-01  # m_muon(pole)
        14     0.00000000E+00  # m_nu_2
        21     5.00000000E-03  # m_d(2 GeV), MSbar
        22     3.00000000E-03  # m_u(2 GeV), MSbar
        23     1.05000000E-01  # m_s(2 GeV), MSbar
        24     1.27000000E+00  # m_c(m_c), MSbar
Block gauge Q=  4.88568814E+02  # (SUSY scale)
   1    3.61273858E-01  # g'(Q)^DRbar
   2    6.46357634E-01  # g(Q)^DRbar
   3    1.09520766E+00  # g3(Q)^DRbar
Block Yu Q=  4.88568814E+02  # (SUSY scale)
  1  1     8.87118277E-06   # Y_u(Q)^DRbar
  2  2     3.75546724E-03   # Y_c(Q)^DRbar
  3  3     8.94623251E-01   # Y_t(Q)^DRbar
Block Yd Q=  4.88568814E+02  # (SUSY scale)
  1  1     1.37395405E-04   # Y_d(Q)^DRbar
  2  2     2.88530354E-03   # Y_s(Q)^DRbar
  3  3     1.39893403E-01   # Y_b(Q)^DRbar
Block Ye Q=  4.88568814E+02  # (SUSY scale)
  1  1     2.89191580E-05   # Y_e(Q)^DRbar
  2  2     5.97954530E-03   # Y_mu(Q)^DRbar
  3  3     1.00573110E-01   # Y_tau(Q)^DRbar
Block Au Q=  4.88568814E+02  # (SUSY scale)
  1  1    -6.08251097E+02   # A_u(Q)^DRbar
  2  2    -6.08247965E+02   # A_c(Q)^DRbar
  3  3    -4.60217367E+02   # A_t(Q)^DRbar
Block Ad Q=  4.88568814E+02  # (SUSY scale)
  1  1    -7.54638046E+02   # A_d(Q)^DRbar
  2  2    -7.54635613E+02   # A_s(Q)^DRbar
  3  3    -7.02703796E+02   # A_b(Q)^DRbar
Block Ae Q=  4.88568814E+02  # (SUSY scale)
  1  1    -1.53954398E+02   # A_e(Q)^DRbar
  2  2    -1.53951354E+02   # A_mu(Q)^DRbar
  3  3    -1.53093375E+02   # A_tau(Q)^DRbar
Block MSOFT Q=  4.88568814E+02  # soft SUSY breaking masses at Q
   1    1.01709559E+02  # M_1
   2    1.91678496E+02  # M_2
   3    5.84303483E+02  # M_3
  21    2.69914021E+04  # M^2_(H,d)
  22   -1.16243585E+05  # M^2_(H,u)
  31    1.78273321E+02  # M_(L,11)
  32    1.78271497E+02  # M_(L,22)
  33    1.77757340E+02  # M_(L,33)
  34    1.09967134E+02  # M_(E,11)
  35    1.09961103E+02  # M_(E,22)
  36    1.08250166E+02  # M_(E,33)
  41    5.37916182E+02  # M_(Q,11)
  42    5.37914746E+02  # M_(Q,22)
  43    4.94314180E+02  # M_(Q,33)
  44    5.19647379E+02  # M_(U,11)
  45    5.19645600E+02  # M_(U,22)
  46    4.25088777E+02  # M_(U,33)
  47    5.17507603E+02  # M_(D,11)
  48    5.17506368E+02  # M_(D,22)
  49    5.14737691E+02  # M_(D,33)
Block MASS  # Mass spectrum
#   PDG code      mass          particle
         4     1.27000000E+00  # m_c(m_c), MSbar
         5     4.25000000E+00  # m_b(m_b), MSbar
         6     1.74300000E+02  # m_t(pole)
        23     9.11876000E+01  # m_Z(pole)
        24     8.03402499E+01  # W+
        15     1.77700000E+00  # m_tau(pole)
        25     1.10203741E+02  # h0
        35     3.77660125E+02  # H0
        36     3.77167638E+02  # A0
        37     3.86047496E+02  # H+
   1000001     5.64515266E+02  # ~d_L
   2000001     5.41509508E+02  # ~d_R
   1000002     5.59039552E+02  # ~u_L
   2000002     5.41753109E+02  # ~u_R
   1000003     5.64515317E+02  # ~s_L
   2000003     5.41506505E+02  # ~s_R
   1000004     5.59047969E+02  # ~c_L
   2000004     5.41741792E+02  # ~c_R
   1000005     5.13429464E+02  # ~b_1
   2000005     5.41988362E+02  # ~b_2
   1000006     4.09612423E+02  # ~t_1
   2000006     5.82745019E+02  # ~t_2
   1000011     1.85988313E+02  # ~e_L-
   2000011     1.19926522E+02  # ~e_R-
   1000012     1.68223293E+02  # ~nu_eL
   1000013     1.86004673E+02  # ~mu_L-
   2000013     1.19892145E+02  # ~mu_R-
   1000014     1.68221126E+02  # ~nu_muL
   1000015     1.10553105E+02  # ~tau_1-
   2000015     1.90109830E+02  # ~tau_2-
   1000016     1.67608476E+02  # ~nu_tauL
   1000021     6.08994439E+02  # ~g
   1000022     9.67596995E+01  # ~chi_10
   1000023     1.78800619E+02  # ~chi_20
   1000025    -3.48420099E+02  # ~chi_30
   1000035     3.67638349E+02  # ~chi_40
   1000024     1.78271751E+02  # ~chi_1+
   1000037     3.68633173E+02  # ~chi_2+
# Higgs mixing
Block alpha # Effective Higgs mixing angle
          -1.15723863E-01   # alpha
Block Hmix Q=  4.88568814E+02  # Higgs mixing parameters
   1    3.40861459E+02  # mu
   2    9.73410261E+00  # tan[beta](Q)
   3    2.44883365E+02  # v(Q)
   4    1.37975398E+05  # m^2_A(Q)
Block stopmix # stop mixing matrix
   1  1     5.56257484E-01   # Re[R_st(1,1)]
   1  2     8.31009995E-01   # Re[R_st(1,2)]
   2  1    -8.31009995E-01   # Re[R_st(2,1)]
   2  2     5.56257484E-01   # Re[R_st(2,2)]
Block sbotmix # sbottom mixing matrix
   1  1     9.36013669E-01   # Re[R_sb(1,1)]
   1  2     3.51963650E-01   # Re[R_sb(1,2)]
   2  1    -3.51963650E-01   # Re[R_sb(2,1)]
   2  2     9.36013669E-01   # Re[R_sb(2,2)]
Block staumix # stau mixing matrix
   1  1     2.71081006E-01   # Re[R_sta(1,1)]
   1  2     9.62556538E-01   # Re[R_sta(1,2)]
   2  1    -9.62556538E-01   # Re[R_sta(2,1)]
   2  2     2.71081006E-01   # Re[R_sta(2,2)]
Block Nmix # neutralino mixing matrix
   1  1    -9.83744314E-01   # Re[N(1,1)]
   1  2     6.08674322E-02   # Re[N(1,2)]
   1  3    -1.58090761E-01   # Re[N(1,3)]
   1  4     5.95784565E-02   # Re[N(1,4)]
   2  1    -1.15002498E-01   # Re[N(2,1)]
   2  2    -9.34025757E-01   # Re[N(2,2)]
   2  3     2.91194889E-01   # Re[N(2,3)]
   2  4    -1.71976296E-01   # Re[N(2,4)]
   3  1    -6.26876263E-02   # Re[N(3,1)]
   3  2     9.31207827E-02   # Re[N(3,2)]
   3  3     6.93963196E-01   # Re[N(3,3)]
   3  4     7.11205922E-01   # Re[N(3,4)]
   4  1    -1.22848738E-01   # Re[N(4,1)]
   4  2     3.39440068E-01   # Re[N(4,2)]
   4  3     6.39240119E-01   # Re[N(4,3)]
   4  4    -6.79014505E-01   # Re[N(4,4)]
Block Umix # chargino mixing matrix
   1  1    -9.03993140E-01   # Re[U(1,1)]
   1  2     4.27546960E-01   # Re[U(1,2)]
   2  1     4.27546960E-01   # Re[U(2,1)]
   2  2     9.03993140E-01   # Re[U(2,2)]
Block Vmix # chargino mixing matrix
   1  1    -9.67205167E-01   # Re[V(1,1)]
   1  2     2.53996389E-01   # Re[V(1,2)]
   2  1     2.53996389E-01   # Re[V(2,1)]
   2  2     9.67205167E-01   # Re[V(2,2)]
DECAY   2000011     7.34255995E-02   # ~e^-_R
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        11   # BR(~e^-_R -> chi^0_1 e^-)
DECAY   1000011     1.11074241E-01   # ~e^-_L
#    BR                NDA      ID1      ID2
     8.85061612E-01    2     1000022        11   # BR(~e^-_L -> chi^0_1 e^-)
     3.98441513E-02    2     1000023        11   # BR(~e^-_L -> chi^0_2 e^-)
     7.50942363E-02    2    -1000024        12   # BR(~e^-_L -> chi^-_1 nu_e)
DECAY   2000013     7.32336677E-02   # ~mu^-_R
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        13   # BR(~mu^-_R -> chi^0_1 mu^-)
DECAY   1000013     1.11252857E-01   # ~mu^-_L
#    BR                NDA      ID1      ID2
     8.84833249E-01    2     1000022        13   # BR(~mu^-_L -> chi^0_1 mu^-)
     3.99254104E-02    2     1000023        13   # BR(~mu^-_L -> chi^0_2 mu^-)
     7.52413406E-02    2    -1000024        14   # BR(~mu^-_L -> chi^-_1 nu_mu)
DECAY   1000015     2.92914244E-02   # ~tau^-_1
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        15   # BR(~tau^-_1 -> chi^0_1 tau^-)
DECAY   2000015     1.54655944E-01   # ~tau^-_2
#    BR                NDA      ID1      ID2
     8.33427943E-01    2     1000022        15   # BR(~tau^-_2 -> chi^0_1 tau^-)
     5.85666129E-02    2     1000023        15   # BR(~tau^-_2 -> chi^0_2 tau^-)
     1.08005444E-01    2    -1000024        16   # BR(~tau^-_2 -> chi^-_1 nu_tau)
DECAY   1000012     1.16755366E-01   # ~nu_e
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        12   # BR(~nu_e -> chi^0_1 nu_e)
DECAY   1000014     1.16750887E-01   # ~nu_mu
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        14   # BR(~nu_mu -> chi^0_1 nu_mu)
DECAY   1000016     1.15484757E-01   # ~nu_tau
#    BR                NDA      ID1      ID2
     1.00000000E+00    2     1000022        16   # BR(~nu_tau -> chi^0_1 nu_tau)
DECAY   2000001     2.88458309E-01   # ~d_R
#    BR                NDA      ID1      ID2
     9.82411033E-01    2     1000022         1   # BR(~d_R -> chi^0_1 d)
     1.13738689E-02    2     1000023         1   # BR(~d_R -> chi^0_2 d)
     1.46184011E-03    2     1000025         1   # BR(~d_R -> chi^0_3 d)
     4.75065860E-03    2     1000035         1   # BR(~d_R -> chi^0_4 d)
DECAY   1000001     5.21502195E+00   # ~d_L
#    BR                NDA      ID1      ID2
     2.52629116E-02    2     1000022         1   # BR(~d_L -> chi^0_1 d)
     3.03250821E-01    2     1000023         1   # BR(~d_L -> chi^0_2 d)
     1.89347794E-03    2     1000025         1   # BR(~d_L -> chi^0_3 d)
     1.95853875E-02    2     1000035         1   # BR(~d_L -> chi^0_4 d)
     5.95900662E-01    2    -1000024         2   # BR(~d_L -> chi^-_1 u)
     5.41067403E-02    2    -1000037         2   # BR(~d_L -> chi^-_2 u)
DECAY   2000003     2.88967228E-01   # ~s_R
#    BR                NDA      ID1      ID2
     9.80716794E-01    2     1000022         3   # BR(~s_R -> chi^0_1 s)
     1.19153839E-02    2     1000023         3   # BR(~s_R -> chi^0_2 s)
     1.48675551E-03    2     1000025         3   # BR(~s_R -> chi^0_3 s)
     4.73685362E-03    2     1000035         3   # BR(~s_R -> chi^0_4 s)
     1.14351233E-03    2    -1000024         4   # BR(~s_R -> chi^-_1 c)
DECAY   1000003     5.21462624E+00   # ~s_L
#    BR                NDA      ID1      ID2
     2.52631825E-02    2     1000022         3   # BR(~s_L -> chi^0_1 s)
     3.03243071E-01    2     1000023         3   # BR(~s_L -> chi^0_2 s)
     1.89837750E-03    2     1000025         3   # BR(~s_L -> chi^0_3 s)
     1.95922830E-02    2     1000035         3   # BR(~s_L -> chi^0_4 s)
     5.95872488E-01    2    -1000024         4   # BR(~s_L -> chi^-_1 c)
     5.41305983E-02    2    -1000037         4   # BR(~s_L -> chi^-_2 c)
DECAY   1000005     3.50184017E+00   # ~b_1
#    BR                NDA      ID1      ID2
     5.12341813E-02    2     1000022         5   # BR(~b_1 -> chi^0_1 b)
     3.70724193E-01    2     1000023         5   # BR(~b_1 -> chi^0_2 b)
     6.50265299E-03    2     1000025         5   # BR(~b_1 -> chi^0_3 b)
     1.49138870E-02    2     1000035         5   # BR(~b_1 -> chi^0_4 b)
     4.75228014E-01    2    -1000024         6   # BR(~b_1 -> chi^-_1 t)
     8.13970710E-02    2     1000006       -24   # BR(~b_1 -> ~t_1 W^-)
DECAY   2000005     7.58439749E-01   # ~b_2
#    BR                NDA      ID1      ID2
     3.00730912E-01    2     1000022         5   # BR(~b_2 -> chi^0_1 b)
     1.44904705E-01    2     1000023         5   # BR(~b_2 -> chi^0_2 b)
     6.55202425E-02    2     1000025         5   # BR(~b_2 -> chi^0_3 b)
     9.54906768E-02    2     1000035         5   # BR(~b_2 -> chi^0_4 b)
     1.90448294E-01    2    -1000024         6   # BR(~b_2 -> chi^-_1 t)
     2.02905169E-01    2     1000006       -24   # BR(~b_2 -> ~t_1 W^-)
DECAY   2000002     1.15442839E+00   # ~u_R
#    BR                NDA      ID1      ID2
     9.82404439E-01    2     1000022         2   # BR(~u_R -> chi^0_1 u)
     1.13743477E-02    2     1000023         2   # BR(~u_R -> chi^0_2 u)
     1.46353886E-03    2     1000025         2   # BR(~u_R -> chi^0_3 u)
     4.75766406E-03    2     1000035         2   # BR(~u_R -> chi^0_4 u)
DECAY   1000002     5.42596591E+00   # ~u_L
#    BR                NDA      ID1      ID2
     6.03773013E-03    2     1000022         2   # BR(~u_L -> chi^0_1 u)
     3.14990107E-01    2     1000023         2   # BR(~u_L -> chi^0_2 u)
     1.06214075E-03    2     1000025         2   # BR(~u_L -> chi^0_3 u)
     1.38190356E-02    2     1000035         2   # BR(~u_L -> chi^0_4 u)
     6.46443650E-01    2     1000024         1   # BR(~u_L -> chi^+_1 d)
     1.76473360E-02    2     1000037         1   # BR(~u_L -> chi^+_2 d)
DECAY   2000004     1.15701429E+00   # ~c_R
#    BR                NDA      ID1      ID2
     9.79669047E-01    2     1000022         4   # BR(~c_R -> chi^0_1 c)
     1.22411219E-02    2     1000023         4   # BR(~c_R -> chi^0_2 c)
     1.51091639E-03    2     1000025         4   # BR(~c_R -> chi^0_3 c)
     4.73096145E-03    2     1000035         4   # BR(~c_R -> chi^0_4 c)
     1.84775309E-03    2     1000024         3   # BR(~c_R -> chi^+_1 s)
DECAY   1000004     5.42352883E+00   # ~c_L
#    BR                NDA      ID1      ID2
     6.15219210E-03    2     1000022         4   # BR(~c_L -> chi^0_1 c)
     3.14935227E-01    2     1000023         4   # BR(~c_L -> chi^0_2 c)
     1.06259035E-03    2     1000025         4   # BR(~c_L -> chi^0_3 c)
     1.38412769E-02    2     1000035         4   # BR(~c_L -> chi^0_4 c)
     6.46339082E-01    2     1000024         3   # BR(~c_L -> chi^+_1 s)
     1.76696318E-02    2     1000037         3   # BR(~c_L -> chi^+_2 s)
DECAY   1000006     2.38929100E+00   # ~t_1
#    BR                NDA      ID1      ID2
     1.78119273E-01    2     1000022         6   # BR(~t_1 -> chi^0_1 t)
     3.52661401E-04    2     1000023         4   # BR(~t_1 -> chi^0_2 c)
     1.27118323E-01    2     1000023         6   # BR(~t_1 -> chi^0_2 t)
     6.46586261E-01    2     1000024         5   # BR(~t_1 -> chi^+_1 b)
     4.78106017E-02    2     1000037         5   # BR(~t_1 -> chi^+_2 b)
#    BR                NDA      ID1      ID2       ID3
DECAY   2000006     7.41670417E+00   # ~t_2
#    BR                NDA      ID1      ID2
     2.85232498E-02    2     1000022         6   # BR(~t_2 -> chi^0_1 t)
     8.18558890E-02    2     1000023         6   # BR(~t_2 -> chi^0_2 t)
     5.67267117E-02    2     1000025         6   # BR(~t_2 -> chi^0_3 t)
     2.34789543E-01    2     1000035         6   # BR(~t_2 -> chi^0_4 t)
     2.01368268E-01    2     1000024         5   # BR(~t_2 -> chi^+_1 b)
     2.21902470E-01    2     1000037         5   # BR(~t_2 -> chi^+_2 b)
     1.46855973E-01    2     1000006        23   # BR(~t_2 -> ~t_1 Z)
     2.79778959E-02    2     1000006        25   # BR(~t_2 -> ~t_1 h^0)
DECAY   1000024     5.34569355E-02   # chi^+_1
#    BR                NDA      ID1      ID2
     1.75646281E-03    2    -2000013        14   # BR(chi^+_1 -> ~mu^+_R nu_mu)
     5.01477635E-01    2    -1000015        16   # BR(chi^+_1 -> ~tau^+_1 nu_tau)
     1.55605309E-01    2     1000012       -11   # BR(chi^+_1 -> ~nu_e e^+)
     1.55678759E-01    2     1000014       -13   # BR(chi^+_1 -> ~nu_mu mu^+)
     1.77195198E-01    2     1000016       -15   # BR(chi^+_1 -> ~nu_tau tau^+)
     7.67921175E-03    2     1000022        24   # BR(chi^+_1 -> chi^0_1 W^+)
#    BR                NDA      ID1      ID2       ID3
     2.15414564E-04    3     1000022       -11        12   # BR(chi^+_1 -> chi^0_1 e^+ nu_e)
     2.15264986E-04    3     1000022       -13        14   # BR(chi^+_1 -> chi^0_1 mu^+ nu_mu)
     1.75675457E-04    3     1000022       -15        16   # BR(chi^+_1 -> chi^0_1 tau^+ nu_tau)
DECAY   1000037     2.47802991E+00   # chi^+_2
#    BR                NDA      ID1      ID2
     6.27960123E-02    2    -1000011        12   # BR(chi^+_2 -> ~e^+_L nu_e)
     6.28124003E-02    2    -1000013        14   # BR(chi^+_2 -> ~mu^+_L nu_mu)
     1.94578690E-04    2    -1000015        16   # BR(chi^+_2 -> ~tau^+_1 nu_tau)
     6.73527964E-02    2    -2000015        16   # BR(chi^+_2 -> ~tau^+_2 nu_tau)
     2.50014878E-02    2     1000012       -11   # BR(chi^+_2 -> ~nu_e e^+)
     2.50277369E-02    2     1000014       -13   # BR(chi^+_2 -> ~nu_mu mu^+)
     3.24562636E-02    2     1000016       -15   # BR(chi^+_2 -> ~nu_tau tau^+)
     6.20486538E-02    2     1000022        24   # BR(chi^+_2 -> chi^0_1 W^+)
     2.77763302E-01    2     1000023        24   # BR(chi^+_2 -> chi^0_2 W^+)
     2.27831764E-01    2     1000024        23   # BR(chi^+_2 -> chi^+_1 Z)
     1.56440774E-01    2     1000024        25   # BR(chi^+_2 -> chi^+_1 h^0)
#    BR                NDA      ID1      ID2       ID3
DECAY   1000022     0.00000000E+00   # chi^0_1
DECAY   1000023     6.45585774E-02   # chi^0_2
#    BR                NDA      ID1      ID2
     2.87842502E-02    2     2000011       -11   # BR(chi^0_2 -> ~e^-_R e^+)
     2.87842502E-02    2    -2000011        11   # BR(chi^0_2 -> ~e^+_R e^-)
     2.96034049E-02    2     2000013       -13   # BR(chi^0_2 -> ~mu^-_R mu^+)
     2.96034049E-02    2    -2000013        13   # BR(chi^0_2 -> ~mu^+_R mu^-)
     2.62264132E-01    2     1000015       -15   # BR(chi^0_2 -> ~tau^-_1 tau^+)
     2.62264132E-01    2    -1000015        15   # BR(chi^0_2 -> ~tau^+_1 tau^-)
     5.73866452E-02    2     1000012       -12   # BR(chi^0_2 -> ~nu_e nu_bar_e)
     5.73866452E-02    2    -1000012        12   # BR(chi^0_2 -> ~nu^*_e nu_e)
     5.74094483E-02    2     1000014       -14   # BR(chi^0_2 -> ~nu_mu nu_bar_mu)
     5.74094483E-02    2    -1000014        14   # BR(chi^0_2 -> ~nu^*_mu nu_mu)
     6.40243668E-02    2     1000016       -16   # BR(chi^0_2 -> ~nu_tau nu_bar_tau)
     6.40243668E-02    2    -1000016        16   # BR(chi^0_2 -> ~nu^*_tau nu_tau)
#    BR                NDA      ID1      ID2       ID3
     2.34669368E-04    3     1000022        11       -11   # BR(chi^0_2 -> chi^0_1 e^- e^+)
     2.34386701E-04    3     1000022        13       -13   # BR(chi^0_2 -> chi^0_1 mu^- mu^+)
     1.72229150E-04    3     1000022        15       -15   # BR(chi^0_2 -> chi^0_1 tau^- tau^+)
DECAY   1000025     1.77326651E+00   # chi^0_3
#    BR                NDA      ID1      ID2
     1.55799521E-03    2     2000011       -11   # BR(chi^0_3 -> ~e^-_R e^+)
     1.55799521E-03    2    -2000011        11   # BR(chi^0_3 -> ~e^+_R e^-)
     7.04220533E-04    2     1000011       -11   # BR(chi^0_3 -> ~e^-_L e^+)
     7.04220533E-04    2    -1000011        11   # BR(chi^0_3 -> ~e^+_L e^-)
     1.57091385E-03    2     2000013       -13   # BR(chi^0_3 -> ~mu^-_R mu^+)
     1.57091385E-03    2    -2000013        13   # BR(chi^0_3 -> ~mu^+_R mu^-)
     7.30565655E-04    2     1000013       -13   # BR(chi^0_3 -> ~mu^-_L mu^+)
     7.30565655E-04    2    -1000013        13   # BR(chi^0_3 -> ~mu^+_L mu^-)
     5.93749211E-03    2     1000015       -15   # BR(chi^0_3 -> ~tau^-_1 tau^+)
     5.93749211E-03    2    -1000015        15   # BR(chi^0_3 -> ~tau^+_1 tau^-)
     7.54840499E-03    2     2000015       -15   # BR(chi^0_3 -> ~tau^-_2 tau^+)
     7.54840499E-03    2    -2000015        15   # BR(chi^0_3 -> ~tau^+_2 tau^-)
     3.94374081E-03    2     1000012       -12   # BR(chi^0_3 -> ~nu_e nu_bar_e)
     3.94374081E-03    2    -1000012        12   # BR(chi^0_3 -> ~nu^*_e nu_e)
     3.94380259E-03    2     1000014       -14   # BR(chi^0_3 -> ~nu_mu nu_bar_mu)
     3.94380259E-03    2    -1000014        14   # BR(chi^0_3 -> ~nu^*_mu nu_mu)
     3.96125335E-03    2     1000016       -16   # BR(chi^0_3 -> ~nu_tau nu_bar_tau)
     3.96125335E-03    2    -1000016        16   # BR(chi^0_3 -> ~nu^*_tau nu_tau)
     2.90393653E-01    2     1000024       -24   # BR(chi^0_3 -> chi^+_1 W^-)
     2.90393653E-01    2    -1000024        24   # BR(chi^0_3 -> chi^-_1 W^+)
     1.22161093E-01    2     1000022        23   # BR(chi^0_3 -> chi^0_1 Z)
     2.05920578E-01    2     1000023        23   # BR(chi^0_3 -> chi^0_2 Z)
     2.13114490E-02    2     1000022        25   # BR(chi^0_3 -> chi^0_1 h^0)
     9.98124980E-03    2     1000023        25   # BR(chi^0_3 -> chi^0_2 h^0)
#    BR                NDA      ID1      ID2       ID3
DECAY   1000035     2.61466302E+00   # chi^0_4
#    BR                NDA      ID1      ID2
     4.39971713E-03    2     2000011       -11   # BR(chi^0_4 -> ~e^-_R e^+)
     4.39971713E-03    2    -2000011        11   # BR(chi^0_4 -> ~e^+_R e^-)
     1.18593438E-02    2     1000011       -11   # BR(chi^0_4 -> ~e^-_L e^+)
     1.18593438E-02    2    -1000011        11   # BR(chi^0_4 -> ~e^+_L e^-)
     4.39154104E-03    2     2000013       -13   # BR(chi^0_4 -> ~mu^-_R mu^+)
     4.39154104E-03    2    -2000013        13   # BR(chi^0_4 -> ~mu^+_R mu^-)
     1.18857812E-02    2     1000013       -13   # BR(chi^0_4 -> ~mu^-_L mu^+)
     1.18857812E-02    2    -1000013        13   # BR(chi^0_4 -> ~mu^+_L mu^-)
     3.03734968E-03    2     1000015       -15   # BR(chi^0_4 -> ~tau^-_1 tau^+)
     3.03734968E-03    2    -1000015        15   # BR(chi^0_4 -> ~tau^+_1 tau^-)
     1.84552921E-02    2     2000015       -15   # BR(chi^0_4 -> ~tau^-_2 tau^+)
     1.84552921E-02    2    -2000015        15   # BR(chi^0_4 -> ~tau^+_2 tau^-)
     3.04160365E-02    2     1000012       -12   # BR(chi^0_4 -> ~nu_e nu_bar_e)
     3.04160365E-02    2    -1000012        12   # BR(chi^0_4 -> ~nu^*_e nu_e)
     3.04164517E-02    2     1000014       -14   # BR(chi^0_4 -> ~nu_mu nu_bar_mu)
     3.04164517E-02    2    -1000014        14   # BR(chi^0_4 -> ~nu^*_mu nu_mu)
     3.05336911E-02    2     1000016       -16   # BR(chi^0_4 -> ~nu_tau nu_bar_tau)
     3.05336911E-02    2    -1000016        16   # BR(chi^0_4 -> ~nu^*_tau nu_tau)
     2.42802914E-01    2     1000024       -24   # BR(chi^0_4 -> chi^+_1 W^-)
     2.42802914E-01    2    -1000024        24   # BR(chi^0_4 -> chi^-_1 W^+)
     2.00961627E-02    2     1000022        23   # BR(chi^0_4 -> chi^0_1 Z)
     1.64266293E-02    2     1000023        23   # BR(chi^0_4 -> chi^0_2 Z)
     6.57519403E-02    2     1000022        25   # BR(chi^0_4 -> chi^0_1 h^0)
     1.21040731E-01    2     1000023        25   # BR(chi^0_4 -> chi^0_2 h^0)
#    BR                NDA      ID1      ID2       ID3
DECAY   1000021     6.06220858E+00   # ~g
#    BR                NDA      ID1      ID2
     5.21740958E-02    2     2000002        -2   # BR(~g -> ~u_R u_bar)
     5.21740958E-02    2    -2000002         2   # BR(~g -> ~u^*_R u)
     2.96680610E-02    2     1000002        -2   # BR(~g -> ~u_L u_bar)
     2.96680610E-02    2    -1000002         2   # BR(~g -> ~u^*_L u)
     5.21328781E-02    2     2000004        -4   # BR(~g -> ~c_R c_bar)
     5.21328781E-02    2    -2000004         4   # BR(~g -> ~c^*_R c)
     2.96870174E-02    2     1000004        -4   # BR(~g -> ~c_L c_bar)
     2.96870174E-02    2    -1000004         4   # BR(~g -> ~c^*_L c)
     2.97472516E-04    2     1000006        -4   # BR(~g -> ~t_1 c_bar)
     2.97472516E-04    2    -1000006         4   # BR(~g -> ~t^*_1 c)
     3.14981118E-02    2     1000006        -6   # BR(~g -> ~t_1 t_bar)
     3.14981118E-02    2    -1000006         6   # BR(~g -> ~t^*_1 t)
     5.25305620E-02    2     2000001        -1   # BR(~g -> ~d_R d_bar)
     5.25305620E-02    2    -2000001         1   # BR(~g -> ~d^*_R d)
     2.37415486E-02    2     1000001        -1   # BR(~g -> ~d_L d_bar)
     2.37415486E-02    2    -1000001         1   # BR(~g -> ~d^*_L d)
     5.25334361E-02    2     2000003        -3   # BR(~g -> ~s_R s_bar)
     5.25334361E-02    2    -2000003         3   # BR(~g -> ~s^*_R s)
     2.37424243E-02    2     1000003        -3   # BR(~g -> ~s_L s_bar)
     2.37424243E-02    2    -1000003         3   # BR(~g -> ~s^*_L s)
     9.69934653E-02    2     1000005        -5   # BR(~g -> ~b_1 b_bar)
     9.69934653E-02    2    -1000005         5   # BR(~g -> ~b^*_1 b)
     5.40257871E-02    2     2000005        -5   # BR(~g -> ~b_2 b_bar)
     5.40257871E-02    2    -2000005         5   # BR(~g -> ~b^*_2 b)
#    BR                NDA      ID1      ID2       ID3
     1.20928696E-04    3     1000024         5        -6   # BR(~g -> chi^+_1 b t_bar)
     1.20928696E-04    3    -1000024        -5         6   # BR(~g -> chi^-_1 b_bar t)
     7.48354899E-04    3     1000037         5        -6   # BR(~g -> chi^+_2 b t_bar)
     7.48354899E-04    3    -1000037        -5         6   # BR(~g -> chi^-_2 b_bar t)
DECAY        25     2.52588499E-03   # h^0
#    BR                NDA      ID1      ID2
     4.13764400E-04    2          13       -13   # BR(h^0 -> mu^- mu^+)
     1.16870550E-01    2          15       -15   # BR(h^0 -> tau^- tau^+)
     3.25143754E-04    2           3        -3   # BR(h^0 -> s s_bar)
     7.61388830E-01    2           5        -5   # BR(h^0 -> b b_bar)
     4.07565373E-02    2           4        -4   # BR(h^0 -> c c_bar)
     3.33717310E-02    2          21        21   # BR(h^0 -> g g)
     2.44243830E-03    2          22        22   # BR(h^0 -> photon photon)
# writing decays into V V* as 3-body decays
#    BR                NDA      ID1      ID2       ID3
     2.11246565E-03    3          24        11        12   # BR(h^0 -> W^+ e^- nu_e)
     2.11246565E-03    3          24        13        14   # BR(h^0 -> W^+ mu^- nu_mu)
     2.11246565E-03    3          24        15        16   # BR(h^0 -> W^+ tau^- nu_tau)
     7.39362976E-03    3          24         1        -2   # BR(h^0 -> W^+ d u_bar)
     7.39362976E-03    3          24         3        -4   # BR(h^0 -> W^+ s c_bar)
     2.11246565E-03    3         -24       -11       -12   # BR(h^0 -> W^- e^+ nu_bar_e)
     2.11246565E-03    3         -24       -13       -14   # BR(h^0 -> W^- mu^+ nu_bar_mu)
     2.11246565E-03    3         -24       -15       -16   # BR(h^0 -> W^- tau^+ nu_bar_tau)
     7.39362976E-03    3         -24        -1         2   # BR(h^0 -> W^- d_bar u)
     7.39362976E-03    3         -24        -3         4   # BR(h^0 -> W^- s_bar c)
     7.63251320E-05    3          23        11       -11   # BR(h^0 -> Z e^- e^+)
     7.63251320E-05    3          23        13       -13   # BR(h^0 -> Z mu^- mu^+)
     6.54215417E-05    3          23        15       -15   # BR(h^0 -> Z tau^- tau^+)
     4.36143611E-04    3          23        12       -12   # BR(h^0 -> Z nu_e nu_bar_e)
     3.05300528E-04    3          23         1        -1   # BR(h^0 -> Z u u_bar)
     3.05300528E-04    3          23         3        -3   # BR(h^0 -> Z c c_bar)
     3.05300528E-04    3          23         5        -5   # BR(h^0 -> Z t t_bar)
     3.05300528E-04    3          23         2        -2   # BR(h^0 -> Z u u_bar)
     3.05300528E-04    3          23         4        -4   # BR(h^0 -> Z c c_bar)
DECAY        35     7.05723551E-01   # H^0
#    BR                NDA      ID1      ID2
     3.75581055E-04    2          13       -13   # BR(H^0 -> mu^- mu^+)
     1.06236468E-01    2          15       -15   # BR(H^0 -> tau^- tau^+)
     2.98611091E-04    2           3        -3   # BR(H^0 -> s s_bar)
     7.01872429E-01    2           5        -5   # BR(H^0 -> b b_bar)
     3.91512520E-02    2           6        -6   # BR(H^0 -> t t_bar)
     6.59723890E-04    2     2000011  -2000011   # BR(H^0 -> ~e^-_R ~e^+_R)
     1.78763485E-04    2     1000011  -1000011   # BR(H^0 -> ~e^-_L ~e^+_L)
     6.66457085E-04    2     2000013  -2000013   # BR(H^0 -> ~mu^-_R ~mu^+_R)
     1.76474890E-04    2     1000013  -1000013   # BR(H^0 -> ~mu^-_L ~mu^+_L)
     3.26747997E-03    2     1000015  -1000015   # BR(H^0 -> ~tau^-_1 ~tau^+_1)
     2.11827674E-03    2     1000015  -2000015   # BR(H^0 -> ~tau^-_1 ~tau^+_2)
     2.11827674E-03    2    -1000015   2000015   # BR(H^0 -> ~tau^+_1 ~tau^-_2)
     1.71171055E-03    2     1000012  -1000012   # BR(H^0 -> ~nu_e ~nu^*_e)
     1.71179537E-03    2     1000014  -1000014   # BR(H^0 -> ~nu_mu ~nu^*_mu)
     1.73556170E-03    2     1000016  -1000016   # BR(H^0 -> ~nu_tau ~nu^*_tau)
     2.36854009E-02    2     1000022   1000022   # BR(H^0 -> chi^0_1 chi^0_1)
     6.04545997E-02    2     1000022   1000023   # BR(H^0 -> chi^0_1 chi^0_2)
     8.11913493E-03    2     1000023   1000023   # BR(H^0 -> chi^0_2 chi^0_2)
     2.35354609E-02    2     1000024  -1000024   # BR(H^0 -> chi^+_1 chi^-_1)
     2.21182815E-03    2          23        23   # BR(H^0 -> Z Z)
     4.60121984E-03    2          24       -24   # BR(H^0 -> W^+ W^-)
     1.44217107E-02    2          25        25   # BR(H^0 -> h^0 h^0)
     6.63358718E-04    2          21        21   # BR(H^0 -> g g)
DECAY        36     1.09756506E+00   # A^0
#    BR                NDA      ID1      ID2
     2.42018838E-04    2          13       -13   # BR(A^0 -> mu^- mu^+)
     6.84632315E-02    2          15       -15   # BR(A^0 -> tau^- tau^+)
     1.92417837E-04    2           3        -3   # BR(A^0 -> s s_bar)
     4.52332534E-01    2           5        -5   # BR(A^0 -> b b_bar)
     1.09031518E-01    2           6        -6   # BR(A^0 -> t t_bar)
     2.01146203E-03    2     1000015  -2000015   # BR(A^0 -> ~tau^-_1 ~tau^+_2)
     2.01146203E-03    2    -1000015   2000015   # BR(A^0 -> ~tau^+_1 ~tau^-_2)
     2.43638191E-02    2     1000022   1000022   # BR(A^0 -> chi^0_1 chi^0_1)
     9.83696594E-02    2     1000022   1000023   # BR(A^0 -> chi^0_1 chi^0_2)
     6.46767436E-02    2     1000023   1000023   # BR(A^0 -> chi^0_2 chi^0_2)
     1.75718213E-01    2     1000024  -1000024   # BR(A^0 -> chi^+_1 chi^-_1)
     2.48818520E-03    2          25        23   # BR(A^0 -> h^0 Z)
DECAY        37     6.22152288E-01   # H^+
#    BR                NDA      ID1      ID2
     4.37007673E-04    2         -13        12   # BR(H^+ -> mu^+ nu_e)
     1.23622681E-01    2         -15        12   # BR(H^+ -> tau^+ nu_e)
     3.10415409E-04    2          -3         4   # BR(H^+ -> s_bar c)
     6.33343815E-01    2          -5         6   # BR(H^+ -> b_bar t)
     1.65557923E-03    2    -1000011   1000012   # BR(H^+ -> ~e^+_L ~nu_e)
     1.64827654E-03    2    -1000013   1000014   # BR(H^+ -> ~mu^+_L ~nu_mu)
     1.01087538E-02    2    -1000015   1000016   # BR(H^+ -> ~tau^+_1 ~nu_tau)
     3.66655010E-04    2    -2000015   1000016   # BR(H^+ -> ~tau^+_2 ~nu_tau)
     2.21727697E-01    2     1000024   1000022   # BR(H^+ -> chi^+_1 chi^0_1)
     1.73719375E-03    2     1000024   1000023   # BR(H^+ -> chi^+_1 chi^0_2)
     5.00232252E-03    2          25        24   # BR(H^+ -> h^0 W^+)
DECAY         6     2.43000000E+00   # top
#    BR                NDA      ID1      ID2
     1.00000000E+00    2           5        24   # BR(t -> b W)
Block HiggsBoundsInputHiggsCouplingsFermions
# ScalarNormEffCoupSq PseudoSNormEffCoupSq NP IP1 IP2 IP2
    1.34656604E+00    0.00000000E+00        3  25   5   5  # h0-b-b eff. coupling^2, normalised to SM
    9.96534340E+01    0.00000000E+00        3  35   5   5  # H0-b-b eff. coupling^2, normalised to SM
    0.00000000E+00    1.00000000E+02        3  36   5   5  # A0-b-b eff. coupling^2, normalised to SM
#
    9.96534340E-01    0.00000000E+00        3  25   6   6  # h0-t-t eff. coupling^2, normalised to SM
    1.34656604E-02    0.00000000E+00        3  35   6   6  # H0-t-t eff. coupling^2, normalised to SM
    0.00000000E+00    1.00000000E-02        3  36   6   6  # A0-t-t eff. coupling^2, normalised to SM
#
    1.34656604E+00    0.00000000E+00        3  25  15  15  # h0-tau-tau eff. coupling^2, normalised to SM
    9.96534340E+01    0.00000000E+00        3  35  15  15  # H0-tau-tau eff. coupling^2, normalised to SM
    0.00000000E+00    1.00000000E+02        3  36  15  15  # A0-tau-tau eff. coupling^2, normalised to SM
#
Block HiggsBoundsInputHiggsCouplingsBosons
    9.99742252E-01        3  25  24  24  # h0-W-W eff. coupling^2, normalised to SM
    2.57747632E-04        3  35  24  24  # H0-W-W eff. coupling^2, normalised to SM
    0.00000000E+00        3  36  24  24  # A0-W-W eff. coupling^2, normalised to SM
#
    9.99742252E-01        3  25  23  23  # h0-Z-Z eff. coupling^2, normalised to SM
    2.57747632E-04        3  35  23  23  # H0-Z-Z eff. coupling^2, normalised to SM
    0.00000000E+00        3  36  23  23  # A0-Z-Z eff. coupling^2, normalised to SM
#
    1.02938705E+00        3  25  21  21  # h0-g-g eff. coupling^2, normalised to SM
    4.37608296E-02        3  35  21  21  # H0-g-g eff. coupling^2, normalised to SM
    9.33124080E-02        3  36  21  21  # A0-g-g eff. coupling^2, normalised to SM
#
    0.00000000E+00        3  25  25  23  # h0-h0-Z eff. coupling^2, normalised to SM
    0.00000000E+00        3  35  25  23  # H0-h0-Z eff. coupling^2, normalised to SM
    2.57747632E-04        3  36  25  23  # A0-h0-Z eff. coupling^2, normalised to SM
    0.00000000E+00        3  35  35  23  # H0-H0-Z eff. coupling^2, normalised to SM
    9.99742252E-01        3  36  35  23  # A0-H0-Z eff. coupling^2, normalised to SM
    0.00000000E+00        3  36  36  23  # A0-A0-Z eff. coupling^2, normalised to SM
#
    0.00000000E+00        4  25  21  21  23  # h0-g-g-Z eff. coupling^2, normalised to SM
    0.00000000E+00        4  35  21  21  23  # H0-g-g-Z eff. coupling^2, normalised to SM
    0.00000000E+00        4  36  21  21  23  # A0-g-g-Z eff. coupling^2, normalised to SM
Block SPhenoLowEnergy  # low energy observables
    1    2.82715188E-04   # BR(b -> s gamma)
    2    1.83082519E-06   # BR(b -> s mu+ mu-)
    3    4.53880007E-05   # BR(b -> s nu nu)
    4    5.92682326E-11   # BR(Bd -> mu+ mu-)
    5    4.01726971E-09   # BR(Bs -> mu+ mu-)
    6    1.14311880E-04   # BR(B_u -> tau nu)
    7    9.72483817E-01   # BR(B_u -> tau nu)/BR(B_u -> tau nu)_SM
    8    3.08637094E-01   # |Delta(M_Bd)| [ps^-1] 
    9    2.32762994E+01   # |Delta(M_Bs)| [ps^-1] 
   20    1.49990164E-13   # Delta(g-2)_electron/2
   21    2.85247216E-09   # Delta(g-2)_muon/2
   22    1.27747253E-07   # Delta(g-2)_tau/2
   23    0.00000000E+00   # electric dipole moment of the electron
   24    0.00000000E+00   # electric dipole moment of the muon
   25    0.00000000E+00   # electric dipole moment of the tau
   26    0.00000000E+00   # Br(mu -> e gamma)
   27    0.00000000E+00   # Br(tau -> e gamma)
   28    0.00000000E+00   # Br(tau -> mu gamma)
   29    0.00000000E+00   # Br(mu -> 3 e)
   30    0.00000000E+00   # Br(tau -> 3 e)
   31    0.00000000E+00   # Br(tau -> 3 mu)
   39    1.51921673E-03   # Delta(rho_parameter)
   40    0.00000000E+00   # BR(Z -> e mu)
   41    0.00000000E+00   # BR(Z -> e tau)
   42    0.00000000E+00   # BR(Z -> mu tau)