object DM: TDM
  OldCreateOrder = False
  Height = 0
  Width = 0
  object TBL_COMODO: TIBTable
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CD_COMODO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DS_COMODO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY11'
        Fields = 'CD_COMODO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'COMODO'
    Left = 48
    Top = 24
    object TBL_COMODOCD_COMODO: TIBStringField
      FieldName = 'CD_COMODO'
      Required = True
      Size = 4
    end
    object TBL_COMODODS_COMODO: TIBStringField
      FieldName = 'DS_COMODO'
      Required = True
    end
  end
  object TBL_TIPOBEM: TIBTable
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CD_TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DS_TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY9'
        Fields = 'CD_TIPO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TIPO_BEM'
    Left = 152
    Top = 24
    object TBL_TIPOBEMCD_TIPO: TIBStringField
      FieldName = 'CD_TIPO'
      Required = True
      Size = 4
    end
    object TBL_TIPOBEMDS_TIPO: TIBStringField
      FieldName = 'DS_TIPO'
      Required = True
    end
  end
  object TBL_AQUISICAO: TIBTable
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CD_AQUISICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DS_AQUISICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'CD_AQUISICAO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'AQUISICAO'
    Left = 248
    Top = 24
    object TBL_AQUISICAOCD_AQUISICAO: TIBStringField
      FieldName = 'CD_AQUISICAO'
      Required = True
      Size = 4
    end
    object TBL_AQUISICAODS_AQUISICAO: TIBStringField
      FieldName = 'DS_AQUISICAO'
      Required = True
    end
  end
  object TBL_PATRIMONIO: TIBTable
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'NR_PATRIMONIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DS_PATRIMONIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CD_TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CD_COMODO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CD_AQUISICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'DT_AQUISICAO'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'VL_PATRIMONIO'
        Attributes = [faRequired]
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY13'
        Fields = 'NR_PATRIMONIO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PATRIMONIO'
    Left = 352
    Top = 24
    object TBL_PATRIMONIONR_PATRIMONIO: TIBStringField
      FieldName = 'NR_PATRIMONIO'
      Required = True
      Size = 4
    end
    object TBL_PATRIMONIODS_PATRIMONIO: TIBStringField
      FieldName = 'DS_PATRIMONIO'
      Required = True
    end
    object TBL_PATRIMONIOCD_TIPO: TIBStringField
      FieldName = 'CD_TIPO'
      Required = True
      Size = 4
    end
    object TBL_PATRIMONIOCD_COMODO: TIBStringField
      FieldName = 'CD_COMODO'
      Required = True
      Size = 4
    end
    object TBL_PATRIMONIOCD_AQUISICAO: TIBStringField
      FieldName = 'CD_AQUISICAO'
      Required = True
      Size = 4
    end
    object TBL_PATRIMONIODT_AQUISICAO: TDateTimeField
      FieldName = 'DT_AQUISICAO'
      Required = True
    end
    object TBL_PATRIMONIOVL_PATRIMONIO: TFloatField
      FieldName = 'VL_PATRIMONIO'
      Required = True
    end
  end
  object Q_COMODO: TIBQuery
    Database = DataBase
    Transaction = IBTransaction
    CachedUpdates = False
    SQL.Strings = (
      'select * from COMODO')
    Left = 40
    Top = 128
    object Q_COMODOCD_COMODO: TIBStringField
      FieldName = 'CD_COMODO'
      Required = True
      Size = 4
    end
    object Q_COMODODS_COMODO: TIBStringField
      FieldName = 'DS_COMODO'
      Required = True
    end
  end
  object Q_TIPOBEM: TIBQuery
    Database = DataBase
    Transaction = IBTransaction
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPO_BEM')
    Left = 144
    Top = 128
    object Q_TIPOBEMCD_TIPO: TIBStringField
      FieldName = 'CD_TIPO'
      Required = True
      Size = 4
    end
    object Q_TIPOBEMDS_TIPO: TIBStringField
      FieldName = 'DS_TIPO'
      Required = True
    end
  end
  object Q_AQUISICAO: TIBQuery
    Database = DataBase
    Transaction = IBTransaction
    CachedUpdates = False
    SQL.Strings = (
      'select * from AQUISICAO')
    Left = 256
    Top = 128
    object Q_AQUISICAOCD_AQUISICAO: TIBStringField
      FieldName = 'CD_AQUISICAO'
      Required = True
      Size = 4
    end
    object Q_AQUISICAODS_AQUISICAO: TIBStringField
      FieldName = 'DS_AQUISICAO'
      Required = True
    end
  end
  object Q_PATRIMONIO: TIBQuery
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    SQL.Strings = (
      'select * from PATRIMONIO')
    Left = 360
    Top = 128
    object Q_PATRIMONIONR_PATRIMONIO: TIBStringField
      FieldName = 'NR_PATRIMONIO'
      Required = True
      Size = 4
    end
    object Q_PATRIMONIODS_PATRIMONIO: TIBStringField
      FieldName = 'DS_PATRIMONIO'
      Required = True
    end
    object Q_PATRIMONIOCD_TIPO: TIBStringField
      FieldName = 'CD_TIPO'
      Required = True
      Size = 4
    end
    object Q_PATRIMONIOCD_COMODO: TIBStringField
      FieldName = 'CD_COMODO'
      Required = True
      Size = 4
    end
    object Q_PATRIMONIOCD_AQUISICAO: TIBStringField
      FieldName = 'CD_AQUISICAO'
      Required = True
      Size = 4
    end
    object Q_PATRIMONIODT_AQUISICAO: TDateTimeField
      FieldName = 'DT_AQUISICAO'
      Required = True
    end
    object Q_PATRIMONIOVL_PATRIMONIO: TFloatField
      FieldName = 'VL_PATRIMONIO'
      Required = True
    end
  end
  object DataBase: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Temp\patrimonioIN230\PATRIMONIO_INTERBASE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 208
    Top = 232
  end
  object TBL_TABELASISTEMA: TIBTable
    Database = DataBase
    Transaction = IBTransaction
    Active = True
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CD_COMODO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CD_TIPO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'CD_AQUISICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NR_PATRIMONIO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 4
      end>
    StoreDefs = True
    TableName = 'TABELA_SISTEMA'
    Left = 480
    Top = 24
    object TBL_TABELASISTEMACD_COMODO: TIBStringField
      FieldName = 'CD_COMODO'
      Required = True
      Size = 4
    end
    object TBL_TABELASISTEMACD_TIPO: TIBStringField
      FieldName = 'CD_TIPO'
      Required = True
      Size = 4
    end
    object TBL_TABELASISTEMACD_AQUISICAO: TIBStringField
      FieldName = 'CD_AQUISICAO'
      Required = True
      Size = 4
    end
    object TBL_TABELASISTEMANR_PATRIMONIO: TIBStringField
      FieldName = 'NR_PATRIMONIO'
      Required = True
      Size = 4
    end
  end
  object IBTransaction: TIBTransaction
    Active = True
    DefaultDatabase = DataBase
    Left = 280
    Top = 232
  end
end
