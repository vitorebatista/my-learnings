unit U_IMC1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, jpeg;

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
    procedure Edt_alturaKeyPress(Sender: TObject; var Key: Char);
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

      try
        nome:=edt_nome.text;
        peso:=strtofloat(edt_peso.text);
        altura:=strtofloat(edt_altura.text);
        resultado:=peso/( altura*altura);
         Except
        begin
          messagedlg('Algo de errado não está Certo!',mtError,[mbyes],0);
        end;
      end;
        case sexo.itemindex of
        0: begin
        if resultado<=20.7 then
        txt:='você está abaixo do peso ideal';
        if ((resultado>20.7)and(resultado<=26.4)) then
        txt:='você está no peso ideal';
        if ((resultado>26.4)and(resultado<=27.8)) then
        txt:='você está gordinho hein...';
        if ((resultado>27.8)and(resultado<=31.1)) then
        txt:='você está virando uma bola';
        if resultado>31.1 then
        txt:='você ja pode rolar';
        lbl_imc.caption:=nome+', '+txt;
        end;
        1: begin
        if resultado<=19.1 then
        txt:='você está abaixo do peso ideal';
        if ((resultado>19.1)and(resultado<=25.8)) then
        txt:='você está no peso ideal';
        if ((resultado>25.8)and(resultado<=27.3)) then
        txt:='você está gordinha hein...';
        if ((resultado>27.3)and(resultado<=32.3)) then
        txt:='você está virando uma bola';
        if resultado>32.3 then
        txt:='Você ja pode rolar';
        lbl_imc.caption:=nome+', '+txt;
        end;
        end;
        if (Edt_altura.text='') then
        messagedlg('oxa... como vou calcular sem a sua altura?? Animal!',mtError,[mbyes],0);
        if (Edt_nome.text='') then
        MessageDlg('Cavalo..Escreva seu nome',mtError,[mbyes],0);
        if (Edt_peso.text='') then
        messagedlg('Oh Cavalo Veio... Tem que escrever seu peso neh..',mtError,[mbyes],0);

        if (sexo.ItemIndex=-1) then
        MessageDlg('Cavalo..Escolha o Sexo',mtError,[mbyes],0);



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

procedure TForm1.Edt_alturaKeyPress(Sender: TObject; var Key: Char);
begin
if (key='.') then
key:=',';
end;

end.
