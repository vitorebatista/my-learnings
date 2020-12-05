program media;
uses crt;
var nome:string;
    n1,n2,n3,n4,medi:real;
Begin
     clrscr;
     writeln('Qual o nome do aluno?');
     readln(nome);
     writeln('Informe as 4 notas do ano');
     readln(n1,n2,n3,n4);
     medi:=((n1+n2+n3+n4)/4);
     writeln('A media do aluno ', nome,' eh: ', medi:1:2);
     readkey;
     end.