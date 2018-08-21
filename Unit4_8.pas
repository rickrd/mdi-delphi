unit Unit4_8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_8 = class(TFatherForm)
    edAno: TEdit;
    btAno: TButton;
    procedure btAnoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_8: TChildForm4_8;

implementation

{$R *.dfm}

procedure TChildForm4_8.btAnoClick(Sender: TObject);
var
  wAno : integer;
  wIdade : integer;
begin
  wAno := StrToInt(edAno.Text);
  wIdade := 2018 - wAno;
  ShowMessage('Idade: '+IntToStr(wIdade));
  if wIdade >= 16 then
     ShowMessage ('Você já tem idade para votar.');
  if wIdade >= 18 then
     ShowMessage('Você já tem idade para fazer CNH.');

end;

initialization
  RegisterClass(TChildForm4_8);
end.
