/PROG LX_W8P33S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,8,87659,33,275,1,0,109,112) ;
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
	E1 = -1441.361 mm,	E2 =  -199.000 mm,	E3 =   422.730 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.354 deg,	J2 =  -48.629 deg,	J3 =   -0.585 deg,
	J4 =  -11.929 deg,	J5 =   53.555 deg,	J6 =   17.856 deg,
	E1 = -1441.361 mm,	E2 =  -199.000 mm,	E3 =   422.730 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    414.195 mm,	Y =  -1795.520 mm,	Z =   1694.656 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.361 mm,	E2=   -199.000 mm,	E3=    422.730 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    414.195 mm,	Y =  -1795.520 mm,	Z =   1694.656 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.361 mm,	E2=   -199.000 mm,	E3=    422.730 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    414.195 mm,	Y =  -1795.520 mm,	Z =   1694.656 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.361 mm,	E2=   -199.000 mm,	E3=    422.730 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    416.027 mm,	Y =  -1795.772 mm,	Z =   1809.641 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.613 mm,	E2=   -199.000 mm,	E3=    537.715 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    416.027 mm,	Y =  -1795.772 mm,	Z =   1809.641 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.613 mm,	E2=   -199.000 mm,	E3=    537.715 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    416.027 mm,	Y =  -1795.772 mm,	Z =   1809.641 mm,
	W =   176.357 deg,	P =     0.918 deg,	R =  -124.646 deg,
	E1=  -1441.613 mm,	E2=   -199.000 mm,	E3=    537.715 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.232 deg,	J2 =  -48.451 deg,	J3 =   -0.706 deg,
	J4 =  -12.000 deg,	J5 =   53.700 deg,	J6 =  -70.282 deg,
	E1 = -1441.613 mm,	E2 =  -199.000 mm,	E3 =   537.715 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.232 deg,	J2 =  -48.451 deg,	J3 =   -0.706 deg,
	J4 =  -12.000 deg,	J5 =   53.700 deg,	J6 = -158.537 deg,
	E1 = -1441.613 mm,	E2 =  -199.000 mm,	E3 =   537.715 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -17.966 deg,	J2 =  -39.821 deg,	J3 =    1.260 deg,
	J4 =   -8.740 deg,	J5 =   64.347 deg,	J6 = -158.537 deg,
	E1 = -1577.738 mm,	E2 =   -29.519 mm,	E3 =   274.219 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    651.291 mm,	Y =  -1932.343 mm,	Z =   1638.693 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1577.738 mm,	E2=    -29.519 mm,	E3=    274.219 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    721.019 mm,	Y =  -1984.863 mm,	Z =   1887.474 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1630.258 mm,	E2=     40.209 mm,	E3=    523.000 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    720.286 mm,	Y =  -1984.763 mm,	Z =   1841.480 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1630.157 mm,	E2=     39.476 mm,	E3=    477.006 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    719.920 mm,	Y =  -1984.712 mm,	Z =   1818.483 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1630.107 mm,	E2=     39.110 mm,	E3=    454.009 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    719.187 mm,	Y =  -1984.612 mm,	Z =   1772.489 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1630.007 mm,	E2=     38.377 mm,	E3=    408.015 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    649.459 mm,	Y =  -1932.091 mm,	Z =   1523.708 mm,
	W =  -119.197 deg,	P =     0.453 deg,	R =    52.759 deg,
	E1=  -1577.486 mm,	E2=    -31.351 mm,	E3=    159.234 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -8.983 deg,	J2 =  -49.911 deg,	J3 =    0.630 deg,
	J4 =   -4.370 deg,	J5 =   47.174 deg,	J6 =  -79.268 deg,
	E1 = -1577.486 mm,	E2 =   -31.351 mm,	E3 =   159.234 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1577.486 mm,	E2 =   -31.351 mm,	E3 =   159.234 mm
};
/END

