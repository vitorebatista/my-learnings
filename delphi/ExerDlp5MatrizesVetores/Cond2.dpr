program Cond2;

uses
  Forms,
  UnCond2 in 'UnCond2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
