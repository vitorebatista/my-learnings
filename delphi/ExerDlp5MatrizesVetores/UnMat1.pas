unit UnMat1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CriaTabelas(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  A, B: array[1..4, 1..5] of TEdit;

implementation

{$R *.DFM}

procedure VerificaVazio;
var
  I, J: Byte;
begin
  for I := 1 to 4 do
    for J := 1 to 5 do
      if (A[I, J].Text = '') then
        A[I, J].Text := IntToStr(0);
end;

procedure TForm1.CriaTabelas(Sender: TObject);
var
  Retorno: String;
  Linha, Coluna: Integer;
  I, J, X: Byte;
begin

  // Monta Elementos matriz A

  X := 1;
  Linha := 40;
  for I := 1 to 4 do
    begin
      Coluna := 16;
      for J := 1 to 5 do
        begin
          A[I, J] := TEdit.Create(Self);
          A[I, J].Parent := Self;
          A[I, J].Left := Coluna;
          A[I, J].Top := Linha;
          A[I, J].Width := 41;
          A[I, J].Height := 21;
          Str(X, Retorno);
          A[I, J].Name := 'Edit' + Retorno;
          A[I, J].Text := '';
          Coluna := Coluna + 48;
          X := X + 1;
        end;
      Linha := Linha + 32;
    end;
  A[1, 1].SetFocus;

  // Monta Elementos Matriz B

  Linha := 208;  // Top
  for I := 1 to 4 do
    begin
      Coluna := 16; // Left
      for J := 1 to 5 do
        begin
          B[I, J] := Tedit.Create(self);
          B[I, J].Parent := Self;
          B[I, J].Left := Coluna;
          B[I, J].Top := Linha;
          B[I, J].Width := 41;
          B[I, J].Height := 21;
          B[I, J].Enabled := False;
          Str(X, Retorno);
          B[I, J].Name := 'Edit' + Retorno;
          B[I, J].Text := '';
          Coluna := Coluna + 48;
          X := X + 1;
        end;
      Linha := Linha + 32;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  I, J: Byte;
begin
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        A[I, J].Text := '';
        B[I, J].Text := '';
      end;
  A[1, 1].SetFocus;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  I, J: Byte;
  Numero, Resposta: Integer;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        Numero := StrToInt(A[I, J].Text);
        Resposta := Numero *  Numero;
        B[I, J].Text := IntToStr(Resposta);
      end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  I, J: Byte;
  Numero, Resposta: Integer;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        Numero := StrToInt(A[I, J].Text);
        Resposta := Numero *  Numero *  Numero;
        B[I, J].Text := IntToStr(Resposta);
      end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  I, J: Byte;
  Resposta: Integer;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        Resposta := StrToInt(A[I, J].Text);
        if (Resposta mod 2 = 0) then
          B[I, J].Text := IntToStr(Resposta)
        else
          B[I, J].Text := '';
      end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  I, J: Byte;
  Resposta: Integer;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        Resposta := StrToInt(A[I, J].Text);
        if (Resposta mod 2 = 1) then
          B[I, J].Text := IntToStr(Resposta)
        else
          B[I, J].Text := '';
      end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
  S, Limite: Integer;
  I, J, Y: Byte;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        S := 0;
        Limite := StrToInt(A[I, J].Text);
        for Y := 1 to Limite do
          S := S + Y;
        B[I, J].Text := IntToStr(S);
      end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
  F, Limite: Integer;
  I, J, Y: Byte;
begin
  VerificaVazio;
  for I := 1 to 4 do
    for J := 1 to 5 do
      begin
        F := 1;
        Limite := StrToInt(A[I, J].Text);
        for Y := 1 to Limite do
          F := F * Y;
        B[I, J].Text := IntToStr(F);
      end;
end;

end.
