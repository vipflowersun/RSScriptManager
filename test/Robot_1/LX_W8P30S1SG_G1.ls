/PROG LX_W8P30S1SG_G1
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
  19:L P[7] 100mm/sec FINE ;
  20:  CALL MYG1PROCSET(2,0) ;
  21:  CALL MYG1VSNPCALC(1,8,87659,30,255,1,0,109,112) ;
  22://L P[8] 0mm/sec FINE ;
  23:L PR[109] 100mm/sec FINE ;
  24:  Weld Start[1,1] ;
  25:  Track TAST[1] ;
  26:  Weave Sine[1] ;
  27:  CALL MYG1TRAJE01 ;
  28://L P[11] 0mm/sec FINE ;
  29:L PR[112] WELD_SPEED FINE ;
  30:  Weld End[1,1] ;
  31:  Track End ;
  32:  Weave End ;
  33:L P[12] 100mm/sec FINE ;
  34:J P[18] 20% FINE ;
  35:J P[17] 20% FINE ;
/POS
P[13]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2380.073 mm,	E2 =    71.502 mm,	E3 =   315.517 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -18.006 deg,	J2 =  -40.930 deg,	J3 =    2.666 deg,
	J4 =  -10.062 deg,	J5 =   49.731 deg,	J6 =   14.613 deg,
	E1 = -2380.073 mm,	E2 =    71.502 mm,	E3 =   315.517 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    758.206 mm,	Y =  -2705.252 mm,	Z =   1687.184 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.073 mm,	E2=     71.502 mm,	E3=    315.517 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    758.206 mm,	Y =  -2705.252 mm,	Z =   1687.184 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.073 mm,	E2=     71.502 mm,	E3=    315.517 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    758.206 mm,	Y =  -2705.252 mm,	Z =   1687.184 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.073 mm,	E2=     71.502 mm,	E3=    315.517 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    760.039 mm,	Y =  -2705.504 mm,	Z =   1802.170 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.324 mm,	E2=     73.334 mm,	E3=    430.502 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    760.039 mm,	Y =  -2705.504 mm,	Z =   1802.170 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.324 mm,	E2=     73.334 mm,	E3=    430.502 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    760.039 mm,	Y =  -2705.504 mm,	Z =   1802.170 mm,
	W =   176.321 deg,	P =     1.000 deg,	R =  -119.071 deg,
	E1=  -2380.324 mm,	E2=     73.334 mm,	E3=    430.502 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,
	J1 =  -10.639 deg,	J2 =  -45.878 deg,	J3 =    5.640 deg,
	J4 =  -11.859 deg,	J5 =   54.311 deg,	J6 =  -66.079 deg,
	E1 = -2487.361 mm,	E2 =   239.884 mm,	E3 =   348.682 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -3.272 deg,	J2 =  -50.826 deg,	J3 =    8.614 deg,
	J4 =  -13.656 deg,	J5 =   58.890 deg,	J6 = -146.771 deg,
	E1 = -2594.398 mm,	E2 =   406.434 mm,	E3 =   266.861 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1007.454 mm,	Y =  -2818.617 mm,	Z =   1631.079 mm,
	W =  -119.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2594.398 mm,	E2=    406.434 mm,	E3=    266.861 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1081.948 mm,	Y =  -2864.191 mm,	Z =   1879.799 mm,
	W =  -119.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2599.000 mm,	E2=    480.928 mm,	E3=    515.581 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1081.215 mm,	Y =  -2864.090 mm,	Z =   1833.805 mm,
	W =  -119.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2599.000 mm,	E2=    480.195 mm,	E3=    469.587 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1080.849 mm,	Y =  -2864.040 mm,	Z =   1810.808 mm,
	W =  -119.157 deg,	P =     0.373 deg,	R =    58.335 deg,
	E1=  -2599.000 mm,	E2=    479.829 mm,	E3=    446.590 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =   1080.116 mm,	Y =  -2863.939 mm,	Z =   1764.814 mm,
	W =  -116.141 deg,	P =    -1.089 deg,	R =    55.715 deg,
	E1=  -2595.224 mm,	E2=    471.193 mm,	E3=    421.574 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    979.255 mm,	Y =  -2686.505 mm,	Z =   1576.824 mm,
	W =  -116.141 deg,	P =    -1.089 deg,	R =    55.715 deg,
	E1=  -2417.790 mm,	E2=    370.332 mm,	E3=    233.584 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -1.092 deg,	J2 =  -55.438 deg,	J3 =    4.404 deg,
	J4 =   -9.300 deg,	J5 =   44.018 deg,	J6 =  -70.757 deg,
	E1 = -2417.790 mm,	E2 =   370.332 mm,	E3 =   233.584 mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2417.790 mm,	E2 =   370.332 mm,	E3 =   233.584 mm
};
/END

