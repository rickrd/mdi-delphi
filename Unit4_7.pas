unit Unit4_7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_7 = class(TFatherForm)
    edNota: TEdit;
    btNota: TButton;
    procedure btNotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_7: TChildForm4_7;
  wNotas : real=0;
  wClick : integer=0;
  wExame : integer=0;

implementation

{$R *.dfm}

procedure TChildForm4_7.btNotaClick(Sender: TObject);
var
  wNota: real;
begin
  wNota := StrToFloat(edNota.Text);
  wNotas:= wNotas + wNota;
  Inc(wClick);
  if wClick = 4 then
     if wNotas/4 >= 7 then
        ShowMessage('O aluno foi aprovado! Media: '+FloatToStr(wNotas/4))
     else
       begin
         ShowMessage('O aluno foi reprovado! Media: '+FloatToStr(wNotas/4)+#13+'Insira a nota do exame.');
         Inc(wExame);
       end
  else
    if (wClick = 5) and (wExame > 0) then
       if wNotas/5 >= 5 then
          ShowMessage('O aluno foi aprovado em exame! Media: '+FloatToStr(wNotas/5))
       else
         ShowMessage('O aluno foi reprovado em exame! Media: '+FloatToStr(wNotas/5));

end;

initialization
  RegisterClass(TChildForm4_7);
end.
