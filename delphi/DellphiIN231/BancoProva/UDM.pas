unit UDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    Q_Onibus: TQuery;
    Q_Cor: TQuery;
    Q_Fabri: TQuery;
    Ds_Onibus: TDataSource;
    Ds_Cor: TDataSource;
    Ds_Fabri: TDataSource;
    Base: TDatabase;
    Q_OnibusCd_Onibus: TIntegerField;
    Q_OnibusModelo: TStringField;
    Q_OnibusCd_Fabri: TIntegerField;
    Q_OnibusData_Fabri: TDateTimeField;
    Q_OnibusCd_cor: TIntegerField;
    Q_OnibusQuant_Lugares: TIntegerField;
    Q_OnibusVL_Pago: TFloatField;
    Q_CorCd_Cor: TIntegerField;
    Q_CorDs_Cor: TStringField;
    Q_FabriCD_Fabri: TIntegerField;
    Q_FabriDs_Fabri: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.DFM}

end.
