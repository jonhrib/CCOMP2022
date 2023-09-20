{Foi realizada uma pesquisa sobre algumas características físicas de 50 pessoas. Os
dados coletados foram: sexo, idade, cor dos olhos (V – verdes, A – azuis ou C –
castanhos) e cor dos cabelos (L – louros, P – pretos ou C – castanhos).
• Faça um procedimento - procedure (utilizando parâmetros) em Pascal que leia
esses dados, armazenando-os em vetores.
• Faça uma função - function (utilizando parâmetros) em Pascal que determine e
devolva ao programa principal a média das idades das pessoas com olhos verdes
e cabelos louros.
• Faça uma função - function (utilizando parâmetros) em Pascal que determine e
devolva ao programa principal a maior idade entre os habitantes.
• Faça uma função - function (utilizando parâmetros) em Pascal que determine e
devolva ao programa principal a quantidade de indivíduos do sexo masculino com
idade entre 18 e 35 anos (inclusive) e que tenham olhos castanhos e cabelos
pretos.}
Program ex_6;
 type registro = record
                  sexo :char;
                  idade :integer;
                  colhos :char;
                  ccabelos :char;
                 end;
 type vet = array [1..50] of registro;
 var vetor1: vet;
     i,maiorg,soma :integer;
     mediag :real;
 procedure receb (var vetor:vet);
  begin
   for i:=1 to 50 do
    begin
     clrscr;
     writeln ('Digite a seguir os dados da ',i,' º pessoa ');
     repeat 
      write ('Sexo (M para masculino ou F para feminino): '); 
      read (vetor[i].sexo);
     until (((vetor[i].sexo)=('M')) or ((vetor[i].sexo)=('m')) or ((vetor[i].sexo)=('F')) or ((vetor[i].sexo)=('f')));          
     write ('Idade: ');
     read (vetor[i].idade);
     repeat 
      write ('Cor dos olhos (V para verdes, A para azuis ou C para castanhos): ');
      read (vetor[i].colhos);
     until (((vetor[i].colhos)=('C')) or ((vetor[i].colhos)=('c')) or ((vetor[i].colhos)=('A')) or ((vetor[i].colhos)=('a')) or ((vetor[i].colhos)=('V')) or ((vetor[i].colhos)=('v')));
     repeat
		  write ('Cor dos cabelos (L para louros, P para pretos ou C para castanhos): '); 
      read (vetor[i].ccabelos);
     until (((vetor[i].ccabelos)=('C')) or ((vetor[i].ccabelos)=('c')) or ((vetor[i].ccabelos)=('L')) or ((vetor[i].ccabelos)=('l')) or ((vetor[i].ccabelos)=('P')) or ((vetor[i].ccabelos)=('p')));
	  end; 
	end; 
 function mediaid (vetorB :vet):real;
  var somamedia,qtd :integer;
      media :real;
  begin
   for i:=1 to 50 do
    begin
     if (((vetorB[i].ccabelos)=('L')) or ((vetorB[i].ccabelos)=('l'))) and (((vetorB[i].colhos)=('V')) or ((vetorB[i].colhos)=('v'))) then
      begin
       somamedia:= (vetorB[i].idade)+somamedia;
			 qtd:=qtd+1; 
      end;
    end;
    if (qtd > 0) then
     begin
    	media:= somamedia/qtd;
    	mediaid:= media;
     end;
  end;
 function maiorid (vetorC :vet):integer;
  var maior :integer;
  begin
   for i:=1 to 50 do
    begin
     if (i = 1) then 
      begin
       maior:= (vetorC[i].idade);
      end
     else if (i>1) and (vetorC[i].idade > maior) then
      begin
       maior:= (vetorC[i].idade);
      end;
     maiorid:= maior;
    end;
  end;
 function masc (vetorD :vet) :integer;
  var somamasc :integer;
  begin
   for i:=1 to 50 do
    begin
     if (vetorD[i].sexo = 'M') or (vetorD[i].sexo = 'm') then
      begin
       if (vetorD[i].idade >= 18) and (vetorD[i].idade <= 35) then
        begin
         if (vetorD[i].colhos = 'C') or (vetorD[i].colhos = 'c') then
          begin
           if (vetorD[i].ccabelos = 'P') or (vetorD[i].ccabelos = 'p') then
            begin
             somamasc:= (somamasc+1);
            end;
          end;
        end;
      end;
    end;
    masc:=somamasc;
  end;
Begin
 receb (vetor1);
 mediag:= mediaid (vetor1);
 clrscr;
 writeln ('A média das idades das pessoas com olhos verdes e cabelos louros é: ',mediag:2:2);
 maiorg:= maiorid (vetor1);
 writeln ('A maior idade entre os habitantes pesquisados foi: ',maiorg);
 soma:= masc (vetor1);
 writeln ('A quantidade de habitantes que tenham entre 18 e 35 anos, além de possuir olhos castanhos e cabelos pretos são: ',soma);
 readkey;
End.