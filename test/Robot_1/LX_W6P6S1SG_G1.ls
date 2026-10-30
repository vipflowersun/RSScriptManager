/PROG LX_W6P6S1SG_G1
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
  23:  CALL MYG1VSNPCALC(1,6,87657,6,39,1,0,109,112) ;
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
	E1 =   355.804 mm,	E2 =   693.996 mm,	E3 =   162.455 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =    4.810 deg,	J2 =  -40.264 deg,	J3 =    4.621 deg,
	J4 =   -4.068 deg,	J5 =   69.668 deg,	J6 =  -88.461 deg,
	E1 =   355.804 mm,	E2 =   693.996 mm,	E3 =   162.455 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =    9.621 deg,	J2 =  -20.527 deg,	J3 =    9.242 deg,
	J4 =   -8.135 deg,	J5 =  109.337 deg,	J6 = -176.922 deg,
	E1 =   355.804 mm,	E2 =   693.996 mm,	E3 =   162.455 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    924.082 mm,	Y =    286.147 mm,	Z =   1783.504 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    355.804 mm,	E2=    693.996 mm,	E3=    162.455 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    924.082 mm,	Y =    286.147 mm,	Z =   1783.504 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    355.804 mm,	E2=    693.996 mm,	E3=    162.455 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    924.082 mm,	Y =    286.147 mm,	Z =   1783.504 mm,
	W =  -173.254 deg,	P =    -9.496 deg,	R =    98.199 deg,
	E1=    355.804 mm,	E2=    693.996 mm,	E3=    162.455 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    931.246 mm,	Y =    319.407 mm,	Z =   1771.351 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     98.418 mm,	E2=    697.518 mm,	E3=    151.764 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    931.246 mm,	Y =    319.407 mm,	Z =   1771.351 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     98.418 mm,	E2=    697.518 mm,	E3=    151.764 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    931.246 mm,	Y =    319.407 mm,	Z =   1771.351 mm,
	W =  -172.236 deg,	P =    11.356 deg,	R =    86.310 deg,
	E1=     98.418 mm,	E2=    697.518 mm,	E3=    151.764 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =    2.775 deg,	J2 =  -20.524 deg,	J3 =    3.502 deg,
	J4 =   12.396 deg,	J5 =  105.588 deg,	J6 = -100.360 deg,
	E1 =   187.725 mm,	E2 =   538.016 mm,	E3 =   167.783 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -0.592 deg,	J2 =  -20.150 deg,	J3 =   -2.347 deg,
	J4 =    9.685 deg,	J5 =  105.284 deg,	J6 =  -28.679 deg,
	E1 =   277.032 mm,	E2 =   378.514 mm,	E3 =   183.802 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.959 deg,	J2 =  -19.777 deg,	J3 =   -8.196 deg,
	J4 =    6.974 deg,	J5 =  104.979 deg,	J6 =   43.002 deg,
	E1 =   366.339 mm,	E2 =   219.012 mm,	E3 =   199.821 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    647.185 mm,	Y =    480.619 mm,	Z =   1647.699 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=    366.339 mm,	E2=    219.012 mm,	E3=    199.821 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    598.484 mm,	Y =    531.224 mm,	Z =   1918.884 mm,
	W =  -135.388 deg,	P =    -0.494 deg,	R =  -135.597 deg,
	E1=    416.944 mm,	E2=    170.311 mm,	E3=    471.006 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    596.918 mm,	Y =    381.232 mm,	Z =   1919.081 mm,
	W =  -135.627 deg,	P =     0.034 deg,	R =   -80.599 deg,
	E1=    450.131 mm,	E2=    223.361 mm,	E3=    470.388 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    594.674 mm,	Y =    166.244 mm,	Z =   1919.364 mm,
	W =  -135.627 deg,	P =     0.034 deg,	R =   -80.599 deg,
	E1=    235.142 mm,	E2=    221.116 mm,	E3=    470.671 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    593.108 mm,	Y =     16.252 mm,	Z =   1919.561 mm,
	W =  -135.494 deg,	P =     0.388 deg,	R =   -45.600 deg,
	E1=    194.655 mm,	E2=    160.353 mm,	E3=    471.382 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    642.853 mm,	Y =     65.642 mm,	Z =   1648.244 mm,
	W =  -135.494 deg,	P =     0.388 deg,	R =   -45.600 deg,
	E1=    244.045 mm,	E2=    210.099 mm,	E3=    200.065 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   244.045 mm,	E2 =   210.099 mm,	E3 =   200.065 mm
};
/END

