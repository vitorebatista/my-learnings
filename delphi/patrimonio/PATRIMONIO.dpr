program PATRIMONIO;

uses
  Forms,
  U_MENU in 'U_MENU.pas' {FRM_MENU},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_PATRI in 'U_PATRI.pas' {FRM_PATRI},
  U_AQUI in 'U_AQUI.pas' {Frm_Aqui},
  U_COMO in 'U_COMO.pas' {FRM_COMO},
  U_TIPO in 'U_TIPO.pas' {FRM_TIPO},
  U_RELCOMODO in 'U_RELCOMODO.pas' {frm_relcomodo},
  U_RELTIPO in 'U_RELTIPO.pas' {FRM_RELTIPO},
  U_RELAQUI in 'U_RELAQUI.pas' {FRM_RELAQUI},
  U_RELPATRI in 'U_RELPATRI.pas' {FRM_RELPATRI},
  U_MENUREL in 'U_MENUREL.pas' {FRM_MENUREL};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_relcomodo, frm_relcomodo);
  Application.CreateForm(TFRM_RELTIPO, FRM_RELTIPO);
  Application.CreateForm(TFRM_RELAQUI, FRM_RELAQUI);
  Application.CreateForm(TFRM_RELPATRI, FRM_RELPATRI);
  Application.CreateForm(TFRM_MENUREL, FRM_MENUREL);
  Application.Run;
end.
