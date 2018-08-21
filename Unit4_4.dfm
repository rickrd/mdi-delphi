object ChildForm4_4: TChildForm4_4
  Left = 0
  Top = 0
  Caption = 'ChildForm4_4'
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
  object edNum: TEdit
    Left = 72
    Top = 21
    Width = 57
    Height = 21
    ParentColor = True
    TabOrder = 0
  end
  object btNum: TButton
    Left = 72
    Top = 48
    Width = 57
    Height = 25
    Caption = 'Enviar'
    Default = True
    TabOrder = 1
    OnClick = btNumClick
  end
end
