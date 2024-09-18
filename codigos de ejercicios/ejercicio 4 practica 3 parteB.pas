{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program ejercicio4;
const finsec='#';
type letras= set of char;
procedure verificar(abc:letras);
var i:char;
begin
  for i:='a' to 'z' do begin
    if (i IN abc) then
      writeln('i');
    end;
end;
procedure borrarblancos(var car:char);
begin
  while(car=' ') do
    readln(car);
end;
procedure procesarsecuencia(var abc:letras);
var car:char;
begin
  readln(car);
  while (car<>finsec) do begin
    borrarblancos(car);
    if (car IN abc) then
      abc:= abc - [car];
    readln(car);
  end;
end;
var abc:letras;
begin
  abc:=['a'..'z'];
  procesarsecuencia(abc);
  verificar(abc);
end.

