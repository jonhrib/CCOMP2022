{Faça um programa em Pascal que crie um arquivo texto contendo diversas linhas (o
usuário deverá entrar com os dados). Em seguida feche o arquivo e o abra
novamente para mostrar o seu conteúdo na tela, bem como o número (quantidade)
de linhas do arquivo. Observação: antes de mostrar o conteúdo do arquivo em tela
e o número de linhas, favor utilizar o comando clrscr para apagar o conteúdo da tela.}
Program ex_2 ;
 const cam = 'C:\Users\Usuario\Documents\Pascal\JoaoVitorSouzaRibeiro\Ex2\ex2.txt';
 var arq :text;
     inf :string;
     n :integer;
Begin
  assign (arq,cam);
  append (arq);
  writeln ('Digite o conteúdo do arquivo texto (para encerrar o recebimento digite um ponto . em uma nova linha): ');
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
  writeln ('O conteúdo: ');
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
  writeln ('O arquivo contém ',n,' linhas! ');
  close (arq);
  readkey;
End.