object FrmCor: TFrmCor
  Left = 195
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Cadastro de Cor'
  ClientHeight = 258
  ClientWidth = 476
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
    Top = 120
    Width = 476
    Height = 138
    Align = alBottom
    DataSource = DM.Ds_Cor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cd_Cor'
        Title.Caption = 'Código'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ds_Cor'
        Title.Caption = 'Descrição'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 476
    Height = 25
    DataSource = DM.Ds_Cor
    Align = alTop
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 40
    Width = 185
    Height = 65
    Caption = 'Ordene'
    Items.Strings = (
      'Codigo'
      'Nome')
    TabOrder = 2
  end
end
