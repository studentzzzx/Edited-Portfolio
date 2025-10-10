
using System;

namespace InterfacePolymorphismApp
{
    // Define an interface named IQuittable
    interface IQuittable
    {
        // Declare a void method named Quit
        void Quit();
    }

    // Define an Employee class that implements the IQuittable interface
    class Employee : IQuittable
    {
        // Implement the Quit method from the IQuittable interface
        public void Quit()
        {
            // Display a message indicating the employee has quit
            Console.WriteLine("Employee has quit the job.");
        }
    }

    class Program
    {
        // Main method: entry point of the console application
        static void Main(string[] args)
        {
            // Use polymorphism to create an object of type IQuittable
            IQuittable quitter = new Employee();

            // Call the Quit method on the IQuittable object
            quitter.Quit();
        }
    }
}
