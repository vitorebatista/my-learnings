unit U_TIPO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, db, dbtables;

type
  TFRM_TIPO = class(TForm)
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
    procedure SpSairClick(Sender: TObject);
    procedure validanavegacao;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure validainsercaodados;
    procedure SpInserirClick(Sender: TObject);
    procedure SpdeletarClick(Sender: TObject);
    procedure SpeditarClick(Sender: TObject);
    procedure SpGravarClick(Sender: TObject);
    procedure SpCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_TIPO: TFRM_TIPO;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_TIPO.SpprimeiroClick(Sender: TObject);
begin
dm.q_tipo.First;
validanavegacao;

end;

procedure TFRM_TIPO.SpAnteriorClick(Sender: TObject);
begin
dm.q_tipo.Prior;
validanavegacao;

end;

procedure TFRM_TIPO.SpProximoClick(Sender: TObject);
begin
dm.q_tipo.Next;
validanavegacao;

end;

procedure TFRM_TIPO.SpUltimoClick(Sender: TObject);
begin
dm.q_tipo.last;
validanavegacao;

end;

procedure TFRM_TIPO.SpSairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_TIPO.validanavegacao;
begin
spprimeiro.enabled:=not(dm.Q_TIPO.bof);
SpAnterior.enabled:=not(dm.Q_TIPO.bof);
SpProximo.enabled:=not(dm.Q_TIPO.eof);
SpUltimo.enabled:=not(dm.q_tipo.eof);

end;

procedure TFRM_TIPO.FormShow(Sender: TObject);
begin
validanavegacao;
end;

procedure TFRM_TIPO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_patri.close;
dm.q_aqui.close;
dm.q_como.close;
dm.q_tipo.close;
end;

procedure TFRM_TIPO.SpInserirClick(Sender: TObject);
begin
dm.q_tipo.insert;
validainsercaodados;
end;

procedure TFRM_TIPO.SpdeletarClick(Sender: TObject);
begin
dm.q_tipo.Edit;
validainsercaodados;
end;

procedure TFRM_TIPO.SpeditarClick(Sender: TObject);
begin
dm.q_tipo.delete;
validainsercaodados;

end;

procedure TFRM_TIPO.SpGravarClick(Sender: TObject);
begin
dm.q_tipo.post;
validainsercaodados;
end;

procedure TFRM_TIPO.SpCancelarClick(Sender: TObject);
begin
dm.q_tipo.Cancel;
validainsercaodados;
end;

procedure TFRM_TIPO.validainsercaodados;
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
