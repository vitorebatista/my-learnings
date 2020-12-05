object Form1: TForm1
  Left = 192
  Top = 107
  Width = 276
  Height = 224
  Caption = 'Efeito Pisca-Pisca'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 77
    Height = 13
    Caption = 'Entre seu nome:'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 103
    Height = 13
    Caption = 'Entre seu sobrenome:'
  end
  object EspLabel1: TEspLabel
    Left = 16
    Top = 152
    Width = 3
    Height = 13
    Visible = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 128
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
