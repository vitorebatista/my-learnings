program Cond3;

uses
  Forms,
  UnCond3 in 'UnCond3.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
