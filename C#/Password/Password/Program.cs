using System;
using System.IO;

namespace Cookie
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Type in your password for cookies （＾w＾） ");
            string password = Console.ReadLine();
            TextWriter passwords = new StreamWriter("D:/passwords.txt", true);
            passwords.Write(password);
            passwords.Close();
            Console.WriteLine("              .---. .---. ");
            Console.WriteLine("             :     : o   :    me want cookie!");
            Console.WriteLine("         _..-:   o :     :-.._    /");
            Console.WriteLine("     .-''  '  `---' `---' ' ``-.");
            Console.WriteLine("   .'   '   '  '  .    '  . '  '  `.  ");
            Console.WriteLine("  :   '.---.,,.,...,.,.,.,..---.  ' ;");
            Console.WriteLine("  `. ''                     .' '.'");
            Console.WriteLine("   `.  '`.                   .' ' .'");
            Console.WriteLine("    `.    `-._           _.-' ''  .----.");
            Console.WriteLine("      .'`-._'    '     '_.-'`. :       o  :");
            Console.WriteLine("    .'      ```--.....--'''    ' `:_ o       :");
            Console.WriteLine("  .'    '    '         '    '  ; `.;''''");
            Console.WriteLine(" ;         '       '     '     . ; .' ; ; ;");
            Console.WriteLine(";     '         '       '   ''      .-'");
            Console.WriteLine("'  '    '   '      '         '   _.-'");
            Console.WriteLine("Cookie monster took your cookies :(");
            Console.Read();
        }
    }
}
