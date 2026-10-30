/PROG LX_W7P11S1SG_G1
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
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(1,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,11,81,1,0,109,112) ;
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
  35:J P[19] 10% FINE ;
  36:J P[18] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   239.748 mm,	E2 =   350.105 mm,	E3 =   459.798 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   27.301 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   239.748 mm,	E2 =   350.105 mm,	E3 =   459.798 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   27.301 deg,	J2 =  -26.953 deg,	J3 =  -12.843 deg,
	J4 =   19.140 deg,	J5 =   78.554 deg,	J6 =  -62.432 deg,
	E1 =   239.748 mm,	E2 =   350.105 mm,	E3 =   459.798 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    975.019 mm,	Y =    762.224 mm,	Z =   1771.885 mm,
	W =  -173.633 deg,	P =    11.959 deg,	R =    -3.088 deg,
	E1=    239.748 mm,	E2=    350.105 mm,	E3=    459.798 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    975.019 mm,	Y =    762.224 mm,	Z =   1771.885 mm,
	W =  -173.633 deg,	P =    11.959 deg,	R =    -3.088 deg,
	E1=    239.748 mm,	E2=    350.105 mm,	E3=    459.798 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    975.019 mm,	Y =    762.224 mm,	Z =   1771.885 mm,
	W =  -173.633 deg,	P =    11.959 deg,	R =    -3.088 deg,
	E1=    239.748 mm,	E2=    350.105 mm,	E3=    459.798 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.808 mm,	Y =    769.030 mm,	Z =   1784.625 mm,
	W =  -174.480 deg,	P =    -8.620 deg,	R =     9.275 deg,
	E1=    247.320 mm,	E2=    580.524 mm,	E3=    467.650 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.808 mm,	Y =    769.030 mm,	Z =   1784.625 mm,
	W =  -174.480 deg,	P =    -8.620 deg,	R =     9.275 deg,
	E1=    247.320 mm,	E2=    580.524 mm,	E3=    467.650 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    914.808 mm,	Y =    769.030 mm,	Z =   1784.625 mm,
	W =  -174.480 deg,	P =    -8.620 deg,	R =     9.275 deg,
	E1=    247.320 mm,	E2=    580.524 mm,	E3=    467.650 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   22.128 deg,	J2 =  -25.961 deg,	J3 =  -13.590 deg,
	J4 =   20.500 deg,	J5 =  103.876 deg,	J6 =    0.665 deg,
	E1 =   488.015 mm,	E2 =   471.899 mm,	E3 =   383.290 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   18.446 deg,	J2 =  -27.701 deg,	J3 =  -13.286 deg,
	J4 =    9.765 deg,	J5 =  106.674 deg,	J6 =   65.606 deg,
	E1 =   728.710 mm,	E2 =   363.274 mm,	E3 =   298.931 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    690.729 mm,	Y =   1048.289 mm,	Z =   1645.505 mm,
	W =  -135.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    728.710 mm,	E2=    363.274 mm,	E3=    298.931 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    641.411 mm,	Y =   1098.922 mm,	Z =   1916.244 mm,
	W =  -135.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    779.343 mm,	E2=    313.956 mm,	E3=    569.670 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    791.396 mm,	Y =   1099.644 mm,	Z =   1914.272 mm,
	W =  -134.172 deg,	P =    -0.619 deg,	R =   170.276 deg,
	E1=    716.984 mm,	E2=    283.528 mm,	E3=    570.843 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1033.364 mm,	Y =   1100.809 mm,	Z =   1911.089 mm,
	W =  -134.172 deg,	P =    -0.619 deg,	R =   170.276 deg,
	E1=    718.149 mm,	E2=    525.496 mm,	E3=    567.660 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1183.349 mm,	Y =   1101.531 mm,	Z =   1909.117 mm,
	W =  -133.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    772.907 mm,	E2=    563.342 mm,	E3=    566.485 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1132.677 mm,	Y =   1050.417 mm,	Z =   1639.693 mm,
	W =  -133.967 deg,	P =    -0.032 deg,	R =   135.280 deg,
	E1=    721.792 mm,	E2=    512.670 mm,	E3=    297.061 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    9.561 deg,	J2 =  -44.718 deg,	J3 =   -6.268 deg,
	J4 =    2.408 deg,	J5 =   61.293 deg,	J6 =   77.238 deg,
	E1 =   721.792 mm,	E2 =   512.670 mm,	E3 =   297.061 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   721.792 mm,	E2 =   512.670 mm,	E3 =   297.061 mm
};
/END

