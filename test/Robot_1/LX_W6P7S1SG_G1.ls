/PROG LX_W6P7S1SG_G1
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
  19:J P[17] 10% FINE ;
  20:J P[18] 10% FINE ;
  21:L P[7] 100mm/sec FINE ;
  22:  CALL MYG1PROCSET(1,0) ;
  23:  CALL MYG1VSNPCALC(1,6,87657,7,43,1,0,109,112) ;
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
  36:J P[19] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   348.634 mm,	E2 =  1200.000 mm,	E3 =    54.985 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =    3.558 deg,	J2 =  -30.691 deg,	J3 =    7.268 deg,
	J4 =   -4.568 deg,	J5 =   66.868 deg,	J6 =  -89.310 deg,
	E1 =   348.634 mm,	E2 =  1200.000 mm,	E3 =    54.985 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =    7.117 deg,	J2 =   -1.382 deg,	J3 =   14.535 deg,
	J4 =   -9.136 deg,	J5 =  103.736 deg,	J6 = -178.621 deg,
	E1 =   348.634 mm,	E2 =  1200.000 mm,	E3 =    54.985 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1610.004 mm,	Y =    278.977 mm,	Z =   1776.034 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    348.634 mm,	E2=   1200.000 mm,	E3=     54.985 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1610.004 mm,	Y =    278.977 mm,	Z =   1776.034 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    348.634 mm,	E2=   1200.000 mm,	E3=     54.985 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1610.004 mm,	Y =    278.977 mm,	Z =   1776.034 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    348.634 mm,	E2=   1200.000 mm,	E3=     54.985 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1617.168 mm,	Y =    312.236 mm,	Z =   1763.881 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     91.248 mm,	E2=   1200.000 mm,	E3=     44.294 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1617.168 mm,	Y =    312.236 mm,	Z =   1763.881 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     91.248 mm,	E2=   1200.000 mm,	E3=     44.294 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1617.168 mm,	Y =    312.236 mm,	Z =   1763.881 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     91.248 mm,	E2=   1200.000 mm,	E3=     44.294 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =    1.686 deg,	J2 =   -7.511 deg,	J3 =    6.945 deg,
	J4 =   11.711 deg,	J5 =  102.524 deg,	J6 = -102.313 deg,
	E1 =   180.555 mm,	E2 =  1101.645 mm,	E3 =    93.647 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -1.136 deg,	J2 =  -13.644 deg,	J3 =   -0.626 deg,
	J4 =    9.343 deg,	J5 =  103.751 deg,	J6 =  -29.656 deg,
	E1 =   269.862 mm,	E2 =  1003.289 mm,	E3 =   142.999 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.959 deg,	J2 =  -19.777 deg,	J3 =   -8.196 deg,
	J4 =    6.974 deg,	J5 =  104.979 deg,	J6 =   43.002 deg,
	E1 =   359.169 mm,	E2 =   904.934 mm,	E3 =   192.352 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1333.107 mm,	Y =    473.449 mm,	Z =   1640.229 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=    359.169 mm,	E2=    904.934 mm,	E3=    192.352 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1284.405 mm,	Y =    524.054 mm,	Z =   1911.414 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=    409.774 mm,	E2=    856.233 mm,	E3=    463.537 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1282.840 mm,	Y =    374.062 mm,	Z =   1911.612 mm,
	W =  -135.627 deg,	P =     0.034 deg,	R =   -80.599 deg,
	E1=    442.960 mm,	E2=    909.283 mm,	E3=    462.918 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1280.595 mm,	Y =    159.074 mm,	Z =   1911.894 mm,
	W =  -135.627 deg,	P =     0.034 deg,	R =   -80.599 deg,
	E1=    227.972 mm,	E2=    907.038 mm,	E3=    463.201 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1279.030 mm,	Y =      9.082 mm,	Z =   1912.091 mm,
	W =  -135.494 deg,	P =     0.388 deg,	R =   -45.600 deg,
	E1=    187.485 mm,	E2=    846.275 mm,	E3=    463.912 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1328.775 mm,	Y =     58.472 mm,	Z =   1640.774 mm,
	W =  -135.494 deg,	P =     0.388 deg,	R =   -45.600 deg,
	E1=    236.875 mm,	E2=    896.021 mm,	E3=    192.595 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   236.875 mm,	E2 =   896.021 mm,	E3 =   192.595 mm
};
/END

