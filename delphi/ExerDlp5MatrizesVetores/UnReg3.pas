unit UnReg3;

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
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure AbreFormulario(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  Bimestre = array[1..4] of Real;
  CadAluno = record
               Nome: String[20];
               Nota: Bimestre;
               Media: Real;
             end;

var
  Form1: TForm1;
  Aluno: array[1..8] of CadAluno;
  I: Integer;

implementation

{$R *.DFM}

procedure LimpaTela;
begin
  Form1.Edit1.Text := '';
  Form1.Edit2.Text := '';
  Form1.Edit3.Text := '';
  Form1.Edit4.Text := '';
  Form1.Edit5.Text := '';
  Form1.Label7.Caption := '';
  Form1.Edit1.SetFocus;
end; 

procedure Limpar;
var
  J, X: Integer;
begin

  { Limpa os registros }

  for J := 1 to 8 do
    begin
      Aluno[J].Nome := '';
      for X := 1 to 4 do
        Aluno[J].Nota[X] := 0;
      Aluno[J].Media := 0;
    end;
  LimpaTela;

{ Inicializa contador de registro }

  I := 1;
end;

procedure TForm1.AbreFormulario(Sender: TObject);
begin
  Limpar;
end;

procedure ExibeRegistro(PosicaoAtual: Integer);
var
  N1, N2, N3, N4, MD: String;
begin
  Form1.Edit1.Text := Aluno[PosicaoAtual].Nome;
  Str(Aluno[PosicaoAtual].Nota[1]:5:2, N1);
  Str(Aluno[PosicaoAtual].Nota[2]:5:2, N2);
  Str(Aluno[PosicaoAtual].Nota[3]:5:2, N3);
  Str(Aluno[PosicaoAtual].Nota[4]:5:2, N4);
  Str(Aluno[PosicaoAtual].Media:5:2, MD);
  Form1.Edit2.Text := N1;
  Form1.Edit3.Text := N2;
  Form1.Edit4.Text := N3;
  Form1.Edit5.Text := N4;
  Form1.Label7.Caption := MD;
  Form1.Edit1.SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Codigo, Conta: Integer;
  Soma: Real;
  Retorno: String;
begin
  if (I <= 8) and (Aluno[I].Nome = '') then
    begin
      Aluno[I].Nome := Edit1.Text;
      Val(Edit2.Text, Aluno[I].Nota[1], Codigo);
      Val(Edit3.Text, Aluno[I].Nota[2], Codigo);
      Val(Edit4.Text, Aluno[I].Nota[3], Codigo);
      Val(Edit5.Text, Aluno[I].Nota[4], Codigo);
      Soma := 0;
      for Conta := 1 to 4 do
        Soma := Soma + Aluno[I].Nota[Conta];
      Aluno[I].Media := Soma/4;
      Str(Aluno[I]   .Media:5:2, Retorno);
      Label7.Caption := Retorno;
      I := I + 1; { Conta registro }
      LimpaTela;
    end
  else
    begin
      LimpaTela;
      if (I > 8) then
        ShowMessage('Memória cheia')
      else
        ShowMessage('Posição ocupada');
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  J: Integer;
begin
  Aluno[I].Nome := '';
  for J := 1 to 4 do
    Aluno[I].Nota[J] := 0;
  Aluno[I].Media := 0;
  LimpaTela;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if (I < 8) then
    begin
      I := I + 1;
      ExibeRegistro(I);
    end
  else
    begin
      ShowMessage('Chegou no fim');
      Edit1.SetFocus;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  If (I > 1) then
    begin
      I := I - 1;
      ExibeRegistro(I);
    end
  else
    begin
      ShowMessage('Chegou no começo');
      Edit1.SetFocus;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Limpar;
end;

end.

