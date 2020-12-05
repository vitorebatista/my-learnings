program Cond7;

uses
  Forms,
  UnCond7 in 'UnCond7.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
