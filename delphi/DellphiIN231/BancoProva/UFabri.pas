unit UFabri;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TFrmFabri = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    RadioGroup1: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFabri: TFrmFabri;

implementation

uses UDM;

{$R *.DFM}

procedure TFrmFabri.FormShow(Sender: TObject);
begin
Dm.Q_Fabri.Open;
end;

procedure TFrmFabri.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dm.Q_Fabri.Close;
end;

end.
