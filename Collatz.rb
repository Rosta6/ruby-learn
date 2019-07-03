file = File.new("Collatz.txt", "w")
file2 = File.new("Collatz2.txt", "w")
#file.puts("1 2 3")

# krok na cislo n do jednicky
print "Zadej cislo n: "
n = gets.chomp.to_i
krok = 0
pomoc = n
file.puts (krok.to_s + " " + n.to_s)
while n != 1 do
    if (n % 2 == 0)
        n = n/2
    else
        n = 3*n + 1
    end
    krok += 1
   file.puts (krok.to_s + " " + n.to_s)
end    
file.close

# vypocteny pocet kroku pro cisla od 1 do n
n = pomoc
arr = [*1..n]
krok2 = 0
max = 0
i = 0
while i < n
    a = arr[i]
    krok2 = 0
while a != 1 do
    if (a % 2 == 0)
        a= a/2
    else
        a = 3*a + 1
    end
    krok2 += 1
end
if krok2 > max
    max = krok2
end
file2.puts (arr[i].to_s + " " + krok2.to_s)
i += 1
end    
puts max
file2.close