object ChildForm2_7: TChildForm2_7
  Left = 0
  Top = 0
  Caption = 'ChildForm2_7'
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
  object lbInsiraNum: TLabel
    Left = 104
    Top = 32
    Width = 129
    Height = 13
    Caption = 'Insira um valor de 0 a 999:'
  end
  object lbResultado: TLabel
    Left = 104
    Top = 78
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edNum: TEdit
    Left = 104
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btNum: TButton
    Left = 231
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = pBtNum
  end
end
