unit U_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, Db, IBQuery, IBCustomDataSet, IBTable;

type
  TDM = class(TDataModule)
    TBL_COMODO: TIBTable;
    TBL_TIPOBEM: TIBTable;
    TBL_AQUISICAO: TIBTable;
    TBL_PATRIMONIO: TIBTable;
    Q_COMODO: TIBQuery;
    Q_TIPOBEM: TIBQuery;
    Q_AQUISICAO: TIBQuery;
    Q_PATRIMONIO: TIBQuery;
    DataBase: TIBDatabase;
    TBL_TABELASISTEMA: TIBTable;
    IBTransaction: TIBTransaction;
    TBL_COMODOCD_COMODO: TIBStringField;
    TBL_COMODODS_COMODO: TIBStringField;
    TBL_TIPOBEMCD_TIPO: TIBStringField;
    TBL_TIPOBEMDS_TIPO: TIBStringField;
    TBL_AQUISICAOCD_AQUISICAO: TIBStringField;
    TBL_AQUISICAODS_AQUISICAO: TIBStringField;
    TBL_PATRIMONIONR_PATRIMONIO: TIBStringField;
    TBL_PATRIMONIODS_PATRIMONIO: TIBStringField;
    TBL_PATRIMONIOCD_TIPO: TIBStringField;
    TBL_PATRIMONIOCD_COMODO: TIBStringField;
    TBL_PATRIMONIOCD_AQUISICAO: TIBStringField;
    TBL_PATRIMONIODT_AQUISICAO: TDateTimeField;
    TBL_PATRIMONIOVL_PATRIMONIO: TFloatField;
    TBL_TABELASISTEMACD_COMODO: TIBStringField;
    TBL_TABELASISTEMACD_TIPO: TIBStringField;
    TBL_TABELASISTEMACD_AQUISICAO: TIBStringField;
    TBL_TABELASISTEMANR_PATRIMONIO: TIBStringField;
    Q_COMODOCD_COMODO: TIBStringField;
    Q_COMODODS_COMODO: TIBStringField;
    Q_TIPOBEMCD_TIPO: TIBStringField;
    Q_TIPOBEMDS_TIPO: TIBStringField;
    Q_AQUISICAOCD_AQUISICAO: TIBStringField;
    Q_AQUISICAODS_AQUISICAO: TIBStringField;
    Q_PATRIMONIONR_PATRIMONIO: TIBStringField;
    Q_PATRIMONIODS_PATRIMONIO: TIBStringField;
    Q_PATRIMONIOCD_TIPO: TIBStringField;
    Q_PATRIMONIOCD_COMODO: TIBStringField;
    Q_PATRIMONIOCD_AQUISICAO: TIBStringField;
    Q_PATRIMONIODT_AQUISICAO: TDateTimeField;
    Q_PATRIMONIOVL_PATRIMONIO: TFloatField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
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
