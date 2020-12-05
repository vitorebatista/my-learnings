program Pexercicio2;

uses
  Forms,
  UCores in 'C:\Temp\PRS\28-07-06\EXE-1\UCores.pas' {FRM_Cores},
  UCalc in 'C:\Temp\PRS\28-07-06\EXE-1\UCalc.pas' {FRM_Calc},
  UMenu in 'C:\Temp\PRS\28-07-06\EXE-1\UMenu.pas' {FRMMenu},
  UFRM_menu in 'UFRM_menu.pas' {FRM_menu},
  UFRM_bloco in 'UFRM_bloco.pas' {FRM_bloco},
  UFRM_massa in 'UFRM_massa.pas' {FRM_massa};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_bloco, FRM_bloco);
  Application.CreateForm(TFRM_menu, FRM_menu);
  Application.CreateForm(TFRM_massa, FRM_massa);
  Application.Run;
end.
