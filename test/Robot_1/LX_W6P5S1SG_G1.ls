/PROG LX_W6P5S1SG_G1
/ATTR
OWNER       = MNEDITOR;
COMMENT     = "";
PROG_SIZE   = 2105;
CREATE      = DATE 2026-10-27  TIME 17:52:27;
MODIFIED    = DATE 2026-10-27  TIME 17:52:27;
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
  21:  CALL MYG1VSNPCALC(1,6,87657,5,37,1,0,109,112) ;
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
	E1 =   508.391 mm,	E2 =  -199.000 mm,	E3 =   364.219 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -34.883 deg,	J2 =  -54.316 deg,	J3 =   11.569 deg,
	J4 =    7.627 deg,	J5 =   48.751 deg,	J6 =  -37.297 deg,
	E1 =   508.391 mm,	E2 =  -199.000 mm,	E3 =   364.219 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    251.203 mm,	Y =    227.787 mm,	Z =   1778.875 mm,
	W =  -173.498 deg,	P =    11.136 deg,	R =   -93.936 deg,
	E1=    508.391 mm,	E2=   -199.000 mm,	E3=    364.219 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    251.203 mm,	Y =    227.787 mm,	Z =   1778.875 mm,
	W =  -173.498 deg,	P =    11.136 deg,	R =   -93.936 deg,
	E1=    508.391 mm,	E2=   -199.000 mm,	E3=    364.219 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    251.203 mm,	Y =    227.787 mm,	Z =   1778.875 mm,
	W =  -173.498 deg,	P =    11.136 deg,	R =   -93.936 deg,
	E1=    508.391 mm,	E2=   -199.000 mm,	E3=    364.219 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    258.629 mm,	Y =    261.075 mm,	Z =   1790.789 mm,
	W =  -174.528 deg,	P =    -9.451 deg,	R =   -81.592 deg,
	E1=    251.031 mm,	E2=   -199.000 mm,	E3=    375.448 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    258.629 mm,	Y =    261.075 mm,	Z =   1790.789 mm,
	W =  -174.528 deg,	P =    -9.451 deg,	R =   -81.592 deg,
	E1=    251.031 mm,	E2=   -199.000 mm,	E3=    375.448 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    258.629 mm,	Y =    261.075 mm,	Z =   1790.789 mm,
	W =  -174.528 deg,	P =    -9.451 deg,	R =   -81.592 deg,
	E1=    251.031 mm,	E2=   -199.000 mm,	E3=    375.448 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -24.818 deg,	J2 =  -46.323 deg,	J3 =   14.295 deg,
	J4 =   19.504 deg,	J5 =   67.008 deg,	J6 =   34.211 deg,
	E1 =   306.950 mm,	E2 =   -39.321 mm,	E3 =   189.810 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -8.723 deg,	J2 =  -40.323 deg,	J3 =   18.566 deg,
	J4 =    8.991 deg,	J5 =   65.056 deg,	J6 =  123.498 deg,
	E1 =   362.869 mm,	E2 =   120.359 mm,	E3 =     4.172 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    541.197 mm,	Y =    481.727 mm,	Z =   1648.853 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=    362.869 mm,	E2=    120.359 mm,	E3=      4.172 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    592.484 mm,	Y =    531.287 mm,	Z =   1918.950 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=    412.429 mm,	E2=    171.646 mm,	E3=    274.268 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    590.919 mm,	Y =    381.295 mm,	Z =   1919.147 mm,
	W =  -134.399 deg,	P =     0.182 deg,	R =    79.402 deg,
	E1=    443.818 mm,	E2=    109.758 mm,	E3=    274.905 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    588.674 mm,	Y =    166.307 mm,	Z =   1919.429 mm,
	W =  -134.399 deg,	P =     0.182 deg,	R =    79.402 deg,
	E1=    228.830 mm,	E2=    107.513 mm,	E3=    275.188 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    587.108 mm,	Y =     16.315 mm,	Z =   1919.626 mm,
	W =  -134.612 deg,	P =     0.494 deg,	R =    44.403 deg,
	E1=    190.140 mm,	E2=    161.689 mm,	E3=    274.643 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 1',
	X =    536.865 mm,	Y =     66.750 mm,	Z =   1649.398 mm,
	W =  -134.612 deg,	P =     0.494 deg,	R =    44.403 deg,
	E1=    240.575 mm,	E2=    111.445 mm,	E3=      4.416 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.138 deg,	J2 =  -46.980 deg,	J3 =   12.444 deg,
	J4 =   -4.784 deg,	J5 =   52.205 deg,	J6 =  149.141 deg,
	E1 =   240.575 mm,	E2 =   111.445 mm,	E3 =     4.416 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -1.569 deg,	J2 =  -53.490 deg,	J3 =    6.222 deg,
	J4 =   -2.392 deg,	J5 =   41.103 deg,	J6 =   74.570 deg,
	E1 =   240.575 mm,	E2 =   111.445 mm,	E3 =     4.416 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   240.575 mm,	E2 =   111.445 mm,	E3 =     4.416 mm
};
/END

