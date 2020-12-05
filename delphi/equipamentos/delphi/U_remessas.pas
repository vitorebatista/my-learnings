unit U_remessas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids,DB, DBtables, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  TFrm_remessas = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    DBGrid1: TDBGrid;
    procedure validanavegacao;
    procedure validainsercaodedados;
    procedure SpprimeiroClick(Sender: TObject);
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
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
  Frm_remessas: TFrm_remessas;

implementation

uses U_DM;

{$R *.DFM}

procedure TFrm_remessas.validanavegacao;
begin
Spprimeiro.Enabled:=not(DM.q_remessa.bof);
Spanterior.enabled:=not(DM.q_remessa.bof);
Spproximo.enabled:=not(DM.q_remessa.eof);
Spultimo.enabled:=not(DM.q_remessa.eof);
end;

procedure TFrm_remessas.SpprimeiroClick(Sender: TObject);
begin
Dm.q_remessa.First;
validanavegacao;
end;

procedure TFrm_remessas.SpAnteriorClick(Sender: TObject);
begin
DM.q_remessa.Prior;
validanavegacao;
end;

procedure TFrm_remessas.SpProximoClick(Sender: TObject);
begin
DM.q_remessa.Next;
validanavegacao;
end;

procedure TFrm_remessas.SpUltimoClick(Sender: TObject);
begin
DM.q_remessa.Last;
validanavegacao;
end;

procedure TFrm_remessas.validainsercaodedados;
begin
Spprimeiro.enabled:=(DM.q_remessa.state=dsbrowse);
Spanterior.enabled:=(DM.q_remessa.state=dsbrowse);
Spproximo.enabled:=(DM.q_remessa.state=dsbrowse);
Spultimo.enabled:=(DM.q_remessa.state=dsbrowse);
Spinserir.enabled:=(DM.q_remessa.state=dsbrowse);
Speditar.enabled:=(DM.q_remessa.state=dsbrowse);
Spdeletar.enabled:=(DM.q_remessa.state=dsbrowse);
spgravar.enabled:=(DM.q_remessa.state in [dsinsert,dsedit]);
spcancelar.enabled:=(DM.q_remessa.state in [dsinsert,dsedit]);
spsair.enabled:=(DM.q_remessa.state in [dsinsert,dsedit]);
end;

procedure TFrm_remessas.SpInserirClick(Sender: TObject);
begin
DM.Q_remessa.insert;
validainsercaodedados;
end;

procedure TFrm_remessas.SpdeletarClick(Sender: TObject);
begin
DM.Q_remessa.delete;
validainsercaodedados;
end;

procedure TFrm_remessas.SpeditarClick(Sender: TObject);
begin
DM.Q_remessa.Edit;
validainsercaodedados;
end;

procedure TFrm_remessas.SpGravarClick(Sender: TObject);
begin
DM.Q_remessa.Post;
validainsercaodedados;
end;

procedure TFrm_remessas.SpCancelarClick(Sender: TObject);
begin
DM.Q_remessa.Cancel;
validainsercaodedados;
end;

end.
