/PROG LX_W7P17S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,7,87658,17,101,1,0,109,116) ;
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
	E1 =  1065.700 mm,	E2 =  1200.000 mm,	E3 =   354.468 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   20.662 deg,	J2 =  -35.768 deg,	J3 =   -4.705 deg,
	J4 =   15.625 deg,	J5 =   64.879 deg,	J6 =  -45.971 deg,
	E1 =  1065.700 mm,	E2 =  1200.000 mm,	E3 =   354.468 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   41.325 deg,	J2 =  -11.535 deg,	J3 =   -9.410 deg,
	J4 =   31.251 deg,	J5 =   99.758 deg,	J6 =  -91.942 deg,
	E1 =  1065.700 mm,	E2 =  1200.000 mm,	E3 =   354.468 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1482.751 mm,	Y =   1746.899 mm,	Z =   1771.286 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1065.700 mm,	E2=   1200.000 mm,	E3=    354.468 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1482.751 mm,	Y =   1746.899 mm,	Z =   1771.286 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1065.700 mm,	E2=   1200.000 mm,	E3=    354.468 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1482.751 mm,	Y =   1746.899 mm,	Z =   1771.286 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1065.700 mm,	E2=   1200.000 mm,	E3=    354.468 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1536.997 mm,	Y =   1801.680 mm,	Z =   1769.896 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1120.480 mm,	E2=   1200.000 mm,	E3=    353.077 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1536.997 mm,	Y =   1801.680 mm,	Z =   1769.896 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1120.480 mm,	E2=   1200.000 mm,	E3=    353.077 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1536.997 mm,	Y =   1801.680 mm,	Z =   1769.896 mm,
	W =  -175.745 deg,	P =     2.036 deg,	R =    48.039 deg,
	E1=   1120.480 mm,	E2=   1200.000 mm,	E3=    353.077 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   26.563 deg,	J2 =  -12.666 deg,	J3 =   -9.312 deg,
	J4 =   23.512 deg,	J5 =  103.870 deg,	J6 =  -15.744 deg,
	E1 =  1381.521 mm,	E2 =  1157.003 mm,	E3 =   303.679 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =   14.688 deg,	J2 =  -17.513 deg,	J3 =   -8.662 deg,
	J4 =   15.695 deg,	J5 =  106.032 deg,	J6 =   62.636 deg,
	E1 =  1642.563 mm,	E2 =  1114.006 mm,	E3 =   254.280 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1483.531 mm,	Y =   2018.740 mm,	Z =   1670.642 mm,
	W =  -128.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1642.563 mm,	E2=   1114.006 mm,	E3=    254.280 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1373.158 mm,	Y =   2131.165 mm,	Z =   1893.843 mm,
	W =  -128.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1754.987 mm,	E2=   1003.633 mm,	E3=    477.481 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1375.290 mm,	Y =   2129.054 mm,	Z =   1893.841 mm,
	W =  -128.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1752.876 mm,	E2=   1005.764 mm,	E3=    477.479 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1376.711 mm,	Y =   2127.647 mm,	Z =   1893.840 mm,
	W =  -128.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1751.469 mm,	E2=   1007.186 mm,	E3=    477.478 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1375.304 mm,	Y =   2126.226 mm,	Z =   1893.876 mm,
	W =  -128.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1750.048 mm,	E2=   1005.779 mm,	E3=    477.514 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1362.640 mm,	Y =   2113.438 mm,	Z =   1894.201 mm,
	W =  -135.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1793.858 mm,	E2=    935.185 mm,	E3=    447.626 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1256.520 mm,	Y =   2006.272 mm,	Z =   1896.921 mm,
	W =  -135.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1686.692 mm,	E2=    829.065 mm,	E3=    450.347 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1216.937 mm,	Y =   1966.299 mm,	Z =   1897.936 mm,
	W =  -135.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=   1646.719 mm,	E2=    789.482 mm,	E3=    451.361 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1111.409 mm,	Y =   1859.732 mm,	Z =   1900.641 mm,
	W =  -135.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1688.304 mm,	E2=    739.997 mm,	E3=    451.493 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1250.965 mm,	Y =   1858.656 mm,	Z =   1657.383 mm,
	W =  -135.754 deg,	P =    -0.708 deg,	R =   -89.715 deg,
	E1=   1687.228 mm,	E2=    879.554 mm,	E3=    208.235 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1687.228 mm,	E2 =   879.554 mm,	E3 =   208.235 mm
};
/END

