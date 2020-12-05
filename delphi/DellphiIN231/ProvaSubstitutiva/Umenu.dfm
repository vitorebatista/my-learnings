object FRMmenu: TFRMmenu
  Left = 192
  Top = 107
  Width = 696
  Height = 480
  Caption = 'c'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 169
    Height = 434
    Align = alLeft
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 0
      Top = 24
      Width = 169
      Height = 33
      Caption = '&Livro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = -2
      Top = 64
      Width = 171
      Height = 33
      Caption = '&Autor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = -2
      Top = 104
      Width = 171
      Height = 33
      Caption = '&Editora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = -2
      Top = 192
      Width = 171
      Height = 33
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = -2
      Top = 144
      Width = 171
      Height = 33
      Caption = '&Relatórios'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 192
    object CadastroLivro1: TMenuItem
      Caption = '&Cadastros'
      object CadastroAutor1: TMenuItem
        Caption = 'Cadastro Livro'
        OnClick = CadastroAutor1Click
      end
      object CadastroAutor2: TMenuItem
        Caption = 'Cadastro Autor'
        OnClick = CadastroAutor2Click
      end
      object CadastroEditora1: TMenuItem
        Caption = 'Cadastro Editora'
        OnClick = CadastroEditora1Click
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relatórios'
      object RelatrioLivro1: TMenuItem
        Caption = 'Relatório Livro'
      end
      object RelatrioAutor1: TMenuItem
        Caption = 'Relatório Autor'
      end
      object RelatrioEditora1: TMenuItem
        Caption = 'Relatório Editora'
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
