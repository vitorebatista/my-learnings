unit UnCalcCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Bt1: TButton;
    Bt2: TButton;
    Bt3: TButton;
    Bt4: TButton;
    Bt5: TButton;
    Bt6: TButton;
    Bt7: TButton;
    Bt8: TButton;
    Bt9: TButton;
    Bt0: TButton;
    BtInv: TButton;
    BtPto: TButton;
    BtAdc: TButton;
    BtSub: TButton;
    BtDiv: TButton;
    BtMult: TButton;
    BtLimp: TButton;
    BtPercent: TButton;
    BtRaiz: TButton;
    BtIgual: TButton;
    Display: TPanel;
    procedure Bt0Click(Sender: TObject);
    procedure Bt1Click(Sender: TObject);
    procedure Bt2Click(Sender: TObject);
    procedure Bt3Click(Sender: TObject);
    procedure Bt4Click(Sender: TObject);
    procedure Bt5Click(Sender: TObject);
    procedure Bt6Click(Sender: TObject);
    procedure Bt7Click(Sender: TObject);
    procedure Bt8Click(Sender: TObject);
    procedure Bt9Click(Sender: TObject);
    procedure BtAdcClick(Sender: TObject);
    procedure BtSubClick(Sender: TObject);
    procedure BtDivClick(Sender: TObject);
    procedure BtMultClick(Sender: TObject);
    procedure BtIgualClick(Sender: TObject);
    procedure BtLimpClick(Sender: TObject);
    procedure BtPercentClick(Sender: TObject);
    procedure BtRaizClick(Sender: TObject);
    procedure BtInvClick(Sender: TObject);
    procedure BtPtoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Valor: Real;
  Operacao: Integer;

implementation

{$R *.DFM}

procedure TForm1.Bt0Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '0';
end;

procedure TForm1.Bt1Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '1';
end;

procedure TForm1.Bt2Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '2';
end;

procedure TForm1.Bt3Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '3';
end;

procedure TForm1.Bt4Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '4';
end;

procedure TForm1.Bt5Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '5';
end;

procedure TForm1.Bt6Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '6';
end;

procedure TForm1.Bt7Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '7';
end;

procedure TForm1.Bt8Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '8';
end;

procedure TForm1.Bt9Click(Sender: TObject);
begin
  Display.Caption := Display.Caption + '9';
end;

procedure TForm1.BtAdcClick(Sender: TObject);
var
  Codigo: Integer;
begin
  Operacao := 1;
  Val(Display.Caption, Valor, Codigo);
  Display.Caption := '';
end;

procedure TForm1.BtSubClick(Sender: TObject);
var
  Codigo: Integer;
begin
  Operacao := 2;
  Val(Display.Caption, Valor, Codigo);
  Display.Caption := '';
end;

procedure TForm1.BtDivClick(Sender: TObject);
var
  Codigo: Integer;
begin
  Operacao := 3;
  Val(Display.Caption, Valor, Codigo);
  Display.Caption := '';
end;

procedure TForm1.BtMultClick(Sender: TObject);
var
  Codigo: Integer;
begin
  Operacao := 4;
  Val(Display.Caption, Valor, Codigo);
  Display.Caption := '';
end;

procedure TForm1.BtIgualClick(Sender: TObject);
var
  Codigo: Integer;
  Retorno: String;
  ValorDisplay: Real;
begin
  Val(Display.Caption, ValorDisplay, Codigo);
  case Operacao of
    1: Valor := Valor + ValorDisplay;
    2: Valor := Valor - ValorDisplay;
    3: if (ValorDisplay = 0) then
            Valor := 0
         else
            Valor := Valor / ValorDisplay;
    4: Valor := Valor * ValorDisplay;
  end;
  Str(Valor:21:4, Retorno);
  Display.Caption := Retorno;
end;

procedure TForm1.BtLimpClick(Sender: TObject);
begin
  Display.Caption := '';
  Valor := 0;
end;

procedure TForm1.BtPercentClick(Sender: TObject);
var
  Codigo: Integer;
  Retorno: String;
  ValorDisplay: Real;
begin
  Val(Display.Caption, ValorDisplay, Codigo);
  case Operacao of
    1: Valor := Valor + (Valor * ValorDisplay / 100);
    2: Valor := Valor - (Valor * ValorDisplay / 100);
    3: if (ValorDisplay = 0) then
            Valor := 0
         else
            Valor := Valor / (Valor * ValorDisplay / 100);
    4: Valor := Valor * (Valor * ValorDisplay / 100);
  end;
  Str(Valor:21:4, Retorno);
  Display.Caption := Retorno;
end;

procedure TForm1.BtRaizClick(Sender: TObject);
var
  Codigo: Integer;
  Retorno: String;
  ValorDisplay: Real;
begin
  Val(Display.Caption, ValorDisplay, Codigo);
  Valor := Sqrt(ValorDisplay);
  Str(Valor:21:4, Retorno);
  Display.Caption := Retorno;
end;

procedure TForm1.BtInvClick(Sender: TObject);
var
  Codigo: Integer;
  Retorno: String;
  ValorDisplay: Real;
begin
  Val(Display.Caption, ValorDisplay, Codigo);
  Valor := ValorDisplay;
  Valor := Valor * (-1);
  Str(Valor:21:4, Retorno);
  Display.Caption := Retorno;
end;

procedure TForm1.BtPtoClick(Sender: TObject);
begin
  Display.Caption := Display.Caption + '.';
end;

end.
