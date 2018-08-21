unit Unit4_14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_14 = class(TFatherForm)
    edNum1: TEdit;
    edNum2: TEdit;
    btEnvia: TButton;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_14: TChildForm4_14;

implementation

{$R *.dfm}

procedure TChildForm4_14.btEnviaClick(Sender: TObject);
var
  wNum1, wNum2 : integer;
  wResto: integer;
begin
  wNum1 := StrToInt(edNum1.Text);
  wNum2 := StrToInt(edNum2.Text);
  wResto := wNum1 mod wNum2;
  if wResto = 1 then
     ShowMessage('Soma: '+IntToStr(wNum1+wNum2))
  else
    if wResto = 2 then
       ShowMessage('Os valores são pares!')
  else
    if wResto = 3 then
       ShowMessage(IntToStr((wNum1 + wNum2) * wNum1))
  else
    if (wResto = 4) and (wNum2 <> 0) then
          ShowMessage(IntToStr((wNum1 + wNum2) div wNum2))
  else
    ShowMessage(IntToStr(wNum1*2) + ', '+IntToStr(wNum2*2));




end;

initialization
  RegisterClass(TChildForm4_14);
end.
