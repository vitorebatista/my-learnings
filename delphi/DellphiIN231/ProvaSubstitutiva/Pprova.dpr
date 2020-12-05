program Pprova;

uses
  Forms,
  Umenu in 'Umenu.pas' {FRMmenu},
  UDM in 'UDM.pas' {DM: TDataModule},
  Ulivro in 'Ulivro.pas' {FRMlivro},
  Uautor in 'Uautor.pas' {FRMautor},
  Ueditora in 'Ueditora.pas' {FRMeditora},
  URelGerais in 'URelGerais.pas' {FrmRelGeral},
  UPesqLivros in 'UPesqLivros.pas' {FrmPesqLivro};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRMmenu, FRMmenu);
  Application.CreateForm(TDM, DM);
 

  Application.Run;
end.
