unit U_MENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, ImgList;

type
  TFRM_MENU = class(TForm)
    ToolBar1: TToolBar;
    btn_comodo: TToolButton;
    btn_tipobem: TToolButton;
    btn_patrimonio: TToolButton;
    btn_sair: TToolButton;
    btn_aquisicao: TToolButton;
    ImageList1: TImageList;
    ToolButton2: TToolButton;
    procedure btn_sairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

{$R *.DFM}

procedure TFRM_MENU.btn_sairClick(Sender: TObject);
begin
close;
end;

end.
