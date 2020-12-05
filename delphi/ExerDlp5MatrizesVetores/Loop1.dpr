program Loop1;

uses
  Forms,
  UnLoop1 in 'UnLoop1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
