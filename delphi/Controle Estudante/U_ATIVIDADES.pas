unit U_ATIVIDADES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, OleServer, WordXP, jpeg, PowerPointXP;

type
  TFRM_ATIVIDADES = class(TForm)
    WordApplication1: TWordApplication;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    WordDocument1: TWordDocument;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    WordFont1: TWordFont;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Image1: TImage;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_ATIVIDADES: TFRM_ATIVIDADES;

implementation

{$R *.dfm}

procedure TFRM_ATIVIDADES.SpeedButton1Click(Sender: TObject);
begin
wordapplication1.connect;
wordapplication1.visible:=true;

worddocument1.activate;
worddocument1.newinstance;


end;

procedure TFRM_ATIVIDADES.SpeedButton2Click(Sender: TObject);
var texto :WideString;
begin
texto:='Aula de Delphi, Projeto Controle Aluno';
WordDocument1.Content.InsertAfter(texto);
end;

procedure TFRM_ATIVIDADES.SpeedButton3Click(Sender: TObject);
begin
worddocument1.Words.Item(3).text:='Borland Delphi';
end;

procedure TFRM_ATIVIDADES.SpeedButton4Click(Sender: TObject);
VAR t: widestring;
begin
wordfont1.connectTo(worddocument1.content.font);
wordfont1.bold:=1;
wordfont1.italic:=1;
worddocument1.Content.InsertAfter(t);

end;

procedure TFRM_ATIVIDADES.SpeedButton5Click(Sender: TObject);
var texto:widestring;
begin
texto:=' com o Professor Agnaldo';
worddocument1.Words.item(3).insertafter(texto);

end;

procedure TFRM_ATIVIDADES.SpeedButton6Click(Sender: TObject);
var
  formato : Word;
  Data : THandle;
  Palette: HPALETTE;
begin
image1.picture.SaveToClipboardFormat(Formato,Data,Palette); //copia o conteudo do objeto image para o clipboard;
worddocument1.content.paste; //cola a area de transferencia dentro do documento
end;

procedure TFRM_ATIVIDADES.SpeedButton7Click(Sender: TObject);
begin
close;
end;

end.
