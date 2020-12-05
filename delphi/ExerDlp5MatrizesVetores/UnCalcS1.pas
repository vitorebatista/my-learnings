unit UnCalcS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
  A, B, R: Real;
  Codigo: Integer;
  Retorno: String;
begin
  Val(Edit1.Text, A, Codigo);
  Val(Edit2.Text, B, Codigo);
  if RadioButton1.Checked then
    R := A + B;
  if RadioButton2.Checked then
    R := A - B;
  if RadioButton3.Checked then
    R := A * B;
  if RadioButton4.Checked then
    if (B = 0) then
      R := 0
    else
      R := A / B;  
  Str(R:8:2, Retorno);
  Edit3.Text := Retorno;
end;

end.
