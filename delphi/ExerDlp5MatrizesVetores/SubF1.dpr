program SubF1;

uses
  Forms,
  UnSubF1 in 'UnSubF1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
