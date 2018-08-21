unit Unit2_3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_3 = class(TFatherForm)
    lbNota: TLabel;
    edNota: TEdit;
    btNota: TButton;
    lbResultado: TLabel;
    procedure btNotaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_3: TChildForm2_3;
  wBtnClick : integer=0;
  wSomaNota: real=0;
  wMediaNota: real;
  wMaior : real=0;
  wMenor : real=11;
implementation

{$R *.dfm}

procedure TChildForm2_3.btNotaClick(Sender: TObject);
var
  wNota : real;
begin
  wNota := StrToFloat(edNota.Text);
  if (wNota >= 0) and (wNota <= 10) then
     begin
       Inc(wBtnClick);
       if wBtnClick <= 6 then
          begin
            wSomaNota := wSomaNota + wNota;
            if wNota > wMaior then
               wMaior := wNota
            else
              if wNota < wMenor then
                 wMenor := wNota
          end;
       wMediaNota := (wSomaNota - wMaior - wMenor) / 4;
       lbResultado.Caption := FloatToStr(wMediaNota);
     end
     else
       ShowMessage ('Insira um valor entre 0 e 10.')




end;

initialization
RegisterClass(TChildForm2_3);

end.
