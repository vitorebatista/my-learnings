object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object Q_Onibus: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Onibus')
    Left = 24
    Top = 24
    object Q_OnibusCd_Onibus: TIntegerField
      FieldName = 'Cd_Onibus'
      Origin = 'BASE.Onibus.Cd_Onibus'
    end
    object Q_OnibusModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'BASE.Onibus.Modelo'
      Size = 35
    end
    object Q_OnibusCd_Fabri: TIntegerField
      FieldName = 'Cd_Fabri'
      Origin = 'BASE.Onibus.Cd_Fabri'
    end
    object Q_OnibusData_Fabri: TDateTimeField
      FieldName = 'Data_Fabri'
      Origin = 'BASE.Onibus.Data_Fabri'
      EditMask = '99/99/9999'
    end
    object Q_OnibusCd_cor: TIntegerField
      FieldName = 'Cd_cor'
      Origin = 'BASE.Onibus.Cd_cor'
    end
    object Q_OnibusQuant_Lugares: TIntegerField
      FieldName = 'Quant_Lugares'
      Origin = 'BASE.Onibus.Quant_Lugares'
    end
    object Q_OnibusVL_Pago: TFloatField
      FieldName = 'VL_Pago'
      Origin = 'BASE.Onibus.VL_Pago'
      currency = True
    end
  end
  object Q_Cor: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Cor')
    Left = 24
    Top = 88
    object Q_CorCd_Cor: TIntegerField
      FieldName = 'Cd_Cor'
      Origin = 'BASE.Cor.Cd_Cor'
    end
    object Q_CorDs_Cor: TStringField
      FieldName = 'Ds_Cor'
      Origin = 'BASE.Cor.Ds_Cor'
      Size = 30
    end
  end
  object Q_Fabri: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Fabricante')
    Left = 24
    Top = 160
    object Q_FabriCD_Fabri: TIntegerField
      FieldName = 'CD_Fabri'
      Origin = 'BASE.Fabricante.CD_Fabri'
    end
    object Q_FabriDs_Fabri: TStringField
      FieldName = 'Ds_Fabri'
      Origin = 'BASE.Fabricante.Ds_Fabri'
      Size = 35
    end
  end
  object Ds_Onibus: TDataSource
    DataSet = Q_Onibus
    Left = 80
    Top = 24
  end
  object Ds_Cor: TDataSource
    DataSet = Q_Cor
    Left = 80
    Top = 96
  end
  object Ds_Fabri: TDataSource
    DataSet = Q_Fabri
    Left = 80
    Top = 160
  end
  object Base: TDatabase
    AliasName = 'CanIn131Prova'
    Connected = True
    DatabaseName = 'Base'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 184
    Top = 56
  end
end
