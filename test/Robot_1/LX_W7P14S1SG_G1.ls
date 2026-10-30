/PROG LX_W7P14S1SG_G1
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
   4:J P[17] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[18] 20% FINE ;
   7:J P[19] 20% FINE ;
   8:L P[1] 100mm/sec FINE ;
   9:L P[2] 25mm/sec FINE ;
  10:  WAIT   1.00(sec) ;
  11:  CALL MYG1VSNSCAN(1,1,0) ;
  12:L P[3] 100mm/sec FINE ;
  13:L P[4] 100mm/sec FINE ;
  14:L P[5] 25mm/sec FINE ;
  15:  WAIT   1.00(sec) ;
  16:  CALL MYG1VSNSCAN(1,1,0) ;
  17:L P[6] 100mm/sec FINE ;
  18:J P[20] 20% FINE ;
  19:J P[21] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(1,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,14,91,1,0,109,116) ;
  23:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  24://L P[8] 0mm/sec FINE ;
  25://L P[15] 0mm/sec FINE ;
  26:L P[16] 100mm/sec FINE ;
  27:J P[22] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1976.553 mm,	E2 =  1200.000 mm,	E3 =   354.627 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.696 deg,	J2 =  -31.134 deg,	J3 =   -5.223 deg,
	J4 =  -14.930 deg,	J5 =   68.893 deg,	J6 =   48.889 deg,
	E1 =  1976.553 mm,	E2 =  1200.000 mm,	E3 =   354.627 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -41.391 deg,	J2 =   -2.269 deg,	J3 =  -10.446 deg,
	J4 =  -29.860 deg,	J5 =  107.786 deg,	J6 =   97.778 deg,
	E1 =  1976.553 mm,	E2 =  1200.000 mm,	E3 =   354.627 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1507.789 mm,	Y =   1312.127 mm,	Z =   1776.359 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1976.553 mm,	E2=   1200.000 mm,	E3=    354.627 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1507.789 mm,	Y =   1312.127 mm,	Z =   1776.359 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1976.553 mm,	E2=   1200.000 mm,	E3=    354.627 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1507.789 mm,	Y =   1312.127 mm,	Z =   1776.359 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1976.553 mm,	E2=   1200.000 mm,	E3=    354.627 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1609.505 mm,	Y =   1137.939 mm,	Z =   1777.191 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1802.364 mm,	E2=   1200.000 mm,	E3=    355.459 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1609.505 mm,	Y =   1137.939 mm,	Z =   1777.191 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1802.364 mm,	E2=   1200.000 mm,	E3=    355.459 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1609.505 mm,	Y =   1137.939 mm,	Z =   1777.191 mm,
	W =  -174.810 deg,	P =     1.193 deg,	R =   123.057 deg,
	E1=   1802.364 mm,	E2=   1200.000 mm,	E3=    355.459 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -28.717 deg,	J2 =   -5.282 deg,	J3 =   -9.766 deg,
	J4 =  -21.126 deg,	J5 =  109.532 deg,	J6 =   23.929 deg,
	E1 =  1593.838 mm,	E2 =  1164.840 mm,	E3 =   308.849 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.568 deg,	J2 =  -15.386 deg,	J3 =   -9.225 deg,
	J4 =  -12.921 deg,	J5 =  109.199 deg,	J6 =  -54.081 deg,
	E1 =  1385.311 mm,	E2 =  1129.680 mm,	E3 =   262.239 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1461.711 mm,	Y =   1012.967 mm,	Z =   1683.421 mm,
	W =  -129.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1385.311 mm,	E2=   1129.680 mm,	E3=    262.239 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1327.241 mm,	Y =    935.045 mm,	Z =   1909.301 mm,
	W =  -129.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1307.389 mm,	E2=    995.210 mm,	E3=    488.119 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1329.831 mm,	Y =    936.558 mm,	Z =   1909.249 mm,
	W =  -129.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1308.902 mm,	E2=    997.800 mm,	E3=    488.067 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1331.558 mm,	Y =    937.566 mm,	Z =   1909.213 mm,
	W =  -129.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1309.910 mm,	E2=    999.527 mm,	E3=    488.032 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1330.549 mm,	Y =    939.293 mm,	Z =   1909.205 mm,
	W =  -129.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1311.637 mm,	E2=    998.519 mm,	E3=    488.023 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1321.473 mm,	Y =    954.837 mm,	Z =   1909.131 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1285.986 mm,	E2=    919.132 mm,	E3=    459.113 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1280.786 mm,	Y =   1024.512 mm,	Z =   1908.798 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1355.661 mm,	E2=    878.446 mm,	E3=    458.781 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1270.528 mm,	Y =   1042.079 mm,	Z =   1908.714 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1373.228 mm,	E2=    868.188 mm,	E3=    458.697 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1229.842 mm,	Y =   1111.754 mm,	Z =   1908.381 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1442.903 mm,	E2=    827.501 mm,	E3=    458.364 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1350.101 mm,	Y =   1181.291 mm,	Z =   1664.499 mm,
	W =  -136.006 deg,	P =    -0.236 deg,	R =   -59.717 deg,
	E1=   1512.441 mm,	E2=    947.761 mm,	E3=    214.481 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1512.441 mm,	E2 =   947.761 mm,	E3 =   214.481 mm
};
/END

