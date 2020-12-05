unit UnIndice;

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
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
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
  A, B: array[1..5] of Integer;
  I: Integer;
begin
   ListBox1.Items.Clear;
   ListBox2.Items.Clear;
   A[1] := StrToInt(Edit1.Text);
   A[2] := StrToInt(Edit2.Text);
   A[3] := StrToInt(Edit3.Text);
   A[4] := StrToInt(Edit4.Text);
   A[5] := StrToInt(Edit5.Text);
   for I := 1 to 5 do
     if (I mod 2 = 0) then
       B[I] := A[I] * 5
     else
       B[I] := A[I] + 5;
   for I := 1 to 5 do
     begin
       ListBox1.Items.Add(IntToStr(A[I]));
       ListBox2.Items.Add(IntToStr(B[I]));
     end;
   Edit1.SetFocus;
end;

end.
