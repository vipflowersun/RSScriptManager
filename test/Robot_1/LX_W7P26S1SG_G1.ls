/PROG LX_W7P26S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,7,87658,26,133,1,0,109,112) ;
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
	E1 =  1589.093 mm,	E2 =  1200.000 mm,	E3 =    -3.595 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   11.416 deg,	J2 =  -30.259 deg,	J3 =    7.504 deg,
	J4 =    7.099 deg,	J5 =   69.671 deg,	J6 =  -80.096 deg,
	E1 =  1589.093 mm,	E2 =  1200.000 mm,	E3 =    -3.595 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   22.832 deg,	J2 =   -0.519 deg,	J3 =   15.007 deg,
	J4 =   14.198 deg,	J5 =  109.342 deg,	J6 = -160.192 deg,
	E1 =  1589.093 mm,	E2 =  1200.000 mm,	E3 =    -3.595 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1439.837 mm,	Y =   1867.287 mm,	Z =   1678.117 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1589.093 mm,	E2=   1200.000 mm,	E3=     -3.595 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1439.837 mm,	Y =   1867.287 mm,	Z =   1678.117 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1589.093 mm,	E2=   1200.000 mm,	E3=     -3.595 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1439.837 mm,	Y =   1867.287 mm,	Z =   1678.117 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1589.093 mm,	E2=   1200.000 mm,	E3=     -3.595 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1441.146 mm,	Y =   1868.529 mm,	Z =   1778.100 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1590.334 mm,	E2=   1200.000 mm,	E3=     96.389 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1441.146 mm,	Y =   1868.529 mm,	Z =   1778.100 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1590.334 mm,	E2=   1200.000 mm,	E3=     96.389 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1441.146 mm,	Y =   1868.529 mm,	Z =   1778.100 mm,
	W =   177.965 deg,	P =     2.006 deg,	R =    92.917 deg,
	E1=   1590.334 mm,	E2=   1200.000 mm,	E3=     96.389 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   14.661 deg,	J2 =   -6.643 deg,	J3 =   10.929 deg,
	J4 =    8.763 deg,	J5 =  108.264 deg,	J6 =  -76.915 deg,
	E1 =  1677.447 mm,	E2 =  1085.013 mm,	E3 =    68.394 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    6.532 deg,	J2 =  -12.874 deg,	J3 =    6.852 deg,
	J4 =    3.353 deg,	J5 =  107.176 deg,	J6 =    6.403 deg,
	E1 =  1764.560 mm,	E2 =   970.027 mm,	E3 =    40.398 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1172.267 mm,	Y =   1834.228 mm,	Z =   1615.147 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1764.560 mm,	E2=    970.027 mm,	E3=     40.398 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1086.328 mm,	Y =   1834.432 mm,	Z =   1866.278 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1764.765 mm,	E2=    884.087 mm,	E3=    291.529 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1085.804 mm,	Y =   1833.935 mm,	Z =   1826.284 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1764.268 mm,	E2=    883.564 mm,	E3=    251.535 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1085.542 mm,	Y =   1833.687 mm,	Z =   1806.288 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1764.019 mm,	E2=    883.302 mm,	E3=    231.538 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1085.019 mm,	Y =   1833.190 mm,	Z =   1766.294 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1763.523 mm,	E2=    882.778 mm,	E3=    191.545 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1170.958 mm,	Y =   1832.986 mm,	Z =   1515.163 mm,
	W =  -120.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1763.318 mm,	E2=    968.718 mm,	E3=    -59.586 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1763.318 mm,	E2 =   968.718 mm,	E3 =   -59.586 mm
};
/END

