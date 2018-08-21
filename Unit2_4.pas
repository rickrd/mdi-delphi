unit Unit2_4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_4 = class(TFatherForm)
    edString: TEdit;
    lbString: TLabel;
    Button1: TButton;
    lbResult: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_4: TChildForm2_4;

implementation

{$R *.dfm}

procedure TChildForm2_4.Button1Click(Sender: TObject);
var
  wP : string;
  wPTamanho : integer;
  wPRetorno : string;
  wPIndex : string;
  wCont : integer;
begin
  wP := edString.Text;
  wPTamanho := length(wP);
  for wCont := wPTamanho downto 1 do
    begin
      wPIndex := Copy(wP, wCont, 1);
      if wCont = wPTamanho then
           wPRetorno := wPIndex
      else
          wPRetorno := Concat(wPRetorno, wPIndex)
    end;
  lbResult.Caption := wPRetorno;
end;

initialization
RegisterClass(TChildForm2_4);

end.
