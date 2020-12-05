unit UnArqTxt;

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

procedure TForm1.Button1Click(Sender: TObject);
var
  ArquivoTexto: TextFile;
begin
  AssignFile(ArquivoTexto, 'C:\ARQTXT.XXX');
  Rewrite(ArquivoTexto);
  CloseFile(ArquivoTexto);
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  ArquivoTexto: TextFile;
  Mensagem: String[20];
begin
  Mensagem := Edit1.Text;
  AssignFile(ArquivoTexto, 'C:\ARQTXT.XXX');
  Append(ArquivoTexto);
  Writeln(ArquivoTexto, Mensagem);
  CloseFile(ArquivoTexto);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  ArquivoTexto: TextFile;
  Mensagem: String[20];
begin
  AssignFile(ArquivoTexto, 'C:\ARQTXT.XXX');
  Reset(ArquivoTexto);
  Readln(ArquivoTexto, Mensagem);
  Edit2.Text := Mensagem;
  CloseFile(ArquivoTexto);
end;

end.
