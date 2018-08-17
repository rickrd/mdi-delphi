unit Unit1_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm1_3 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ChildForm1_3: TChildForm1_3;
  btnClicks : Integer=0;
  wMaior: Integer=0;
implementation
{$R *.dfm}

procedure TChildForm1_3.btNumClick(Sender: TObject);
var
  wNum:Integer;
begin
  wNum := StrToInt(edNum.Text);
  inc(btnClicks);
  if btnClicks < 10 then
     begin
       if wNum > wMaior then
          wMaior := wNum
    end
    else
      ShowMessage(IntToStr(wMaior));



 { wNum := StrToInt(Edit1.Text);
    if BtnClicks >= 9 then
       begin
         edNum.Text := 'Número máximo atingido.';
         Edit1.Enabled := False;
         Label3.Enabled := False;
         Button1.Enabled := False;
       end
    else //
    begin
      if BtnClicks = 0 then
         begin
           maior := wNum;
         end;
      if wNum > maior then
         begin
           maior := wNum;
         end;
    end;
  Label1.Caption := 'Maior número:'+IntToStr(maior);
  Label3.Caption := IntToStr(BtnClicks+1);
  BtnClicks := BtnClicks +1;}
end;

initialization
RegisterClass(TChildForm1_3);
end.
