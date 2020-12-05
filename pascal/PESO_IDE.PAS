program  peso_ideal;
uses crt;
var altura,peso,ideal:real;
    sexo:char;
Begin
clrscr;
   writeln('Informe sua altura');
   readln(altura);
   writeln('Informe seu sexo');
   writeln('Digite F ou M');
   readln(sexo);
 if ((sexo='f') or (sexo='F')) then
  begin
   ideal:=(62.1*altura)-44.7;
   writeln('Seu peso ideal deve ser: ',ideal:1:2);
  end
 else if ((sexo='m') or (sexo='M')) then
 begin
   ideal:=(72.7*altura)-58;
   writeln('Seu peso ideal deve ser: ',ideal:1:2);
 end
 else
 begin
  writeln('Vocˆ fez algo errado!!');
  end;
  readkey;
 end.
