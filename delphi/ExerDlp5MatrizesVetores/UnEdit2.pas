unit UnEdit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, ComCtrls, ExtCtrls, ImgList, ToolWin;

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
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    Formatar1: TMenuItem;
    Fonte1: TMenuItem;
    Cor1: TMenuItem;
    N2: TMenuItem;
    Estilos1: TMenuItem;
    Negrito1: TMenuItem;
    Itlico1: TMenuItem;
    Sublinhado1: TMenuItem;
    Alinhamento1: TMenuItem;
    Esquerda1: TMenuItem;
    Direita1: TMenuItem;
    Centro1: TMenuItem;
    Desfazer1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Selecionartudo1: TMenuItem;
    Imprimir1: TMenuItem;
    N5: TMenuItem;
    PrintDialog1: TPrintDialog;
    PopupMenu1: TPopupMenu;
    Fonte2: TMenuItem;
    Cor2: TMenuItem;
    N6: TMenuItem;
    Negrito2: TMenuItem;
    Itlico2: TMenuItem;
    Sublinhado2: TMenuItem;
    N7: TMenuItem;
    Esquerda2: TMenuItem;
    Direita2: TMenuItem;
    Centro2: TMenuItem;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ImageList2: TImageList;
    StatusBar1: TStatusBar;
    Sobre1: TMenuItem;
    Salvarcomo1: TMenuItem;
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure LimpaTexto(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Cor1Click(Sender: TObject);
    procedure Negrito1Click(Sender: TObject);
    procedure Itlico1Click(Sender: TObject);
    procedure Sublinhado1Click(Sender: TObject);
    procedure Esquerda1Click(Sender: TObject);
    procedure Direita1Click(Sender: TObject);
    procedure Centro1Click(Sender: TObject);
    procedure Desfazer1Click(Sender: TObject);
    procedure Selecionartudo1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure ShowHints(Sender: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Salvarcomo1Click(Sender: TObject);
    procedure ChecaArquivoSalvo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  NomeArquivo: String;

implementation
uses
  UnEdit2a;
{$R *.DFM}

procedure TForm1.LimpaTexto(Sender: TObject);
begin
  RichEdit1.Text := '';
  RichEdit1.Modified := False;
end;

procedure TForm1.Abrir1Click(Sender: TObject);
begin
  ChecaArquivoSalvo;
  if (OpenDialog1.Execute) then
    begin
      NomeArquivo := OpenDialog1.FileName;
      RichEdit1.Text := '';
      RichEdit1.Lines.LoadFromFile(NomeArquivo);
      Form1.Caption := 'Edição do Arquivo - ' +  ExtractFileName(NomeArquivo);
      RichEdit1.Modified := False;
    end;
  SaveDialog1.FileName := NomeArquivo;
  OpenDialog1.FileName := '';
end;

procedure TForm1.Salvar1Click(Sender: TObject);
begin
  NomeArquivo := SaveDialog1.FileName;
  if (NomeArquivo = '') then
    Salvarcomo1Click(Sender)
  else
    begin
      RichEdit1.Lines.SaveToFile(NomeArquivo);
      Form1.Caption := 'Arquivo Salvo - ' +  ExtractFileName(NomeArquivo);
      RichEdit1.Modified := False;
    end;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  ChecaArquivoSalvo;
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
  ChecaArquivoSalvo;
  NomeArquivo := '';
  SaveDialog1.FileName := '';
  OpenDialog1.FileName := '';
  RichEdit1.Clear;
  RichEdit1.Paragraph.Alignment := taLeftJustify;
  RichEdit1.SelAttributes.Color := 0;
  RichEdit1.Font.Name := 'MS Sans Serif';
  RichEdit1.Font.Color := 0;
  Form1.Caption := 'Novo Documento - Sem Título';
  RichEdit1.Modified := False;
end;

procedure TForm1.Fonte1Click(Sender: TObject);
begin
  FontDialog1.Font.Assign(RichEdit1.SelAttributes);
  if (FontDialog1.Execute) then
    RichEdit1.SelAttributes.Assign(FontDialog1.Font);
end;

procedure TForm1.Cor1Click(Sender: TObject);
begin
  ColorDialog1.Color := RichEdit1.SelAttributes.Color;
  if (ColorDialog1.Execute) then
    RichEdit1.SelAttributes.Color := ColorDialog1.Color;
end;

procedure TForm1.Negrito1Click(Sender: TObject);
begin
  if (fsBold in RichEdit1.SelAttributes.Style) then
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsBold]
  else
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsBold];
  Form1.Negrito1.Checked := fsBold in RichEdit1.SelAttributes.Style;
