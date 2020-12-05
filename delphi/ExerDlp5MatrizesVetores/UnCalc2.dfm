object Salario: TSalario
  Left = 192
  Top = 107
  Width = 544
  Height = 375
  Caption = 'Cálculo de Salário Líquido'
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
    Top = 16
    Width = 131
    Height = 13
    Caption = 'Quantas horas de trabalho?'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 102
    Height = 13
    Caption = 'Qual o valor da hora?'
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 152
    Height = 13
    Caption = 'Qual o percentual de desconto?'
  end
  object Label4: TLabel
    Left = 8
    Top = 168
    Width = 169
    Height = 33
    Caption = 'Label4'
  end
  object EditHT: TEdit
    Left = 200
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'EditHT'
  end
  object EditVH: TEdit
    Left = 200
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'EditVH'
  end
  object EditPD: TEdit
    Left = 200
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'EditPD'
  end
  object SaLiq: TButton
    Left = 8
    Top = 120
    Width = 313
    Height = 33
    Caption = 'Salário Líquido'
    TabOrder = 3
    OnClick = SaLiqClick
  end
end
