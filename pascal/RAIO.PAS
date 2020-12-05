program raio;
uses crt;
var area,pi,ra:real;
begin
clrscr;
 writeln('Informe o valor do raio');
 readln(ra);
 pi:=(3.14);
 area:=(pi*ra*ra);
 writeln('A area do circulo eh ', area:1:2);
 readkey;
 end.