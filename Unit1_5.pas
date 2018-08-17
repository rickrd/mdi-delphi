unit Unit1_5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_5 = class(TFatherForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm1_5: TChildForm1_5;
  Btn1Click : integer=0;
  Btn2Click : integer=0;
  Nnum : integer;
  maior : integer;
  maiorQnt : integer=0;
implementation

{$R *.dfm}

procedure TChildForm1_5.Button1Click(Sender: TObject);
begin
  if StrToInt(Edit1.Text) > 0 then
  begin
    Nnum := StrToInt(Edit1.Text);
    Btn1Click := Btn1Click + 1;
    if Btn1Click = 1 then
    begin
      Button1.Enabled := False;
      Edit1.Enabled := False;
      Button2.Enabled := True;
      Edit2.Enabled := True;
    end;
  end
  else
  begin
    ShowMessage('Insira um valor positivo!');
  end;
end;

procedure TChildForm1_5.Button2Click(Sender: TObject);
var
  numero: integer;
begin
  numero := StrToInt(Edit2.Text);
  if maior < numero then
     begin
       maiorQnt := 1;
       maior := numero;
     end
     else
         if maior = numero then
              inc(maiorQnt);


end;

initialization
RegisterClass(TChildForm1_5);
end.
