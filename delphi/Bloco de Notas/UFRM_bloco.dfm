object FRM_bloco: TFRM_bloco
  Left = 206
  Top = 131
  Width = 696
  Height = 480
  Caption = 'FRM_bloco'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 688
    Height = 434
    Align = alClient
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 56
    object Arquivo: TMenuItem
      Caption = '&Arquivo'
      object Abrir1: TMenuItem
        Caption = '&Abrir'
        ShortCut = 16463
      end
      object Novo1: TMenuItem
        Caption = '&Novo'
        ShortCut = 16449
      end
      object Salvar1: TMenuItem
        Caption = '&Salvar'
        ShortCut = 16467
      end
      object SalvarComo1: TMenuItem
        Caption = '&Salvar Como'
      end
      object ConfigurarPagina1: TMenuItem
        Caption = '&Configurar Pagina'
      end
      object Imprimir1: TMenuItem
        Caption = '&Imprimir'
        ShortCut = 16464
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        ShortCut = 8307
      end
    end
    object Editar1: TMenuItem
      Caption = '&Editar'
      object Desfazer1: TMenuItem
        Caption = '&Desfazer'
        ShortCut = 16474
      end
      object Copiar1: TMenuItem
        Caption = '&Copiar'
        ShortCut = 16451
      end
      object Colar1: TMenuItem
        Caption = '&Colar'
        ShortCut = 16470
      end
      object Recortar1: TMenuItem
        Caption = '&Recortar'
        ShortCut = 16472
      end
      object Excluir1: TMenuItem
        Caption = '&Excluir'
        ShortCut = 46
      end
    end
    object Formatar1: TMenuItem
      Caption = '&Formatar'
      object QuebraAutomaticadelinha1: TMenuItem
        Caption = '&Quebra Automatica de linha'
      end
      object Fonte1: TMenuItem
        Caption = '&Fonte'
        object Fonte2: TMenuItem
          Caption = '&Fonte...'
        end
        object Cor1: TMenuItem
          Caption = '&Cor'
        end
        object Negrito1: TMenuItem
          Caption = '&Negrito'
        end
        object Italico1: TMenuItem
          Caption = '&Italico'
        end
      end
    end
    object Exibir1: TMenuItem
      Caption = '&Exibir'
      object BarraDeStatus1: TMenuItem
        Caption = '&Barra De Status'
      end
    end
    object Ajuda1: TMenuItem
      Caption = '&Ajuda'
      object TopicosdaAjuda1: TMenuItem
        Caption = '&Topicos da Ajuda'
      end
      object Sobreoblocodenotas1: TMenuItem
        Caption = '&Sobre o bloco de notas'
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 56
  end
  object SaveDialog1: TSaveDialog
    Left = 152
    Top = 56
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 224
    Top = 56
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Left = 280
    Top = 56
  end
end
