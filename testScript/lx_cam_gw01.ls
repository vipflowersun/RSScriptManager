/PROG  LX_CAM_GW01
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1062;
CREATE		= DATE 25-12-15  TIME 13:02:26;
MODIFIED	= DATE 26-10-18  TIME 06:43:38;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 14;
MEMORY_SIZE	= 1418;
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
  ARC : TRUE ; 
  ARC Welding Equipment : 1,*,*,*,*;

MPAS ;
MPAS_NUM_PASSES        : 0;
MPAS_LAST_PASS         : 0;
MPAS_CURRENT_PASS      : 0;
MPAS_STATUS_PASS       : 0;
/MN
 /MN
    1:  ! -----------------------------
    2:  ! 粗定位程序 LX_CAM_GW01
    3:  ! 说明: 由离线主程序或操作员调用，用于把机器人移动到相机/工位的粗定位位
    4:  ! 入口: 直接 CALL 本程序。此程序不改变焊接流程，仅更新位置信息并调用视觉计算例程
    5:  ! 关键调用:
    6:  !   CALL MYG1CONNSNR(0)     -- 初始化或连接传感器/视觉模块
    7:  !   CALL MYG1VSNCCALC(...)  -- 调用视觉计算/精定位函数
    8:  !   CALL MYG1DISCSNR        -- 断开或释放传感器资源
    9:  ! 注意: 所有实际运动语句被注释(//)以避免自动运行时误动作
   10:  UFRAME_NUM[GP1]=0 ;
   11:  UTOOL_NUM[GP1]=1 ;
   12:  ! J P[4] 3% FINE: 关节插补移动到 P[4]，速度 3%（非常慢，用于精细定位），FINE 表示到位后停止
   13:  //J P[4] 3% FINE    ;
   13:  //L P[1] 100mm/sec FINE    ;
   14:  CALL MYG1CONNSNR(0) ;
   15:  //CALL MYG1VSNCLEAR(1) ;
   16:  //L P[2] 1000mm/sec FINE    ;
   17:  //L P[5] 100mm/sec FINE    ;
   18:  //WAIT   1.00(sec) ;
   19:  //CALL MYG1VSNSCAN(1,2,7,0) ;
   20:  //L P[3] 150mm/sec FINE    ;
   21:  //CALL MYG1VSNSCAN(1,3,7,0) ;
   22:  CALL MYG1VSNCCALC(1,0,2,11) ;
   23:  CALL MYG1DISCSNR    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -60.998 deg,	J3=      .001 deg,
	J4=      .002 deg,	J5=   -49.998 deg,	J6=     -.002 deg,
	E1= -2712.515  mm,	E2=    37.706  mm,	E3=    23.171  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -60.998 deg,	J3=      .001 deg,
	J4=      .002 deg,	J5=   -49.998 deg,	J6=     -.002 deg,
	E1= -2712.515  mm,	E2=    37.706  mm,	E3=    23.171  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -60.000 deg,	J3=      .000 deg,
	J4=      .000 deg,	J5=   -50.000 deg,	J6=     0.000 deg,
	E1=  3600.000  mm,	E2=     0.000  mm,	E3=     0.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,	
	J1=      .000 deg,	J2=   -60.998 deg,	J3=      .001 deg,
	J4=      .002 deg,	J5=   -49.998 deg,	J6=     -.002 deg,
	E1= -2712.515  mm,	E2=    37.706  mm,	E3=    23.171  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   786.730  mm,	Y =   800.000  mm,	Z =   -25.336  mm,
	W =    75.000 deg,	P =     -.000 deg,	R =   -90.000 deg,
	E1=   800.000  mm,	E2=     0.000  mm,	E3=     0.000  mm
};
/END
