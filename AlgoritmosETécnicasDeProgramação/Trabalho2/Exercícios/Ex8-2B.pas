Program ex_08 ;
  var mat :array[1..5,1..4] of integer;
  var i,j,aux,contc,contl  :integer;
Begin
  for i:=1 to 5 do
   begin
    for j:=1 to 4 do
     begin
      write ('Digite o valor da posição [ ',i,' ',j,' ] da matriz: ');
      read (mat[i,j]);
     end;
   end;
   clrscr;
   writeln;  
   write ('Matriz: ');
   writeln;
   for i:=1 to 5 do
   begin
    for j:=1 to 4 do
     begin
      write (mat[i,j],' ');
     end;
     writeln;
   end;
   writeln;
   for i:=1 to 5 do
    begin 
     contl:=0;
     for j:=1 to 4 do
      begin
       aux:= mat[i,1];
       if (aux = mat[i,j]) then
        begin
         contl:=contl+1;
        end;
       if (contl = 4) then
        writeln ('Linha ',i,' tem todos os elementos iguais'); 
      end;
    end;
   for j:=1 to 4 do
    begin
     contc:=0;
     for i:=1 to 5 do
      begin
       if (i=1) then
        begin
         aux:= mat[i,j];
        end;
       if (aux = mat[i,j]) then
        begin
         contc:=contc+1;
        end;
       if (contc = 5) then
        writeln ('Coluna ',j,' tem todos os elementos iguais');
      end;
    end;
   readkey;
End.