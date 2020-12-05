unit U_HORARIOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, db, dbtables;

type
  TFRM_HORARIOS = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBEdit5: TDBEdit;
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
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_HORARIOS: TFRM_HORARIOS;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_HORARIOS.spprimeiroClick(Sender: TObject);
begin
dm.Q_HORARIOS.First;
validanavegacao;
end;

procedure TFRM_HORARIOS.spanteriorClick(Sender: TObject);
begin
dm.Q_horarios.prior;
validanavegacao;
end;

procedure TFRM_HORARIOS.spproximoClick(Sender: TObject);
begin
dm.q_horarios.Next;
validanavegacao;
end;

procedure TFRM_HORARIOS.spultimoClick(Sender: TObject);
begin
dm.Q_HORARIOS.Last;
validanavegacao;
end;

procedure TFRM_HORARIOS.spinserirClick(Sender: TObject);
begin
dm.Q_HORARIOS.Insert;
validainsercaodados;
end;

procedure TFRM_HORARIOS.speditarClick(Sender: TObject);
begin
dm.Q_HORARIOS.Edit;
validainsercaodados;
end;

procedure TFRM_HORARIOS.spdeletarClick(Sender: TObject);
begin
dm.q_horarios.Delete;
validainsercaodados;
end;

procedure TFRM_HORARIOS.spgravarClick(Sender: TObject);
begin
dm.q_horarios.post;
validainsercaodados;
end;

procedure TFRM_HORARIOS.spcancelarClick(Sender: TObject);
begin
dm.q_horarios.Cancel;
validainsercaodados;
end;

procedure TFRM_HORARIOS.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_HORARIOS.validanavegacao;
begin
spprimeiro.Enabled:=not(dm.q_horarios.Bof);
spanterior.Enabled:=not(dm.q_horarios.Bof);
spproximo.Enabled:=not(dm.q_horarios.eof);
spultimo.Enabled:=not(dm.q_horarios.eof);
end;

procedure TFRM_HORARIOS.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spanterior.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spproximo.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spultimo.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spinserir.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
speditar.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spdeletar.enabled:=(dm.Q_HORARIOS.state=dsbrowse);
spgravar.enabled:=(dm.Q_HORARIOS.state in [dsinsert, dsedit]);
spcancelar.enabled:=(dm.Q_HORARIOS.state in [dsinsert, dsedit]);
spsair.enabled:=(dm.q_horarios.state=dsbrowse);
end;

procedure TFRM_HORARIOS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_HORARIOS.close;
dm.q_disciplinas.close;
dm.Q_AULA.close;
end;

procedure TFRM_HORARIOS.FormShow(Sender: TObject);
begin
dm.Q_HORARIOS.Open;
dm.q_disciplinas.open;
dm.Q_AULA.open;
validanavegacao;
end;

end.
