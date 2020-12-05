unit UnCond7;

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
   A, B, C : Real;
   Codigo: Integer;
begin
  Val(Edit1.Text, A, Codigo);
  Val(Edit2.Text, B, Codigo);
  Val(Edit3.Text, C, Codigo);
  if (A < B+C) and (B < A+C) and (C < A+B) then
    if (A = B) and (B = C) then
      ShowMessage ('Triângulo Equilátero')
    else
      if (A = B) or (A = C) or (C = B) then
        ShowMessage ('Triângulo Isósceles')
      else
        ShowMessage ('Triângulo Escaleno')
  else
    ShowMessage ('Não é triângulo');
  Edit1.SetFocus;
end;

end.
