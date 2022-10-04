--cerner_2tothe5th_2022
list = {1,2,3,4,5}

rev_list = {}
for i=#list, 1, -1 do
	rev_list[#rev_list+1] = list[i]
end
list = rev_list

print(table.concat(list, ", "))
