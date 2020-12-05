object DM: TDM
  OldCreateOrder = False
  Left = 144
  Top = 100
  Height = 406
  Width = 654
  object Q_DISCIPLINAS: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DISCIPLINAS')
    Left = 56
    Top = 64
    object Q_DISCIPLINASnome_disciplina: TStringField
      FieldName = 'nome_disciplina'
      Origin = 'CONTROLE.Disciplinas.nome_disciplina'
      Size = 50
    end
    object Q_DISCIPLINAScod_disciplina: TIntegerField
      FieldName = 'cod_disciplina'
      Origin = 'CONTROLE.Disciplinas.cod_disciplina'
    end
    object Q_DISCIPLINASsigla_disciplina: TStringField
      FieldName = 'sigla_disciplina'
      Origin = 'CONTROLE.Disciplinas.sigla_disciplina'
      Size = 10
    end
  end
  object Q_TAREFAS: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM TAREFA')
    Left = 272
    Top = 64
    object Q_TAREFAScod_tarefa: TIntegerField
      FieldName = 'cod_tarefa'
      Origin = 'CONTROLE.Tarefa.cod_tarefa'
    end
    object Q_TAREFAScod_disciplina: TIntegerField
      FieldName = 'cod_disciplina'
      Origin = 'CONTROLE.Tarefa.cod_disciplina'
    end
    object Q_TAREFASdescricao_tarefa: TStringField
      FieldName = 'descricao_tarefa'
      Origin = 'CONTROLE.Tarefa.descricao_tarefa'
      Size = 70
    end
    object Q_TAREFASdata_realizacao: TDateTimeField
      FieldName = 'data_realizacao'
      Origin = 'CONTROLE.Tarefa.data_realizacao'
      EditMask = '!99/99/00;1;_'
    end
  end
  object Q_HORARIOS: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM HORARIOS')
    Left = 368
    Top = 64
    object Q_HORARIOScod_horario: TIntegerField
      FieldName = 'cod_horario'
      Origin = 'CONTROLE.Horarios.cod_horario'
    end
    object Q_HORARIOSperiodo_horario: TStringField
      FieldName = 'periodo_horario'
      Origin = 'CONTROLE.Horarios.periodo_horario'
      Size = 15
    end
    object Q_HORARIOShora_inicial: TStringField
      FieldName = 'hora_inicial'
      Origin = 'CONTROLE.Horarios.hora_inicial'
      EditMask = '!90:00;1;_'
      Size = 50
    end
    object Q_HORARIOShora_final: TStringField
      FieldName = 'hora_final'
      Origin = 'CONTROLE.Horarios.hora_final'
      EditMask = '!90:00;1;_'
      Size = 50
    end
  end
  object Q_PROFESSOR: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM PROFESSORES')
    Left = 176
    Top = 64
    object Q_PROFESSORcod_professor: TIntegerField
      FieldName = 'cod_professor'
      Origin = 'CONTROLE.Professores.cod_professor'
    end
    object Q_PROFESSORcod_disciplina: TIntegerField
      FieldName = 'cod_disciplina'
      Origin = 'CONTROLE.Professores.cod_disciplina'
    end
    object Q_PROFESSORtel_professor: TIntegerField
      FieldName = 'tel_professor'
      Origin = 'CONTROLE.Professores.tel_professor'
    end
    object Q_PROFESSORemail_professor: TStringField
      FieldName = 'email_professor'
      Origin = 'CONTROLE.Professores.email_professor'
      Size = 50
    end
    object Q_PROFESSORnome_professor: TStringField
      FieldName = 'nome_professor'
      Origin = 'CONTROLE.Professores.nome_professor'
      Size = 50
    end
  end
  object Q_AULA: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM AULA')
    Left = 544
    Top = 64
    object Q_AULAcod_horario: TIntegerField
      FieldName = 'cod_horario'
      Origin = 'CONTROLE.Aula.cod_horario'
    end
    object Q_AULAcod_dia: TIntegerField
      FieldName = 'cod_dia'
      Origin = 'CONTROLE.Aula.cod_dia'
    end
    object Q_AULAcod_disciplina: TIntegerField
      FieldName = 'cod_disciplina'
      Origin = 'CONTROLE.Aula.cod_disciplina'
    end
  end
  object Q_DIAS: TQuery
    Active = True
    DatabaseName = 'CONTROLE'
    RequestLive = True
    SQL.Strings = (
      'SELECT * FROM DIAS')
    Left = 464
    Top = 64
    object Q_DIAScod_dia: TIntegerField
      FieldName = 'cod_dia'
      Origin = 'CONTROLE.Dias.cod_dia'
    end
    object Q_DIASdescricao_dia: TStringField
      FieldName = 'descricao_dia'
      Origin = 'CONTROLE.Dias.descricao_dia'
      Size = 50
    end
  end
  object DS_DISCIPLINAS: TDataSource
    DataSet = Q_DISCIPLINAS
    Left = 64
    Top = 152
  end
  object DS_TAREFAS: TDataSource
    DataSet = Q_TAREFAS
    Left = 272
    Top = 152
  end
  object DS_HORARIOS: TDataSource
    DataSet = Q_HORARIOS
    Left = 368
    Top = 152
  end
  object DS_PROFESSOR: TDataSource
    DataSet = Q_PROFESSOR
    Left = 176
    Top = 152
  end
  object DS_AULA: TDataSource
    DataSet = Q_AULA
    Left = 544
    Top = 152
  end
  object DS_DIAS: TDataSource
    DataSet = Q_DIAS
    Left = 464
    Top = 152
  end
  object CONTROLE: TDatabase
    AliasName = 'CONTROLE'
    Connected = True
    DatabaseName = 'CONTROLE'
    LoginPrompt = False
    SessionName = 'Default'
    Left = 80
    Top = 280
  end
end
