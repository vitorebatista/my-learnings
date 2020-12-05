program SubP1;

uses
  Forms,
  UnSubP1 in 'UnSubP1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
