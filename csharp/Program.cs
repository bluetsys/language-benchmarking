using System;

namespace lang
{
    class Program
    {
        static void Main(string[] args)
        {
            long add = 0;
            var st = System.DateTime.Now;

            for (int index = 0; index < 100000000; index++)
            {
                add = add + index;
            }

            var ed = System.DateTime.Now - st;

            Console.WriteLine("==========================");
            Console.WriteLine("C# 테스트");
            Console.WriteLine(add);
            Console.WriteLine(ed);
        }
    }
}
