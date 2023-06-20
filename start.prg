*** 
*** ReFox XII  #US121960  Tom Bellin  New Data Systems, Inc. [VFP90]
***
**
PROCEDURE start
 SET SAFETY OFF
 SET RESOURCE OFF
 _SCREEN.visible = .F.
 PUBLIC global_ccertpath, global_ccertpassword,global_cTimestampUrl
 STORE '' TO global_ccertpath, global_ccertpassword,global_cTimestampUrl
 start_loadsettings()
 DO FORM signexe WITH '1.1.3'
 READ EVENTS
 start_savesettings()
 QUIT
ENDPROC
**
PROCEDURE start_loadsettings
 IF FILE('signexe.dat')
    RESTORE FROM signexe.dat ADDITIVE
 ENDIF
ENDPROC
**
PROCEDURE start_savesettings
 SAVE TO signexe.dat ALL LIKE global_*
ENDPROC
**
*** 
*** ReFox - all is not lost ... 
***
