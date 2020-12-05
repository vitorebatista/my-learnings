unit U_RELAQUI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, ExtCtrls;

type
  TFRM_RELAQUI = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QUICKRELAQUISICAO: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RELAQUI: TFRM_RELAQUI;

implementation

uses U_DM;

{$R *.DFM}

end.
