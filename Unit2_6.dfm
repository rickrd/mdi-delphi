object ChildForm2_6: TChildForm2_6
  Left = 0
  Top = 0
  Caption = 'ChildForm2_6'
  ClientHeight = 186
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 15
  object lbInsiraQntNum: TLabel
    Left = 8
    Top = 33
    Width = 170
    Height = 15
    Caption = 'Insira a quantidade de n'#250'meros:'
  end
  object lbInsiraNum: TLabel
    Left = 8
    Top = 64
    Width = 83
    Height = 15
    Caption = 'Insira o n'#250'mero'
  end
  object lbMostraQntClick: TLabel
    Left = 97
    Top = 64
    Width = 3
    Height = 15
  end
  object edInsiraQntNum: TEdit
    Left = 184
    Top = 34
    Width = 39
    Height = 23
    TabOrder = 0
  end
  object btEnviaQntNum: TButton
    Left = 229
    Top = 33
    Width = 39
    Height = 25
    Caption = 'ok'
    Default = True
    TabOrder = 1
    OnClick = btEnviaQntNumClick
  end
  object edInsiraNum: TEdit
    Left = 122
    Top = 64
    Width = 39
    Height = 23
    Enabled = False
    TabOrder = 2
  end
  object btEnviaNum: TButton
    Left = 167
    Top = 64
    Width = 39
    Height = 22
    Caption = 'ok'
    Default = True
    Enabled = False
    TabOrder = 3
    OnClick = btEnviaNumClick
  end
end
