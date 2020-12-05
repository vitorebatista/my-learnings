object Form1: TForm1
  Left = 323
  Top = 117
  Width = 524
  Height = 361
  Caption = 'Calculadora de Indice Corporal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_imc: TLabel
    Left = 206
    Top = 184
    Width = 186
    Height = 13
    Color = clHighlightText
    ParentColor = False
  end
  object Label2: TLabel
    Left = 104
    Top = 80
    Width = 84
    Height = 13
    Caption = 'Informe seu nome'
  end
  object Label3: TLabel
    Left = 104
    Top = 112
    Width = 81
    Height = 13
    Caption = 'Informe seu peso'
  end
  object Label4: TLabel
    Left = 192
    Top = 24
    Width = 120
    Height = 13
    Caption = 'Índice de Massa Corporal'
  end
  object Label5: TLabel
    Left = 104
    Top = 144
    Width = 84
    Height = 13
    Caption = 'Informe sua altura'
  end
  object Edt_nome: TEdit
    Left = 200
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edt_peso: TEdit
    Left = 200
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Sexo: TRadioGroup
    Left = 336
    Top = 64
    Width = 97
    Height = 89
    Caption = 'Sexo'
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 2
  end
  object Edt_altura: TEdit
    Left = 200
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 200
    Top = 248
    Width = 57
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 248
    Width = 57
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 328
    Top = 248
    Width = 57
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = Button3Click
  end
end
