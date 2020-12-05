unit UnCalc2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TSalario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditHT: TEdit;
    EditVH: TEdit;
    EditPD: TEdit;
    SaLiq: TButton;
    Label4: TLabel;
    procedure SaLiqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Salario: TSalario;

implementation

{$R *.DFM}

procedure TSalario.SaLiqClick(Sender: TObject);
var
  HT, VH, PD, TD, SB, SL: Real;
  Codigo: Integer;
  Retorno: String;
begin
  Val(EditHT.Text, HT, Codigo);
  Val(EditVH.Text, VH, Codigo);
  Val(EditPD.Text, PD, Codigo);
  SB := HT * VH;
  TD := SB * (PD/100);
  SL := SB - TD;
  Str(SL:8:2, Retorno);
  Label4.Caption := Retorno;
end;

end.
