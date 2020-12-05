
program Pexer1;

uses
  Forms,
  U_Calc in 'U_Calc.pas' {FRM_CALC},
  U_Menu in 'U_Menu.pas' {FRM_MENU},
  UCores in 'UCores.pas' {FRM_Cores};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_MENU, FRM_MENU);
  Application.CreateForm(TFRM_CALC, FRM_CALC);
  Application.CreateForm(TFRM_Cores, FRM_Cores);
  Application.Run;
end.
