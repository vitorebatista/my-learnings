program maior_menor;
uses crt;
var n1,n2:integer;
begin
clrscr;
 writeln('Informe um numero');
 readln(n1);
 writeln('Informe outro');
 readln(n2);
 if (n1>n2) then
  begin
   writeln('O primeiro numero ‚ maior que o segundo');
  end
   else if (n1=n2) then
   begin
    writeln('Os numeros sao iguais');
   end
    else
     writeln('O segundo numero ‚ maior que o primeiro');
 readkey;
 end.