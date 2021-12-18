using System;

namespace Dice_game
{
    class Program
    {
        static void Main(string[] args)
        {
            int money = 10;
            Console.WriteLine("you have " + money + "$" );
        Start: Question: if (money >=5) { Console.WriteLine("Do you want to ROLL or LEAVE");
                string answer = Console.ReadLine();
                if (answer == "roll" || answer == "ROLL") {
                    goto Roll;
                }
                //If user leaves
                else if (answer == "leave" || answer == "LEAVE")
                {
                    goto Leave;
                }
                //If user doesn't use a correct answer
                else
                {
                    Console.WriteLine("Choose one:");
                    goto Question;
                } }
        else
            {
                Console.WriteLine("You lost all your money");
                return;
            }





        //Leave Block
        Leave:
            Console.WriteLine("you left with " + money + "$");
            return;
            //Roll block
            Roll:
            Random rnd = new Random();
            int userDice = rnd.Next(1, 7);
            Console.WriteLine("You rolled a " + userDice);
            int botDice = rnd.Next(1,7);
            Console.WriteLine("Opponent rolled a " + botDice);
            //Comparing
            if (userDice < botDice)
            {
                Console.WriteLine("You lost 5$");
                money = money - 5;
                Console.WriteLine("You now have " + money + "$");
                goto Start;

            }
            else if (userDice > botDice)
            {
                Console.WriteLine("You won 5$"); 
                money = money + 5;
                Console.WriteLine("You now have " + money + "$");
                goto Start;
            }
            else
            {
                Console.WriteLine("You tied");
                goto Start;
            }
        }
    }
}
