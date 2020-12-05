Program animais;
uses crt;
var animal, qbva, ch, fo, vnr, tp, ckp:char;
begin
  clrscr;
  writeln('Escolha um entre os seguintes animais:');
  writeln('Leao, homem, cavalo, macaco, morcego, baleia, avestruz, pinguim, pato, aguia, tartaruga, crocodilo ou cobra');
  writeln('Digite M se o animal escolhido for um mamifero');
  writeln('Digite A se o animal escolhido for uma ave');
  writeln('Digite R se o animal escolhido for um reptil');
  readln(animal);
    case (animal) of
    'm','M':
      begin
      writeln('Digite Q se for quadrupede');
      writeln('Digite B se for bipede');
      writeln('Digite V se for voador');
      writeln('Digite A se for aquatico');
      readln(qbva);
        case (qbva) of
        'q','Q': begin
                 writeln('Digite C se for carnivoro');
                 writeln('Digite H se for herbivoro');
                 readln(ch);
                 case (ch) of
                      'c','C': writeln('O animal escolhido eh o leao');
                      'h','H': writeln('O animal escolhido eh o cavalo');
                 end;
                 end;
        'b','B': begin
                 writeln('Digite O se for onivero');
                 writeln('Digite F se for frutifero');
                 readln(fo);
                 case (fo) of
                      'o','O': writeln('O animal escolhido foi o homem');
                      'f','F': writeln('O animal escolhido foi o macaco');
                 end;
                 end;
        'v','V': writeln('O animal escolhido eh o morcego');
        'a','A': writeln('O animal escolhido eh a baleia');
      end;
      end;
    'a','A':begin
                 writeln('Digite V se for uma ave nao voadora');
                 writeln('Digite N se for uma ave nadadora');
                 writeln('Digite R se for uma ave de rapina');
                 readln(vnr);
                 case (vnr) of
                 'v','V':begin
                     writeln('Digite T se for uma ave tropical');
                     writeln('Digite P se for uma ave polar');
                     readln(tp);
                     case (tp) of
                          't','T': writeln('O animal escolhido foi o avestruz');
                          'p','P': writeln('O animal escolhido foi o pinguim');
                     end;
                     end;
                 'n','N': writeln('O animal escolhido foi o pato');
                 'r','R': writeln('O animal escolhido foi a aguia');
                 end;
             end;
    'r','R':begin
                 writeln('Digite C se o animal escolhido tem casco');
                 writeln('Digite K se o animal escolhido for carnivoro');
                 writeln('Digite P se o animal escolhido nao tem patas');
                 readln(ckp);
                 case (ckp) of
                 'c','C': writeln('O animal escolhido foi a tataruga');
                 'k','K': writeln('O animal escolhido foi o crocodilo');
                 'p','P': writeln('O animal escolhido foi a cobra');
                 end;
             end;
             end;
             readkey;
             end.