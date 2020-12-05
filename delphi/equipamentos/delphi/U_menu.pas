unit U_menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, Buttons, Menus;

type
  TF_menu = class(TForm)
    MainMenu1: TMainMenu;
    CentrodeCustosdaEmpresa1: TMenuItem;
    CadastrodosfornecedoresdeServico1: TMenuItem;
    Tiposdeservio1: TMenuItem;
    RemessadosEquipamentos1: TMenuItem;
    Sair1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Image1: TImage;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_menu: TF_menu;

implementation

uses U_CCusto, U_DM, U_Fornec, U_remessa, U_Tpservico, Urelcusto,
  U_relfornec, U_reltpservico, U_MENUREL, U_remessas;

{$R *.DFM}


procedure TF_menu.SpeedButton4Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_remessas, Frm_remessas);
Frm_remessas.showmodal;
finally;
frm_remessas.free;
end;
end;

procedure TF_menu.SpeedButton5Click(Sender: TObject);
begin
close;
end;

procedure TF_menu.SpeedButton6Click(Sender: TObject);
begin
try
application.createform(tfrm_menurel,frm_menurel);
frm_menurel.showmodal;
finally
frm_menurel.free;
end;
end;

procedure TF_menu.SpeedButton1Click(Sender: TObject);
begin

  Frm_CCusto.show;
  
end;

procedure TF_menu.SpeedButton2Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_fornec, Frm_fornec);
Frm_fornec.ShowModal;
finally
Frm_fornec.free;
end;
end;

procedure TF_menu.SpeedButton3Click(Sender: TObject);
begin
try
Application.CreateForm(Tfrm_Tpservico, frm_Tpservico);
frm_Tpservico.showmodal;
finally
frm_Tpservico.free;
end;

end;
end.



















