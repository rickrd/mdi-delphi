unit Unit4_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_4 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_4: TChildForm4_4;

implementation

{$R *.dfm}

procedure TChildForm4_4.btNumClick(Sender: TObject);
var
  wA: integer;
  wB: integer;
  wNum: integer;
begin
  wNum := StrToInt(edNum.Text);
  if wA > 0 then
     wA := wNum
  else
    wB := wNum;
  ShowMessage(IntToStr(wA)+#13 + IntToStr(wB));
end;

initialization
  RegisterClass(TChildForm4_4);
end.
