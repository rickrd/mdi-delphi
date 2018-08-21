unit Unit2_7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit64;

type
  TChildForm2_7 = class(TFatherForm)
    edNum: TEdit;
    lbInsiraNum: TLabel;
    btNum: TButton;
    lbResultado: TLabel;
    procedure pBtNum(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChildForm2_7: TChildForm2_7;

implementation

{$R *.dfm}


procedure TChildForm2_7.pBtNum(Sender: TObject);
var
  wNum: integer;
  wNumAux:array[0..2] of integer;
  wNome:array[0..2] of string;
begin
  wNumAux[0]:=0;wNumAux[1]:=0;wNumAux[2]:=0;
  wNome[0]:='';wNome[1]:='';wNome[2]:='';
  wNum := StrToInt(edNum.Text);
  if wNum > 100 then
     begin
       while wNum > 100 do
         begin
           Inc(wNumAux[0]);
           wNum := wNum - 100;
         end;
          case wNumAux[0] of
            1: wNome[0] := 'Cento';
            2: wNome[0] := 'Duzentos';
            3: wNome[0] := 'Trezentos';
            4: wNome[0] := 'Quatrocentos';
            5: wNome[0] := 'Quinhentos';
            6: wNome[0] := 'Seiscentos';
            7: wNome[0] := 'Setecentos';
            8: wNome[0] := 'Oitocentos';
            9: wNome[0] := 'Novecentos';
          end;
     end
     else
       if wNum = 100 then
          wNome[0] := 'Cem';
  if (wNum > 10) and (wNum < 20) then
     begin
       while wNum >= 11 do
         begin
           Inc(wNumAux[1]);
           wNum := wNum - 1;
         end;
       case wNumAux[1] of
         1: wNome[1] := ' e Onze';
         2: wNome[1] := ' e Doze';
         3: wNome[1] := ' e Treze';
         4: wNome[1] := ' e Quatorze';
         5: wNome[1] := ' e Quinze';
         6: wNome[1] := ' e Dezesseis';
         7: wNome[1] := ' e Dezessete';
         8: Wnome[1] := ' e Dezoito';
         9: wNome[1] := ' e Dezenove';
       end;
     end
     else
       begin
         if wNum >= 10 then
            begin
              while wNum >= 10 do
                begin
                  Inc(wNumAux[1]);
                  wNum := wNum - 10;
                end;
              case wNumAux[1] of
                1: wNome[1] := ' e Dez';
                2: wNome[1] := ' e Vinte';
                3: wNome[1] := ' e Trinta';
                4: wNome[1] := ' e Quarenta';
                5: wNome[1] := ' e Cinquenta';
                6: wNome[1] := ' e Sessenta';
                7: wNome[1] := ' e Setenta';
                8: Wnome[1] := ' e Oitenta';
                9: wNome[1] := ' e Noventa';
              end;
            end;
         if wNum >= 1 then
            begin
              while wNum >= 1 do
                begin
                  wNumAux[2] := wNumAux[2] + 1;
                  wNum := wNum - 1;
                end;
              case wNumAux[2] of
                1: wNome[2] := ' e Um';
                2: wNome[2] := ' e Dois';
                3: wNome[2] := ' e Três';
                4: wNome[2] := ' e Quatro';
                5: wNome[2] := ' e Cinco';
                6: wNome[2] := ' e Seis';
                7: wNome[2] := ' e Sete';
                8: wNome[2] := ' e Oito';
                9: wNome[2] := ' e Nove';
              end;
            end;
       end;

    lbResultado.Caption := wNome[0] + wNome[1] + wNome[2];
end;

initialization
RegisterClass(TChildForm2_7);

end.
