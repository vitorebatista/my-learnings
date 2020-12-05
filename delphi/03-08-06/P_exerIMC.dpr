program P_exerIMC;

uses
  Forms,
  U_IMC in 'C:\Temp\Nova pasta\U_IMC.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'IMC';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
