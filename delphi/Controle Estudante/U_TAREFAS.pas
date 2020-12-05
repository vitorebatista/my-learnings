unit U_TAREFAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, db, dbtables;

type
  TFRM_TAREFAS = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    UI: TDBEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    spprimeiro: TSpeedButton;
    spanterior: TSpeedButton;
    spproximo: TSpeedButton;
    spultimo: TSpeedButton;
    spinserir: TSpeedButton;
    speditar: TSpeedButton;
    spdeletar: TSpeedButton;
    spgravar: TSpeedButton;
    spsair: TSpeedButton;
    spcancelar: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    Panel2: TPanel;
    Edit1: TEdit;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    edtdata1: TEdit;
    edtdata2: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure spprimeiroClick(Sender: TObject);
    procedure spanteriorClick(Sender: TObject);
    procedure spproximoClick(Sender: TObject);
    procedure spultimoClick(Sender: TObject);
    procedure spinserirClick(Sender: TObject);
    procedure speditarClick(Sender: TObject);
    procedure spdeletarClick(Sender: TObject);
    procedure spgravarClick(Sender: TObject);
    procedure spcancelarClick(Sender: TObject);
    procedure spsairClick(Sender: TObject);
    procedure validainsercaodados;
    procedure validanavegacao;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
    function AnoBiSexto(ano:integer):Boolean;

  public
    { Public declarations }
  end;

var
  FRM_TAREFAS: TFRM_TAREFAS;
  dias:array[0..30]of integer;
  x:integer;

implementation

uses U_DM, U_MENU, U_REL_TAREFAS2, U_REL_TAREFAS;

{$R *.DFM}

procedure TFRM_TAREFAS.spprimeiroClick(Sender: TObject);
begin
dm.Q_TAREFAS.First;
validanavegacao;
end;

procedure TFRM_TAREFAS.spanteriorClick(Sender: TObject);
begin
dm.Q_TAREFAS.Prior;
validanavegacao;
end;

procedure TFRM_TAREFAS.spproximoClick(Sender: TObject);
begin
dm.Q_TAREFAS.Next;
validanavegacao;
end;

procedure TFRM_TAREFAS.spultimoClick(Sender: TObject);
begin
dm.q_tarefas.Last;
validanavegacao;
end;

procedure TFRM_TAREFAS.spinserirClick(Sender: TObject);
begin
dm.q_tarefas.Insert;
validainsercaodados;
end;

procedure TFRM_TAREFAS.speditarClick(Sender: TObject);
begin
dm.q_tarefas.Edit;
validainsercaodados;
end;

procedure TFRM_TAREFAS.spdeletarClick(Sender: TObject);
begin
dm.Q_TAREFAS.Delete;
validainsercaodados;
end;

procedure TFRM_TAREFAS.spgravarClick(Sender: TObject);
begin
dm.Q_TAREFAS.Post;
validainsercaodados;
end;

procedure TFRM_TAREFAS.spcancelarClick(Sender: TObject);
begin
dm.Q_TAREFAS.Cancel;
validainsercaodados;
end;

procedure TFRM_TAREFAS.spsairClick(Sender: TObject);
begin
close;
end;

procedure TFRM_TAREFAS.validainsercaodados;
begin
spprimeiro.enabled:=(dm.Q_TAREFAS.state=dsbrowse);
spanterior.enabled:=(dm.q_tarefas.state=dsbrowse);
spproximo.enabled:=(dm.q_tarefas.state=dsbrowse);
spultimo.enabled:=(dm.q_tarefas.state=dsbrowse);
spinserir.enabled:=(dm.q_tarefas.state=dsbrowse);
speditar.enabled:=(dm.q_tarefas.state=dsbrowse);
spdeletar.enabled:=(dm.q_tarefas.state=dsbrowse);
spgravar.enabled:=(dm.q_tarefas.state in [dsinsert,dsedit]);
spcancelar.enabled:=(dm.q_tarefas.state in [dsinsert,dsedit]);
spsair.enabled:=(dm.q_tarefas.state=dsbrowse);

