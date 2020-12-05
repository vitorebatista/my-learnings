unit U_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    base: TDatabase;
    Q_CCcusto: TQuery;
    DS_CCusto: TDataSource;
    Q_Fornec: TQuery;
    DS_Fornec: TDataSource;
    Q_remessa: TQuery;
    DS_remessa: TDataSource;
    Q_Tpservico: TQuery;
    DS_Tpservico: TDataSource;
    Q_CCcustocd_ccusto: TIntegerField;
    Q_CCcustods_ccusto: TStringField;
    Q_Forneccd_fornecedor: TIntegerField;
    Q_Fornecds_fornecedor: TStringField;
    Q_remessacd_remessa: TIntegerField;
    Q_remessacd_equipamento: TStringField;
    Q_remessads_equipamento: TStringField;
    Q_remessavl_equipamento: TFloatField;
    Q_remessanm_responsavel: TStringField;
    Q_remessacd_ccusto: TIntegerField;
    Q_remessacd_fornecedor: TIntegerField;
    Q_remessanm_contato: TStringField;
    Q_remessacd_tpservico: TIntegerField;
    Q_remessads_servico: TStringField;
    Q_remessavl_orcado: TFloatField;
    Q_remessadt_recbto: TDateTimeField;
    Q_remessadt_saida: TDateTimeField;
    Q_remessanr_sc: TIntegerField;
    Q_remessadt_retorno: TDateTimeField;
    Q_Tpservicocd_tpservico: TIntegerField;
    Q_Tpservicods_tpservico: TStringField;
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
