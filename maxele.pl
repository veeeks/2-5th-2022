=begin
cerner_2tothe5th_2022
=end
=cut

$max = 0;

@arr = (2,3,4,5,6,10,12,1,24);

foreach $ele (@arr)
{
    if($ele > $max)
    {
        $max = $ele;
    }
}

print "The max element is $max";