end;

procedure TForm1.Itlico1Click(Sender: TObject);
begin
  if (fsItalic in RichEdit1.SelAttributes.Style) then
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsItalic]
  else
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsItalic];
  Form1.Itlico1.Checked := fsItalic in RichEdit1.SelAttributes.Style;
end;

procedure TForm1.Sublinhado1Click(Sender: TObject);
begin
  if (fsUnderline in RichEdit1.SelAttributes.Style) then
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style - [fsUnderline]
  else
    RichEdit1.SelAttributes.Style := RichEdit1.SelAttributes.Style + [fsUnderline];
  Form1.Sublinhado1.Checked := fsUnderline in RichEdit1.SelAttributes.Style;
end;

procedure TForm1.Esquerda1Click(Sender: TObject);
begin
  RichEdit1.Paragraph.Alignment := taLeftJustify;
end;

procedure TForm1.Direita1Click(Sender: TObject);
begin
  RichEdit1.Paragraph.Alignment := taRightJustify;
end;

procedure TForm1.Centro1Click(Sender: TObject);
begin
  RichEdit1.Paragraph.Alignment := taCenter;
end;

procedure TForm1.Desfazer1Click(Sender: TObject);
begin
  RichEdit1.Undo;
end;

procedure TForm1.Selecionartudo1Click(Sender: TObject);
begin
  RichEdit1.SelStart := 0;
  RichEdit1.SelLength := Length(RichEdit1.Text);
end;

procedure TForm1.Imprimir1Click(Sender: TObject);
begin
  if (PrintDialog1.Execute) then
    RichEdit1.Print(Text);
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
var
  Tamanho: LongInt;
  Texto: String;
begin
  Tamanho := Length(RichEdit1.Text);
  Texto := IntToStr(Tamanho);
  if (Tamanho = 0) then
    StatusBar1.SimpleText := 'Processador - Easy Writer'
  else
    if (Tamanho = 1) then
      StatusBar1.SimpleText := Texto + ' Caractere'
    else
      StatusBar1.SimpleText := Texto + ' Caracteres';
end;

procedure TForm1.ShowHints(Sender: TObject);
begin
  Form1.StatusBar1.SimpleText := Application.Hint;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHints;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
   Form2.ShowModal;
end;

procedure TForm1.Salvarcomo1Click(Sender: TObject);
begin
  if (SaveDialog1.Execute) then
    begin
      NomeArquivo := SaveDialog1.FileName;
      if (FileExists(NomeArquivo)) then
        if (MessageDlg(Format('Sobrescreve arquivo: %s', [ExtractFileName(NomeArquivo)]), mtConfirmation, mbOkCancel, 0) <> idOk) then
          Exit;
      RichEdit1.Lines.SaveToFile(NomeArquivo);
      Form1.Caption := 'Arquivo Salvo - ' + ExtractFileName(NomeArquivo);
      RichEdit1.Modified := False;
    end;
end;

procedure TForm1.ChecaArquivoSalvo;
var
  Resposta: Integer;
begin
  if (RichEdit1.Modified = True) then
  begin
    if (NomeArquivo = '') then
      Resposta := MessageDlg('Arquivo novo - Deseja gravar?', mtConfirmation, mbYesNoCancel, 0)
    else
      Resposta := MessageDlg(Format('Gravar modificações no arquivo: %s?', [ExtractFileName(NomeArquivo)]), mtConfirmation, mbYesNoCancel, 0);
    case Resposta of
      idYes: Salvar1Click(Self);
      idNo: ; {Não executa nada}
      idCancel: Abort;
    end;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Sair1Click(Sender);
end;

end.

