Program ex_3;
 var polj,polc :array[1..10] of integer;
 var i,x,tp,ip,aux,qtdpj,qtdpc :integer;
 var namepj,namepc:array[1..10] of string;
Begin
  repeat
   writeln ('Selecione uma opção para continuar: ');
   writeln ('1 - Vender Passagem');
   writeln ('2 - Mostrar mapa de ocupação do ônibus');
   writeln ('3 - Encerrar');
   read (x);
    if (x=1) then
     begin
      clrscr;
      writeln ('Olá, selecione abaixo qual opção gostaria de comprar agora: ');
      writeln ('1 - Poltrona na janela');
      writeln ('2 - Poltrona no corredor');
      read (tp);
       if (tp=1) then
        begin
         repeat
          write ('Informe o número da poltrona: ');
          read (ip);
         until (ip <= 10);
         for i:=1 to 10 do
          begin
           if (i = ip) then begin
            if (qtdpj = 10) then
             begin
              writeln ('Ônibus lotado!');
             end
            else if (polj[i] = 1) then
             begin
              writeln ('Poltrona Ocupada!');
             end
            else if (polj[i] = 0) then
             begin
               polj[ip]:=1;
               writeln ('Venda Efetivada, obrigado pela compra!');
               qtdpj:=qtdpj+1;
             end;
           end;
          end;
       end;
      if (tp=2) then
       begin
         repeat
          write ('Informe o número da poltrona: ');
          read (ip);
         until (ip <= 10);
         for i:=1 to 10 do
          begin
           if (i = ip) then begin
            if (qtdpc = 10) then
             begin
              writeln ('Ônibus lotado!');
             end
            else if (polc[i] = 1) then
             begin
              writeln ('Poltrona Ocupada!');
             end
            else if (polc[i] = 0) then
             begin
               polc[ip]:=1;
               writeln ('Venda Efetivada, obrigado pela compra!');
               qtdpc:=qtdpc+1;
             end;
           end;
          end;
       end;
     end; 
     if (x=2) then
      begin
       writeln (' JANELA ');
        for i:=1 to 10 do
         begin
          if (polj[i] = 1) then
           begin
            namepj[i]:= ('Ocupada');
           end
          else if (polj[i] = 0) then
           begin
            namepj[i]:= ('Livre');
           end;
          write (i,' - ',namepj[i]);
          writeln;
         end;
       writeln;
       writeln (' CORREDOR ');
        for i:=1 to 10 do
         begin
          if (polc[i] = 1) then
           begin
            namepc[i]:= ('Ocupada');
           end
          else if (polc[i] = 0) then
           begin
            namepc[i]:= ('Livre');
           end;
          write (i,' - ',namepc[i]);
          writeln;
         end;  
      end;
  until (x = 3);
  readkey; 
End.