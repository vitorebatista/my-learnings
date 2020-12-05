object FrmOnibus: TFrmOnibus
  Left = 272
  Top = 158
  BorderStyle = bsDialog
  Caption = 'FrmOnibus'
  ClientHeight = 499
  ClientWidth = 600
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
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 52
    Height = 13
    Caption = 'Cd_Onibus'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 35
    Height = 13
    Caption = 'Modelo'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 42
    Height = 13
    Caption = 'Cd_Fabri'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 52
    Height = 13
    Caption = 'Data_Fabri'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 34
    Height = 13
    Caption = 'Cd_cor'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 24
    Top = 248
    Width = 73
    Height = 13
    Caption = 'Quant_Lugares'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 24
    Top = 288
    Width = 44
    Height = 13
    Caption = 'VL_Pago'
    FocusControl = DBEdit7
  end
  object SpeedButton1: TSpeedButton
    Left = 104
    Top = 64
    Width = 41
    Height = 22
    Caption = '>>>>>'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 64
    Width = 64
    Height = 21
    DataField = 'Cd_Onibus'
    DataSource = DM.Ds_Onibus
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 104
    Width = 214
    Height = 21
    DataField = 'Modelo'
    DataSource = DM.Ds_Onibus
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 144
    Width = 64
    Height = 21
    DataField = 'Cd_Fabri'
    DataSource = DM.Ds_Onibus
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 184
    Width = 112
    Height = 21
    DataField = 'Data_Fabri'
    DataSource = DM.Ds_Onibus
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 224
    Width = 64
    Height = 21
    DataField = 'Cd_cor'
    DataSource = DM.Ds_Onibus
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 24
    Top = 264
    Width = 64
    Height = 21
    DataField = 'Quant_Lugares'
    DataSource = DM.Ds_Onibus
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 24
    Top = 304
    Width = 105
    Height = 21
    DataField = 'VL_Pago'
    DataSource = DM.Ds_Onibus
    TabOrder = 6
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 600
    Height = 41
    DataSource = DM.Ds_Onibus
    Align = alTop
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 104
    Top = 144
    Width = 145
    Height = 21
    DataField = 'Cd_Fabri'
    DataSource = DM.Ds_Onibus
    KeyField = 'CD_Fabri'
    ListField = 'Ds_Fabri'
    ListSource = DM.Ds_Fabri
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 104
    Top = 224
    Width = 145
    Height = 21
    DataField = 'Cd_cor'
    DataSource = DM.Ds_Onibus
    KeyField = 'Cd_Cor'
    ListField = 'Ds_Cor'
    ListSource = DM.Ds_Cor
    TabOrder = 9
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 379
    Width = 600
    Height = 120
    Align = alBottom
    DataSource = DM.Ds_Onibus
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
