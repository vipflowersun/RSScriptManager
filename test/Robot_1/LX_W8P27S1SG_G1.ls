/PROG LX_W8P27S1SG_G1
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
   4:J P[13] 10% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 10% FINE ;
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
  17:J P[15] 10% FINE ;
  18:J P[16] 10% FINE ;
  19:L P[7] 100mm/sec FINE ;
  20:  CALL MYG1PROCSET(1,0) ;
  21:  CALL MYG1VSNPCALC(1,8,87659,27,165,1,0,109,112) ;
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
  34:J P[19] 10% FINE ;
  35:J P[18] 10% FINE ;
  36:J P[17] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   470.623 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -31.007 deg,	J2 =  -57.595 deg,	J3 =    5.570 deg,
	J4 =   12.754 deg,	J5 =   55.988 deg,	J6 =  -48.384 deg,
	E1 = -2599.000 mm,	E2 =  -199.000 mm,	E3 =   470.623 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    303.098 mm,	Y =  -2804.469 mm,	Z =   1783.175 mm,
	W =  -173.762 deg,	P =    11.529 deg,	R =   -80.059 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    470.623 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    303.098 mm,	Y =  -2804.469 mm,	Z =   1783.175 mm,
	W =  -173.762 deg,	P =    11.529 deg,	R =   -80.059 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    470.623 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    303.098 mm,	Y =  -2804.469 mm,	Z =   1783.175 mm,
	W =  -173.762 deg,	P =    11.529 deg,	R =   -80.059 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    470.623 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    322.419 mm,	Y =  -2855.099 mm,	Z =   1794.792 mm,
	W =  -174.698 deg,	P =    -9.012 deg,	R =   -67.636 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    479.489 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    322.419 mm,	Y =  -2855.099 mm,	Z =   1794.792 mm,
	W =  -174.698 deg,	P =    -9.012 deg,	R =   -67.636 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    479.489 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    322.419 mm,	Y =  -2855.099 mm,	Z =   1794.792 mm,
	W =  -174.698 deg,	P =    -9.012 deg,	R =   -67.636 deg,
	E1=  -2599.000 mm,	E2=   -199.000 mm,	E3=    479.489 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -37.995 deg,	J2 =  -21.606 deg,	J3 =  -15.124 deg,
	J4 =   20.996 deg,	J5 =  104.136 deg,	J6 =   18.313 deg,
	E1 = -2599.000 mm,	E2 =  -169.665 mm,	E3 =   393.833 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -16.157 deg,	J2 =  -19.833 deg,	J3 =  -16.070 deg,
	J4 =    9.997 deg,	J5 =  102.274 deg,	J6 =  107.891 deg,
	E1 = -2599.000 mm,	E2 =  -140.330 mm,	E3 =   308.176 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    543.893 mm,	Y =  -2573.265 mm,	Z =   1653.293 mm,
	W =  -134.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=   -140.330 mm,	E3=    308.176 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    582.139 mm,	Y =  -2513.237 mm,	Z =   1923.535 mm,
	W =  -134.627 deg,	P =    -0.843 deg,	R =   148.330 deg,
	E1=  -2599.000 mm,	E2=   -102.084 mm,	E3=    578.418 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    616.722 mm,	Y =  -2659.194 mm,	Z =   1922.665 mm,
	W =  -134.096 deg,	P =    -0.178 deg,	R =    93.331 deg,
	E1=  -2599.000 mm,	E2=   -169.703 mm,	E3=    579.529 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    646.232 mm,	Y =  -2783.743 mm,	Z =   1921.922 mm,
	W =  -134.096 deg,	P =    -0.178 deg,	R =    93.331 deg,
	E1=  -2599.000 mm,	E2=   -140.193 mm,	E3=    578.787 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    680.815 mm,	Y =  -2929.699 mm,	Z =   1921.052 mm,
	W =  -134.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2599.000 mm,	E2=    -78.302 mm,	E3=    577.747 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    619.515 mm,	Y =  -2892.423 mm,	Z =   1651.390 mm,
	W =  -134.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2599.000 mm,	E2=   -139.602 mm,	E3=    308.085 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -11.993 deg,	J2 =  -33.139 deg,	J3 =  -10.733 deg,
	J4 =   -1.469 deg,	J5 =   73.645 deg,	J6 =  128.865 deg,
	E1 = -2599.000 mm,	E2 =  -139.602 mm,	E3 =   308.085 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -5.996 deg,	J2 =  -46.569 deg,	J3 =   -5.366 deg,
	J4 =   -0.734 deg,	J5 =   51.822 deg,	J6 =   64.432 deg,
	E1 = -2599.000 mm,	E2 =  -139.602 mm,	E3 =   308.085 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =  -139.602 mm,	E3 =   308.085 mm
};
/END

