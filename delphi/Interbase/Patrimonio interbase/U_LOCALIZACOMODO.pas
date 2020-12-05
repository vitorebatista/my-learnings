unit U_LOCALIZACOMODO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TFRM_LOCALIZACOMODO = class(TForm)
    lblmensagem: TLabel;
    edt_comodo: TEdit;
    grd_comodo: TDBGrid;
    btnOK: TBitBtn;
    btnCancela: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_LOCALIZACOMODO: TFRM_LOCALIZACOMODO;

implementation

uses U_DM, U_ROTINASGENERICAS, U_GLOBAL;

{$R *.dfm}

procedure TFRM_LOCALIZACOMODO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_return) then
    perform (wm_nextdlgctl,0,0);
end;

procedure TFRM_LOCALIZACOMODO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.Q_COMODO.close;
DM.Q_COMODO.SQL.clear;
dm.Q_COMODO.sql.Add('select * from comodo where cd_comodo like '+#39+trim(edt_comodo.text)+'%'+#39);
dm.Q_COMODO.Open;
end;

procedure TFRM_LOCALIZACOMODO.btnOKClick(Sender: TObject);
begin
strchave:=dm.q_comodocd_comodo.asstring;
end;

end.
