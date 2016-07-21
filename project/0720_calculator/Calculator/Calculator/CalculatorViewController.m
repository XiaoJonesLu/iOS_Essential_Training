//
//  ViewController.m
//  Calculator
//
//  Created by Xiao on 7/18/16.
//  Copyright © 2016 Xiao Lu. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (assign, nonatomic) NSInteger numberA;
@property (assign, nonatomic) NSInteger numberB;
@property (assign, nonatomic) NSInteger operation;
@property (assign, nonatomic) bool isOperationDefined;
@end

@implementation CalculatorViewController

#pragma mark - IBAction
// 重置所有
- (IBAction)didTapClear:(id)sender {
    self.numberA = 0;
    self.numberB = 0;
    self.operation = 0;
    self.resultLabel.text = @"0";
}

/* (id)sender是下方方程的一个参数，代表呼叫该方程的object。在此
 代表被按下的UIButton。我们将sender转化为UIButton赋值给一个变
 量，从而获得UIButton上的信息。
 
 在以下方程中，我们通过UIButton的tag属性来决定对self.operation
 进行赋值，tag的意义如下：
    1001: 加法
    1002: 减法
    1003: 乘法
    1004: 除法
    1005: 次方 */
- (IBAction)didTapOperation:(id)sender {
    // Get a reference to the sender
    UIButton *btn = (UIButton*) sender;
    
    // Print button tag
    NSLog(@"Button with tag %li was pressed", btn.tag);
    
    // Get a reference to the button's tag
    self.operation = btn.tag;
    
    [self check];
}

/* (id)sender是下方方程的一个参数，代表呼叫该方程的object。在此
 代表被按下的UIButton。我们将sender转化为UIButton赋值给一个变
 量，从而获得UIButton上的信息。
 
 在以下方程中，我们通过获取UIButton上的文字(0, 1, 2...)来对numbe
 rA或numberB进行相对应的赋值。
 */
- (IBAction)didTapNumber:(id)sender {
    // Get a reference to the sender
    UIButton *btn = (UIButton *)sender;
    
    // Get a reference to the text on the button
    NSString *str = btn.titleLabel.text;
    
    // Print the button's text
    NSLog(@"Title for button 0 is: %@", str);
    
    // Convert the text on the button into an integer
    NSInteger numberPressed = [str integerValue];
    
    // If operation has been defined, reassign number B
    if (self.isOperationDefined) {
        self.numberB = self.numberB * 10 + numberPressed;
        
        // Print number B
        NSLog(@"Number B = %li", (long)self.numberB);
        
        // Display number B on the resultLabel
        self.resultLabel.text = [NSString stringWithFormat:@"%li", self.numberB];
    } else {
        // If operation has not been defined, reassign number A
        self.numberA = self.numberA * 10 + numberPressed;
        
        // Print number A
        NSLog(@"Number A = %li", self.numberA);
        
        // Display number A on the resultLabel
        self.resultLabel.text = [NSString stringWithFormat:@"%li", self.numberA];
    }
}

/* 用户按下=键时，我们根据self.opearation的值来对numberA和
 numberB进行运算。operation与运算方法对映如下：
 1001: 加法
 1002: 减法
 1003: 乘法
 1004: 除法
 1005: 次方
 */
- (IBAction)didTapEqual:(id)sender {
    [self check];
    
    // Perform operation
    NSInteger result;
    if (self.operation == 1001) {
        result = self.numberA + self.numberB;
    } else if (self.operation == 1002) {
        result = self.numberA - self.numberB;
    } else if (self.operation == 1003) {
        result = self.numberA * self.numberB;
    } else if (self.operation == 1004) {
        result = self.numberA / self.numberB;
    } else if (self.operation == 1005) {
        result = [self numberA:self.numberA toThePowerOfNumberB:self.numberB];
    } else {
        return;
    }
    
    // change the text of result label
    self.resultLabel.text = [NSString stringWithFormat:@"%li", result];
    
    // reset
    self.numberA = 0;
    self.numberB = 0;
    self.operation = 0;
}

#pragma mark - Utilities
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

/* 呼叫此方程时，在console中打印出numberA, numberB和operation的值。 */
- (void) check {
    NSLog(@"Number A: %li", self.numberA);
    NSLog(@"Number B: %li", self.numberB);
    NSLog(@"Operation: %li", self.operation);
}

- (bool)isOperationDefined {
    if (self.operation) {
        NSLog(@"self.operation is definde");
        return YES;
    }
    NSLog(@"self.operation is nil");
    return NO;
}

@end
