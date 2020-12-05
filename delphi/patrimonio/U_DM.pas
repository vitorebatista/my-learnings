unit U_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    DS_PATRI: TDataSource;
    DS_AQUI: TDataSource;
    DS_TIPO: TDataSource;
    DS_COMO: TDataSource;
    Q_PATRI: TQuery;
    Q_AQUI: TQuery;
    Q_TIPO: TQuery;
    Q_COMO: TQuery;
    Base: TDatabase;
    Q_COMOCd_Comodo: TIntegerField;
    Q_COMODs_Comodo: TStringField;
    Q_TIPOCd_Tipo: TIntegerField;
    Q_TIPODs_Tipo: TStringField;
    Q_PATRINr_Patrimonio: TIntegerField;
    Q_PATRIDs_Patrimonio: TStringField;
    Q_PATRICd_Tipo: TIntegerField;
    Q_PATRICd_Comodo: TIntegerField;
    Q_PATRICd_Aquisicao: TIntegerField;
    Q_PATRIDt_Aquisicao: TDateTimeField;
    Q_PATRIVl_Patrimonio: TFloatField;
    Q_PATRIFoto: TBlobField;
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
