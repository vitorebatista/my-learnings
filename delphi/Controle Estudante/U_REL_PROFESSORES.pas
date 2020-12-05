unit U_REL_PROFESSORES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, DB, QuickRpt, ExtCtrls, DBTables;

type
  TFRM_REL_PROFESSORES = class(TForm)
    Q_REL_PROFESSORES: TQuery;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    Q_REL_PROFESSORESnome_disciplina: TStringField;
    Q_REL_PROFESSORESnome_professor: TStringField;
    Q_REL_PROFESSOREStel_professor: TIntegerField;
    Q_REL_PROFESSORESemail_professor: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_PROFESSORES: TFRM_REL_PROFESSORES;

implementation

uses U_AULA, U_DIAS, U_DISCIPLINA, U_DM, U_HORARIOS, U_MENU,
  U_MENU_RELATORIOS, U_PROFESSOR, U_REL_DISCIPLINAS, U_TAREFAS;

{$R *.dfm}

procedure TFRM_REL_PROFESSORES.FormShow(Sender: TObject);
begin
dm.Q_DISCIPLINAS.Open;
dm.Q_PROFESSOR.open;
end;

procedure TFRM_REL_PROFESSORES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_DISCIPLINAS.close;
dm.Q_PROFESSOR.close;
end;

end.
