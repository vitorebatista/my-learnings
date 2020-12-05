unit UPesqUnibus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids;

type
  TFrmPesqOnibus = class(TForm)
    DBGrid1: TDBGrid;
    EdtPesq: TEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqOnibus: TFrmPesqOnibus;

implementation

{$R *.DFM}

end.
