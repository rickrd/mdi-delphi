unit Unit2_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_2 = class(TFatherForm)
    lbSalarioHora: TLabel;
    lbQntHora: TLabel;
    edSalarioHora: TEdit;
    edQntHora: TEdit;
    btEnvia: TButton;
    lbSalarioTotal: TLabel;
    lbImposto: TLabel;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_2: TChildForm2_2;

implementation

{$R *.dfm}

procedure TChildForm2_2.btEnviaClick(Sender: TObject);
var
  wSalarioHora : integer;
  wQntHora : integer;
  wSalarioTotal : integer;
  wImposto : integer;
begin
  wSalarioHora := StrToInt(edSalarioHora.Text);
  wQntHora := StrToInt(edQntHora.Text);
  if (wQntHora > 0) and (wSalarioHora > 0) then
     begin
     if wQntHora <= 220 then
        wSalarioTotal := wSalarioHora * wQntHora
     else
         wSalarioTotal := (wSalarioHora * 220) + (wSalarioHora + wSalarioHora div 2) * (wQntHora - 220);
    if wSalarioTotal < 500 then
      wImposto:= (wSalarioTotal * 5) div 100
    else if wSalarioTotal < 1000 then
      wImposto := (wSalarioTotal * 10) div 100
    else if wSalarioTotal < 1500 then
      wImposto := (wSalarioTotal * 15) div 100
    else if wSalarioTotal < 2000 then
      wImposto := (wSalarioTotal * 20) div 100
    else
      wImposto := (wSalarioTotal * 25) div 100;
    lbSalarioTotal.Caption := IntToStr(wSalarioTotal);
    lbImposto.Caption := IntToStr(wImposto);
  end
  else
    ShowMessage('Insira valores válidos!');
end;

initialization
RegisterClass(TChildForm2_2);

end.
