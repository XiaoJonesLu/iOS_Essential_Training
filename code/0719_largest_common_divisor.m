/* Euclid's method: finding max common divisor */
- (NSInteger) largestCommonDivisorForNumberA: (NSInteger) myNumberA andNumberB: (NSInteger) myNumberB {
    /* Because myNumberA and myNumberB are reassigned in the while loop
     we store their value in two independent variables x, y.
     创建两个新的变量x, y, 用于储存myNumberA和myNumberB. */
    NSInteger x = myNumberB;
    NSInteger y = myNumberA;
    
    // myNumberA整除myNumberB，得出余数r
    NSInteger r = myNumberA % myNumberB;
    while (r != 0) {
        // 将b的值赋值给a
        myNumberA = myNumberB;
        
        // 将r的值赋值给b
        myNumberB = r;
        
        // 重新计算r
        r = myNumberA % myNumberB;
    }
    // 打印结果
    NSLog(@"%li是%li和%li的最大公约数。", myNumberB, x, y);
    
    // 返回值
    return myNumberB;
}