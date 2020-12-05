program Reg3;

uses
  Forms,
  UnReg3 in 'UnReg3.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
