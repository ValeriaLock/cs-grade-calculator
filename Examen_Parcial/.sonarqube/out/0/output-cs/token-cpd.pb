¿)
Ä/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Presentation/Program.cs
	namespace 	
CS_GradeCalculator
 
. 
Presentation )
;) *
public 
static 
class 
Program 
{ 
public 

static 
void 
Main 
( 
) 
{		 
var

 
record

 
=

 
new

 
StudentRecord

 &
(

& '
)

' (
;

( )
Console 
. 
	WriteLine 
( 
$str 6
)6 7
;7 8
Console 
. 
Write 
( 
$str 8
)8 9
;9 :
int 
n 
= 
int 
. 
Parse 
( 
Console !
.! "
ReadLine" *
(* +
)+ ,
!, -
)- .
;. /
for 
( 
int 
i 
= 
$num 
; 
i 
< 
n 
; 
i  
++  "
)" #
{ 	
Console 
. 
Write 
( 
$" 
$str !
{! "
i" #
+$ %
$num& '
}' (
$str( /
"/ 0
)0 1
;1 2
string 
name 
= 
Console !
.! "
ReadLine" *
(* +
)+ ,
!, -
;- .
Console 
. 
Write 
( 
$str #
)# $
;$ %
double 
score 
= 
double !
.! "
Parse" '
(' (
Console( /
./ 0
ReadLine0 8
(8 9
)9 :
!: ;
); <
;< =
Console 
. 
Write 
( 
$str 8
)8 9
;9 :
double 
weight 
= 
double "
." #
Parse# (
(( )
Console) 0
.0 1
ReadLine1 9
(9 :
): ;
!; <
)< =
;= >
record 
. 
AddEvaluation  
(  !
new! $

Evaluation% /
(/ 0
name0 4
,4 5
score6 ;
,; <
weight= C
)C D
)D E
;E F
} 	
Console 
. 
Write 
( 
$str B
)B C
;C D
bool   

attendance   
=   
bool   
.   
Parse   $
(  $ %
Console  % ,
.  , -
ReadLine  - 5
(  5 6
)  6 7
!  7 8
)  8 9
;  9 :
record!! 
.!! 
SetAttendance!! 
(!! 

attendance!! '
)!!' (
;!!( )
Console## 
.## 
Write## 
(## 
$str## 2
)##2 3
;##3 4
int$$ 
t$$ 
=$$ 
int$$ 
.$$ 
Parse$$ 
($$ 
Console$$ !
.$$! "
ReadLine$$" *
($$* +
)$$+ ,
!$$, -
)$$- .
;$$. /
var%% 
votes%% 
=%% 
new%% 
List%% 
<%% 
bool%% !
>%%! "
(%%" #
)%%# $
;%%$ %
for&& 
(&& 
int&& 
i&& 
=&& 
$num&& 
;&& 
i&& 
<&& 
t&& 
;&& 
i&&  
++&&  "
)&&" #
{'' 	
Console(( 
.(( 
Write(( 
((( 
$"(( 
$str(( $
{(($ %
i((% &
+((' (
$num(() *
}((* +
$str((+ B
"((B C
)((C D
;((D E
votes)) 
.)) 
Add)) 
()) 
bool)) 
.)) 
Parse))  
())  !
Console))! (
.))( )
ReadLine))) 1
())1 2
)))2 3
!))3 4
)))4 5
)))5 6
;))6 7
}** 	
record++ 
.++  
SetTeachersAgreement++ #
(++# $
votes++$ )
)++) *
;++* +
var-- 
service-- 
=-- 
new-- 
GradeService-- &
(--& '
)--' (
;--( )
var.. 
result.. 
=.. 
service.. 
... 
ComputeFinalGrade.. .
(... /
record../ 5
)..5 6
;..6 7
Console00 
.00 
	WriteLine00 
(00 
$str00 ,
)00, -
;00- .
Console11 
.11 
	WriteLine11 
(11 
result11  
)11  !
;11! "
}22 
}33 Ä
Ä/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Domain/StudentRecord.cs
	namespace 	
CS_GradeCalculator
 
. 
Domain #
;# $
public 
class 
StudentRecord 
{ 
private 
const 
int 
MaxEvaluations $
=% &
$num' )
;) *
private 
readonly 
List 
< 

Evaluation $
>$ %
_evaluations& 2
=3 4
new5 8
(8 9
)9 :
;: ;
public		 

IReadOnlyList		 
<		 

Evaluation		 #
>		# $
Evaluations		% 0
=>		1 3
_evaluations		4 @
;		@ A
public 

bool $
HasReachedMinimumClasses (
{) *
get+ .
;. /
private0 7
set8 ;
;; <
}= >
public 

IReadOnlyList 
< 
bool 
> 
AllYearsTeachers /
{0 1
get2 5
;5 6
private7 >
set? B
;B C
}D E
=F G
newH K
ListL P
<P Q
boolQ U
>U V
(V W
)W X
;X Y
public 

