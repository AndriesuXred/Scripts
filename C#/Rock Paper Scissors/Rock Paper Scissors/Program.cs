using System;

namespace Rock_Paper_Scissors
{
    class Program
    {
        static void Main(string[] args)
        {
            int nanswer;
            Random rnd = new Random();
        //Question
        Question: Console.WriteLine(@"Choose:
1:Rock
2:Paper 
3:Scissors");
           
            string sanswer = Console.ReadLine();
            //Conveting user answer to numbers
            if (sanswer == "Rock")
            {
                nanswer = 1;
                Console.WriteLine(@"
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)               
");
            }
            else if (sanswer == "Paper")
            {
                nanswer = 2;
                Console.WriteLine(@"
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)               
");
            }
            else if (sanswer == "Scissors")
            {
                nanswer = 3;
                Console.WriteLine(@"
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)             
");
            }
            else
            {
                goto Question;
            }
            int banswer = rnd.Next(1, 4);
            if (nanswer == 1 && banswer == 2)
            {
                Console.WriteLine(@"
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)               
");
                Console.WriteLine("Opponent chose Paper, You Lost");               
                goto Question;
            }
            else if (nanswer == 2 && banswer == 3)
            {
                Console.WriteLine(@"
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)             
");
                Console.WriteLine("Opponent chose Scissors, You Lost");               
                goto Question;
            }
            else if (nanswer == 3 && banswer == 1)
            {
                Console.WriteLine(@"
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
");
                Console.WriteLine("Opponent chose Rock, You Lost");
                goto Question;
            }
            else if (nanswer == 2 && banswer == 1)
            {
                Console.WriteLine(@"
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)              
");
                Console.WriteLine("Opponent chose Rock, You Won");
                goto Question;

            }
            else if (nanswer == 3 && banswer == 2)
            {
                Console.WriteLine(@"
     _______
---'    ____)____
           ______)
          _______)
         _______)
---.__________)               
");
                Console.WriteLine("Opponent chose Paper, You Won");                
                goto Question;
            }
            else if (nanswer == 1 && banswer == 3)
            {
                Console.WriteLine(@"
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)             
");
                Console.WriteLine("Opponent chose Scissors, You Won");                
                goto Question;
            }
            else if (nanswer == banswer)
            {
                Console.WriteLine("Opponent chose " + sanswer + " you tied");
                goto Question;
            }
        }
    }
}
