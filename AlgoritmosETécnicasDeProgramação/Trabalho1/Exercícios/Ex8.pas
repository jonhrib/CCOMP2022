Program combinacoes ;
  var n,s,i,x,c,fatorialn,fatorials,fatorialx :integer;
Begin
 	repeat
   write ('Digite o número de elementos: ');
   read (n);
  until (n>=0);
  repeat
   write ('Digite um valor para S: ');
   read (s);
 	until (s>=0) and (s<n);
 	fatorialn:= 1;
 	i:= 1;
  repeat
   fatorialn:= fatorialn*i;
   i:=i+1;
  until (i>n);
  fatorials:= 1;
 	i:= 1;
  repeat
   fatorials:= fatorials*i;
   i:=i+1;
  until (i>s);
  x:=(n-s);
  fatorialx:=1;
  i:=1;
  repeat
   fatorialx:= fatorialx*i;
   i:=i+1;
  until (i>x);
  c:= (fatorialn div (fatorials * fatorialx));
  write ('A quantidade de combinações possíveis é: ',c);
  readkey;
  
End.