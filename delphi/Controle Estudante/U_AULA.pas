unit U_AULA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, db, dbtables;

type
  TFRM_AULA = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
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
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
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
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_AULA: TFRM_AULA;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_AULA.spprimeiroClick(Sender: TObject);
begin
dm.Q_AULA.First;
validanavegacao;
end;

procedure TFRM_AULA.spanteriorClick(Sender: TObject);
begin
dm.q_aula.prior;
validanavegacao;
end;

procedure TFRM_AULA.spproximoClick(Sender: TObject);
begin
dm.q_aula.Next;
validanavegacao;
end;

procedure TFRM_AULA.spultimoClick(Sender: TObject);
begin
dm.q_aula.Last;
validanavegacao;
end;

procedure TFRM_AULA.spinserirClick(Sender: TObject);
begin
dm.q_aula.Insert;
validainsercaodados;
end;

procedure TFRM_AULA.speditarClick(Sender: TObject);
begin
dm.q_aula.edit;
validainsercaodados;
end;

procedure TFRM_AULA.spdeletarClick(Sender: TObject);
begin
dm.q_aula.Delete;
validainsercaodados;
end;

procedure TFRM_AULA.spgravarClick(Sender: TObject);
begin
dm.q_aula.post;
validainsercaodados;
end;

procedure TFRM_AULA.spcancelarClick(Sender: TObject);
begin
dm.q_aula.Cancel;
validainsercaodados;
end;

procedure TFRM_AULA.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_AULA.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_AULA.state=dsbrowse);
spanterior.enabled:=(dm.Q_AULA.state=dsbrowse);
spproximo.enabled:=(dm.Q_AULA.state=dsbrowse);
spultimo.enabled:=(dm.Q_AULA.state=dsbrowse);
spinserir.enabled:=(dm.Q_AULA.state=dsbrowse);
speditar.enabled:=(dm.Q_AULA.state=dsbrowse);
spdeletar.enabled:=(dm.Q_AULA.state=dsbrowse);
spgravar.enabled:=(dm.Q_AULA.state in [dsinsert, dsedit]);
spcancelar.enabled:=(dm.Q_AULA.state in [dsinsert, dsedit]);
spsair.enabled:=(dm.q_aula.state=dsbrowse);
end;

procedure TFRM_AULA.validanavegacao;
begin
spprimeiro.enabled:=not(dm.q_aula.bof);
spanterior.Enabled:=not(dm.q_aula.Bof);
spproximo.enabled:=not(dm.q_aula.Eof);
spultimo.enabled:=not(dm.q_aula.eof);
end;

procedure TFRM_AULA.FormShow(Sender: TObject);
begin
dm.q_aula.open;
dm.q_dias.Open;
dm.q_horarios.open;
dm.Q_DISCIPLINAS.Open;
validanavegacao;
end;

procedure TFRM_AULA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_aula.close;
dm.q_dias.close;
dm.q_horarios.close;
dm.Q_DISCIPLINAS.close;
end;

end.
