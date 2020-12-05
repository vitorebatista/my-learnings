unit UnMedia2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  Md: array[1..8] of Real;
  Soma, Media: Real;
  I, Codigo: Integer;
  CalcMedia: String;
begin
  Soma := 0;
  Val(Edit1.Text, Md[1], Codigo);
  Val(Edit2.Text, Md[2], Codigo);
  Val(Edit3.Text, Md[3], Codigo);
  Val(Edit4.Text, Md[4], Codigo);
  Val(Edit5.Text, Md[5], Codigo);
  Val(Edit6.Text, Md[6], Codigo);
  Val(Edit7.Text, Md[7], Codigo);
  Val(Edit8.Text, Md[8], Codigo);
  for I := 1 to 8 do
    Soma := Soma + Md[I];
  Media := Soma / 8;
  Str(Media:5:2, CalcMedia);
  Label3.Caption := CalcMedia;
  Edit1.SetFocus; Edit1.SetFocus;
end;

end.
