program Calc2;

uses
  Forms,
  UnCalc2 in 'UnCalc2.pas' {Salario};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TSalario, Salario);
  Application.Run;
end.
