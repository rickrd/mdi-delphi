object ChildForm2_4: TChildForm2_4
  Left = 0
  Top = 0
  Caption = 'ChildForm2_4'
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
  object lbString: TLabel
    Left = 27
    Top = 19
    Width = 84
    Height = 13
    Caption = 'Insira uma string:'
  end
  object lbResult: TLabel
    Left = 117
    Top = 46
    Width = 69
    Height = 13
    Caption = 'Retorno string'
  end
  object edString: TEdit
    Left = 117
    Top = 19
    Width = 148
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 271
    Top = 19
    Width = 75
    Height = 21
    Caption = 'btString'
    TabOrder = 1
    OnClick = Button1Click
  end
end
