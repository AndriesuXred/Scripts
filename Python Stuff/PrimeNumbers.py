#ask user for a number
userDefined = int(input("All prime numbers until: "))

for answer in range(2, userDefined):
    #Boolean that remains true unless tripped
    is_prime = True
    #checks if number is greater than 1
    if answer > 1:
        for number in range(2, answer):
            if answer % number == 0:
                is_prime = False
                break

        if is_prime:
            print(answer)
input()