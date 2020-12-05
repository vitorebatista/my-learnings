unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel10: TPanel;
    Panel1: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Lbljog: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure validajogada;
    procedure validajogo;
    procedure verifvenc;
    procedure FormCreate(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel7MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel8MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel6MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel9MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  jogador: integer;
  panelclick: integer;
  ver: integer;
  vencedor: integer;

implementation

uses Uvenc, Uopc, Umenu;

{$R *.dfm}

procedure TForm1.validajogada;
begin
if jogador=0 then
begin
lbljog.Caption:='Jogador 1';
jogador:=1;
if ver=1 then
begin
if jog1<>'' then
begin
label4.caption:=jog1;
label4.Font.Style:=[fsBold];
label5.Font.Style:=[];
end;
end;
end
else if jogador=1 then
begin
lbljog.Caption:='Jogador 2';
jogador:=0;
if jog2<>'' then
begin
label5.caption:=jog2;
label5.Font.Style:=[fsBold];
label4.Font.Style:=[];
end;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
jogador:=0;
validajogada;
if ((jog1<>'') or (jog2<>'')) then
begin
if jog1<>'' then
Label4.caption:=jog1;
if jog2<>'' then
label5.Caption:=jog2;
ver:=1;
if ((jog2<>'Jogador2') or (jog1<>'Jogador1')) then
Lbljog.Visible:=false
else
begin
Label4.Visible:=false;
Label5.Visible:=false;
end;
end;
end;

procedure TForm1.validajogo;
begin
if jogador=0 then
begin
if panelclick=1 then
begin
panel1.caption:='x';
panel1.Enabled:=false;
end
else if panelclick=2 then
begin
panel2.caption:='x';
panel2.Enabled:=false;
end
else if panelclick=3 then
begin
panel3.caption:='x';
panel3.Enabled:=false;
end
else if panelclick=4 then
begin
panel4.caption:='x';
panel4.Enabled:=false;
end
else if panelclick=5 then
begin
panel5.caption:='x';
panel5.Enabled:=false;
end
else if panelclick=6 then
begin
panel6.caption:='x';
panel6.Enabled:=false;
end
else if panelclick=7 then
begin
panel7.caption:='x';
panel7.Enabled:=false;
end
else if panelclick=8 then
begin
panel8.caption:='x';
panel8.Enabled:=false;
end
else if panelclick=9 then
begin
panel9.caption:='x';
panel9.Enabled:=false;
end
end
else if jogador=1 then
begin
if panelclick=1 then
begin
panel1.caption:='o';
panel1.Enabled:=false;
end
else if panelclick=2 then
begin
panel2.caption:='o';
panel2.Enabled:=false;
end
else if panelclick=3 then
begin
panel3.caption:='o';
panel3.Enabled:=false;
end
else if panelclick=4 then
begin
panel4.caption:='o';
panel4.Enabled:=false;
end
else if panelclick=5 then
begin
panel5.caption:='o';
panel5.Enabled:=false;
end
else if panelclick=6 then
begin
panel6.caption:='o';
panel6.Enabled:=false;
end
else if panelclick=7 then
begin
panel7.caption:='o';
panel7.Enabled:=false;
end
else if panelclick=8 then
begin
panel8.caption:='o';
panel8.Enabled:=false;
end
else if panelclick=9 then
begin
panel9.caption:='o';
panel9.Enabled:=false;
end;
end;
validajogada;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
panelclick:=3;
validajogo;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
panelclick:=2;
validajogo;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
panelclick:=1;
validajogo;
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
panelclick:=4;
validajogo;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
panelclick:=5;
validajogo;
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
panelclick:=6;
validajogo;
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
panelclick:=7;
validajogo;
end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
panelclick:=8;
validajogo;
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin
panelclick:=9;
validajogo;
end;

procedure TForm1.verifvenc;
var vencedor: integer;
begin
if (jogador=0) then
begin
if ((Panel1.Enabled=false) and (Panel4.Enabled=false) and (Panel7.Enabled=false) and
(Panel1.Caption='o') and (Panel4.Caption='o') and (Panel7.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if((Panel1.Enabled=false) and (Panel2.Enabled=false) and (Panel3.Enabled=false)and
(Panel1.Caption='o') and (Panel2.Caption='o') and (Panel3.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel1.Enabled=false) and (Panel5.Enabled=false) and (Panel9.Enabled=false)and
(Panel1.Caption='o') and (Panel5.Caption='o') and (Panel9.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel2.Enabled=false) and (Panel5.Enabled=false) and (Panel8.Enabled=false)and
(Panel2.Caption='o') and (Panel5.Caption='o') and (Panel8.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel3.Enabled=false) and (Panel5.Enabled=false) and (Panel7.Enabled=false)and
(Panel3.Caption='o') and (Panel5.Caption='o') and (Panel7.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel3.Enabled=false) and (Panel6.Enabled=false) and (Panel9.Enabled=false)and
(Panel3.Caption='o') and (Panel6.Caption='o') and (Panel9.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel9.Enabled=false) and (Panel8.Enabled=false) and (Panel7.Enabled=false)and
(Panel9.Caption='o') and (Panel8.Caption='o') and (Panel7.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel4.Enabled=false) and (Panel5.Enabled=false) and (Panel6.Enabled=false)and
(Panel4.Caption='o') and (Panel5.Caption='o') and (Panel6.Caption='o')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
end


else if (jogador=1) then
begin
if ((Panel1.Enabled=false) and (Panel4.Enabled=false) and (Panel7.Enabled=false) and
(Panel1.Caption='x') and (Panel4.Caption='x') and (Panel7.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if((Panel1.Enabled=false) and (Panel2.Enabled=false) and (Panel3.Enabled=false)and
(Panel1.Caption='x') and (Panel2.Caption='x') and (Panel3.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel1.Enabled=false) and (Panel5.Enabled=false) and (Panel9.Enabled=false)and
(Panel1.Caption='x') and (Panel5.Caption='x') and (Panel9.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel2.Enabled=false) and (Panel5.Enabled=false) and (Panel8.Enabled=false)and
(Panel2.Caption='x') and (Panel5.Caption='x') and (Panel8.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel3.Enabled=false) and (Panel5.Enabled=false) and (Panel7.Enabled=false)and
(Panel3.Caption='x') and (Panel5.Caption='x') and (Panel7.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel3.Enabled=false) and (Panel6.Enabled=false) and (Panel9.Enabled=false)and
(Panel3.Caption='x') and (Panel6.Caption='x') and (Panel9.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel9.Enabled=false) and (Panel8.Enabled=false) and (Panel7.Enabled=false)and
(Panel9.Caption='x') and (Panel8.Caption='x') and (Panel7.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
else if ((Panel4.Enabled=false) and (Panel5.Enabled=false) and (Panel6.Enabled=false)and
(Panel4.Caption='x') and (Panel5.Caption='x') and (Panel6.Caption='x')) then
begin
FRM_venc.showmodal;
vencedor:=1;
end
end;
if (vencedor=1) then
begin
FRM_venc.showmodal;
Panel1.Enabled:=true;
panel1.Caption:='';
Panel2.Enabled:=true;
panel2.Caption:='';
Panel3.Enabled:=true;
panel3.Caption:='';
Panel4.Enabled:=true;
panel4.Caption:='';
Panel5.Enabled:=true;
panel5.Caption:='';
Panel6.Enabled:=true;
panel6.Caption:='';
Panel7.Enabled:=true;
panel7.Caption:='';
Panel8.Enabled:=true;
panel8.Caption:='';
Panel9.Enabled:=true;
panel9.Caption:='';
end;
end;

procedure TForm1.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel7MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel8MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel6MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

procedure TForm1.Panel9MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
verifvenc;
end;

end.
