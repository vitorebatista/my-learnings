object FRM_CALC: TFRM_CALC
  Left = 515
  Top = 338
  Width = 394
  Height = 227
  Caption = 'FRM_CALC'
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
    Left = 24
    Top = 32
    Width = 82
    Height = 13
    Caption = 'Digite um numero'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 92
    Height = 13
    Caption = 'Digite outro número'
  end
  object LBL_RESULT: TLabel
    Left = 131
    Top = 136
    Width = 3
    Height = 13
    Color = clBtnHighlight
    ParentColor = False
    WordWrap = True
  end
  object EDT_NUM1: TEdit
    Left = 136
    Top = 32
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object EDT_NUM2: TEdit
    Left = 136
    Top = 72
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 136
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Limpar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 168
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 104
    Width = 33
    Height = 25
    Caption = '+'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 176
    Top = 104
    Width = 33
    Height = 25
    Caption = '-'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 216
    Top = 104
    Width = 33
    Height = 25
    Caption = '*'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 256
    Top = 104
    Width = 33
    Height = 25
    Caption = '/'
    TabOrder = 7
    OnClick = Button6Click
  end
end
