unit U_LOCALIZAAQUISICAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFRM_LOCALIZAAQUISICAO = class(TForm)
    Label1: TLabel;
    edt_aquisicao: TEdit;
    grd_aquisicao: TDBGrid;
    btnok: TBitBtn;
    btncancela: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnokClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LOCALIZAAQUISICAO: TFRM_LOCALIZAAQUISICAO;

implementation

uses U_DM, U_GLOBAL, U_ROTINASGENERICAS;

{$R *.dfm}

procedure TFRM_LOCALIZAAQUISICAO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.Q_AQUISICAO.close;
DM.Q_AQUISICAO.SQL.clear;
dm.Q_AQUISICAO.sql.Add('select * from comodo where cd_comodo like '+#39+trim(edt_aquisicao.text)+'%'+#39);
dm.Q_AQUISICAO.Open;
end;

procedure TFRM_LOCALIZAAQUISICAO.btnokClick(Sender: TObject);
begin
strchave:=dm.Q_AQUISICAOCD_AQUISICAO.asstring;
end;

procedure TFRM_LOCALIZAAQUISICAO.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key = VK_return) then
    perform (wm_nextdlgctl,0,0);
end;

end.
