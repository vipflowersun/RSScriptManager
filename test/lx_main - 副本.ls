/PROG  LX_MAIN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1295;
CREATE		= DATE 26-10-17  TIME 22:16:46;
MODIFIED	= DATE 26-10-25  TIME 07:26:28;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 53;
MEMORY_SIZE	= 1803;
PROTECT		= READ_WRITE;
STORAGE		= SHADOW;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
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
   1:  ! F[10] ON  循环运行 ;
   2:  ! F[10] OFF 循环结束 ;
   3:  F[10:ON ]=(ON) ;
   4:  ! 复位运行状态 ;
   5:  F[11:ON ]=(OFF) ;
   6:  F[12:OFF]=(OFF) ;
   7:  ! 复位任务号 ;
   8:  R[10]=0    ;
   9:  LBL[10] ;
  10:  ! 等待新任务 ;
  11:  WAIT (R[10]>0 OR !F[10:ON ])    ;
  12:  ! 收到结束任务时任务结束 ;
  13:  IF (!F[10:ON ]),JMP LBL[999] ;
  14:  ! 复位完成信号 ;
  15:  ! 准备运行任务 ;
  16:  R[11]=R[10]    ;
  17:  F[11:ON ]=(OFF) ;
  18:  F[12:OFF]=(ON) ;
  19:  R[10]=0    ;
  20:  ! 一工位粗定位 ;
  21:  SELECT R[11]=1,CALL TEMP_TASK ;
  22:  ! 二工位粗定位 ;
  23:         =2,CALL LX_CAM_GW02 ;
  24:  ! 三工位粗定位 ;
  25:         =3,CALL LX_CAM_GW03 ;
  26:  ! 四工位粗定位 ;
  27:         =4,CALL LX_CAM_GW04 ;
  28:  ! 一工位焊接 ;
  29:         =11,CALL LX_WELDMAIN1 ;
  30:  ! 二工位焊接 ;
  31:         =12,CALL LX_WELDMAIN2 ;
  32:  ! 三工位焊接 ;
  33:         =13,CALL LX_WELDMAIN3 ;
  34:  ! 四工位焊接 ;
  35:         =14,CALL LX_WELDMAIN4 ;
  36:  ! 主机清枪 ;
  37:         =101,CALL MYG1CLEARGUN ;
  38:  ! 从机清枪 ;
  39:         =102,CALL MYG2CLEARGUN ;
  40:  ! 双机清枪 ;
  41:         =103,CALL MYG3CLEARGUN ;
  42:         ELSE,JMP LBL[110] ;
  43:   ;
  44:  ! 任务执行结束 ;
  45:  ! 置未完成信号 ;
  46:  F[11:ON ]=(ON) ;
  47:  F[12:OFF]=(OFF) ;
  48:  JMP LBL[10] ;
  49:  LBL[999] ;
  50:  END ;
  51:  ! 任务号错误 ;
  52:  LBL[110] ;
  53:  PAUSE ;
/POS
/END
