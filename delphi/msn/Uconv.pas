unit Uconv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus;

type
  TFRMconv = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    MEM1: TMemo;
    BTNenv: TButton;
    MEM2: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure BTNenvClick(Sender: TObject);
    procedure MEM2KeyPress(Sender: TObject; var Key: Char);
    procedure MEM1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRMconv: TFRMconv;
  arq: TextFile;

implementation

{$R *.DFM}

procedure TFRMconv.FormCreate(Sender: TObject);
begin
AssignFile ( arq, 'C:\temp\msn\texto.txt' ); 
Reset ( arq );
MEM1.Clear;
MEM2.Clear;
end;

procedure TFRMconv.BTNenvClick(Sender: TObject);
var a: string;
begin
a:=MEM1.text;
MEM1.Clear;
MEM2.text:=MEM2.text+a;
MEM2.Lines.add('');
BTNenv.Enabled:=false;
MEM1.SetFocus;
end;

procedure TFRMconv.MEM2KeyPress(Sender: TObject; var Key: Char);
begin
if key<>'Ctrl+C' then
MEM2.clear;
end;

procedure TFRMconv.MEM1KeyPress(Sender: TObject; var Key: Char);
begin
if MEM1.text<>'' then
BTNenv.Enabled:=true
else
BTNenv.Enabled:=false;
end;

procedure TFRMconv.FormActivate(Sender: TObject);
begin
MEM1.SetFocus;
end;

end.
