/PROG LX_W8P31S1SG_G1
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
   8:L P[1] 100mm/sec FINE ;
   9:L P[2] 100mm/sec FINE ;
  10:  WAIT   1.00(sec) ;
  11:  CALL MYG1VSNSCAN(1,1,0) ;
  12:L P[3] 100mm/sec FINE ;
  13:L P[4] 100mm/sec FINE ;
  14:L P[5] 100mm/sec FINE ;
  15:  WAIT   1.00(sec) ;
  16:  CALL MYG1VSNSCAN(1,1,0) ;
  17:L P[6] 100mm/sec FINE ;
  18:J P[16] 20% FINE ;
  19:J P[17] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(2,0) ;
  22:  CALL MYG1VSNPCALC(1,8,87659,31,263,1,0,109,112) ;
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
  35:J P[18] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =   825.291 mm,	E3 =     2.813 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -15.858 deg,	J2 =  -39.143 deg,	J3 =    9.003 deg,
	J4 =   -0.150 deg,	J5 =   69.493 deg,	J6 =   88.378 deg,
	E1 = -2599.000 mm,	E2 =   825.291 mm,	E3 =     2.813 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -31.715 deg,	J2 =  -18.287 deg,	J3 =   18.006 deg,
	J4 =   -0.299 deg,	J5 =  108.986 deg,	J6 =  176.756 deg,
	E1 = -2599.000 mm,	E2 =   825.291 mm,	E3 =     2.813 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    896.779 mm,	Y =  -2635.792 mm,	Z =   1685.128 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    825.291 mm,	E3=      2.813 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    896.779 mm,	Y =  -2635.792 mm,	Z =   1685.128 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    825.291 mm,	E3=      2.813 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    896.779 mm,	Y =  -2635.792 mm,	Z =   1685.128 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    825.291 mm,	E3=      2.813 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    898.611 mm,	Y =  -2636.044 mm,	Z =   1800.114 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    827.124 mm,	E3=    117.798 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    898.611 mm,	Y =  -2636.044 mm,	Z =   1800.114 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    827.124 mm,	E3=    117.798 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    898.611 mm,	Y =  -2636.044 mm,	Z =   1800.114 mm,
	W =   178.039 deg,	P =     1.667 deg,	R =    60.969 deg,
	E1=  -2599.000 mm,	E2=    827.124 mm,	E3=    117.798 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -22.102 deg,	J2 =  -15.344 deg,	J3 =   12.377 deg,
	J4 =    4.034 deg,	J5 =  107.464 deg,	J6 =   98.269 deg,
	E1 = -2599.000 mm,	E2 =   611.216 mm,	E3 =    89.931 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -12.463 deg,	J2 =  -12.411 deg,	J3 =    6.751 deg,
	J4 =    8.384 deg,	J5 =  105.938 deg,	J6 =   19.808 deg,
	E1 = -2599.000 mm,	E2 =   395.309 mm,	E3 =    62.064 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    652.251 mm,	Y =  -2523.075 mm,	Z =   1637.386 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    395.309 mm,	E3=     62.064 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    579.349 mm,	Y =  -2477.720 mm,	Z =   1888.653 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    322.408 mm,	E3=    313.331 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    578.616 mm,	Y =  -2477.620 mm,	Z =   1842.659 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    321.675 mm,	E3=    267.337 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    578.250 mm,	Y =  -2477.570 mm,	Z =   1819.662 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    321.308 mm,	E3=    244.340 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    577.517 mm,	Y =  -2477.469 mm,	Z =   1773.668 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    320.575 mm,	E3=    198.346 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    650.419 mm,	Y =  -2522.824 mm,	Z =   1522.400 mm,
	W =  -120.843 deg,	P =    -0.373 deg,	R =  -121.665 deg,
	E1=  -2599.000 mm,	E2=    393.477 mm,	E3=    -52.922 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2599.000 mm,	E2 =   393.477 mm,	E3 =   -52.922 mm
};
/END

