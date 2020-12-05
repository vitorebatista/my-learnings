program Edit2;

uses
  Forms,
  UnEdit2 in 'UnEdit2.pas' {Form1},
  UnEdit2a in 'UnEdit2a.pas' {Form2};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
