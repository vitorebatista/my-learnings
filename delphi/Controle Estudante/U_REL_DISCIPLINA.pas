unit U_REL_DISCIPLINA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFRM_REL_DISCIPLINA = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_DISCIPLINA: TFRM_REL_DISCIPLINA;

implementation

uses U_DM, U_DISCIPLINA;

{$R *.dfm}

procedure TFRM_REL_DISCIPLINA.FormShow(Sender: TObject);
begin
dm.q_disciplinas.open;

end;

end.
