unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Menus;

type
  TFRMmenu = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    MainMenu1: TMainMenu;
    CadastroLivro1: TMenuItem;
    CadastroAutor1: TMenuItem;
    CadastroAutor2: TMenuItem;
    CadastroEditora1: TMenuItem;
    Relatrios1: TMenuItem;
    RelatrioLivro1: TMenuItem;
    RelatrioAutor1: TMenuItem;
    RelatrioEditora1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure CadastroAutor1Click(Sender: TObject);
    procedure CadastroAutor2Click(Sender: TObject);
    procedure CadastroEditora1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMmenu: TFRMmenu;

implementation

uses Ulivro, Uautor, Ueditora, URelGerais;

{$R *.DFM}

procedure TFRMmenu.Sair1Click(Sender: TObject);
begin
close;
end;

procedure TFRMmenu.CadastroAutor1Click(Sender: TObject);
begin
FRMlivro.ShowModal;
end;

procedure TFRMmenu.CadastroAutor2Click(Sender: TObject);
begin
FRMautor.ShowModal;
end;

procedure TFRMmenu.CadastroEditora1Click(Sender: TObject);
begin
FRMeditora.ShowModal;
end;

procedure TFRMmenu.BitBtn3Click(Sender: TObject);
begin
Application.CreateForm(TFRMeditora, FRMeditora);
FRMeditora.ShowModal;
FRMeditora.free;
end;

procedure TFRMmenu.BitBtn2Click(Sender: TObject);
begin
  Application.CreateForm(TFRMautor, FRMautor);
FRMautor.ShowModal;
FrmAutor.Free;
end;

procedure TFRMmenu.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(TFRMlivro, FRMlivro);
FRMlivro.ShowModal;
FRMlivro.free;
end;

procedure TFRMmenu.BitBtn4Click(Sender: TObject);
begin
close;
end;

procedure TFRMmenu.BitBtn5Click(Sender: TObject);
begin
 Application.CreateForm(TFrmRelGeral, FrmRelGeral);
 FrmRelGeral.Showmodal;
 FrmRelGeral.Free;
end;

end.
