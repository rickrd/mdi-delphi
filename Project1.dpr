program Project1;



uses
  Vcl.Forms,
  Unit64 in 'Unit64.pas' {MainForm},
  Unit1_1 in 'Unit1_1.pas' {ChildForm1_1},
  Unit1_2 in 'Unit1_2.pas' {ChildForm1_2},
  Unit1_3 in 'Unit1_3.pas' {ChildForm1_3},
  Unit1_4 in 'Unit1_4.pas' {ChildForm1_4},
  Unit1_5 in 'Unit1_5.pas' {ChildForm1_5},
  Unit1_6 in 'Unit1_6.pas' {ChildForm1_6},
  Unit1_7 in 'Unit1_7.pas' {ChildForm1_7},
  Unit1_8 in 'Unit1_8.pas' {ChildForm1_8},
  Unit1_9 in 'Unit1_9.pas' {ChildForm1_9},
  Unit2_1 in 'Unit2_1.pas' {ChildForm2_1},
  Unit2_2 in 'Unit2_2.pas' {ChildForm2_2},
  Unit2_3 in 'Unit2_3.pas' {ChildForm2_3},
  Unit2_4 in 'Unit2_4.pas' {ChildForm2_4},
  Unit2_5 in 'Unit2_5.pas' {ChildForm2_5},
  Unit2_6 in 'Unit2_6.pas' {ChildForm2_6},
  Unit2_7 in 'Unit2_7.pas' {ChildForm2_7},
  Unit4_1 in 'Unit4_1.pas' {ChildForm4_1},
  Unit4_2 in 'Unit4_2.pas' {ChildForm4_2},
  Unit4_3 in 'Unit4_3.pas' {ChildForm4_3},
  Unit4_4 in 'Unit4_4.pas' {ChildForm4_4},
  Unit4_5 in 'Unit4_5.pas' {ChildForm4_5},
  Unit4_6 in 'Unit4_6.pas' {ChildForm4_6},
  Unit4_7 in 'Unit4_7.pas' {ChildForm4_7},
  Unit4_8 in 'Unit4_8.pas' {ChildForm4_8},
  Unit4_10 in 'Unit4_10.pas' {ChildForm4_10},
  Unit4_11 in 'Unit4_11.pas' {ChildForm4_11},
  Unit4_12 in 'Unit4_12.pas' {ChildForm4_12},
  Unit4_13 in 'Unit4_13.pas' {ChildForm4_13},
  Unit4_14 in 'Unit4_14.pas' {ChildForm4_14},
  Unit4_15 in 'Unit4_15.pas' {ChildForm4_15};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
