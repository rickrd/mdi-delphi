unit Unit4_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_5 = class(TFatherForm)
    edAltura: TEdit;
    btEnvia: TButton;
    edSexo: TEdit;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_5: TChildForm4_5;

implementation

{$R *.dfm}

procedure TChildForm4_5.btEnviaClick(Sender: TObject);
var
  wSexo : string;
  wAltura : real;
begin
  wAltura := StrToFloat(edAltura.Text);
  wSexo := edSexo.Text;
  if wSexo = 'Masculino' then
     ShowMessage('Peso ideal para masc: ' + FloatToStr((72.7*wAltura) - 58))
  else
    if wSexo = 'Feminino' then
       ShowMessage('Peso ideal para fem: ' + FloatToStr((62.1*wAltura) - 44.7))
  else
    ShowMessage('Sexo inválido.');

end;

initialization
  RegisterClass(TChildForm4_5);
end.
