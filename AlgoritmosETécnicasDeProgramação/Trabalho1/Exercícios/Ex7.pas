Program tabela ;
   var n,nfinal,n1,x,i, j:integer;
Begin
  write ('Digite um número: ');
  read (nfinal);   
  if (nfinal>=1) and (nfinal<=9) then
   begin
    for n:=1 to nfinal do
     begin
      x:=1;
			while (n1 <> n*n) do
        begin
         n1:= n*x;
         x:= x+1;
         write (n1, '  ');  
        end;
      writeln;
     end;
   end
  else write ('O número informado não está entre 1 e 9');
  readkey;
End.