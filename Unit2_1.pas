unit Unit2_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_1 = class(TFatherForm)
    lbInsiraSalarioHora: TLabel;
    lbInsiraQntHora: TLabel;
    edSalarioHora: TEdit;
    edQntHora: TEdit;
    btEnvia: TButton;
    lbResultado: TLabel;
    procedure btEnviaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_1: TChildForm2_1;

implementation

{$R *.dfm}

procedure TChildForm2_1.btEnviaClick(Sender: TObject);
var
wSalarioHora : integer;
wQntHora : integer;
wResultado: integer;
begin
  wSalarioHora := StrToInt(edSalarioHora.Text);
  wQntHora := StrToInt(edQntHora.Text);
  if (wQntHora > 0) and (wSalarioHora > 0) then
    if wQntHora <= 220 then
    begin
      wResultado := wSalarioHora * wQntHora;
      lbResultado.Caption := IntToStr(wResultado);
    end
    else
    begin
      wResultado := (wSalarioHora * 220) + (wSalarioHora + wSalarioHora div 2) * (wQntHora - 220);
      lbResultado.Caption := IntToStr(wResultado);
    end

  else
    ShowMessage('Insira valores válidos!');



end;

initialization
RegisterClass(TChildForm2_1);

end.
