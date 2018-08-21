object ChildForm2_3: TChildForm2_3
  Left = 0
  Top = 0
  Caption = 'ChildForm2_3'
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
  object lbNota: TLabel
    Left = 16
    Top = 24
    Width = 178
    Height = 13
    Caption = 'Informe as 6 notas sequencialmente:'
  end
  object lbResultado: TLabel
    Left = 200
    Top = 48
    Width = 46
    Height = 13
    Caption = 'Nota final'
  end
  object edNota: TEdit
    Left = 200
    Top = 21
    Width = 41
    Height = 21
    TabOrder = 0
  end
  object btNota: TButton
    Left = 247
    Top = 21
    Width = 41
    Height = 21
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = btNotaClick
  end
end
