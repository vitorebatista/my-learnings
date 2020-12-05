unit UnCond6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  A, B, C, X: Real;
  Codigo1, Codigo2, Codigo3: Integer;
  Retorno: String;
begin
  Val(Edit1.Text, A, Codigo1);
  Val(Edit2.Text, B, Codigo2);
  Val(Edit3.Text, X, Codigo3);
  if not (X > 5) then
    C := (A + B) * X
  else
    C := (A - B) * X;
  Str(C:8:2, Retorno);
  ShowMessage('O resultado de C é: ' + Retorno);
  Edit1.SetFocus;
end;

end.
