{Elabore um subprograma (Function) em Pascal que receba duas cadeias de
caracteres como par�metros e retorne 0 para o programa principal se elas forem
iguais. Caso contr�rio, dever� retornar o �ndice do primeiro caractere n�o
coincidente.}
Program ex_4 ;
 var cad1,cad2,a,b :string;
     r,tama,tamb,maior,i:integer;
 function cadeias (var cadA:string;var cadB:string):integer;
  var valor :integer;
  begin
   tama:= length(cadA);
   tamb:= length(cadB);
   if (tama > tamb) then
    begin
     maior:=tama;
    end
   else if (tamb > tama) then
    begin
     maior:=tamb;
    end; 
   if (cadA = cadB) then
    valor:=0
   else 
    begin
     for i:=1 to maior do
      begin
       a:= copy(cadA,i,1);
			 b:= copy(cadB,i,1);
			 if (a <> b) then
			  begin
			   valor:= i;
			   i:=maior;
			  end;
      end;
    end;
   cadeias:= valor;
  end;
Begin
 writeln ('Digite a primeira cadeia de caracteres: ');
 readln (cad1);
 writeln ('Digite a segunda cadeia de caracteres: ');
 readln (cad2);
 r:= cadeias (cad1,cad2);
 writeln;
 if (r=0) then write (' 0  - as cadeias de caracteres s�o iguais!')
 else write ('o primeiro caractere n�o coincidente est� na posi��o ',r,' ! ');
 readkey;
End.