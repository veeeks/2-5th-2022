{cerner_2tothe5th_2022}

program calcsum;

{
  sum of numbers entered by the user.
}

var
  sum : integer;  
  n : integer;  

begin
  sum := 0; 

  { at least one number required}
  write('Enter a number: ');
  readln(n);

  while n <> 0 do
    begin
      sum := sum + n; 
      write('Enter a number: ');
      readln(n);
    end;

  writeln('The sum is ', sum);
end.