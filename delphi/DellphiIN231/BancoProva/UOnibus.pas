unit UOnibus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, ExtCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids;

type
  TFrmOnibus = class(TForm)
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
    DBNavigator1: TDBNavigator;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOnibus: TFrmOnibus;

implementation

uses UDM, UPesqUnibus;

{$R *.DFM}

procedure TFrmOnibus.FormShow(Sender: TObject);
begin
Dm.Q_Onibus.open;
Dm.Q_Cor.Open;
Dm.Q_Fabri.Open;
end;

procedure TFrmOnibus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dm.Q_Onibus.Close;
Dm.Q_Cor.Close;
Dm.Q_Fabri.Close;
end;

procedure TFrmOnibus.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmPesqOnibus, FrmPesqOnibus);
  FrmPesqOnibus.Showmodal;
  FrmPesqOnibus.free;
end;

end.
