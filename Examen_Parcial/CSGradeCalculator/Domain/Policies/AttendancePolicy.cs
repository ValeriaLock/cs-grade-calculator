namespace CS_GradeCalculator.Domain.Policies;

public class AttendancePolicy
{
    private readonly double _penaltyIfNotReached;

    public AttendancePolicy(double penaltyIfNotReached)
    {
        if (penaltyIfNotReached < 0)
            throw new ArgumentException("Penalty must be >= 0.");
        _penaltyIfNotReached = penaltyIfNotReached;
    }

    public double Apply(double currentAverage, bool hasReachedMinimumClasses)
        => hasReachedMinimumClasses ? currentAverage : Math.Max(0, currentAverage - _penaltyIfNotReached);

    public double PenaltyValue(bool hasReachedMinimumClasses)
        => hasReachedMinimumClasses ? 0 : _penaltyIfNotReached;
}