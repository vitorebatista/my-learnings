object DM: TDM
  OldCreateOrder = False
  Left = 320
  Top = 184
  Height = 480
  Width = 696
  object DB1: TDatabase
    AliasName = 'login'
    Connected = True
    DatabaseName = 'login'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 96
    Top = 16
  end
  object Q_login: TQuery
    Active = True
    DatabaseName = 'login'
    RequestLive = True
    SQL.Strings = (
      'select * from login'
      '')
    Left = 48
    Top = 112
    object Q_loginusuario: TStringField
      FieldName = 'usuario'
      Origin = 'LOGIN.login.usuario'
      Size = 25
    end
    object Q_loginsenha: TStringField
      FieldName = 'senha'
      Origin = 'LOGIN.login.senha'
    end
  end
  object DS1: TDataSource
    DataSet = Q_login
    Left = 48
    Top = 64
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'login'
    FieldDefs = <
      item
        Name = 'usuario'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'senha'
        DataType = ftString
        Size = 40
      end>
    MasterSource = DS1
    StoreDefs = True
    TableName = 'login'
    Left = 128
    Top = 64
    object Table1usuario: TStringField
      FieldName = 'usuario'
      Size = 50
    end
    object Table1senha: TStringField
      FieldName = 'senha'
      Size = 40
    end
  end
end
