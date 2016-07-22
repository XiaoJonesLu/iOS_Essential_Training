/* Use a while loop (or for loop) to calculate the power */
- (NSInteger) numberA: (NSInteger) numA toThePowerOfNumberB: (NSInteger) numB {
    /* Because numA is reassgined in every iteration of the while loop,
     numberAi stores the original value of numA. 
     创建一个新的变量numberAi，用以储存底数numA的值。在之后的循环中，numA在每一次循环
     将被重新赋值。*/
    NSInteger numberAi = numA;
    
    // Declare an integer i, to count the number of iterations
    // 创建变量i用以标记循环次数
    NSInteger i = 1;
    
    // While i is less than the target power numB
    // 当i比指数numB小的时候，执行循环
    while (i < numB) {
        // In every iteration raises the power by 1
        // 每次循环将numA提升一次方
        numA = numA * numberAi;
        i = i + 1;
    }
    // In NSLog, print number A to the power of B
    // 在console中打印出原底数numberAi, 指数numB, 和计算结果numA
    NSLog(@"%li^%li = %li", numberAi, numB, numA);
    
    // 返回值
    return numA;
}