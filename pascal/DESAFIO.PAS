Program calcula_numero;
uses crt;
var
  X, N:longint;
  E:real;
Begin
  clrscr;
  X:=1;
  E:=1;
  writeln('Digite um numero inteiro(de -2147483646 ate 2147483646');
  readln(N);
  writeln('');
  writeln('O programa vai calcular a soma dos numeros segundo a formula:');
  writeln('');
  writeln('1 + 1/1 + 1/2 + 1/3 ... 1/N - sendo N o numero informado.');
  while (X<=N) do
  Begin
      E:=E+1/X;
      X:=X+1;
  End;
  writeln('');
  writeln('O resultado da soma ‚ ',E:1:4);
  readkey;
End.
