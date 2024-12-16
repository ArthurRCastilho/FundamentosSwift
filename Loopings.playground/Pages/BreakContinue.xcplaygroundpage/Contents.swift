var count = 1

print("Break")
while count <= 10 {
    if count == 5 {
        break // Sai do while
    }
    print(count)
    count += 1
}

print("Continue")
count = 1

while count <= 10 {
    count += 1
    if count == 5 {
        continue // Vai pular o restante do while, não irá dar print em 5
    }
    print(count)
}
