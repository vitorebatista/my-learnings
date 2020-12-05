object FrmPesqLivro: TFrmPesqLivro
  Left = 192
  Top = 133
  Width = 414
  Height = 414
  Caption = 'Pesquisa de Livros'
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
    Width = 43
    Height = 13
    Caption = 'Pesquisa'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 168
    Width = 406
    Height = 219
    Align = alBottom
    DataSource = DM.DS_livro
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object EdtPesq: TEdit
    Left = 24
    Top = 56
    Width = 337
    Height = 21
    TabOrder = 1
  end
end
