CoDeSys+^   ?                   @        @   2.3.5.6|   @   ConfigExtensiond         CommConfigEx7             CommConfigExEnd   ME_                ME_End   CMs      CM_End   CT?   ????????   CT_End   P?          P_End   CT?   ????????   CT_End   P?          P_End   CT?   ????????   CT_End   P
         P_End   CT%  ????????   CT_End   P<         P_End   CTW  ????????   CT_End   Pn         P_End   CT?  ????????   CT_End   P?         P_End   CT?  ????????   CT_End   P?         P_End   CT?  ????????   CT_End   P         P_End   CT  ????????   CT_End   P6         P_End   CTQ  ????????   CT_End   Ph         P_End   CT?  ????????   CT_End   P?         P_End   CT?  ????????   CT_End   P?         P_End   CT?  ????????   CT_End   P?         P_End   CT  ????????   CT_End   P0         P_End   CTK  ????????   CT_End   Pb         P_End   CT}  ????????   CT_End   P?         P_End   CT?  ????????   CT_End   ME?               ME_End   CM?     CM_End   CT?  ????????   CT_End   P         P_End   CT0  ????????   CT_End>     CCH     CC_End   CTd  ????????   CT_Endr     CC|     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT   ????????   CT_End     CC     CC_End   CT4  ????????   CT_EndB     CCL     CC_End   CTh  ????????   CT_Endv     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT  ????????   CT_End     CC     CC_End   CT8  ????????   CT_EndF     CCP     CC_End   CTl  ????????   CT_Endz     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT  ????????   CT_End     CC      CC_End   CT<  ????????   CT_EndJ     CCT     CC_End   CTp  ????????   CT_End~     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT  ????????   CT_End     CC$     CC_End   CT@  ????????   CT_End   ME_               ME_End   CMs     CM_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End	     CC	     CC_End   CT+	  ????????   CT_End9	     CCC	     CC_End   CT_	  ????????   CT_Endm	     CCw	     CC_End   CT?	  ????????   CT_End?	     CC?	     CC_End   CT?	  ????????   CT_End?	     CC?	     CC_End   CT?	  ????????   CT_End	
     CC
     CC_End   CT/
  ????????   CT_End   MEN
               ME_End   CMb
     CM_End   CT~
  ????????   CT_End   ME?
               ME_End   CM?
     CM_End   CT?
  ????????   CT_End?
     CC?
     CC_End   CT  ????????   CT_End     CC     CC_End   CT5  ????????   CT_EndC     CCM     CC_End   CTi  ????????   CT_Endw     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT?  ????????   CT_End?     CC?     CC_End   CT  ????????   CT_End     CC     CC_End   CT9  ????????   CT_EndG     CCQ     CC_End   CTm  ????????   CT_End   ME?               ME_End   CM?     CM_End   CT?  ????????   CT_End   ME?               ME_End   CM?     CM_End   CT  ????????   CT_End   ME*               ME_End   CM>     CM_End   CTZ  ????????   CT_End   ConfigExtensionEnd    @             ??c +    @      ????????             ?g?c        ?'   @   O   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\MOELLER\LIB_COMMON\STANDARD.LIB          CONCAT               STR1               ??              STR2               ??                 CONCAT                                         ?Q =  ?   ????           CTD           M            ??           Variable for CD Edge Detection      CD            ??           Count Down on rising edge    LOAD            ??           Load Start Value    PV           ??           Start Value       Q            ??           Counter reached 0    CV           ??           Current Counter Value             ?Q =  ?   ????           CTU           M            ??            Variable for CU Edge Detection       CU            ??       
    Count Up    RESET            ??           Reset Counter to 0    PV           ??           Counter Limit       Q            ??           Counter reached the Limit    CV           ??           Current Counter Value             ?Q =  ?   ????           CTUD           MU            ??            Variable for CU Edge Detection    MD            ??            Variable for CD Edge Detection       CU            ??	       
    Count Up    CD            ??
           Count Down    RESET            ??           Reset Counter to Null    LOAD            ??           Load Start Value    PV           ??           Start Value / Counter Limit       QU            ??           Counter reached Limit    QD            ??           Counter reached Null    CV           ??           Current Counter Value             ?Q =  ?   ????           DELETE               STR               ??              LEN           ??              POS           ??                 DELETE                                         ?Q =  ?   ????           F_TRIG           M            ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ?Q =  ?   ????           FIND               STR1               ??              STR2               ??                 FIND                                     ?Q =  ?   ????           INSERT               STR1               ??              STR2               ??              POS           ??                 INSERT                                         ?Q =  ?   ????           LEFT               STR               ??              SIZE           ??                 LEFT                                         ?Q =  ?   ????           LEN               STR               ??                 LEN                                     ?Q =  ?   ????           MID               STR               ??              LEN           ??              POS           ??                 MID                                         ?Q =  ?   ????           R_TRIG           M            ??
                 CLK            ??           Signal to detect       Q            ??           Edge detected             ?Q =  ?   ????           REPLACE               STR1               ??              STR2               ??              L           ??              P           ??                 REPLACE                                         ?Q =  ?   ????           RIGHT               STR               ??              SIZE           ??                 RIGHT                                         ?Q =  ?   ????           RS               SET            ??              RESET1            ??                 Q1            ??
                       ?Q =  ?   ????           RTC           M            ??              DiffTime           ??                 EN            ??              PDT           ??                 Q            ??              CDT           ??                       ?Q =  ?   ????           SEMA           X            ??                 CLAIM            ??	              RELEASE            ??
                 BUSY            ??                       ?Q =  ?   ????           SR               SET1            ??              RESET            ??                 Q1            ??	                       ?Q =  ?   ????           TOF           M            ??           internal variable 	   StartTime           ??           internal variable       IN            ??       ?    starts timer with falling edge, resets timer with rising edge    PT           ??           time to pass, before Q is set       Q            ??	       2    is FALSE, PT seconds after IN had a falling edge    ET           ??
           elapsed time             ?Q =  ?   ????           TON           M            ??           internal variable 	   StartTime           ??           internal variable       IN            ??       ?    starts timer with rising edge, resets timer with falling edge    PT           ??           time to pass, before Q is set       Q            ??	       0    is TRUE, PT seconds after IN had a rising edge    ET           ??
           elapsed time             ?Q =  ?   ????           TP        	   StartTime           ??           internal variable       IN            ??       !    Trigger for Start of the Signal    PT           ??       '    The length of the High-Signal in 10ms       Q            ??	           The pulse    ET           ??
       &    The current phase of the High-Signal             ?Q =  ?   ????    W   C:\PROGRAM FILES (X86)\COMMON FILES\CAA-TARGETS\MOELLER\LIB_EC4P_200\SYSLIBCALLBACK.LIB          SYSCALLBACKREGISTER            	   iPOUIndex           ??       !    POU Index of callback function.    Event            	   RTS_EVENT   ??           Event to register       SysCallbackRegister                                      0fj@  ?   ????           SYSCALLBACKUNREGISTER            	   iPOUIndex           ??       !    POU Index of callback function.    Event            	   RTS_EVENT   ??           Event to register       SysCallbackUnregister                                      0fj@  ?   ????                  PLC_PRG     O      aktualne_pietro            )               docelowe_pietro            )               p1        
                p1    )               p2        
                p2    )               p3        
                p3    ) 	              p4        
                p4    ) 
              p5        
                p5    )               masa_dop    X      )               masa_aktualna            )     IW                   %        	   ratownikk             )     IX
                  %           alarmm             )     IX                  %           awariaa             )     IX
                   %           resett             )     IX
                  %           gora             )               dol             )            
   pietro_wew   	                           )            
   pietro_zew   	                           )            
   przystanek             )            	   wybor_cel   	                          )               p_realizacja   	                          )               licznik            )                blokada             ) "              i            ) #              x            ) $              j            ) %              y            ) &              k            ) '           
   pomocnicza            ) (              TZD                    TON    ) *              TG                    TON    ) +              nastepna_stacja_G             ) ,              TD                    TON    ) -              nastepna_stacja_D             ) .              Otworz_Drzwi             ) /              drzwi_zamkniete             ) 0              TRG                 R_TRIG    ) 1              RTD                 R_TRIG    ) 2              ratunek            ) 4           
   resett_pom             ) 6              awariaa_pom             ) 7              resettTrigF                 F_TRIG    ) 8              resettTrigR                 R_TRIG    ) 9              awariaaTrigF                 F_TRIG    ) :              awariaaTrigR                 R_TRIG    ) ;              TRESET                    TON    ) <              zmienna1            ) =              zmienna2            ) >              INIT                           _INIT                           POCZEKALNIA                            _POCZEKALNIA                            PROG                            _PROG                            ALARM                            _ALARM                            MASA                            _MASA                            RATOWNIK                         	   _RATOWNIK                            RESET                            _RESET                            AWARIA                            _AWARIA                            SPR_P                            _SPR_P                         
   STEROWANIE                            _STEROWANIE                            TIMER_G                            _TIMER_G                            ZEROWANIE_G                            _ZEROWANIE_G                            TIMER_D                            _TIMER_D                            OBSLUGA_DRZWI                            _OBSLUGA_DRZWI                            STEP33                            _STEP33                            ZEROWANIE_D                            _ZEROWANIE_D                                             ܭ?c  @    ????            
 ?   )   ( ?5      K   ?5     K   
6     K   6     K   -6                 :6         +                   A???????H ZJ?            Tcp/Ip (Level 2 Route)  'localhost' via Tcp/Ip_ 3S Tcp/Ip Level 2 Router Driver    :   ?  Address IP address or hostname 
   192.168.119.66    ?  Port     ?   ?  TargetId         7   d   Motorola byteorder                No    Yes                A???????H ZJ?            Tcp/Ip (Level 2 Route)  'localhost' via Tcp/Ip_ 3S Tcp/Ip Level 2 Router Driver    :   ?  Address IP address or hostname 
   192.168.119.66    ?  Port     ?   ?  TargetId         7   d   Motorola byteorder                No    Yes   K        @   ;W?c?i      , If                      CoDeSys 1-2.2   ????  ????????                     YB         ?      
   ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          ?          ?         ?          ?          ?          ?         ?          ?          ?          ?          ?         ?      ?   ?       P  ?          ?         ?       ?  ?                    ~          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?       @  ?       @  ?       @  ?       @  ?       @  ?       @  ?         ?         ?          ?       ?  M         N          O          P          `         a          t          y          z          b         c          d         e         _          Q          \         R          K          U         X         Z         ?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?                                                                               "         !          #          $         ?          ^          f         g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          ?          l          o          p          q          r          s         u          ?          v         ?          ?      ????|         ~         ?         x          z      (   ?          ?         %         ?          ?          ?         @         ?          ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                            I         J         K          	          L         M          ????YB  ?         ?         ?          ?                    "          $                                                   '          (          ?          ?          ?          y          z          _          Q         \        1-100R          K          U        CANX         Z        16#2000-16#5fff?          ?         ?      
   ?         ?         ?         ?         ?         ?          ?          ?         ?      ?????          ?                                                                               "         !          #          $         ?          f          g          h          i          j          k         F          H         J         L          N         P         R          U         S          T          V          W          ?          o          p          q          r          s         u          ?          v         ?      ????|         ~         ?         x          z      (   ?          %         ?          ?          ?         @         ?          ?          ?          ?         &          ?          	                   ?          ?          ?         ?          ?         ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?          ?                   I         J         K          	          L         ????????????????????????????????????????????????????????????  ????????                                                   ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          5  
   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write    	   Type          ~         INT   UINT   DINT   UDINT   LINT   ULINT   SINT   USINT   BYTE   WORD   DWORD   REAL   LREAL   STRING    
   Value                Type       Default                Type       Min                Type       Max                Type          d        Member    	             ????   Index-Offset                 ??         SubIndex-Offset                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????   Member    	             ????
   Value                Member    
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Min                Member       Max                Member          ?  	   	   Name                 ????
   Index                 ??         SubIndex                 ?          Accesslevel          !         low   middle   high       Accessright          1      	   read only
   write only
   read-write       Variable    	             ????
   Value                Variable       Min                Variable       Max                Variable                         ????  ????????               ?   _Dummy@    @   @@    @   @              ?@              ?@@   @     ?v@@   ; @+   ????  ????????                                  ?v@      4@   ?             ?v@      D@   ?                       ?       @                           ?f@      4@     ?f@                ?v@     ?f@     @u@     ?f@        ???          Module.Root-1__not_found__   Parameter.EC4P_RestartPwrOn1Module.Root	WARMSTART	WARMSTART  INTParameter.EC4P_MaxCycleTime2Module.Root2020201000INTParameter.EC4P_Com1BaudRate3Module.Root3840038400  INTParameter.EC4P_CAN1BaudRate4Module.Root125KBaud125KBaud  INTParameter.EC4P_RoutingId5Module.Root1271271127INTParameter.EC4P_EasyNetId6Module.Root11  DWORDParameter.EC4P_EasyNetCfg7Module.Root00  DWORDParameter.EC4P_EasyNetCycleTime8Module.Root505010100INTParameter.EC4P_RoutingChannel9Module.RootCAN1CAN1  INTParameter.EC4P_IPFlags10Module.Root00  WORDParameter.EC4P_IPAddress11Module.Root00  DWORDParameter.EC4P_SubNetMask12Module.Root00  DWORDParameter.EC4P_DefaultGateway13Module.Root00  DWORD Parameter.EC4P_SummerWinterFlags14Module.Root00  WORD Parameter.EC4P_SummerWinterRule115Module.Root00  DWORD Parameter.EC4P_SummerWinterRule216Module.Root00  DWORDConfiguration EC4P-200???? IB          % QB          % MB          %   o    Module.EC4P_LocalIO0Module.Root   Parameter.EC4P_LocalInt1Module.EC4P_LocalIO00  INT	Local I/O     IB          % QB          % MB          %   M    I1Input I1Channel.LocalBitInput1Module.EC4P_LocalIO         IX          %    M    I2Input I2Channel.LocalBitInput2Module.EC4P_LocalIO         IX         %    M    I3Input I3Channel.LocalBitInput3Module.EC4P_LocalIO         IX         %    M    I4Input I4Channel.LocalBitInput4Module.EC4P_LocalIO         IX         %    M    I5Input I5Channel.LocalBitInput5Module.EC4P_LocalIO         IX         %    M    I6Input I6Channel.LocalBitInput6Module.EC4P_LocalIO         IX         %    M    I7Input I7Channel.LocalBitInput7Module.EC4P_LocalIO         IX         %    M    I8Input I8Channel.LocalBitInput8Module.EC4P_LocalIO         IX         %    M    I9Input I9Channel.LocalBitInput9Module.EC4P_LocalIO         IX         %    M    I10	Input I10Channel.LocalBitInput10Module.EC4P_LocalIO         IX        %    M    I11	Input I11Channel.LocalBitInput11Module.EC4P_LocalIO         IX        %    M    I12	Input I12Channel.LocalBitInput12Module.EC4P_LocalIO         IX        %    M    I13Diagnostic Input I13Channel.LocalDiagInput13Module.EC4P_LocalIO         IX        %    M    I14Diagnostic Input I14Channel.LocalDiagInput14Module.EC4P_LocalIO         IX        %    M    I15Diagnostic Input I15Channel.LocalDiagInput15Module.EC4P_LocalIO         IX        %    M    I16Diagnostic Input I16Channel.LocalDiagInput16Module.EC4P_LocalIO         IX        %    M    	I7_AnalogInput I7, 10Bit, 0-10VDCChannel.LocalAnalogIn17Module.EC4P_LocalIO         IW         %    M    	I8_AnalogInput I8, 10Bit, 0-10VDCChannel.LocalAnalogIn18Module.EC4P_LocalIO         IW         %    M    
I11_AnalogInput I11, 10Bit, 0-10VDCChannel.LocalAnalogIn19Module.EC4P_LocalIO         IW         %    M    
I12_AnalogInput I12, 10Bit, 0-10VDCChannel.LocalAnalogIn20Module.EC4P_LocalIO         IW         %    o    Module.EC4P_TOutputs0Module.EC4P_LocalIO    Transistor Outputs     IB
         % QB          % MB          %   M    Q1Transistor-Output Q1Channel.LocalBitOutput1Module.EC4P_TOutputs        QX          %    M    Q2Transistor-Output Q2Channel.LocalBitOutput2Module.EC4P_TOutputs        QX         %    M    Q3Transistor-Output Q3Channel.LocalBitOutput3Module.EC4P_TOutputs        QX         %    M    Q4Transistor-Output Q4Channel.LocalBitOutput4Module.EC4P_TOutputs        QX         %    M    Q5Transistor-Output Q5Channel.LocalBitOutput5Module.EC4P_TOutputs        QX         %    M    Q6Transistor-Output Q6Channel.LocalBitOutput6Module.EC4P_TOutputs        QX         %    M    Q7Transistor-Output Q7Channel.LocalBitOutput7Module.EC4P_TOutputs        QX         %    M    Q8Transistor-Output Q8Channel.LocalBitOutput8Module.EC4P_TOutputs        QX         %    o     Module.EC4P_NoAnalogOutput1Module.EC4P_LocalIO    No Analog Output    IB
         % QB         % MB          %    o    Module.EC4P_Keys2Module.EC4P_LocalIO    Keys    IB
         % QB         % MB          %   M    P1Key P1Channel.LocalP1Input1Module.EC4P_Keys         IX
         %    M    P2Key P2Channel.LocalP2Input2Module.EC4P_Keys         IX
        %    M    P3Key P3Channel.LocalP3Input3Module.EC4P_Keys         IX
        %    M    P4Key P4Channel.LocalP4Input4Module.EC4P_Keys         IX
        %    M    DELKey DELChannel.LocalDELInput5Module.EC4P_Keys         IX
        %    M    ALTKey ALTChannel.LocalALTInput6Module.EC4P_Keys         IX
        %    M    ESCKey ESCChannel.LocalESCInput7Module.EC4P_Keys         IX
        %    M    OKKey OKChannel.LocalOKInput8Module.EC4P_Keys         IX
        %    o     Module.EC4P_NoCounter3Module.EC4P_LocalIO    
No Counter    IB         % QB         % MB          %    o    Module.EC4P_Extension1Module.Root    	Extension    IB         % QB         % MB          %   o     Module.EC4P_NoExtension0Module.EC4P_Extension    No Extension     IB         % QB         % MB          %    ;W?c	???c     ????????           VAR_GLOBAL
END_VAR
                                                                                  "   , 
?              ;W?c                   Start   Called when program starts       PROGRAM systemevent    YB  	   Coldstart)   Called when program starts with coldstart       PROGRAM systemevent ?  YB  	   Warmstart)   Called when program starts with warmstart       PROGRAM systemevent ?  YB     Stop   Called when program stops       PROGRAM systemevent    YB     IO-Interrupt 1   Interrupt-Channel 1       PROGRAM systemevent ?  YB     IO-Interrupt 2   Interrupt-Channel 2       PROGRAM systemevent ?  YB     IO-Interrupt 3   Interrupt-Channel 3       PROGRAM systemevent ?  YB     IO-Interrupt 4   Interrupt-Channel 4       PROGRAM systemevent ?  YB     Counter-Interrupt 1    16Bit-Counter0 Interrupt-Channel       PROGRAM systemevent ?  YB     Counter-Interrupt 21   16Bit-Counter1 or 32Bit-Counter Interrupt-Channel       PROGRAM systemevent ?  YB     Timer Interrupt   Timer Interrupt-Channel 1       PROGRAM systemevent ?  YB  $????  ????????               ????????           Standard ?g?c	?g?c      ????????                         	;W?c     ????????           VAR_CONFIG
END_VAR
                                                                                   '           	     ????????           Konfiguracja_zmiennych ;W?c	;W?c	     ????????           VAR_CONFIG
END_VAR
                                                                                               '                ????????           Zmienne_globalne ;W?c	;W?c     ????????           VAR_GLOBAL
END_VAR
                                                                                                    |0|0         ~      ?   ???  ?3 ???   ? ???                  DEFAULT             System         |0|0   hh':'mm':'ss   dd'-'MM'-'yyyy'   *   , ?  ?           p1 ×?c	×?c      ????????          TYPE p1 :
STRUCT

	sygnalizacja: BOOL;
	pietro AT %QX0.0: BOOL;
	przycisk_wew AT %IX0.0: BOOL;
	przycisk_zew  AT %IX0.1: BOOL;

	wewTrigR: R_TRIG;
	wewTrigF: F_TRIG;
	zewTrigR: R_TRIG;
	zewTrigF: F_TRIG;

	przywolanie_wew: BOOL;
	przywolanie_zew:BOOL;
END_STRUCT
END_TYPE             +   , l  ??           p2 ˗?c	˗?c      ????????        +  TYPE p2 :
STRUCT
	sygnalizacja: BOOL;
	pietro AT %QX0.1: BOOL;
	przycisk_wew AT %IX0.2: BOOL;
	przycisk_zew  AT %IX0.3: BOOL;

	wewTrigR: R_TRIG;
	wewTrigF: F_TRIG;
	zewTrigR: R_TRIG;
	zewTrigF: F_TRIG;

	przywolanie_wew: BOOL:=FALSE;
	przywolanie_zew:BOOL:=FALSE;
END_STRUCT
END_TYPE             ,   , ? o T[           p3 З?c	З?c      ????????        *  TYPE p3 :
STRUCT

	sygnalizacja: BOOL;
	pietro AT %QX0.2: BOOL;
	przycisk_wew AT %IX0.4:BOOL;
	przycisk_zew AT %IX0.5:BOOL;

	wewTrigR: R_TRIG;
	wewTrigF: F_TRIG;
	zewTrigR: R_TRIG;
	zewTrigF: F_TRIG;

	przywolanie_wew: BOOL:=FALSE;
	przywolanie_zew:BOOL:=FALSE;
END_STRUCT
END_TYPE             -   , ?   ?\           p4 ԗ?c	ԗ?c      ????????        *  TYPE p4 :
STRUCT

	sygnalizacja: BOOL;
	pietro AT %QX0.3: BOOL;
	przycisk_wew AT %IX0.6:BOOL;
	przycisk_zew AT %IX0.7:BOOL;

	wewTrigR: R_TRIG;
	wewTrigF: F_TRIG;
	zewTrigR: R_TRIG;
	zewTrigF: F_TRIG;

	przywolanie_wew: BOOL:=FALSE;
	przywolanie_zew:BOOL:=FALSE;
END_STRUCT
END_TYPE             .   , ??8 ?s           p5 ܗ?c	ܗ?c      ????????        *  TYPE p5 :
STRUCT

	sygnalizacja: BOOL;
	pietro AT %QX0.4: BOOL;
	przycisk_wew AT %IX0.8:BOOL;
	przycisk_zew AT %IX0.9:BOOL;

	wewTrigR: R_TRIG;
	wewTrigF: F_TRIG;
	zewTrigR: R_TRIG;
	zewTrigF: F_TRIG;

	przywolanie_wew: BOOL:=FALSE;
	przywolanie_zew:BOOL:=FALSE;
END_STRUCT
END_TYPE              )   ,  ! ?D           PLC_PRG ???c	ܭ?c      ????????        ?  PROGRAM PLC_PRG
VAR


	aktualne_pietro: INT;
	docelowe_pietro: INT;
	p1: p1;
	p2: p2;
	p3: p3;
	p4: p4;
	p5: p5;

	masa_dop: WORD :=600 ;
	masa_aktualna AT %IW6: WORD;

	ratownikk AT %IX10.2: BOOL;
	alarmm AT %IX1.3: BOOL;
	awariaa AT %IX10.0 :BOOL;
	resett AT %IX10.1: BOOL;

	gora: BOOL;
	dol: BOOL;

	pietro_wew: ARRAY[0..4] OF BOOL;
	pietro_zew: ARRAY[0..4] OF BOOL;
	przystanek: REAL;


	wybor_cel: ARRAY[0..4] OF INT;

	p_realizacja: ARRAY[0..4] OF INT;
	licznik: INT;

	blokada: BOOL;
	i: INT;
	x: INT;
	j: INT;
	y: INT;
	k: INT;
	pomocnicza:INT;

	TZD: TON;
	TG: TON;
	nastepna_stacja_G: BOOL;
	TD: TON;
	nastepna_stacja_D: BOOL;
	Otworz_Drzwi: BOOL;
	drzwi_zamkniete: BOOL;
	TRG: R_TRIG;
	RTD: R_TRIG;

	ratunek: INT;

	resett_pom:BOOL;
	awariaa_pom:BOOL;
	resettTrigF: F_TRIG;
	resettTrigR: R_TRIG;
	awariaaTrigF: F_TRIG;
	awariaaTrigR: R_TRIG;
	TRESET: TON;
	zmienna1: INT;
	zmienna2: INT;
END_VAR	       Init 9     ????????           Czynno?? Init ???c5  blokada:=FALSE;
dol:=FALSE;
gora:=TRUE;
awaria:=FALSE;
Otworz_Drzwi:=FALSE;
drzwi_zamkniete:=TRUE;
aktualne_pietro:=1;
docelowe_pietro:=1;
licznik:=0;
ratunek:=0;
i:=0;
j:=0;
y:=0;
x:=0;
p_realizacja[0]:= 0;
p_realizacja[1]:= 0;
p_realizacja[2]:= 0;
p_realizacja[3]:= 0;
p_realizacja[4]:= 0;       Trans15 L     ????????           Transition Trans15 	???c      ?   d          Poczekalnia         Trans0 3     ????????           Transition Trans0 	???c      ?   d            Prog 0     ????????           Czynno?? Prog ???c      ?   d               Alarm G     ????????           Czynno?? Alarm ???c?  IF alarmm=TRUE AND NOT (aktualne_pietro=1) THEN
p1.przywolanie_wew:=FALSE;
p2.przywolanie_wew:=FALSE;
p3.przywolanie_wew:=FALSE;
p4.przywolanie_wew:=FALSE;
p5.przywolanie_wew:=FALSE;

p1.przywolanie_zew:=TRUE;
p2.przywolanie_zew:=FALSE;
p3.przywolanie_zew:=FALSE;
p4.przywolanie_zew:=FALSE;
p5.przywolanie_zew:=FALSE;

pietro_wew [0]  := p1.przywolanie_wew;
pietro_wew [1]  := p2.przywolanie_wew;
pietro_wew [2]  := p3.przywolanie_wew;
pietro_wew [3]  := p4.przywolanie_wew;
pietro_wew [4]  := p5.przywolanie_wew;

pietro_zew [0]  := p1.przywolanie_zew;
pietro_zew [1]  := p2.przywolanie_zew;
pietro_zew [2]  := p3.przywolanie_zew;
pietro_zew [3]  := p4.przywolanie_zew;
pietro_zew [4]  := p5.przywolanie_zew;

p_realizacja[0]:=0;
p_realizacja[1]:=0;
p_realizacja[2]:=0;
p_realizacja[3]:=0;
p_realizacja[4]:=0;

wybor_cel[0]:=1;
wybor_cel[1]:=0;
wybor_cel[2]:=0;
wybor_cel[3]:=0;
wybor_cel[4]:=0;

docelowe_pietro:=wybor_cel[0];
licznik:=0;
END_IF       Trans9 H     ????????           Transition Trans9 	???c      ?   d      Poczekalnia        Masa '     ????????           Czynno?? Masa ???cO   IF (masa_aktualna > 600) THEN
	blokada:=TRUE;
ELSE
	blokada:=FALSE;
END_IF;       Trans14 N     ????????           Transition Trans14 	???c      ?   d      Poczekalnia        Ratownik C     ????????           Czynno?? Ratownik ???cA  IF (ratownikk=TRUE AND alarmm=FALSE AND awariaa_pom=FALSE)  THEN
IF pomocnicza=0 THEN
p1.przywolanie_wew:=FALSE;
p2.przywolanie_wew:=FALSE;
p3.przywolanie_wew:=FALSE;
p4.przywolanie_wew:=FALSE;
p5.przywolanie_wew:=FALSE;

p1.przywolanie_zew:=FALSE;
p2.przywolanie_zew:=FALSE;
p3.przywolanie_zew:=FALSE;
p4.przywolanie_zew:=FALSE;
p5.przywolanie_zew:=FALSE;

p_realizacja[0]:=0;
p_realizacja[1]:=0;
p_realizacja[2]:=0;
p_realizacja[3]:=0;
p_realizacja[4]:=0;
pomocnicza:=pomocnicza+1;
licznik:=0;
END_IF;

pietro_wew [0]  := p1.przywolanie_wew;
pietro_wew [1]  := p2.przywolanie_wew;
pietro_wew [2]  := p3.przywolanie_wew;
pietro_wew [3]  := p4.przywolanie_wew;
pietro_wew [4]  := p5.przywolanie_wew;


FOR j:=0 TO 4 BY 1 DO
	IF (pietro_wew[j] = TRUE AND ratunek=0) THEN
		wybor_cel[0]:=j+1;
		docelowe_pietro:=wybor_cel[0];
		ratunek:=ratunek+1;
		p_realizacja[j]:=1;
		wybor_cel[1]:=0;
		wybor_cel[2]:=0;
		wybor_cel[3]:=0;
		wybor_cel[4]:=0;
	ELSIF p_realizacja[j]=0  THEN
		pietro_wew [j]  := FALSE;
		pietro_zew[j]:=FALSE;
	END_IF;
END_FOR;

IF docelowe_pietro = aktualne_pietro AND ratunek=1 THEN
	p1.przywolanie_wew:=FALSE;
	p2.przywolanie_wew:=FALSE;
	p3.przywolanie_wew:=FALSE;
	p4.przywolanie_wew:=FALSE;
	p5.przywolanie_wew:=FALSE;

	p1.przywolanie_zew:=FALSE;
	p2.przywolanie_zew:=FALSE;
	p3.przywolanie_zew:=FALSE;
	p4.przywolanie_zew:=FALSE;
	p5.przywolanie_zew:=FALSE;

	p_realizacja[0]:=0;
	p_realizacja[1]:=0;
	p_realizacja[2]:=0;
	p_realizacja[3]:=0;
	p_realizacja[4]:=0;

	ratunek:=0;
	pomocnicza:=0;
END_IF;
END_IF       Trans12 O     ????????           Transition Trans12 	???c      ?   d      Poczekalnia        Reset /     ????????           Czynno?? Reset ???cF  
resettTrigF(CLK:=resett);
resettTrigR(CLK:=resett);
IF(resettTrigF.Q OR resettTrigR.Q ) THEN
	resett_pom:=TRUE;
	awariaa_pom:=FALSE;
END_IF

IF resett=TRUE OR resett_pom=TRUE THEN

IF resett_pom=TRUE THEN
p1.przywolanie_wew:=FALSE;
p2.przywolanie_wew:=FALSE;
p3.przywolanie_wew:=FALSE;
p4.przywolanie_wew:=FALSE;
p5.przywolanie_wew:=FALSE;

p1.przywolanie_zew:=FALSE;
p2.przywolanie_zew:=FALSE;
p3.przywolanie_zew:=FALSE;
p4.przywolanie_zew:=FALSE;
p5.przywolanie_zew:=FALSE;

p_realizacja[0]:=0;
p_realizacja[1]:=0;
p_realizacja[2]:=0;
p_realizacja[3]:=0;
p_realizacja[4]:=0;

wybor_cel[0]:=aktualne_pietro;
wybor_cel[1]:=0;
wybor_cel[2]:=0;
wybor_cel[3]:=0;
wybor_cel[4]:=0;

licznik:=0;
END_IF;

TRESET(IN := resett_pom, PT:= T#10s);
IF TRESET.Q=TRUE THEN
	resett_pom:=FALSE;
END_IF;
END_IF
    	   war_wyj_R >     ????????           Transition war_wyj_R 	???c      ?   d      Poczekalnia        Awaria =     ????????           Czynno?? Awaria ???c?   awariaaTrigF(CLK:=awariaa);
awariaaTrigR(CLK:=awariaa);
IF(awariaaTrigF.Q OR awariaaTrigR.Q ) THEN
	awariaa_pom:=TRUE;
END_IF
       Trans10 I     ????????           Transition Trans10 	???c      ??awariaa_pom  d      Poczekalnia        Spr_P 2     ????????           Action Spr_P ???c?  IF blokada=FALSE AND awariaa_pom=FALSE THEN
(* Przypisanie przycisku do triggera*)
p1.wewTrigF(CLK:=p1.przycisk_wew);
p1.wewTrigR(CLK:=p1.przycisk_wew);
IF(p1.wewTrigF.Q OR p1.wewTrigR.Q ) THEN
	(* Ustawienie ??dania przemieszczenia windy *)
	p1.przywolanie_wew:=TRUE;
END_IF

(* Przypisanie przycisku do triggera*)
p2.wewTrigF(CLK:=p2.przycisk_wew);
p2.wewTrigR(CLK:=p2.przycisk_wew);
IF(p2.wewTrigF.Q OR p2.wewTrigR.Q ) THEN
	p2.przywolanie_wew:=TRUE;
END_IF

(* Przypisanie przycisku do triggera*)
p3.wewTrigF(CLK:=p3.przycisk_wew);
p3.wewTrigR(CLK:=p3.przycisk_wew);
IF(p3.wewTrigF.Q OR p3.wewTrigR.Q ) THEN
	p3.przywolanie_wew:=TRUE;
END_IF

(* Przypisanie przycisku do triggera*)
p4.wewTrigF(CLK:=p4.przycisk_wew);
p4.wewTrigR(CLK:=p4.przycisk_wew);
IF(p4.wewTrigF.Q OR p4.wewTrigR.Q ) THEN
	p4.przywolanie_wew:=TRUE;
END_IF

(* Przypisanie przycisku do triggera*)
p5.wewTrigF(CLK:=p5.przycisk_wew);
p5.wewTrigR(CLK:=p5.przycisk_wew);
IF(p5.wewTrigF.Q OR p5.wewTrigR.Q ) THEN
	p5.przywolanie_wew:=TRUE;
END_IF


(*ZEWNETRZNE*)
p1.zewTrigF(CLK:=p1.przycisk_zew);
p1.zewTrigR(CLK:=p1.przycisk_zew);
IF(p1.zewTrigF.Q OR p1.zewTrigR.Q ) THEN
	p1.przywolanie_zew:=TRUE;

END_IF

p2.zewTrigF(CLK:=p2.przycisk_zew);
p2.zewTrigR(CLK:=p2.przycisk_zew);
IF(p2.zewTrigF.Q OR p2.zewTrigR.Q ) THEN
	p2.przywolanie_zew:=TRUE;
END_IF

p3.zewTrigF(CLK:=p3.przycisk_zew);
p3.zewTrigR(CLK:=p3.przycisk_zew);
IF(p3.zewTrigF.Q OR p3.zewTrigR.Q ) THEN
	p3.przywolanie_zew:=TRUE;
END_IF

p4.zewTrigF(CLK:=p4.przycisk_zew);
p4.zewTrigR(CLK:=p4.przycisk_zew);
IF(p4.zewTrigF.Q OR p4.zewTrigR.Q ) THEN
	p4.przywolanie_zew:=TRUE;
END_IF

p5.zewTrigF(CLK:=p5.przycisk_zew);
p5.zewTrigR(CLK:=p5.przycisk_zew);
IF(p5.zewTrigF.Q OR p5.zewTrigR.Q ) THEN
	p5.przywolanie_zew:=TRUE;
END_IF

(*Sygnalizacja przywo?anych pi?ter w wizualizacji*)
IF(p1.przywolanie_wew=TRUE OR p1.przywolanie_zew=TRUE) THEN
	p1.sygnalizacja:=TRUE;
ELSE
	p1.sygnalizacja:=FALSE;
END_IF

IF(p2.przywolanie_wew=TRUE OR p2.przywolanie_zew=TRUE) THEN
	p2.sygnalizacja:=TRUE;
ELSE
	p2.sygnalizacja:=FALSE;
END_IF

IF(p3.przywolanie_wew=TRUE OR p3.przywolanie_zew=TRUE) THEN
	p3.sygnalizacja:=TRUE;
ELSE
	p3.sygnalizacja:=FALSE;
END_IF

IF(p4.przywolanie_wew=TRUE OR p4.przywolanie_zew=TRUE) THEN
	p4.sygnalizacja:=TRUE;
ELSE
	p4.sygnalizacja:=FALSE;
END_IF

IF(p5.przywolanie_wew=TRUE OR p5.przywolanie_zew=TRUE) THEN
	p5.sygnalizacja:=TRUE;
ELSE
	p5.sygnalizacja:=FALSE;
END_IF;

(*Sygnalizacja aktualnego pi?tra na wyj?ciach cyfrowych sterownika*)
IF(aktualne_pietro=1) THEN
	p1.pietro:=TRUE;
ELSE
	p1.pietro:=FALSE;
END_IF;

IF(aktualne_pietro=2) THEN
	p2.pietro:=TRUE;
ELSE
	p2.pietro:=FALSE;
END_IF;

IF(aktualne_pietro=3) THEN
	p3.pietro:=TRUE;
ELSE
	p3.pietro:=FALSE;
END_IF;

IF(aktualne_pietro=4) THEN
	p4.pietro:=TRUE;
ELSE
	p4.pietro:=FALSE;
END_IF;

IF(aktualne_pietro=5) THEN
	p5.pietro:=TRUE;
ELSE
	p5.pietro:=FALSE;
END_IF;



END_IF
       Trans11 J     ????????           Transition Trans11 	???c      ?   d      Poczekalnia       Trans1 4     ????????           Transition Trans1 	???c      ?	?blokada?awariaa_pom  d         
   Sterowanie M     ????????           Action Sterowanie ???c?  IF ratownikk=FALSE AND alarmm=FALSE THEN

pietro_zew [0]  := p1.przywolanie_zew;
pietro_zew[1]  := p2.przywolanie_zew;
pietro_zew [2]  := p3.przywolanie_zew;
pietro_zew [3]  := p4.przywolanie_zew;
pietro_zew [4]  := p5.przywolanie_zew;

pietro_wew [0]  := p1.przywolanie_wew;
pietro_wew [1]  := p2.przywolanie_wew;
pietro_wew [2]  := p3.przywolanie_wew;
pietro_wew [3]  := p4.przywolanie_wew;
pietro_wew [4]  := p5.przywolanie_wew;

(*USTALENIE PIETRA DOCELOWEGO NA PODSTAWIE PRZYCISKOW WEW*)
FOR j:=0 TO 4 BY 1 DO
	IF (pietro_wew[j] = TRUE AND p_realizacja[j]=0 ) THEN
		wybor_cel[licznik]:=j+1;
		p_realizacja[j]:=1;
		licznik:=licznik+1;
	END_IF;
END_FOR;

(*USTALENIE PIETRA DOCELOWEGO NA PODSTAWIE PRZYCISKOW ZEW*)
FOR j:=0 TO 4 BY 1 DO
	IF (pietro_zew[j] = TRUE AND p_realizacja[j]=0 ) THEN
		wybor_cel[licznik]:=j+1;
		p_realizacja[j]:=1;
		licznik:=licznik+1;
	END_IF;
END_FOR;

(*Ustawienie warto?ci zmiennej pomocniczej*)
IF wybor_cel[1]=0 THEN
	zmienna1:=1;
ELSE
	zmienna1:=0;
END_IF;
IF wybor_cel[2]=0 THEN
	zmienna2:=1;
ELSE
	zmienna2:=0;
END_IF;

		FOR y:=0 TO 4 BY 1 DO
			IF (licznik-y>0) THEN
			;
			(* GORA *)
			(*Warunki sprawdzaj?ce, czy ??dane pi?tro znajduje si? mi?dzy pi?trem aktualnym, a docelowym, przy przemieszczaniu si? w g?r?*)
			IF ( wybor_cel[licznik-y] > aktualne_pietro AND wybor_cel[licznik-y] <  wybor_cel[0] AND gora=TRUE AND licznik-y>0) THEN

				(*Zmiana kolejno?ci ??danych pi?ter*)
				x:=wybor_cel[licznik-y];
				wybor_cel[licznik-y]:=wybor_cel[licznik-1-y];
				wybor_cel[licznik-1-y]:=x;

			(* DOL *)
			(*Warunki sprawdzaj?ce, czy ??dane pi?tro znajduje si? mi?dzy pi?trem aktualnym, a docelowym, przy przemieszczaniu si? w d??*)
			ELSIF ( wybor_cel[licznik-y] < aktualne_pietro AND wybor_cel[licznik-y] >  wybor_cel[0] AND dol=TRUE AND licznik-y>0) THEN

				(*Zmiana kolejno?ci ??danych pi?ter*)
				x:=wybor_cel[licznik-y];
				wybor_cel[licznik-y]:=wybor_cel[licznik-1-y];
				wybor_cel[licznik-1-y]:=x;

			(*Optymalizacja czasu przejzadu*)
			ELSIF (gora=TRUE AND wybor_cel[2]>wybor_cel[0] AND wybor_cel[1]<wybor_cel[0] AND NOT (pietro_wew[wybor_cel[1]-1+zmienna1]=TRUE AND pietro_zew[wybor_cel[2] -1+zmienna2]=TRUE ))THEN
				x:=wybor_cel[1];
				wybor_cel[1]:=wybor_cel[2];
				wybor_cel[2]:=x;

			ELSIF (dol=TRUE AND wybor_cel[2]<wybor_cel[0] AND wybor_cel[1]>wybor_cel[0] AND NOT ( wybor_cel[2]=0) AND NOT (pietro_wew[wybor_cel[1]-1+zmienna1]=TRUE AND pietro_zew[wybor_cel[2] -1+zmienna2]=TRUE )) THEN
				x:=wybor_cel[1];
				wybor_cel[1]:=wybor_cel[2];
				wybor_cel[2]:=x;


			END_IF;
			END_IF;
		END_FOR;


IF wybor_cel[0]=0 THEN
	docelowe_pietro:=1;
ELSE
	docelowe_pietro:=wybor_cel[0];
END_IF;
END_IF;

(*PODSTAWOWA ZASADA*)
IF (docelowe_pietro>aktualne_pietro) THEN
	gora:=TRUE;
	dol:=FALSE;
ELSIF (docelowe_pietro<aktualne_pietro) THEN
	dol:=TRUE;
	gora:=FALSE;
ELSE
	dol:=FALSE;
	gora:=FALSE;
END_IF;


            Timer_G P     ????????           Action Timer_G ???c      TRGETGdocelowe_pietroA1GTgora?nastepna_stacja_GAdrzwi_zamknieteANDAt#8sTON       R_TRIG        nastepna_stacja_G     aktualne_pietroBBnastepna_stacja_GATRUEANDBOOL_TO_INTADD  aktualne_pietrod          Trans18 :     ????????           Transition Trans18 	???c      ?	Otworz_DrzwiKnastepna_stacja_G  d          Zerowanie_G R     ????????           Action Zerowanie_G ???c?  FOR k:=0 TO 3 BY 1 DO
		(*Warunek sprawdzaj?cy osi?gni?cie docelowego pi?tra*)
		IF docelowe_pietro = aktualne_pietro AND wybor_cel[1]>0 THEN
			(* Przesuwanie element?w tablicy o 1 w lewo *)
			wybor_cel[k] := wybor_cel[k+1];
		END_IF;
END_FOR;

IF (docelowe_pietro = aktualne_pietro AND wybor_cel[1]>0) THEN
	wybor_cel[k]:=0;
END_IF;

IF (aktualne_pietro=docelowe_pietro AND licznik>0) THEN
(* Zmniejszenie warto?ci licznika *)
licznik:=licznik-1;
END_IF;       Trans20 T     ????????           Transition Trans20 	???c      ?   d      Prog          Timer_D W     ????????           Action Timer_D ???c      RTDETDaktualne_pietroA1GTdol?nastepna_stacja_DAdrzwi_zamknieteANDAt#8sTON       R_TRIG        nastepna_stacja_D     aktualne_pietroBBnastepna_stacja_DATRUEANDBOOL_TO_INTSUB  aktualne_pietrod               Obsluga_drzwi X     ????????           Czynno?? Obsluga_drzwi ???c?  
IF ((docelowe_pietro=aktualne_pietro AND pietro_wew[aktualne_pietro-1]=TRUE) OR (docelowe_pietro=aktualne_pietro AND pietro_zew[aktualne_pietro-1]=TRUE))THEN
	Otworz_Drzwi:=TRUE;
	drzwi_Zamkniete:=FALSE;
END_IF;
TZD(IN := Otworz_Drzwi, PT:= T#5s);
IF (TZD.Q=TRUE) THEN
	drzwi_Zamkniete:=TRUE;
	Otworz_Drzwi:=FALSE;
END_IF;

IF (wybor_cel[1]=0 AND pietro_zew[0]=FALSE AND pietro_wew[0]=FALSE AND pietro_zew[1]=FALSE AND pietro_wew[1]=FALSE AND pietro_zew[2]=FALSE AND pietro_wew[2]=FALSE   AND pietro_zew[3]=FALSE AND pietro_wew[3]=FALSE AND pietro_zew[4]=FALSE AND pietro_wew[4]=FALSE AND licznik=1 AND nastepna_stacja_G=FALSE AND nastepna_stacja_D=FALSE) THEN
	licznik:=0;

END_IF;
       Trans23 7     ????????           Transition Trans23 	???c      ?	Otworz_DrzwiJp1.przywolanie_wewp2.przywolanie_wewp3.przywolanie_wewp4.przywolanie_wewp5.przywolanie_wewp1.przywolanie_zewp2.przywolanie_zewp3.przywolanie_zewp4.przywolanie_zewKp5.przywolanie_zew  d          Step33 8     ????????           Czynno?? Step33 ???cO  


IF aktualne_pietro=1 THEN
	p_realizacja[0]:=0;
	p1.przywolanie_wew:=FALSE;
	p1.przywolanie_zew:=FALSE;
END_IF;

IF aktualne_pietro=2  THEN
	p_realizacja[1]:=0;
	p2.przywolanie_wew:=FALSE;
	p2.przywolanie_zew:=FALSE;
END_IF;

IF aktualne_pietro=3 THEN
	p_realizacja[2]:=0;
	p3.przywolanie_wew:=FALSE;
	p3.przywolanie_zew:=FALSE;
END_IF;

IF aktualne_pietro=4 THEN
	p_realizacja[3]:=0;
	p4.przywolanie_wew:=FALSE;
	p4.przywolanie_zew:=FALSE;
END_IF;
IF aktualne_pietro=5 THEN
	p_realizacja[4]:=0;
	p5.przywolanie_wew:=FALSE;
	p5.przywolanie_zew:=FALSE;
END_IF;       Trans22 1     ????????           Transition Trans22 	???c      ??Otworz_Drzwi  d      Prog       Trans17 ]     ????????           Transition Trans17 	???c      ?	Otworz_DrzwiKnastepna_stacja_D  d          Zerowanie_D S     ????????           Action Zerowanie_D ???c?  FOR k:=0 TO 3 BY 1 DO
		(*Warunek sprawdzaj?cy osi?gni?cie docelowego pi?tra*)
		IF docelowe_pietro = aktualne_pietro AND wybor_cel[1]>0 THEN
			(* Przesuwanie element?w tablicy o 1 w lewo *)
			wybor_cel[k] := wybor_cel[k+1];
		END_IF;
END_FOR;

IF (docelowe_pietro = aktualne_pietro AND wybor_cel[1]>0) THEN
	wybor_cel[k]:=0;

END_IF;

IF (aktualne_pietro=docelowe_pietro AND licznik>0 ) THEN
(* Zmniejszenie warto?ci licznika *)
licznik:=licznik-1;
END_IF;

       Trans21 U     ????????           Transition Trans21 	???c      ?   d      Prog       Trans13 K     ????????           Transition Trans13 	???c      ?   d      Progp                   (   , ?? ?           winda ;W?c       Z   &                                                                                                           ???	??  ?        ?                                     PLC_PRG.awariaa_pom       awaria                    I    ???   ?       PLC_PRG.awariaa                                                                                                                               ?x ?? ??   ?        ?                                     PLC_PRG.alarmm       alarm                    K    ???   ?       PLC_PRG.alarmm                                                                                                                               h ? 
 ?
 v
 v? ? ?  ???     ???                                                   ???? ???   ?                                                                                                                                      2 2 ??? Y  ???     ???                                                                 d    ???   ?                                                                                                                                        ?Y?2 ??  ???     ???                                                   ???? ???   ?                                                                                                                                      ? ;U!  ???     ???                                        PLC_PRG.aktualne_pietro   %d                    f    ???       Arial                                                                                                                                   ?? ?? ??    ???      ?                                     PLC_PRG.p1.sygnalizacja       1                    g    ???       Arial                                                                                                                                   ?,?U?@   ???      ?                                     PLC_PRG.p3.sygnalizacja       3                    h    ???       Arial                                                                                                                                   ?? ?#?   ???      ?                                     PLC_PRG.p5.sygnalizacja       5                    i    ???       Arial                                                                                                                                   ?? ?#?   ???      ?                                     PLC_PRG.p2.sygnalizacja       2                    j    ???       Arial                                                                                                                                   ?? ?? ??    ???      ?                                     PLC_PRG.p4.sygnalizacja       4                    k    ???       Arial                                                                                                                                    F YF 2 F ?  ???     ???                                                   ???? ???   ?                                                                                                                                     ?,?U?@  ?        ?                                     PLC_PRG.ratownikk       R                    l    ???       Arial   PLC_PRG.ratownikk                                                                                                                               F  ?) ?     ???     ??  ?   ?                          NOT (PLC_PRG.awariaa_pom)   PLC_PRG.awariaa_pom       A     W     A     R     I     A                    m    ???       Arial                                                                                                                                  ?^?'??        ???     ???                                               ?    ???   ?                                                          d   $                                                                                                                       ???     ???     ???                                 ?   {ExtendedElement},Visu\ElementDLL.ete,1,@Bargraph,70,212,2,1,0,PLC_PRG.masa_aktualna,kg,%.1f,50,200,0,1200,0,0,0,0,0,0,0,-13,16,700,Arial,0,255,0,255,0,0,0,0,0,0,2,0,600,0,255,0,600,1200,255,0,0,                         ???       Arial                                                                                                                                     c  ?  ?    ?   ?  ???             D   (MIN(MAX(0, (PLC_PRG.masa_aktualna * 1.0)),600)  - 600)  * -0.141667            !   (PLC_PRG.masa_aktualna * 1.0) < 0                                ???? ???   ?                                                                                                                                           d  9   ?   ?   ???             H   (MIN(MAX(600, (PLC_PRG.masa_aktualna * 1.0)),1200)  - 1200)  * -0.141667            #   (PLC_PRG.masa_aktualna * 1.0) < 600                                ???? ???   ?                                                                                                                                             ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                       ? A ? . ?     ???     ???                                            0.0                         ???       Arial                                                                                                                                         ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                       ? A ? . ?     ???     ???                                            200.0                         ???       Arial                                                                                                                                         w  w   ???     ???                                                   ???? ???   ?                                                                                                                                           p  p   ???     ???                                                   ???? ???   ?                                                                                                                                           i  i   ???     ???                                                   ???? ???   ?                                                                                                                                                ???     ???                                                   ???? ???   ?                                                                                                                                       t A ? .      ???     ???                                            400.0                         ???       Arial                                                                                                                                         [  [   ???     ???                                                   ???? ???   ?                                                                                                                                           T  T   ???     ???                                                   ???? ???   ?                                                                                                                                           M  M   ???     ???                                                   ???? ???   ?                                                                                                                                           c  c   ???     ???                                                   ???? ???   ?                                                                                                                                       X A m . c     ???     ???                                            600.0                         ???       Arial                                                                                                                                         ?  ?   ???     ???                                                   ???? ???   ?                                                                                                                                           8  8   ???     ???                                                   ???? ???   ?                                                                                                                                           1  1   ???     ???                                                   ???? ???   ?                                                                                                                                           G  G   ???     ???                                                   ???? ???   ?                                                                                                                                       < A Q . G     ???     ???                                            800.0                         ???       Arial                                                                                                                                         "  "   ???     ???                                                   ???? ???   ?                                                                                                                                                ???     ???                                                   ???? ???   ?                                                                                                                                                ???     ???                                                   ???? ???   ?                                                                                                                                           *  *   ???     ???                                                   ???? ???   ?                                                                                                                                        A 4 . *     ???     ???                                            1000.0                         ???       Arial                                                                                                                                              ???     ???                                                   ???? ???   ?                                                                                                                                        A  .      ???     ???                                            1200.0                         ???       Arial                                                                                                                                     ? 5 ? & ?     ???     ???                                            kg                         ???       Arial                                  ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                                                                                                               n Z _?? ?   ???     ???                                PLC_PRG.drzwi_zamkniete                                ?    ???   ?                                                                                                                                        2 2 G ?< Y  ???     ???                                                                 ?    ???   ?                                                                                                                                        ?2 ???Y  ???     ???                                                                 ?    ???   ?                                                                                                                                        F 2 ? ?? Y  ???     ???                                PLC_PRG.Otworz_Drzwi                                ?    ???   ?                                                                                                                                        ? 2 ??6Y  ???     ???                                PLC_PRG.Otworz_Drzwi                                ?    ???   ?                                                                                                                                         ? rF ?n X^X??F ?F ?  ???     ???                                              PLC_PRG.drzwi_zamkniete    ???? ???   ?                                                                                                                                       X P ? d ? d rP |P ?   ???     ???                                              PLC_PRG.drzwi_zamkniete    ???? ???   ?                                                                                                                                       ? B F 2 n Z ^Z ?2 F 2   ??q     ???                                              PLC_PRG.drzwi_zamkniete    ???? ???   ?                                                                                                                                       v?2 ^Z ^X???2   ??q     ???                                              PLC_PRG.drzwi_zamkniete    ???? ???   ?                                                                                                                                      n ?_Y? ?  ??q     ???                                PLC_PRG.drzwi_zamkniete                                ?    ???   ?                                                                                                                                         \ 6F 2 n Z n rd rd ? P ? P |d rn rn XF ?F 2    ??q     ???                                              PLC_PRG.drzwi_zamkniete    ???? ???   ?                                                                                                                                      F ?F 2 F ?F ?  ???     ???                                                   ???? ???   ?                                                                                                                                      n ?_?? ?  ???     ???                                PLC_PRG.drzwi_zamkniete                                ?    ???   ?                                                                                                                                        ? E) ?    ??      ??  ?   ?                          NOT (PLC_PRG.alarmm)   PLC_PRG.alarmm       A     L     A     R     M                    ?    ???       Arial                                                                                                                                     PDlX? DD   ???      ?                                                   PLC_PRG.gora???? ???   ?                                                                                                                                       SDlX"D   ???      ?                                                   PLC_PRG.dol???? ???   ?                                                                                                                                     P [ P    ???      ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.p1.sygnalizacja       1                    ?    ???       Arial                                                                                                                                   Z e d    ???      ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.p4.sygnalizacja       4                    ?    ???       Arial                                                                                                                                   P [ #Z    ???      ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.p2.sygnalizacja       2                    ?    ???       Arial                                                                                                                                   Z "e -d "   ???      ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.p5.sygnalizacja       5                    ?    ???       Arial                                                                                                                                   P ,[ 7Z ,   ???      ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.p3.sygnalizacja       3                    ?    ???       Arial                                                                                                                                   Z 6e AJT  ?        ?                                 PLC_PRG.drzwi_zamkniete   PLC_PRG.ratownikk       R                    ?    ???       Arial                                                                                                                                    ??}?@  ?        ?                                     PLC_PRG.resett_pom       reset                    ?    ???   ?       PLC_PRG.resett                         ??q ?   ??   ?   ??   ? ? ? ???     ?   ??   ?   ??   ? ? ? ???                  ????  ????????         "   Standard.lib 7.6.02 09:26:00 @n =)   SYSLIBCALLBACK.LIB 31.3.04 09:33:20 @P?j@      CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        	   RTC @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @           b   SysCallbackRegister @   	   RTS_EVENT       RTS_EVENT_FILTER       RTS_EVENT_SOURCE                   SysCallbackUnregister @              Globale_Variablen @           Version @                          ????????           2 ?  ?           ????????????????  
             ????  ????????        ????  ????????                      Modu?y                PLC_PRG  )   ????              Typy danych                p1  *                   p2  +                   p3  ,                   p4  -                   p5  .   ????              Wizualizacje                winda  (   ????               Zmienne globalne                 Konfiguracja_zmiennych  	                   Zmienne_globalne     ????                                         ????????             ?g?cYB             YB                	   localhost            P      	   localhost            P      	   localhost            P     ?g?c  v??