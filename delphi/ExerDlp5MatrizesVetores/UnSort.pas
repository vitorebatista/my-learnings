unit UnSort;

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
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    ListBox1: TListBox;
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
  Nome: array[1..10] of String[20];
  I, J: Integer;
  X: String[20];
begin
  ListBox1.Items.Clear;
  Nome[1] := Edit1.Text;
  Nome[2] := Edit2.Text;
  Nome[3] := Edit3.Text;
  Nome[4] := Edit4.Text;
  Nome[5] := Edit5.Text;
  Nome[6] := Edit6.Text;
  Nome[7] := Edit7.Text;
  Nome[8] := Edit8.Text;
  Nome[9] := Edit9.Text;
  Nome[10] := Edit10.Text;

  {*** Processamento de ordenacao ***}

  for I := 1 to 9 do
    for J := I + 1 to 10 do
      if (Nome[I] > Nome[J]) then
        begin
          X := Nome[I];
          Nome[I] := Nome[J];
          Nome[J] := X;
        end;
  for I := 1 to 10 do
    ListBox1.Items.Add(Nome[I]);
  Edit1.SetFocus;
end;

end.
