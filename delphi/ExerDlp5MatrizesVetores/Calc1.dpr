program Calc1;

uses
  Forms,
  UnCalc1 in 'UnCalc1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
