unit UnCond5;

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
  SEXO : String;
begin
  SEXO := Edit1.Text;
  if (SEXO = 'masculino') or (SEXO = 'feminino') then
    ShowMessage('O seu sexo é válido')
  else
    ShowMessage('O seu sexo é inválido');
  Edit1.Text := '';
  Edit1.SetFocus;
end;

end.
