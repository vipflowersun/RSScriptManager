/PROG LX_W7P22S1SG_G1
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
  19:J P[17] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(2,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,22,121,1,0,109,112) ;
  23://L P[8] 0mm/sec FINE ;
  24:L PR[109] 100mm/sec FINE ;
  25:  Weld Start[1,1] ;
  26:  Track TAST[1] ;
  27:  Weave Sine[1] ;
  28:  CALL MYG1TRAJE01 ;
  29://L P[11] 0mm/sec FINE ;
  30:L PR[112] WELD_SPEED FINE ;
  31:  Weld End[1,1] ;
  32:  Track End ;
  33:  Weave End ;
  34:L P[12] 100mm/sec FINE ;
  35:J P[19] 20% FINE ;
  36:J P[18] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1225.822 mm,	E2 =  -199.000 mm,	E3 =   427.120 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -10.755 deg,	J2 =  -54.871 deg,	J3 =    3.942 deg,
	J4 =   21.363 deg,	J5 =   52.591 deg,	J6 =  -36.899 deg,
	E1 =  1225.822 mm,	E2 =  -199.000 mm,	E3 =   427.120 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    437.477 mm,	Y =   1295.620 mm,	Z =   1698.340 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1225.822 mm,	E2=   -199.000 mm,	E3=    427.120 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    437.477 mm,	Y =   1295.620 mm,	Z =   1698.340 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1225.822 mm,	E2=   -199.000 mm,	E3=    427.120 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    437.477 mm,	Y =   1295.620 mm,	Z =   1698.340 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1225.822 mm,	E2=   -199.000 mm,	E3=    427.120 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    438.786 mm,	Y =   1296.862 mm,	Z =   1798.324 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1227.064 mm,	E2=   -199.000 mm,	E3=    527.104 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    438.786 mm,	Y =   1296.862 mm,	Z =   1798.324 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1227.064 mm,	E2=   -199.000 mm,	E3=    527.104 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    438.786 mm,	Y =   1296.862 mm,	Z =   1798.324 mm,
	W =   176.247 deg,	P =     0.887 deg,	R =   -72.124 deg,
	E1=   1227.064 mm,	E2=   -199.000 mm,	E3=    527.104 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -9.369 deg,	J2 =  -49.259 deg,	J3 =    5.492 deg,
	J4 =   18.086 deg,	J5 =   54.327 deg,	J6 =   26.783 deg,
	E1 =  1257.912 mm,	E2 =  -148.430 mm,	E3 =   405.770 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -8.041 deg,	J2 =  -43.781 deg,	J3 =    7.142 deg,
	J4 =   14.875 deg,	J5 =   55.990 deg,	J6 =   90.349 deg,
	E1 =  1288.760 mm,	E2 =   -97.860 mm,	E3 =   284.437 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -6.713 deg,	J2 =  -38.302 deg,	J3 =    8.793 deg,
	J4 =   11.663 deg,	J5 =   57.652 deg,	J6 =  153.916 deg,
	E1 =  1319.609 mm,	E2 =   -47.290 mm,	E3 =   163.103 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    690.359 mm,	Y =   1400.507 mm,	Z =   1626.843 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1319.609 mm,	E2=    -47.290 mm,	E3=    163.103 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    774.546 mm,	Y =   1423.943 mm,	Z =   1875.458 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1343.045 mm,	E2=     36.897 mm,	E3=    411.718 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    774.022 mm,	Y =   1423.446 mm,	Z =   1835.465 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1342.548 mm,	E2=     36.373 mm,	E3=    371.725 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    773.760 mm,	Y =   1423.198 mm,	Z =   1815.468 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1342.300 mm,	E2=     36.111 mm,	E3=    351.728 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    773.237 mm,	Y =   1422.701 mm,	Z =   1775.475 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1341.803 mm,	E2=     35.588 mm,	E3=    311.734 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    689.050 mm,	Y =   1399.265 mm,	Z =   1526.860 mm,
	W =  -119.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1318.367 mm,	E2=    -48.598 mm,	E3=     63.119 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.357 deg,	J2 =  -49.151 deg,	J3 =    4.397 deg,
	J4 =    5.832 deg,	J5 =   43.826 deg,	J6 =   76.958 deg,
	E1 =  1318.367 mm,	E2 =   -48.598 mm,	E3 =    63.119 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1318.367 mm,	E2 =   -48.598 mm,	E3 =    63.119 mm
};
/END