edit1.enabled:=(dm.q_tarefas.state in [dsinsert,dsedit]);
combobox1.enabled:=(dm.q_tarefas.state in [dsinsert,dsedit]);
combobox2.enabled:=(dm.q_tarefas.state in [dsinsert,dsedit]);
SpeedButton1.enabled:=(dm.q_tarefas.State in [dsinsert,dsedit]);

end;

procedure TFRM_TAREFAS.validanavegacao;
begin
spprimeiro.Enabled:=not(dm.q_tarefas.Bof);
spanterior.Enabled:=not(dm.q_tarefas.Bof);
spproximo.Enabled:=not(dm.q_tarefas.eof);
spultimo.Enabled:=not(dm.q_tarefas.eof);
end;

procedure TFRM_TAREFAS.FormShow(Sender: TObject);
begin
dm.Q_TAREFAS.Open;
dm.q_disciplinas.open;
dm.Q_HORARIOS.open;
dm.Q_DIAS.open;
validanavegacao;

end;

procedure TFRM_TAREFAS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
dm.Q_TAREFAS.close;
dm.q_disciplinas.close;
dm.q_horarios.close;
dm.q_dias.close;
end;

procedure TFRM_TAREFAS.FormCreate(Sender: TObject);
begin
ShortDateFormat:='dd/mm/yy';
end;

procedure TFRM_TAREFAS.ComboBox2Change(Sender: TObject);
var x:integer;
begin

combobox1.ItemIndex:=-1;

for x:=0 to 30 do
begin
dias[x]:=x+1;
end;

if combobox2.ItemIndex=0 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;



if combobox2.ItemIndex=1 then
begin
  if AnoBiSexto(strtoint(edit1.text)) then
  begin
    combobox1.items.Clear;
    for x:=0 to 28 do
    combobox1.items.add(floattostr(dias[x]));
  end
  else if ((AnoBiSexto(strtoint(edit1.text))=false)and(combobox1.ItemIndex=28)) then
  begin
    combobox1.items.Clear;
    for x:=0 to 27 do
    combobox1.items.add(floattostr(dias[x]));
    combobox1.ItemIndex:=27;
  end
  else
  begin
      combobox1.items.Clear;
    for x:=0 to 27 do
    combobox1.items.add(floattostr(dias[x]));
    combobox1.ItemIndex:=27;
  end;

end;

if combobox2.ItemIndex=2 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=3 then
begin
  combobox1.items.Clear;
  for x:=0 to 29 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=4 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=5 then
begin
  combobox1.items.Clear;
  for x:=0 to 29 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=6 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=7 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=8 then
begin
  combobox1.items.Clear;
  for x:=0 to 29 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=9 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=10 then
begin
  combobox1.items.Clear;
  for x:=0 to 29 do
  combobox1.items.add(floattostr(dias[x]));
end;

if combobox2.ItemIndex=5 then
begin
  combobox1.items.Clear;
  for x:=0 to 30 do
  combobox1.items.add(floattostr(dias[x]));
end;
end;

function TFrm_tarefas.AnoBiSexto(ano: Integer): Boolean;
begin
Result:=(ano mod 4=0)and((ano mod 100<>0)or(ano mod 400=0));
end;


procedure TFRM_TAREFAS.Edit1Change(Sender: TObject);
begin
if (AnoBiSexto(strtoint(edit1.text))) then
  label6.visible:=true
else
  label6.visible:=false;

if combobox2.ItemIndex=1 then
begin
  if AnoBiSexto(strtoint(edit1.text)) then
  begin
    combobox1.items.Clear;
    for x:=0 to 28 do
    combobox1.items.add(floattostr(dias[x]));
  end
  else if ((AnoBiSexto(strtoint(edit1.text))=false)and(combobox1.ItemIndex=28)) then
  begin
    combobox1.items.Clear;
    for x:=0 to 27 do
    combobox1.items.add(floattostr(dias[x]));
    combobox1.ItemIndex:=27;
  end
  else
  begin
    combobox1.items.Clear;
    for x:=0 to 27 do
    combobox1.items.add(floattostr(dias[x]));
    combobox1.itemindex:=27;
  end;

