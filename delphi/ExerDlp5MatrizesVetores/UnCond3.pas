unit UnCond3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
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
  A, B, R: Integer;
begin
  A := StrToInt(Edit1.Text);
  B := StrToInt(Edit2.Text);
  R := A + B;
  if (R >= 10) then
    ShowMessage('Resultado = ' + IntToStr(R + 5))
  else
    ShowMessage('Resultado = ' + IntToStr(R - 7));
  Edit1.SetFocus;
end;

end.
