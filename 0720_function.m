/* Euclid's method: finding max common divisor
     */

- (void)viewDidLoad {
    [super viewDidLoad];
    NSInteger mcd = [self maxCommonDivisorForIntegerA:32 integerB:104];
    NSLog(@"Max common divisor = %li", mcd);
}

- (NSInteger) maxCommonDivisorForIntegerA: (NSInteger) a integerB: (NSInteger) b {
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
        
        if (r != 0) {
            a = b;
            b = r;
        }
    }
    return b;
}