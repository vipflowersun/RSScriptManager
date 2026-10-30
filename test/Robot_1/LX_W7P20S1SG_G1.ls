/PROG LX_W7P20S1SG_G1
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
   4:J P[13] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 20% FINE ;
   7:L P[1] 100mm/sec FINE ;
   8:L P[2] 100mm/sec FINE ;
   9:  WAIT   1.00(sec) ;
  10:  CALL MYG1VSNSCAN(1,1,0) ;
  11:L P[3] 100mm/sec FINE ;
  12:L P[4] 100mm/sec FINE ;
  13:L P[5] 100mm/sec FINE ;
  14:  WAIT   1.00(sec) ;
  15:  CALL MYG1VSNSCAN(1,1,0) ;
  16:L P[6] 100mm/sec FINE ;
  17:J P[15] 20% FINE ;
  18:J P[16] 20% FINE ;
  19:L P[7] 100mm/sec FINE ;
  20:  CALL MYG1PROCSET(2,0) ;
  21:  CALL MYG1VSNPCALC(1,7,87658,20,113,1,0,109,112) ;
  22://L P[8] 0mm/sec FINE ;
  23:L PR[109] 100mm/sec FINE ;
  24:  Weld Start[1,1] ;
  25:  Track TAST[1] ;
  26:  Weave Sine[1] ;
  27:  CALL MYG1TRAJE01 ;
  28://L P[11] 0mm/sec FINE ;
  29:L PR[112] WELD_SPEED FINE ;
  30:  Weld End[1,1] ;
  31:  Track End ;
  32:  Weave End ;
  33:L P[12] 100mm/sec FINE ;
  34:J P[18] 20% FINE ;
  35:J P[17] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   389.505 mm,	E2 =   353.626 mm,	E3 =   426.584 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   21.915 deg,	J2 =  -41.760 deg,	J3 =   -4.970 deg,
	J4 =   17.317 deg,	J5 =   59.812 deg,	J6 =  -30.447 deg,
	E1 =   389.505 mm,	E2 =   353.626 mm,	E3 =   426.584 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    988.708 mm,	Y =    822.482 mm,	Z =   1697.000 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    389.505 mm,	E2=    353.626 mm,	E3=    426.584 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    988.708 mm,	Y =    822.482 mm,	Z =   1697.000 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    389.505 mm,	E2=    353.626 mm,	E3=    426.584 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    988.708 mm,	Y =    822.482 mm,	Z =   1697.000 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    389.505 mm,	E2=    353.626 mm,	E3=    426.584 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    990.017 mm,	Y =    823.724 mm,	Z =   1796.984 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    390.747 mm,	E2=    354.935 mm,	E3=    526.567 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    990.017 mm,	Y =    823.724 mm,	Z =   1796.984 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    390.747 mm,	E2=    354.935 mm,	E3=    526.567 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    990.017 mm,	Y =    823.724 mm,	Z =   1796.984 mm,
	W =   176.148 deg,	P =     1.413 deg,	R =   -42.130 deg,
	E1=    390.747 mm,	E2=    354.935 mm,	E3=    526.567 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   16.254 deg,	J2 =  -45.890 deg,	J3 =    1.528 deg,
	J4 =   16.931 deg,	J5 =   60.462 deg,	J6 =   54.750 deg,
	E1 =   541.353 mm,	E2 =   486.958 mm,	E3 =   394.406 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   10.594 deg,	J2 =  -50.021 deg,	J3 =    8.026 deg,
	J4 =   16.546 deg,	J5 =   61.112 deg,	J6 =  139.946 deg,
	E1 =   691.958 mm,	E2 =   618.981 mm,	E3 =   262.244 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1156.307 mm,	Y =   1039.117 mm,	Z =   1625.232 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    691.958 mm,	E2=    618.981 mm,	E3=    262.244 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1217.888 mm,	Y =   1101.265 mm,	Z =   1873.662 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    754.106 mm,	E2=    680.562 mm,	E3=    510.674 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1217.364 mm,	Y =   1100.768 mm,	Z =   1833.669 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    753.609 mm,	E2=    680.038 mm,	E3=    470.681 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1217.102 mm,	Y =   1100.520 mm,	Z =   1813.672 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    753.361 mm,	E2=    679.777 mm,	E3=    450.684 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1216.579 mm,	Y =   1100.023 mm,	Z =   1773.679 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    752.864 mm,	E2=    679.253 mm,	E3=    410.690 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1154.998 mm,	Y =   1037.875 mm,	Z =   1525.249 mm,
	W =  -118.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    690.717 mm,	E2=    617.672 mm,	E3=    162.260 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    5.297 deg,	J2 =  -55.011 deg,	J3 =    4.013 deg,
	J4 =    8.273 deg,	J5 =   45.556 deg,	J6 =   69.973 deg,
	E1 =   690.717 mm,	E2 =   617.672 mm,	E3 =   162.260 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   690.717 mm,	E2 =   617.672 mm,	E3 =   162.260 mm
};
/END

