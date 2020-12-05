unit Ueditora;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, db, dbtables, Grids, DBGrids;

type
  TFRMeditora = class(TForm)
    Panel1: TPanel;
    SBPrimeiro: TSpeedButton;
    SBAnterior: TSpeedButton;
    SBProximo: TSpeedButton;
    SBUltimo: TSpeedButton;
    SBNovo: TSpeedButton;
    SBEditar: TSpeedButton;
    SBSalvar: TSpeedButton;
    SBExcluir: TSpeedButton;
    SBCancelar: TSpeedButton;
    SBSair: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SBPrimeiroClick(Sender: TObject);
    procedure SBAnteriorClick(Sender: TObject);
    procedure SBProximoClick(Sender: TObject);
    procedure SBUltimoClick(Sender: TObject);
    procedure validanavegacao;
    procedure SBSairClick(Sender: TObject);
    procedure SBNovoClick(Sender: TObject);
    procedure SBEditarClick(Sender: TObject);
    procedure SBSalvarClick(Sender: TObject);
    procedure SBExcluirClick(Sender: TObject);
    procedure SBCancelarClick(Sender: TObject);
    procedure validainsercao;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMeditora: TFRMeditora;

implementation

uses UDM;

{$R *.DFM}

procedure TFRMeditora.SBPrimeiroClick(Sender: TObject);
begin
DM.Teditora.First;
validanavegacao;
end;

procedure TFRMeditora.SBAnteriorClick(Sender: TObject);
begin
DM.Teditora.Prior;
validanavegacao;
end;

procedure TFRMeditora.SBProximoClick(Sender: TObject);
begin
DM.Teditora.Next;
validanavegacao;
end;

procedure TFRMeditora.SBUltimoClick(Sender: TObject);
begin
DM.Teditora.Last;
validanavegacao;
end;

procedure TFRMeditora.validanavegacao;
begin
SBPrimeiro.enabled:=NOT (DM.Teditora.BOF);
SBAnterior.enabled:=NOT (DM.Teditora.BOF);
SBProximo.enabled:=NOT (DM.Teditora.EOF);
SBUltimo.enabled:=NOT (DM.Teditora.EOF);

end;

procedure TFRMeditora.SBSairClick(Sender: TObject);
begin
close;
end;

procedure TFRMeditora.SBNovoClick(Sender: TObject);
begin
DM.Teditora.Insert;
validainsercao;
end;

procedure TFRMeditora.SBEditarClick(Sender: TObject);
begin
DM.Teditora.Edit;
validainsercao;
end;

procedure TFRMeditora.SBSalvarClick(Sender: TObject);
begin
DM.Teditora.Post;
validainsercao;
end;

procedure TFRMeditora.SBExcluirClick(Sender: TObject);
begin
DM.Teditora.Delete;
validanavegacao;
end;

procedure TFRMeditora.SBCancelarClick(Sender: TObject);
begin
DM.Teditora.Cancel;
validainsercao;
end;

procedure TFRMeditora.validainsercao;
begin
SBPrimeiro.enabled:= (DM.Teditora.State=Dsbrowse);
SBAnterior.enabled:= (DM.Teditora.State=Dsbrowse);
SBPrimeiro.enabled:= (DM.Teditora.State=Dsbrowse);
SBProximo.enabled:= (DM.Teditora.State=Dsbrowse);
SBUltimo.enabled:= (DM.Teditora.State=dsBrowse);
SBNovo.enabled:=(DM.Teditora.State=dsBrowse);
SBEditar.enabled:=(DM.Teditora.State=dsBrowse);
SBSalvar.enabled:=(DM.Teditora.State in [Dsinsert, dsedit]);
SBCancelar.enabled:=(DM.Teditora.State in [Dsinsert, dsedit]);
SBExcluir.enabled:=(DM.Teditora.State=dsBrowse);
SBSair.enabled:=(DM.Teditora.State=dsBrowse);
end;

end.
