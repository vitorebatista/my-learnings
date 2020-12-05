object FRM_Cores: TFRM_Cores
  Left = 258
  Top = 247
  Width = 870
  Height = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PNL_VERMELHO: TPanel
    Left = 160
    Top = 96
    Width = 185
    Height = 41
    TabOrder = 0
    Visible = False
  end
  object PNL_BRANCO: TPanel
    Left = 160
    Top = 176
    Width = 185
    Height = 41
    TabOrder = 1
    Visible = False
  end
  object PNL_PRETO: TPanel
    Left = 160
    Top = 256
    Width = 185
    Height = 41
    TabOrder = 2
    Visible = False
  end
  object RDG_CORES: TRadioGroup
    Left = 432
    Top = 64
    Width = 185
    Height = 289
    Caption = 'RDG_CORES'
    Items.Strings = (
      'Vermelho'
      'Branco'
      'Preto')
    TabOrder = 3
    OnClick = RDG_CORESClick
  end
  object Button1: TButton
    Left = 488
    Top = 392
    Width = 75
    Height = 25
    Caption = 'SAIR'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 488
    Top = 360
    Width = 75
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 5
    OnClick = Button2Click
  end
end
