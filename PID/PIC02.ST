PROGRAM PIC02
VAR_EXTERNAL
DisplayAddress : usint;
DisplayPoint74 : real;

SI01 : real;
SI02 : real;
SI03 : real;
SI04 : real;

PI01 : real;
PI02 : real;
PI03 : real;
PI04 : real;

HE01 : BOOL;
CO01 : BOOL;

END_VAR

VAR
PID_CONTROL : PIDFB ; (* The functionblock type: PIDFB *)
in01 : real;
var01 : real := 0.0;
var02 : real := 0.0;
var03 : real := 10.0;
var04 : real := 2000.0;
cal01 : real;
cal02 : real;
cal03 : real;
cal04 : real;
cal05 : real;
Result : word;
Result2 : int;
y01 : real := 0.0;
y02 : real := 100.0;
x01 : real := 0.0;
x02 : real;
in02 : real;
min01 : real := 0.0;
max01 : real  := 2000.0;
min02 : real := 0.0;
max02 : real  := 50.0;



END_VAR
(*Setpoint calculator C02*)
in01 := WORD_TO_REAL (GetRegisterF(RegNumber:=508)); (*AI09 == CO2 0-10V)*)
 cal01 := var03 - var01;
 cal02 := var02 - var04;
 cal03 := cal02 / cal01;
 cal04 := in01 - var01;
 cal05 := var02 - (cal04 * cal03);

IF var02 = var04 THEN
   cal05 := in01;
END_IF;

 cal05 := LIMIT(min01,cal05,max01);

PID_CONTROL.measurement := cal05;
PID_CONTROL.setpoint := SI02; (*SI02 == Setpoint room co2 controller)*)
PID_CONTROL.stages := 1; (* INT, between 1 and 6 *)
PID_CONTROL.balance := 0; (* INT, between 0 and 6 *)
PID_CONTROL.deadzone := 50.0 ; (* REAL *)
PID_CONTROL.comfort := 0.1; (* REAL *)
PID_CONTROL.min1 := 0; (* INT, between 0 and 100 *)
PID_CONTROL.max1 := 100; (* INT, between 0 and 100 *)
PID_CONTROL.pband1 := 100.0; (* REAL, bigger than 0 *)
PID_CONTROL.iTime := 120; (* INT, seconds, bigger than 0 *)
PID_CONTROL.dTime := 0; (* INT, seconds *)
(* calling the execution of the functionblock *)
PID_CONTROL();

PI01 := PID_CONTROL.out1;
END_PROGRAM