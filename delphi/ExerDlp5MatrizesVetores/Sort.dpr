program Sort;

uses
  Forms,
  UnSort in 'UnSort.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
