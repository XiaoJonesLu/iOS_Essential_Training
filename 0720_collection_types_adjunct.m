	/* ------------------------------------------------------------------------------------
		array
	 */

	 // 例1: Declare an array containing numbers as elements
    NSArray *wallet = @[@10, @10, @5, @20, @1];
    
    // Accessing element of the array using index
    NSLog(@"The 4th number in array: %i", [wallet[3] integerValue]);

    // 输出：The 4th number in array: 20
    

    // 例2: Declare an array containing strings as elements
    NSArray *friends = @[@"Peter", @"Josh", @"Mary", @"Mike", @"John"];
    
    // Accessing element of the array using index
    NSLog(@"The 4th friend in array: %@", friends[3]);

    // 输出：The 4th friend in array: Mike

    /* ------------------------------------------------------------------------------------
		NSMutableArray
	 */

	NSArray *friends = @[@"Peter", @"Josh", @"Mary", @"Mike", @"John"];
    NSLog(@"Original array: %@", [friends description]);
    /*
     Output:
     Original array: (
     Peter,
     Josh,
     Mary,
     Mike,
     John
     )
     */
    
    NSMutableArray *arr = [friends mutableCopy];
    NSLog(@"Mutable copy: %@", [arr description]);
    /*
     Output:
     Mutable copy: (
     Peter,
     Josh,
     Mary,
     Mike,
     John
     )
     */
    
    // - (void)removeObject:(ObjectType)anObject
    [arr removeObject:@"Peter"];
    NSLog(@"After removing Peter: %@", [arr description]);
    /*
     After removing Peter: (
     Josh,
     Mary,
     Mike,
     John
     )
     */
    
    // - (void)addObject:(ObjectType)anObject
    [arr addObject:@"Goat"];
    NSLog(@"After adding Goat: %@", [arr description]);
    /*
     After adding Goat: (
     Josh,
     Mary,
     Mike,
     John,
     Goat
     )
     */
    
    // - (void)removeObjectAtIndex:(NSUInteger)index
    [arr removeObjectAtIndex:1];
    NSLog(@"After removing object at index 1: %@", [arr description]);
    /*
     After removing object at index 1: (
     Josh,
     Mike,
     John,
     Goat
     )
     */

    /* ------------------------------------------------------------------------------------
		dictionary
	 */

	// 例1: 我朋友的生日
    NSDictionary *birthday = @{@"Peter" : @"1997-01-03",
                               @"Josh"  : @"1998-02-04",
                               @"Mary"  : @"1999-03-05",
                               @"Mike"  : @"2000-04-06",
                               @"John"  : @"2001-05-07",
                               };
    
    // Accessing element of the array using key
    NSLog(@"John的生日: %@", birthday[@"John"]);

    // 输出：John的生日: 2001-05-07

    /* ------------------------------------------------------------------------------------
		NSMutableDictionary
	 */

    NSDictionary *birthday = @{@"Peter" : @"1997-01-03",
                               @"Josh"  : @"1998-02-04",
                               @"Mary"  : @"1999-03-05",
                               @"Mike"  : @"2000-04-06",
                               @"John"  : @"2001-05-07",
                               };
    
    NSLog(@"Original copy: %@", [birthday description]);
    /*
     Original copy: {
     John = "2001-05-07";
     Josh = "1998-02-04";
     Mary = "1999-03-05";
     Mike = "2000-04-06";
     Peter = "1997-01-03";
     }
     */
    
    NSMutableDictionary *mutableDict = [birthday mutableCopy];
    NSLog(@"Mutable copy: %@", [mutableDict description]);
    /*
     Mutable copy: {
     John = "2001-05-07";
     Josh = "1998-02-04";
     Mary = "1999-03-05";
     Mike = "2000-04-06";
     Peter = "1997-01-03";
     }
     */
    
    [mutableDict removeObjectForKey:@"Peter"];
    NSLog(@"After removing Peter: %@", [mutableDict description]);
    /*
     After removing Peter: {
     John = "2001-05-07";
     Josh = "1998-02-04";
     Mary = "1999-03-05";
     Mike = "2000-04-06";
     }
     */
    
    [mutableDict setObject:@"No Birthday!" forKey:@"Me"];
    NSLog(@"After adding Me: %@", [mutableDict description]);
    /*
     After adding Me: {
     John = "2001-05-07";
     Josh = "1998-02-04";
     Mary = "1999-03-05";
     Me = "No Birthday!";
     Mike = "2000-04-06";
     }
     */
    
    [mutableDict removeObjectsForKeys:@[@"Josh", @"Mary"]];
    NSLog(@"After removing Josh and Mary: %@", [mutableDict description]);
    /*
     After removing Josh and Mary: {
     John = "2001-05-07";
     Me = "No Birthday!";
     Mike = "2000-04-06";
     }
     */
    
    [mutableDict removeAllObjects];
    NSLog(@"After removing all: %@", [mutableDict description]);
    /*
     After removing all: {
     }
     */
