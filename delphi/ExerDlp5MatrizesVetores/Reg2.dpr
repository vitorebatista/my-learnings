program Reg2;

uses
  Forms,
  UnReg2 in 'UnReg2.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
