/PROG LX_W7P23S1SG_G1
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
  20:J P[18] 20% FINE ;
  21:L P[7] 100mm/sec FINE ;
  22:  CALL MYG1PROCSET(2,0) ;
  23:  CALL MYG1VSNPCALC(1,7,87658,23,125,1,0,109,112) ;
  24://L P[8] 0mm/sec FINE ;
  25:L PR[109] 100mm/sec FINE ;
  26:  Weld Start[1,1] ;
  27:  Track TAST[1] ;
  28:  Weave Sine[1] ;
  29:  CALL MYG1TRAJE01 ;
  30://L P[11] 0mm/sec FINE ;
  31:L PR[112] WELD_SPEED FINE ;
  32:  Weld End[1,1] ;
  33:  Track End ;
  34:  Weave End ;
  35:L P[12] 100mm/sec FINE ;
  36:J P[19] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   897.597 mm,	E2 =  1200.000 mm,	E3 =   104.523 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   15.827 deg,	J2 =  -32.993 deg,	J3 =    3.261 deg,
	J4 =   13.864 deg,	J5 =   69.426 deg,	J6 =  -66.941 deg,
	E1 =   897.597 mm,	E2 =  1200.000 mm,	E3 =   104.523 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   31.653 deg,	J2 =   -5.985 deg,	J3 =    6.521 deg,
	J4 =   27.728 deg,	J5 =  108.852 deg,	J6 = -133.883 deg,
	E1 =   897.597 mm,	E2 =  1200.000 mm,	E3 =   104.523 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1393.643 mm,	Y =   1369.776 mm,	Z =   1684.901 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    897.597 mm,	E2=   1200.000 mm,	E3=    104.523 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1393.643 mm,	Y =   1369.776 mm,	Z =   1684.901 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    897.597 mm,	E2=   1200.000 mm,	E3=    104.523 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1393.643 mm,	Y =   1369.776 mm,	Z =   1684.901 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    897.597 mm,	E2=   1200.000 mm,	E3=    104.523 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1394.952 mm,	Y =   1371.018 mm,	Z =   1784.885 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    898.839 mm,	E2=   1200.000 mm,	E3=    204.507 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1394.952 mm,	Y =   1371.018 mm,	Z =   1784.885 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    898.839 mm,	E2=   1200.000 mm,	E3=    204.507 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1394.952 mm,	Y =   1371.018 mm,	Z =   1784.885 mm,
	W =   177.764 deg,	P =     2.186 deg,	R =    77.912 deg,
	E1=    898.839 mm,	E2=   1200.000 mm,	E3=    204.507 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   37.168 deg,	J2 =   -5.370 deg,	J3 =    0.810 deg,
	J4 =   26.309 deg,	J5 =  109.210 deg,	J6 =  -66.249 deg,
	E1 =   846.101 mm,	E2 =  1137.705 mm,	E3 =   218.888 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   42.740 deg,	J2 =   -4.851 deg,	J3 =   -4.892 deg,
	J4 =   24.913 deg,	J5 =  109.533 deg,	J6 =    1.433 deg,
	E1 =   793.363 mm,	E2 =  1075.411 mm,	E3 =   233.270 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   48.313 deg,	J2 =   -4.332 deg,	J3 =  -10.594 deg,
	J4 =   23.516 deg,	J5 =  109.857 deg,	J6 =   69.116 deg,
	E1 =   740.625 mm,	E2 =  1013.116 mm,	E3 =   247.651 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1126.255 mm,	Y =   1407.605 mm,	Z =   1621.049 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    740.625 mm,	E2=   1013.116 mm,	E3=    247.651 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1043.155 mm,	Y =   1430.236 mm,	Z =   1871.864 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    763.256 mm,	E2=    930.016 mm,	E3=    498.466 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1042.631 mm,	Y =   1429.739 mm,	Z =   1831.870 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    762.759 mm,	E2=    929.492 mm,	E3=    458.472 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1042.369 mm,	Y =   1429.491 mm,	Z =   1811.873 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    762.511 mm,	E2=    929.230 mm,	E3=    438.476 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1041.846 mm,	Y =   1428.994 mm,	Z =   1771.880 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    762.014 mm,	E2=    928.707 mm,	E3=    398.482 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1124.946 mm,	Y =   1406.363 mm,	Z =   1521.065 mm,
	W =  -120.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=    739.383 mm,	E2=   1011.807 mm,	E3=    147.667 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   739.383 mm,	E2 =  1011.807 mm,	E3 =   147.667 mm
};
/END

