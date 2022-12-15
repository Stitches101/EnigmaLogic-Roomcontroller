$INCLUDE_FILE


(* GLOBALE TYPEN *)



(* PROJEKT TYPEN *)



(* GLOBALE PROTOTYPEN *)

FUNCTION GETREGISTERF : WORD
    VAR_INPUT                                              
      RegNumber : UINT; 
    END_VAR
  END_FUNCTION

FUNCTION SETREGISTERF : INT
    VAR_INPUT                                              
      RegNumber : UINT; 
      Value : WORD;
    END_VAR
  END_FUNCTION



(* PROJEKT PROTOTYPEN *)



(* EXTERNE POEs *)



$END_INCLUDE_FILE
