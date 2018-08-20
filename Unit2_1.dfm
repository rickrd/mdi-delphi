object ChildForm2_1: TChildForm2_1
  Left = 0
  Top = 0
  Caption = 'ChildForm2_1'
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
  object lbInsiraSalarioHora: TLabel
    Left = 21
    Top = 8
    Width = 61
    Height = 13
    Caption = 'Sal'#225'rio hora:'
  end
  object lbInsiraQntHora: TLabel
    Left = 21
    Top = 35
    Width = 165
    Height = 13
    Caption = 'Quantidade de horas trabalhadas:'
  end
  object lbResultado: TLabel
    Left = 192
    Top = 62
    Width = 45
    Height = 13
    Caption = 'resultado'
  end
  object edSalarioHora: TEdit
    Left = 192
    Top = 8
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object edQntHora: TEdit
    Left = 192
    Top = 35
    Width = 49
    Height = 21
    TabOrder = 1
  end
  object btEnvia: TButton
    Left = 247
    Top = 23
    Width = 114
    Height = 25
    Caption = 'Calcular sal'#225'rio mensal'
    TabOrder = 2
    OnClick = btEnviaClick
  end
end
