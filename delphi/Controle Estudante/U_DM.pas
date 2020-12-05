unit U_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    Q_DISCIPLINAS: TQuery;
    Q_TAREFAS: TQuery;
    Q_HORARIOS: TQuery;
    Q_PROFESSOR: TQuery;
    Q_AULA: TQuery;
    Q_DIAS: TQuery;
    DS_DISCIPLINAS: TDataSource;
    DS_TAREFAS: TDataSource;
    DS_HORARIOS: TDataSource;
    DS_PROFESSOR: TDataSource;
    DS_AULA: TDataSource;
    DS_DIAS: TDataSource;
    CONTROLE: TDatabase;
    Q_DISCIPLINAScod_disciplina: TIntegerField;
    Q_DISCIPLINASnome_disciplina: TStringField;
    Q_TAREFAScod_tarefa: TIntegerField;
    Q_TAREFAScod_disciplina: TIntegerField;
    Q_TAREFASdescricao_tarefa: TStringField;
    Q_HORARIOScod_horario: TIntegerField;
    Q_PROFESSORcod_professor: TIntegerField;
    Q_PROFESSORcod_disciplina: TIntegerField;
    Q_PROFESSORtel_professor: TIntegerField;
    Q_PROFESSORemail_professor: TStringField;
    Q_AULAcod_horario: TIntegerField;
    Q_AULAcod_dia: TIntegerField;
    Q_DIAScod_dia: TIntegerField;
    Q_DIASdescricao_dia: TStringField;
    Q_DISCIPLINASsigla_disciplina: TStringField;
    Q_PROFESSORnome_professor: TStringField;
    Q_TAREFASdata_realizacao: TDateTimeField;
    Q_HORARIOSperiodo_horario: TStringField;
    Q_HORARIOShora_inicial: TStringField;
    Q_HORARIOShora_final: TStringField;
    Q_AULAcod_disciplina: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

end.
