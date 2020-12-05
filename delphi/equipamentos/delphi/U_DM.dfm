object DM: TDM
  OldCreateOrder = False
  Left = 61
  Top = 330
  Height = 480
  Width = 696
  object base: TDatabase
    AliasName = 'pequipamentos'
    Connected = True
    DatabaseName = 'base'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 56
    Top = 192
  end
  object Q_CCcusto: TQuery
    Active = True
    DatabaseName = 'base'
    RequestLive = True
    SQL.Strings = (
      'select * from CCusto')
    Left = 56
    Top = 24
    object Q_CCcustods_ccusto: TStringField
      FieldName = 'ds_ccusto'
      Origin = 'BASE.CCusto.ds_ccusto'
      Size = 30
    end
    object Q_CCcustocd_ccusto: TIntegerField
      FieldName = 'cd_ccusto'
      Origin = 'BASE.CCusto.cd_ccusto'
    end
  end
  object DS_CCusto: TDataSource
    DataSet = Q_CCcusto
    Left = 56
    Top = 88
  end
  object Q_Fornec: TQuery
    Active = True
    DatabaseName = 'base'
    RequestLive = True
    SQL.Strings = (
      'select * from Fornec')
    Left = 128
    Top = 24
    object Q_Fornecds_fornecedor: TStringField
      FieldName = 'ds_fornecedor'
      Origin = 'BASE.Fornec.ds_fornecedor'
      Size = 30
    end
    object Q_Forneccd_fornecedor: TIntegerField
      FieldName = 'cd_fornecedor'
      Origin = 'BASE.Fornec.cd_fornecedor'
    end
  end
  object DS_Fornec: TDataSource
    DataSet = Q_Fornec
    Left = 136
    Top = 88
  end
  object Q_remessa: TQuery
    Active = True
    DatabaseName = 'base'
    RequestLive = True
    SQL.Strings = (
      'select * from remessa')
    Left = 208
    Top = 24
    object Q_remessacd_remessa: TIntegerField
      FieldName = 'cd_remessa'
      Origin = 'BASE.remessa.cd_remessa'
    end
    object Q_remessacd_equipamento: TStringField
      FieldName = 'cd_equipamento'
      Origin = 'BASE.remessa.cd_equipamento'
      Size = 10
    end
    object Q_remessads_equipamento: TStringField
      FieldName = 'ds_equipamento'
      Origin = 'BASE.remessa.ds_equipamento'
      Size = 30
    end
    object Q_remessavl_equipamento: TFloatField
      FieldName = 'vl_equipamento'
      Origin = 'BASE.remessa.vl_equipamento'
    end
    object Q_remessanm_responsavel: TStringField
      FieldName = 'nm_responsavel'
      Origin = 'BASE.remessa.nm_responsavel'
      Size = 30
    end
    object Q_remessacd_ccusto: TIntegerField
      FieldName = 'cd_ccusto'
      Origin = 'BASE.remessa.cd_ccusto'
    end
    object Q_remessacd_fornecedor: TIntegerField
      FieldName = 'cd_fornecedor'
      Origin = 'BASE.remessa.cd_fornecedor'
    end
    object Q_remessanm_contato: TStringField
      FieldName = 'nm_contato'
      Origin = 'BASE.remessa.nm_contato'
      Size = 30
    end
    object Q_remessacd_tpservico: TIntegerField
      FieldName = 'cd_tpservico'
      Origin = 'BASE.remessa.cd_tpservico'
    end
    object Q_remessads_servico: TStringField
      FieldName = 'ds_servico'
      Origin = 'BASE.remessa.ds_servico'
      Size = 30
    end
    object Q_remessavl_orcado: TFloatField
      FieldName = 'vl_orcado'
      Origin = 'BASE.remessa.vl_orcado'
    end
    object Q_remessadt_recbto: TDateTimeField
      FieldName = 'dt_recbto'
      Origin = 'BASE.remessa.dt_recbto'
    end
    object Q_remessadt_saida: TDateTimeField
      FieldName = 'dt_saida'
      Origin = 'BASE.remessa.dt_saida'
    end
    object Q_remessanr_sc: TIntegerField
      FieldName = 'nr_sc'
      Origin = 'BASE.remessa.nr_sc'
    end
    object Q_remessadt_retorno: TDateTimeField
      FieldName = 'dt_retorno'
      Origin = 'BASE.remessa.dt_retorno'
    end
  end
  object DS_remessa: TDataSource
    DataSet = Q_remessa
    Left = 208
    Top = 88
  end
  object Q_Tpservico: TQuery
    Active = True
    DatabaseName = 'base'
    RequestLive = True
    SQL.Strings = (
      'select * from Tpservico')
    Left = 280
    Top = 24
    object Q_Tpservicocd_tpservico: TIntegerField
      FieldName = 'cd_tpservico'
      Origin = 'BASE.Tpservico.cd_tpservico'
    end
    object Q_Tpservicods_tpservico: TStringField
      FieldName = 'ds_tpservico'
      Origin = 'BASE.Tpservico.ds_tpservico'
      Size = 30
    end
  end
  object DS_Tpservico: TDataSource
    DataSet = Q_Tpservico
    Left = 280
    Top = 88
  end
end
