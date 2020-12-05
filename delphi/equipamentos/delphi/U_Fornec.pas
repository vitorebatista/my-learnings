unit U_Fornec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids,DB,DBtables, Buttons;

type
  TFrm_fornec = class(TForm)
    Label1: TLabel;
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
    dbedit2: TDBEdit;
    dbedit1: TDBEdit;
    procedure validanavegacao;
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpprimeiroClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
    procedure SpInserirClick(Sender: TObject);
    procedure validainsercaodedados;
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
  Frm_fornec: TFrm_fornec;

implementation

uses U_DM;

{$R *.DFM}



procedure TFrm_fornec.validanavegacao;
begin
Spprimeiro.Enabled:=not(DM.Q_Fornec.Bof);
SpAnterior.Enabled:=not(DM.Q_Fornec.Bof);
SpProximo.Enabled:=not(DM.Q_Fornec.Eof);
SpUltimo.Enabled:=not(DM.Q_Fornec.Eof);
end;



procedure TFrm_fornec.SpprimeiroClick(Sender: TObject);
begin
DM.Q_Fornec.First;
validanavegacao;
end;

procedure TFrm_fornec.SpAnteriorClick(Sender:TObject);
begin
DM.Q_Fornec.Prior;
validanavegacao;
end;

procedure TFrm_fornec.SpProximoClick(Sender: TObject);
begin
DM.Q_Fornec.Next;
validanavegacao;
end;

procedure TFrm_fornec.SpUltimoClick(Sender: TObject);
begin
DM.Q_Fornec.Last;
validanavegacao;
end;

procedure TFrm_fornec.SpInserirClick(Sender: TObject);
begin
DM.Q_Fornec.insert;
validainsercaodedados;

end;

procedure TFrm_fornec.validainsercaodedados;
begin
Spprimeiro.Enabled:=(DM.Q_Fornec.State=dsbrowse);
SpAnterior.Enabled:=(DM.Q_Fornec.State=dsbrowse);
SpProximo.Enabled:=(DM.Q_Fornec.State=dsbrowse);
SpUltimo.Enabled:=(DM.Q_Fornec.State=dsbrowse);
SpInserir.Enabled:=(DM.Q_Fornec.State=dsbrowse);
Speditar.Enabled:=(DM.Q_Fornec.State=dsbrowse);
Spdeletar.Enabled:=(DM.Q_Fornec.State=dsbrowse);
SpGravar.Enabled:=(DM.Q_Fornec.state in [dsinsert,dsedit]);
SpCancelar.Enabled:=(DM.Q_Fornec.state in [dsinsert,dsedit]);
SpSair.Enabled:=(DM.Q_Fornec.state in [dsinsert,dsedit]);
end;

procedure TFrm_fornec.SpdeletarClick(Sender: TObject);
begin
DM.Q_Fornec.delete;
validainsercaodedados;

end;

procedure TFrm_fornec.SpeditarClick(Sender: TObject);
begin
DM.Q_Fornec.edit;
validainsercaodedados;
end;

procedure TFrm_fornec.SpGravarClick(Sender: TObject);
begin
DM.Q_Fornec.cancel;
validainsercaodedados;
end;

procedure TFrm_fornec.SpCancelarClick(Sender: TObject);
begin
close;
end;

end.
