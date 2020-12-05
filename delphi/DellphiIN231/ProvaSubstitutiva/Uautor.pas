unit Uautor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, db, dbtables, Grids, DBGrids;

type
  TFRMautor = class(TForm)
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
  FRMautor: TFRMautor;

implementation

uses UDM;

{$R *.DFM}

procedure TFRMautor.SBPrimeiroClick(Sender: TObject);
begin
DM.Tautor.First;
validanavegacao;
end;

procedure TFRMautor.SBAnteriorClick(Sender: TObject);
begin
DM.Tautor.Prior;
validanavegacao;
end;

procedure TFRMautor.SBProximoClick(Sender: TObject);
begin
DM.Tautor.Next;
validanavegacao;
end;

procedure TFRMautor.SBUltimoClick(Sender: TObject);
begin
DM.Tautor.Last;
validanavegacao;
end;

procedure TFRMautor.validanavegacao;
begin
SBPrimeiro.enabled:=NOT (DM.Tautor.BOF);
SBAnterior.enabled:=NOT (DM.Tautor.BOF);
SBProximo.enabled:=NOT (DM.Tautor.EOF);
SBUltimo.enabled:=NOT (DM.Tautor.EOF);

end;

procedure TFRMautor.SBSairClick(Sender: TObject);
begin
close;
end;

procedure TFRMautor.SBNovoClick(Sender: TObject);
begin
DM.Tautor.Insert;
validainsercao;
end;

procedure TFRMautor.SBEditarClick(Sender: TObject);
begin
DM.Tautor.Edit;
validainsercao;
end;

procedure TFRMautor.SBSalvarClick(Sender: TObject);
begin
DM.Tautor.Post;
validainsercao;
end;

procedure TFRMautor.SBExcluirClick(Sender: TObject);
begin
DM.Tautor.Delete;
validainsercao;
end;

procedure TFRMautor.SBCancelarClick(Sender: TObject);
begin
DM.Tautor.Cancel;
validainsercao;
end;

procedure TFRMautor.validainsercao;
begin
SBPrimeiro.enabled:= (DM.Tautor.State=Dsbrowse);
SBAnterior.enabled:= (DM.Tautor.State=Dsbrowse);
SBPrimeiro.enabled:= (DM.Tautor.State=Dsbrowse);
SBProximo.enabled:= (DM.Tautor.State=Dsbrowse);
SBUltimo.enabled:= (DM.Tautor.State=dsBrowse);
SBNovo.enabled:=(DM.Tautor.State=dsBrowse);
SBEditar.enabled:=(DM.Tautor.State=dsBrowse);
SBSalvar.enabled:=(DM.Tautor.State in [Dsinsert, dsedit]);
SBCancelar.enabled:=(DM.Tautor.State in [Dsinsert, dsedit]);
SBExcluir.enabled:=(DM.Tautor.State=dsBrowse);
SBSair.enabled:=(DM.Tautor.State=dsBrowse);
end;

end.
