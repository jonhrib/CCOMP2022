Program dez_ipa ;
    var i,idade,peso       :integer;
    var media,somai,altura,qtd90,qtd30,porc  :real;
Begin
   for i:=1 to 10 do
     begin
       write ('Digite uma idade: ');
       read (idade);
       write ('Digite um peso: ');
       read (peso);
       write ('Digite uma altura - em cm -: ');
       read (altura); 
       somai:= (somai+idade);                    
        if (peso > 90) and (altura < 150) then
         qtd90:= qtd90+1;
        if (altura > 190) then
         begin
           if (idade >= 10) and (idade <=30) then
           qtd30:= qtd30+1;
         end;
     end;
  media:= (somai/10);
  porc:= (qtd30/10)*100;
	writeln ('A média das idades é = ',media:2:2);
	writeln (qtd90:1:0, ' pessoas possuem um peso maior que 90 kg e altura menor que 1,50 metros');
	writeln (porc:2:2, ' % ','das pessoas possuem altura maior que 1,90 metros e idade entre 10 e 30 anos');
	readkey;  
End.