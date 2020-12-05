unit UnCadPes;

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
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
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
    Edit11: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure AcessaArquivo(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
     procedure MostraTela;
     procedure LimpaTela;
     procedure SalvaRegistro;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

type
  Pessoa = record
             Flag: String[1];
             Matric: Integer;
             Nome: String[40];
             Endereco: String[50];
             Telefone: String[9];
             Cidade: String[20];
             Estado: String[2];
             Bairro: String[15];
             CEP: String[9];
             Profissao: String[10];
             Peso: Integer;
             Altura: Real;
           end;

var
  Dado: Pessoa;
  Arquivo: File of Pessoa;

procedure TForm1.AcessaArquivo(Sender: TObject);
begin
  AssignFile(Arquivo, 'C:\CADPES.DAP');
  LimpaTela;
  if FileExists('C:\CADPES.DAP') then
    Reset(Arquivo)
  else
    begin
      Rewrite(Arquivo);
      Write(Arquivo, Dado);
    end;
  Button2.Enabled := False;
  Button3.Enabled := False;
end;

function Pesquisa(Numero: Integer): Boolean;
var
  Achou: Boolean;
begin
  Achou := False;
  Seek(Arquivo, 1);
  While (not Eof(Arquivo)) and (not Achou) do
    begin
     Read(Arquivo, Dado);
     Achou := (Numero = Dado.Matric) and (Dado.Flag <> '*');
    end;
  Seek(Arquivo, FilePos(Arquivo)-1);
  Pesquisa := Achou;
end;

procedure TForm1.MostraTela;
var
  Retorno: String;
begin
  Edit1.Text := IntToStr(Dado.Matric);
  Edit2.Text := Dado.Nome;
  Edit3.Text := Dado.Endereco;
  Edit4.Text := Dado.Telefone;
  Edit5.Text := Dado.Cidade;
  Edit6.Text := Dado.Estado;
  Edit7.Text := Dado.Bairro;
  Edit8.Text := Dado.CEP;
  Edit9.Text := Dado.Profissao;
  Edit10.Text := IntToStr(Dado.Peso);
  Str(Dado.Altura:5:2, Retorno);
  Edit11.Text := Retorno;
end;

procedure TForm1.LimpaTela;
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
  Edit4.Text := '';
  Edit5.Text := '';
  Edit6.Text := '';
  Edit7.Text := '';
  Edit8.Text := '';
  Edit9.Text := '';
  Edit10.Text := '';
  Edit11.Text := '';
  Edit1.SetFocus;
end;

procedure TForm1.SalvaRegistro;
var
  Codigo: Integer;
begin
  Dado.Flag := ' ';
  Dado.Matric := StrToInt(Edit1.Text);
  Dado.Nome := Edit2.Text;
  Dado.Endereco := Edit3.Text;
  Dado.Telefone := Edit4.Text;
  Dado.Cidade := Edit5.Text;
  Dado.Estado := Edit6.Text;
  Dado.Bairro := Edit7.Text;
  Dado.CEP := Edit8.Text;
  Dado.Profissao := Edit9.Text;
  if (Edit10.Text = '') then
    Edit10.Text := '0';
  Dado.Peso := StrToInt(Edit10.Text);
  Val(Edit11.Text, Dado.Altura, Codigo);
  Write(Arquivo, Dado);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
    ShowMessage('O campo Matrícula está em branco')
  else
    if (Pesquisa(StrToInt(Edit1.Text))) then
      begin
        MostraTela;
        ShowMessage('Registro cadastrado');
      end
    else
      begin
        Seek(Arquivo, 0);
        repeat
          Read(Arquivo, Dado);
        until (Dado.Flag = '*') or (Eof(Arquivo));
        if (Dado.Flag = '*') then
          Seek(Arquivo,FilePos(Arquivo)-1)
        else
          Seek(Arquivo,FilePos(Arquivo));
        SalvaRegistro;
      end;
  LimpaTela;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  SalvaRegistro;
  LimpaTela;
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Dado.Flag := '*';
  Write(Arquivo, Dado);
  LimpaTela;
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
    ShowMessage('O campo Matrícula está em branco')
  else
    begin
      if (Pesquisa(StrToInt(Edit1.Text))) then
         begin
           MostraTela;
           Button1.Enabled := False;
           Button2.Enabled := True;
           Button3.Enabled := True;
         end 
      else
         begin
           LimpaTela;
           ShowMessage('Não existe este registro');
         end;
    end;
  Edit1.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  CloseFile(Arquivo);
  Application.Terminate;
end;

end.
