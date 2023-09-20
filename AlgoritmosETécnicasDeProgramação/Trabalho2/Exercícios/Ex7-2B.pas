Program ex_07;
 var M :array[1..5,1..4] of integer;
 var N :array[1..5,1..4] of integer;
 var i,j,l,c :integer;
Begin
 for i:=1 to 5 do
  begin
   for j:=1 to 4 do
    begin
     write ('Informe um valor para a posição [ ',i,' ',j,' ] da matriz M: ');
     read (M[i,j]);
    end;
  end;
  clrscr;
  writeln;  
  write ('Matriz de entrada: ');
  writeln;
   for i:=1 to 5 do
    begin
     for j:=1 to 4 do
      begin
       write (M[i,j],' ');
      end;
      writeln;
    end;
  writeln;
  write ('Digite uma linha para ser retirada: ');
  read (l);
  write ('Digite uma coluna para ser retirada: ');
  read (c);
  writeln;
  for i:=1 to 5 do 
	   begin 
		  for j:=1 to 4 do
		   begin
				 if (i<>l) and (j<>c) then
				 begin
				  n[i,j]:=m[i,j];
				  write(n[i,j],' ');
				 end; 
			 end;
			 if (i<>l) and (j<>c) then writeln;
		 end;	
  readkey;
End.