unit U_AQUISICAO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ToolWin, StdCtrls, ImgList;

type
  TFRM_AQUISICAO = class(TForm)
    ToolBar1: TToolBar;
    btn_adicionar: TToolButton;
    btn_pesquisar: TToolButton;
    btn_alterar: TToolButton;
    btn_exluir: TToolButton;
    ToolButton2: TToolButton;
    btn_sair: TToolButton;
    ImageList1: TImageList;
    lbl_cdaquisicao: TLabel;
    Label3: TLabel;
    edt_dsaquisicao: TEdit;
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
  FRM_AQUISICAO: TFRM_AQUISICAO;

implementation

uses U_DM, U_LOCALIZAAQUISICAO, U_GLOBAL, U_ROTINASGENERICAS;

{$R *.DFM}

{ TFRM_AQUISICAO }

function novoregistro: string;
 var
  intcodigo: integer;
  strcodigonovo: string;
 begin
 intcodigo:=strtoint(dm.TBL_TABELASISTEMACD_AQUISICAO.asstring);
 inc(intcodigo);
 strcodigonovo:=strzero(intcodigo,4);
 dm.TBL_TABELASISTEMA.edit;
 dm.TBL_TABELASISTEMACD_AQUISICAO.asstring:=strcodigonovo;
 dm.TBL_TABELASISTEMA.Post;
 result:=strcodigonovo;
 end;

procedure TFRM_AQUISICAO.limpatela;
begin
lbl_cdaquisicao.caption:='Código da Aquisição: ';
edt_dsaquisicao.Text:='';
end;

procedure TFRM_AQUISICAO.FormShow(Sender: TObject);
begin
blnjanelaaberta:=true;
dm.TBL_TABELASISTEMA.open;
dm.TBL_aquisicao.Open;
end;

procedure TFRM_AQUISICAO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.TBL_TABELASISTEMA.close;
dm.TBL_AQUISICAO.Close;
blnjanelaaberta:=false;
action:=cafree;
end;

procedure TFRM_AQUISICAO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_return) then
    perform(wm_nextdlgctl,0,0);
end;

procedure TFRM_AQUISICAO.btn_adicionarClick(Sender: TObject);
var strcodigo: string;
begin
strcodigo:=novoregistro;
dm.TBL_AQUISICAO.Append;
dm.TBL_AQUISICAOCD_AQUISICAO.asstring:=strcodigo;
dm.TBL_AQUISICAODS_AQUISICAO.AsString:=edt_dsaquisicao.Text;
dm.TBL_COMODO.Post;
mensagem('Inclusão efetuada com sucesso!');
limpatela;
end;

procedure TFRM_AQUISICAO.btn_pesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_LOCALIZAAQUISICAO, FRM_LOCALIZAAQUISICAO);
  if (FRM_localizaaquisicao.showmodal=mrOK) then
  begin
    dm.q_comodo.sql.clear;
    dm.q_comodo.sql.add('select * from aquisicao where cd_aquisicao='+#39+strchave+#39);
    dm.q_comodo.open;
    lbl_cdaquisicao.Caption:='Código do Comodo: '+strchave;
    edt_dsaquisicao.text:=dm.q_aquisicaods_aquisicao.asstring;
    DM.q_aquisicao.close;
  end;
    frm_localizaaquisicao.destroy;
end;

procedure TFRM_AQUISICAO.btn_alterarClick(Sender: TObject);
var
strcomando:string;
begin
strcomando:= 'update aquisicao set'+
              'ds_aquisicao='+#39+edt_dsaquisicao.text+#39+','+
              'where cd_aquisicao='+#39+strchave+#39;
dm.Q_AQUISICAO.sql.clear;
dm.q_AQUISICAO.sql.add(strcomando);
dm.q_AQUISICAO.prepare;
dm.q_AQUISICAO.execsql;
mensagem('Atualização efetuada com sucesso!');
limpatela;
end;

end.
