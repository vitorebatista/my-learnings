unit U_Tpservico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons;

type
  Tfrm_Tpservico = class(TForm)
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
    procedure validanavegacao;
    procedure SpprimeiroClick(Sender: TObject);
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
    procedure validainsersaodedados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Tpservico: Tfrm_Tpservico;

implementation

uses U_DM;

{$R *.DFM}


{ Tfrm_Tpservico }

procedure Tfrm_Tpservico.validanavegacao;
begin
Spprimeiro.Enabled:=not(DM.Q_Tpservico.Bof);
SpAnterior.Enabled:=not(DM.Q_Tpservico.Bof);
SpProximo.Enabled:=not(DM.Q_Tpservico.Eof);
SpUltimo.Enabled:=not(DM.Q_Tpservico.Eof);
end;

procedure Tfrm_Tpservico.SpprimeiroClick(Sender: TObject);
begin
DM.Q_Tpservico.First;
validanavegacao;
end;

procedure Tfrm_Tpservico.SpAnteriorClick(Sender: TObject);
begin
DM.Q_Tpservico.Prior;
validanavegacao;
end;

procedure Tfrm_Tpservico.SpProximoClick(Sender: TObject);
begin
DM.Q_Tpservico.Next;
validanavegacao;
end;

procedure Tfrm_Tpservico.SpUltimoClick(Sender: TObject);
begin
DM.Q_Tpservico.Last;
validanavegacao;
end;

end.
