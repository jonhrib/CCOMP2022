// Alunos: Emilaine Correia ; João Vitor Souza Ribeiro - 1º Ano - Ciência da Computação;
Program trabalho_4;
 type 
    ponteiro_selecao = ^selecao;  
    selecao = record
               pais: string;
               qtdpontos: integer;
               golsmarcados: integer;
               golssofridos: integer;
               prox: ponteiro_selecao;
              end;
 var x,i,j,conta :integer;
 var s :array[1..32] of string; 
 var inicio,atual: ^selecao;
 procedure incluir (var p,q: ponteiro_selecao);
  var aux :string;
      cont :integer;
  begin
   if conta = 1 then
    begin
	   new (q);
	   p := q;
	  end;
	 for i:=1 to 1 do
	  begin
     writeln ('Para adicionar uma seleção, insira: ');
     write('Nome do País: ');
     readln (aux);
     for i:=1 to conta do
      begin
       if s[i] = aux then
        begin
         cont:=cont+1;
        end;
      end;
     if (conta > 1) and (cont >= 1) then
      begin
       conta:=conta-1;
       writeln ('A seleção já foi adicionada, aperte enter para tentar novamente.');
			 readkey;  
      end
     else 
      begin;
		   q^.pais:=aux;
       write ('Número de pontos: ');
       readln (q^.qtdpontos);
       write ('Número de gols marcados: ');
       readln (q^.golsmarcados);
       write ('Número de gols sofridos: ');
       readln (q^.golssofridos);
      end;
     new (q^.prox);
     q := q^.prox;
    end;
   q^.prox := nil;
  end;
 procedure gerar;
  begin
   atual:=inicio;
	 for i:=1 to conta do
    begin
     s[i]:=atual^.pais;
		 atual:=atual^.prox; 
    end;
  end;
 procedure alfabetica;
 var j :integer;
     aux :string; 
  begin
   atual:= inicio;
   for i:=1 to conta do
    begin
     s[i]:=atual^.pais;
		 atual:=atual^.prox; 
    end;               
   for i:=1 to conta do
    begin
     for j:=i+1 to conta+1 do 
      begin
       if s[i] > s[j] then
        begin
         aux:= s[i];
         s[i]:=s[j];
         s[j]:=aux;
        end;
      end;
    end;
  end;
 procedure mostrar;
  var aux :string;
  begin
   clrscr;
   write ('Digite o nome da seleção desejada: ');
   read (aux);
   for i:=1 to conta do
    begin
     if i=1 then 
		  atual:= inicio;
     if (aux = atual^.pais) then
      begin
       writeln ('----------------------');
       writeln (atual^.pais);
       writeln (atual^.qtdpontos,' pontos ');
       writeln (atual^.golsmarcados, ' gols marcados ');
       writeln (atual^.golssofridos, ' gols sofridos ');
       writeln ('----------------------');
       readkey;
       i := conta;
      end;
     atual := atual^.prox;
    end;
  end;
 procedure sofridos;
 var maiors :integer;
     bignames :string;
  begin
   for i:=1 to conta do
    begin
     if (i = 1) then
		  begin
		   atual:= inicio;
		   maiors:= (atual^.golssofridos);
		   bignames:= (atual^.pais);
		  end
		 else if (i > 1) then
		  begin
		   if (atual^.golssofridos > maiors) then
		    begin
		      maiors:= (atual^.golssofridos);
		      bignames:= (atual^.pais);
		    end;
		  end;
		 atual := atual^.prox;
    end;
   writeln ('O país com a defesa mais vazada é: ');
   writeln ('----------------------');
	 writeln ('País: ',bignames);
	 writeln ('Gols sofridos: ',maiors);
   writeln ('----------------------');	   
  end;
 procedure marcados;
 var maior :integer;
     bigname :string;
  begin
   for i:=1 to conta do
    begin
     if (i = 1) then
		  begin
       atual:= inicio;
		   maior:= (atual^.golsmarcados);
		   bigname:= (atual^.pais);
		  end
		 else if (i > 1) then
		  begin
		   if (atual^.golsmarcados > maior) then
		    begin
		      maior:= (atual^.golsmarcados);
		      bigname:= (atual^.pais);
		    end;
		  end;
		 atual:= atual^.prox;
    end;
   writeln ('O país com o melhor ataque é: ');
   writeln ('----------------------');	   
	 writeln ('País: ',bigname);
	 writeln ('Gols marcados: ',maior);
	 writeln ('----------------------');	     
  end;
Begin
 repeat 
  clrscr;
  writeln ('--------------------------------------------------------------------------------');
  writeln (' Menu de Opções ');
  writeln ('--------------------------------------------------------------------------------');
  writeln (' 1 - Incluir Seleção ');
  writeln (' 2 - Mostrar o número de pontos, gols marcados e gols sofridos de uma seleção ');
  writeln (' 3 - Listar em ordem alfabética todas as seleções ');
  writeln (' 4 - Mostrar seleção com o melhor ataque ');
  writeln (' 5 - Mostrar seleção com a defesa mais vazada ');
  writeln (' 6 - Sair ');
  writeln ('--------------------------------------------------------------------------------');
  write (' Digite a opção desejada: ');
  read (x);
  if (x = 1) then
   begin
    clrscr;
    gerar;
    conta:=conta+1;
		incluir (inicio,atual); 
   end;
  if (x = 2) then
   begin
    clrscr;
    mostrar;
   end;
  if (x = 3) then
   begin
    clrscr;
    alfabetica;
    alfabetica;
    writeln ('As seleções : ');
    writeln ('----------------------');
    for i:=1 to conta do
     begin 
      writeln (s[i]);
     end;
    writeln ('----------------------');
     readkey;
   end;
  if (x = 4) then
   begin
    clrscr;
    marcados;
    readkey;
   end;
  if (x = 5) then
   begin
    clrscr;
    sofridos;
    readkey;
   end;
 until (x = 6);
 clrscr;
 textcolor(green);
 writeln (' -------------------------------------------------');
 textcolor(red);	   
 writeln ('  Obrigado por usar nosso programa, Feliz Natal!!');
 textcolor(green);
 writeln (' -------------------------------------------------');
 readkey; 
End.