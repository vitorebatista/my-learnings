unit UCores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFRM_Cores = class(TForm)
    RDG_CORES: TRadioGroup;
    PNL_VERMELHO: TPanel;
    PNL_BRANCO: TPanel;
    PNL_PRETO: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure RDG_CORESClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Cores: TFRM_Cores;

implementation

{$R *.DFM}

procedure TFRM_Cores.RDG_CORESClick(Sender: TObject);
begin
        CASE RDG_CORES.ITEMINDEX OF
        0: BEGIN
        PNL_VERMELHO.VISIBLE:=TRUE;
        PNL_VERMELHO.COLOR:=CLRED;
        PNL_BRANCO.VISIBLE:=FALSE;
        PNL_PRETO.VISIBLE:=FALSE;
        END;
        1: BEGIN
        PNL_VERMELHO.VISIBLE:=FALSE;
        PNL_BRANCO.COLOR:=CLWHITE;
        PNL_BRANCO.VISIBLE:=TRUE;
        PNL_PRETO.VISIBLE:=FALSE;
        END;
        2: BEGIN
        PNL_VERMELHO.VISIBLE:=FALSE;
        PNL_PRETO.COLOR:=CLBLACK;
        PNL_BRANCO.VISIBLE:=FALSE;
        PNL_PRETO.VISIBLE:=TRUE
        END;
        END;
end;

procedure TFRM_Cores.Button1Click(Sender: TObject);
begin
CLOSE
end;

procedure TFRM_Cores.Button2Click(Sender: TObject);
begin
        PNL_BRANCO.VISIBLE:=FALSE;
        PNL_VERMELHO.VISIBLE:=FALSE;
        PNL_PRETO.VISIBLE:=FALSE;
        RDG_CORES.ITEMINDEX:=-1;

end;

end.


