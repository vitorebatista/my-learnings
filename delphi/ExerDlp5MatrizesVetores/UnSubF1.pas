unit UnSubF1;

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

function Fatorial(X: Integer): Integer;
var
  F, I: Integer;
begin
  F := 1;
  for I := 1 to X do
    F := F * I;
  Fatorial := F;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  N: Integer;
begin
  N := StrToInt(Edit1.Text);
  Label2.Caption := IntToStr(Fatorial(N));
  Edit1.SetFocus;
end;

end.
