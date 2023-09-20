Program goldbach_par ;
   var n,i,x,y,j,k,primo1,primo2,valor1,valor2  :integer;
Begin
    repeat
    	write ('Digite um número par maior que 4: ');
    	read (n);
    until (n > 4) and (n mod 2 = 0);
    for i:=1 to n do
       begin
         x:=0;
         y:=0;
         valor1:=i;
         valor2:=n-i;
       if (valor1 mod 2 <> 0) and (valor2 mod 2 <> 0) then
         begin
            for j:=1 to valor1 do
             begin
               if (valor1 mod j = 0) then
                begin
                  x:=x+1;
                end;
             end;
               if (x=2) then
                begin
                  primo1:=valor1;
                end;
            for k:=1 to valor2 do
             begin
               if (valor2 mod k = 0) then
                begin
                  y:=y+1;
                end;
             end;
               if (y = 2) then
                begin
                  primo2:=valor2;
                end;
            if ((primo1+primo2)= n)then
            writeln ('Entrada: ', n, '; Saída: ', primo1, ' + ', primo2);
          end;      
       end;       
    readkey;
End.