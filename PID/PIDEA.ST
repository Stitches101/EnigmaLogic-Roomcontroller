PROGRAM PIDEA
VAR_EXTERNAL
SI01 : real;
SI02 : real;
SI03 : real;
SI04 : real;

PI01 : real;
PI02 : real;

END_VAR


VAR
PID_CONTROL : PIDFB ; (* The functionblock type: PIDFB *)
Output_4 : REAL ;
Result : int;
END_VAR




PID_CONTROL.measurement := WORD_TO_REAL(GetRegisterF(RegNumber:=507))*10.0; (*AI08 == EA Volume 0-10V)*)
PID_CONTROL.setpoint := PI02; (*PIDGLOBAL)*)
PID_CONTROL.stages := 1; (* INT, between 1 and 6 *)
PID_CONTROL.balance := 0; (* INT, between 0 and 6 *)
PID_CONTROL.deadzone := 50.0 ; (* REAL *)
PID_CONTROL.comfort := 0.1; (* REAL *)
PID_CONTROL.min1 := 0; (* INT, between 0 and 100 *)
PID_CONTROL.max1 := 100; (* INT, between 0 and 100 *)
PID_CONTROL.pband1 := 100.0; (* REAL, bigger than 0 *)
PID_CONTROL.iTime := 60; (* INT, seconds, bigger than 0 *)
PID_CONTROL.dTime := 0; (* INT, seconds *)
(* calling the execution of the functionblock *)
PID_CONTROL();
(* now we can use the output values *)

Output_4 := PID_CONTROL.out1 ; (* returns a REAL *)
Result := SetAnalogOutputF(Number:=4, Value := Output_4);
END_PROGRAM