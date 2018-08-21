unit Unit2_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_5 = class(TFatherForm)
    lbNum: TLabel;
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_5: TChildForm2_5;

implementation

{$R *.dfm}

procedure TChildForm2_5.btNumClick(Sender: TObject);
var
  wNum:integer;
  c:array[0..6] of integer;
  cc:array[0..6] of integer;
  wCont: integer;
  wCont2: integer;
begin
  c[0]:=100;c[1]:=50;c[2]:= 25;c[3]:=10;c[4]:=5;c[5]:=2;c[6]:=1;
  cc[0]:=0;cc[1]:=0;cc[2]:=0;cc[3]:=0;cc[4]:=0;cc[5]:=0;cc[6]:=0;
  wNum := StrToInt(edNum.Text);
  for wCont := wNum downto 0 do
  begin
    for wCont2 := 0 to 6 do
    begin
      while wNum >= c[wCont2] do
      begin
        cc[wCont2] := cc[wCont2] + 1;
        wNum := wNum - 1 * c[wCont2];
      end;
    end;
  end;
  ShowMessage('Cédulas de 100:' + IntToStr(cc[0])+#13+
              'Cédulas de 50:' + IntToStr(cc[1])+#13+
              'Cédulas de 25:' + IntToStr(cc[2])+#13+
              'Cédulas de 10:' + IntToStr(cc[3])+#13+
              'Cédulas de 5:' + IntToStr(cc[4])+#13+
              'Cédulas de 2:' + IntToStr(cc[5])+#13+
              'Cédulas de 1:' + IntToStr(cc[6]));
end;

initialization
RegisterClass(TChildForm2_5);

end.
