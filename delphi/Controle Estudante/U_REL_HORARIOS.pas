unit U_REL_HORARIOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFRM_REL_HORARIOS = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_HORARIOS: TFRM_REL_HORARIOS;

implementation

uses U_DM, U_HORARIOS, U_ATIVIDADES, U_AULA, U_DIAS, U_DISCIPLINA, U_MENU,
  U_MENU_RELATORIOS, U_PROFESSOR, U_REL_DISCIPLINAS, U_REL_PROFESSORES,
  U_REL_TAREFAS, U_TAREFAS;

{$R *.dfm}

end.
