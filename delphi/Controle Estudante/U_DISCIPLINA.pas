unit U_DISCIPLINA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, db, dbtables;

type
  TFRM_DISCIPLINAS = class(TForm)
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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure spdeletarClick(Sender: TObject);
    procedure spsairClick(Sender: TObject);
    procedure spinserirClick(Sender: TObject);
    procedure speditarClick(Sender: TObject);
    procedure spgravarClick(Sender: TObject);
    procedure spcancelarClick(Sender: TObject);
    procedure spprimeiroClick(Sender: TObject);
    procedure spanteriorClick(Sender: TObject);
    procedure spproximoClick(Sender: TObject);
    procedure spultimoClick(Sender: TObject);
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
  FRM_DISCIPLINAS: TFRM_DISCIPLINAS;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_DISCIPLINAS.spdeletarClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Delete;
validainsercaodados;
end;

procedure TFRM_DISCIPLINAS.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_DISCIPLINAS.spinserirClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Insert;
validainsercaodados;
end;

procedure TFRM_DISCIPLINAS.speditarClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Edit;
validainsercaodados;
end;

procedure TFRM_DISCIPLINAS.spgravarClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Post;
validainsercaodados;
end;

procedure TFRM_DISCIPLINAS.spcancelarClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Cancel;
validainsercaodados;
end;

procedure TFRM_DISCIPLINAS.spprimeiroClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.first;
validanavegacao;
end;

procedure TFRM_DISCIPLINAS.spanteriorClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Prior;
validanavegacao;
end;

procedure TFRM_DISCIPLINAS.spproximoClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.next;
validanavegacao;
end;

procedure TFRM_DISCIPLINAS.spultimoClick(Sender: TObject);
begin
dm.Q_DISCIPLINAS.last;
validanavegacao;
end;

procedure TFRM_DISCIPLINAS.validanavegacao;
begin
spprimeiro.enabled:=not(dm.Q_DISCIPLINAS.bof);
spanterior.enabled:=not(dm.Q_DISCIPLINAs.bof);
spproximo.enabled:=not(dm.Q_DISCIPLINAS.eof);
spultimo.enabled:=not(dm.Q_DISCIPLINAS.eof);
end;

procedure TFRM_DISCIPLINAS.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spanterior.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spproximo.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spultimo.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spinserir.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
speditar.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spdeletar.enabled:=(dm.Q_DISCIPLINAS.state=dsbrowse);
spgravar.enabled:=(dm.Q_DISCIPLINAS.state in [dsinsert, dsedit]);
spcancelar.enabled:=(dm.Q_DISCIPLINAS.state in [dsinsert, dsedit]);
spsair.enabled:=(dm.q_disciplinas.state=dsbrowse);
end;

procedure TFRM_DISCIPLINAS.FormShow(Sender: TObject);
begin
dm.Q_DISCIPLINAS.open;
dm.q_aula.open;
validanavegacao;
end;

procedure TFRM_DISCIPLINAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_DISCIPLINAS.close;
dm.q_aula.Close;
end;

end.
