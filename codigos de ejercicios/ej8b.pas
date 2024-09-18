{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
var
  car:char;
  pal,palR,cantcar:integer;
begin
  pal:=0;
  cantcar:=0;
  palR:=0;
  readln(car);
  repeat
    while (car=' ')do begin
      read(car);
      cantcar:=cantcar+1;
    end;
    if (car='r') then begin
      palR:=palR+1; pal:=pal+1;
      while (car<>' ') and (car<>'z') do begin
        read(car);
        cantcar:=cantcar+1;
        end;
    end
    else if (car<>'r') then begin
    pal:=pal+1;
    while (car<>' ') and (car<>'z')do begin
      read(car);
      cantcar:=cantcar+1
      end;
    end;
    readln(car);
    until (car<>'z') or (cantcar<>500);
  writeln('cant de palabras que empiezan con r:', palR);
  writeln('cant de palabras en total:', pal);
  writeln('cant de caracteres:',cantcar);
end.
    
  
 

