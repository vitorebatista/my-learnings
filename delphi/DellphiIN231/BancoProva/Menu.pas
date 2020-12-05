unit Menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons;

type
  TFrmMenu = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

uses UOnibus, UFabri, UCor, URelGerais;

{$R *.DFM}

procedure TFrmMenu.SpeedButton1Click(Sender: TObject);
begin
 Application.CreateForm(TFrmOnibus, FrmOnibus);
 FrmOnibus.showmodal;
 FrmOnibus.Free;
end;

procedure TFrmMenu.SpeedButton3Click(Sender: TObject);
begin
 Application.CreateForm(TFrmCor, FrmCor);
 Frmcor.Showmodal;
 FrmCor.Free;
end;

procedure TFrmMenu.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFrmFabri, FrmFabri);
  FrmFabri.Showmodal;
  FrmFabri.free;
end;

procedure TFrmMenu.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRel, FrmRel);
  FrmRel.Showmodal;
  FrmRel.free;
end;

end.
