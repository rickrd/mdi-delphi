unit Unit64;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Lista1: TMenuItem;
    Button1: TButton;
    TChildForm1_1: TMenuItem;
    TChildForm1_2: TMenuItem;
    TChildForm1_3: TMenuItem;
    TChildForm1_4: TMenuItem;
    TChildForm1_5: TMenuItem;
    TChildForm1_6: TMenuItem;
    TChildForm1_7: TMenuItem;
    TChildForm1_8: TMenuItem;
    TChildForm1_9: TMenuItem;
    Lista2: TMenuItem;
    TChildForm2_1: TMenuItem;
    TChildForm2_2: TMenuItem;
    TChildForm2_3: TMenuItem;
    TChildForm2_4: TMenuItem;
    TChildForm2_5: TMenuItem;
    TChildForm2_6: TMenuItem;
    TChildForm2_7: TMenuItem;
    Lista4: TMenuItem;
    TChildForm4_1: TMenuItem;
    TChildForm4_2: TMenuItem;
    TChildForm4_3: TMenuItem;
    TChildForm4_4: TMenuItem;
    TChildForm4_5: TMenuItem;
    TChildForm4_6: TMenuItem;
    TChildForm4_7: TMenuItem;
    TChildForm4_8: TMenuItem;
    TChildForm4_10: TMenuItem;
    TChildForm4_11: TMenuItem;
    TChildForm4_12: TMenuItem;
    TChildForm4_13: TMenuItem;
    TChildForm4_14: TMenuItem;
    TChildForm4_15: TMenuItem;
    procedure mainActionExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TFatherForm = class(TForm)
  private

  public

  end;
var
  MainForm: TMainForm;

implementation
uses Unit1_1, Unit1_2, Unit1_3, Unit1_4, Unit1_5, Unit1_6, Unit1_7, Unit1_8, Unit1_9, Unit2_1, Unit2_2, Unit2_3, Unit2_4, Unit2_5, Unit2_6, Unit2_7, Unit4_1, Unit4_2, Unit4_3, Unit4_4, Unit4_5, Unit4_6, Unit4_7, Unit4_8, Unit4_10, Unit4_11, Unit4_12, Unit4_13,Unit4_14, Unit4_15;
{$R *.dfm}


procedure TMainForm.mainActionExecute(Sender: TObject);
var
  wFormNome: string;
  wFormClass: TFormClass;
  ChildForm: TObject;

begin
  with Sender as TMenuItem do
    begin
      ChildForm := nil;
      wFormNome := name;
      wFormClass := TFormClass(FindClass(wFormNome));
      ChildForm := wFormClass.Create(nil);
        if (ChildForm is wFormClass) then
          (ChildForm as wFormClass).Show;
    end;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  ActiveMDIChild.Free;
end;


end.
