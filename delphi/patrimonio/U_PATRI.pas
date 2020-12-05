unit U_PATRI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, ExtDlgs, DB, DBTABLES;

type
  TFRM_PATRI = class(TForm)
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
    DBGrid1: TDBGrid;
    DBImage1: TDBImage;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpprimeiroClick(Sender: TObject);
    procedure SpAnteriorClick(Sender: TObject);
    procedure SpProximoClick(Sender: TObject);
    procedure SpUltimoClick(Sender: TObject);
    procedure SpSairClick(Sender: TObject);
    procedure validanavegacao;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpInserirClick(Sender: TObject);
    procedure SpdeletarClick(Sender: TObject);
    procedure SpeditarClick(Sender: TObject);
    procedure SpGravarClick(Sender: TObject);
    procedure SpCancelarClick(Sender: TObject);
    procedure validainsercaodados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PATRI: TFRM_PATRI;

implementation

uses U_DM;



{$R *.DFM}

procedure TFRM_PATRI.SpeedButton1Click(Sender: TObject);
begin
OpenPictureDialog1.Execute;
DBImage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;
procedure TFRM_PATRI.SpprimeiroClick(Sender: TObject);
begin
dm.Q_PATRI.first;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_PATRI.SpAnteriorClick(Sender: TObject);
begin
dm.q_patri.prior;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_PATRI.SpProximoClick(Sender: TObject);
begin
dm.q_patri.Next;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_PATRI.SpUltimoClick(Sender: TObject);
begin
dm.q_patri.Last;
validanavegacao;
validainsercaodados;
end;

procedure TFRM_PATRI.SpSairClick(Sender: TObject);
begin
close;
validainsercaodados;
end;

procedure TFRM_PATRI.validanavegacao;
begin
Spprimeiro.enabled:=not(dm.Q_PATRI.Bof);
spanterior.enabled:=not(dm.q_patri.bof);
spproximo.enabled:=not(dm.q_patri.eof);
spultimo.enabled:=not(dm.q_patri.eof);
end;

procedure TFRM_PATRI.FormShow(Sender: TObject);
begin
dm.q_patri.open;
dm.q_aqui.Open;
dm.q_como.open;
dm.q_tipo.Open;
validanavegacao;
end;

procedure TFRM_PATRI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.q_patri.close;
dm.q_aqui.close;
dm.q_como.close;
dm.q_tipo.close;
end;

procedure TFRM_PATRI.SpInserirClick(Sender: TObject);
begin
dm.q_patri.insert;
validainsercaodados;

end;

procedure TFRM_PATRI.SpdeletarClick(Sender: TObject);
begin
dm.q_patri.edit;
validainsercaodados;

end;

procedure TFRM_PATRI.SpeditarClick(Sender: TObject);
begin
dm.Q_PATRI.delete;
validainsercaodados;

end;

procedure TFRM_PATRI.SpGravarClick(Sender: TObject);
begin
dm.q_patri.Post;
validainsercaodados;

end;

procedure TFRM_PATRI.SpCancelarClick(Sender: TObject);
begin
dm.q_patri.cancel;
validainsercaodados;

end;

procedure TFRM_PATRI.validainsercaodados;
begin
Spprimeiro.enabled:=(dm.q_patri.state=dsbrowse);
SpAnterior.enabled:=(dm.q_patri.state=dsbrowse);
SpProximo.Enabled:=(dm.Q_PATRI.State=dsBrowse);
spultimo.Enabled:=(dm.Q_PATRI.State=dsBrowse);
SpInserir.Enabled:=(dm.Q_PATRI.State=dsBrowse);
Speditar.Enabled:=(dm.Q_PATRI.State=dsBrowse);
Spdeletar.Enabled:=(dm.Q_PATRI.State=dsBrowse);
spgravar.enabled:=(dm.q_patri.state in [dsinsert,dsedit]);
SpCancelar.Enabled:=(dm.q_patri.state in [dsinsert,dsedit]);
spsair.enabled:=(dm.Q_PATRI.state=dsBrowse);

end;

end.
