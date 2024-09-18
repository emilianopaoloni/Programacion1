{

Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

}
program Hello;
var numero, digmax1, digmax2, dig, suma: integer;
begin
  write('ingrese un numero entero');
  readln(numero);
  while(numero<9999) do begin
    suma:=0;
    digmax1:=-1;
    digmax2:=-1;
    while (numero<>0) do begin
      dig:=numero MOD 10;
      if(dig>digmax1)then begin
         digmax1:=dig;
         digmax2:=digmax1;
         end
         else if (dig>digmax2) then
             digmax2:=dig;
      end;
     suma:=suma+dig;
     numero:=numero DIV 10;
    end;
  writeln('la suma de todas las unidades es:',suma);
  writeln('los dos digitos mas grandes son:', digmax1, 'y', digmax2);
  readln(numero);
end.

