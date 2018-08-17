object ChildForm1_2: TChildForm1_2
  Left = 0
  Top = 0
  Caption = 'ChildForm1_2'
  ClientHeight = 186
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object lbInsiraNum: TLabel
    Left = 71
    Top = 16
    Width = 146
    Height = 13
    Caption = 'N'#250'meros em ordem crescente:'
  end
  object edNum1: TEdit
    Left = 54
    Top = 35
    Width = 59
    Height = 21
    TabOrder = 0
  end
  object edNum2: TEdit
    Left = 119
    Top = 35
    Width = 58
    Height = 21
    TabOrder = 1
  end
  object edNum3: TEdit
    Left = 183
    Top = 35
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object btEnvia: TButton
    Left = 119
    Top = 62
    Width = 58
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = btEnviaClick
  end
end
