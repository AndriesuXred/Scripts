import random
answer = random.randint(1, 100)
guesscount = 0
outofguesses = False

guess = int(input("guess a number between 1-100: "))


while guess != answer and not(outofguesses):
    if guess < answer:
        print("Higher")
        guess = int(input("guess again: "))
    elif guess > answer:
        print("Lower")
        guess = int(input("guess again: "))
    guesscount += 1
    if guesscount == 5:
        outofguesses = True

if outofguesses:
    print("You Lost")
else:
    print("You are right! The answer was " + str(answer))

input()