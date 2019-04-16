n = gets.chomp.to_i

for i in 0..n
  if i == 1
    puts("-" * (4 + 5 * n + (n - 1)))
  end
  for j in 0..n
    if j == 0
        printf("%2d |", i)
    elsif i == 0
        printf("%5d", j)
    else
        printf("%5d", i * j)
    end
    if j != 0
      print("#{j == n ? "\n" : ","}")
    end
  end
end

