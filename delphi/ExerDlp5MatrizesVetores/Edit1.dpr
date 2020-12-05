program Edit1;

uses
  Forms,
  UnEdit1 in 'UnEdit1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
