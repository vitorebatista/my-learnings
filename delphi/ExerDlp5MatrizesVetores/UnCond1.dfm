object Form1: TForm1
  Left = 192
  Top = 107
  Width = 358
  Height = 152
  Caption = 'Desvio Condicional Simples'
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
    Width = 176
    Height = 13
    Caption = 'Informe um valor para a variável <A>:'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 176
    Height = 13
    Caption = 'Informe um valor para a variável <B>:'
  end
  object Label3: TLabel
    Left = 112
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 216
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 216
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 16
    Top = 80
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
