program SubP2;

uses
  Forms,
  UnSubP2 in 'UnSubP2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
