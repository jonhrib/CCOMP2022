Program pares_primos ;
   var n,n1,p,x,somapar,primo :integer;
Begin
   for n:=1 to 10 do
    begin
      write ('Digite um número: ');
      read (n1);
      x:=0;
      if (n1 mod 2 = 0) then
       somapar:=somapar+n1;
      for p:=1 to n1 do
      begin
			  if (n1 mod p = 0) then
				x:=x+1; 
      end;
        if (x=2) then
        primo:=primo+1;
    end;
   writeln ('A soma dos números pares foi de: ', somapar);
   writeln ('Dentre os números digitados, ',primo, ' são primos');
  readkey;
End.