$INCLUDE_FILE


(* GLOBALE TYPEN *)



(* PROJEKT TYPEN *)



(* GLOBALE PROTOTYPEN *)

FUNCTION GETREGISTERF : WORD
    VAR_INPUT                                              
      RegNumber : UINT; 
    END_VAR
  END_FUNCTION

FUNCTION SetAnalogOutputF : INT
    VAR_INPUT                                              
        Number : INT; 
        Value : Real; 
    END_VAR
  END_FUNCTION

FUNCTION_BLOCK PidFB 
    VAR_INPUT                                              
		Min1 :INT;
		Max1 :INT;
		iTime :	INT;
		dTime :	INT;
		Balance : INT;
		Pband1 : REAL;
		Measurement : REAL;
		Setpoint : REAL;
		Comfort : REAL;	
		Stages : INT;
		Min2 :INT;
		Max2 :INT;
		Min3 :INT;
		Max3 :INT;
		Min4 :INT;
		Max4 :INT;
		Min5 :INT;
		Max5 :INT;
		Min6 :INT;
		Max6 :INT;
		Pband2 : REAL;
		Pband3 : REAL;
		Pband4 : REAL;
		Pband5 : REAL;
		Pband6 : REAL;
		Deadzone : REAL;		
		Cooling : BOOL;
		Mode : BYTE;
		DriveTime1 : INT;	
		DriveTime2 : INT;	
		DriveTime3 : INT;	
		DriveTime4 : INT;			
		DriveTime5 : INT;	
		DriveTime6 : INT;	
    END_VAR
    VAR_OUTPUT
      	Out1 : REAL; 
      	Out2 : REAL; 
      	Out3 : REAL; 
      	Out4 : REAL; 
      	Out5 : REAL; 
      	Out6 : REAL; 	
	END_VAR
	VAR
		Integral_cumul : REAL;
		Int_cumul2 : REAL;		
		Prev_Meas : REAL;
		Prev2_Meas : REAL;		
		PrevTick : UDINT;
		Saturated : INT;
		Run : INT;
		Prev_Diff : REAL;		
		Proportional_cumul : REAL;
		Output_Tot : REAL;			
    END_VAR	
  END_FUNCTION_BLOCK



(* PROJEKT PROTOTYPEN *)



(* EXTERNE POEs *)



$END_INCLUDE_FILE
