unit U_CCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,DB, DBTables, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tfrm_Ccusto = class(TForm)
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
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    procedure SpprimeiroClick(Sender: TObject);
    procedure validanavegacao;
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
    procedure SpInserirClick(Sender: TObject);
    procedure SpdeletarClick(Sender: TObject);
    procedure SpeditarClick(Sender: TObject);
    procedure SpGravarClick(Sender: TObject);
    procedure SpCancelarClick(Sender: TObject);
    procedure validainsercaodedados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Ccusto: Tfrm_Ccusto;

implementation

uses U_DM;

{$R *.DFM}

procedure Tfrm_Ccusto.SpprimeiroClick(Sender: TObject);
begin
DM.Q_CCcusto.first;
validanavegacao;
end;

procedure Tfrm_Ccusto.SpAnteriorClick(Sender: TObject);
begin
DM.Q_CCcusto.prior;
validanavegacao;
end;

procedure Tfrm_Ccusto.SpProximoClick(Sender: TObject);
begin
DM.Q_CCcusto.next;
validanavegacao;
end;

procedure Tfrm_Ccusto.SpUltimoClick(Sender: TObject);
begin
DM.Q_CCcusto.last;
validanavegacao;
end;

procedure Tfrm_Ccusto.SpInserirClick(Sender: TObject);
begin
DM.Q_CCcusto.insert;
validainsercaodedados;
end;

procedure Tfrm_Ccusto.SpdeletarClick(Sender: TObject);
begin
DM.Q_CCcusto.delete;
validainsercaodedados;
end;

procedure Tfrm_Ccusto.SpeditarClick(Sender: TObject);
begin
DM.Q_CCcusto.edit;
validainsercaodedados;
end;

procedure Tfrm_Ccusto.SpGravarClick(Sender: TObject);
begin
DM.Q_CCcusto.post;
validainsercaodedados;
end;

procedure Tfrm_Ccusto.SpCancelarClick(Sender: TObject);
begin
DM.Q_CCcusto.cancel;
validainsercaodedados;
end;

procedure Tfrm_Ccusto.validanavegacao;
begin
Spprimeiro.enabled:=not(DM.Q_CCcusto.Bof);
SpAnterior.enabled:=not(DM.Q_CCcusto.Bof);
SpProximo.enabled:=not(DM.Q_CCcusto.Eof);
SpUltimo.enabled:=not(DM.Q_CCcusto.Eof);

end;

procedure Tfrm_Ccusto.validainsercaodedados;
begin
spprimeiro.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spanterior.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spproximo.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spultimo.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spinserir.enabled:=(DM.Q_CCcusto.state=dsbrowse);
speditar.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spdeletar.enabled:=(DM.Q_CCcusto.state=dsbrowse);
spgravar.enabled:=(DM.Q_CCcusto.state in [dsinsert,dsedit]);
spcancelar.enabled:=(DM.Q_CCcusto.state in [dsinsert,dsedit]);
spsair.enabled:=(DM.Q_CCcusto.state in [dsinsert,dsedit]);
end;

end.
