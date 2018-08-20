object ChildForm1_8: TChildForm1_8
  Left = 0
  Top = 0
  Caption = 'ChildForm1_8'
  ClientHeight = 141
  ClientWidth = 313
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
    Left = 24
    Top = 24
    Width = 135
    Height = 13
    Caption = 'Insira as horas trabalhadas:'
  end
  object Label2: TLabel
    Left = 50
    Top = 43
    Width = 109
    Height = 13
    Caption = 'Insira as horas extras:'
  end
  object Label3: TLabel
    Left = 165
    Top = 70
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 165
    Top = 89
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 165
    Top = 21
    Width = 52
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 165
    Top = 43
    Width = 52
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 223
    Top = 31
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
