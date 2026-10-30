/PROG LX_W6P4S1SG_G1
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
  19:J P[21] 20% FINE ;
  20:L P[7] 100mm/sec FINE ;
  21:  CALL MYG1PROCSET(1,0) ;
  22:  CALL MYG1VSNPCALC(1,6,87657,4,33,1,0,109,116) ;
  23:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  24://L P[8] 0mm/sec FINE ;
  25://L P[15] 0mm/sec FINE ;
  26:L P[16] 100mm/sec FINE ;
  27:J P[24] 20% FINE ;
  28:J P[23] 20% FINE ;
  29:J P[22] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -2006.085 mm,	E2 =   261.409 mm,	E3 =   477.425 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   26.210 deg,	J2 =  -25.776 deg,	J3 =  -13.299 deg,
	J4 =   27.309 deg,	J5 =   88.402 deg,	J6 =  -63.537 deg,
	E1 = -2006.085 mm,	E2 =   261.409 mm,	E3 =   477.425 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    743.854 mm,	Y =  -1449.393 mm,	Z =   1793.794 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2006.085 mm,	E2=    261.409 mm,	E3=    477.425 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    743.854 mm,	Y =  -1449.393 mm,	Z =   1793.794 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2006.085 mm,	E2=    261.409 mm,	E3=    477.425 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    743.854 mm,	Y =  -1449.393 mm,	Z =   1793.794 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2006.085 mm,	E2=    261.409 mm,	E3=    477.425 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    447.388 mm,	Y =  -1446.294 mm,	Z =   1797.022 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2002.986 mm,	E2=    -35.057 mm,	E3=    480.653 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    447.388 mm,	Y =  -1446.294 mm,	Z =   1797.022 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2002.986 mm,	E2=    -35.057 mm,	E3=    480.653 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    447.388 mm,	Y =  -1446.294 mm,	Z =   1797.022 mm,
	W =  -175.872 deg,	P =     1.632 deg,	R =     2.157 deg,
	E1=  -2002.986 mm,	E2=    -35.057 mm,	E3=    480.653 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   26.754 deg,	J2 =  -25.557 deg,	J3 =  -13.575 deg,
	J4 =   23.115 deg,	J5 =   90.633 deg,	J6 =   -2.082 deg,
	E1 = -1939.772 mm,	E2 =   -42.731 mm,	E3 =   448.445 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   27.298 deg,	J2 =  -25.339 deg,	J3 =  -13.851 deg,
	J4 =   18.922 deg,	J5 =   92.864 deg,	J6 =   59.373 deg,
	E1 = -1876.557 mm,	E2 =   -50.404 mm,	E3 =   416.236 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =   27.842 deg,	J2 =  -25.121 deg,	J3 =  -14.126 deg,
	J4 =   14.728 deg,	J5 =   95.095 deg,	J6 =  120.827 deg,
	E1 = -1813.343 mm,	E2 =   -58.078 mm,	E3 =   384.028 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    415.994 mm,	Y =  -1255.228 mm,	Z =   1699.878 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1813.343 mm,	E2=    -58.078 mm,	E3=    384.028 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    418.982 mm,	Y =  -1097.487 mm,	Z =   1922.795 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1655.602 mm,	E2=    -55.090 mm,	E3=    606.946 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    418.951 mm,	Y =  -1100.487 mm,	Z =   1922.799 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1658.602 mm,	E2=    -55.121 mm,	E3=    606.950 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    418.930 mm,	Y =  -1102.487 mm,	Z =   1922.802 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1660.602 mm,	E2=    -55.142 mm,	E3=    606.952 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    420.930 mm,	Y =  -1102.508 mm,	Z =   1922.780 mm,
	W =  -127.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1660.623 mm,	E2=    -53.143 mm,	E3=    606.931 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    438.928 mm,	Y =  -1102.696 mm,	Z =   1922.584 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1579.882 mm,	E2=    -34.629 mm,	E3=    576.367 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    557.514 mm,	Y =  -1103.936 mm,	Z =   1921.293 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1581.121 mm,	E2=     83.957 mm,	E3=    575.076 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    596.810 mm,	Y =  -1104.346 mm,	Z =   1920.865 mm,
	W =  -134.925 deg,	P =    -0.624 deg,	R =   179.401 deg,
	E1=  -1581.532 mm,	E2=    123.253 mm,	E3=    574.648 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    715.396 mm,	Y =  -1105.586 mm,	Z =   1919.574 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1524.444 mm,	E2=     94.558 mm,	E3=    574.892 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    612.822 mm,	Y =  -1204.705 mm,	Z =   1679.381 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1623.563 mm,	E2=     -8.017 mm,	E3=    334.699 mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,
	J1 =   14.767 deg,	J2 =  -25.305 deg,	J3 =  -14.219 deg,
	J4 =    1.158 deg,	J5 =   61.984 deg,	J6 =   82.733 deg,
	E1 = -1623.563 mm,	E2 =    -8.017 mm,	E3 =   334.699 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -25.305 deg,	J3 =  -14.219 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1623.563 mm,	E2 =    -8.017 mm,	E3 =   334.699 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1623.563 mm,	E2 =    -8.017 mm,	E3 =   334.699 mm
};
/END

