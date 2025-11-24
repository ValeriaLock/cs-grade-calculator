namespace CS_GradeCalculator.Domain.Policies;

public class ExtraPointsPolicy
{
    private readonly double _extraPoints;

    public ExtraPointsPolicy(double extraPoints)
    {
        if (extraPoints < 0) throw new ArgumentException("Extra points must be >= 0.");
        _extraPoints = extraPoints;
    }

    public bool ShouldApply(IReadOnlyList<bool> allYearsTeachers)
        => allYearsTeachers.All(x => x == true);

    public double Apply(double grade, IReadOnlyList<bool> allYearsTeachers)
        => ShouldApply(allYearsTeachers) ? grade + _extraPoints : grade;

    public double ExtraValue(IReadOnlyList<bool> allYearsTeachers)
        => ShouldApply(allYearsTeachers) ? _extraPoints : 0;
}