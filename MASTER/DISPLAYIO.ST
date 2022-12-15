PROGRAM DISPLAYIO
VAR_EXTERNAL
DisplayAddress : usint;
DisplayPoint50 : real;
DisplayPoint51 : real;
DisplayPoint52 : real;
DisplayPoint53 : real;
DisplayPoint54 : real;
DisplayPoint55 : real;
DisplayPoint56 : real;
DisplayPoint57 : real;
DisplayPoint58 : real;
DisplayPoint59 : real;
DisplayPoint60 : real;
DisplayPoint61 : real;
DisplayPoint62 : real;
DisplayPoint63 : real;
DisplayPoint64 : real;
DisplayPoint65 : real;
DisplayPoint66 : real;
DisplayPoint67 : real;
DisplayPoint68 : real;
DisplayPoint69 : real;
DisplayPoint70 : real;
DisplayPoint71 : real;
DisplayPoint72 : real;
DisplayPoint73 : real;
END_VAR

VAR_GLOBAL

END_VAR

VAR
Result : int;
Result2 : real;
END_VAR




(* Analog/Digital Input -----------------------------------------------------------------------------------------------------------*)

(* POINT50: AI1)*)
DisplayPoint50 := GetDisplayPointValueF(PointNumber:=50, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint50);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=500));
Result := SetDisplayPointF(PointNumber:=50, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT51: AI2)*)
DisplayPoint51 := GetDisplayPointValueF(PointNumber:=51, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint51);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=501));
Result := SetDisplayPointF(PointNumber:=51, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT52: AI3)*)
DisplayPoint52 := GetDisplayPointValueF(PointNumber:=52, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint52);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=502));
Result := SetDisplayPointF(PointNumber:=52, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT53: AI4)*)
DisplayPoint53 := GetDisplayPointValueF(PointNumber:=53, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint53);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=503));
Result := SetDisplayPointF(PointNumber:=53, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT54: AI5)*)
DisplayPoint54 := GetDisplayPointValueF(PointNumber:=54, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint54);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=504));
Result := SetDisplayPointF(PointNumber:=54, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT55: AI6)*)
DisplayPoint55 := GetDisplayPointValueF(PointNumber:=55, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint55);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=505));
Result := SetDisplayPointF(PointNumber:=55, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT56: AI7)*)
DisplayPoint56 := GetDisplayPointValueF(PointNumber:=56, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint56);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=506));
Result := SetDisplayPointF(PointNumber:=56, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT57: AI8)*)
DisplayPoint57 := GetDisplayPointValueF(PointNumber:=57, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint57);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=507));
Result := SetDisplayPointF(PointNumber:=57, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT58: AI9)*)
DisplayPoint58 := GetDisplayPointValueF(PointNumber:=58, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint58);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=508));
Result := SetDisplayPointF(PointNumber:=58, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT59: AI10)*)
DisplayPoint59 := GetDisplayPointValueF(PointNumber:=59, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint59);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=509));
Result := SetDisplayPointF(PointNumber:=59, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT60: AI11)*)
DisplayPoint60 := GetDisplayPointValueF(PointNumber:=60, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint60);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=510));
Result := SetDisplayPointF(PointNumber:=60, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT61: AI12)*)
DisplayPoint61 := GetDisplayPointValueF(PointNumber:=61, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint61);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=511));
Result := SetDisplayPointF(PointNumber:=61, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);


(* Digital Output -----------------------------------------------------------------------------------------------------------*)

(* POINT62: D01)*)
DisplayPoint62 := GetDisplayPointValueF(PointNumber:=62, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint62);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=12));
Result := SetDisplayPointF(PointNumber:=62, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT63: D02)*)
DisplayPoint63 := GetDisplayPointValueF(PointNumber:=63, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint63);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=13));
Result := SetDisplayPointF(PointNumber:=63, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT64: D03)*)
DisplayPoint64 := GetDisplayPointValueF(PointNumber:=64, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint64);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=14));
Result := SetDisplayPointF(PointNumber:=64, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT65: D04)*)
DisplayPoint65 := GetDisplayPointValueF(PointNumber:=65, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint65);
Result2 := WORD_TO_REAL(GetRegisterF(RegNumber:=15));
Result := SetDisplayPointF(PointNumber:=65, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);


(* Analog Output -----------------------------------------------------------------------------------------------------------*)

(* POINT66: A01)*)
DisplayPoint66 := GetDisplayPointValueF(PointNumber:=66, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint66);
Result2 := GetAnalogOutputF(Number:=1);
Result := SetDisplayPointF(PointNumber:=66, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT67: A02)*)
DisplayPoint67 := GetDisplayPointValueF(PointNumber:=67, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint67);
Result2 := GetAnalogOutputF(Number:=2);
Result := SetDisplayPointF(PointNumber:=67, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT68: A03)*)
DisplayPoint68 := GetDisplayPointValueF(PointNumber:=68, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint68);
Result2 := GetAnalogOutputF(Number:=3);
Result := SetDisplayPointF(PointNumber:=68, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT69: A04)*)
DisplayPoint69 := GetDisplayPointValueF(PointNumber:=69, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint69);
Result2 := GetAnalogOutputF(Number:=4);
Result := SetDisplayPointF(PointNumber:=69, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);





(* Triacs -----------------------------------------------------------------------------------------------------------*)

(* POINT70: T01)*)
DisplayPoint70 := GetDisplayPointValueF(PointNumber:=70, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint70);
Result2 := GetAnalogOutputF(Number:=5);
Result := SetDisplayPointF(PointNumber:=70, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT71: T02)*)
DisplayPoint71 := GetDisplayPointValueF(PointNumber:=71, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint71);
Result2 := GetAnalogOutputF(Number:=6);
Result := SetDisplayPointF(PointNumber:=71, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT72: T03)*)
DisplayPoint72 := GetDisplayPointValueF(PointNumber:=72, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint72);
Result2 := GetAnalogOutputF(Number:=7);
Result := SetDisplayPointF(PointNumber:=72, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);

(* POINT73: T04)*)
DisplayPoint73 := GetDisplayPointValueF(PointNumber:=73, SlaveAddress:=DisplayAddress, OldValue:=DisplayPoint73);
Result2 := GetAnalogOutputF(Number:=8);
Result := SetDisplayPointF(PointNumber:=73, PointType:=0, PointUnit:=0, SlaveAddress:=DisplayAddress, PointValue:=Result2);
END_PROGRAM