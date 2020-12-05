unit UnMedia;

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
  Md1, Md2, Md3, Md4, Md5, Md6, Md7, Md8: Real;
  Soma, Media: Real;
  Codigo: Integer;
  CalcMedia: String;
begin
  Soma := 0;
  Val(Edit1.Text, Md1, Codigo);
  Val(Edit2.Text, Md2, Codigo);
  Val(Edit3.Text, Md3, Codigo);
  Val(Edit4.Text, Md4, Codigo);
  Val(Edit5.Text, Md5, Codigo);
  Val(Edit6.Text, Md6, Codigo);
  Val(Edit7.Text, Md7, Codigo);
  Val(Edit8.Text, Md8, Codigo);
  Soma := Md1+Md2+Md3+Md4+Md5+Md6+Md7+Md8;
  Media := Soma / 8;
  Str(Media:5:2, CalcMedia);
  Label3.Caption := CalcMedia;
  Edit1.SetFocus;
end;

end.
