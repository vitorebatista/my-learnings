unit U_MENU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, Buttons, ExtCtrls, jpeg;

type
  TFRM_MENU = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Patrimonio1: TMenuItem;
    Aquisiao1: TMenuItem;
    TipoBem1: TMenuItem;
    Comodo1: TMenuItem;
    Sair1: TMenuItem;
    Panel1: TPanel;
    SPB_patrimonio: TSpeedButton;
    spb_aquisicao: TSpeedButton;
    spb_tipobem: TSpeedButton;
    spb_comodo: TSpeedButton;
    spb_relatorios: TSpeedButton;
    spb_sair: TSpeedButton;
    img_casa: TImage;
    Relatrios1: TMenuItem;
    RelatrioTipoBem1: TMenuItem;
    RelatrioCmodo1: TMenuItem;
    RelatrioAquisio1: TMenuItem;
    RelatrioPatrimonio1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure spb_sairClick(Sender: TObject);
    procedure Patrimonio1Click(Sender: TObject);
    procedure Aquisiao1Click(Sender: TObject);
    procedure TipoBem1Click(Sender: TObject);
    procedure Comodo1Click(Sender: TObject);
    procedure spb_relatoriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENU: TFRM_MENU;

implementation

uses U_AQUI, U_COMO, U_DM, U_PATRI, U_TIPO, U_RELPATRI, U_RELAQUI,
  U_RELTIPO, U_RELCOMODO, U_MENUREL;

{$R *.DFM}

procedure TFRM_MENU.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFRM_MENU.spb_sairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_MENU.Patrimonio1Click(Sender: TObject);
begin
 try
 Application.CreateForm(TFRM_PATRI, FRM_PATRI);
 frm_patri.ShowModal;
 finally
 FRM_PATRI.Free;
 end;
end;

procedure TFRM_MENU.Aquisiao1Click(Sender: TObject);
begin
try
Application.CreateForm(TFrm_Aqui, Frm_Aqui);
frm_aqui.showmodal;
finally
frm_aqui.free;
end;
end;

procedure TFRM_MENU.TipoBem1Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFRM_TIPO, FRM_TIPO);
  frm_tipo.showmodal;
  finally
  frm_tipo.free;
  end;
end;

procedure TFRM_MENU.Comodo1Click(Sender: TObject);
begin
try
Application.CreateForm(TFRM_COMO, FRM_COMO);
frm_como.showmodal;
finally
frm_como.free;
end;
end;

procedure TFRM_MENU.spb_relatoriosClick(Sender: TObject);
begin
FRM_MENUREL.SHOWMODAL;
end;

end.
