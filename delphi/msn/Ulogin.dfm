object FRMmsn: TFRMmsn
  Left = 350
  Top = 131
  Width = 278
  Height = 333
  Caption = 'Parrudu messenger'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlprinc: TPanel
    Left = 16
    Top = 8
    Width = 241
    Height = 281
    Color = clBackground
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 167
      Height = 24
      Caption = 'Parrudu messenger'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 64
      Width = 106
      Height = 16
      Caption = 'Nome de usuário:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 104
      Top = 120
      Width = 42
      Height = 16
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BTNconect: TButton
      Left = 96
      Top = 184
      Width = 65
      Height = 33
      Caption = 'Conectar'
      TabOrder = 0
      OnClick = BTNconectClick
      OnExit = BTNconectExit
    end
    object Edit1: TEdit
      Left = 48
      Top = 136
      Width = 153
      Height = 21
      TabOrder = 1
      OnExit = Edit1Exit
    end
    object Edit2: TEdit
      Left = 48
      Top = 80
      Width = 153
      Height = 21
      TabOrder = 2
      OnExit = Edit2Exit
    end
  end
end
