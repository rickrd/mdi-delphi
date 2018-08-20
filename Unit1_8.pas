unit Unit1_8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_8 = class(TFatherForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm1_8: TChildForm1_8;

implementation

{$R *.dfm}

procedure TChildForm1_8.Button1Click(Sender: TObject);
var
salarioNormal: integer;
salarioExtra: integer;
salarioTotal: integer;
imposto: integer;
begin
  salarioNormal := StrToInt(Edit1.Text) * 10;
  salarioExtra := StrToInt(Edit2.Text) * 15;
  salarioTotal := salarioNormal + salarioExtra;
  Label3.Caption := 'Salario:'+IntToStr(salarioTotal);

  if salarioTotal <= 12000 then
  begin
    imposto := 10 div 100 * 12000;
  end
  else
  begin
    imposto := 1200 + (25 div 100 * (salarioTotal - 12000));
  end;
  Label4.Caption := 'Imposto:'+IntToStr(imposto);
end;

initialization
RegisterClass(TChildForm1_8);
end.
