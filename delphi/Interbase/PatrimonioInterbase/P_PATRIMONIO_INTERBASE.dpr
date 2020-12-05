program P_PATRIMONIO_INTERBASE;

uses
  Forms,
  U_MENU in 'U_MENU.pas' {FRM_MENU},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_COMODO in 'U_COMODO.pas' {FRM_COMODO},
  U_AQUISICAO in 'U_AQUISICAO.pas' {FRM_AQUISICAO},
  U_TIPOBEM in 'U_TIPOBEM.pas' {FRM_TIPOBEM},
  U_ROTINASGENERICAS in 'U_ROTINASGENERICAS.pas',
  U_GLOBAL in 'U_GLOBAL.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFRM_COMODO, FRM_COMODO);
  Application.CreateForm(TFRM_AQUISICAO, FRM_AQUISICAO);
  Application.CreateForm(TFRM_TIPOBEM, FRM_TIPOBEM);
  Application.Run;
end.
