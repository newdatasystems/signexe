*** 
*** ReFox XII  #US121960  Tom Bellin  New Data Systems, Inc. [VFP90]
***
**
PROCEDURE start
 SET SAFETY OFF
 SET RESOURCE OFF
 _SCREEN.visible = .F.
 PUBLIC global_cMetadataPath,global_cDlibPath,global_cTimestampUrl,global_cPauseSeconds
 STORE '' TO global_cMetadataPath,global_cDlibPath,global_cTimestampUrl
 STORE 5 TO global_cPauseSeconds
 start_loadsettings()
 DO FORM signexe WITH '2.0.1'
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
