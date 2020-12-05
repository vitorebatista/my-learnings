unit U_MENUREL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, jpeg;

type
  TFRM_MENUREL = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_MENUREL: TFRM_MENUREL;

implementation

uses U_relfornec, Urelcusto, U_reltpservico, U_relremessa;

{$R *.DFM}

procedure TFRM_MENUREL.SpeedButton1Click(Sender: TObject);
begin
try
application.Createform(tFrmrelcusto,frmrelcusto);
Frmrelcusto.quickrep1.preview;
finally
Frmrelcusto.free;
end;

end;

procedure TFRM_MENUREL.SpeedButton2Click(Sender: TObject);
begin
try
application.createform(tFrm_relfornec,Frm_relfornec);
Frm_relfornec.QuickRep1.preview;
finally
Frm_relfornec.free;
end;
end;

procedure TFRM_MENUREL.SpeedButton3Click(Sender: TObject);
begin
try
application.createform(tFrm_reltpservico,Frm_reltpservico);
Frm_reltpservico.QuickRep1.preview;
finally
Frm_reltpservico.free;
end;

end;

procedure TFRM_MENUREL.SpeedButton4Click(Sender: TObject);
begin
try
application.createform(tFrm_relremessa,Frm_relremessa);
Frm_relremessa.QuickRep1.preview;
finally
Frm_relremessa.free;
end;

end;

end.
