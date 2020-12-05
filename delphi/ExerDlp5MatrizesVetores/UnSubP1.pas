unit UnSubP1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure Fatorial(X: Integer);
var
  I, F: Integer;
begin
  F := 1;
  for I := 1 to X do
    F := F * I;
  Form1.Label2.Caption := IntToStr(F);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  N: Integer;
begin
  N := StrToInt(Edit1.Text);
  Fatorial(N);
  Edit1.SetFocus;
end;

end.
