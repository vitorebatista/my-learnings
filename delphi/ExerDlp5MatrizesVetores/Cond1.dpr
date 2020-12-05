program Cond1;

uses
  Forms,
  UnCond1 in 'UnCond1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
