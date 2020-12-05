unit U_REL_AULAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, DBTables, QuickRpt, ExtCtrls;

type
  TFRM_REL_AULAS = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    Q_REL_AULAS: TQuery;
    Q_REL_AULASdescricao_dia: TStringField;
    Q_REL_AULASsigla_disciplina: TStringField;
    Q_REL_AULAShora_inicial: TStringField;
    Q_REL_AULAShora_final: TStringField;
    Q_REL_AULASperiodo_horario: TStringField;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_AULAS: TFRM_REL_AULAS;

implementation

uses U_DM;

{$R *.dfm}

end.
