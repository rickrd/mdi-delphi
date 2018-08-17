unit Unit1_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_4 = class(TFatherForm)
    Label1: TLabel;
    edQntNum: TEdit;
    Label2: TLabel;
    edNum: TEdit;
    Button1: TButton;
    Button2: TButton;
    lbMaior: TLabel;
    lbMaiorQnt: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm1_4: TChildForm1_4;
  wBtn1Click : integer=0;
  wBtn2Click : integer=0;
  wNnum : integer;
  wMaior : integer;
  wMaiorQnt : integer=0;
implementation

{$R *.dfm}

procedure TChildForm1_4.Button1Click(Sender: TObject);
begin
  if StrToInt(edQntNum.Text) > 0 then
  begin
    wNnum := StrToInt(edQntNum.Text);
    wBtn1Click := wBtn1Click + 1;
    if wBtn1Click = 1 then
    begin
      Button1.Enabled := False;
      edQntNum.Enabled := False;
      Button2.Enabled := True;
      edNum.Enabled := True;
      edNum.SetFocus;
    end;
  end
  else
  begin
    ShowMessage('Insira um valor positivo!');
    edQntNum.SetFocus;
  end;
end;

procedure TChildForm1_4.Button2Click(Sender: TObject);
var
  wNum: integer;
begin
  wNum := StrToInt(edNum.Text);
  Inc(wBtn2Click);
  if wBtn2Click <= wNnum then
     if wMaior < wNum then
        begin
          wMaiorQnt := 0;
          wMaior := wNum;
          Inc(wMaiorQnt);
        end
     else
       if wMaior = wNum then
          Inc(wMaiorQnt);
  edNum.Clear;
  lbMaior.Caption := IntToStr(wMaior);
  lbMaiorQnt.Caption := IntToStr(wMaiorQnt);

  {numero := StrToInt(Edit2.Text);
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
  Label4.Caption := IntToStr(Btn2Click+1);}

end;


initialization
RegisterClass(TChildForm1_4);

end.
