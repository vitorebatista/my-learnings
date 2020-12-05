unit UDM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables;

type
  TDM = class(TDataModule)
    Base: TDatabase;
    DS_editora: TDataSource;
    DS_autor: TDataSource;
    DS_livro: TDataSource;
    TEditora: TQuery;
    TAutor: TQuery;
    TLivro: TQuery;
    TEditoraCd_Editora: TIntegerField;
    TEditoraNm_Editora: TStringField;
    TLivroCd_livro: TIntegerField;
    TLivroNm_livro: TStringField;
    TLivroNE_livro: TStringField;
    TLivroAE_livro: TStringField;
    TLivroCD_Autor: TIntegerField;
    TLivroCD_Editora: TIntegerField;
    TLivroDT_Entrada: TDateTimeField;
    TLivroQTd_Livro: TIntegerField;
    TAutorCd_Autor: TIntegerField;
    TAutorNm_Autor: TStringField;
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
