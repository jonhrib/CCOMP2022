Program Ex_02 ;
 var A,B:array[1..16] of integer;
 var C,D:array[1..16] of integer;
 var i :integer;
Begin
  for i:=1 to 16 do
   begin
     writeln ('Digite um valor para a posição ',i,' de seu vetor A: ');
     read (A[i]);
   end;
   for i:=1 to 16 do
   begin
     writeln ('Digite um valor para a posição ',i,' de seu vetor B: ');
     read (B[i]);
   end;
  clrscr;
  write ('A: ');
  for i:=1 to 16 do
   begin
    write (A[i],' ');
   end;
  writeln;
  write ('B: ');
  for i:=1 to 16 do
   begin
    write (B[i],' ');
   end;
  for i:=1 to 16 do 
   begin
    if (i < 9) then
     begin
      C[i]:= A[i];
      D[i]:= B[i];
     end;
    if (i >=9) then
		 begin
		  C[i]:= B[i];
		  D[i]:= A[i];
		 end; 
   end;
   writeln;
   write ('C: ');
   for i:=1 to 16 do
   begin
    write (C[i],' ');
   end;
   writeln;
   write ('D: ');
   for i:=1 to 16 do
   begin
    write (D[i],' ');
   end;
   readkey;
End.