program Case1;

uses
  Forms,
  UnCase1 in 'UnCase1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
