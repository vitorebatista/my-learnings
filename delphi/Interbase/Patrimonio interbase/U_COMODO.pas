unit U_COMODO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, ComCtrls, ToolWin, StdCtrls;

type
  TFRM_COMODO = class(TForm)
    ToolBar1: TToolBar;
    btn_adicionar: TToolButton;
    btn_pesquisar: TToolButton;
    btn_alterar: TToolButton;
    btn_exluir: TToolButton;
    ToolButton2: TToolButton;
    btn_sair: TToolButton;
    ImageList1: TImageList;
    lbl_codigo: TLabel;
    Label3: TLabel;
    edt_dscomodo: TEdit;
    procedure limpatela;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_adicionarClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure btn_alterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_COMODO: TFRM_COMODO;

implementation

uses U_DM, U_ROTINASGENERICAS, U_GLOBAL, U_LOCALIZACOMODO;

{$R *.DFM}

{ TFRM_COMODO }
function novoregistro: string;
 var
  intcodigo: integer;
  strcodigonovo: string;
 begin
 intcodigo:=strtoint(dm.TBL_TABELASISTEMAcd_comodo.asstring);
 inc(intcodigo);
 strcodigonovo:=strzero(intcodigo,4);
 dm.TBL_TABELASISTEMA.edit;
 dm.TBL_TABELASISTEMACD_COMODO.asstring:=strcodigonovo;
 dm.TBL_TABELASISTEMA.Post;
 result:=strcodigonovo;
 end;

procedure TFRM_COMODO.limpatela;
begin
lbl_codigo.caption:='Código do Comodo: ';
edt_dscomodo.Text:='';
end;

procedure TFRM_COMODO.FormShow(Sender: TObject);
begin
blnjanelaaberta:=true;
dm.TBL_TABELASISTEMA.open;
dm.TBL_COMODO.Open;
end;

procedure TFRM_COMODO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.TBL_TABELASISTEMA.close;
dm.TBL_COMODO.Close;
blnjanelaaberta:=false;
action:=cafree;
end;

procedure TFRM_COMODO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) then
    perform(wm_nextdlgctl,0,0);
end;

procedure TFRM_COMODO.btn_adicionarClick(Sender: TObject);
var strcodigo: string;
begin
strcodigo:=novoregistro;
dm.TBL_COMODO.Append;
dm.TBL_COMODOCD_COMODO.asstring:=strcodigo;
dm.TBL_COMODODS_COMODO.AsString:=edt_dscomodo.Text;
dm.TBL_COMODO.Post;
mensagem('Inclusão efetuada com sucesso!');
limpatela;
end;

procedure TFRM_COMODO.btn_pesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_LOCALIZACOMODO, FRM_LOCALIZACOMODO);
  if (FRM_LOCALIZACOMODO.showmodal=mrOK) then
  begin
    dm.q_comodo.sql.clear;
    dm.q_comodo.sql.add('select * from comodo where cd_comodo='+#39+strchave+#39);
    dm.q_comodo.open;
    lbl_codigo.Caption:='Código do Comodo: '+strchave;
    edt_dscomodo.text:=dm.q_comodods_comodo.asstring;
    DM.q_comodo.close;
  end;
    frm_localizacomodo.destroy;
end;

procedure TFRM_COMODO.btn_alterarClick(Sender: TObject);
var
strcomando:string;
begin
strcomando:= 'update comodo set'+
              'ds_comodo='+#39+edt_dscomodo.text+#39+','+
              'where cd_comodo='+#39+strchave+#39;
dm.q_comodo.sql.clear;
dm.q_comodo.sql.add(strcomando);
dm.q_comodo.prepare;
dm.q_comodo.execsql;
mensagem('Atualização efetuada com sucesso!');
limpatela;

end;

end.
