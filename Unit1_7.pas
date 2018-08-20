unit Unit1_7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_7 = class(TFatherForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm1_7: TChildForm1_7;

implementation

{$R *.dfm}

procedure TChildForm1_7.Button1Click(Sender: TObject);
var
  numero: integer;
  x1: integer;
  x2: integer;
  x3: integer;
begin
  if (StrToInt(Edit1.Text) >= 100) and (StrToInt(Edit1.Text) <= 999)  then
  begin
    numero := StrToInt(Edit1.Text);
    x1 := numero div 100;
    x3 := numero mod 10;
    x2 := (numero - x1 * 100 - x3) div 10;
    Label2.Caption := IntToStr(x1);
    Label3.Caption := IntToStr(x2);
    Label4.Caption := IntToStr(x3);
  end
  else
  begin
    showMessage ('Insira um número inteiro entre 100 e 999.');
  end;

end;

initialization
RegisterClass(TChildForm1_7);
end.
