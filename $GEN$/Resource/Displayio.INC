$INCLUDE_FILE


(* GLOBALE TYPEN *)



(* PROJEKT TYPEN *)



(* GLOBALE PROTOTYPEN *)

FUNCTION GetDisplayPointValueF : REAL
    VAR_INPUT                                              
        PointNumber : USINT; 
		SlaveAddress : USINT; 
		OldValue : REAL;
    END_VAR
  END_FUNCTION

FUNCTION GETREGISTERF : WORD
    VAR_INPUT                                              
      RegNumber : UINT; 
    END_VAR
  END_FUNCTION

FUNCTION SetDisplayPointF : INT
    VAR_INPUT                                              
        PointNumber : USINT; 
		PointType : USINT; 
		PointUnit : USINT; 
		SlaveAddress : USINT;
		PointValue : REAL;
    END_VAR
  END_FUNCTION

FUNCTION GetAnalogOutputF : REAL
    VAR_INPUT                                              
        Number : INT; 
    END_VAR
  END_FUNCTION



(* PROJEKT PROTOTYPEN *)



(* EXTERNE POEs *)



$END_INCLUDE_FILE
