program CalcSim1;

uses
  Forms,
  UnCalcS1 in 'UnCalcS1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
