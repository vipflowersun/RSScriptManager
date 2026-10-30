/PROG LX_W7P12S1SG_G1
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
   4:J P[13] 10% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 10% FINE ;
   7:J P[15] 10% FINE ;
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
  18:J P[16] 10% FINE ;
  19:L P[7] 100mm/sec FINE ;
  20:  CALL MYG1PROCSET(1,0) ;
  21:  CALL MYG1VSNPCALC(1,7,87658,12,87,1,0,109,112) ;
  22://L P[8] 0mm/sec FINE ;
  23:L PR[109] 100mm/sec FINE ;
  24:  Weld Start[1,1] ;
  25:  Track TAST[1] ;
  26:  Weave Sine[1] ;
  27:  CALL MYG1TRAJE01 ;
  28://L P[11] 0mm/sec FINE ;
  29:L PR[112] WELD_SPEED FINE ;
  30:  Weld End[1,1] ;
  31:  Track End ;
  32:  Weave End ;
  33:L P[12] 100mm/sec FINE ;
  34:J P[17] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1999.234 mm,	E2 =  1158.678 mm,	E3 =   322.765 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -19.827 deg,	J2 =  -36.769 deg,	J3 =   -4.612 deg,
	J4 =  -13.217 deg,	J5 =   68.440 deg,	J6 =   50.454 deg,
	E1 =  1999.234 mm,	E2 =  1158.678 mm,	E3 =   322.765 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -39.655 deg,	J2 =  -13.539 deg,	J3 =   -9.224 deg,
	J4 =  -26.433 deg,	J5 =  106.880 deg,	J6 =  100.907 deg,
	E1 =  1999.234 mm,	E2 =  1158.678 mm,	E3 =   322.765 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1417.423 mm,	Y =   1452.262 mm,	Z =   1758.003 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   1999.234 mm,	E2=   1158.678 mm,	E3=    322.765 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1417.423 mm,	Y =   1452.262 mm,	Z =   1758.003 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   1999.234 mm,	E2=   1158.678 mm,	E3=    322.765 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1417.423 mm,	Y =   1452.262 mm,	Z =   1758.003 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   1999.234 mm,	E2=   1158.678 mm,	E3=    322.765 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1416.919 mm,	Y =   1453.126 mm,	Z =   1757.998 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   2000.097 mm,	E2=   1158.173 mm,	E3=    322.761 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1416.919 mm,	Y =   1453.126 mm,	Z =   1757.998 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   2000.097 mm,	E2=   1158.173 mm,	E3=    322.761 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1416.919 mm,	Y =   1453.126 mm,	Z =   1757.998 mm,
	W =  -171.813 deg,	P =     1.046 deg,	R =   123.103 deg,
	E1=   2000.097 mm,	E2=   1158.173 mm,	E3=    322.761 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.429 deg,	J2 =  -19.506 deg,	J3 =   -8.279 deg,
	J4 =    2.822 deg,	J5 =  107.368 deg,	J6 =   11.842 deg,
	E1 =  1356.410 mm,	E2 =   751.926 mm,	E3 =   187.221 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1128.722 mm,	Y =   1381.597 mm,	Z =   1635.631 mm,
	W =  -135.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=   1356.410 mm,	E2=    751.926 mm,	E3=    187.221 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1061.262 mm,	Y =   1400.446 mm,	Z =   1907.002 mm,
	W =  -135.545 deg,	P =    -0.879 deg,	R =  -104.715 deg,
	E1=   1375.259 mm,	E2=    684.466 mm,	E3=    458.592 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1128.694 mm,	Y =   1284.969 mm,	Z =   1907.554 mm,
	W =  -136.032 deg,	P =    -0.058 deg,	R =   -49.719 deg,
	E1=   1445.018 mm,	E2=    704.753 mm,	E3=    457.460 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1162.410 mm,	Y =   1227.231 mm,	Z =   1907.830 mm,
	W =  -136.032 deg,	P =    -0.058 deg,	R =   -49.719 deg,
	E1=   1387.279 mm,	E2=    738.469 mm,	E3=    457.736 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1229.842 mm,	Y =   1111.754 mm,	Z =   1908.381 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1242.903 mm,	E2=    827.501 mm,	E3=    458.364 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1289.972 mm,	Y =   1146.523 mm,	Z =   1636.440 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1277.672 mm,	E2=    887.631 mm,	E3=    186.423 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1277.672 mm,	E2 =   887.631 mm,	E3 =   186.423 mm
};
/END

