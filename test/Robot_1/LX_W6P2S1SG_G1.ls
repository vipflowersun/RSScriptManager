/PROG LX_W6P2S1SG_G1
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
  20:J P[22] 20% FINE ;
  21:L P[7] 100mm/sec FINE ;
  22:  CALL MYG1PROCSET(1,0) ;
  23:  CALL MYG1VSNPCALC(1,6,87657,2,23,1,0,109,116) ;
  24:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  25://L P[8] 0mm/sec FINE ;
  26://L P[15] 0mm/sec FINE ;
  27:L P[16] 100mm/sec FINE ;
  28:J P[23] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1156.384 mm,	E2 =  1200.000 mm,	E3 =    65.544 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    3.385 deg,	J2 =  -34.826 deg,	J3 =    7.690 deg,
	J4 =    1.663 deg,	J5 =   67.329 deg,	J6 =  -87.852 deg,
	E1 = -1156.384 mm,	E2 =  1200.000 mm,	E3 =    65.544 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    6.770 deg,	J2 =   -9.653 deg,	J3 =   15.380 deg,
	J4 =    3.326 deg,	J5 =  104.657 deg,	J6 = -175.705 deg,
	E1 = -1156.384 mm,	E2 =  1200.000 mm,	E3 =    65.544 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1469.612 mm,	Y =  -1080.216 mm,	Z =   1785.438 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1156.384 mm,	E2=   1200.000 mm,	E3=     65.544 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1469.612 mm,	Y =  -1080.216 mm,	Z =   1785.438 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1156.384 mm,	E2=   1200.000 mm,	E3=     65.544 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1469.612 mm,	Y =  -1080.216 mm,	Z =   1785.438 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1156.384 mm,	E2=   1200.000 mm,	E3=     65.544 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1466.543 mm,	Y =  -1374.200 mm,	Z =   1785.824 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1450.368 mm,	E2=   1200.000 mm,	E3=     65.930 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1466.543 mm,	Y =  -1374.200 mm,	Z =   1785.824 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1450.368 mm,	E2=   1200.000 mm,	E3=     65.930 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1466.543 mm,	Y =  -1374.200 mm,	Z =   1785.824 mm,
	W =  -175.200 deg,	P =     1.050 deg,	R =    92.169 deg,
	E1=  -1450.368 mm,	E2=   1200.000 mm,	E3=     65.930 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =    6.761 deg,	J2 =  -12.151 deg,	J3 =    9.990 deg,
	J4 =    2.968 deg,	J5 =  105.443 deg,	J6 = -114.578 deg,
	E1 = -1458.052 mm,	E2 =  1128.988 mm,	E3 =   101.079 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =    6.717 deg,	J2 =  -14.397 deg,	J3 =    4.557 deg,
	J4 =    2.591 deg,	J5 =  106.275 deg,	J6 =  -53.484 deg,
	E1 = -1465.736 mm,	E2 =  1057.975 mm,	E3 =   136.228 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    6.674 deg,	J2 =  -16.644 deg,	J3 =   -0.876 deg,
	J4 =    2.215 deg,	J5 =  107.107 deg,	J6 =    7.611 deg,
	E1 = -1473.419 mm,	E2 =   986.963 mm,	E3 =   171.376 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1275.523 mm,	Y =  -1405.619 mm,	Z =   1690.687 mm,
	W =  -128.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1473.419 mm,	E2=    986.963 mm,	E3=    171.376 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1119.281 mm,	Y =  -1403.824 mm,	Z =   1915.528 mm,
	W =  -128.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1471.624 mm,	E2=    830.721 mm,	E3=    396.217 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1122.280 mm,	Y =  -1403.855 mm,	Z =   1915.495 mm,
	W =  -128.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1471.656 mm,	E2=    833.721 mm,	E3=    396.184 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1124.280 mm,	Y =  -1403.876 mm,	Z =   1915.474 mm,
	W =  -128.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1471.677 mm,	E2=    835.720 mm,	E3=    396.163 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1124.301 mm,	Y =  -1401.876 mm,	Z =   1915.471 mm,
	W =  -128.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1469.677 mm,	E2=    835.741 mm,	E3=    396.160 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1124.489 mm,	Y =  -1383.877 mm,	Z =   1915.447 mm,
	W =  -135.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1450.868 mm,	E2=    754.638 mm,	E3=    366.757 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1125.717 mm,	Y =  -1266.284 mm,	Z =   1915.293 mm,
	W =  -135.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1333.274 mm,	E2=    755.866 mm,	E3=    366.602 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1126.122 mm,	Y =  -1227.486 mm,	Z =   1915.242 mm,
	W =  -135.624 deg,	P =    -0.075 deg,	R =   -90.598 deg,
	E1=  -1294.476 mm,	E2=    756.271 mm,	E3=    366.551 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1127.349 mm,	Y =  -1109.892 mm,	Z =   1915.087 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1324.172 mm,	E2=    699.176 mm,	E3=    367.210 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1224.752 mm,	Y =  -1211.102 mm,	Z =   1672.717 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1425.382 mm,	E2=    796.579 mm,	E3=    124.839 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1425.382 mm,	E2 =   796.579 mm,	E3 =   124.839 mm
};
/END

