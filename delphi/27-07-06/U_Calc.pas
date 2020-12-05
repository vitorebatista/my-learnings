unit U_Calc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFRM_CALC = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    LBL_RESULT: TLabel;
    EDT_NUM1: TEdit;
    EDT_NUM2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_CALC: TFRM_CALC;
  num1,num2,total:real;

implementation

{$R *.DFM}

procedure TFRM_CALC.Button2Click(Sender: TObject);
begin
close
end;

procedure TFRM_CALC.Button3Click(Sender: TObject);

begin
        num1:=strtofloat(edt_num1.text);
        num2:=strtofloat(edt_num2.text);
        total:=num1+num2;
        lbl_result.caption:=floattostr(total);

end;

procedure TFRM_CALC.Button4Click(Sender: TObject);

begin
        num1:=strtofloat(edt_num1.text);
        num2:=strtofloat(edt_num2.text);
        total:=num1-num2;
        lbl_result.caption:=floattostr(total);

end;

procedure TFRM_CALC.Button5Click(Sender: TObject);

begin
        num1:=strtofloat(edt_num1.text);
        num2:=strtofloat(edt_num2.text);
        total:=num1*num2;
        lbl_result.caption:=floattostr(total);

end;

procedure TFRM_CALC.Button6Click(Sender: TObject);

begin
        num1:=strtofloat(edt_num1.text);
        num2:=strtofloat(edt_num2.text);
        total:=num1/num2;
        lbl_result.caption:=floattostr(total);

end;

procedure TFRM_CALC.Button1Click(Sender: TObject);
begin
        edt_num1.clear;
        edt_num2.clear;
        lbl_result.caption:='';
end;

end.
