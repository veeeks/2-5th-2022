!#cerner_2tothe5th_2022
program sevenProg

   integer :: numbers(10) 
   do i=1,10
      numbers(i) = 7!i * 2.0
   end do

   do i=1,10
       numbers(i) = numbers(i) * i
   end do
   !display the values
   do i = 1, 10
      Print *, numbers(i)
   end do
   
  
   
end program sevenProg
