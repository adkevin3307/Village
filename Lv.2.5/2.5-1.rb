n = gets.chomp.to_i

for i in 0..n
    puts("-" * (4 + 5 * n + (n - 1))) if i == 1
    for j in 0..n
        if j == 0
            printf("%2d |", i)
        elsif i == 0
            printf("%5d", i)
        else
            printf("%5d", i * j)
        end
        print("#{j == n ? "\n" : " "}") if j != 0
    end
end