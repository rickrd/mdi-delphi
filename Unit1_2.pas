unit Unit1_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_2 = class(TFatherForm)
    lbInsiraNum: TLabel;
    edNum1: TEdit;
    edNum2: TEdit;
    edNum3: TEdit;
    btEnvia: TButton;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



implementation

{$R *.dfm}

procedure TChildForm1_2.btEnviaClick(Sender: TObject);
var
  wNum:array[0..2] of Integer;
  wNumAux: Integer;
  wCont, wCont2: integer;
begin
  wNum[0]:=StrToInt(edNum1.Text);wNum[1]:=StrToInt(edNum2.Text);wNum[2]:=StrToInt(edNum3.Text);
  for wCont := 0 to 1 do
    for wCont2 := wCont+1 to 2 do
        if wNum[wCont] > wNum[wCont2] then
           begin
             wNumAux := wNum[wCont];
             wNum[wCont] := wNum[wCont2];
             wNum[wCont2] := wNumAux;
           end;
  ShowMessage(IntToStr(wNum[0]) + IntToStr(wNum[1]) + IntToStr(wNum[2]));


  {i[0] := StrToInt(Edit1.Text);
  if (i1 > i2) and (i1 > i3) then
  begin
    resultado[2] := i1;
    if i2 > i3 then
    begin
      resultado[1] := i2;
      resultado[0] := i3;
    end
    else
    begin
      resultado[1] := i3;
      resultado[0] := i2;
    end;
  end
  else
  begin
    if (i2 > i1) and (i2 > i3) then
    begin
      resultado[2] := i2;
      if i1 > i3 then
      begin
        resultado[1] := i1;
        resultado[0] := i3;
      end
      else
      begin
        resultado[1] := i3;
        resultado[0] := i1;
      end;
    end
    else
    begin
      resultado[2] := i3;
      if i1 > i2 then
      begin
        resultado[1] := i1;
        resultado[0] := i2;
      end
      else
      begin
        resultado[0] := i2;
        resultado[1] := i1;
      end;
    end;

  end;
  Label2.Caption := IntToStr(resultado[0]);
  Label3.Caption := IntToStr(resultado[1]);
  Label4.Caption := IntToStr(resultado[2]);}
end;
initialization
RegisterClass(TChildForm1_2);
end.

