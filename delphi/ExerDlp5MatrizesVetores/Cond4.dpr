program Cond4;

uses
  Forms,
  UnCond4 in 'UnCond4.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
