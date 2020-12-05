unit U_Menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, jpeg;

type
  TFRM_MENU = class(TForm)
    MainMenu1: TMainMenu;
    Forms1: TMenuItem;
    Calculadora1: TMenuItem;
    Cores1: TMenuItem;
    Sair1: TMenuItem;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    Image1: TImage;
    Sair2: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

uses U_Calc, UCores;

{$R *.DFM}

procedure TFRM_MENU.Sair1Click(Sender: TObject);
begin
CLOSE
end;

procedure TFRM_MENU.Sair2Click(Sender: TObject);
begin
close
end;

procedure TFRM_MENU.Calculadora1Click(Sender: TObject);
begin
   FRM_CALC.ShowModal;
end;

procedure TFRM_MENU.Cores1Click(Sender: TObject);
begin
FRM_cores.Showmodal;
end;

procedure TFRM_MENU.N12Click(Sender: TObject);
begin
FRM_cores.Showmodal;
end;

procedure TFRM_MENU.N11Click(Sender: TObject);
begin
FRM_Calc.Showmodal;
end;

end.
