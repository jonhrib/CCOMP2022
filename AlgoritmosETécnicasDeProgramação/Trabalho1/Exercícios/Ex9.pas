Program tabuada_x ;
   var n,multi,f,i  :integer;
Begin
  write ('Digite um número:');
  read (n);
  for i:=1 to 11 do
   begin 
	  multi:= (n*f);
	  writeln (n,' x ',f,' = ', multi);
	  f:= f+1;
	 end;
	 readkey;
End.