Program narcisistas;
  var centena,dezena,unidade,n  :integer;
Begin
  for centena:=1 to 9 do
   begin
     for dezena:=0 to 9 do
       for unidade:=0 to 9 do
        begin
         n:=(centena*100)+(dezena*10)+(unidade*1);
          if ((centena*centena*centena)+(dezena*dezena*dezena)+(unidade*unidade*unidade))=n then
           writeln (n,' é um número narcisista');
        end;
   end;
   readkey;
End.