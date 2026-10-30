/PROG LX_W6P9S1SG_G1
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
   8:J P[16] 20% FINE ;
   9:J P[17] 20% FINE ;
  10:L P[1] 100mm/sec FINE ;
  11:L P[2] 100mm/sec FINE ;
  12:  WAIT   1.00(sec) ;
  13:  CALL MYG1VSNSCAN(1,1,0) ;
  14:L P[3] 100mm/sec FINE ;
  15:L P[4] 100mm/sec FINE ;
  16:L P[5] 100mm/sec FINE ;
  17:  WAIT   1.00(sec) ;
  18:  CALL MYG1VSNSCAN(1,1,0) ;
  19:L P[6] 100mm/sec FINE ;
  20:J P[18] 20% FINE ;
  21:J P[19] 20% FINE ;
  22:J P[20] 20% FINE ;
  23:J P[21] 20% FINE ;
  24:J P[22] 20% FINE ;
  25:L P[7] 100mm/sec FINE ;
  26:  CALL MYG1PROCSET(2,0) ;
  27:  CALL MYG1VSNPCALC(1,6,87657,9,67,1,0,109,112) ;
  28://L P[8] 0mm/sec FINE ;
  29:L PR[109] 100mm/sec FINE ;
  30:  Weld Start[1,1] ;
  31:  Track TAST[1] ;
  32:  Weave Sine[1] ;
  33:  CALL MYG1TRAJE01 ;
  34://L P[11] 0mm/sec FINE ;
  35:L PR[112] WELD_SPEED FINE ;
  36:  Weld End[1,1] ;
  37:  Track End ;
  38:  Weave End ;
  39:L P[12] 100mm/sec FINE ;
  40:J P[24] 20% FINE ;
  41:J P[23] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2101.115 mm,	E2 =  -199.000 mm,	E3 =   415.460 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -0.713 deg,	J2 =  -18.453 deg,	J3 =   -4.610 deg,
	J4 =   -2.842 deg,	J5 =   30.000 deg,	J6 =    1.623 deg,
	E1 = -2101.115 mm,	E2 =  -199.000 mm,	E3 =   415.460 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =    9.378 deg,	J2 =   -5.293 deg,	J3 =  -11.335 deg,
	J4 =   -2.842 deg,	J5 =   30.000 deg,	J6 =    1.623 deg,
	E1 = -2101.115 mm,	E2 =  -199.000 mm,	E3 =   415.460 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   31.993 deg,	J2 =   -7.304 deg,	J3 =  -14.723 deg,
	J4 =   -2.842 deg,	J5 =   41.603 deg,	J6 =    1.623 deg,
	E1 = -2101.115 mm,	E2 =  -199.000 mm,	E3 =   415.460 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   49.000 deg,	J2 =  -20.394 deg,	J3 =  -14.723 deg,
	J4 =   -2.842 deg,	J5 =   66.493 deg,	J6 =    1.623 deg,
	E1 = -2101.115 mm,	E2 =  -199.000 mm,	E3 =   415.460 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    481.830 mm,	Y =  -1378.901 mm,	Z =   1689.339 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2101.115 mm,	E2=   -199.000 mm,	E3=    415.460 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    481.830 mm,	Y =  -1378.901 mm,	Z =   1689.339 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2101.115 mm,	E2=   -199.000 mm,	E3=    415.460 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    481.830 mm,	Y =  -1378.901 mm,	Z =   1689.339 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2101.115 mm,	E2=   -199.000 mm,	E3=    415.460 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    483.465 mm,	Y =  -1378.721 mm,	Z =   1839.330 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2100.935 mm,	E2=   -199.000 mm,	E3=    565.451 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    483.465 mm,	Y =  -1378.721 mm,	Z =   1839.330 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2100.935 mm,	E2=   -199.000 mm,	E3=    565.451 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    483.465 mm,	Y =  -1378.721 mm,	Z =   1839.330 mm,
	W =   176.703 deg,	P =     1.744 deg,	R =   -42.997 deg,
	E1=  -2100.935 mm,	E2=   -199.000 mm,	E3=    565.451 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   46.549 deg,	J2 =  -21.028 deg,	J3 =  -14.747 deg,
	J4 =   -1.771 deg,	J5 =   66.731 deg,	J6 =    6.307 deg,
	E1 = -2091.380 mm,	E2 =  -194.525 mm,	E3 =   565.451 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   31.374 deg,	J2 =  -23.223 deg,	J3 =  -14.120 deg,
	J4 =    2.695 deg,	J5 =   70.193 deg,	J6 =   32.371 deg,
	E1 = -2011.703 mm,	E2 =    -2.578 mm,	E3 =   445.740 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -6.144 deg,	J2 =  -26.289 deg,	J3 =  -14.754 deg,
	J4 =   13.623 deg,	J5 =   83.830 deg,	J6 =   72.135 deg,
	E1 = -1709.302 mm,	E2 =     7.389 mm,	E3 =   403.712 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -5.718 deg,	J2 =  -26.510 deg,	J3 =  -14.754 deg,
	J4 =   13.689 deg,	J5 =   83.830 deg,	J6 =   73.881 deg,
	E1 = -1700.370 mm,	E2 =     2.229 mm,	E3 =   403.712 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -6.757 deg,	J2 =  -33.103 deg,	J3 =  -10.387 deg,
	J4 =   19.471 deg,	J5 =   83.830 deg,	J6 =  129.487 deg,
	E1 = -1402.681 mm,	E2 =   -87.174 mm,	E3 =   403.712 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    652.981 mm,	Y =  -1166.240 mm,	Z =   1670.324 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1402.681 mm,	E2=    -87.174 mm,	E3=    403.712 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    715.396 mm,	Y =  -1105.586 mm,	Z =   1919.573 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1342.027 mm,	E2=    -24.759 mm,	E3=    652.962 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    714.742 mm,	Y =  -1105.658 mm,	Z =   1859.577 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1342.099 mm,	E2=    -25.414 mm,	E3=    592.965 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    714.415 mm,	Y =  -1105.694 mm,	Z =   1829.579 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1342.135 mm,	E2=    -25.741 mm,	E3=    562.967 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    713.761 mm,	Y =  -1105.766 mm,	Z =   1769.583 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1342.207 mm,	E2=    -26.395 mm,	E3=    502.971 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    651.346 mm,	Y =  -1166.420 mm,	Z =   1520.333 mm,
	W =  -119.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1402.861 mm,	E2=    -88.809 mm,	E3=    253.721 mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.378 deg,	J2 =  -46.552 deg,	J3 =   -5.193 deg,
	J4 =    9.736 deg,	J5 =   56.915 deg,	J6 =   64.743 deg,
	E1 = -1402.861 mm,	E2 =   -88.809 mm,	E3 =   253.721 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1402.861 mm,	E2 =   -88.809 mm,	E3 =   253.721 mm
};
/END

