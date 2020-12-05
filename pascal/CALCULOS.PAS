Program calculos;
uses crt;
var a,b,som,sub,mult,res:integer;
    divi:real;
 Begin
 clrscr;
  writeln('Informe um numero inteiro');
  readln(a);
  writeln('Informe outro numero inteiro');
  readln(b);
  som:=(a+b);
  sub:=(a-b);
  mult:=(a*b);
  divi:=(a/b);
  res:=(a mod b);
  writeln('O resultado da soma eh ',som);
  writeln('O resultado da subtracao eh ',sub);
  writeln('O resultado da multiplica‡ao eh ',mult);
  writeln('O resultado da divisao eh ',divi:1:2);
  readkey;
  end.

