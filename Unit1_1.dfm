object ChildForm1_1: TChildForm1_1
  Left = 0
  Top = 0
  Caption = 'ChildForm1_1'
  ClientHeight = 164
  ClientWidth = 262
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowMenu = MainForm.Lista1
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 8
    Width = 103
    Height = 13
    Caption = 'Maior dos 3 n'#250'meros:'
  end
  object Label2: TLabel
    Left = 104
    Top = 85
    Width = 45
    Height = 13
    Caption = 'resultado'
  end
  object Edit1: TEdit
    Left = 41
    Top = 27
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 27
    Width = 55
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 165
    Top = 27
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 104
    Top = 54
    Width = 55
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
