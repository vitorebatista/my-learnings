program Nome2;

uses
  Forms,
  UnNome2 in 'UnNome2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
