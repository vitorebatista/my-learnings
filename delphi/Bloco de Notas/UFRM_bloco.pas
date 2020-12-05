unit UFRM_bloco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls;

type
  TFRM_bloco = class(TForm)
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    Arquivo: TMenuItem;
    Abrir1: TMenuItem;
    Novo1: TMenuItem;
    Salvar1: TMenuItem;
    SalvarComo1: TMenuItem;
    ConfigurarPagina1: TMenuItem;
    Imprimir1: TMenuItem;
    Sair1: TMenuItem;
    Editar1: TMenuItem;
    Desfazer1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    Recortar1: TMenuItem;
    Excluir1: TMenuItem;
    Formatar1: TMenuItem;
    QuebraAutomaticadelinha1: TMenuItem;
    Fonte1: TMenuItem;
    Exibir1: TMenuItem;
    BarraDeStatus1: TMenuItem;
    Ajuda1: TMenuItem;
    TopicosdaAjuda1: TMenuItem;
    Sobreoblocodenotas1: TMenuItem;
    Fonte2: TMenuItem;
    Cor1: TMenuItem;
    Negrito1: TMenuItem;
    Italico1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_bloco: TFRM_bloco;

implementation

{$R *.DFM}

end.
