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

FUNCTION GetDisplayPointValueF : REAL
    VAR_INPUT                                              
        PointNumber : USINT; 
		SlaveAddress : USINT; 
		OldValue : REAL;
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

FUNCTION SaveRegistersF : INT
    VAR_INPUT                                              
        X : INT; 
    END_VAR
  END_FUNCTION

FUNCTION_BLOCK ModbusRegistersFB 
    VAR_INPUT                                             
    Send:usint;
    SlaveAddress:usint;
    StartRegister:uint;
    RegisterCount:usint;
    RegisterType:usint;
    TimeOut:uint;
	PollInterval : uint;
	Reg0 : word;  Reg1 : word;  Reg2 : word;  Reg3 : word;  Reg4 : word;  Reg5 : word;  Reg6 : word;  Reg7 : word;
    Reg8 : word;  Reg9 : word;  Reg10: word;  Reg11: word; Reg12 : word; Reg13 : word; Reg14 : word; Reg15 : word;
    Reg16: word;  Reg17: word;  Reg18: word;  Reg19: word; Reg20 : word; Reg21 : word; Reg22 : word; Reg23 : word;
    Reg24: word;  Reg25: word;  Reg26: word;  Reg27: word; Reg28 : word; Reg29 : word; Reg30 : word; Reg31 : word;
    Reg32: word;  Reg33: word;  Reg34: word;  Reg35: word; Reg36 : word; Reg37 : word; Reg38 : word; Reg39 : word;
    Reg40: word;  Reg41: word;  Reg42: word;  Reg43: word; Reg44 : word; Reg45 : word; Reg46 : word; Reg47 : word;
    Reg48: word;  Reg49: word;  Reg50: word;  Reg51: word; Reg52 : word; Reg53 : word; Reg54 : word; Reg55 : word;
    Reg56: word;  Reg57: word;  Reg58: word;  Reg59: word; Reg60 : word; Reg61 : word; Reg62 : word; Reg63 : word;
    Reg64: word;  Reg65: word;  Reg66: word;  Reg67: word; Reg68 : word; Reg69 : word; Reg70 : word; Reg71 : word;
    Reg72: word;  Reg73: word;  Reg74: word;  Reg75: word; Reg76 : word; Reg77 : word; Reg78 : word; Reg79 : word;
    Reg80: word;  Reg81: word;  Reg82: word;  Reg83: word; Reg84 : word; Reg85 : word; Reg86 : word; Reg87 : word;
    Reg88: word;  Reg89: word;  Reg90: word;  Reg91: word; Reg92 : word; Reg93 : word; Reg94 : word; Reg95 : word;
    Reg96: word;  Reg97: word;  Reg98: word;  Reg99: word;
    END_VAR
    VAR_OUTPUT
    DataValid:usint;      	 
    END_VAR	
  END_FUNCTION_BLOCK



(* PROJEKT PROTOTYPEN *)



(* EXTERNE POEs *)



$END_INCLUDE_FILE
