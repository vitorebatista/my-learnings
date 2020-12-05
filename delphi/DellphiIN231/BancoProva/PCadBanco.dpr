program PCadBanco;

uses
  Forms,
  Menu in 'Menu.pas' {FrmMenu},
  UOnibus in 'UOnibus.pas' {FrmOnibus},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCor in 'UCor.pas' {FrmCor},
  UFabri in 'UFabri.pas' {FrmFabri},
  URelGerais in 'URelGerais.pas' {FrmRel},
  UPesqUnibus in 'UPesqUnibus.pas' {FrmPesqOnibus};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TDM, DM);

  Application.Run;
end.
