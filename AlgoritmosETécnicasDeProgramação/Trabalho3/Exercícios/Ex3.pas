{Um arquivo texto chamado Exemplo.txt contém uma lista de números inteiros, um
em cada linha, dos quais pretende-se descobrir qual é o menor número. Faça um
programa em Pascal para descobrir qual é esse número.}
Program ex_3;
 const cam = 'C:\Users\Usuario\Documents\Pascal\JoaoVitorSouzaRibeiro\Ex3\exemplo.txt';
 var arq :text;
     menor,n,cont :integer;
Begin
 assign(arq,cam);
 reset (arq);
 while not eof (arq) do
  begin
   read (arq,n);
    cont:=cont+1;
   if (cont=1) then
		begin
		 menor:= n;
		end 
	 else if (cont >1) and (n < menor) then
		begin
		 menor:= n;
		end;
  end; 
 writeln ('O menor número na seleção do arquivo é ',menor,' !');
 close (arq);
 readkey;
End.