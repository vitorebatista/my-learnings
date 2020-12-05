object Form1: TForm1
  Left = 192
  Top = 106
  Width = 353
  Height = 176
  Caption = 'Desvio Condicional Composto'
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
    Top = 24
    Width = 176
    Height = 13
    Caption = 'Informe um valor para a variável <A>:'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 176
    Height = 13
    Caption = 'Informe um valor para a variável <B>:'
  end
  object Edit1: TEdit
    Left = 208
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 208
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 135
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Processar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
