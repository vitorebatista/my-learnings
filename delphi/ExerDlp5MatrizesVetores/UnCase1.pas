unit UnCase1;

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
  if (Mes = 1) then
    Edit2.Text := 'Janeiro'
  else
    if (Mes = 2) then
      Edit2.Text := 'Fevereiro'
    else
      if (Mes = 3) then
        Edit2.Text := 'Março'
      else
        if (Mes = 4) then
          Edit2.Text := 'Abril'
        else
          if (Mes = 5) then
            Edit2.Text := 'Maio'
          else
            if (Mes = 6) then
              Edit2.Text := 'Junho'
            else
              if (Mes = 7) then
                Edit2.Text := 'Julho'
              else
                if (Mes = 8) then
                  Edit2.Text := 'Agosto'
                else
                  if (Mes = 9) then
                    Edit2.Text := 'Setembro'
                  else
                    if (Mes = 10) then
                      Edit2.Text := 'Outubro'
                    else
                      if (Mes = 11) then
                        Edit2.Text := 'Novembro'
                      else
                        if (Mes = 12) then
                          Edit2.Text := 'Dezembro'
                        else
                          Edit2.Text := 'Mês Inválido';
  Edit1.SetFocus;
end;

end.
