/PROG LX_W6P3S1SG_G1
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
   4:J P[17] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[18] 20% FINE ;
   7:L P[1] 100mm/sec FINE ;
   8:L P[2] 25mm/sec FINE ;
   9:  WAIT   1.00(sec) ;
  10:  CALL MYG1VSNSCAN(1,1,0) ;
  11:L P[3] 100mm/sec FINE ;
  12:L P[4] 100mm/sec FINE ;
  13:L P[5] 25mm/sec FINE ;
  14:  WAIT   1.00(sec) ;
  15:  CALL MYG1VSNSCAN(1,1,0) ;
  16:L P[6] 100mm/sec FINE ;
  17:J P[19] 20% FINE ;
  18:J P[20] 20% FINE ;
  19:L P[7] 100mm/sec FINE ;
  20:  CALL MYG1PROCSET(1,0) ;
  21:  CALL MYG1VSNPCALC(1,6,87657,3,29,1,0,109,116) ;
  22:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  23://L P[8] 0mm/sec FINE ;
  24://L P[15] 0mm/sec FINE ;
  25:L P[16] 100mm/sec FINE ;
  26:J P[21] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2110.391 mm,	E2 =   573.362 mm,	E3 =   372.939 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   30.178 deg,	J2 =  -12.540 deg,	J3 =   -9.219 deg,
	J4 =   26.410 deg,	J5 =   83.005 deg,	J6 =  -61.903 deg,
	E1 = -2110.391 mm,	E2 =   573.362 mm,	E3 =   372.939 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1155.807 mm,	Y =  -1453.700 mm,	Z =   1789.308 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2110.391 mm,	E2=    573.362 mm,	E3=    372.939 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1155.807 mm,	Y =  -1453.700 mm,	Z =   1789.308 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2110.391 mm,	E2=    573.362 mm,	E3=    372.939 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1155.807 mm,	Y =  -1453.700 mm,	Z =   1789.308 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2110.391 mm,	E2=    573.362 mm,	E3=    372.939 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1452.273 mm,	Y =  -1456.799 mm,	Z =   1786.079 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2113.490 mm,	E2=    869.828 mm,	E3=    369.710 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1452.273 mm,	Y =  -1456.799 mm,	Z =   1786.079 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2113.490 mm,	E2=    869.828 mm,	E3=    369.710 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1452.273 mm,	Y =  -1456.799 mm,	Z =   1786.079 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2113.490 mm,	E2=    869.828 mm,	E3=    369.710 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   23.823 deg,	J2 =  -20.737 deg,	J3 =  -10.909 deg,
	J4 =   21.264 deg,	J5 =   89.659 deg,	J6 =   24.370 deg,
	E1 = -1918.669 mm,	E2 =   908.318 mm,	E3 =   371.397 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   17.468 deg,	J2 =  -28.934 deg,	J3 =  -12.600 deg,
	J4 =   16.117 deg,	J5 =   96.314 deg,	J6 =  110.643 deg,
	E1 = -1723.848 mm,	E2 =   946.808 mm,	E3 =   373.085 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1420.880 mm,	Y =  -1265.733 mm,	Z =   1688.934 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1723.848 mm,	E2=    946.808 mm,	E3=    373.085 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1423.868 mm,	Y =  -1107.992 mm,	Z =   1911.852 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1566.107 mm,	E2=    949.795 mm,	E3=    596.003 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1423.836 mm,	Y =  -1110.992 mm,	Z =   1911.856 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1569.106 mm,	E2=    949.764 mm,	E3=    596.006 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1423.815 mm,	Y =  -1112.992 mm,	Z =   1911.859 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1571.106 mm,	E2=    949.743 mm,	E3=    596.009 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1421.816 mm,	Y =  -1112.971 mm,	Z =   1911.881 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1571.085 mm,	E2=    947.743 mm,	E3=    596.031 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1403.818 mm,	Y =  -1112.782 mm,	Z =   1912.077 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1489.968 mm,	E2=    930.261 mm,	E3=    565.859 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1285.231 mm,	Y =  -1111.543 mm,	Z =   1913.368 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1488.728 mm,	E2=    811.674 mm,	E3=    567.151 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1245.936 mm,	Y =  -1111.132 mm,	Z =   1913.796 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1488.318 mm,	E2=    772.379 mm,	E3=    567.579 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1127.349 mm,	Y =  -1109.892 mm,	Z =   1915.087 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1424.172 mm,	E2=    799.176 mm,	E3=    567.210 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1224.752 mm,	Y =  -1211.102 mm,	Z =   1672.717 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1525.382 mm,	E2=    896.579 mm,	E3=    324.839 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1525.382 mm,	E2 =   896.579 mm,	E3 =   324.839 mm
};
/END

