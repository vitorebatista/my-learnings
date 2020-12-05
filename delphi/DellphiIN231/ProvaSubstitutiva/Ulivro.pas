unit Ulivro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Mask, DBCtrls, db, dbtables;

type
  TFRMlivro = class(TForm)
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
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
    procedure SpeedButton1Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMlivro: TFRMlivro;

implementation

uses UDM, UPesqLivros;

{$R *.DFM}

procedure TFRMlivro.SBPrimeiroClick(Sender: TObject);
begin
DM.Tlivro.First;
validanavegacao;
end;

procedure TFRMlivro.SBAnteriorClick(Sender: TObject);
begin
DM.Tlivro.Prior;
validanavegacao;
end;

procedure TFRMlivro.SBProximoClick(Sender: TObject);
begin
DM.Tlivro.Next;
validanavegacao;
end;

procedure TFRMlivro.SBUltimoClick(Sender: TObject);
begin
DM.Tlivro.Last;
validanavegacao;
end;

procedure TFRMlivro.validanavegacao;
begin
SBPrimeiro.enabled:=NOT (DM.Tlivro.BOF);
SBAnterior.enabled:=NOT (DM.Tlivro.BOF);
SBProximo.enabled:=NOT (DM.Tlivro.EOF);
SBUltimo.enabled:=NOT (DM.Tlivro.EOF);
end;

procedure TFRMlivro.SBSairClick(Sender: TObject);
begin
close;
end;

procedure TFRMlivro.SBNovoClick(Sender: TObject);
begin
DM.Tlivro.Insert;
validainsercao;
end;

procedure TFRMlivro.SBEditarClick(Sender: TObject);
begin
DM.Tlivro.Edit;
validainsercao;
end;

procedure TFRMlivro.SBSalvarClick(Sender: TObject);
begin
DM.Tlivro.Post;
validainsercao;
end;

procedure TFRMlivro.SBExcluirClick(Sender: TObject);
begin
DM.Tlivro.Delete;
validainsercao;
end;

procedure TFRMlivro.SBCancelarClick(Sender: TObject);
begin
DM.Tlivro.Cancel;
validainsercao;
end;

procedure TFRMlivro.validainsercao;
begin
SBPrimeiro.enabled:= (DM.Tlivro.State=Dsbrowse);
SBAnterior.enabled:= (DM.Tlivro.State=Dsbrowse);
SBPrimeiro.enabled:= (DM.Tlivro.State=Dsbrowse);
SBProximo.enabled:= (DM.Tlivro.State=Dsbrowse);
SBUltimo.enabled:= (DM.Tlivro.State=dsBrowse);
SBNovo.enabled:=(DM.Tlivro.State=dsBrowse);
SBEditar.enabled:=(DM.Tlivro.State=dsBrowse);
SBSalvar.enabled:=(DM.Tlivro.State in [Dsinsert, dsedit]);
SBCancelar.enabled:=(DM.Tlivro.State in [Dsinsert, dsedit]);
SBExcluir.enabled:=(DM.Tlivro.State=dsBrowse);
SBSair.enabled:=(DM.Tlivro.State=dsBrowse);
end;

procedure TFRMlivro.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPesqLivro, FrmPesqLivro);
  FrmPesqLivro.Showmodal;
  FrmPesqLivro.free;
end;

end.
