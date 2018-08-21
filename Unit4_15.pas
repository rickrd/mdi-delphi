unit Unit4_15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_15 = class(TFatherForm)
    edNum1: TEdit;
    edNum2: TEdit;
    edOperacao: TEdit;
    btEnvia: TButton;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_15: TChildForm4_15;

implementation

{$R *.dfm}

procedure TChildForm4_15.btEnviaClick(Sender: TObject);
var
  wNum1, wNum2, wResultado : real;
  wOperacao : integer;
begin
  wNum1 := StrToFloat(edNum1.Text);
  wNum2 := StrToFloat(edNum2.Text);
  wOperacao := StrToInt(edOperacao.Text);
  case (wOperacao) of
    1: wResultado := wNum1 + wNum2;
    2: wResultado := wNum1 - wNum2;
    3: wResultado := wNum1 * wNum2;
    4: wResultado := wNum1 / wNum2;
  end;
  ShowMessage(FloatToStr(wResultado));
end;

initialization
  RegisterClass(TChildForm4_15);
end.
