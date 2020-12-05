unit U_AQUI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons, db, dbtables;

type
  TFrm_Aqui = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
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
    procedure SpSairClick(Sender: TObject);
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
  Frm_Aqui: TFrm_Aqui;

implementation

uses U_DM;

{$R *.DFM}

procedure TFrm_Aqui.SpprimeiroClick(Sender: TObject);
begin
dm.Q_AQUI.First;
validanavegacao;
end;

procedure TFrm_Aqui.SpAnteriorClick(Sender: TObject);
begin
dm.Q_AQUI.Prior;
validanavegacao;
end;

procedure TFrm_Aqui.SpProximoClick(Sender: TObject);
begin
dm.q_patri.Next;
validanavegacao;
end;

procedure TFrm_Aqui.SpUltimoClick(Sender: TObject);
begin
dm.Q_AQUI.Last;
validanavegacao;
end;

procedure TFrm_Aqui.validanavegacao;
begin
Spprimeiro.enabled:=not(dm.Q_AQUI.bof);
spanterior.enabled:=not(dm.q_aqui.bof);
spproximo.enabled:=not(dm.q_aqui.eof);
spultimo.enabled:=not(dm.q_aqui.eof);

end;

procedure TFrm_Aqui.FormShow(Sender: TObject);
begin
validanavegacao;
end;

procedure TFrm_Aqui.SpSairClick(Sender: TObject);
begin
close;
end;

procedure TFrm_Aqui.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.q_patri.close;
dm.q_aqui.close;
dm.q_como.close;
dm.q_tipo.close;
end;

procedure TFrm_Aqui.validainsercaodados;
begin

Spprimeiro.enabled:=(dm.Q_AQUI.state=dsbrowse);
SpAnterior.enabled:=(dm.Q_AQUI.state=dsbrowse);
SpProximo.Enabled:=(dm.Q_AQUI.State=dsBrowse);
spultimo.Enabled:=(dm.Q_AQUI.State=dsBrowse);
SpInserir.Enabled:=(dm.Q_AQUI.State=dsBrowse);
Speditar.Enabled:=(dm.Q_AQUI.State=dsBrowse);
Spdeletar.Enabled:=(dm.Q_AQUI.State=dsBrowse);
spgravar.enabled:=(dm.Q_AQUI.state in [dsinsert,dsedit]);
SpCancelar.Enabled:=(dm.Q_AQUI.state in [dsinsert,dsedit]);
spsair.enabled:=(dm.Q_AQUI.state=dsBrowse);

end;

procedure TFrm_Aqui.SpInserirClick(Sender: TObject);
begin
dm.q_aqui.insert;
validainsercaodados;
end;

procedure TFrm_Aqui.SpdeletarClick(Sender: TObject);
begin
dm.q_aqui.Edit;
validainsercaodados;
end;

procedure TFrm_Aqui.SpeditarClick(Sender: TObject);
begin
dm.q_aqui.Delete;
validainsercaodados;
end;

procedure TFrm_Aqui.SpGravarClick(Sender: TObject);
begin
dm.q_aqui.Post;
validainsercaodados;
end;

procedure TFrm_Aqui.SpCancelarClick(Sender: TObject);
begin
dm.q_aqui.Cancel;
validainsercaodados;
end;

end.
