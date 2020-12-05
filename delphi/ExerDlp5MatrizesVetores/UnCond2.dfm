object Form1: TForm1
  Left = 192
  Top = 106
  Width = 441
  Height = 139
  Caption = 'Decisão Simples II'
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
    Left = 8
    Top = 32
    Width = 196
    Height = 13
    Caption = 'Informe dois valores, um em cada campo:'
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 73
    Height = 13
    Caption = 'Os valores são:'
  end
  object Label3: TLabel
    Left = 112
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 168
    Top = 72
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object Edit1: TEdit
    Left = 224
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 320
    Top = 32
    Width = 97
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 224
    Top = 72
    Width = 193
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
