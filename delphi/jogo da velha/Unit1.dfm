object Form1: TForm1
  Left = 190
  Top = 112
  Width = 768
  Height = 394
  Caption = 'Jogo da velha - by parrudu corp.'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormCreate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 760
    Height = 41
    Align = alTop
    Color = clWindow
    TabOrder = 0
    object Lbljog: TLabel
      Left = 16
      Top = 8
      Width = 51
      Height = 24
      Caption = 'Lbljog'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 256
      Top = 9
      Width = 63
      Height = 24
      Caption = 'Label4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 456
      Top = 9
      Width = 56
      Height = 24
      Caption = 'Label5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 256
    Top = 88
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Panel1Click
    OnMouseUp = Panel1MouseUp
  end
  object Panel4: TPanel
    Left = 256
    Top = 168
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Panel4Click
    OnMouseUp = Panel4MouseUp
  end
  object Panel5: TPanel
    Left = 344
    Top = 168
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Panel5Click
    OnMouseUp = Panel5MouseUp
  end
  object Panel6: TPanel
    Left = 432
    Top = 168
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Panel6Click
    OnMouseUp = Panel6MouseUp
  end
  object Panel7: TPanel
    Left = 256
    Top = 248
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Panel7Click
    OnMouseUp = Panel7MouseUp
  end
  object Panel8: TPanel
    Left = 344
    Top = 248
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Panel8Click
    OnMouseUp = Panel8MouseUp
  end
  object Panel9: TPanel
    Left = 432
    Top = 248
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Panel9Click
    OnMouseUp = Panel9MouseUp
  end
  object Panel11: TPanel
    Left = 416
    Top = 72
    Width = 17
    Height = 257
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 8
  end
  object Panel12: TPanel
    Left = 328
    Top = 72
    Width = 17
    Height = 257
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 9
  end
  object Panel13: TPanel
    Left = 241
    Top = 152
    Width = 278
    Height = 17
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 10
  end
  object Panel14: TPanel
    Left = 242
    Top = 232
    Width = 275
    Height = 17
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 11
  end
  object Panel15: TPanel
    Left = 240
    Top = 72
    Width = 281
    Height = 17
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 12
  end
  object Panel16: TPanel
    Left = 242
    Top = 312
    Width = 276
    Height = 17
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 13
  end
  object Panel17: TPanel
    Left = 504
    Top = 72
    Width = 17
    Height = 257
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 14
  end
  object Panel18: TPanel
    Left = 240
    Top = 72
    Width = 17
    Height = 257
    BevelOuter = bvNone
    Color = clInactiveCaption
    TabOrder = 15
  end
  object Panel3: TPanel
    Left = 432
    Top = 88
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
    OnClick = Panel3Click
    OnMouseUp = Panel3MouseUp
  end
  object Panel2: TPanel
    Left = 344
    Top = 88
    Width = 73
    Height = 65
    BevelOuter = bvNone
    Color = clInactiveCaptionText
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
    OnClick = Panel2Click
    OnMouseUp = Panel2MouseUp
  end
end
