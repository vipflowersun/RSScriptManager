/PROG LX_W8P29S1SG_G1
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
   7:J P[15] 20% FINE ;
   8:J P[16] 20% FINE ;
   9:J P[17] 20% FINE ;
  10:J P[18] 20% FINE ;
  11:J P[19] 20% FINE ;
  12:J P[20] 20% FINE ;
  13:L P[1] 100mm/sec FINE ;
  14:L P[2] 100mm/sec FINE ;
  15:  WAIT   1.00(sec) ;
  16:  CALL MYG1VSNSCAN(1,1,0) ;
  17:L P[3] 100mm/sec FINE ;
  18:L P[4] 100mm/sec FINE ;
  19:L P[5] 100mm/sec FINE ;
  20:  WAIT   1.00(sec) ;
  21:  CALL MYG1VSNSCAN(1,1,0) ;
  22:L P[6] 100mm/sec FINE ;
  23:J P[21] 20% FINE ;
  24:J P[22] 20% FINE ;
  25:J P[23] 20% FINE ;
  26:L P[7] 100mm/sec FINE ;
  27:  CALL MYG1PROCSET(2,0) ;
  28:  CALL MYG1VSNPCALC(1,8,87659,29,241,1,0,109,112) ;
  29://L P[8] 0mm/sec FINE ;
  30:L PR[109] 100mm/sec FINE ;
  31:  Weld Start[1,1] ;
  32:  Track TAST[1] ;
  33:  Weave Sine[1] ;
  34:  CALL MYG1TRAJE01 ;
  35://L P[11] 0mm/sec FINE ;
  36:L PR[112] WELD_SPEED FINE ;
  37:  Weld End[1,1] ;
  38:  Track End ;
  39:  Weave End ;
  40:L P[12] 100mm/sec FINE ;
  41:J P[24] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -34.040 deg,	J2 =  -31.879 deg,	J3 =    0.000 deg,
	J4 =   15.116 deg,	J5 =   43.505 deg,	J6 =  -50.810 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -36.990 deg,	J2 =  -23.163 deg,	J3 =   -1.249 deg,
	J4 =   17.182 deg,	J5 =   53.275 deg,	J6 =  -59.598 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -37.236 deg,	J2 =  -22.449 deg,	J3 =   -1.243 deg,
	J4 =   17.332 deg,	J5 =   53.949 deg,	J6 =  -60.304 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -45.249 deg,	J2 =  -20.536 deg,	J3 =   -9.007 deg,
	J4 =   29.424 deg,	J5 =   59.687 deg,	J6 =  -72.458 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -55.823 deg,	J2 =   18.349 deg,	J3 =   -7.404 deg,
	J4 =   37.506 deg,	J5 =   88.597 deg,	J6 = -104.792 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -58.650 deg,	J2 =   30.931 deg,	J3 =   -7.338 deg,
	J4 =   40.143 deg,	J5 =   98.220 deg,	J6 = -116.374 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -64.308 deg,	J2 =   36.407 deg,	J3 =    0.033 deg,
	J4 =   33.586 deg,	J5 =  109.359 deg,	J6 = -120.118 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   314.963 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    529.039 mm,	Y =  -3293.853 mm,	Z =   1689.548 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    314.963 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    529.039 mm,	Y =  -3293.853 mm,	Z =   1689.548 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    314.963 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    529.039 mm,	Y =  -3293.853 mm,	Z =   1689.548 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    314.963 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    530.871 mm,	Y =  -3294.104 mm,	Z =   1804.533 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    429.948 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    530.871 mm,	Y =  -3294.104 mm,	Z =   1804.533 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    429.948 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    530.871 mm,	Y =  -3294.104 mm,	Z =   1804.533 mm,
	W =   176.846 deg,	P =     2.192 deg,	R =   -29.064 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    429.948 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -61.244 deg,	J2 =   29.555 deg,	J3 =   -2.872 deg,
	J4 =   30.604 deg,	J5 =  108.579 deg,	J6 =  -56.110 deg,
	E1 = -2599.000 mm,	E2 =  -174.952 mm,	E3 =   376.283 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -58.257 deg,	J2 =   22.560 deg,	J3 =   -5.856 deg,
	J4 =   27.615 deg,	J5 =  107.907 deg,	J6 =    7.877 deg,
	E1 = -2599.000 mm,	E2 =  -150.904 mm,	E3 =   322.618 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -55.270 deg,	J2 =   15.564 deg,	J3 =   -8.839 deg,
	J4 =   24.626 deg,	J5 =  107.235 deg,	J6 =   71.864 deg,
	E1 = -2599.000 mm,	E2 =  -126.856 mm,	E3 =   268.953 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    644.433 mm,	Y =  -3047.254 mm,	Z =   1636.363 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=   -126.856 mm,	E3=    268.953 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    690.691 mm,	Y =  -2973.654 mm,	Z =   1885.794 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=    -80.598 mm,	E3=    518.383 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    689.958 mm,	Y =  -2973.554 mm,	Z =   1839.800 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=    -81.331 mm,	E3=    472.389 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    689.591 mm,	Y =  -2973.504 mm,	Z =   1816.803 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=    -81.697 mm,	E3=    449.392 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    688.859 mm,	Y =  -2973.403 mm,	Z =   1770.809 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=    -82.430 mm,	E3=    403.398 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    642.601 mm,	Y =  -3047.002 mm,	Z =   1521.378 mm,
	W =  -119.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=   -128.688 mm,	E3=    153.968 mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -128.688 mm,	E3 =   153.968 mm
};
/END

