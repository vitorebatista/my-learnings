unit U_TIPOBEM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, ToolWin, StdCtrls;

type
  TFRM_TIPOBEM = class(TForm)
    ToolBar1: TToolBar;
    btn_adicionar: TToolButton;
    btn_pesquisar: TToolButton;
    btn_alterar: TToolButton;
    btn_exluir: TToolButton;
    ToolButton2: TToolButton;
    btn_sair: TToolButton;
    ImageList1: TImageList;
    Label1: TLabel;
    lbl_codigo: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_TIPOBEM: TFRM_TIPOBEM;

implementation

{$R *.DFM}

end.
