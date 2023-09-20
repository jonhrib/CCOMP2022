Program ex_05;
 var mat1 :array[1..5,1..4] of integer;
 var n,i,j,lpar,limp,cpar,cimp,total           :integer;
Begin
 lpar := 2;
 cpar := 1;
 limp := 1;
 cimp := 1;
 total := 0;
  repeat
   write ('Informe um número: ');
	 read (n); 
   if (n mod 2 = 0) then
    begin
     if (lpar > 4) then 
      begin
       writeln ('Não existe mais espaço para números pares')
      end
      else
        begin
         mat1[lpar,cpar] := n;
         total:= total+1;
         cpar:=cpar+1;
          if (cpar > 4) then
           begin
            lpar:=lpar+2;
            cpar:=1;
           end;
        end;
    end
   else if (limp > 5) then
	  begin
	   writeln ('Não existe mais espaço para números ímpares');
		end 
	 else
	  begin
		 mat1[limp,cimp]:=n;
		 total:=total+1;
		 cimp:=cimp+1;
		  if (cimp > 4) then
			 begin
			  limp:=limp+2;
			  cimp:=1;
			 end; 
	  end;
  until (total >= 20);
	writeln;
	clrscr;
  writeln ('A matriz foi completamente preenchida');
  for i:=1 to 5 do
   begin
    for j:=1 to 4 do
     begin
      write (mat1[i,j],'  ');
     end;
     writeln;
   end;
  readkey;
End.