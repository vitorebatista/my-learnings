unit U_MENU_RELATORIOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, jpeg;

type
  TFRM_MENU_RELATORIOS = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU_RELATORIOS: TFRM_MENU_RELATORIOS;

implementation

uses U_REL_DISCIPLINAS, U_REL_PROFESSORES, U_REL_TAREFAS;

{$R *.dfm}

procedure TFRM_MENU_RELATORIOS.SpeedButton1Click(Sender: TObject);
begin
try
application.createform(tfrm_rel_disciplinas, frm_rel_disciplinas);
frm_rel_disciplinas.quickrep1.preview;
finally
frm_rel_disciplinas.free;
end;
end;

procedure TFRM_MENU_RELATORIOS.SpeedButton2Click(Sender: TObject);
begin
try
application.createform(tfrm_rel_professores, frm_rel_professores);
frm_rel_professores.quickrep1.preview;
finally
frm_rel_professores.free
end;
end;

procedure TFRM_MENU_RELATORIOS.SpeedButton3Click(Sender: TObject);
begin
try
application.createform(tfrm_rel_tarefas, frm_rel_tarefas);
frm_rel_tarefas.quickrep1.preview;
finally
frm_rel_tarefas.free;
end;
end;

procedure TFRM_MENU_RELATORIOS.SpeedButton7Click(Sender: TObject);
begin
close;
end;

end.
