PROGRAM PIDSET
VAR_EXTERNAL
SI01 : real;
SI02 : real;
SI03 : real;
SI04 : real;

HE01 : BOOL;
CO01 : BOOL;
END_VAR

VAR
result : int;

END_VAR
SI01 := WORD_TO_REAL(GetRegisterF(RegNumber:=512)); (*SI01 == Setpoint room temperature controller)*)
Result := SetRegisterF(RegNumber := 512, RegValue := REAL_TO_WORD(SI01));
 
SI02 := WORD_TO_REAL(GetRegisterF(RegNumber:=513)); (*SI02 == Setpoint room c02 controller)*)
Result := SetRegisterF(RegNumber := 513, RegValue := REAL_TO_WORD(SI02));

SI03 := WORD_TO_REAL(GetRegisterF(RegNumber:=514)); (*SI03 == )*)
Result := SetRegisterF(RegNumber := 514, RegValue := REAL_TO_WORD(SI03));

SI04 := WORD_TO_REAL(GetRegisterF(RegNumber:=515)); (*SI04 == )*)
Result := SetRegisterF(RegNumber := 515, RegValue := REAL_TO_WORD(SI04));

HE01 := WORD_TO_BOOL(GetRegisterF(RegNumber:=516)); (*HE01 == Heat available*)
Result := SetRegisterF(RegNumber := 516, RegValue := BOOL_TO_WORD(HE01));

CO01 := WORD_TO_BOOL(GetRegisterF(RegNumber:=517)); (*CO01 == Cool available*)
Result := SetRegisterF(RegNumber := 517, RegValue := BOOL_TO_WORD(CO01));
END_PROGRAM