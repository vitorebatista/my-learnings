unit Uopc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls;

type
  TFRm_opt = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRm_opt: TFRm_opt;

implementation

uses Umenu;

{$R *.dfm}

procedure TFRm_opt.SpeedButton1Click(Sender: TObject);
begin
if Edit1.Text<>'' then
jog1:=Edit1.Text;
if edit2.Text<>'' then
jog2:=Edit2.Text;
close;
end;

end.
