def wyznacznik(tab,a)
  m = []
  w=1
  suma=0
  if a == 1
    return tab[0][0]
  else
    for i in (a-1).downto(0)
      for j in (0..a-2)
        m[j] = []
        for k in (0..i-1)
          m[j][k]  = tab[j][k]
        end
        for k in (i..a-2)
          pom=k+1
          m[j][k] = tab[j][pom]
        end
      end
    pom=a-1
    suma = suma + w*tab[pom][i]*wyznacznik(m,pom)
    
    w=(-1)*w
    end
  return suma   
  end
  
end

macierz = []

begin
  puts "podaj wymiar macierzy:\n"
  a = gets.chomp.to_i
  if a < 0
    puts "Cyfra nie moze byc ujemna"
  end
end while a < 0
for i in 0..a-1
  macierz[i]=[]
  puts "podaj #{i+1} wiersz macierzy: "
  for j in 0..a-1
    macierz[i][j] = gets.chomp.to_i
  end
end

for i in 0..a-1
  for j in 0..a-1
     rint "#{macierz[i][j]} "
  end
  puts "\n"
end

puts "Wyznacznik macierzy wynosi #{wyznacznik(macierz,a)}" 
