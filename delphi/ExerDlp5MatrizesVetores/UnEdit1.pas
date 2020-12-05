unit UnEdit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    RichEdit1: TRichEdit;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Novo1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure LimpaTexto(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.LimpaTexto(Sender: TObject);
begin
  RichEdit1.Text := '';
end;

procedure TForm1.Abrir1Click(Sender: TObject);
var
  NomeArquivo: String;
begin
  if (OpenDialog1.Execute) then
    begin
      NomeArquivo := OpenDialog1.FileName;
      RichEdit1.Text := '';
      RichEdit1.Lines.LoadFromFile(NomeArquivo);
      Form1.Caption := 'Meu Editor - ' + NomeArquivo;
    end;
end;

procedure TForm1.Salvar1Click(Sender: TObject);
var
  ArquivoTexto: TextFile;
  Mensagem, NomeArquivo: String;
begin
  if (SaveDialog1.Execute) then
    begin
      NomeArquivo := SaveDialog1.FileName + '.xxx';
      AssignFile(ArquivoTexto, NomeArquivo);
      Rewrite(ArquivoTexto);
      Mensagem := RichEdit1.Text;
      Writeln(ArquivoTexto, Mensagem);
      CloseFile(ArquivoTexto);
      Form1.Caption := 'Meu Editor - ' + NomeArquivo;
    end;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Recortar1Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;
end;

procedure TForm1.Copiar1Click(Sender: TObject);
begin
  RichEdit1.CopyToClipboard;
end;

procedure TForm1.Colar1Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TForm1.Novo1Click(Sender: TObject);
begin
  RichEdit1.Text := '';
end;

end.
