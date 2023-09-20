{Faça um programa em Pascal que leia um arquivo texto de entrada contendo 10
linhas de três campos do tipo inteiro. O programa deverá somar os valores de cada
linha e colocar o resultado em um arquivo texto de saída. O programa assume que
o arquivo de entrada já esteja no formato correto. A seguir um exemplo do conteúdo
do arquivo de entrada.
10 11 12
13 14 15
16 17 18
19 20 21
22 23 24
25 26 27
28 29 30
31 32 33
34 35 36
37 38 39}
Program ex_1;
 const cam1 = 'C:\Users\Usuario\Documents\Pascal\JoaoVitorSouzaRibeiro\Ex1\entradasoma.txt';
 const cam2 = 'C:\Users\Usuario\Documents\Pascal\JoaoVitorSouzaRibeiro\Ex1\saidasoma.txt';
 var arq,arq2 :text;
     num,soma,cont :integer;
Begin
 assign (arq,cam1);
 assign (arq2,cam2);
 reset (arq);
 append (arq2);
  while not eof (arq) do
   begin
    read (arq,num);
    soma:= soma+num;
    cont:=cont+1;
    if (cont = 3) then
     begin
      writeln (arq2,soma);
      soma:=0;
			cont:=0;
     end;
   end;
 close (arq);
 close (arq2);
 writeln ('Arquivo destino alterado! ');
 readkey;  
End.