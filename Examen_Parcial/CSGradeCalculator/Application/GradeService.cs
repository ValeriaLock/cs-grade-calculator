using CS_GradeCalculator.Domain;
using CS_GradeCalculator.Domain.Policies;

namespace CS_GradeCalculator.Application;

public class GradeService
{
    private readonly GradeCalculator _calculator = new();

    public GradeResult ComputeFinalGrade(StudentRecord record)
    {
        var attendancePolicy = new AttendancePolicy(2.0);
        var extraPointsPolicy = new ExtraPointsPolicy(1.0);
        return _calculator.Calculate(record, attendancePolicy, extraPointsPolicy);
    }
}