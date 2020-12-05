unit U_ROTINASGENERICAS;

interface

uses Windows, SysUtils, Forms;

procedure Mensagem(strTexto: string);
function Confirma(strTexto: string): integer;
function MostraData(dtData: TDateTime): string;
function StrZero(intValor,intComprimento: integer): string;
procedure PontoDecimal(var Key: char);


implementation

// Rotina para apresentar uma caixa de mensagem.
procedure Mensagem(strTexto: string);
begin
     Application.MessageBox(PChar(strTexto),'Mensagem',mb_OK + mb_IconInformation);
end;

// Fun��o para pedir confirma��o de uma opera��o.
function Confirma(strTexto: string): integer;
begin
     Result := Application.MessageBox(PChar(strTexto),'Confirma��o',mb_YesNo+mb_DefButton2+mb_IconQuestion);
end;

// Fun��o para apresenta��o de uma data no formato 'Dia da semanada - Dia do m�s/M�s/Ano'.
function MostraData(dtData: TDateTime): string;
var
   intDiaSemana: integer;
   strDiaSemana: string;
begin
     intDiaSemana := DayOfWeek(dtData);

     case intDiaSemana of
          1: strDiaSemana := 'Domingo - ';
          2: strDiaSemana := 'Segunda-feira - ';
          3: strDiaSemana := 'Ter�a-feira - ';
          4: strDiaSemana := 'Quarta-feira - ';
          5: strDiaSemana := 'Quinta-feira - ';
          6: strDiaSemana := 'Sexta-feira - ';
          7: strDiaSemana := 'S�bado - ';
     end;
     Result := strDiaSemana+DateToStr(dtData);
end;

// Funcao para converte valor numerico inteiro em string com zeros a esquerda
function StrZero(intValor,intComprimento: integer): string;
var
   strValor,strZeros,strRetorno: string;
   intTamanho,intContador: integer;
begin
     strValor := IntToStr(intValor);
     intTamanho := Length(Trim(strValor));
     strZeros   := '';
     for intContador := 1 to intComprimento do
         strZeros := strZeros + '0';
     strRetorno := Copy(Trim(strZeros)+Trim(strValor),intTamanho+1,intComprimento);
     Result := strRetorno;
end;

// Converte o ponto decimal em virgula
procedure PontoDecimal(var Key: char);
begin
     if (Key <> Chr(8)) then
        if (Key = '.') then
           Key := ','
           else if ((Ord(Key) <> Ord(',')) and ((Ord(Key) < Ord('0')) or (Ord(Key) > Ord('9')))) then
                   Key := Chr(0);
end;


end.
