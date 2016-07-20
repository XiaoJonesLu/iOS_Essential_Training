
	/* ------------------------------------------------------------------------------------
		If statement
	 */

	NSInteger a = 5;
    if (a == 5) {
        NSLog(@"a等于5");
    }
    
    if (a == 5) {
        NSLog(@"a等于5");
    } else {
        NSLog(@"a不等于5");
    }

	// 假设学生成绩76分
    NSInteger grade = 76;
    
    if (grade > 90) {
        // 90分以上为A
        NSLog(@"A");
    } else if (grade > 80 && grade <= 90) {
        // 80分以上，91分以下为B
        NSLog(@"B");
    } else if (grade > 70 && grade <= 80) {
        // 70分以上，81分以下为C
        NSLog(@"C");
    } else if (grade > 60 && grade <= 70) {
        // 60分以上，71分以下为D
        NSLog(@"D");
    } else {
        // 60分以下为F
        NSLog(@"F");
    }


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

     NSInteger score = 96;
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

    /* ------------------------------------------------------------------------------------
		Operator
	 */
    // 数字逻辑运算
    NSInteger integerA = 5;
    NSInteger integerB = 6;
    if (integerA > integerB) {
        // 如果integerA比integerB大，输出以下消息。
        NSLog(@"%li比%li大", integerA, integerB);
    } else {
        // 如果integerA比integerB小或者相等，输出以下消息。
        NSLog(@"%li比%li小", integerA, integerB);
    }
    
    NSInteger integerC = 5;
    NSInteger integerD = 5;
    if (integerC > integerD) {
        // 如果integerA比integerB大，输出以下消息。
        NSLog(@"%li比%li大", integerC, integerD);
    } else if (integerC < integerD) {
        // 如果integerA比integerB小，输出以下消息。
        NSLog(@"%li比%li小", integerC, integerD);
    } else {
        // 如果integerA与integerB相等，输出以下消息。
        NSLog(@"%li与%li相等", integerC, integerD);
    }
    
    // 大于等于(>=)，小于等于(<=)用法类似
    // 相等用==
    if (integerC == integerD) {
        NSLog(@"C和D相等！");
    }

    /* ------------------------------------------------------------------------------------
		For loop
	 */
	NSLog(@"For loop:");
    for (NSInteger integer = 0; integer < 10; integer ++) {
        NSLog(@"%li", (long)integer);
    }

	/* ------------------------------------------------------------------------------------
		while loop
	 */
	NSLog(@"While loop:");
    NSInteger integer = 0;
    while (integer < 10) {
        NSLog(@"%li", (long)integer);
        integer += 1;
    }

    - (void)viewDidLoad {
	    [super viewDidLoad];
	    // Linear programming
	    NSArray *friends = @[@"Peter", @"Josh", @"Mary", @"Mike", @"John"];
	    for (NSString *friend in friends) {
	        if (friend.length > 4) {
	            NSLog(@"Name is too long: %@", friend);
	        }
	    }
	    // 输出：This friend's name is too long: Peter
	}

	- (void)viewDidLoad {
	    [super viewDidLoad];
	    
	    // Declare the array
	    NSArray *friends = @[@"Peter", @"Josh", @"Mary", @"Mike", @"John"];
	    
	    // Call the function
	    [self printNameIfTooLong:friends];
	    
	    // 输出：Name is too long: Peter
	}

	/* This function accepts one parameter (NSArray*)
	 and returns no value (void);
	 */
	- (void) printNameIfTooLong: (NSArray*) arr {
	    for (NSString *str in arr) {
	        if (str.length > 4) {
	            NSLog(@"Name is too long: %@", str);
	        }
	    }
	}

	- (NSString *) integerToString: (NSInteger) integer {
	    return [NSString stringWithFormat:@"%i", integer];
	}

	- (NSString *) integerToString: (NSInteger) integer {
	    return integer;
	}

     NSInteger x = 2;
     NSInteger power = 16;
     
     // iterator
     NSInteger i = 1;
     while (i < power) {
     x = x * 2;
     NSLog(@"x = %li", x);
     i = i + 1;
     }
     
     
     x = 2;
     
     // Define i as the counter/iterator
     for (NSInteger i = 1; i < power; i++) {
     x = x * 2;
     NSLog(@"x = %li", x);
     }
     
     NSLog(@"Power = %li", power);

    /* Euclid's method: finding max common divisor
     */
    // Input
    NSInteger a = 32;
    NSInteger b = 104;
    
    // calculate
    // If a is less than b, swap the values of a and b
    NSInteger c;
    if (a < b) {
        c = a;
        a = b;
        b = c;
    }
    
    // initialize the remainder to an impossible value
    NSInteger r = -1;
    
    // initialize the counter
    NSInteger iter = 0;
    
    while (r != 0) {
        iter += 1;
        NSLog(@"Iteration %li starts: a = %li, b = %li", (long)iter, (long)a, (long)b);
        
        r = a % b;
        NSLog(@"r = %li", (long)r);
        
        if (r == 0) {
            NSLog(@"Max common divisor = %li", b);
        } else {
            a = b;
            b = r;
        }
    }