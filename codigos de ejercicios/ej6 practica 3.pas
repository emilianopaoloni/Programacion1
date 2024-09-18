{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
  procedure palabra(car:char);
  var longitud, pal7:integer;  
  begin
    repeat
      longitud:=0; pal7:=0;
      while(car=' ') do
        readln(car);
      while (car<>' ') and (car<>'*')do begin
        longitud:=longitud+1;
        readln(car);
        end;
      if(longitud=7)then
        pal7:=pal7+1
    until(car='*');
    writeln('la cantidad de palabras con 7 digitos es de:', pal7);
  end;
  var car:char;
  begin
    readln(car);
    palabra(car);
  end.
  
      
  
    

