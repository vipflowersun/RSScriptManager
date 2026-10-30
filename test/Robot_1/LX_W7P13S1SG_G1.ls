/PROG LX_W7P13S1SG_G1
/ATTR
OWNER       = MNEDITOR;
COMMENT     = "";
PROG_SIZE   = 2105;
CREATE      = DATE 2026-10-27  TIME 17:52:28;
MODIFIED    = DATE 2026-10-27  TIME 17:52:28;
FILE_NAME   = "";
VERSION     = 0;
LINE_COUNT  = 53;
MEMORY_SIZE = 2589;
PROTECT     = READ_WRITE;
STORAGE     = SHADOW;
TCD:  STACK_SIZE = 0,
      TASK_PRIORITY = 50,
      TIME_SLICE = 0,
      BUSY_LAMP_OFF = 0,
      ABORT_REQUEST = 0,
      PAUSE_REQUEST = 0;
DEFAULT_GROUP   = 1,*,*,*,*;
CONTROL_CODE    = 00000000 00000000;
/APPL
  ARC: TRUE;
  ARC Welding Equipment : 1,*,*,*,*;
MPAS ;
MPAS_NUM_PASSES     : 0;
MPAS_LAST_PASS      : 0;
MPAS_CURRENT_PASS   : 0;
MPAS_STATUS_PASS    : 0;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  CALL MYG1CONNSNR(0) ;
   4:J P[17] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[18] 20% FINE ;
   7:L P[1] 100mm/sec FINE ;
   8:L P[2] 25mm/sec FINE ;
   9:  WAIT   1.00(sec) ;
  10:  CALL MYG1VSNSCAN(1,1,0) ;
  11:L P[3] 100mm/sec FINE ;
  12:L P[4] 100mm/sec FINE ;
  13:L P[5] 25mm/sec FINE ;
  14:  WAIT   1.00(sec) ;
  15:  CALL MYG1VSNSCAN(1,1,0) ;
  16:L P[6] 100mm/sec FINE ;
  17:J P[19] 20% FINE ;
  18:J P[20] 20% FINE ;
  19:J P[21] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(1,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,13,89,1,0,109,116) ;
  23:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  24://L P[8] 0mm/sec FINE ;
  25://L P[15] 0mm/sec FINE ;
  26:L P[16] 100mm/sec FINE ;
  27:J P[23] 20% FINE ;
  28:J P[22] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   678.891 mm,	E2 =   416.065 mm,	E3 =   377.205 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   11.652 deg,	J2 =  -50.765 deg,	J3 =    8.897 deg,
	J4 =   13.350 deg,	J5 =   51.600 deg,	J6 =  -27.161 deg,
	E1 =   678.891 mm,	E2 =   416.065 mm,	E3 =   377.205 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    942.877 mm,	Y =    898.228 mm,	Z =   1788.895 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    678.891 mm,	E2=    416.065 mm,	E3=    377.205 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    942.877 mm,	Y =    898.228 mm,	Z =   1788.895 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    678.891 mm,	E2=    416.065 mm,	E3=    377.205 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    942.877 mm,	Y =    898.228 mm,	Z =   1788.895 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    678.891 mm,	E2=    416.065 mm,	E3=    377.205 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1041.681 mm,	Y =    729.025 mm,	Z =   1789.704 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    509.689 mm,	E2=    514.869 mm,	E3=    378.014 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1041.681 mm,	Y =    729.025 mm,	Z =   1789.704 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    509.689 mm,	E2=    514.869 mm,	E3=    378.014 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1041.681 mm,	Y =    729.025 mm,	Z =   1789.704 mm,
	W =  -176.844 deg,	P =     0.817 deg,	R =   -56.979 deg,
	E1=    509.689 mm,	E2=    514.869 mm,	E3=    378.014 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   10.880 deg,	J2 =  -46.267 deg,	J3 =    8.548 deg,
	J4 =   11.303 deg,	J5 =   56.238 deg,	J6 =   34.247 deg,
	E1 =   548.734 mm,	E2 =   531.851 mm,	E3 =   311.320 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   10.108 deg,	J2 =  -41.769 deg,	J3 =    8.199 deg,
	J4 =    9.255 deg,	J5 =   60.875 deg,	J6 =   95.654 deg,
	E1 =   587.780 mm,	E2 =   548.833 mm,	E3 =   244.627 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =    9.337 deg,	J2 =  -37.270 deg,	J3 =    7.851 deg,
	J4 =    7.207 deg,	J5 =   65.512 deg,	J6 =  157.061 deg,
	E1 =   626.825 mm,	E2 =   565.815 mm,	E3 =   177.934 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1189.547 mm,	Y =    854.065 mm,	Z =   1688.957 mm,
	W =  -126.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    626.825 mm,	E2=    565.815 mm,	E3=    177.934 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1327.241 mm,	Y =    935.045 mm,	Z =   1909.301 mm,
	W =  -126.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    707.806 mm,	E2=    703.509 mm,	E3=    398.278 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1324.650 mm,	Y =    933.533 mm,	Z =   1909.354 mm,
	W =  -126.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    706.293 mm,	E2=    700.919 mm,	E3=    398.330 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1322.923 mm,	Y =    932.525 mm,	Z =   1909.389 mm,
	W =  -126.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    705.285 mm,	E2=    699.192 mm,	E3=    398.366 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1321.915 mm,	Y =    934.252 mm,	Z =   1909.381 mm,
	W =  -126.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    707.012 mm,	E2=    698.183 mm,	E3=    398.357 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1312.838 mm,	Y =    949.796 mm,	Z =   1909.307 mm,
	W =  -133.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    762.999 mm,	E2=    758.624 mm,	E3=    366.603 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1273.316 mm,	Y =   1017.477 mm,	Z =   1908.983 mm,
	W =  -133.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    830.680 mm,	E2=    719.102 mm,	E3=    366.279 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1263.641 mm,	Y =   1034.046 mm,	Z =   1908.904 mm,
	W =  -133.994 deg,	P =     0.236 deg,	R =   120.283 deg,
	E1=    847.250 mm,	E2=    709.427 mm,	E3=    366.200 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1224.119 mm,	Y =   1101.727 mm,	Z =   1908.581 mm,
	W =  -134.121 deg,	P =    -0.545 deg,	R =   165.276 deg,
	E1=    822.429 mm,	E2=    798.510 mm,	E3=    365.342 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1186.348 mm,	Y =    963.204 mm,	Z =   1669.352 mm,
	W =  -134.121 deg,	P =    -0.545 deg,	R =   165.276 deg,
	E1=    683.906 mm,	E2=    760.740 mm,	E3=    126.113 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =    4.352 deg,	J2 =  -48.034 deg,	J3 =    3.482 deg,
	J4 =    4.982 deg,	J5 =   54.171 deg,	J6 =   55.879 deg,
	E1 =   683.906 mm,	E2 =   760.740 mm,	E3 =   126.113 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   683.906 mm,	E2 =   760.740 mm,	E3 =   126.113 mm
};
/END

