{Fa�a um programa em Pascal que crie um arquivo texto contendo diversas linhas (o
usu�rio dever� entrar com os dados). Em seguida feche o arquivo e o abra
novamente para mostrar o seu conte�do na tela, bem como o n�mero (quantidade)
de linhas do arquivo. Observa��o: antes de mostrar o conte�do do arquivo em tela
e o n�mero de linhas, favor utilizar o comando clrscr para apagar o conte�do da tela.}
Program ex_2 ;
 const cam = 'C:\Users\Usuario\Documents\Pascal\JoaoVitorSouzaRibeiro\Ex2\ex2.txt';
 var arq :text;
     inf :string;
     n :integer;
Begin
  assign (arq,cam);
  append (arq);
  writeln ('Digite o conte�do do arquivo texto (para encerrar o recebimento digite um ponto . em uma nova linha): ');
  repeat
   readln (inf);
   if (inf <> '.') then
    begin
     writeln (arq,inf);     
    end;
  until (inf = '.');
  close(arq);
  reset (arq);
  clrscr;
  writeln ('O conte�do: ');
  writeln;
  while not eof (arq) do
   begin
    while not eoln (arq) do
     begin
      read (arq,inf);
      if (inf <> '.') then
       begin
        writeln (inf);
        n:=n+1;
       end;
     end;
   end;
  writeln;
  writeln ('O arquivo cont�m ',n,' linhas! ');
  close (arq);
  readkey;
End.