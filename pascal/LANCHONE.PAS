Program lanchonete;
uses crt;
var
  codigo, quant:integer;
  preco, precoproduto, precoanterior, precofinal:real;
Begin
  clrscr;
  codigo:=1;
  preco:=0;
  writeln('Lanchonete do Felipe e do Vitor');
  writeln('');
  writeln('Cachorro-quente  cod=100');
  writeln('Bauru Simples    cod=101');
  writeln('Bauru com Ovo    cod=102');
  writeln('Hamb£rguer       cod=103');
  writeln('Cheeseburguer    cod=104');
  writeln('Refrigerante     cod=105');
  writeln('');
  WHILE (codigo>0) DO
  BEGIN
      writeln('Digite o codigo do produto ou digite 0 para terminar o pedido');      readln(codigo);
      if (codigo=100) then
          preco:=1.2
      else if (codigo=101) then
          preco:=1.3
      else if (codigo=102) then
          preco:=1.5
      else if (codigo=103) then
          preco:=1.2
      else if (codigo=104) then
          preco:=1.3
      else if (codigo=105) then
          preco:=1
      else if (codigo=0) then
          preco:=0
      else
      begin
          writeln('Codigo invalido!');
          preco:=0;
      end;
      if (preco>0) then
          Begin
              writeln ('Digite a quantidade desejada');
              readln(quant);
              precoproduto:=preco*quant;
              writeln('O preco deste item eh de ', precoproduto:1:2);
              precofinal:=precofinal+precoproduto;
          End
      else
          writeln('');
  END;
  writeln('O preco final do pedido eh de: ', precofinal:1:2);
  readkey;
End.