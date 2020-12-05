unit UnSort2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    procedure CriaEdit(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  Entrada: array[1..18] of TEdit;
  Nome: array[1..18] of String[20];

implementation

{$R *.DFM}

procedure TForm1.CriaEdit(Sender: TObject);
var
  Retorno: String;
  Topo: Integer;
  I: Integer;
begin
  Topo := 32;
  for I := 1 to 18 do
    begin
      Entrada[I] := TEdit.Create(Self);
      Entrada[I].Parent := Self;
      Entrada[I].Left := 16;
      Entrada[I].Top := Topo;
      Str(I, Retorno);
      Entrada[I].Name := 'Edit'+ Retorno;
      Entrada[I].Text := '';
      Topo := Topo + 24;
    end;
    Entrada[1].SetFocus;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  I, J: Integer;
  X: String[20];
begin
  ListBox1.Items.Clear;
  for I := 1 to 18 do
    Nome[I] := Entrada[I].Text;
  for I := 1 to 17 do
    for J := I + 1 to 18 do
      if (Nome[I] > Nome[J]) then
        begin
          X := Nome[I];
          Nome[I] := Nome[J];
          Nome[J] := X;
        end;
  for I := 1 to 18 do
    ListBox1.Items.Add(Nome[I]);
end;

end.
