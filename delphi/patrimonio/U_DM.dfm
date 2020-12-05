object DM: TDM
  OldCreateOrder = False
  Left = 193
  Top = 187
  Height = 639
  Width = 870
  object DS_PATRI: TDataSource
    DataSet = Q_PATRI
    Left = 56
    Top = 24
  end
  object DS_AQUI: TDataSource
    DataSet = Q_AQUI
    Left = 136
    Top = 24
  end
  object DS_TIPO: TDataSource
    DataSet = Q_TIPO
    Left = 216
    Top = 24
  end
  object DS_COMO: TDataSource
    DataSet = Q_COMO
    Left = 296
    Top = 24
  end
  object Q_PATRI: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PATRIMONIO')
    Left = 56
    Top = 96
    object Q_PATRINr_Patrimonio: TIntegerField
      FieldName = 'Nr_Patrimonio'
      Origin = 'BASE.Patrimonio.Nr_Patrimonio'
    end
    object Q_PATRIDs_Patrimonio: TStringField
      FieldName = 'Ds_Patrimonio'
      Origin = 'BASE.Patrimonio.Ds_Patrimonio'
      Size = 40
    end
    object Q_PATRICd_Tipo: TIntegerField
      FieldName = 'Cd_Tipo'
      Origin = 'BASE.Patrimonio.Cd_Tipo'
    end
    object Q_PATRICd_Comodo: TIntegerField
      FieldName = 'Cd_Comodo'
      Origin = 'BASE.Patrimonio.Cd_Comodo'
    end
    object Q_PATRICd_Aquisicao: TIntegerField
      FieldName = 'Cd_Aquisicao'
      Origin = 'BASE.Patrimonio.Cd_Aquisicao'
    end
    object Q_PATRIDt_Aquisicao: TDateTimeField
      FieldName = 'Dt_Aquisicao'
      Origin = 'BASE.Patrimonio.Dt_Aquisicao'
    end
    object Q_PATRIVl_Patrimonio: TFloatField
      FieldName = 'Vl_Patrimonio'
      Origin = 'BASE.Patrimonio.Vl_Patrimonio'
    end
    object Q_PATRIFoto: TBlobField
      FieldName = 'Foto'
      Origin = 'BASE.Patrimonio.Foto'
      Size = 1
    end
  end
  object Q_AQUI: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Aquisicao')
    Left = 144
    Top = 96
  end
  object Q_TIPO: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Tipo_Bem')
    Left = 216
    Top = 96
    object Q_TIPOCd_Tipo: TIntegerField
      FieldName = 'Cd_Tipo'
      Origin = 'BASE.Tipo_Bem.Cd_Tipo'
    end
    object Q_TIPODs_Tipo: TStringField
      FieldName = 'Ds_Tipo'
      Origin = 'BASE.Tipo_Bem.Ds_Tipo'
      Size = 40
    end
  end
  object Q_COMO: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM Comodo')
    Left = 296
    Top = 96
    object Q_COMOCd_Comodo: TIntegerField
      FieldName = 'Cd_Comodo'
      Origin = 'BASE.Comodo.Cd_Comodo'
    end
    object Q_COMODs_Comodo: TStringField
      FieldName = 'Ds_Comodo'
      Origin = 'BASE.Comodo.Ds_Comodo'
      Size = 40
    end
  end
  object Base: TDatabase
    AliasName = 'IN230'
    Connected = True
    DatabaseName = 'Base'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 56
    Top = 184
  end
end
