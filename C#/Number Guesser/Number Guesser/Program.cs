using System;
using System.IO;

namespace Number_Guesser
{
    class Program
    {
        static void Main(string[] args)
        {
            //Declaring stuff
            Random rnd = new Random();
            int number;
            int answer = rnd.Next(1,100);
            Console.WriteLine("Guess the number:");
           Start: try
            {
                number = Convert.ToInt32(Console.ReadLine());
            }
            catch (Exception e)
            {
                Console.WriteLine("That's not a number");
                goto Start;
            }
      // If statement
      
                 if (number<answer)
            {
                Console.WriteLine("Higher");
                goto Start;
            }
            else if (number>answer)
            {
                Console.WriteLine("Lower");
                goto Start;
            }
            else
            {
                Console.WriteLine("YOU WON A COOKIE :D");
                Console.WriteLine(@"
                 _    _           
                | |  (_)          
  ___ ___   ___ | | ___  ___  ___ 
 / __/ _ \ / _ \| |/ / |/ _ \/ __|
| (_| (_) | (_) |   <| |  __/\__ \
 \___\___/ \___/|_|\_\_|\___||___/
");
                return;
            } 
            
            
        }
    }
}
