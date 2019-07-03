print "Zadej cislo n:"
n = gets.chomp.to_i


# soucet prvnich n cisel
soucet = 0
i = 0
while i<=n do
    soucet +=  i
    i += 1 
 end
puts ("while: " + soucet.to_s)

 # soucet provnich n cisel vol 2
 soucet = n*(n+1)/2
 puts ("Vztah: " + soucet.to_s)

 #pomoci pole
 arr = [*1..n]
 soucet = arr.sum
 puts ("Pole: " + soucet.to_s)


 #ciferny soucet
 arr2 = n.to_s.split(//).map{|chr| chr.to_i}
 ciferny_soucet = arr2.sum
 puts ("Ciferny soucet: " + ciferny_soucet.to_s)

 #pocet jednicek v cisle
 pocet = 0
 k = 0
 while k<=n do
    if (arr2[k] == 1)
        pocet += 1
    end
    k += 1 
 end
puts ("Pocet jednicek: " + pocet.to_s)

#otoceni cisla
opacne = arr2.reverse
l= 0
print "Opacne :"
while l<=arr2.length do
    print opacne[l]
    l += 1 
 end