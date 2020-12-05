program Sort3;

uses
  Forms,
  UnSort3 in 'UnSort3.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
