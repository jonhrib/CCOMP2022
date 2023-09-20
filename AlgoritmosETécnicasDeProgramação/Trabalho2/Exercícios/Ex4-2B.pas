Program ex_4;
 var mat:array[1..39,1..39] of integer;
 var x,i,j    :integer;
Begin  
 repeat
  write ('Informe um valor inteiro para formar a matriz quadrada: ');
  read (x);
 until (x > 0) and (x < 20);
 {mat[x,x]:=x;
 mat [x,x-1]:=x-1;
 mat [x-1,x-1]:=x-1;
 mat [x-2,x-1]:=x-2;
 mat [x-3,x-1]:=x-3;
 mat [x+1,x-1]:=x-1;
 mat [x+2,x-1]:=x-2;
 mat [x+3,x-1]:=x-3;
 mat [x,x]:=x-1;
 mat [x-1,x]:=x-1;
 mat [x-2,x]:=x-2;
 mat [x-3,x]:=x-3;
 mat [x+1,x]:=x-1;
 mat [x+2,x]:=x-2;
 mat [x+3,x]:=x-3;
 mat [x,x+1]:=x-1;
 mat [x-1,x+1]:=x-1;
 mat [x-2,x+1]:=x-2;
 mat [x-3,x+1]:=x-3;
 mat [x+1,x+1]:=x-1;
 mat [x+2,x+1]:=x-2;
 mat [x+3,x+1]:=x-3;
 mat [x,x-3]:=x-3;
 mat [x-1,x-3]:=x-3;
 mat [x-2,x-3]:=x-3;
 mat [x-3,x-3]:=x-3;
 mat [x+1,x-3]:=x-3;
 mat [x+2,x-3]:=x-3;
 mat [x+3,x-3]:=x-3;
 mat [x,x+3]:=x-3;
 mat [x-1,x+3]:=x-3;
 mat [x-2,x+3]:=x-3;
 mat [x-3,x+3]:=x-3;
 mat [x+1,x+3]:=x-3;
 mat [x+2,x+3]:=x-3;
 mat [x+3,x+3]:=x-3;
 mat [x-3,x-2]:=x-3;
 mat [x-3,x+2]:=x-3;
 mat [x+3,x-2]:=x-3;
 mat [x+3,x+2]:=x-3;
 mat [x,x-2]:=x-2;
 mat [x-1,x-2]:=x-2;
 mat [x-2,x-2]:=x-2;
 mat [x+1,x-2]:=x-2;
 mat [x+2,x-2]:=x-2;
 mat [x,x+2]:=x-2;
 mat [x-1,x+2]:=x-2;
 mat [x-2,x+2]:=x-2;
 mat [x+1,x+2]:=x-2;
 mat [x+2,x+2]:=x-2; }
 mat[x,x]:=x; 
 for i:=1 to (x+(x-1)) do
  begin
   for j:=1 to (x+(x-1)) do
    begin
     write (mat[i,j],'  ');
    end;
    writeln;
	end;   
 readkey; 
End.