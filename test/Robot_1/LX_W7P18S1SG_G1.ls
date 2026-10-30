/PROG LX_W7P18S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,7,87658,18,105,1,0,109,112) ;
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
  35:J P[19] 10% FINE ;
  36:J P[18] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1558.317 mm,	E2 =  -199.000 mm,	E3 =   342.540 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -9.755 deg,	J2 =  -42.135 deg,	J3 =    2.815 deg,
	J4 =   24.956 deg,	J5 =   71.826 deg,	J6 =  -62.725 deg,
	E1 =  1558.317 mm,	E2 =  -199.000 mm,	E3 =   342.540 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    344.616 mm,	Y =   1713.076 mm,	Z =   1768.807 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1558.317 mm,	E2=   -199.000 mm,	E3=    342.540 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    344.616 mm,	Y =   1713.076 mm,	Z =   1768.807 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1558.317 mm,	E2=   -199.000 mm,	E3=    342.540 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    344.616 mm,	Y =   1713.076 mm,	Z =   1768.807 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1558.317 mm,	E2=   -199.000 mm,	E3=    342.540 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    339.566 mm,	Y =   1718.077 mm,	Z =   1768.811 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1563.318 mm,	E2=   -199.000 mm,	E3=    342.544 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    339.566 mm,	Y =   1718.077 mm,	Z =   1768.811 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1563.318 mm,	E2=   -199.000 mm,	E3=    342.544 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    339.566 mm,	Y =   1718.077 mm,	Z =   1768.811 mm,
	W =  -173.861 deg,	P =     0.942 deg,	R =   -41.930 deg,
	E1=   1563.318 mm,	E2=   -199.000 mm,	E3=    342.544 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -8.759 deg,	J2 =  -40.641 deg,	J3 =    4.517 deg,
	J4 =   19.654 deg,	J5 =   73.056 deg,	J6 =    0.199 deg,
	E1 =  1689.967 mm,	E2 =  -185.506 mm,	E3 =   259.852 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.615 deg,	J2 =  -38.686 deg,	J3 =    5.930 deg,
	J4 =   14.274 deg,	J5 =   74.485 deg,	J6 =   63.392 deg,
	E1 =  1816.616 mm,	E2 =  -172.012 mm,	E3 =   177.161 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -6.472 deg,	J2 =  -36.730 deg,	J3 =    7.343 deg,
	J4 =    8.894 deg,	J5 =   75.914 deg,	J6 =  126.586 deg,
	E1 =  1943.265 mm,	E2 =  -158.519 mm,	E3 =    94.469 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    361.489 mm,	Y =   2071.889 mm,	Z =   1637.101 mm,
	W =  -133.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=   1943.265 mm,	E2=   -158.519 mm,	E3=     94.469 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    412.161 mm,	Y =   2123.004 mm,	Z =   1906.525 mm,
	W =  -133.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=   1994.380 mm,	E2=   -107.847 mm,	E3=    363.893 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    518.744 mm,	Y =   2017.458 mm,	Z =   1906.441 mm,
	W =  -133.977 deg,	P =     0.148 deg,	R =   125.282 deg,
	E1=   1915.740 mm,	E2=    -25.300 mm,	E3=    363.789 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    594.849 mm,	Y =   1942.093 mm,	Z =   1906.380 mm,
	W =  -133.977 deg,	P =     0.148 deg,	R =   125.282 deg,
	E1=   1840.376 mm,	E2=     50.805 mm,	E3=    363.729 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    701.433 mm,	Y =   1836.547 mm,	Z =   1906.296 mm,
	W =  -134.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1852.328 mm,	E2=    116.290 mm,	E3=    362.723 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    629.803 mm,	Y =   1835.328 mm,	Z =   1636.527 mm,
	W =  -134.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1851.109 mm,	E2=     44.660 mm,	E3=     92.954 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -2.538 deg,	J2 =  -48.568 deg,	J3 =    3.786 deg,
	J4 =    0.890 deg,	J5 =   50.896 deg,	J6 =   87.154 deg,
	E1 =  1851.109 mm,	E2 =    44.660 mm,	E3 =    92.954 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1851.109 mm,	E2 =    44.660 mm,	E3 =    92.954 mm
};
/END

