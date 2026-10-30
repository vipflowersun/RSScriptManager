/PROG LX_W7P25S1SG_G1
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
  20:J P[18] 20% FINE ;
  21:L P[7] 100mm/sec FINE ;
  22:  CALL MYG1PROCSET(2,0) ;
  23:  CALL MYG1VSNPCALC(1,7,87658,25,131,1,0,109,112) ;
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
  36:J P[20] 20% FINE ;
  37:J P[19] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  2312.425 mm,	E2 =  -199.000 mm,	E3 =   421.093 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -75.837 deg,	J2 =  -23.222 deg,	J3 =  -13.779 deg,
	J4 =   37.676 deg,	J5 =   93.381 deg,	J6 =  -73.097 deg,
	E1 =  2312.425 mm,	E2 =  -199.000 mm,	E3 =   421.093 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    353.331 mm,	Y =   1788.155 mm,	Z =   1693.323 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2312.425 mm,	E2=   -199.000 mm,	E3=    421.093 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    353.331 mm,	Y =   1788.155 mm,	Z =   1693.323 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2312.425 mm,	E2=   -199.000 mm,	E3=    421.093 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    353.331 mm,	Y =   1788.155 mm,	Z =   1693.323 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2312.425 mm,	E2=   -199.000 mm,	E3=    421.093 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    354.901 mm,	Y =   1789.645 mm,	Z =   1813.304 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2313.916 mm,	E2=   -199.000 mm,	E3=    541.074 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    354.901 mm,	Y =   1789.645 mm,	Z =   1813.304 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2313.916 mm,	E2=   -199.000 mm,	E3=    541.074 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    354.901 mm,	Y =   1789.645 mm,	Z =   1813.304 mm,
	W =   176.395 deg,	P =     0.661 deg,	R =   -87.119 deg,
	E1=   2313.916 mm,	E2=   -199.000 mm,	E3=    541.074 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -75.678 deg,	J2 =  -23.185 deg,	J3 =  -13.792 deg,
	J4 =   26.729 deg,	J5 =   80.808 deg,	J6 =    8.169 deg,
	E1 =  2313.916 mm,	E2 =  -199.000 mm,	E3 =   541.074 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -75.678 deg,	J2 =  -23.185 deg,	J3 =  -13.792 deg,
	J4 =   15.812 deg,	J5 =   68.318 deg,	J6 =   89.306 deg,
	E1 =  2313.916 mm,	E2 =  -199.000 mm,	E3 =   541.074 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -75.678 deg,	J2 =  -23.185 deg,	J3 =  -13.792 deg,
	J4 =    4.895 deg,	J5 =   55.829 deg,	J6 =  170.442 deg,
	E1 =  2313.916 mm,	E2 =  -199.000 mm,	E3 =   541.074 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.596 deg,	J2 =  -51.086 deg,	J3 =    8.805 deg,
	J4 =    4.895 deg,	J5 =   55.829 deg,	J6 =  170.442 deg,
	E1 =  1840.691 mm,	E2 =   -27.662 mm,	E3 =   277.686 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    624.646 mm,	Y =   1824.768 mm,	Z =   1642.437 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1840.691 mm,	E2=    -27.662 mm,	E3=    277.686 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    711.895 mm,	Y =   1825.806 mm,	Z =   1891.290 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1841.729 mm,	E2=     59.586 mm,	E3=    526.539 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    711.266 mm,	Y =   1825.210 mm,	Z =   1843.298 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1841.133 mm,	E2=     58.958 mm,	E3=    478.547 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    710.952 mm,	Y =   1824.912 mm,	Z =   1819.302 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1840.835 mm,	E2=     58.644 mm,	E3=    454.551 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    710.324 mm,	Y =   1824.316 mm,	Z =   1771.310 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1840.239 mm,	E2=     58.016 mm,	E3=    406.559 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    623.075 mm,	Y =   1823.278 mm,	Z =   1522.457 mm,
	W =  -119.246 deg,	P =     0.708 deg,	R =    90.285 deg,
	E1=   1839.201 mm,	E2=    -29.233 mm,	E3=    157.706 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.798 deg,	J2 =  -55.543 deg,	J3 =    4.402 deg,
	J4 =    2.447 deg,	J5 =   42.914 deg,	J6 =   85.221 deg,
	E1 =  1839.201 mm,	E2 =   -29.233 mm,	E3 =   157.706 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1839.201 mm,	E2 =   -29.233 mm,	E3 =   157.706 mm
};
/END

