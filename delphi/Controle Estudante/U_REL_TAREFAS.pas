unit U_REL_TAREFAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TFRM_REL_TAREFAS = class(TForm)
    Q_REL_TAREFAS: TQuery;
    Q_REL_TAREFAScod_tarefa: TIntegerField;
    Q_REL_TAREFASdescricao_tarefa: TStringField;
    Q_REL_TAREFASdata_realizacao: TDateTimeField;
    Q_REL_TAREFASsigla_disciplina: TStringField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_REL_TAREFAS: TFRM_REL_TAREFAS;

implementation

uses U_AULA, U_DIAS, U_DISCIPLINA, U_DM, U_HORARIOS, U_MENU,
  U_MENU_RELATORIOS, U_PROFESSOR, U_REL_DISCIPLINAS, U_REL_PROFESSORES,
  U_TAREFAS;

{$R *.dfm}

procedure TFRM_REL_TAREFAS.FormShow(Sender: TObject);
begin
DM.q_tarefas.open;
dm.q_disciplinas.open;
end;

procedure TFRM_REL_TAREFAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.q_tarefas.close;
dm.q_disciplinas.close;
end;

end.
