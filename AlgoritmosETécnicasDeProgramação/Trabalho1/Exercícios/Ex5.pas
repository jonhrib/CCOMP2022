Program jogo_duracao ;
   var hi,hf,mi,mf,dh,dm   :integer;
Begin
   writeln ('Digite o horário inicial do jogo');
   write ('Hora: ');
   read (hi);
   write ('Minutos: ');
   read (mi);
   writeln ('Digite o horário final do jogo: ');
   write ('Hora: ');
   read (hf);
   write ('Minutos: ');
   read (mf);
    if (hf > hi) then
     begin
      dh:=(hf - hi)
     end
     else if (hi > hf) then
		  begin
		   dh:= (24-(hi-hf));
			end; 
		if (mf > mi) then
		 begin
		  dm:= (mf - mi)
		 end
		  else if (mi > mf) then
		   begin
		    dh:= dh - 1;
		    dm:= (60-(mi-mf));
		   end;
	   write ('O jogo durou ', dh, ' horas e ', dm, ' minutos.');
   readkey;
End.