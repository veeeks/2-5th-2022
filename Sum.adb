With Gnat.IO; use Gnat.IO;
procedure addtwointeger is
    a : Integer;
    b : Integer;
    sum : Integer;
begin
    Put ("Enter value of a: ");
    Get (a);
    Put ("Enter value of b: ");
    Get (b);
    sum := a + b;
    Put_Line ("Sum = " & integer'image(sum));
end;
--cerner_2tothe5th_2022
