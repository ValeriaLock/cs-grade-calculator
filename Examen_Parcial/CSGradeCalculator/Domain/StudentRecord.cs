using CS_GradeCalculator.Domain.Policies;

namespace CS_GradeCalculator.Domain;

public class StudentRecord
{
    private const int MaxEvaluations = 10;
    private readonly List<Evaluation> _evaluations = new();
    public IReadOnlyList<Evaluation> Evaluations => _evaluations;

    public bool HasReachedMinimumClasses { get; private set; }
    public IReadOnlyList<bool> AllYearsTeachers { get; private set; } = new List<bool>();

    public void AddEvaluation(Evaluation evaluation)
    {
        if (_evaluations.Count >= MaxEvaluations)
            throw new InvalidOperationException($"Max evaluations is {MaxEvaluations}.");
        _evaluations.Add(evaluation);
    }

    public void SetAttendance(bool hasReachedMinimumClasses)
        => HasReachedMinimumClasses = hasReachedMinimumClasses;

    public void SetTeachersAgreement(List<bool> allYearsTeachers)
    {
        if (allYearsTeachers == null || allYearsTeachers.Count == 0)
            throw new ArgumentException("Teachers agreement list cannot be empty.");
        AllYearsTeachers = allYearsTeachers;
    }
}