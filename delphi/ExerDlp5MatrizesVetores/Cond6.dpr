program Cond6;

uses
  Forms,
  UnCond6 in 'UnCond6.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
