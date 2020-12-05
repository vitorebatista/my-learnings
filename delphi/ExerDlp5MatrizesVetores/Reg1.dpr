program Reg1;

uses
  Forms,
  UnReg1 in 'UnReg1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
