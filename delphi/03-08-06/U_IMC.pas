unit U_IMC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Edt_nome: TEdit;
    Edt_peso: TEdit;
    lbl_imc: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Sexo: TRadioGroup;
    Edt_altura: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nome,txt:string;
  peso,altura,resultado:real;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);

begin
        nome:=edt_nome.text;
        peso:=strtofloat(edt_peso.text);
        altura:=strtofloat(edt_altura.text);
        resultado:=peso/( altura*altura);
        if sexo.itemindex=1 then
        begin
        txt:='Voce ja pode rolar';
        lbl_imc.caption:=txt;
        end
        else
        begin
        case sexo.itemindex of
        0: begin
        if resultado<=20.7 then
        txt:='Você está abaixo do peso ideal';
        if ((resultado>20.7)and(resultado<=26.4)) then
        txt:='Você está no peso ideal';
        if ((resultado>26.4)and(resultado<=27.8)) then
        txt:='Você está gordinho hein...';
        if ((resultado>27.8)and(resultado<=31.1)) then
        txt:='Você está virando uma bola';
        if resultado>31.1 then
        txt:='Você ja pode rolar';
        lbl_imc.caption:=txt;
        end;
        1: begin
        if ((resultado>=19.1)and(resultado>99)) then
        txt:='Você está abaixo do peso ideal';
        if ((resultado>19.1)and(resultado<=25.8)) then
        txt:='Você está no peso ideal';
        if ((resultado>25.8)and(resultado<=27.3)) then
        txt:='Você está gordinho hein...';
        if ((resultado>27.3)and(resultado<=32.3)) then
        txt:='Você está virando uma bola';
        if resultado>32.3 then
        txt:='Você ja pode rolar';
        lbl_imc.caption:=txt;
        end;
        end;
        end;




end;

procedure TForm1.Button3Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
        edt_nome.clear;
        edt_peso.clear;
        edt_altura.clear;
        sexo.itemindex:=-1;
        lbl_imc.caption:='';
end;

end.
