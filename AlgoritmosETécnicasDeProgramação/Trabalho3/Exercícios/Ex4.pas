{Elabore um subprograma (Function) em Pascal que receba duas cadeias de
caracteres como parâmetros e retorne 0 para o programa principal se elas forem
iguais. Caso contrário, deverá retornar o índice do primeiro caractere não
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
 if (r=0) then write (' 0  - as cadeias de caracteres são iguais!')
 else write ('o primeiro caractere não coincidente está na posição ',r,' ! ');
 readkey;
End.