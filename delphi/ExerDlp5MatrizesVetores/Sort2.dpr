program Sort2;

uses
  Forms,
  UnSort2 in 'UnSort2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
