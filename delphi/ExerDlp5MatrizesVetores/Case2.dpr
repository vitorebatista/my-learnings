program Case2;

uses
  Forms,
  UnCase2 in 'UnCase2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
