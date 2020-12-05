program legal;
uses crt;
var n1,n2, resultado:real;
    opcao:char;
begin
 clrscr;
 writeln('Informe um n£mero');
 readln(n1);
 writeln('Informe outro n£mero');
 readln(n2);
 writeln('Escolha uma op‡ao, digite:');
 writeln('+ para somar');
 writeln('- para subtrair');
 writeln('* para multiplicar');
 writeln('/ para dividir');
 readln(opcao);
 case (opcao) of
 '+': resultado:=(n1+n2);
 '-': resultado:=(n1-n2);
 '*': resultado:=(n1*n2);
 '/': resultado:=(n1/n2)
 else
 Begin
  writeln('Aconteceu um ERRO!!!');
 end;
 end;
  writeln('O resultado do calculo eh ',resultado:1:2);
 readkey;
  end.