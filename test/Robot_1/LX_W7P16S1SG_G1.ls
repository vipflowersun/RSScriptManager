/PROG LX_W7P16S1SG_G1
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
  19:J P[17] 10% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(1,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,16,97,1,0,109,112) ;
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
  35:J P[20] 10% FINE ;
  36:J P[19] 10% FINE ;
  37:J P[18] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1532.708 mm,	E2 =  -132.520 mm,	E3 =   343.113 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.531 deg,	J2 =  -51.090 deg,	J3 =    8.932 deg,
	J4 =  -13.022 deg,	J5 =   55.549 deg,	J6 =   28.367 deg,
	E1 =  1532.708 mm,	E2 =  -132.520 mm,	E3 =   343.113 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    363.156 mm,	Y =   1382.677 mm,	Z =   1772.669 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1532.708 mm,	E2=   -132.520 mm,	E3=    343.113 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    363.156 mm,	Y =   1382.677 mm,	Z =   1772.669 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1532.708 mm,	E2=   -132.520 mm,	E3=    343.113 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    363.156 mm,	Y =   1382.677 mm,	Z =   1772.669 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1532.708 mm,	E2=   -132.520 mm,	E3=    343.113 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    362.660 mm,	Y =   1381.808 mm,	Z =   1772.686 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1531.840 mm,	E2=   -133.016 mm,	E3=    343.130 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    362.660 mm,	Y =   1381.808 mm,	Z =   1772.686 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1531.840 mm,	E2=   -133.016 mm,	E3=    343.130 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    362.660 mm,	Y =   1381.808 mm,	Z =   1772.686 mm,
	W =  -173.176 deg,	P =    -0.114 deg,	R =  -116.916 deg,
	E1=   1531.840 mm,	E2=   -133.016 mm,	E3=    343.130 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -4.208 deg,	J2 =  -47.601 deg,	J3 =   12.211 deg,
	J4 =   -9.935 deg,	J5 =   57.524 deg,	J6 =  -32.502 deg,
	E1 =  1438.867 mm,	E2 =   -66.637 mm,	E3 =   229.224 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -4.886 deg,	J2 =  -44.111 deg,	J3 =   15.490 deg,
	J4 =   -6.849 deg,	J5 =   59.499 deg,	J6 =  -93.372 deg,
	E1 =  1345.895 mm,	E2 =    -0.259 mm,	E3 =   115.318 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -5.563 deg,	J2 =  -40.622 deg,	J3 =   18.769 deg,
	J4 =   -3.762 deg,	J5 =   61.474 deg,	J6 = -154.242 deg,
	E1 =  1252.922 mm,	E2 =    66.120 mm,	E3 =     1.412 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    526.763 mm,	Y =   1132.850 mm,	Z =   1646.601 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1252.922 mm,	E2=     66.120 mm,	E3=      1.412 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    589.096 mm,	Y =   1098.671 mm,	Z =   1916.932 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1218.743 mm,	E2=    128.453 mm,	E3=    271.743 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    656.520 mm,	Y =   1216.796 mm,	Z =   1914.582 mm,
	W =  -134.534 deg,	P =     0.923 deg,	R =    70.284 deg,
	E1=   1303.716 mm,	E2=    181.653 mm,	E3=    269.991 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    690.232 mm,	Y =   1275.859 mm,	Z =   1913.407 mm,
	W =  -134.534 deg,	P =     0.923 deg,	R =    70.284 deg,
	E1=   1362.779 mm,	E2=    215.366 mm,	E3=    268.816 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, -1',
	X =    757.656 mm,	Y =   1393.985 mm,	Z =   1911.057 mm,
	W =  -134.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1356.443 mm,	E2=    281.226 mm,	E3=    268.032 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, -1',
	X =    688.527 mm,	Y =   1374.479 mm,	Z =   1641.482 mm,
	W =  -134.089 deg,	P =     0.489 deg,	R =   105.284 deg,
	E1=   1336.936 mm,	E2=    212.097 mm,	E3=     -1.543 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -5.183 deg,	J2 =  -47.081 deg,	J3 =   12.522 deg,
	J4 =    3.564 deg,	J5 =   50.967 deg,	J6 = -136.778 deg,
	E1 =  1336.936 mm,	E2 =   212.097 mm,	E3 =    -1.543 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -2.591 deg,	J2 =  -53.541 deg,	J3 =    6.261 deg,
	J4 =    1.782 deg,	J5 =   40.483 deg,	J6 =  -68.389 deg,
	E1 =  1336.936 mm,	E2 =   212.097 mm,	E3 =    -1.543 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1336.936 mm,	E2 =   212.097 mm,	E3 =    -1.543 mm
};
/END

