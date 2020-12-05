unit UnCond4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
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
  NUMERO : Integer;
begin
  NUMERO := StrToInt(Edit1.Text);
  if (NUMERO >= 20) and (NUMERO <= 90) then
    ShowMessage('O valor está entre 20 e 90')
  else
    ShowMessage('O valor não está entre 20 e 90');
  Edit1.SetFocus;
end;

end.
