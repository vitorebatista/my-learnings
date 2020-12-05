object DM: TDM
  OldCreateOrder = False
  Left = 420
  Top = 115
  Height = 480
  Width = 696
  object Base: TDatabase
    AliasName = 'AliasProva'
    Connected = True
    DatabaseName = 'Base'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 160
    Top = 280
  end
  object DS_editora: TDataSource
    DataSet = TEditora
    Left = 208
    Top = 56
  end
  object DS_autor: TDataSource
    DataSet = TAutor
    Left = 208
    Top = 104
  end
  object DS_livro: TDataSource
    DataSet = TLivro
    Left = 208
    Top = 160
  end
  object TEditora: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Editora')
    Left = 32
    Top = 48
    object TEditoraCd_Editora: TIntegerField
      FieldName = 'Cd_Editora'
      Origin = 'BASE.Editora.Cd_Editora'
    end
    object TEditoraNm_Editora: TStringField
      FieldName = 'Nm_Editora'
      Origin = 'BASE.Editora.Nm_Editora'
      Size = 30
    end
  end
  object TAutor: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Autor')
    Left = 32
    Top = 112
    object TAutorCd_Autor: TIntegerField
      FieldName = 'Cd_Autor'
      Origin = 'BASE.Autor.Cd_Autor'
    end
    object TAutorNm_Autor: TStringField
      FieldName = 'Nm_Autor'
      Origin = 'BASE.Autor.Nm_Autor'
      Size = 30
    end
  end
  object TLivro: TQuery
    Active = True
    DatabaseName = 'Base'
    RequestLive = True
    SQL.Strings = (
      'Select * From Livro')
    Left = 32
    Top = 176
    object TLivroCd_livro: TIntegerField
      FieldName = 'Cd_livro'
      Origin = 'BASE.Livro.Cd_livro'
    end
    object TLivroNm_livro: TStringField
      FieldName = 'Nm_livro'
      Origin = 'BASE.Livro.Nm_livro'
      Size = 30
    end
    object TLivroNE_livro: TStringField
      FieldName = 'NE_livro'
      Origin = 'BASE.Livro.NE_livro'
    end
    object TLivroAE_livro: TStringField
      FieldName = 'AE_livro'
      Origin = 'BASE.Livro.AE_livro'
      Size = 6
    end
    object TLivroCD_Autor: TIntegerField
      FieldName = 'CD_Autor'
      Origin = 'BASE.Livro.CD_Autor'
    end
    object TLivroCD_Editora: TIntegerField
      FieldName = 'CD_Editora'
      Origin = 'BASE.Livro.CD_Editora'
    end
    object TLivroDT_Entrada: TDateTimeField
      FieldName = 'DT_Entrada'
      Origin = 'BASE.Livro.DT_Entrada'
      EditMask = '99/99/9999'
    end
    object TLivroQTd_Livro: TIntegerField
      FieldName = 'QTd_Livro'
      Origin = 'BASE.Livro.QTd_Livro'
    end
  end
end
