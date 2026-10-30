/PROG LX_W7P24S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,7,87658,24,129,1,0,109,112) ;
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
	E1 =  2600.000 mm,	E2 =     4.890 mm,	E3 =   402.589 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -1.089 deg,	J2 =  -12.055 deg,	J3 =  -16.848 deg,
	J4 =  -37.960 deg,	J5 =  101.422 deg,	J6 =   76.208 deg,
	E1 =  2600.000 mm,	E2 =     4.890 mm,	E3 =   402.589 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    681.085 mm,	Y =   2186.303 mm,	Z =   1684.087 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      4.890 mm,	E3=    402.589 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    681.085 mm,	Y =   2186.303 mm,	Z =   1684.087 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      4.890 mm,	E3=    402.589 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    681.085 mm,	Y =   2186.303 mm,	Z =   1684.087 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      4.890 mm,	E3=    402.589 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    682.656 mm,	Y =   2187.793 mm,	Z =   1804.068 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      6.460 mm,	E3=    522.569 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    682.656 mm,	Y =   2187.793 mm,	Z =   1804.068 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      6.460 mm,	E3=    522.569 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    682.656 mm,	Y =   2187.793 mm,	Z =   1804.068 mm,
	W =   177.852 deg,	P =     0.548 deg,	R =  -177.095 deg,
	E1=   2600.000 mm,	E2=      6.460 mm,	E3=    522.569 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.095 deg,	J2 =  -14.082 deg,	J3 =  -16.608 deg,
	J4 =  -32.882 deg,	J5 =   99.761 deg,	J6 =   12.885 deg,
	E1 =  2572.350 mm,	E2 =    48.742 mm,	E3 =   470.291 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -13.229 deg,	J2 =  -16.107 deg,	J3 =  -16.370 deg,
	J4 =  -27.786 deg,	J5 =   98.025 deg,	J6 =  -50.538 deg,
	E1 =  2544.700 mm,	E2 =    91.023 mm,	E3 =   418.013 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -19.362 deg,	J2 =  -18.132 deg,	J3 =  -16.131 deg,
	J4 =  -22.690 deg,	J5 =   96.289 deg,	J6 = -113.960 deg,
	E1 =  2517.051 mm,	E2 =   133.304 mm,	E3 =   365.734 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    717.844 mm,	Y =   1918.884 mm,	Z =   1640.048 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2517.051 mm,	E2=    133.304 mm,	E3=    365.734 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    718.930 mm,	Y =   1832.910 mm,	Z =   1891.110 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2431.077 mm,	E2=    134.390 mm,	E3=    616.796 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    718.302 mm,	Y =   1832.314 mm,	Z =   1843.118 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2430.481 mm,	E2=    133.762 mm,	E3=    568.804 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    717.987 mm,	Y =   1832.016 mm,	Z =   1819.121 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2430.183 mm,	E2=    133.447 mm,	E3=    544.808 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    717.359 mm,	Y =   1831.420 mm,	Z =   1771.129 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2429.586 mm,	E2=    132.819 mm,	E3=    496.816 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    716.274 mm,	Y =   1917.394 mm,	Z =   1520.067 mm,
	W =  -120.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2515.560 mm,	E2=    131.734 mm,	E3=    245.754 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -9.681 deg,	J2 =  -39.066 deg,	J3 =   -8.065 deg,
	J4 =  -11.345 deg,	J5 =   63.145 deg,	J6 =  -56.980 deg,
	E1 =  2515.560 mm,	E2 =   131.734 mm,	E3 =   245.754 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  2515.560 mm,	E2 =   131.734 mm,	E3 =   245.754 mm
};
/END

