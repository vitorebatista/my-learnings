program P_CONTROLE;

uses
  Forms,
  U_MENU in 'U_MENU.pas' {FRM_MENU},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_DISCIPLINA in 'U_DISCIPLINA.pas' {FRM_DISCIPLINAS},
  U_TAREFAS in 'U_TAREFAS.pas' {FRM_TAREFAS},
  U_HORARIOS in 'U_HORARIOS.pas' {FRM_HORARIOS},
  U_PROFESSOR in 'U_PROFESSOR.pas' {FRM_PROFESSOR},
  U_AULA in 'U_AULA.pas' {FRM_AULA},
  U_DIAS in 'U_DIAS.pas' {FRM_DIAS},
  U_MENU_RELATORIOS in 'U_MENU_RELATORIOS.pas' {FRM_MENU_RELATORIOS},
  U_REL_DISCIPLINAS in 'U_REL_DISCIPLINAS.pas' {FRM_REL_DISCIPLINAS},
  U_REL_PROFESSORES in 'U_REL_PROFESSORES.pas' {FRM_REL_PROFESSORES},
  U_REL_TAREFAS in 'U_REL_TAREFAS.pas' {FRM_REL_TAREFAS},
  U_ATIVIDADES in 'U_ATIVIDADES.pas' {FRM_ATIVIDADES};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFRM_REL_PROFESSORES, FRM_REL_PROFESSORES);
  Application.CreateForm(TFRM_REL_TAREFAS, FRM_REL_TAREFAS);
  Application.CreateForm(TFRM_ATIVIDADES, FRM_ATIVIDADES);
  Application.Run;
end.
