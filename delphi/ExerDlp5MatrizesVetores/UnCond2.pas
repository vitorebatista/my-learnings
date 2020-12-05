unit UnCond2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
  X, A, B: Integer;
begin
  A := StrToInt(Edit1.Text);
  B := StrToInt(Edit2.Text);
  if (A > B) then
    begin
      X := A;
      A := B;
      B := X;
    end;
  Label3.Caption := IntToStr(A);
  Label4.Caption := IntToStr(B);
  Edit1.SetFocus;
end;

end.