end;

end;

procedure TFRM_TAREFAS.SpeedButton1Click(Sender: TObject);
var a, db, m, d:string;
x:integer;
begin

a:=edit1.text;
a:=a[3]+a[length(a)];
m:=inttostr(ComboBox2.itemindex+1);
if (strtoint(m)<10) then
  m:='0'+m;
d:=inttostr(ComboBox1.itemindex+1);
if (strtoint(d)<10) then
  d:='0'+d;

db:=(d)+'/'+(m)+'/'+a;
dbedit3.text:=db;





if (d='00')and(m='00') then
begin
begin
messagedlg('Data Inválida',mterror,[mbOk],0);
combobox2.itemindex:=0;
combobox1.items.Clear;
for x:=0 to 30 do
begin
  dias[x]:=x+1;
  combobox1.items.add(floattostr(dias[x]));
end;
combobox1.ItemIndex:=0;
end
end

else if (d='00')and(m<>'00') then
begin
messagedlg('Data Inválida',mterror,[mbOk],0);
combobox2.itemindex:=0;
combobox1.items.Clear;
for x:=0 to 30 do
begin
  dias[x]:=x+1;
  combobox1.items.add(floattostr(dias[x]));
end;
combobox1.ItemIndex:=0;
end

else if (d<>'00')and(m='00') then
begin
begin
messagedlg('Data Inválida',mterror,[mbOk],0);
combobox2.itemindex:=0;
combobox1.items.Clear;
for x:=0 to 30 do
begin
  dias[x]:=x+1;
  combobox1.items.add(floattostr(dias[x]));
end;
combobox1.ItemIndex:=0;
end
end;
a:=edit1.text;
a:=a[3]+a[length(a)];
m:=inttostr(ComboBox2.itemindex+1);
if (strtoint(m)<10) then
  m:='0'+m;
d:=inttostr(ComboBox1.itemindex+1);
if (strtoint(d)<10) then
  d:='0'+d;
db:=(d)+'/'+(m)+'/'+a;
dbedit3.text:=db;



end;







procedure TFRM_TAREFAS.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
label4.visible:=false;
end;

procedure TFRM_TAREFAS.Panel2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if SpeedButton1.Enabled=true then
label4.visible:=true;
end;

procedure TFRM_TAREFAS.Label5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if SpeedButton1.Enabled=true then
label4.visible:=true;
end;

procedure TFRM_TAREFAS.SpeedButton2Click(Sender: TObject);
var a, db, m, d, cod, dis, des:string;
x, qtdreg:integer;
begin

dm.q_tarefas.First;

dm.q_tarefas.edit;

edtdata1.text:=datetostr(now);
a:=edit1.text;
a:=a[3]+a[length(a)];
m:=inttostr(ComboBox2.itemindex+1);
if (strtoint(m)<10) then
  m:='0'+m;
d:=inttostr(ComboBox1.itemindex+1);
if (strtoint(d)<10) then
  d:='0'+d;
db:=(d)+'/'+(m)+'/'+a;
edtdata2.text:=dbedit3.text;

dm.q_tarefas.Cancel;

qtdreg:=dm.Q_TAREFAS.recordcount;



for x:=0 to qtdreg-1 do
begin
  if (edtdata1.text=edtdata2.text) then
  begin
    cod:=dbedit1.text;
    dis:=DBLookupComboBox1.text;

    

    des:=ui.text;
    messagedlg('Tarefa código '+cod+' encontrada: '+des+' ('+ dis+')',mtWarning{Custom},[mbOK],0);
  end;
  dm.Q_TAREFAS.next;
  edtdata1.text:=datetostr(now);
  edtdata2.text:=dbedit3.text;
end;
dm.Q_TAREFAS.first;



end;



procedure TFRM_TAREFAS.SpeedButton3Click(Sender: TObject);
begin
FRM_REL_TAREFAS.QUICKREP1.PREVIEW;
end;

end.




