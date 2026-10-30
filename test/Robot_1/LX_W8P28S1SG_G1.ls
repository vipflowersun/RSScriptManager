/PROG LX_W8P28S1SG_G1
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
   7:J P[19] 20% FINE ;
   8:L P[1] 100mm/sec FINE ;
   9:L P[2] 25mm/sec FINE ;
  10:  WAIT   1.00(sec) ;
  11:  CALL MYG1VSNSCAN(1,1,0) ;
  12:L P[3] 100mm/sec FINE ;
  13:L P[4] 100mm/sec FINE ;
  14:L P[5] 25mm/sec FINE ;
  15:  WAIT   1.00(sec) ;
  16:  CALL MYG1VSNSCAN(1,1,0) ;
  17:L P[6] 100mm/sec FINE ;
  18:J P[20] 20% FINE ;
  19:J P[21] 20% FINE ;
  20:J P[22] 20% FINE ;
  21:L P[7] 100mm/sec FINE ;
  22:  CALL MYG1PROCSET(1,0) ;
  23:  CALL MYG1VSNPCALC(1,8,87659,28,177,1,0,109,116) ;
  24:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  25://L P[8] 0mm/sec FINE ;
  26://L P[15] 0mm/sec FINE ;
  27:L P[16] 100mm/sec FINE ;
  28:J P[25] 20% FINE ;
  29:J P[24] 20% FINE ;
  30:J P[23] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   488.128 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -80.754 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   488.128 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -80.754 deg,	J2 =    8.846 deg,	J3 =  -17.676 deg,
	J4 =   31.766 deg,	J5 =   99.934 deg,	J6 =  -74.564 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   488.128 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    281.657 mm,	Y =  -3499.051 mm,	Z =   1800.276 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    488.128 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    281.657 mm,	Y =  -3499.051 mm,	Z =   1800.276 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    488.128 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    281.657 mm,	Y =  -3499.051 mm,	Z =   1800.276 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    488.128 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    276.262 mm,	Y =  -3708.982 mm,	Z =   1799.902 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    487.754 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    276.262 mm,	Y =  -3708.982 mm,	Z =   1799.902 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    487.754 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    276.262 mm,	Y =  -3708.982 mm,	Z =   1799.902 mm,
	W =  -176.737 deg,	P =     1.151 deg,	R =   -88.731 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    487.754 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -80.891 deg,	J2 =   28.525 deg,	J3 =  -12.347 deg,
	J4 =   26.916 deg,	J5 =   96.739 deg,	J6 =  -16.968 deg,
	E1 = -2599.000 mm,	E2 =  -165.936 mm,	E3 =   454.544 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -79.005 deg,	J2 =   28.460 deg,	J3 =  -12.574 deg,
	J4 =   22.197 deg,	J5 =   97.245 deg,	J6 =   45.257 deg,
	E1 = -2599.000 mm,	E2 =  -132.873 mm,	E3 =   421.333 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -77.120 deg,	J2 =   28.395 deg,	J3 =  -12.801 deg,
	J4 =   17.478 deg,	J5 =   97.751 deg,	J6 =  107.481 deg,
	E1 = -2599.000 mm,	E2 =   -99.809 mm,	E3 =   388.122 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    467.801 mm,	Y =  -3680.474 mm,	Z =   1699.655 mm,
	W =  -127.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=    -99.809 mm,	E3=    388.122 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    627.293 mm,	Y =  -3684.787 mm,	Z =   1920.253 mm,
	W =  -127.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=     59.683 mm,	E3=    608.720 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    624.294 mm,	Y =  -3684.710 mm,	Z =   1920.301 mm,
	W =  -127.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=     56.684 mm,	E3=    608.768 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    622.295 mm,	Y =  -3684.659 mm,	Z =   1920.333 mm,
	W =  -127.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=     54.685 mm,	E3=    608.800 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    622.346 mm,	Y =  -3682.659 mm,	Z =   1920.336 mm,
	W =  -127.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=     54.737 mm,	E3=    608.803 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    622.809 mm,	Y =  -3664.665 mm,	Z =   1920.368 mm,
	W =  -134.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=    135.650 mm,	E3=    577.282 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    624.966 mm,	Y =  -3580.693 mm,	Z =   1920.518 mm,
	W =  -134.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=    137.808 mm,	E3=    577.432 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    625.531 mm,	Y =  -3558.700 mm,	Z =   1920.557 mm,
	W =  -134.084 deg,	P =    -0.102 deg,	R =    88.528 deg,
	E1=  -2599.000 mm,	E2=    138.373 mm,	E3=    577.471 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    627.689 mm,	Y =  -3474.728 mm,	Z =   1920.706 mm,
	W =  -134.424 deg,	P =    -0.720 deg,	R =   133.525 deg,
	E1=  -2599.000 mm,	E2=    201.205 mm,	E3=    576.333 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    522.913 mm,	Y =  -3571.820 mm,	Z =   1680.723 mm,
	W =  -134.424 deg,	P =    -0.720 deg,	R =   133.525 deg,
	E1=  -2599.000 mm,	E2=     96.429 mm,	E3=    336.351 mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -77.062 deg,	J2 =   33.920 deg,	J3 =  -10.465 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =    96.429 mm,	E3 =   336.351 mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -38.531 deg,	J2 =  -13.040 deg,	J3 =   -5.233 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =    96.429 mm,	E3 =   336.351 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =    96.429 mm,	E3 =   336.351 mm
};
/END

