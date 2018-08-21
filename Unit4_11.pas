unit Unit4_11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm4_11 = class(TFatherForm)
    edNum: TEdit;
    btNum: TButton;
    procedure btNumClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm4_11: TChildForm4_11;
  wSoma: integer=0;
  wMedia: integer;
  wBtnClick: integer=0;
  wNum:array[1..5] of integer;

implementation

{$R *.dfm}

procedure TChildForm4_11.btNumClick(Sender: TObject);
var
  wCont: integer;
begin
  Inc(wBtnClick);
  wNum[wBtnClick] := StrToInt(edNum.Text);
  wSoma := wSoma + wNum[wBtnClick];
  if wBtnClick = 5 then
     begin
       wMedia:= wSoma div wBtnClick;
       for wCont := 1 to wBtnClick do
         if wNum[wCont] > wMedia then
            ShowMessage(IntToStr(wNum[wCont]))
     end;


end;

initialization
  RegisterClass(TChildForm4_11);
end.
