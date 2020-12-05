object FrmFabri: TFrmFabri
  Left = 230
  Top = 118
  BorderStyle = bsDialog
  Caption = 'Cadastro de Fabricante'
  ClientHeight = 269
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 136
    Width = 539
    Height = 133
    Align = alBottom
    DataSource = DM.Ds_Fabri
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 539
    Height = 25
    DataSource = DM.Ds_Fabri
    Align = alTop
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 48
    Width = 185
    Height = 65
    Caption = 'Ordene'
    Items.Strings = (
      'Codigo'
      'Nome')
    TabOrder = 2
  end
end
