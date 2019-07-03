puts "Welcome in radnom-walk simulator!"
print "Zadej velikost n: "
n = gets.chomp.to_i
#print "Zadej p:"
#p = gets.chomp.to_f
p = 0.5.to_f
k = n/2
pocet = 0
file.puts (pocet.to_s + " " + k.to_s)
while ( k != 1 && k != n)
    ran = rand()
    if ran <= p
        k += 1
    elsif ran > p 
        k -= 1
    end
    pocet += 1
    file.puts (pocet.to_s + " " + k.to_s)
end