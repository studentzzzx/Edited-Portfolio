using System;

namespace MathConsoleApp
{
    // Define a class named MathOperation
    class MathOperation
    {
        // Define a void method that takes two integers as parameters
        public void PerformOperation(int firstInt, int secondInt)
        {
            // Perform a math operation on the first integer (e.g., multiply by 2)
            int result = firstInt * 2;

            // Display the result of the operation
            Console.WriteLine($"Result of operation on first integer ({firstInt}): {result}");

            // Display the second integer
            Console.WriteLine($"Second integer: {secondInt}");
        }
    }

    class Program
    {
        // Main method: entry point of the console application
        static void Main(string[] args)
        {
            // Instantiate the MathOperation class
            MathOperation mathOp = new MathOperation();

            // Call the method using positional arguments
            mathOp.PerformOperation(5, 10);

            // Call the method using named arguments
            mathOp.PerformOperation(firstInt: 7, secondInt: 14);
        }
    }
}