void 
AddEvaluation 
( 

Evaluation (

evaluation) 3
)3 4
{ 
if 

( 
_evaluations 
. 
Count 
>= !
MaxEvaluations" 0
)0 1
throw 
new %
InvalidOperationException /
(/ 0
$"0 2
$str2 E
{E F
MaxEvaluationsF T
}T U
$strU V
"V W
)W X
;X Y
_evaluations 
. 
Add 
( 

evaluation #
)# $
;$ %
} 
public 

void 
SetAttendance 
( 
bool "$
hasReachedMinimumClasses# ;
); <
=> 
$
HasReachedMinimumClasses #
=$ %$
hasReachedMinimumClasses& >
;> ?
public 

void  
SetTeachersAgreement $
($ %
List% )
<) *
bool* .
>. /
allYearsTeachers0 @
)@ A
{ 
if 

( 
allYearsTeachers 
== 
null  $
||% '
allYearsTeachers( 8
.8 9
Count9 >
==? A
$numB C
)C D
throw 
new 
ArgumentException '
(' (
$str( R
)R S
;S T
AllYearsTeachers 
= 
allYearsTeachers +
;+ ,
} 
} ®
ç/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Domain/Policies/ExtraPointsPolicy.cs
	namespace 	
CS_GradeCalculator
 
. 
Domain #
.# $
Policies$ ,
;, -
public 
class 
ExtraPointsPolicy 
{ 
private 
readonly 
double 
_extraPoints (
;( )
public 

ExtraPointsPolicy 
( 
double #
extraPoints$ /
)/ 0
{ 
if		 

(		 
extraPoints		 
<		 
$num		 
)		 
throw		 "
new		# &
ArgumentException		' 8
(		8 9
$str		9 U
)		U V
;		V W
_extraPoints

 
=

 
extraPoints

 "
;

" #
} 
public 

bool 
ShouldApply 
( 
IReadOnlyList )
<) *
bool* .
>. /
allYearsTeachers0 @
)@ A
=> 

allYearsTeachers 
. 
All 
(  
x  !
=>" $
x% &
==' )
true* .
). /
;/ 0
public 

double 
Apply 
( 
double 
grade $
,$ %
IReadOnlyList& 3
<3 4
bool4 8
>8 9
allYearsTeachers: J
)J K
=> 

ShouldApply 
( 
allYearsTeachers '
)' (
?) *
grade+ 0
+1 2
_extraPoints3 ?
:@ A
gradeB G
;G H
public 

double 

ExtraValue 
( 
IReadOnlyList *
<* +
bool+ /
>/ 0
allYearsTeachers1 A
)A B
=> 

ShouldApply 
( 
allYearsTeachers '
)' (
?) *
_extraPoints+ 7
:8 9
$num: ;
;; <
} ö
å/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Domain/Policies/AttendancePolicy.cs
	namespace 	
CS_GradeCalculator
 
. 
Domain #
.# $
Policies$ ,
;, -
public 
class 
AttendancePolicy 
{ 
private 
readonly 
double  
_penaltyIfNotReached 0
;0 1
public 

AttendancePolicy 
( 
double "
penaltyIfNotReached# 6
)6 7
{ 
if		 

(		 
penaltyIfNotReached		 
<		  !
$num		" #
)		# $
throw

 
new

 
ArgumentException

 '
(

' (
$str

( ?
)

? @
;

@ A 
_penaltyIfNotReached 
= 
penaltyIfNotReached 2
;2 3
} 
public 

double 
Apply 
( 
double 
currentAverage -
,- .
bool/ 3$
hasReachedMinimumClasses4 L
)L M
=> 
$
hasReachedMinimumClasses #
?$ %
currentAverage& 4
:5 6
Math7 ;
.; <
Max< ?
(? @
$num@ A
,A B
currentAverageC Q
-R S 
_penaltyIfNotReachedT h
)h i
;i j
public 

double 
PenaltyValue 
( 
bool #$
hasReachedMinimumClasses$ <
)< =
=> 
$
hasReachedMinimumClasses #
?$ %
$num& '
:( ) 
_penaltyIfNotReached* >
;> ?
} å$
Ç/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Domain/GradeCalculator.cs
	namespace 	
CS_GradeCalculator
 
. 
Domain #
;# $
public 
class 
GradeResult 
{ 
public 

double 
WeightedAverage !
{" #
get$ '
;' (
init) -
;- .
}/ 0
public 

double 
AttendancePenalty #
{$ %
get& )
;) *
init+ /
;/ 0
}1 2
public		 

double		 
ExtraPointsApplied		 $
{		% &
get		' *
;		* +
init		, 0
;		0 1
}		2 3
public

 

double

 

