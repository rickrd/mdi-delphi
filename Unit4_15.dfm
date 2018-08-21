object ChildForm4_15: TChildForm4_15
  Left = 0
  Top = 0
  Caption = 'ChildForm4_15'
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
  object edNum1: TEdit
    Left = 32
    Top = 24
    Width = 57
    Height = 21
    TabOrder = 0
  end
  object edNum2: TEdit
    Left = 32
    Top = 51
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object edOperacao: TEdit
    Left = 104
    Top = 40
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object btEnvia: TButton
    Left = 167
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = btEnviaClick
  end
end
