Program defesas;
uses crt;
var
  tecarmas,tecescudo,tecblindagem:integer;

  opcao,continue:char;

  lm,ll,lp,cg,ci,cp,pep,gep:longint;
  pdflm,pdfll,pdflp,pdfcg,pdfci,pdfcp,pdfpep,pdfgep:real;
  fogolm,fogoll,fogolp,fogocg,fogoci,fogocp,fogopep,fogogep:real;
  pdfdefesas:real;

  cpeq,cgra,clig,cpes,cruz,ndba,ndco,reci,sdes,bomb,ssol,dest,edmo:longint;
  pdfcpeq,pdfcgra,pdfclig,pdfcpes,pdfcruz,pdfndba,pdfndco,pdfreci,pdfsdes,pdfbomb,pdfssol,pdfdest,pdfedmo:real;
  fogocpeq,fogocgra,fogoclig,fogocpes,fogocruz,fogondba,fogondco,fogoreci,fogosdes,fogobomb,fogossol,fogodest,fogoedmo:real;
  pdfnaves:real;

  pdftotal:real;
Begin
clrscr;
  gotoxy(15,1);writeln('ษออออออออออออออออออออออออออออออออออป');
  gotoxy(15,2);writeln('บ   Calcule o poder da sua defesa  บ');
  gotoxy(15,3);writeln('ศออออออออออออออออออออออออออออออออออผ');
  writeln('');

  writeln('Qual o nivel da tecnologia de armas?');
  readln(tecarmas);
  writeln('Qual o nivel da tecnologia de escudo?');
  readln(tecescudo);
  writeln('Qual o nivel da tecnologia de blindagem?');
  readln(tecblindagem);
  writeln('');
  writeln('');


  continue:='s';

  while ((continue='s')or(continue='S')) do
  begin

  writeln('Digite D para defesas ou N para naves');
  readln(opcao);


  while ((opcao<>'D')and(opcao<>'N')) do
  begin
   writeln('Digite D para defesas ou N para naves');
   readln(opcao);
  end;



  case(opcao) of
  'D':begin
  writeln('Informe o nฃmero de:');
  writeln('');
  writeln('Lanador de Mกsseis');
  readln(lm);
  writeln('Laser Ligeiro');
  readln(ll);
  writeln('Laser Pesado');
  readln(lp);
  writeln('Canhao de Gauss');
  readln(cg);
  writeln('Canhao de Ions');
  readln(ci);
  writeln('Canhao de Plasma');
  readln(cp);
  writeln('Pequeno Escudo Planetario');
  readln(pep);
  writeln('Grande Escudo Planetario');
  readln(gep);


  pdflm:=80*(1+tecarmas/10);
    fogolm:=pdflm*lm;
  pdfll:=100*(1+tecarmas/10);
    fogoll:=pdfll*ll;
  pdflp:=250*(1+tecarmas/10);
    fogolp:=pdflp*lp;
  pdfcg:=1100*(1+tecarmas/10);
    fogocg:=pdfcg*cg;
  pdfci:=150*(1+tecarmas/10);
    fogoci:=pdfci*ci;
  pdfcp:=3000*(1+tecarmas/10);
    fogocp:=pdfcp*cp;
  pdfpep:=1*(1+tecarmas/10);
    fogopep:=pdfpep*pep;
  pdfgep:=1*(1+tecarmas/10);
    fogogep:=pdfgep*gep;

  pdfdefesas:=fogolm+fogoll+fogolp+fogocg+fogoci+fogocp+fogopep+fogogep;
  writeln('');
  writeln('Seu poder de ataque da defesa e ',pdfdefesas:1:0);
  writeln('');
  end;



  'N':begin
  writeln('Informe o numero de:');
  writeln('');
  writeln('Cargueiro Pequeno');
  readln(cpeq);
  writeln('Cargueiro Grande');
  readln(cgra);
  writeln('Caa Ligeiro');
  readln(clig);
  writeln('Caa Pesado');
  readln(cpes);
  writeln('Cruzador');
  readln(cruz);
  writeln('Nave de Batalha');
  readln(ndba);
  writeln('Nave de Colonizacao');
  readln(ndco);
  writeln('Reciclador');
  readln(reci);
  writeln('Sonda de Espionagem');
  readln(sdes);
  writeln('Bombardeiro');
  readln(bomb);
  writeln('Satelite Solar');
  readln(ssol);
  writeln('Destruidor');
  readln(dest);
  writeln('Estrela da Morte');
  readln(edmo);

  pdfcpeq:=5*(1+tecarmas/10);
    fogocpeq:=pdfcpeq*cpeq;
  pdfcgra:=5*(1+tecarmas/10);
    fogocgra:=pdfcgra*cgra;
  pdfclig:=50*(1+tecarmas/10);
    fogoclig:=pdfclig*clig;
  pdfcpes:=150*(1+tecarmas/10);
    fogocpes:=pdfcpes*cpes;
  pdfcruz:=400*(1+tecarmas/10);
    fogocruz:=pdfcruz*cruz;
  pdfndba:=1000*(1+tecarmas/10);
    fogondba:=pdfndba*ndba;
  pdfndco:=50*(1+tecarmas/10);
    fogondco:=pdfndco*ndco;
  pdfreci:=1*(1+tecarmas/10);
    fogoreci:=pdfreci*reci;
  pdfsdes:=0.01*(1+tecarmas/10);
    fogosdes:=pdfsdes*sdes;
  pdfbomb:=1000*(1*tecarmas/10);
    fogobomb:=pdfbomb*bomb;
  pdfssol:=1*(1+tecarmas/10);
    fogossol:=pdfssol*ssol;
  pdfdest:=2000*(1+tecarmas/10);
    fogodest:=pdfdest*dest;
  pdfedmo:=200000*(1+tecarmas/10);
    fogoedmo:=pdfedmo*edmo;

  pdfnaves:=fogocpeq+fogocgra+fogoclig+fogocpes+fogocruz+fogondba+
  fogondco+fogoreci+fogosdes+fogobomb+fogossol+fogodest+fogoedmo;
  writeln('');
  writeln('Seu poder de ataque dasa naves e ',pdfnaves:1:0);
  writeln('');
  end;
  end;

  if (opcao='D') then
  begin
  writeln('Deseja informar naves <S/N - para finalizar> ?');
  readln(continue);
  end
  else if (opcao='N') then
  begin
  writeln('Deseja informar defesas<S/N - para finalizar> ?');
  readln(continue)
  end;

  end;

  pdftotal:=pdfdefesas+pdfnaves;
  writeln('Seu poder de ataque total e ',pdftotal:1:0);


readkey;
End.