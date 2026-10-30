/PROG LX_W7P19S1SG_G1
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
   4:J P[13] 10% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 10% FINE ;
   7:J P[15] 10% FINE ;
   8:J P[16] 10% FINE ;
   9:L P[1] 100mm/sec FINE ;
  10:L P[2] 100mm/sec FINE ;
  11:  WAIT   1.00(sec) ;
  12:  CALL MYG1VSNSCAN(1,1,0) ;
  13:L P[3] 100mm/sec FINE ;
  14:L P[4] 100mm/sec FINE ;
  15:L P[5] 100mm/sec FINE ;
  16:  WAIT   1.00(sec) ;
  17:  CALL MYG1VSNSCAN(1,1,0) ;
  18:L P[6] 100mm/sec FINE ;
  19:J P[17] 10% FINE ;
  20:J P[18] 10% FINE ;
  21:J P[19] 10% FINE ;
  22:L P[7] 100mm/sec FINE ;
  23:  CALL MYG1PROCSET(1,0) ;
  24:  CALL MYG1VSNPCALC(1,7,87658,19,107,1,0,109,112) ;
  25://L P[8] 0mm/sec FINE ;
  26:L PR[109] 100mm/sec FINE ;
  27:  Weld Start[1,1] ;
  28:  Track TAST[1] ;
  29:  Weave Sine[1] ;
  30:  CALL MYG1TRAJE01 ;
  31://L P[11] 0mm/sec FINE ;
  32:L PR[112] WELD_SPEED FINE ;
  33:  Weld End[1,1] ;
  34:  Track End ;
  35:  Weave End ;
  36:L P[12] 100mm/sec FINE ;
  37:J P[21] 10% FINE ;
  38:J P[20] 10% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  2600.000 mm,	E2 =   478.824 mm,	E3 =   321.166 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =  -12.576 deg,	J5 =   68.179 deg,	J6 =   54.318 deg,
	E1 =  2600.000 mm,	E2 =   478.824 mm,	E3 =   321.166 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =  -25.152 deg,	J5 =  106.358 deg,	J6 =  108.636 deg,
	E1 =  2600.000 mm,	E2 =   478.824 mm,	E3 =   321.166 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -18.151 deg,	J2 =  -25.212 deg,	J3 =   -5.785 deg,
	J4 =  -25.152 deg,	J5 =  106.358 deg,	J6 =  108.636 deg,
	E1 =  2600.000 mm,	E2 =   478.824 mm,	E3 =   321.166 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    777.302 mm,	Y =   2245.010 mm,	Z =   1756.536 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    478.824 mm,	E3=    321.166 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    777.302 mm,	Y =   2245.010 mm,	Z =   1756.536 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    478.824 mm,	E3=    321.166 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    777.302 mm,	Y =   2245.010 mm,	Z =   1756.536 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    478.824 mm,	E3=    321.166 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    772.252 mm,	Y =   2250.010 mm,	Z =   1756.540 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    473.775 mm,	E3=    321.170 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    772.252 mm,	Y =   2250.010 mm,	Z =   1756.540 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    473.775 mm,	E3=    321.170 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    772.252 mm,	Y =   2250.010 mm,	Z =   1756.540 mm,
	W =  -171.799 deg,	P =     0.777 deg,	R =   138.101 deg,
	E1=   2600.000 mm,	E2=    473.775 mm,	E3=    321.170 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -20.068 deg,	J2 =  -25.373 deg,	J3 =   -8.556 deg,
	J4 =  -19.651 deg,	J5 =  106.700 deg,	J6 =   48.565 deg,
	E1 =  2584.148 mm,	E2 =   359.673 mm,	E3 =   308.874 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -22.511 deg,	J2 =  -25.393 deg,	J3 =  -11.381 deg,
	J4 =  -14.243 deg,	J5 =  106.868 deg,	J6 =  -12.026 deg,
	E1 =  2568.295 mm,	E2 =   245.571 mm,	E3 =   296.577 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -24.954 deg,	J2 =  -25.414 deg,	J3 =  -14.205 deg,
	J4 =   -8.836 deg,	J5 =  107.037 deg,	J6 =  -72.616 deg,
	E1 =  2552.443 mm,	E2 =   131.470 mm,	E3 =   284.281 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    468.017 mm,	Y =   2179.466 mm,	Z =   1634.370 mm,
	W =  -136.033 deg,	P =     0.032 deg,	R =   -44.720 deg,
	E1=   2552.443 mm,	E2=    131.470 mm,	E3=    284.281 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    419.196 mm,	Y =   2130.108 mm,	Z =   1906.344 mm,
	W =  -136.033 deg,	P =     0.032 deg,	R =   -44.720 deg,
	E1=   2503.085 mm,	E2=     82.649 mm,	E3=    556.255 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    525.779 mm,	Y =   2024.562 mm,	Z =   1906.260 mm,
	W =  -136.012 deg,	P =     0.211 deg,	R =   -34.721 deg,
	E1=   2419.864 mm,	E2=    160.889 mm,	E3=    556.265 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    601.884 mm,	Y =   1949.197 mm,	Z =   1906.200 mm,
	W =  -136.012 deg,	P =     0.211 deg,	R =   -34.721 deg,
	E1=   2344.499 mm,	E2=    236.994 mm,	E3=    556.204 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    708.468 mm,	Y =   1843.651 mm,	Z =   1906.116 mm,
	W =  -135.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2272.696 mm,	E2=    223.762 mm,	E3=    557.270 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    707.190 mm,	Y =   1913.477 mm,	Z =   1634.543 mm,
	W =  -135.708 deg,	P =     0.753 deg,	R =     0.276 deg,
	E1=   2342.523 mm,	E2=    222.484 mm,	E3=    285.697 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -12.503 deg,	J2 =  -43.196 deg,	J3 =   -6.911 deg,
	J4 =   -4.088 deg,	J5 =   64.528 deg,	J6 =  -58.424 deg,
	E1 =  2342.523 mm,	E2 =   222.484 mm,	E3 =   285.697 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =  2342.523 mm,	E2 =   222.484 mm,	E3 =   285.697 mm
};
/END

