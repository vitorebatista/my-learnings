unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TFRM_menu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_menu: TFRM_menu;
  jog1, jog2: string;

implementation

uses Unit1, Uopc;

{$R *.dfm}

procedure TFRM_menu.SpeedButton1Click(Sender: TObject);
Begin
Application.CreateForm(TForm1, Form1);
Form1.ShowModal;
end;

procedure TFRM_menu.SpeedButton2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFRM_menu.FormCreate(Sender: TObject);
begin
jog1:='Jogador1';
jog2:='Jogador2';
end;

procedure TFRM_menu.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TFRm_opt, FRm_opt);
FRm_opt.ShowModal;
end;

end.
