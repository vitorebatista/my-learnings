program SubF2;

uses
  Forms,
  UnSubF2 in 'UnSubF2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
