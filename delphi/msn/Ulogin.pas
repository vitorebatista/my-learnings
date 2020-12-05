unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, Ubd, Db, Uconv;

type
  TFRMmsn = class(TForm)
    pnlprinc: TPanel;
    BTNconect: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BTNconectClick(Sender: TObject);
    procedure BTNconectExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMmsn: TFRMmsn;

implementation

{$R *.DFM}


procedure TFRMmsn.FormCreate(Sender: TObject);
begin
with Edit1 do
begin
CharCase := ecUpperCase;
PasswordChar := '*';
end;
end;

procedure TFRMmsn.BTNconectClick(Sender: TObject);
var a: string;
begin
a:=dm.Q_loginusuario.asstring;
if (Edit2.text='') or (Edit1.text='') then
showmessage('O nome de usuario ou senha está vazio')
else if (Edit2.text=a) and (Edit1.text=dm.Q_loginsenha.value) then
begin
showmessage('Conectado!');
Application.CreateForm(TFRMconv, FRMconv);
FRMconv.showmodal;
end
else
showmessage('O nome de usuáiro ou senha estão incorretos');
close;
end;


procedure TFRMmsn.BTNconectExit(Sender: TObject);
begin
Edit2.SetFocus;
end;

procedure TFRMmsn.FormActivate(Sender: TObject);
begin
Edit2.setfocus;
end;

procedure TFRMmsn.Edit2Exit(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TFRMmsn.Edit1Exit(Sender: TObject);
begin
BTNconect.SetFocus;
end;

end.
