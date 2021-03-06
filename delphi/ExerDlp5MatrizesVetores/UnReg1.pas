unit UnReg1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

type
  CadAluno = record
               Nome: String[20];
               Nota1: Real;
               Nota2: Real;
               Nota3: Real;
               Nota4: Real;
               Media: Real;
             end;

var
  Aluno: CadAluno;

procedure TForm1.Button1Click(Sender: TObject);
var
  Codigo: Integer;
  Retorno: String;
begin
  Aluno.Nome := Edit1.Text;
  Val(Edit2.Text, Aluno.Nota1, Codigo);
  Val(Edit3.Text, Aluno.Nota2, Codigo);
  Val(Edit4.Text, Aluno.Nota3, Codigo);
  Val(Edit5.Text, Aluno.Nota4, Codigo);
  Aluno.Media := (Aluno.Nota1+Aluno.Nota2+Aluno.Nota3+Aluno.Nota4)/4;
  Str(Aluno.Media:5:2, Retorno);
  Label7.Caption := Retorno;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Label7.Caption := '';
  Edit1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  N1, N2, N3, N4, MD: String;
begin
  Edit1.Text := Aluno.Nome;
  Str(Aluno.Nota1:5:2, N1);
  Str(Aluno.Nota2:5:2, N2);
  Str(Aluno.Nota3:5:2, N3);
  Str(Aluno.Nota4:5:2, N4);
  Str(Aluno.Media:5:2, MD);
  Edit2.Text := N1;
  Edit3.Text := N2;
  Edit4.Text := N3;
  Edit5.Text := N4;
  Label7.Caption := MD;
end;

end.
