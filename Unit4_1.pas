unit Unit4_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_1 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_1: TChildForm4_1;

implementation

{$R *.dfm}

procedure TChildForm4_1.btNumClick(Sender: TObject);
var
  wNum: integer;
begin
  wNum := StrToInt(edNum.Text);
  if wNum mod 2 > 0 then
     ShowMessage('É impar!')
  else
    ShowMessage('É par!');
end;

initialization
  RegisterClass(TChildForm4_1);
end.
