{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
  procedure evaluacion(var cantpal:integer;
                       car1:char; car2:char);
  begin
     if (car1='p')and(car2='a')then
       cantpal:=cantpal+1;
  end;
var 
    car,ant:char; pal:integer;
begin
  pal:=0;
  readln(car);
  repeat
    while(car=' ')do
      readln(car);
    ant:=car;
    while (car<>' ') and (car<>'.') do begin
      evaluacion(pal,ant,car);
      ant:=car;
      readln(car);
      end;
  until(car='.');
  write('cantidad de palabras con p seguidas de a:',pal);
end.

