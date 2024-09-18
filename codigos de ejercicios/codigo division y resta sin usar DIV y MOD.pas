{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
var resultado, numero,resto, divisor, resta: integer;
begin
  resultado:=0; 
  write('escriba el numero que quiere dividir');
  read(numero); 
  write('escriba el numero por el cual quiere dividir el numero anterior:');
  read(divisor);
  resta:=numero;
  while(resta>=divisor)do begin
    resta:=resta-divisor;
    resultado:=resultado+1;
  end;
  writeln(resultado);
  resto:=numero-(resultado*divisor);
  write('el resto de la division entera entre estos numeros es:',resto);
end.

