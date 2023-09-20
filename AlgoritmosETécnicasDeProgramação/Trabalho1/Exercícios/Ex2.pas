Program peso_idade ;
   var n,i,peso,idade, maiorp, menorp, maiori, menori :integer;
   var nome,nmap,nmep,nmai,nmei  :string;
Begin
   write ('Digite a quantidade de pessoas que serão analisadas: ');
   readln (n);
    for i:=1 to n do
      begin
        write ('Digite o nome da pessoa: ');
        read  (nome); 
        write ('Digite seu peso: ');
        read  (peso);
        write ('Digite sua idade: ');
        read  (idade);
         if (i = 1) then
          begin
            maiorp:= peso;
            nmap:= nome;
            menorp:= peso;
            nmep:= nome;
          end
           else
           begin
            if (peso > maiorp) then
             begin
              maiorp:= peso;
              nmap:= nome;
             end
            else if (peso < menorp) then
             begin
              menorp:= peso;
              nmep:= nome;
             end;
           end;
         if (i = 1) then
          begin
            maiori:= idade;
            nmai:= nome;
            menori:= idade;
            nmei:= nome;
          end
           else
           begin
            if (idade > maiori) then
             begin
              maiori:= idade;
              nmai:= nome
             end
            else if (idade < menori) then
             begin
						  menori:= idade;
              nmei:= nome;
             end;
           end;
      end;
     writeln (nmai, ' é o mais velho, com ', maiori, ' anos');
		 writeln (nmei, ' é o mais novo, com ', menori, ' anos');
		 writeln (nmap, ' é o mais pesado, com ', maiorp, ' kg');
		 writeln (nmep, ' é o mais leve, com ', menorp, ' kg'); 
     readkey;
End.