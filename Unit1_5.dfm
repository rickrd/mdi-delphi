object ChildForm1_5: TChildForm1_5
  Left = 0
  Top = 0
  Caption = 'ChildForm1_5'
  ClientHeight = 146
  ClientWidth = 223
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
    Left = 8
    Top = 8
    Width = 156
    Height = 13
    Caption = 'Insira a quantidade de n'#250'meros:'
  end
  object Label2: TLabel
    Left = 8
    Top = 35
    Width = 79
    Height = 13
    Caption = 'Insira o n'#250'mero:'
  end
  object Label4: TLabel
    Left = 88
    Top = 35
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 111
    Top = 89
    Width = 3
    Height = 13
  end
  object Label3: TLabel
    Left = 111
    Top = 108
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 167
    Top = 8
    Width = 39
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 111
    Top = 35
    Width = 39
    Height = 21
    Enabled = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 167
    Top = 35
    Width = 39
    Height = 21
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 111
    Top = 62
    Width = 39
    Height = 21
    Caption = 'Enviar'
    Enabled = False
    TabOrder = 3
    OnClick = Button2Click
  end
end
