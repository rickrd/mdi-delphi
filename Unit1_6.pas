unit Unit1_6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_6 = class(TFatherForm)
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
  ChildForm1_6: TChildForm1_6;
  Btn1Click : integer=0;
  Btn2Click : integer=0;
  Btn1Chance : integer=0;
  Nnum : integer;
  maior : integer;
  maiorQnt : integer=0;
implementation

{$R *.dfm}

procedure TChildForm1_6.Button1Click(Sender: TObject);
begin
  if (StrToInt(Edit1.Text) > 0) and (Btn1Chance < 3) then
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
    if (Btn1Chance >= 3) then
    begin
      ShowMessage ('Você teve 3 tentativas.');
      Application.Terminate;
    end;
    ShowMessage('Insira um valor positivo!');
    Btn1Chance := Btn1Chance +1;
  end;
end;

procedure TChildForm1_6.Button2Click(Sender: TObject);
var
  numero: integer;
begin
  numero := StrToInt(Edit2.Text);
  Btn2Click := Btn2Click + 1;
  if Btn2Click < Nnum then
  begin
    if Btn2Click = 1 then
    begin
      maior := numero;
      maiorQnt := maiorQnt +1;
    end
    else
    begin
      if maior = numero then
      begin
        maiorQnt := maiorQnt + 1;
      end;
      if numero > maior then
      begin
        maior := numero;
        maiorQnt := 1;
      end;
    end;
  end
  else
  begin
    if maior = numero then
    begin
      maiorQnt := maiorQnt + 1;
    end;
    if numero > maior then
    begin
      maior := numero;
      maiorQnt := 1;
    end;
    Edit2.Text := 'Número máximo atingido!';
    Label5.Caption := 'Maior número:'+IntToStr(maior);
    Label3.Caption := 'Foi inserido '+IntToStr(maiorQnt)+' vezes.';
    Edit2.Enabled := False;
    Button2.Enabled := False;
  end;
  Label4.Caption := IntToStr(Btn2Click+1);

end;

initialization
RegisterClass(TChildForm1_6);
end.
