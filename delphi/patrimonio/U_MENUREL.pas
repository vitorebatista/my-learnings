unit U_MENUREL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, jpeg;

type
  TFRM_MENUREL = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENUREL: TFRM_MENUREL;

implementation

uses U_RELPATRI, U_RELAQUI, U_RELTIPO, U_RELCOMODO;

{$R *.DFM}

procedure TFRM_MENUREL.SpeedButton1Click(Sender: TObject);
begin
FRM_RELPATRI.QUICKREP1.PREVIEW;
end;

procedure TFRM_MENUREL.SpeedButton2Click(Sender: TObject);
begin
FRM_RELAQUI.QUICKREP1.PREVIEW;
end;

procedure TFRM_MENUREL.SpeedButton3Click(Sender: TObject);
begin
FRM_RELTIPO.QUICKREP1.PREVIEW;
end;

procedure TFRM_MENUREL.SpeedButton4Click(Sender: TObject);
begin
FRM_RELCOMODO.QUICKREP1.PREVIEW;
end;

procedure TFRM_MENUREL.SpeedButton5Click(Sender: TObject);
begin
close;
end;

end.
