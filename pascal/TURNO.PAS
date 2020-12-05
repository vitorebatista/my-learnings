program turno;
uses crt;
var tur,sn:char;
begin
clrscr;
 sn:='s';
 while ((sn='s') or (sn='S')) do
 begin
  writeln('Informe o turno que vocˆ estuda');
  writeln('Digite:');
  writeln('M - Matutino');
  writeln('V - Vespertino');
  writeln('N - Noturno');
  readln(tur);
 if ((tur='m') or (tur='M')) then
  writeln('Bom Dia!')
 else if ((tur='v') or (tur='V')) then
  writeln('Boa Tarde!')
 else if ((tur='n') or (tur='N')) then
  writeln('Boa Noite!')
 else
  writeln ('Vocˆ digitou algo errado. Recome‡ar? <S/N>');
  readln(sn);
  begin
 if ((sn='S') or (sn='s')) then
 sn:='s'
 else
  writeln('FIM');
 end;
 end;
 readkey;
end.