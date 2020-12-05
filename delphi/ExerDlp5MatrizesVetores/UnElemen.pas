unit UnElemen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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

procedure TForm1.Button1Click(Sender: TObject);
var
  A: array[1..5] of Integer;
  I, Soma: Integer;
begin
   Soma := 0;
   A[1] := StrToInt(Edit1.Text);
   A[2] := StrToInt(Edit2.Text);
   A[3] := StrToInt(Edit3.Text);
   A[4] := StrToInt(Edit4.Text);
   A[5] := StrToInt(Edit5.Text);
   for I := 1 to 5 do
     if (A[I] mod 2 = 1) then
       Soma := Soma + A[I];
   Label2.Caption := IntToStr(Soma);
   Edit1.SetFocus;
end;

end.
