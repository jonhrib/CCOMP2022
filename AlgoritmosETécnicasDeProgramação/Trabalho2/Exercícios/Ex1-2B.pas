Program Ex_01;
 var A,repetidos,vezes:array[1..10] of integer;
 var vezesalg: array[1..10] of string;
 var i,j,qtd,cont,cont_repeat :integer;
Begin
 for i:=1 to 10 do
  begin
   write ('Digite um número inteiro para a posição ',i,' do vetor A: ');
   read (A[i]);
	end; 
 clrscr;
 cont_repeat:=1;
 for i:=1 to 10 do
  begin
   qtd:=1;
   for j:=1 to 10 do
    begin
     if i <> j then
      if A[i] = A[j] then
       qtd:= qtd+1;
    end;
    if qtd > 1 then
     begin
      cont:=1;
      while (cont < cont_repeat) and (A[i] <> repetidos[cont]) do
       begin
        cont:= cont+1;
       end;
      if cont = cont_repeat then
       begin
        repetidos[cont_repeat]:= A[i];
        vezes[cont_repeat]:= qtd;
        cont_repeat:= cont_repeat + 1;
       end;
     end;
  end;
  for i:=1 to (cont_repeat - 1) do
   begin
    if (vezes[i] <= 10) then
     begin
      if (vezes[i] = 1) then 
       vezesalg[i]:= ('uma')
      else if (vezes[i] = 2) then
       vezesalg[i]:= ('duas')
      else if (vezes[i] = 3) then 
       vezesalg[i]:= ('três')
      else if (vezes[i] = 4) then 
       vezesalg[i]:= ('quatro')
      else if (vezes[i] = 5) then 
       vezesalg[i]:= ('cinco')
      else if (vezes[i] = 6) then 
       vezesalg[i]:= ('seis')
      else if (vezes[i] = 7) then 
       vezesalg[i]:= ('sete')
      else if (vezes[i] = 8) then 
       vezesalg[i]:= ('oito')
      else if (vezes[i] = 9) then 
       vezesalg[i]:= ('nove')
      else if (vezes[i] = 10) then 
       vezesalg[i]:= ('dez');
     end;               
   writeln ('O número ',repetidos[i],' apareceu ',vezesalg[i],' vezes.');
  end;
  readkey;
End.