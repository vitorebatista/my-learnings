unit UnSort3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Classificar: TButton;
    TotalNomes: TEdit;
    Aceitar: TButton;
    procedure ClassificarClick(Sender: TObject);
    procedure AceitarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

  Entrada: array of TEdit;
  Nome: array of String[20];
  Total: Integer;

implementation

{$R *.DFM}

procedure TForm1.ClassificarClick(Sender: TObject);
var
  I, J: Integer;
  X: String[20];
begin
  ListBox1.Items.Clear;
  for I := 0 to (Total - 1) do
    Nome[I] := Entrada[I].Text;
  for I := 0 to (Total - 1) - 1 do
    for J := I + 1 to (Total - 1) do
      if (Nome[I] > Nome[J]) then
        begin
          X := Nome[I];
          Nome[I] := Nome[J];
          Nome[J] := X;
        end;
  for I := 0 to (Total - 1) do
    ListBox1.Items.Add(Nome[I]);
end;

procedure TForm1.AceitarClick(Sender: TObject);
var
  Retorno: String;
  Topo: Integer;
  I: Integer;
begin
  Total := StrToInt(TotalNomes.Text);
  SetLength(Nome, Total);
  SetLength(Entrada, Total);
  Topo := 64;
  for I := 0 to (Total - 1) do
    begin
      Entrada[I] := TEdit.Create(Self);
      Entrada[I].Parent := Self;
      Entrada[I].Left := 8;
      Entrada[I].Top := Topo;
      Str(I, Retorno);
      Entrada[I].Name := 'Edit'+ Retorno;
      Entrada[I].Text := '';
      Topo := Topo + 24;
    end;
    Entrada[0].SetFocus;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  TotalNomes.SetFocus;
end;


end.
