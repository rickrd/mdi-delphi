unit Unit4_13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_13 = class(TFatherForm)
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

var
  ChildForm4_13: TChildForm4_13;

implementation

{$R *.dfm}

procedure TChildForm4_13.btEnviaClick(Sender: TObject);
var
  wNum1, wNum2, wNum3 : real;
begin
  wNum1 := StrToFloat(edNum1.Text);
  wNum2 := StrToFloat(edNum2.Text);
  wNum3 := StrToFloat(edNum3.Text);
  if (wNum1 = wNum2) and (wNum1 = wNum3)  then
     ShowMessage ('É equilátero!')
  else
    if (wNum1 = wNum2) or (wNum1 = wNum3) or (wNum2 = wNum3) then
       ShowMessage('É isósceles!')
  else
    ShowMessage('É scaleno!');


end;

initialization
  RegisterClass(TChildForm4_13);
end.
