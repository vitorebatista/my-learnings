unit UnSubF2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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

function Compara(A, B: Integer): Boolean;
begin
  Compara := A=B;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  A, B: Integer;
begin
  A := StrToInt(Edit1.Text);
  B := StrToInt(Edit2.Text);
  if Compara(A, B) then
    Label2.Caption := 'São Iguais'
  else
    Label2.Caption := 'São diferentes';
  Edit1.SetFocus;
end;

end.
