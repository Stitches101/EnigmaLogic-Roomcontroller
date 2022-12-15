PROGRAM PIDHC
VAR_EXTERNAL
SI01 : real;
SI02 : real;
SI03 : real;
SI04 : real;

HE01 : BOOL;
CO01 : BOOL;

PI01 : real;
PI02 : real;
PI03 : real;
PI04 : real;

DisplayAddress : usint;
DisplayPoint1 : real;
DisplayPoint8 : real;
DisplayPoint10 : real;

END_VAR


VAR
PID_CONTROL : PIDFB ; (* The functionblock type: PIDFB *)
Output_1 : REAL ;
Output_2 : REAL ;
Result : int;
Result2 : real;
Result3 : real;
SetpointRT : real;
Roomtemp : real;
END_VAR

(*-------------------------------------------------------------------------------------------------------------------------------------*)
(* SET RT + ADJUST *)
Result2 := SI01;
Result3 := GetDisplayPointValueF(PointNumber:=2, SlaveAddress:=DisplayAddress, OldValue:=Result3);


IF GetRegisterF(RegNumber:=524) <> 0 THEN
	Result3 :=0.0;
	Result := SetDisplayPointF(PointNumber:=2, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result3 );
	Result := SetRegisterF(RegNumber := 524, RegValue := 0);
END_IF;

(* POINT1: SET RT -> PIDHC *)
SetpointRT := GetDisplayPointValueF(PointNumber:=1, SlaveAddress:=DisplayAddress, OldValue:=SetpointRT);
SetpointRT := Result2 + Result3;
Result := SetDisplayPointF(PointNumber:=1, PointType:=1, PointUnit:=1, SlaveAddress:=DisplayAddress, PointValue:=SetpointRT );

(*-------------------------------------------------------------------------------------------------------------------------------------*)
(* POINT10: RT + Damping*)
DisplayPoint10 := GetDisplayPointValueF(PointNumber:=10, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint10);
Roomtemp := WORD_TO_REAL(GetRegisterF(RegNumber:=1013))/10.0;


IF (SetpointRT  - 0.3) < Roomtemp AND (SetpointRT  + 0.3) > Roomtemp THEN
	Roomtemp := SetpointRT;
END_IF;

Result := SetDisplayPointF(PointNumber:=10, PointType:=1, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Roomtemp);
(*-------------------------------------------------------------------------------------------------------------------------------------*)

PID_CONTROL.measurement := WORD_TO_REAL(GetRegisterF(RegNumber:=1013))/10.0;
PID_CONTROL.setpoint := SetpointRT ;
PID_CONTROL.stages := 2; (* INT, between 1 and 6 *)
PID_CONTROL.balance := 1; (* INT, between 0 and 6 *)
PID_CONTROL.deadzone := 0.5 ; (* REAL *)
PID_CONTROL.comfort := 0.1; (* REAL *)
PID_CONTROL.min1 := 0; (* INT, between 0 and 100 *)
PID_CONTROL.max1 := 100; (* INT, between 0 and 100 *)
PID_CONTROL.min2 := 0; (* INT, between 0 and 100 *)
PID_CONTROL.max2 := 100; (* INT, between 0 and 100 *)
PID_CONTROL.pband1 := 20.0; (* REAL, bigger than 0 *)
PID_CONTROL.pband2 := 20.0; (* REAL, bigger than 0 *)
PID_CONTROL.iTime := 120; (* INT, seconds, bigger than 0 *)
PID_CONTROL.dTime := 0; (* INT, seconds *)
(* calling the execution of the functionblock *)
PID_CONTROL();


(* Heater *)
PI02 := PID_CONTROL.out2 ; (* returns a REAL *) (*AO01 Heating*)

(* Cooler  *)
PI03 := PID_CONTROL.out1 ; (* returns a REAL *) (*AO02 Cooling*)
END_PROGRAM