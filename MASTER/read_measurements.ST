PROGRAM read_measurements
VAR
Modbus_Orja_Write : ModbusRegistersFB;
Modbus_Orja_Read : ModbusRegistersFB;
wTemp : WORD ;
temperature_word : WORD ;
Result : INT ;
dword_temp : dword ;
dword_temp2 : dword ;
dword_temp3 : dword ;
rTemp : REAL ;
DisplayPoint2 : REAL ;
Mater_relay : INT ;
Slave_relay_int : INT ;
Slave_relay_word : WORD ;
DisplayPoint1 : REAL ;
DisplayPoint3 : REAL ;
DisplayTemperature : REAL ;
FX2030_button_status : DWORD ;
FX_2030_button_pushed : BOOL ;
min01,min02,min03,min04,min05,min06,min07,min08,min09,min10,min11,min12: REAL;
END_VAR
(* set the number of register to be read and written *)
Result := SetRegisterF ( Number := 1000, Value := 9884 );

min01 := GetDisplayPointValueF(PointNumber:=1, SlaveAddress:=10, OldValue:=min01);
Result := SetRegisterF( Number := 1001, Value := REAL_TO_WORD(min01));
min02 := GetDisplayPointValueF(PointNumber:=2, SlaveAddress:=10, OldValue:=min02);
Result := SetRegisterF( Number := 1002, Value := REAL_TO_WORD(min02));
min03 := GetDisplayPointValueF(PointNumber:=3, SlaveAddress:=10, OldValue:=min03);
Result := SetRegisterF( Number := 1003, Value := REAL_TO_WORD(min03));
min04 := GetDisplayPointValueF(PointNumber:=4, SlaveAddress:=10, OldValue:=min04);
Result := SetRegisterF( Number := 1004, Value := REAL_TO_WORD(min04));
min05 := GetDisplayPointValueF(PointNumber:=5, SlaveAddress:=10, OldValue:=min05);
Result := SetRegisterF( Number := 1005, Value := REAL_TO_WORD(min05));
min06 := GetDisplayPointValueF(PointNumber:=6, SlaveAddress:=10, OldValue:=min06);
Result := SetRegisterF( Number := 1006, Value := REAL_TO_WORD(min06));
min07 := GetDisplayPointValueF(PointNumber:=7, SlaveAddress:=10, OldValue:=min07);
Result := SetRegisterF( Number := 1007, Value := REAL_TO_WORD(min07));
min08 := GetDisplayPointValueF(PointNumber:=8, SlaveAddress:=10, OldValue:=min08);
Result := SetRegisterF( Number := 1008, Value := REAL_TO_WORD(min08));
min09 := GetDisplayPointValueF(PointNumber:=9, SlaveAddress:=10, OldValue:=min09);
Result := SetRegisterF( Number := 1009, Value := REAL_TO_WORD(min09));
min10 := GetDisplayPointValueF(PointNumber:=10, SlaveAddress:=10, OldValue:=min10);
Result := SetRegisterF( Number := 1010, Value := REAL_TO_WORD(min10));
min11 := GetDisplayPointValueF(PointNumber:=11, SlaveAddress:=10, OldValue:=min11);
Result := SetRegisterF( Number := 1011, Value := REAL_TO_WORD(min11));
min12 := GetDisplayPointValueF(PointNumber:=12, SlaveAddress:=10, OldValue:=min12);
Result := SetRegisterF( Number := 1012, Value := REAL_TO_WORD(min12));

(* read the register that contains teh button status from the FX-2030 *)
FX2030_button_status := GetLongRegisterF (0) ;
FX_2030_button_pushed := INT_TO_BOOL(WORD_TO_INT(DWORD_TO_WORD(FX2030_button_status))) ;

(* read temperature from multi-24 slave module and write it to the display *)
Modbus_Orja_Read.Send := 0;
Modbus_Orja_Read.SlaveAddress := 24;
Modbus_Orja_Read.StartRegister := 523;
Modbus_Orja_Read.RegisterCount := 1;
Modbus_Orja_Read.RegisterType := 3;
Modbus_Orja_Read.TimeOut := 800;
Modbus_Orja_Read.PollInterval := 800;
Modbus_Orja_Read();
temperature_word := Modbus_Orja_Read.Reg0; 
Result := word_to_int (temperature_word) ;
Result := Result / 100 ;
rTemp := INT_to_real (Result) ;

(* read button status from display and change the master multi-24 relay *)
(*
DisplayPoint2 := GetDisplayPointValueF(PointNumber:=2, SlaveAddress:=10, OldValue:=DisplayPoint2);
Mater_relay := REAL_TO_INT (DisplayPoint2) ;
*)

(* if the button on the FX-2030 is pushed, always send "0" to close the relay,
otherwise, send the status based on the button on the small display *)
(*
IF FX_2030_button_pushed THEN
	Result := SetDigitalOutputF (1, 0) ;
ELSE
	Result := SetDigitalOutputF (1, Mater_relay) ;
END_IF ;
*)
(* read button status from display and write to the slave multi-24 relay through the correct registers *)
(*
DisplayPoint3 := GetDisplayPointValueF(PointNumber:=3, SlaveAddress:=10, OldValue:=DisplayPoint3);
Slave_relay_int := REAL_TO_INT (DisplayPoint3) ;
Slave_relay_word := INT_TO_WORD (Slave_relay_int) ;
*)

(* if the button on the FX-2030 is pushed, close the relay,
otherwise, send the status based on the button on the small display *)
IF FX_2030_button_pushed THEN
	Slave_relay_word := 0 ;
END_IF ;

(* write the register to the multi-24 slave *)
Modbus_Orja_Write.Send := 1;
Modbus_Orja_Write.SlaveAddress := 24;
Modbus_Orja_Write.StartRegister := 12;
Modbus_Orja_Write.RegisterCount := 1;
Modbus_Orja_Write.RegisterType := 3;
Modbus_Orja_Write.TimeOut := 300;
Modbus_Orja_Write.PollInterval := 500;
Modbus_Orja_Write.Reg0 :=  Slave_relay_word ;
Modbus_Orja_Write();
END_PROGRAM