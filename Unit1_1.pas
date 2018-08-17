unit Unit1_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_1 = class(TFatherForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  var
  ChildForm1_1: TChildForm1_1;

implementation
{$R *.dfm}


procedure TChildForm1_1.Button1Click(Sender: TObject);
var
  num1: Integer;
  num2: Integer;
  num3: Integer;
  resultado: Integer;
begin
  num1 := StrToInt(Edit1.Text);
  num2 := StrToInt(Edit2.Text);
  num3 := StrToInt(Edit3.Text);
//  if (num1 > num2) and (num1 > num3) then
//     begin
//       resultado := num1;
//     end
//  else
//     begin
//       if (num2 > num1) and (num2 > num3) then
//          begin
//            resultado := num2;
//          end
//       else
//          begin
//            resultado:= num3;
//          end;
//     end;


  if (num1 > num2) and (num1 > num3) then
     resultado := num1
  else
    if (num2 > num1) and (num2 > num3) then
       resultado := num2
    else
       resultado:= num3;
  Label2.Caption := IntToStr(resultado);
end;




procedure TChildForm1_1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

initialization
RegisterClass(TChildForm1_1);
end.
