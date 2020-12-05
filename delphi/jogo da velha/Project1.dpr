program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Uvenc in 'Uvenc.pas' {FRM_venc},
  Umenu in 'Umenu.pas' {FRM_menu},
  Uopc in 'icones\Uopc.pas' {FRm_opt};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFRM_menu, FRM_menu);
  Application.CreateForm(TFRM_venc, FRM_venc);
  Application.Run;
end.
