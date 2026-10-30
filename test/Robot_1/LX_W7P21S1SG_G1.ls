/PROG LX_W7P21S1SG_G1
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
   4:J P[13] 20% FINE ;
   5:  CALL MYG1CLEARGUN ;
   6:J P[14] 20% FINE ;
   7:L P[1] 100mm/sec FINE ;
   8:L P[2] 100mm/sec FINE ;
   9:  WAIT   1.00(sec) ;
  10:  CALL MYG1VSNSCAN(1,1,0) ;
  11:L P[3] 100mm/sec FINE ;
  12:L P[4] 100mm/sec FINE ;
  13:L P[5] 100mm/sec FINE ;
  14:  WAIT   1.00(sec) ;
  15:  CALL MYG1VSNSCAN(1,1,0) ;
  16:L P[6] 100mm/sec FINE ;
  17:J P[15] 20% FINE ;
  18:J P[16] 20% FINE ;
  19:J P[17] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(2,0) ;
  22:  CALL MYG1VSNPCALC(1,7,87658,21,115,1,0,109,112) ;
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
  35:J P[19] 20% FINE ;
  36:J P[18] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   234.497 mm,	E2 =   758.789 mm,	E3 =   420.721 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =   39.970 deg,	J2 =  -25.604 deg,	J3 =  -12.963 deg,
	J4 =   38.849 deg,	J5 =  103.180 deg,	J6 =  -89.615 deg,
	E1 =   234.497 mm,	E2 =   758.789 mm,	E3 =   420.721 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    880.103 mm,	Y =    869.216 mm,	Z =   1697.842 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    234.497 mm,	E2=    758.789 mm,	E3=    420.721 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    880.103 mm,	Y =    869.216 mm,	Z =   1697.842 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    234.497 mm,	E2=    758.789 mm,	E3=    420.721 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    880.103 mm,	Y =    869.216 mm,	Z =   1697.842 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    234.497 mm,	E2=    758.789 mm,	E3=    420.721 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    881.412 mm,	Y =    870.458 mm,	Z =   1797.825 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    235.738 mm,	E2=    760.098 mm,	E3=    520.704 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    881.412 mm,	Y =    870.458 mm,	Z =   1797.825 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    235.738 mm,	E2=    760.098 mm,	E3=    520.704 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    881.412 mm,	Y =    870.458 mm,	Z =   1797.825 mm,
	W =   177.259 deg,	P =     2.364 deg,	R =    47.897 deg,
	E1=    235.738 mm,	E2=    760.098 mm,	E3=    520.704 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =   40.488 deg,	J2 =  -25.681 deg,	J3 =  -13.163 deg,
	J4 =   34.457 deg,	J5 =  103.094 deg,	J6 =  -29.080 deg,
	E1 =   290.423 mm,	E2 =   693.362 mm,	E3 =   467.673 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   41.006 deg,	J2 =  -25.757 deg,	J3 =  -13.363 deg,
	J4 =   30.065 deg,	J5 =  103.007 deg,	J6 =   31.456 deg,
	E1 =   345.107 mm,	E2 =   626.626 mm,	E3 =   414.642 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =   41.525 deg,	J2 =  -25.834 deg,	J3 =  -13.563 deg,
	J4 =   25.673 deg,	J5 =  102.920 deg,	J6 =   91.991 deg,
	E1 =   399.792 mm,	E2 =   559.890 mm,	E3 =   361.611 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    666.838 mm,	Y =   1036.761 mm,	Z =   1631.669 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    399.792 mm,	E2=    559.890 mm,	E3=    361.611 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    605.956 mm,	Y =   1098.319 mm,	Z =   1881.710 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    461.350 mm,	E2=    499.009 mm,	E3=    611.652 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    605.433 mm,	Y =   1097.823 mm,	Z =   1841.717 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    460.853 mm,	E2=    498.485 mm,	E3=    571.658 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    605.171 mm,	Y =   1097.574 mm,	Z =   1821.720 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    460.605 mm,	E2=    498.223 mm,	E3=    551.662 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    604.647 mm,	Y =   1097.077 mm,	Z =   1781.726 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    460.108 mm,	E2=    497.700 mm,	E3=    511.668 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    665.529 mm,	Y =   1035.519 mm,	Z =   1531.686 mm,
	W =  -120.032 deg,	P =    -1.033 deg,	R =  -134.719 deg,
	E1=    398.550 mm,	E2=    558.581 mm,	E3=    261.628 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   20.762 deg,	J2 =  -42.917 deg,	J3 =   -6.782 deg,
	J4 =   12.837 deg,	J5 =   66.460 deg,	J6 =   45.995 deg,
	E1 =   398.550 mm,	E2 =   558.581 mm,	E3 =   261.628 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 =   398.550 mm,	E2 =   558.581 mm,	E3 =   261.628 mm
};
/END

