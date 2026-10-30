/PROG LX_W8P32S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,8,87659,32,273,1,0,109,112) ;
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
	E1 =  -760.575 mm,	E2 =   855.836 mm,	E3 =   407.063 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -63.509 deg,	J2 =  -12.497 deg,	J3 =  -16.749 deg,
	J4 =  -32.402 deg,	J5 =   87.355 deg,	J6 =   56.796 deg,
	E1 =  -760.575 mm,	E2 =   855.836 mm,	E3 =   407.063 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    912.704 mm,	Y =  -1679.907 mm,	Z =   1686.966 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.575 mm,	E2=    855.836 mm,	E3=    407.063 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    912.704 mm,	Y =  -1679.907 mm,	Z =   1686.966 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.575 mm,	E2=    855.836 mm,	E3=    407.063 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    912.704 mm,	Y =  -1679.907 mm,	Z =   1686.966 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.575 mm,	E2=    855.836 mm,	E3=    407.063 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.536 mm,	Y =  -1680.159 mm,	Z =   1801.951 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.826 mm,	E2=    857.668 mm,	E3=    522.048 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.536 mm,	Y =  -1680.159 mm,	Z =   1801.951 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.826 mm,	E2=    857.668 mm,	E3=    522.048 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.536 mm,	Y =  -1680.159 mm,	Z =   1801.951 mm,
	W =   177.595 deg,	P =     0.511 deg,	R =   145.377 deg,
	E1=   -760.826 mm,	E2=    857.668 mm,	E3=    522.048 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -58.973 deg,	J2 =  -13.052 deg,	J3 =  -16.749 deg,
	J4 =  -28.820 deg,	J5 =   91.333 deg,	J6 =    7.836 deg,
	E1 =  -877.204 mm,	E2 =   857.668 mm,	E3 =   454.666 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -54.437 deg,	J2 =  -13.607 deg,	J3 =  -16.749 deg,
	J4 =  -25.238 deg,	J5 =   95.311 deg,	J6 =  -41.124 deg,
	E1 =  -993.582 mm,	E2 =   857.668 mm,	E3 =   387.285 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -39.732 deg,	J2 =  -15.176 deg,	J3 =  -16.866 deg,
	J4 =  -25.238 deg,	J5 =  103.560 deg,	J6 =  -99.038 deg,
	E1 = -1181.229 mm,	E2 =   522.283 mm,	E3 =   364.045 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    778.574 mm,	Y =  -1915.002 mm,	Z =   1636.703 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1181.229 mm,	E2=    522.283 mm,	E3=    364.045 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    726.964 mm,	Y =  -1984.053 mm,	Z =   1887.381 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1250.280 mm,	E2=    470.672 mm,	E3=    614.723 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    726.231 mm,	Y =  -1983.953 mm,	Z =   1841.387 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1250.180 mm,	E2=    469.940 mm,	E3=    568.729 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    725.864 mm,	Y =  -1983.903 mm,	Z =   1818.390 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1250.129 mm,	E2=    469.573 mm,	E3=    545.732 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    725.132 mm,	Y =  -1983.802 mm,	Z =   1772.396 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1250.029 mm,	E2=    468.840 mm,	E3=    499.738 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    776.742 mm,	Y =  -1914.750 mm,	Z =   1521.718 mm,
	W =  -120.453 deg,	P =     0.803 deg,	R =   -37.247 deg,
	E1=  -1180.977 mm,	E2=    520.451 mm,	E3=    249.060 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -19.866 deg,	J2 =  -37.588 deg,	J3 =   -8.433 deg,
	J4 =  -12.619 deg,	J5 =   66.780 deg,	J6 =  -49.519 deg,
	E1 = -1180.977 mm,	E2 =   520.451 mm,	E3 =   249.060 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1180.977 mm,	E2 =   520.451 mm,	E3 =   249.060 mm
};
/END

