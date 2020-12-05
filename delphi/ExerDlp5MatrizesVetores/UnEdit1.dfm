object Form1: TForm1
  Left = 194
  Top = 103
  Width = 544
  Height = 376
  Caption = 'Meu Editor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = LimpaTexto
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 536
    Height = 330
    Align = alClient
    Lines.Strings = (
      'RichEdit1')
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object OpenDialog1: TOpenDialog
    Filter = 
      'Arquivos Exemplo (*.xxx)|*.xxx|Arquivos Texto (*.txt)|*.txt|Todo' +
      's os Arquivos (*.*)|*.*'
    Left = 136
    Top = 72
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Arquivos Exemplo (*.xxx)|*.xxx|Arquivos Texto (*.txt)|*.txt|Todo' +
      's os Arquivos (*.*)|*.*'
    Left = 176
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 72
    object Arquivo1: TMenuItem
      Caption = '&Arquivo'
      object Novo1: TMenuItem
        Caption = '&Novo'
        ShortCut = 16463
        OnClick = Novo1Click
      end
      object Abrir1: TMenuItem
        Caption = 'A&brir'
        ShortCut = 16449
        OnClick = Abrir1Click
      end
      object Salvar1: TMenuItem
        Caption = '&Salvar'
        ShortCut = 16467
        OnClick = Salvar1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sai&r'
        OnClick = Sair1Click
      end
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      object Recortar1: TMenuItem
        Caption = '&Recortar'
        ShortCut = 16472
        OnClick = Recortar1Click
      end
      object Copiar1: TMenuItem
        Caption = '&Copiar'
        ShortCut = 16451
        OnClick = Copiar1Click
      end
      object Colar1: TMenuItem
        Caption = 'C&olar'
        ShortCut = 16470
        OnClick = Colar1Click
      end
    end
  end
end
