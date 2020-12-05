unit UnHer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    procedure AbreForm(Sender: TObject);
    procedure FechaForm(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

SalaAula = class
             Sala: String[2];
           end;

Bimestre = array[1..4] of Real;
CadAluno = class(SalaAula)
             Nome: String[20];
             Nota: Bimestre;
             Media: Real;
             function CalcMedia: Real;
           end;

var
  Form1: TForm1;
  Aluno: CadAluno;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  Codigo: Integer;
begin
  Aluno.Nome := Edit1.Text;
  Aluno.Sala := Edit6.Text;
  Val(Edit2.Text, Aluno.Nota[1], Codigo);
  Val(Edit3.Text, Aluno.Nota[2], Codigo);
  Val(Edit4.Text, Aluno.Nota[3], Codigo);
  Val(Edit5.Text, Aluno.Nota[4], Codigo);
  Aluno.CalcMedia;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Label6.Caption := '';
  Edit1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  N1, N2, N3, N4, MD: String;
begin
  Edit1.Text := Aluno.Nome;
  Edit6.Text := Aluno.Sala;
  Str(Aluno.Nota[1]:5:2, N1);
  Str(Aluno.Nota[2]:5:2, N2);
  Str(Aluno.Nota[3]:5:2, N3);
  Str(Aluno.Nota[4]:5:2, N4);
  Str(Aluno.Media:5:2, MD);
  Edit2.Text := N1;
  Edit3.Text := N2;
  Edit4.Text := N3;
  Edit5.Text := N4;
  Label6.Caption := MD;
end;

procedure TForm1.AbreForm(Sender: TObject);
begin
  Aluno := CadAluno.Create;
end;

procedure TForm1.FechaForm(Sender: TObject);
begin
  Aluno.Free;
end;

function CadAluno.CalcMedia: Real;
var
  I: Integer;
begin
  Media := 0;
  for I := 1 to 4 do
    Media := Media + Aluno.Nota[I];
  Media := Media / 4;
  CalcMedia := Media;
end;

end.
