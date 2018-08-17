object ChildForm1_3: TChildForm1_3
  Left = 0
  Top = 0
  Caption = 'ChildForm1_3'
  ClientHeight = 146
  ClientWidth = 189
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
  object Label1: TLabel
    Left = 40
    Top = 82
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 170
    Height = 13
    Caption = 'C'#225'lculo de maior entre 10 n'#250'meros:'
  end
  object Label3: TLabel
    Left = 151
    Top = 24
    Width = 3
    Height = 13
  end
  object edNum: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btNum: TButton
    Left = 40
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btNumClick
  end
end
