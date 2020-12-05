program Pmsn;

uses
  Forms,
  Ulogin in 'Ulogin.pas' {FRMmsn},
  Ubd in 'Ubd.pas' {DM: TDataModule},
  Uconv in 'Uconv.pas' {FRMconv};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFRMmsn, FRMmsn);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
