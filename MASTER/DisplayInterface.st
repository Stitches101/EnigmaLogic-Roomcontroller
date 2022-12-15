PROGRAM DisplayInterface
VAR_EXTERNAL
DisplayAddress : usint;
DisplayAddress2 : usint;
DisplayTimeSchedule1 : int;
DisplayTimeSchedule2 : int;
DisplayTimeSchedule3 : int;
DisplayTimeSchedule4 : int;
DisplayTimeSchedule5 : int;
DisplayTemperature : real;
DisplayTemperature2 : real;
DisplayTamper : int;
DisplayPoint1 : real;
DisplayPoint2 : real;
DisplayPoint3 : real;
DisplayPoint4 : real;
DisplayPoint5 : real;
DisplayPoint6 : real;
DisplayPoint7 : real;
DisplayPoint8 : real;
DisplayPoint9 : real;
DisplayPoint10 : real;
END_VAR
VAR_GLOBAL
END_VAR
VAR
Result : int;
Result2 : real;
Resulttest : dint;
Resulttest2 : dint;
DisplayModbusMaster : ModbusRegistersFB;
SaveRegistersTimer : int := 5001;
NewValue : real;
FirstRun : int := 1;
dwTemp : dword;
diTemp : dint;

DisplayPoint2222 : real;

END_VAR

(* Read some measurements from the display *)
DisplayModbusMaster(send:=0, SlaveAddress:=DisplayAddress, StartRegister:=3000, RegisterCount:=63, RegisterType:=3, TimeOut:=200, PollInterval:=2000);
DisplayTemperature := INT_TO_REAL(WORD_TO_INT(DisplayModbusMaster.Reg0));
Result := SetRegisterF( Number := 1013, Value := REAL_TO_WORD(DisplayTemperature));

DisplayTamper := BOOL_TO_INT(DisplayModbusMaster.Reg6 = 1023);
DisplayTimeSchedule1 := WORD_TO_INT(DisplayModbusMaster.Reg7);
DisplayTimeSchedule2 := WORD_TO_INT(DisplayModbusMaster.Reg8);
DisplayTimeSchedule3 := WORD_TO_INT(DisplayModbusMaster.Reg9);
DisplayTimeSchedule4 := WORD_TO_INT(DisplayModbusMaster.Reg10);
DisplayTimeSchedule5 := WORD_TO_INT(DisplayModbusMaster.Reg11);


(* Display point overview---------------------------------------------------------------------------------------------------------- *)


(* POINT1: SET RT -> PIDHC *)


(* POINT2: ADJUST *)
DisplayPoint2 := GetDisplayPointValueF(PointNumber:=2, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint2);
Result := SetDisplayPointF(PointNumber:=2, PointType:=1, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint2);

(* POINT3:  DO1*)
DisplayPoint3 := GetDisplayPointValueF(PointNumber:=3, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint3);
Result := SetDisplayPointF(PointNumber:=3, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint3 );
Result := SetRegisterF( Number := 12, Value := REAL_TO_WORD(DisplayPoint3));

(* POINT4:  *)
DisplayPoint4 := GetDisplayPointValueF(PointNumber:=4, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint4);
Result := SetDisplayPointF(PointNumber:=4, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint4 );

(* POINT5:  *)
DisplayPoint5 := GetDisplayPointValueF(PointNumber:=5, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint5);
Result := SetDisplayPointF(PointNumber:=5, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint5 );

(* POINT6:  *)
DisplayPoint6 := GetDisplayPointValueF(PointNumber:=6, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint6);
Result := SetDisplayPointF(PointNumber:=6, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint6 );

(* POINT7:  *)
DisplayPoint7 := GetDisplayPointValueF(PointNumber:=7, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint7);
Result := SetDisplayPointF(PointNumber:=7, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint7 );

(* POINT8: HEATING/COOLING -> PIDHC *)

(* POINT9:  *)
DisplayPoint9 := GetDisplayPointValueF(PointNumber:=9, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint9);
Result := SetDisplayPointF(PointNumber:=9, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=DisplayPoint9 );

(* POINT10: RT -> PIDHC *)



if (DisplayTamper = 1) then
    DisplayModbusMaster.Reg62 := 0;
    DisplayModbusMaster(send:=1);
end_if;

(* Save registers if any of the setpoints is changed *)
(* 50 loop delay is to let user do all the settings before saving *)
if (SaveRegistersTimer < 50) then
    SaveRegistersTimer := SaveRegistersTimer + 1;
elsif (SaveRegistersTimer = 50) then
    SaveRegistersTimer := SaveRegistersTimer + 1;
    Result := SaveRegistersF(1);
end_if;

FirstRun:=0;
END_PROGRAM