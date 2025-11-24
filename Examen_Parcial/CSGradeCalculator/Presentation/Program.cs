using CS_GradeCalculator.Application;
using CS_GradeCalculator.Domain;

namespace CS_GradeCalculator.Presentation;

public static class Program
{
    public static void Main()
    {
        var record = new StudentRecord();

        Console.WriteLine("=== CS GradeCalculator ===");

        Console.Write("How many evaluations? (max 10): ");
        int n = int.Parse(Console.ReadLine()!);

        for (int i = 0; i < n; i++)
        {
            Console.Write($"Eval {i + 1} name: ");
            string name = Console.ReadLine()!;

            Console.Write("Score: ");
            double score = double.Parse(Console.ReadLine()!);

            Console.Write("Weight (decimal, e.g. 0.2): ");
            double weight = double.Parse(Console.ReadLine()!);

            record.AddEvaluation(new Evaluation(name, score, weight));
        }

        Console.Write("Reached minimum attendance? (true/false): ");
        bool attendance = bool.Parse(Console.ReadLine()!);
        record.SetAttendance(attendance);

        Console.Write("How many teachers votes?: ");
        int t = int.Parse(Console.ReadLine()!);
        var votes = new List<bool>();
        for (int i = 0; i < t; i++)
        {
            Console.Write($"Teacher {i + 1} agrees? (true/false): ");
            votes.Add(bool.Parse(Console.ReadLine()!));
        }
        record.SetTeachersAgreement(votes);

        var service = new GradeService();
        var result = service.ComputeFinalGrade(record);

        Console.WriteLine("\n=== RESULT ===");
        Console.WriteLine(result);
    }
}