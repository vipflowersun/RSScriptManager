/PROG  A1
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "MY单点寻位示例33";
PROG_SIZE	= 1565;
CREATE		= DATE 26-10-29  TIME 06:56:20;
MODIFIED	= DATE 26-10-29  TIME 06:56:20;
FILE_NAME	= DEMO_ONE;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 1941;
PROTECT		= READ_WRITE;
STORAGE		= CMOS;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  ARC Welding Equipment : 1,*,*,*,*;
/MN
   1:  !******************************** ;
   2:  !本示例用于演示如何进行单点寻位 ;
   3:  !存储点的位置寄存器WPR和外部轴 ;
   4:  !信息需要提前示教 ;
   5:  !******************************** ;
   6:  !用户 & 工具 ;
   7:  UFRAME_NUM=0 ;
   8:  UTOOL_NUM=1 ;
   9:   ;
  10:  !安全 ;
  11:J P[4] 20% FINE    ;
  12:   ;
  13:  !链接通讯 ;
  14:  CALL MYG1CONNSNR("ON"=1) ;
  15:   ;
  16:  !移动到扫描   1 ;
  17:L P[1] 100mm/sec FINE    ;
  18:   ;
  19:  !激光工艺号3，扫描编号1-1 ;
  20:  !寻位点赋值给 P[] ;
  21:  !P[] 需要提前示教角度 ;
  22:  CALL MYG1SCANPNT("Laser Idx"=3," Wp Idx"=1," Scan Idx"=1," CorrX"=0," CorrY"=0," CorrZ"=0," Out.PR[]"=10) ;
  23:L P[6] 100mm/sec FINE    ;
  24:  CALL MYG1SCANPNT("Laser Idx"=3," Wp Idx"=1," Scan Idx"=1," CorrX"=0," CorrY"=0," CorrZ"=0," Out.PR[]"=11) ;
  25:   ;
  26:  !断开通讯 ;
  27:  CALL MYG1DISCSNR    ;
  28:   ;
  29:  !安全 ;
  30:J P[2] 20% CNT20    ;
  31:   ;
  32:J P[5] 20% CNT20    ;
  33:   ;
  34:L PR[10] 100mm/sec FINE    ;
  35:L PR[11] 100mm/sec FINE    ;
  36:  !安全 ;
  37:  //J P[3] 20% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   748.123  mm,	Y =   779.598  mm,	Z =  1533.654  mm,
	W =   175.815 deg,	P =     7.122 deg,	R =   -60.322 deg,
	E1=   733.609  mm,	E2=   160.845  mm,	E3=    33.182  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   748.123  mm,	Y =   779.598  mm,	Z =  1533.654  mm,
	W =   175.815 deg,	P =     7.122 deg,	R =   -60.322 deg,
	E1=   733.609  mm,	E2=   160.845  mm,	E3=    33.182  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, -1',
	X =   326.136  mm,	Y =  2070.141  mm,	Z =  1293.082  mm,
	W =   162.964 deg,	P =     2.774 deg,	R =   -36.036 deg,
	E1=  1149.038  mm,	E2=    37.845  mm,	E3=    54.542  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   748.123  mm,	Y =   779.598  mm,	Z =  1533.654  mm,
	W =   175.815 deg,	P =     7.122 deg,	R =   -60.322 deg,
	E1=   733.609  mm,	E2=   160.845  mm,	E3=    33.182  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   640.216  mm,	Y =   623.590  mm,	Z =  1489.781  mm,
	W =   144.218 deg,	P =     8.984 deg,	R =    -1.079 deg,
	E1=   739.094  mm,	E2=   162.354  mm,	E3=   -28.651  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'F U T, 0, 0, 0',
	X =   526.441  mm,	Y =   623.611  mm,	Z =  1489.793  mm,
	W =   144.216 deg,	P =     8.983 deg,	R =    -1.078 deg,
	E1=   739.094  mm,	E2=   162.354  mm,	E3=   -28.650  mm
};
/END
