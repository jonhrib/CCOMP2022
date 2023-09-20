Program ex_06 ;
 var mat  :array[1..5,1..5] of integer;
 var n,i,j,r,contc,contb,contd,lc,cc,lb,cb,diag :integer;
Begin
 contc:=0;
 contb:=0;
 contd:=0;
 lc:=1;
 cc:=2;
 lb:=2;
 cb:=1;
 diag:=1;
 while (contc < 10) or (contb < 10) or (contd < 5) do
 begin
   repeat
    write ('Digite um número: ');
    read (n);
   until (n > 0);
   if (n mod 5 = 0) then
    begin
     if (contd < 5) then
      begin
       mat[diag,diag]:= n;
       diag:=diag+1;
       contd:=contd+1;
      end
     else
      begin
       writeln ('Não existe mais espaço para números múltiplos de 5');
       writeln;
      end;
    end
  else if (n mod 11 = 0) then
	  begin
	   if (contc < 10) then
	    begin
	     mat[lc,cc]:= n; 
	     cc:=cc+1;
	      if (cc > 5) then
	       begin
	        lc:=lc+1;
	         cc:=lc+1;
	       end;
	     contc:=contc+1;
	    end
	   else 
		  begin
		   writeln ('Não existe mais espaço para números múltiplicos de 11');
		   writeln;
			end; 
		end 
	 else if (n mod 13 = 0) then
	  begin
	   if (contb < 10) then
	    begin
	     mat[lb,cb]:=n;
	     cb:=cb+1;
	      if (cb >= lb) then
	       begin
	        lb:=lb+1;
	         cb:= 1;
	       end;
	     contb:=contb+1;
	    end
	   else 
		  begin
		   writeln ('Não existe mais espaço para números múltiplicos de 13');
		   writeln;
			end
		end
		else 
		 begin
		  writeln ('Deve-se digitar um número múltiplo de 5, 11 ou 13');
		  writeln;
		 end;
 end;   
 writeln;
 write ('A matriz gerada é: ');
 writeln;     
 for i:=1 to 5 do
  begin
   for j:=1 to 5 do
    begin
     write (mat[i,j],'   ');
    end;
    writeln;
  end;
 readkey;
End.