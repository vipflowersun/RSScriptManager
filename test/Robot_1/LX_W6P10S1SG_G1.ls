/PROG LX_W6P10S1SG_G1
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
   4:J P[13] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 20% FINE ;
   7:J P[15] 20% FINE ;
   8:J P[16] 20% FINE ;
   9:L P[1] 100mm/sec FINE ;
  10:L P[2] 100mm/sec FINE ;
  11:  WAIT   1.00(sec) ;
  12:  CALL MYG1VSNSCAN(1,1,0) ;
  13:L P[3] 100mm/sec FINE ;
  14:L P[4] 100mm/sec FINE ;
  15:L P[5] 100mm/sec FINE ;
  16:  WAIT   1.00(sec) ;
  17:  CALL MYG1VSNSCAN(1,1,0) ;
  18:L P[6] 100mm/sec FINE ;
  19:J P[17] 20% FINE ;
  20:J P[18] 20% FINE ;
  21:J P[19] 20% FINE ;
  22:L P[7] 100mm/sec FINE ;
  23:  CALL MYG1PROCSET(2,0) ;
  24:  CALL MYG1VSNPCALC(1,6,87657,10,77,1,0,109,112) ;
  25://L P[8] 0mm/sec FINE ;
  26:L PR[109] 100mm/sec FINE ;
  27:  Weld Start[1,1] ;
  28:  Track TAST[1] ;
  29:  Weave Sine[1] ;
  30:  CALL MYG1TRAJE01 ;
  31://L P[11] 0mm/sec FINE ;
  32:L PR[112] WELD_SPEED FINE ;
  33:  Weld End[1,1] ;
  34:  Track End ;
  35:  Weave End ;
  36:L P[12] 100mm/sec FINE ;
  37:J P[21] 20% FINE ;
  38:J P[20] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1662.787 mm,	E2 =   671.089 mm,	E3 =   303.858 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =   18.872 deg,	J5 =   68.368 deg,	J6 =  -49.774 deg,
	E1 = -1662.787 mm,	E2 =   671.089 mm,	E3 =   303.858 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =   37.743 deg,	J5 =  106.736 deg,	J6 =  -99.547 deg,
	E1 = -1662.787 mm,	E2 =   671.089 mm,	E3 =   303.858 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   29.260 deg,	J2 =   -9.707 deg,	J3 =   -9.322 deg,
	J4 =   37.743 deg,	J5 =  106.736 deg,	J6 =  -99.547 deg,
	E1 = -1662.787 mm,	E2 =   671.089 mm,	E3 =   303.858 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    995.071 mm,	Y =  -1030.987 mm,	Z =   1683.325 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.787 mm,	E2=    671.089 mm,	E3=    303.858 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    995.071 mm,	Y =  -1030.987 mm,	Z =   1683.325 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.787 mm,	E2=    671.089 mm,	E3=    303.858 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    995.071 mm,	Y =  -1030.987 mm,	Z =   1683.325 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.787 mm,	E2=    671.089 mm,	E3=    303.858 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    996.706 mm,	Y =  -1030.807 mm,	Z =   1833.316 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.607 mm,	E2=    672.724 mm,	E3=    453.849 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    996.706 mm,	Y =  -1030.807 mm,	Z =   1833.316 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.607 mm,	E2=    672.724 mm,	E3=    453.849 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    996.706 mm,	Y =  -1030.807 mm,	Z =   1833.316 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -1662.607 mm,	E2=    672.724 mm,	E3=    453.849 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   33.365 deg,	J2 =  -15.078 deg,	J3 =  -10.743 deg,
	J4 =   33.596 deg,	J5 =  105.509 deg,	J6 =  -35.371 deg,
	E1 = -1607.054 mm,	E2 =   673.472 mm,	E3 =   434.608 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   37.469 deg,	J2 =  -20.450 deg,	J3 =  -12.164 deg,
	J4 =   29.450 deg,	J5 =  104.282 deg,	J6 =   28.806 deg,
	E1 = -1551.501 mm,	E2 =   674.220 mm,	E3 =   415.366 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   41.573 deg,	J2 =  -25.822 deg,	J3 =  -13.584 deg,
	J4 =   25.303 deg,	J5 =  103.056 deg,	J6 =   92.983 deg,
	E1 = -1495.949 mm,	E2 =   674.967 mm,	E3 =   396.125 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    784.635 mm,	Y =   -861.600 mm,	Z =   1668.523 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1495.949 mm,	E2=    674.967 mm,	E3=    396.125 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    724.590 mm,	Y =   -799.666 mm,	Z =   1919.106 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1434.015 mm,	E2=    614.922 mm,	E3=    646.708 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    723.935 mm,	Y =   -799.738 mm,	Z =   1859.110 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1434.087 mm,	E2=    614.267 mm,	E3=    586.712 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    723.608 mm,	Y =   -799.774 mm,	Z =   1829.112 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1434.123 mm,	E2=    613.940 mm,	E3=    556.714 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    722.954 mm,	Y =   -799.846 mm,	Z =   1769.115 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1434.195 mm,	E2=    613.286 mm,	E3=    496.717 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    783.000 mm,	Y =   -861.780 mm,	Z =   1518.532 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1496.129 mm,	E2=    673.332 mm,	E3=    246.134 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =   20.787 deg,	J2 =  -42.911 deg,	J3 =   -6.792 deg,
	J4 =   12.651 deg,	J5 =   66.528 deg,	J6 =   46.492 deg,
	E1 = -1496.129 mm,	E2 =   673.332 mm,	E3 =   246.134 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1496.129 mm,	E2 =   673.332 mm,	E3 =   246.134 mm
};
/END

