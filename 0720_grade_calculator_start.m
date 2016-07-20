
// A student receives 67
// Determines what is the letter grade
// A:  92 and above
// A-: 87(inclusive) above and below 92 eg: if (grade >= 87 AND grade < 92)
// B+: 82(inclusive) above and below 87
// B:  76(inclusive) above and below 82
// B-: 68(inclusive) above and below 76
// C+: 60(inclusive) above and below 68
// F:  below 60

// AND : &&

// Requirement: print a complete sentence declaring the student's numeric grade, and letter grade (NSLog).

NSInteger score = 67;
if (score >= 92) {
    NSLog(@"Studnet receives numeric score: %li letter grade: A", score);
} else if (score >= 87 && score < 92) {
    NSLog(@"Studnet receives numeric score: %li letter grade: A-", score);
}  else if (score >= 82 && score < 87) {
    NSLog(@"Studnet receives numeric score: %li letter grade: B+", score);
} else if (score >= 76 && score < 82) {
    NSLog(@"Studnet receives numeric score: %li letter grade: B", score);
} else if (score >= 60 && score < 68) {
    NSLog(@"Studnet receives numeric score: %li letter grade: C+", score);
} else {
    NSLog(@"Studnet receives numeric score: %li letter grade: F", score);
}