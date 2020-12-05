unit U_PROFESSOR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, db, dbtables;

type
  TFRM_PROFESSOR = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
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
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
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
  FRM_PROFESSOR: TFRM_PROFESSOR;

implementation

uses U_DM;

{$R *.DFM}

procedure TFRM_PROFESSOR.spprimeiroClick(Sender: TObject);
begin
dm.Q_PROFESSOR.First;
validanavegacao;
end;

procedure TFRM_PROFESSOR.spanteriorClick(Sender: TObject);
begin
dm.Q_PROFESSOR.prior;
validanavegacao;
end;

procedure TFRM_PROFESSOR.spproximoClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Next;
validanavegacao;
end;

procedure TFRM_PROFESSOR.spultimoClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Last;
validanavegacao;
end;

procedure TFRM_PROFESSOR.spinserirClick(Sender: TObject);
begin
dm.Q_PROFESSOR.insert;
validainsercaodados;
end;

procedure TFRM_PROFESSOR.speditarClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Edit;
validainsercaodados;
end;

procedure TFRM_PROFESSOR.spdeletarClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Delete;
validainsercaodados;
end;

procedure TFRM_PROFESSOR.spgravarClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Post;
validainsercaodados;
end;

procedure TFRM_PROFESSOR.spcancelarClick(Sender: TObject);
begin
dm.Q_PROFESSOR.Cancel;
validainsercaodados;
end;

procedure TFRM_PROFESSOR.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_PROFESSOR.validanavegacao;
begin
spprimeiro.enabled:=not(dm.q_professor.bof);
spanterior.enabled:=not(dm.q_professor.bof);
spproximo.enabled:=not(dm.q_professor.eof);
spultimo.enabled:=not(dm.q_professor.eof);
end;

procedure TFRM_PROFESSOR.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_PROFESSOR.state=dsbrowse);
spanterior.enabled:=(dm.q_professor.state=dsbrowse);
spproximo.enabled:=(dm.q_professor.state=dsbrowse);
spultimo.enabled:=(dm.q_professor.state=dsbrowse);
spinserir.enabled:=(dm.q_professor.state=dsbrowse);
speditar.enabled:=(dm.q_professor.state=dsbrowse);
spdeletar.enabled:=(dm.q_professor.state=dsbrowse);
spgravar.enabled:=(dm.q_professor.state in [dsinsert,dsedit]);
spcancelar.enabled:=(dm.q_professor.state in [dsinsert,dsedit]);
spsair.enabled:=(dm.q_professor.state=dsbrowse);

end;

procedure TFRM_PROFESSOR.FormShow(Sender: TObject);
begin
dm.q_professor.Open;
dm.Q_DISCIPLINAS.open;
validanavegacao;
end;

procedure TFRM_PROFESSOR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.q_professor.close;
dm.Q_DISCIPLINAS.close;
end;

end.
