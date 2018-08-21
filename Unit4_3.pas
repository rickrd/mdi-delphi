unit Unit4_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_3 = class(TFatherForm)
    edNome: TEdit;
    edSexo: TEdit;
    lbNome: TLabel;
    lbSexo: TLabel;
    btEnvia: TButton;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_3: TChildForm4_3;

implementation

{$R *.dfm}

procedure TChildForm4_3.btEnviaClick(Sender: TObject);
var
 wNome : string;
 wSexo : string;
begin
  wNome := edNome.Text;
  wSexo := edSexo.Text;

  if wSexo = 'Masculino' then
     ShowMessage ('Ilmo Sr. ' +wNome)
  else
    if wSexo = 'Feminino' then
       ShowMessage ('Ilma Sra. ' +wNome)
  else
    ShowMessage('Sexo inválido.');

end;

initialization
  RegisterClass(TChildForm4_3);
end.
