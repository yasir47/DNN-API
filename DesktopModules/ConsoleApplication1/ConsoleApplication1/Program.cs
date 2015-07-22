using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
  /*  class Program
    {

        public int num(int a , int b)
        {
            int c = a + b;
            return c;
        }

        static void Main(string[] args)
        {
            Program pro = new Program();
            Other o = new Other();
            Console.WriteLine("Hello");
            Console.WriteLine(pro.num(5,7));
            Console.WriteLine(o.min(4, 2));

            int[] a = new int[10];
            for (int i = 0; i < 10;i++ )
            {
                a[i] = i;
            }

            foreach(var j in a)
            {
                Console.WriteLine(" new " + j);
            }

                Console.ReadLine();
        }
    }

    class Other : Check
    {
        public int min(int f,int g)
        {
           a = f - g;
            return a;
        }
    }

    class Check
    {
        public int a;
        public int b;



    }*/
    class Shape 
   {
      protected int width, height;
      public Shape( int a=0, int b=0)
      {
         width = a;
         height = b;
      }
      public virtual int area()
      {
         Console.WriteLine("Parent class area :");
         return 0;
      }
   }
   class Rectangle: Shape
   {
      public Rectangle( int a=0, int b=0): base(a, b)
      {

      }
      public override int area ()
      {
         Console.WriteLine("Rectangle class area :");
         return (width * height); 
      }
   }
   class Triangle: Shape
   {
      public Triangle(int a = 0, int b = 0): base(a, b)
      {
      
      }
      public override int area()
      {
         Console.WriteLine("Triangle class area :");
         return (width * height / 2); 
      }
   }
   class Caller
   {
      public void CallArea(Shape sh)
      {
         int a;
         a = sh.area();
         Console.WriteLine("Area: {0}", a);
      }
   }  
   class Tester
   {
      
      static void Main(string[] args)
      {
         Caller c = new Caller();
         Rectangle r = new Rectangle(10, 7);
         Triangle t = new Triangle(10, 5);
         c.CallArea(r);
         c.CallArea(t);
         Console.ReadKey();
      }
   }
}
