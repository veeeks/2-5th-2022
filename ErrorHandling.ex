#cerner_2tothe5th_2022
IO.puts("Enter a numeric value")
n = String.to_integer IO.gets ""
err = try do
   3/ n
rescue
   ArithmeticError -> "You've got a Argument error!"
end

IO.puts(err)
