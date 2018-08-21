unit Unit4_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_2 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_2: TChildForm4_2;

implementation

{$R *.dfm}

procedure TChildForm4_2.btNumClick(Sender: TObject);
var
  wNum : integer;
begin
  wNum := StrToInt(edNum.Text);
  if (wNum >= 1) and (wNum <= 9) then
     ShowMessage('O valor está na faixa permitida.')
  else
    ShowMessage('O valor está fora da faixa permitida.');

end;

initialization
  RegisterClass(TChildForm4_2);
end.
