namespace CS_GradeCalculator.Domain;

public class Evaluation
{
    public string Name { get; }
    public double Score { get; }
    public double Weight { get; }

    public Evaluation(string name, double score, double weight)
    {
        if (string.IsNullOrWhiteSpace(name))
            throw new ArgumentException("Evaluation name is required.");
        if (score < 0)
            throw new ArgumentException("Score cannot be negative.");
        if (weight <= 0 || weight > 1)
            throw new ArgumentException("Weight must be in (0,1].");

        Name = name;
        Score = score;
        Weight = weight;
    }
}