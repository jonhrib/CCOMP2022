{Faça um programa em Pascal que leia uma matriz A (3x4) de números inteiros.
Depois chame um procedimento (procedure) e passe por parâmetro essa matriz. Ao
final desse procedimento, deverá ter sido gerada uma matriz B contendo o fatorial
de cada elemento da matriz A. A matriz B deverá ser mostrada/impressa em tela no
programa principal.}
Program ex_5;
 type mat = array [0..3,0..4] of integer;
 var matrizA,matrizB :mat;
    i,j :integer;
 procedure matrizfat (var mat1:mat;var mat2:mat);
  var aux,fat :integer; 
   begin
    for i:=1 to 3 do
     begin
      for j:=1 to 4 do
       begin
        aux:=1;
        fat:=1;
        repeat
         fat:=fat*aux;
         aux:=aux+1;
        until (aux>mat1[i,j]);
        mat2[i,j]:=fat;
       end;
     end;
   end;
Begin
 for i:=1 to 3 do
  begin
   for j:=1 to 4 do
    begin
     repeat
      write ('Digite um valor inteiro não negativo para a posição [',i,' ',j,'] da matriz A: ');
      read (matrizA[i,j]);
     until (matrizA[i,j] >= 0);
    end;
  end;
 clrscr;
 writeln ('A matriz A recebida foi: ');
 for i:=1 to 3 do
  begin
   for j:=1 to 4 do
    begin
     write (matrizA[i,j],' ');
    end;
    writeln;
  end;
 matrizfat (matrizA,matrizB);
 writeln ('A matriz B gerada foi: ');
 for i:=1 to 3 do
  begin
   for j:=1 to 4 do
    begin
     write (matrizB[i,j],' ');
    end;
    writeln;
  end;
 readkey;
End.