FinalGrade

 
{

 
get

 "
;

" #
init

$ (
;

( )
}

* +
public 

override 
string 
ToString #
(# $
)$ %
{ 
return 
$"""

$str 
{ 
WeightedAverage "
:" #
$str# %
}% &
$str& 
{ 
AttendancePenalty &
:& '
$str' )
}) *
$str* 
{ 
ExtraPointsApplied !
:! "
$str" $
}$ %
$str% 
{ 

FinalGrade 
: 
$str 
} 

""" 
; 
} 
} 
public 
class 
GradeCalculator 
{ 
public 

GradeResult 
	Calculate  
(  !
StudentRecord 
record 
, 
AttendancePolicy 
attendancePolicy )
,) *
ExtraPointsPolicy 
extraPointsPolicy +
)+ ,
{ 
if 

( 
record 
. 
Evaluations 
. 
Count $
==% '
$num( )
)) *
throw 
new %
InvalidOperationException /
(/ 0
$str0 V
)V W
;W X
double!! 
totalWeight!! 
=!! 
record!! #
.!!# $
Evaluations!!$ /
.!!/ 0
Sum!!0 3
(!!3 4
e!!4 5
=>!!6 8
e!!9 :
.!!: ;
Weight!!; A
)!!A B
;!!B C
if"" 

("" 
Math"" 
."" 
Abs"" 
("" 
totalWeight""  
-""! "
$num""# &
)""& '
>""( )
$num""* 0
)""0 1
throw## 
new## %
InvalidOperationException## /
(##/ 0
$str##0 J
)##J K
;##K L
double%% 
weightedAverage%% 
=%%  
record%%! '
.%%' (
Evaluations%%( 3
.%%3 4
Sum%%4 7
(%%7 8
e%%8 9
=>%%: <
e%%= >
.%%> ?
Score%%? D
*%%E F
e%%G H
.%%H I
Weight%%I O
)%%O P
;%%P Q
double&& 
afterAttendance&& 
=&&  
attendancePolicy&&! 1
.&&1 2
Apply&&2 7
(&&7 8
weightedAverage&&8 G
,&&G H
record&&I O
.&&O P$
HasReachedMinimumClasses&&P h
)&&h i
;&&i j
double'' 
final'' 
='' 
extraPointsPolicy'' (
.''( )
Apply'') .
(''. /
afterAttendance''/ >
,''> ?
record''@ F
.''F G
AllYearsTeachers''G W
)''W X
;''X Y
return)) 
new)) 
GradeResult)) 
{** 	
WeightedAverage++ 
=++ 
weightedAverage++ -
,++- .
AttendancePenalty,, 
=,, 
attendancePolicy,,  0
.,,0 1
PenaltyValue,,1 =
(,,= >
record,,> D
.,,D E$
HasReachedMinimumClasses,,E ]
),,] ^
,,,^ _
ExtraPointsApplied-- 
=--  
extraPointsPolicy--! 2
.--2 3

ExtraValue--3 =
(--= >
record--> D
.--D E
AllYearsTeachers--E U
)--U V
,--V W

FinalGrade.. 
=.. 
final.. 
}// 	
;//	 

}00 
}11 °
}/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Domain/Evaluation.cs
	namespace 	
CS_GradeCalculator
 
. 
Domain #
;# $
public 
class 

Evaluation 
{ 
public 

string 
Name 
{ 
get 
; 
} 
public 

double 
Score 
{ 
get 
; 
}  
public 

double 
Weight 
{ 
get 
; 
}  !
public		 


Evaluation		 
(		 
string		 
name		 !
,		! "
double		# )
score		* /
,		/ 0
double		1 7
weight		8 >
)		> ?
{

 
if 

( 
string 
. 
IsNullOrWhiteSpace %
(% &
name& *
)* +
)+ ,
throw 
new 
ArgumentException '
(' (
$str( F
)F G
;G H
if 

( 
score 
< 
$num 
) 
throw 
new 
ArgumentException '
(' (
$str( C
)C D
;D E
if 

( 
weight 
<= 
$num 
|| 
weight !
>" #
$num$ %
)% &
throw 
new 
ArgumentException '
(' (
$str( B
)B C
;C D
Name 
= 
name 
; 
Score 
= 
score 
; 
Weight 
= 
weight 
; 
} 
} ˙	
Ñ/home/zamirlm/Documents/ACL/Software/examen/valeria/cs-grade-calculator/Examen_Parcial/CSGradeCalculator/Application/GradeService.cs
	namespace 	
CS_GradeCalculator
 
. 
Application (
;( )
public 
class 
GradeService 
{ 
private 
readonly 
GradeCalculator $
_calculator% 0
=1 2
new3 6
(6 7
)7 8
;8 9
public

 

GradeResult

 
ComputeFinalGrade

 (
(

( )
StudentRecord

) 6
record

7 =
)

= >
{ 
var 
attendancePolicy 
= 
new "
AttendancePolicy# 3
(3 4
$num4 7
)7 8
;8 9
var 
extraPointsPolicy 
= 
new  #
ExtraPointsPolicy$ 5
(5 6
$num6 9
)9 :
;: ;
return 
_calculator 
. 
	Calculate $
($ %
record% +
,+ ,
attendancePolicy- =
,= >
extraPointsPolicy? P
)P Q
;Q R
} 
} 