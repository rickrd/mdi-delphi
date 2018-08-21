object ChildForm4_3: TChildForm4_3
  Left = 0
  Top = 0
  Caption = 'ChildForm4_3'
  ClientHeight = 186
  ClientWidth = 418
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
  object lbNome: TLabel
    Left = 40
    Top = 35
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object lbSexo: TLabel
    Left = 40
    Top = 62
    Width = 28
    Height = 13
    Caption = 'Sexo:'
  end
  object edNome: TEdit
    Left = 88
    Top = 32
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object edSexo: TEdit
    Left = 88
    Top = 59
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object btEnvia: TButton
    Left = 151
    Top = 48
    Width = 58
    Height = 21
    Caption = 'Enviar'
    Default = True
    TabOrder = 2
    OnClick = btEnviaClick
  end
end
