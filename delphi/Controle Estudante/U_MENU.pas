unit U_MENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, jpeg, ExtCtrls, Buttons;

type
  TFRM_MENU = class(TForm)
    MainMenu1: TMainMenu;
    Abrir1: TMenuItem;
    Aula1: TMenuItem;
    dias1: TMenuItem;
    Tarefas1: TMenuItem;
    Horrios1: TMenuItem;
    Aulas1: TMenuItem;
    Dias2: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Image1: TImage;
    SpeedButton9: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

uses U_DISCIPLINA, U_PROFESSOR, U_TAREFAS, U_HORARIOS, U_AULA, U_DIAS,
  U_MENU_RELATORIOS, U_ATIVIDADES;

{$R *.DFM}

procedure TFRM_MENU.SpeedButton1Click(Sender: TObject);
begin
try
application.createform(tfrm_disciplinas, frm_disciplinas);
frm_disciplinas.showmodal;
finally
frm_disciplinas.free;
end;
end;

procedure TFRM_MENU.SpeedButton2Click(Sender: TObject);
begin
try
application.createform(tfrm_professor,frm_professor);
frm_professor.showmodal;
finally
frm_professor.free;
end;
end;

procedure TFRM_MENU.SpeedButton3Click(Sender: TObject);
begin
try
application.createform(tfrm_tarefas, frm_tarefas);
frm_tarefas.showmodal;
finally
frm_tarefas.free;
end;
end;

procedure TFRM_MENU.SpeedButton4Click(Sender: TObject);
begin
try
application.createform(tfrm_horarios, frm_horarios);
frm_horarios.showmodal;
finally
frm_horarios.free;
end;
end;

procedure TFRM_MENU.SpeedButton5Click(Sender: TObject);
begin
try
application.createform(tfrm_aula, frm_aula);
frm_aula.showmodal;
finally
frm_aula.free;
end;
end;

procedure TFRM_MENU.SpeedButton6Click(Sender: TObject);
begin
try
application.createform(tfrm_atividades, frm_atividades);
frm_atividades.showmodal;
finally
frm_atividades.free;
end;
end;

procedure TFRM_MENU.SpeedButton7Click(Sender: TObject);
begin
close;
end;

procedure TFRM_MENU.SpeedButton8Click(Sender: TObject);
begin
try
application.createform(tfrm_menu_relatorios, frm_menu_relatorios);
frm_menu_relatorios.showmodal;
finally
frm_menu_relatorios.free;
end;
end;

end.
