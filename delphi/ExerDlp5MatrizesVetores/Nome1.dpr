program Nome1;

uses
  Forms,
  UnNome1 in 'UnNome1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
