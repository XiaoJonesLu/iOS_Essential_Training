	/* ------------------------------------------------------------------------------------
        数字
     */
    int integer = 6;           // 32 bit system
    int inteter2 = 6;           // 32 bit system
    long integer3 = 7;          // 32-bits on 32-bit systems, and 64 bits on 64-bit systems.
    NSLog(@"三个整数： %li, %d, %ld", (long)integer, inteter2, integer3);

    /* ------------------------------------------------------------------------------------
		变量的申明和赋值
	 */
	
	// 例1: 申明的同时赋值
	NSInteger integer = 5;

	// 例2: 先申明，后赋值
	NSInteger integer;
	integer = 5;

	// 例3: 带有expression的赋值
	NSInteger y = 10;
    y = y + 10;

	// 例4: 交换两个变量的赋值
	// 申明两个变量
    NSInteger x = 5;
    NSInteger y = 10;
    
    // 检查条件
    NSLog(@"Before: x = %i, y = %i", x, y);
    
    // 交换两变量的赋值
    NSInteger z = x;
    x = y;
    y = z;
    
    // 检查结果
    NSLog(@"After: x = %i, y = %i", x, y);

    /* ------------------------------------------------------------------------------------
        字符和其方法(methods)
     */
    // 字符的表现形式
    NSString *string = @"这是一串字符，它不能被修改。";
    NSLog(@"%@", string);
    // Output: 这是一串字符，它不能被修改。

    // NSString在创建以后便不可修改
    // 相反，NSMutableString在创建后可以进行修改
    NSMutableString *mutableString = [NSMutableString stringWithString:@"这串字符可以修改"];
    [mutableString appendString:@"，我添加了另一串字符。"];
    NSLog(@"%@", mutableString);
    // Output: 这串字符可以修改，我添加了另一串字符。

    // Declare a string
    NSString *exp = @"This is a looooooong string!!!!";
    
    // Use the 'length' method, and assign the result to a new variable
    NSInteger length = [exp length];
    
    // Check the variable
    NSLog(@"The length of the string is: %i", length);
    
    // Output: The length of the string is: 31

	/* ------------------------------------------------------------------------------------
		浮点，整形，字符和NSLog
	 */
	// NSLog
	NSLog(@"Hello world");

	// %i 代入浮点: Integer one: 1.213000
	float f = 1.213;
    NSLog(@"Integer one: %f", f);               
    
    // %i 代入整形: Integer two: 2
    NSInteger i = 2;
    NSLog(@"Integer two: %i", i);               
    
    // %@ 代入字符: This is a string: Hello world
    NSString *string = @"Hello world";
    NSLog(@"This is a string: %@", string);     

    /* ------------------------------------------------------------------------------------
		常见错误
	 */
    
    NSInteger 1integer = 3;		// 变量名以数字开头
    
    NSInteger integer = @"5";	// 赋值类型与声明类型不一致
    
    NSInteger integer = @"5";	// 重复声明
  
    NSInteger integer2 = 5; 	// 申明非object时，变量名前不得用指针
    
    NSString *string = @"5"; 	// 申明object时，变量名前必须用指针
