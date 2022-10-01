#cerner_2tothe5th_2022

nums = [12,16,5,9,11,5,4]

i = 0
rev_arr = []

nums.length.times do
  rev_arr << nums.reverse[i]
  i += 1
end

p rev_arr
