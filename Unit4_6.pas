unit Unit4_6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_6 = class(TFatherForm)
    edNota: TEdit;
    Button1: TButton;
    btNota: TButton;
    procedure btNotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_6: TChildForm4_6;
  wNotas: real=0;
  wClick: integer=0;

implementation

{$R *.dfm}

procedure TChildForm4_6.btNotaClick(Sender: TObject);
var
  wNota: real;
begin
  Inc(wClick);
  wNota := StrToFloat(edNota.Text);
  wNotas := wNotas + wNota;
  if wClick = 4 then
     if wNotas / 4 >= 5 then
        ShowMessage('O aluno foi aprovado! Media: '+FloatToStr(wNotas/4))
     else
       ShowMessage('O aluno foi reprovado! Media: '+FloatToStr(wNotas/4));


end;

initialization
  RegisterClass(TChildForm4_6);
end.
