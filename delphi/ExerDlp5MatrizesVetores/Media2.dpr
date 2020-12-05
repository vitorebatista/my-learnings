program Media2;

uses
  Forms,
  UnMedia2 in 'UnMedia2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
