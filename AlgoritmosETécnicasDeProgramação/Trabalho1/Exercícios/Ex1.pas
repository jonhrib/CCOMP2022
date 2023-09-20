Program votos_10 ;
   var intv,pessoas,c1,c2,c3,c4,nulo :integer;
   var porc1,porc2,porc3,porc4,porcn :real;
Begin
  for pessoas:=1 to 10 do
    begin 
		 write ('Olá, insira o número que representa seu canditado escolhido: ');
     read (intv);
      if (intv = 100) then
       c1:=c1+1
        else if (intv = 200) then
         c2:=c2+1
          else if (intv = 300) then
           c3:=c3+1
            else if (intv = 400) then
            c4:=c4+1
             else nulo:=nulo+1;
    end;
    porc1:= (c1/10)*100;
    porc2:= (c2/10)*100;
    porc3:= (c3/10)*100;
    porc4:= (c4/10)*100;
    porcn:= (nulo/10)*100;
    clrscr;
  writeln ('O candidato 1 obteve ',porc1:2:2,' % ', 'das intenções de voto');
  writeln ('O candidato 2 obteve ',porc2:2:2,' % ', 'das intenções de voto');
  writeln ('O candidato 3 obteve ',porc3:2:2,' % ', 'das intenções de voto');
  writeln ('O candidato 4 obteve ',porc4:2:2,' % ', 'das intenções de voto');
  writeln ('Houveram ',porcn:2:2,' % ', 'de votos nulos');
  readkey;
	 
End.