unit Unit2_6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
    TChildForm2_6 = class(TFatherForm)
    lbInsiraQntNum: TLabel;
    edInsiraQntNum: TEdit;
    btEnviaQntNum: TButton;
    lbInsiraNum: TLabel;
    lbMostraQntClick: TLabel;
    edInsiraNum: TEdit;
    btEnviaNum: TButton;
    procedure btEnviaNumClick(Sender: TObject);
    procedure btEnviaQntNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_6 : TChildForm2_6;
  wQntNum : integer;
  wBtEnviaNumClick: integer=0;
  wNum:array[Word] of integer;

implementation

{$R *.dfm}


procedure TChildForm2_6.btEnviaQntNumClick(Sender: TObject);
begin
  if StrToInt(edInsiraQntNum.Text) > 0 then
  begin
    wQntNum := StrToInt(edInsiraQntNum.Text);
    edInsiraNum.Enabled := True;
    btEnviaNum.Enabled := True;
    edInsiraQntNum.Enabled := False;
    btEnviaQntNum.Enabled := False;
    edInsiraNum.SetFocus;
  end
  else
  begin
    ShowMessage('Insira um número positivo.');
    edInsiraQntNum.SetFocus;
  end;
end;


procedure TChildForm2_6.btEnviaNumClick(Sender: TObject);
var
wNumAux: integer;
  wCont1: Integer;
  wCont2: Integer;
begin
  wNum[wBtEnviaNumClick] := StrToInt(edInsiraNum.Text);
  edInsiraNum.Clear;
  Inc(wBtEnviaNumClick);
  lbMostraQntClick.Caption := IntToStr(wBtEnviaNumClick+1);
  if wBtEnviaNumClick = wQntNum then
     begin
       for wCont1 := 0 to wQntNum-1 do
         for wCont2 := wCont1+1 to wQntNum do
           if wNum[wCont1] > wNum[wCont2] then
              begin
                wNumAux := wNum[wCont1];
                wNum[wCont1] := wNum[wCont2];
                wNum[wCont2] := wNumAux;
              end;
    for wCont1 := 1 to wQntNum do
      ShowMessage(IntToStr(wNum[wCont1]));
    btEnviaNum.Enabled := False;
    end;
end;

initialization
RegisterClass(TChildForm2_6);
end.
