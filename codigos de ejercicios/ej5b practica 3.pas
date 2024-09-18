{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program Hello;
  procedure imprime(numero,cantdig:integer);
  var i,digito:integer;  
  begin
    for i:= 1 to cantdig do
    begin
      digito:=numero mod 10;
      numero:= numero div 10;
      writeln(digito);
    end;
  end;
  procedure lector(numero:integer);
  begin
    while(numero<>0)do begin
      imprime(numero,3);
      imprime(numero,5);
      readln(numero)
      end;
  end;
begin
  lector(1234)
end.

