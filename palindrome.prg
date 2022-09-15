;-------cerner_2^5_2022---------
drop program palindrome go
create program palindrome
prompt 
	"Output to File/Printer/MINE" = "MINE"  
	, "String" = "" 
with OUTDEV, inp
DECLARE len = i4 WITH noconstant (0 ) ,protect
DECLARE idx = i4 WITH noconstant (0 ) ,protect
declare str1 = vc WITH noconstant (""),protect
declare str = vc  WITH noconstant (""),protect
declare lcnt = i4 with noconstant (0) ,protect
declare result = vc with noconstant(""),protect
set str = $inp 
set str = trim(str,3)
set lcnt = cnvtint(textlen(str))
while( lcnt > 0)
	 set str1 = concat(str1, substring(lcnt,1,str))
	 set lcnt = lcnt-1
endwhile
set str1 = trim(str1,3)
if(trim(cnvtupper(str1)) = trim(cnvtupper(str)))
	set result = "Yes"
else 
	set result = "No"
endif
SELECT into $outdev
	Output = result 
FROM
	(DUMMYT   D1  )
WITH NOCOUNTER, SEPARATOR=" ", FORMAT
end
go
