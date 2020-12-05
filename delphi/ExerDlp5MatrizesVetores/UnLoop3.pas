unit UnLoop3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ListBox1: TListBox;
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
  N, I, R: Integer;
  N1, I1, R1: String;
begin
  ListBox1.Items.Clear;
  N := StrToInt(Edit1.Text);
  for I := 1 to 10 do
    begin
      R := N * I;
      Str(N:2, N1);
      Str(I:2, I1);
      Str(R:3, R1);
      ListBox1.Items.Add(N1 + ' X ' + I1 + ' = ' + R1);
    end;
  Edit1.SetFocus;
end;

end.
