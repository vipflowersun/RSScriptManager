/PROG  LX_MAIN3
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
   1:  ! F[9] ON  循环运行 ;
   2:  ! F[9] OFF 循环结束 ;
   3:  F[9:ON ]=(ON) ;
   4:  ! 复位运行状态 ;
   5:  F[10:ON ]=(OFF) ;
   6:  F[11:OFF]=(OFF) ;
   7:  LBL[10] ;
   8:  ! 等待上位机触发信号或停止指令 ;
   9:  WAIT (F[10:ON ] OR !F[9:ON ])    ;
  10:  ! 收到停止指令，程序结束 ;
  11:  IF (!F[9:ON ]),JMP LBL[999] ;
  12:  ! 捕获触发，复位触发信号，置忙标志 ;
  13:  F[10:ON ]=(OFF) ;
  14:  F[11:OFF]=(ON) ;
  15:  ! 执行子程序 ;
  16:  CALL DELAY ;
  17:  ! 子程序执行完成，清除运行中标志 ;
  18:  F[11:OFF]=(OFF) ;
  19:  JMP LBL[10] ;
  20:  LBL[999] ;
  21:  END ;
/POS
/END
