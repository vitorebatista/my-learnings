unit U_DIAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, db, dbtables;

type
  TFRM_DIAS = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    spprimeiro: TSpeedButton;
    spanterior: TSpeedButton;
    spproximo: TSpeedButton;
    spultimo: TSpeedButton;
    spinserir: TSpeedButton;
    speditar: TSpeedButton;
    spdeletar: TSpeedButton;
    spgravar: TSpeedButton;
    spsair: TSpeedButton;
    spcancelar: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure spprimeiroClick(Sender: TObject);
    procedure spanteriorClick(Sender: TObject);
    procedure spproximoClick(Sender: TObject);
    procedure spultimoClick(Sender: TObject);
    procedure spinserirClick(Sender: TObject);
    procedure speditarClick(Sender: TObject);
    procedure spdeletarClick(Sender: TObject);
    procedure spgravarClick(Sender: TObject);
    procedure spcancelarClick(Sender: TObject);
    procedure spsairClick(Sender: TObject);
    procedure validanavegacao;
    procedure validainsercaodados;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_DIAS: TFRM_DIAS;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_DIAS.spprimeiroClick(Sender: TObject);
begin
dm.Q_DIAS.First;
validanavegacao;
end;

procedure TFRM_DIAS.spanteriorClick(Sender: TObject);
begin
dm.Q_DIAS.Prior;
validanavegacao;
end;

procedure TFRM_DIAS.spproximoClick(Sender: TObject);
begin
dm.q_dias.Next;
validanavegacao;
end;

procedure TFRM_DIAS.spultimoClick(Sender: TObject);
begin
dm.Q_DIAS.Last;
validanavegacao;
end;

procedure TFRM_DIAS.spinserirClick(Sender: TObject);
begin
dm.q_dias.Insert;
validainsercaodados;
end;

procedure TFRM_DIAS.speditarClick(Sender: TObject);
begin
dm.q_dias.Edit;
validainsercaodados;
end;

procedure TFRM_DIAS.spdeletarClick(Sender: TObject);
begin
dm.q_dias.Delete;
validainsercaodados;
end;

procedure TFRM_DIAS.spgravarClick(Sender: TObject);
begin
dm.q_dias.Post;
validainsercaodados;
end;

procedure TFRM_DIAS.spcancelarClick(Sender: TObject);
begin
dm.q_dias.Cancel;
validainsercaodados;
end;

procedure TFRM_DIAS.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_DIAS.validanavegacao;
begin
spprimeiro.Enabled:=not(dm.q_dias.Bof);
spanterior.Enabled:=not(dm.q_dias.Bof);
spproximo.enabled:=not(dm.q_dias.Eof);
spultimo.enabled:=not(dm.q_dias.Eof);
end;

procedure TFRM_DIAS.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_DIAS.state=dsbrowse);
spanterior.enabled:=(dm.Q_DIAS.state=dsbrowse);
spproximo.enabled:=(dm.Q_DIAS.state=dsbrowse);
spultimo.enabled:=(dm.Q_DIAS.state=dsbrowse);
spinserir.enabled:=(dm.Q_DIAS.state=dsbrowse);
speditar.enabled:=(dm.Q_DIAS.state=dsbrowse);
spdeletar.enabled:=(dm.Q_DIAS.state=dsbrowse);
spgravar.enabled:=(dm.Q_DIAS.state in [dsinsert, dsedit]);
spcancelar.enabled:=(dm.Q_DIAS.state in [dsinsert, dsedit]);
spsair.enabled:=(dm.q_dias.state=dsbrowse);

end;

procedure TFRM_DIAS.FormShow(Sender: TObject);
begin
dm.q_dias.Open;
dm.Q_AULA.open;
validanavegacao;
end;

procedure TFRM_DIAS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_dias.close;
dm.Q_AULA.close;
end;

end.
