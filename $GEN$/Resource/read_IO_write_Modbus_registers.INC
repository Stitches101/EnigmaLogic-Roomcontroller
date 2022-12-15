$INCLUDE_FILE


(* GLOBALE TYPEN *)



(* PROJEKT TYPEN *)



(* GLOBALE PROTOTYPEN *)

FUNCTION SETREGISTERF : INT
    VAR_INPUT                                              
      RegNumber : UINT; 
      Value : WORD;
    END_VAR
  END_FUNCTION

FUNCTION GETREGISTERF : WORD
    VAR_INPUT                                              
      RegNumber : UINT; 
    END_VAR
  END_FUNCTION

FUNCTION SetInputTypeF: INT
    VAR_INPUT                                              
        Number : INT; 
        InputType : INT; 
    END_VAR
  END_FUNCTION

FUNCTION GetAnalogInputF : DINT
    VAR_INPUT                                              
        Number : INT; 
    END_VAR
  END_FUNCTION

FUNCTION GetNi1000LgMeasurementF : REAL
    VAR_INPUT                                              
        Number : INT;  
    END_VAR
  END_FUNCTION

FUNCTION GetOhmMeasurementF : REAL
    VAR_INPUT                                              
        Number : INT;  	(* Number of physical input channel *)
    END_VAR
  END_FUNCTION



(* PROJEKT PROTOTYPEN *)



(* EXTERNE POEs *)



$END_INCLUDE_FILE
