object ChildForm2_5: TChildForm2_5
  Left = 0
  Top = 0
  Caption = 'ChildForm2_5'
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
  object lbNum: TLabel
    Left = 16
    Top = 16
    Width = 75
    Height = 13
    Caption = 'Insira um valor:'
  end
  object edNum: TEdit
    Left = 97
    Top = 16
    Width = 56
    Height = 21
    TabOrder = 0
  end
  object btNum: TButton
    Left = 159
    Top = 16
    Width = 58
    Height = 21
    Caption = 'btNum'
    TabOrder = 1
    OnClick = btNumClick
  end
end
