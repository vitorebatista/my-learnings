program Pequipamentos;

uses
  Forms,
  U_menu in 'U_menu.pas' {F_menu},
  U_DM in 'U_DM.pas' {DM: TDataModule},
  U_Fornec in 'U_Fornec.pas' {Frm_fornec},
  U_Tpservico in 'U_Tpservico.pas' {frm_Tpservico},
  Urelcusto in 'Urelcusto.pas' {Frmrelcusto},
  U_relfornec in 'U_relfornec.pas' {Frm_relfornec},
  U_reltpservico in 'U_reltpservico.pas' {Frm_reltpservico},
  U_MENUREL in 'U_MENUREL.pas' {FRM_MENUREL},
  U_relremessa in 'U_relremessa.pas' {Frm_relremessa},
  U_CCusto in 'U_CCusto.pas' {frm_Ccusto},
  U_remessas in 'U_remessas.pas' {Frm_remessas};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TF_menu, F_menu);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_relfornec, Frm_relfornec);
  Application.CreateForm(TFrm_reltpservico, Frm_reltpservico);
  Application.CreateForm(TFrm_relremessa, Frm_relremessa);
  Application.CreateForm(TFRM_MENUREL, FRM_MENUREL);
  Application.CreateForm(Tfrm_Ccusto, frm_Ccusto);
  
  Application.Run;
end.
