/PROG LX_W6P1S1SG_G1
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
  22:  CALL MYG1VSNPCALC(1,6,87657,1,13,1,0,109,116) ;
  23:  CALL MYG1VSNPCALC_PATH(109,116,1,1,1,1,1,1,0,2,1) ;
  24://L P[8] 0mm/sec FINE ;
  25://L P[15] 0mm/sec FINE ;
  26:L P[16] 100mm/sec FINE ;
  27:J P[23] 20% FINE ;
  28:J P[22] 20% FINE ;
/POS
P[17]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1099.780 mm,	E2 =  -199.000 mm,	E3 =   383.828 mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.457 deg,	J2 =  -50.957 deg,	J3 =    9.017 deg,
	J4 =    5.474 deg,	J5 =   49.896 deg,	J6 =  -12.238 deg,
	E1 = -1099.780 mm,	E2 =  -199.000 mm,	E3 =   383.828 mm
};
P[1]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    370.388 mm,	Y =  -1135.565 mm,	Z =   1797.489 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1099.780 mm,	E2=   -199.000 mm,	E3=    383.828 mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    370.388 mm,	Y =  -1135.565 mm,	Z =   1797.489 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1099.780 mm,	E2=   -199.000 mm,	E3=    383.828 mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    370.388 mm,	Y =  -1135.565 mm,	Z =   1797.489 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1099.780 mm,	E2=   -199.000 mm,	E3=    383.828 mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    367.319 mm,	Y =  -1429.548 mm,	Z =   1797.875 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1393.764 mm,	E2=   -199.000 mm,	E3=    384.214 mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    367.319 mm,	Y =  -1429.548 mm,	Z =   1797.875 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1393.764 mm,	E2=   -199.000 mm,	E3=    384.214 mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    367.319 mm,	Y =  -1429.548 mm,	Z =   1797.875 mm,
	W =  -176.454 deg,	P =     0.960 deg,	R =   -87.853 deg,
	E1=  -1393.764 mm,	E2=   -199.000 mm,	E3=    384.214 mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.380 deg,	J2 =  -49.516 deg,	J3 =   10.680 deg,
	J4 =    4.489 deg,	J5 =   52.772 deg,	J6 =   49.298 deg,
	E1 = -1386.078 mm,	E2 =  -134.658 mm,	E3 =   317.966 mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.207 deg,	J2 =  -47.799 deg,	J3 =   12.135 deg,
	J4 =    3.422 deg,	J5 =   55.846 deg,	J6 =  110.984 deg,
	E1 = -1378.391 mm,	E2 =   -70.315 mm,	E3 =   251.717 mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -7.034 deg,	J2 =  -46.082 deg,	J3 =   13.589 deg,
	J4 =    2.354 deg,	J5 =   58.920 deg,	J6 =  172.670 deg,
	E1 = -1370.704 mm,	E2 =    -5.973 mm,	E3 =   185.469 mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    558.400 mm,	Y =  -1398.123 mm,	Z =   1698.496 mm,
	W =  -127.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1370.704 mm,	E2=     -5.973 mm,	E3=    185.469 mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    717.327 mm,	Y =  -1399.622 mm,	Z =   1919.905 mm,
	W =  -127.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1372.204 mm,	E2=    152.953 mm,	E3=    406.878 mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    714.327 mm,	Y =  -1399.591 mm,	Z =   1919.938 mm,
	W =  -127.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1372.173 mm,	E2=    149.954 mm,	E3=    406.911 mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    712.327 mm,	Y =  -1399.570 mm,	Z =   1919.960 mm,
	W =  -127.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1372.152 mm,	E2=    147.954 mm,	E3=    406.932 mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    712.348 mm,	Y =  -1397.570 mm,	Z =   1919.957 mm,
	W =  -127.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1370.152 mm,	E2=    147.975 mm,	E3=    406.930 mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    712.536 mm,	Y =  -1379.571 mm,	Z =   1919.933 mm,
	W =  -134.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1353.035 mm,	E2=    228.794 mm,	E3=    375.763 mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    713.763 mm,	Y =  -1261.977 mm,	Z =   1919.779 mm,
	W =  -134.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1235.442 mm,	E2=    230.021 mm,	E3=    375.609 mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    714.168 mm,	Y =  -1223.180 mm,	Z =   1919.728 mm,
	W =  -134.376 deg,	P =     0.075 deg,	R =    89.402 deg,
	E1=  -1196.644 mm,	E2=    230.426 mm,	E3=    375.558 mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    715.396 mm,	Y =  -1105.586 mm,	Z =   1919.574 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1224.444 mm,	E2=    294.558 mm,	E3=    374.892 mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,           CONFIG : 'F U T, 0, 0, 0',
	X =    612.822 mm,	Y =  -1204.705 mm,	Z =   1679.381 mm,
	W =  -134.506 deg,	P =    -0.388 deg,	R =   134.400 deg,
	E1=  -1323.563 mm,	E2=    191.983 mm,	E3=    134.699 mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,
	J1 =   -4.361 deg,	J2 =  -52.527 deg,	J3 =    6.324 deg,
	J4 =    4.312 deg,	J5 =   50.452 deg,	J6 =   62.238 deg,
	E1 = -1323.563 mm,	E2 =   191.983 mm,	E3 =   134.699 mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,
	J1 =    0.000 deg,	J2 =  -60.000 deg,	J3 =    0.000 deg,
	J4 =    0.000 deg,	J5 =   30.000 deg,	J6 =    0.000 deg,
	E1 = -1323.563 mm,	E2 =   191.983 mm,	E3 =   134.699 mm
};
/END

