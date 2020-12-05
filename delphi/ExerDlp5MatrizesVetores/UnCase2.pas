unit UnCase2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
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
  Mes: Integer;
begin
  Mes := StrToInt(Edit1.Text);
  case Mes of
     1: Edit2.Text := 'Janeiro';
     2: Edit2.Text := 'Fevereiro';
     3: Edit2.Text := 'Março';
     4: Edit2.Text := 'Abril';
     5: Edit2.Text := 'Maio';
     6: Edit2.Text := 'Junho';
     7: Edit2.Text := 'Julho';
     8: Edit2.Text := 'Agosto';
     9: Edit2.Text := 'Setembro';
    10: Edit2.Text := 'Outubro';
    11: Edit2.Text := 'Novembro';
    12: Edit2.Text := 'Dezembro';
  else
    Edit2.Text := 'Mês Inválido';
  end;
  Edit1.SetFocus;
end;

end.
