using CS_GradeCalculator.Domain.Policies;

namespace CS_GradeCalculator.Domain;

public class GradeResult
{
    public double WeightedAverage { get; init; }
    public double AttendancePenalty { get; init; }
    public double ExtraPointsApplied { get; init; }
    public double FinalGrade { get; init; }

    public override string ToString()
    {
        return $"""
Weighted Average: {WeightedAverage:F2}
Attendance Penalty: {AttendancePenalty:F2}
Extra Points: {ExtraPointsApplied:F2}
Final Grade: {FinalGrade:F2}
"""";
    }
}

public class GradeCalculator
{
    public GradeResult Calculate(
        StudentRecord record,
        AttendancePolicy attendancePolicy,
        ExtraPointsPolicy extraPointsPolicy)
    {
        if (record.Evaluations.Count == 0)
            throw new InvalidOperationException("Cannot calculate with 0 evaluations.");

        double totalWeight = record.Evaluations.Sum(e => e.Weight);
        if (Math.Abs(totalWeight - 1.0) > 0.0001)
            throw new InvalidOperationException("Weights must sum to 1.0.");

        double weightedAverage = record.Evaluations.Sum(e => e.Score * e.Weight);
        double afterAttendance = attendancePolicy.Apply(weightedAverage, record.HasReachedMinimumClasses);
        double final = extraPointsPolicy.Apply(afterAttendance, record.AllYearsTeachers);

        return new GradeResult
        {
            WeightedAverage = weightedAverage,
            AttendancePenalty = attendancePolicy.PenaltyValue(record.HasReachedMinimumClasses),
            ExtraPointsApplied = extraPointsPolicy.ExtraValue(record.AllYearsTeachers),
            FinalGrade = final
        };
    }
}