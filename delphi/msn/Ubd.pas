unit Ubd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    DB1: TDatabase;
    Q_login: TQuery;
    DS1: TDataSource;
    Q_loginusuario: TStringField;
    Q_loginsenha: TStringField;
    Table1: TTable;
    Table1usuario: TStringField;
    Table1senha: TStringField;
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
