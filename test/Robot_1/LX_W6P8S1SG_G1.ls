/PROG LX_W6P8S1SG_G1
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
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(2,0) ;
  22:  CALL MYG1VSNPCALC(1,6,87657,8,65,1,0,109,112) ;
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
  35:J P[18] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2073.014 mm,	E2 =  1173.848 mm,	E3 =   299.839 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   20.534 deg,	J2 =  -35.937 deg,	J3 =   -4.481 deg,
	J4 =   18.972 deg,	J5 =   64.642 deg,	J6 =  -45.165 deg,
	E1 = -2073.014 mm,	E2 =  1173.848 mm,	E3 =   299.839 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   41.069 deg,	J2 =  -11.874 deg,	J3 =   -8.963 deg,
	J4 =   37.944 deg,	J5 =   99.284 deg,	J6 =  -90.330 deg,
	E1 = -2073.014 mm,	E2 =  1173.848 mm,	E3 =   299.839 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1397.830 mm,	Y =  -1341.214 mm,	Z =   1679.307 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2073.014 mm,	E2=   1173.848 mm,	E3=    299.839 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1397.830 mm,	Y =  -1341.214 mm,	Z =   1679.307 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2073.014 mm,	E2=   1173.848 mm,	E3=    299.839 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1397.830 mm,	Y =  -1341.214 mm,	Z =   1679.307 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2073.014 mm,	E2=   1173.848 mm,	E3=    299.839 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1399.465 mm,	Y =  -1341.034 mm,	Z =   1829.298 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2072.834 mm,	E2=   1175.484 mm,	E3=    449.830 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1399.465 mm,	Y =  -1341.034 mm,	Z =   1829.298 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2072.834 mm,	E2=   1175.484 mm,	E3=    449.830 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1399.465 mm,	Y =  -1341.034 mm,	Z =   1829.298 mm,
	W =   177.590 deg,	P =     1.810 deg,	R =    47.027 deg,
	E1=  -2072.834 mm,	E2=   1175.484 mm,	E3=    449.830 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   30.360 deg,	J2 =   -8.861 deg,	J3 =   -9.716 deg,
	J4 =   30.889 deg,	J5 =  104.266 deg,	J6 =   -9.489 deg,
	E1 = -1889.505 mm,	E2 =   976.605 mm,	E3 =   370.968 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   19.651 deg,	J2 =   -5.848 deg,	J3 =  -10.469 deg,
	J4 =   23.834 deg,	J5 =  109.248 deg,	J6 =   71.353 deg,
	E1 = -1706.175 mm,	E2 =   777.727 mm,	E3 =   292.106 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1187.395 mm,	Y =  -1171.826 mm,	Z =   1664.504 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1706.175 mm,	E2=    777.727 mm,	E3=    292.106 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1127.349 mm,	Y =  -1109.892 mm,	Z =   1915.087 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1644.241 mm,	E2=    717.681 mm,	E3=    542.689 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1126.695 mm,	Y =  -1109.964 mm,	Z =   1855.091 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1644.313 mm,	E2=    717.027 mm,	E3=    482.693 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1126.368 mm,	Y =  -1110.000 mm,	Z =   1825.093 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1644.349 mm,	E2=    716.700 mm,	E3=    452.695 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1125.714 mm,	Y =  -1110.072 mm,	Z =   1765.096 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1644.421 mm,	E2=    716.046 mm,	E3=    392.698 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1185.760 mm,	Y =  -1172.006 mm,	Z =   1514.513 mm,
	W =  -120.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=  -1706.355 mm,	E2=    776.092 mm,	E3=    142.115 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1706.355 mm,	E2 =   776.092 mm,	E3 =   142.115 mm
};
/END

