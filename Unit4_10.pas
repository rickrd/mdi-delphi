unit Unit4_10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_10 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_10: TChildForm4_10;
  wMaior : integer=0;
  wClick : integer=0;
  wMenor : integer=99999;

implementation

{$R *.dfm}

procedure TChildForm4_10.btNumClick(Sender: TObject);
var
  wNum: integer;
begin
  wNum := StrToInt(edNum.Text);
  Inc(wClick);
  if wNum > wMaior then
     wMaior := wNum
  else
    if wNum < wMenor then
       wMenor := wNum;
  if wClick = 3 then
     ShowMessage('Maior: '+IntToStr(wMaior)+', Menor: '+IntToStr(wMenor));

end;

initialization
  RegisterClass(TChildForm4_10);
end.
