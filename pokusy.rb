print "Zadej cislo n: "
n = gets.chomp.to_i

ary = Array.new(n)
ary3 = Array.new(n)

i = 0
while i<n do
    ary[i] = rand(100)
    i += 1
end

j=0
while j<n do
    ary3[n-j-1] = ary[j]
    j += 1
end

ary2 = ary.reverse
ary4 = ary.sort

print ("Puvodni pole:      " + ary.to_s + "\n")
print ("Reverse pole:      " + ary2.to_s + "\n")
print ("Loop reverse pole: " + ary3.to_s + "\n")
print ("Sorted pole:       " + ary4.to_s + "\n")