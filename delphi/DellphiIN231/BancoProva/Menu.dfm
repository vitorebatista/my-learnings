object FrmMenu: TFrmMenu
  Left = 242
  Top = 193
  Width = 629
  Height = 430
  Caption = 'Menu Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 32
    Top = 32
    Width = 153
    Height = 41
    Caption = 'Cad. Onibus'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 32
    Top = 112
    Width = 153
    Height = 41
    Caption = 'Cad. Fabricante'
    Flat = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 32
    Top = 184
    Width = 153
    Height = 41
    Caption = 'Cad. Cor'
    Flat = True
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 32
    Top = 328
    Width = 153
    Height = 41
    Caption = 'Relatórios'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton4Click
  end
end
