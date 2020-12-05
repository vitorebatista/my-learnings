program Loop3;

uses
  Forms,
  UnLoop3 in 'UnLoop3.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
