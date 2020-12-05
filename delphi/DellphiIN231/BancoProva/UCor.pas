unit UCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TFrmCor = class(TForm)
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
  FrmCor: TFrmCor;

implementation

uses UDM;

{$R *.DFM}

procedure TFrmCor.FormShow(Sender: TObject);
begin
Dm.Q_Cor.Open;
end;

procedure TFrmCor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dm.Q_Cor.Close;
end;

end.
