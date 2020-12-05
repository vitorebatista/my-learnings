unit U_COMO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, db, dbtables;

type
  TFRM_COMO = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Spprimeiro: TSpeedButton;
    SpAnterior: TSpeedButton;
    SpProximo: TSpeedButton;
    SpUltimo: TSpeedButton;
    SpInserir: TSpeedButton;
    Spdeletar: TSpeedButton;
    Speditar: TSpeedButton;
    SpGravar: TSpeedButton;
    SpCancelar: TSpeedButton;
    SpSair: TSpeedButton;
    procedure SpprimeiroClick(Sender: TObject);
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
    procedure validanavegacao;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpSairClick(Sender: TObject);
    procedure SpInserirClick(Sender: TObject);
    procedure SpdeletarClick(Sender: TObject);
    procedure SpeditarClick(Sender: TObject);
    procedure SpGravarClick(Sender: TObject);
    procedure SpCancelarClick(Sender: TObject);
    procedure validainsercaodados;
  private
//    procedure validainsercaodados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_COMO: TFRM_COMO;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_COMO.SpprimeiroClick(Sender: TObject);
begin
dm.q_como.first;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_COMO.SpAnteriorClick(Sender: TObject);
begin
dm.Q_COMO.Prior;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_COMO.SpProximoClick(Sender: TObject);
begin
dm.q_como.Next;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_COMO.SpUltimoClick(Sender: TObject);
begin
dm.q_como.Last;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_COMO.validanavegacao;
begin
spprimeiro.Enabled:=not(dm.q_como.bof);
spanterior.enabled:=not(dm.q_como.bof);
spproximo.enabled:=not(dm.q_como.eof);
spultimo.enabled:=not(dm.q_como.eof);
end;

procedure TFRM_COMO.FormShow(Sender: TObject);
begin
dm.q_patri.open;
dm.q_aqui.Open;
dm.q_como.open;
dm.q_tipo.OpenDatabase;
validanavegacao;
end;

procedure TFRM_COMO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dm.q_patri.close;
dm.q_aqui.close;
dm.q_como.close;
dm.q_tipo.close;
end;

procedure TFRM_COMO.SpSairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_COMO.SpInserirClick(Sender: TObject);
begin
dm.q_como.insert;
validainsercaodados;
end;

procedure TFRM_COMO.SpdeletarClick(Sender: TObject);
begin
dm.q_como.Edit;
validainsercaodados;
end;

procedure TFRM_COMO.SpeditarClick(Sender: TObject);
begin
dm.q_como.Delete;
validainsercaodados;
end;

procedure TFRM_COMO.SpGravarClick(Sender: TObject);
begin
dm.q_como.Post;
validainsercaodados;
end;

procedure TFRM_COMO.SpCancelarClick(Sender: TObject);
begin
dm.q_como.Cancel;
validainsercaodados;
end;



procedure TFRM_COMO.validainsercaodados;
begin
  Spprimeiro.enabled:=(dm.Q_COMO.state=dsbrowse);
SpAnterior.enabled:=(dm.Q_COMO.state=dsbrowse);
SpProximo.Enabled:=(dm.Q_COMO.State=dsBrowse);
spultimo.Enabled:=(dm.Q_COMO.State=dsBrowse);
SpInserir.Enabled:=(dm.Q_COMO.State=dsBrowse);
Speditar.Enabled:=(dm.Q_COMO.State=dsBrowse);
Spdeletar.Enabled:=(dm.Q_COMO.State=dsBrowse);
spgravar.enabled:=(dm.Q_COMO.state in [dsinsert,dsedit]);
SpCancelar.Enabled:=(dm.Q_COMO.state in [dsinsert,dsedit]);
spsair.enabled:=(dm.Q_COMO.state=dsBrowse);

end;

end.
