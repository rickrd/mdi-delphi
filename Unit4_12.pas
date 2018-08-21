unit Unit4_12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_12 = class(TFatherForm)
    edHorasAula2: TEdit;
    btEnvia: TButton;
    edValorHora1: TEdit;
    edValorHora2: TEdit;
    edHorasAula1: TEdit;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_12: TChildForm4_12;

implementation

{$R *.dfm}

procedure TChildForm4_12.btEnviaClick(Sender: TObject);
var
 wHorasAula1, wHorasAula2: integer;
 wValorHora1, wValorHora2: integer;
 wSalarioTotal1, wSalarioTotal2: integer;

begin
  wHorasAula1 := StrToInt(edHorasAula1.Text);
  wHorasAula2 := StrToInt(edHorasAula2.Text);
  wValorHora1 := StrToInt(edValorHora1.Text);
  wValorHora2 := StrToInt(edValorHora2.Text);
  wSalarioTotal1 := wHorasAula1 * wValorHora1;
  wSalarioTotal2 := wHorasAula2 * wValorHora2;
  if wSalarioTotal1 > wSalarioTotal2 then
     ShowMessage('Professor 1 tem maior salario: ' + IntToStr(wSalarioTotal1))
  else
    ShowMessage('Professor 2 tem maior salario: ' + IntToStr(wSalarioTotal2));

end;

initialization
  RegisterClass(TChildForm4_12);
end.
