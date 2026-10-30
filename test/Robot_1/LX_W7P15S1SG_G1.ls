/PROG LX_W7P15S1SG_G1
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
  21:  CALL MYG1VSNPCALC(1,7,87658,15,93,1,0,109,116) ;
  22:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  23://L P[8] 0mm/sec FINE ;
  24://L P[15] 0mm/sec FINE ;
  25:L P[16] 100mm/sec FINE ;
  26:J P[22] 20% FINE ;
  27:J P[21] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1905.505 mm,	E2 =  -199.000 mm,	E3 =   478.175 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -70.534 deg,	J2 =  -23.710 deg,	J3 =  -14.047 deg,
	J4 =   21.153 deg,	J5 =   80.998 deg,	J6 =  -42.615 deg,
	E1 =  1905.505 mm,	E2 =  -199.000 mm,	E3 =   478.175 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    272.731 mm,	Y =   1238.305 mm,	Z =   1793.444 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1905.505 mm,	E2=   -199.000 mm,	E3=    478.175 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    272.731 mm,	Y =   1238.305 mm,	Z =   1793.444 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1905.505 mm,	E2=   -199.000 mm,	E3=    478.175 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    272.731 mm,	Y =   1238.305 mm,	Z =   1793.444 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1905.505 mm,	E2=   -199.000 mm,	E3=    478.175 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    178.476 mm,	Y =   1073.173 mm,	Z =   1796.729 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1740.373 mm,	E2=   -199.000 mm,	E3=    481.460 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    178.476 mm,	Y =   1073.173 mm,	Z =   1796.729 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1740.373 mm,	E2=   -199.000 mm,	E3=    481.460 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    178.476 mm,	Y =   1073.173 mm,	Z =   1796.729 mm,
	W =  -176.173 deg,	P =     0.031 deg,	R =  -116.966 deg,
	E1=   1740.373 mm,	E2=   -199.000 mm,	E3=    481.460 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -42.545 deg,	J2 =  -35.983 deg,	J3 =    0.145 deg,
	J4 =    8.691 deg,	J5 =   72.254 deg,	J6 = -101.992 deg,
	E1 =  1454.316 mm,	E2 =  -184.429 mm,	E3 =   332.425 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -4.722 deg,	J2 =  -45.948 deg,	J3 =   13.481 deg,
	J4 =   -7.302 deg,	J5 =   60.567 deg,	J6 = -152.154 deg,
	E1 =  1168.259 mm,	E2 =  -169.858 mm,	E3 =   183.391 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    360.705 mm,	Y =   1007.667 mm,	Z =   1697.900 mm,
	W =  -127.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1168.259 mm,	E2=   -169.858 mm,	E3=    183.391 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    499.183 mm,	Y =    931.059 mm,	Z =   1920.191 mm,
	W =  -127.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1091.651 mm,	E2=    -31.380 mm,	E3=    405.682 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    496.578 mm,	Y =    932.547 mm,	Z =   1920.207 mm,
	W =  -127.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1093.139 mm,	E2=    -33.985 mm,	E3=    405.697 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    494.841 mm,	Y =    933.538 mm,	Z =   1920.217 mm,
	W =  -127.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1094.130 mm,	E2=    -35.722 mm,	E3=    405.708 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    495.832 mm,	Y =    935.275 mm,	Z =   1920.183 mm,
	W =  -127.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1095.867 mm,	E2=    -34.731 mm,	E3=    405.673 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    504.754 mm,	Y =    950.905 mm,	Z =   1919.872 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1070.978 mm,	E2=     44.111 mm,	E3=    374.682 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    542.456 mm,	Y =   1016.958 mm,	Z =   1918.558 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1137.031 mm,	E2=     81.813 mm,	E3=    373.368 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    551.394 mm,	Y =   1032.618 mm,	Z =   1918.246 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1152.690 mm,	E2=     90.751 mm,	E3=    373.057 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    589.096 mm,	Y =   1098.671 mm,	Z =   1916.932 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1218.743 mm,	E2=    128.453 mm,	E3=    371.743 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    464.430 mm,	Y =   1167.029 mm,	Z =   1676.271 mm,
	W =  -134.701 deg,	P =     0.990 deg,	R =    60.283 deg,
	E1=   1287.101 mm,	E2=      3.787 mm,	E3=    131.081 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -2.782 deg,	J2 =  -52.692 deg,	J3 =    6.440 deg,
	J4 =   -1.791 deg,	J5 =   48.676 deg,	J6 =  -77.330 deg,
	E1 =  1287.101 mm,	E2 =     3.787 mm,	E3 =   131.081 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  1287.101 mm,	E2 =     3.787 mm,	E3 =   131.081 mm
};
/END

