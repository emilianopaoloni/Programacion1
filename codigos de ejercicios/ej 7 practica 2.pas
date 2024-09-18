{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
var cantpal, cantcar, cantcarmax:integer;
car: char;
begin
  cantpal:=0;
  readln(car);
  while(car <>'k')do begin
    if (car='t') then begin
      cantcarmax:=0;
      cantcar:=1;
      read(car);
      while(car<> ' ')do begin
        cantcar:=cantcar+1;
        read(car);
        end;
      if(cantcar>cantcarmax) then
        cantcarmax:=cantcar;
      cantpal:=cantpal+1;
    end
    else if (car<>'t') then begin
      while(car<> ' ')do
         read(car);
    cantpal:=cantpal+1
    end;
    writeln('escriba otro caracter para comenzar una nueva palabra');
    readln(car);
  end;
  writeln('cantidad de palabras:', cantpal);
  writeln('longitud de palabra mas larga que comienza con t es:',cantcarmax);
end.

