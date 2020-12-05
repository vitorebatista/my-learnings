unit U_REL_DISCIPLINAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFRM_REL_DISCIPLINAS = class(TForm)
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
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand5: TQRBand;
    QRLabel5: TQRLabel;
    QRBand6: TQRBand;
    QRBand7: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand8: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_DISCIPLINAS: TFRM_REL_DISCIPLINAS;

implementation

uses U_AULA, U_DIAS, U_DISCIPLINA, U_DM, U_HORARIOS, U_MENU,
  U_MENU_RELATORIOS, U_PROFESSOR, U_TAREFAS;

{$R *.dfm}

procedure TFRM_REL_DISCIPLINAS.FormShow(Sender: TObject);
begin
dm.Q_DISCIPLINAS.open;
end;

procedure TFRM_REL_DISCIPLINAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_DISCIPLINAS.Close;
end;

end.
